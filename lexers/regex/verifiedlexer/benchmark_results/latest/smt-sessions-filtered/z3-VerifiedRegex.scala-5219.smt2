; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268406 () Bool)

(assert start!268406)

(declare-fun b!2774899 () Bool)

(declare-fun b_free!78389 () Bool)

(declare-fun b_next!79093 () Bool)

(assert (=> b!2774899 (= b_free!78389 (not b_next!79093))))

(declare-fun tp!878253 () Bool)

(declare-fun b_and!203127 () Bool)

(assert (=> b!2774899 (= tp!878253 b_and!203127)))

(declare-fun b!2774935 () Bool)

(declare-fun b_free!78391 () Bool)

(declare-fun b_next!79095 () Bool)

(assert (=> b!2774935 (= b_free!78391 (not b_next!79095))))

(declare-fun tp!878261 () Bool)

(declare-fun b_and!203129 () Bool)

(assert (=> b!2774935 (= tp!878261 b_and!203129)))

(declare-fun b!2774914 () Bool)

(declare-fun b_free!78393 () Bool)

(declare-fun b_next!79097 () Bool)

(assert (=> b!2774914 (= b_free!78393 (not b_next!79097))))

(declare-fun tp!878252 () Bool)

(declare-fun b_and!203131 () Bool)

(assert (=> b!2774914 (= tp!878252 b_and!203131)))

(declare-fun b!2774897 () Bool)

(declare-fun b_free!78395 () Bool)

(declare-fun b_next!79099 () Bool)

(assert (=> b!2774897 (= b_free!78395 (not b_next!79099))))

(declare-fun tp!878247 () Bool)

(declare-fun b_and!203133 () Bool)

(assert (=> b!2774897 (= tp!878247 b_and!203133)))

(declare-fun b!2774889 () Bool)

(declare-datatypes ((C!16364 0))(
  ( (C!16365 (val!10116 Int)) )
))
(declare-datatypes ((List!32172 0))(
  ( (Nil!32072) (Cons!32072 (h!37492 C!16364) (t!228300 List!32172)) )
))
(declare-datatypes ((tuple2!32288 0))(
  ( (tuple2!32289 (_1!19065 List!32172) (_2!19065 List!32172)) )
))
(declare-fun e!1750198 () tuple2!32288)

(declare-fun lt!989496 () List!32172)

(assert (=> b!2774889 (= e!1750198 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun b!2774890 () Bool)

(declare-datatypes ((Unit!46204 0))(
  ( (Unit!46205) )
))
(declare-fun e!1750230 () Unit!46204)

(declare-fun Unit!46206 () Unit!46204)

(assert (=> b!2774890 (= e!1750230 Unit!46206)))

(declare-fun lt!989510 () Unit!46204)

(declare-fun call!181475 () Unit!46204)

(assert (=> b!2774890 (= lt!989510 call!181475)))

(declare-fun call!181489 () Bool)

(assert (=> b!2774890 call!181489))

(declare-fun lt!989493 () Unit!46204)

(declare-fun call!181473 () Unit!46204)

(assert (=> b!2774890 (= lt!989493 call!181473)))

(assert (=> b!2774890 false))

(declare-fun b!2774891 () Bool)

(declare-fun e!1750206 () Bool)

(declare-datatypes ((IArray!19967 0))(
  ( (IArray!19968 (innerList!10041 List!32172)) )
))
(declare-datatypes ((Conc!9981 0))(
  ( (Node!9981 (left!24418 Conc!9981) (right!24748 Conc!9981) (csize!20192 Int) (cheight!10192 Int)) (Leaf!15201 (xs!13091 IArray!19967) (csize!20193 Int)) (Empty!9981) )
))
(declare-datatypes ((BalanceConc!19576 0))(
  ( (BalanceConc!19577 (c!450499 Conc!9981)) )
))
(declare-datatypes ((tuple2!32290 0))(
  ( (tuple2!32291 (_1!19066 BalanceConc!19576) (_2!19066 BalanceConc!19576)) )
))
(declare-fun lt!989480 () tuple2!32290)

(declare-fun lt!989526 () tuple2!32288)

(declare-fun ++!7932 (List!32172 List!32172) List!32172)

(declare-fun list!12096 (BalanceConc!19576) List!32172)

(assert (=> b!2774891 (= e!1750206 (not (= (++!7932 (list!12096 (_1!19066 lt!989480)) (list!12096 (_2!19066 lt!989480))) (++!7932 (_1!19065 lt!989526) (_2!19065 lt!989526)))))))

(declare-fun input!5495 () BalanceConc!19576)

(declare-datatypes ((Regex!8103 0))(
  ( (ElementMatch!8103 (c!450500 C!16364)) (Concat!13191 (regOne!16718 Regex!8103) (regTwo!16718 Regex!8103)) (EmptyExpr!8103) (Star!8103 (reg!8432 Regex!8103)) (EmptyLang!8103) (Union!8103 (regOne!16719 Regex!8103) (regTwo!16719 Regex!8103)) )
))
(declare-datatypes ((List!32173 0))(
  ( (Nil!32073) (Cons!32073 (h!37493 Regex!8103) (t!228301 List!32173)) )
))
(declare-datatypes ((Context!4642 0))(
  ( (Context!4643 (exprs!2821 List!32173)) )
))
(declare-datatypes ((tuple2!32292 0))(
  ( (tuple2!32293 (_1!19067 Context!4642) (_2!19067 C!16364)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32294 0))(
  ( (tuple2!32295 (_1!19068 tuple2!32292) (_2!19068 (InoxSet Context!4642))) )
))
(declare-datatypes ((List!32174 0))(
  ( (Nil!32074) (Cons!32074 (h!37494 tuple2!32294) (t!228302 List!32174)) )
))
(declare-datatypes ((Hashable!3729 0))(
  ( (HashableExt!3728 (__x!21089 Int)) )
))
(declare-datatypes ((array!13568 0))(
  ( (array!13569 (arr!6049 (Array (_ BitVec 32) List!32174)) (size!24865 (_ BitVec 32))) )
))
(declare-datatypes ((array!13570 0))(
  ( (array!13571 (arr!6050 (Array (_ BitVec 32) (_ BitVec 64))) (size!24866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7626 0))(
  ( (LongMapFixedSize!7627 (defaultEntry!4198 Int) (mask!9601 (_ BitVec 32)) (extraKeys!4062 (_ BitVec 32)) (zeroValue!4072 List!32174) (minValue!4072 List!32174) (_size!7669 (_ BitVec 32)) (_keys!4113 array!13570) (_values!4094 array!13568) (_vacant!3874 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15061 0))(
  ( (Cell!15062 (v!33682 LongMapFixedSize!7626)) )
))
(declare-datatypes ((MutLongMap!3813 0))(
  ( (LongMap!3813 (underlying!7829 Cell!15061)) (MutLongMapExt!3812 (__x!21090 Int)) )
))
(declare-datatypes ((Cell!15063 0))(
  ( (Cell!15064 (v!33683 MutLongMap!3813)) )
))
(declare-datatypes ((MutableMap!3719 0))(
  ( (MutableMapExt!3718 (__x!21091 Int)) (HashMap!3719 (underlying!7830 Cell!15063) (hashF!5761 Hashable!3729) (_size!7670 (_ BitVec 32)) (defaultValue!3890 Int)) )
))
(declare-datatypes ((CacheUp!2424 0))(
  ( (CacheUp!2425 (cache!3862 MutableMap!3719)) )
))
(declare-datatypes ((tuple3!4902 0))(
  ( (tuple3!4903 (_1!19069 Regex!8103) (_2!19069 Context!4642) (_3!2921 C!16364)) )
))
(declare-datatypes ((tuple2!32296 0))(
  ( (tuple2!32297 (_1!19070 tuple3!4902) (_2!19070 (InoxSet Context!4642))) )
))
(declare-datatypes ((List!32175 0))(
  ( (Nil!32075) (Cons!32075 (h!37495 tuple2!32296) (t!228303 List!32175)) )
))
(declare-datatypes ((array!13572 0))(
  ( (array!13573 (arr!6051 (Array (_ BitVec 32) List!32175)) (size!24867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7628 0))(
  ( (LongMapFixedSize!7629 (defaultEntry!4199 Int) (mask!9602 (_ BitVec 32)) (extraKeys!4063 (_ BitVec 32)) (zeroValue!4073 List!32175) (minValue!4073 List!32175) (_size!7671 (_ BitVec 32)) (_keys!4114 array!13570) (_values!4095 array!13572) (_vacant!3875 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15065 0))(
  ( (Cell!15066 (v!33684 LongMapFixedSize!7628)) )
))
(declare-datatypes ((MutLongMap!3814 0))(
  ( (LongMap!3814 (underlying!7831 Cell!15065)) (MutLongMapExt!3813 (__x!21092 Int)) )
))
(declare-datatypes ((Cell!15067 0))(
  ( (Cell!15068 (v!33685 MutLongMap!3814)) )
))
(declare-datatypes ((Hashable!3730 0))(
  ( (HashableExt!3729 (__x!21093 Int)) )
))
(declare-datatypes ((MutableMap!3720 0))(
  ( (MutableMapExt!3719 (__x!21094 Int)) (HashMap!3720 (underlying!7832 Cell!15067) (hashF!5762 Hashable!3730) (_size!7672 (_ BitVec 32)) (defaultValue!3891 Int)) )
))
(declare-datatypes ((CacheDown!2546 0))(
  ( (CacheDown!2547 (cache!3863 MutableMap!3720)) )
))
(declare-datatypes ((tuple3!4904 0))(
  ( (tuple3!4905 (_1!19071 Int) (_2!19071 CacheUp!2424) (_3!2922 CacheDown!2546)) )
))
(declare-fun lt!989506 () tuple3!4904)

(declare-fun splitAt!119 (BalanceConc!19576 Int) tuple2!32290)

(assert (=> b!2774891 (= lt!989480 (splitAt!119 input!5495 (_1!19071 lt!989506)))))

(declare-fun e!1750208 () Bool)

(assert (=> b!2774891 e!1750208))

(declare-fun c!450492 () Bool)

(declare-fun lt!989534 () Bool)

(assert (=> b!2774891 (= c!450492 lt!989534)))

(declare-fun lt!989489 () Int)

(declare-fun z!3597 () (InoxSet Context!4642))

(declare-fun findLongestMatchInnerZipper!27 ((InoxSet Context!4642) List!32172 Int List!32172 List!32172 Int) tuple2!32288)

(assert (=> b!2774891 (= lt!989526 (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 lt!989496 lt!989489))))

(declare-fun e!1750221 () Bool)

(assert (=> b!2774891 e!1750221))

(declare-fun c!450489 () Bool)

(assert (=> b!2774891 (= c!450489 lt!989534)))

(declare-fun lt!989521 () Int)

(declare-fun findLongestMatchInnerZipperFast!52 ((InoxSet Context!4642) List!32172 Int List!32172 BalanceConc!19576 Int) Int)

(assert (=> b!2774891 (= lt!989521 (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))

(declare-fun lt!989484 () tuple3!4904)

(declare-datatypes ((tuple3!4906 0))(
  ( (tuple3!4907 (_1!19072 Int) (_2!19072 CacheDown!2546) (_3!2923 CacheUp!2424)) )
))
(declare-fun lt!989520 () tuple3!4906)

(assert (=> b!2774891 (= lt!989484 (tuple3!4905 (_1!19072 lt!989520) (_3!2923 lt!989520) (_2!19072 lt!989520)))))

(declare-fun e!1750213 () tuple3!4906)

(assert (=> b!2774891 (= lt!989520 e!1750213)))

(declare-fun c!450488 () Bool)

(assert (=> b!2774891 (= c!450488 lt!989534)))

(declare-fun lostCauseZipper!443 ((InoxSet Context!4642)) Bool)

(assert (=> b!2774891 (= lt!989534 (lostCauseZipper!443 z!3597))))

(declare-fun lt!989543 () List!32172)

(assert (=> b!2774891 (and (= lt!989496 lt!989543) (= lt!989543 lt!989496))))

(declare-fun lt!989483 () Unit!46204)

(declare-fun lemmaSamePrefixThenSameSuffix!1141 (List!32172 List!32172 List!32172 List!32172 List!32172) Unit!46204)

(assert (=> b!2774891 (= lt!989483 (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989543 lt!989496))))

(declare-fun getSuffix!1239 (List!32172 List!32172) List!32172)

(assert (=> b!2774891 (= lt!989543 (getSuffix!1239 lt!989496 Nil!32072))))

(declare-fun isPrefix!2557 (List!32172 List!32172) Bool)

(assert (=> b!2774891 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(declare-fun lt!989514 () Unit!46204)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1667 (List!32172 List!32172) Unit!46204)

(assert (=> b!2774891 (= lt!989514 (lemmaConcatTwoListThenFirstIsPrefix!1667 Nil!32072 lt!989496))))

(declare-fun e!1750218 () Bool)

(assert (=> b!2774891 e!1750218))

(declare-fun res!1159603 () Bool)

(assert (=> b!2774891 (=> (not res!1159603) (not e!1750218))))

(declare-fun valid!2976 (CacheUp!2424) Bool)

(assert (=> b!2774891 (= res!1159603 (valid!2976 (_2!19071 lt!989484)))))

(declare-fun findLongestMatchInnerZipperFastMem!45 (CacheUp!2424 CacheDown!2546 (InoxSet Context!4642) List!32172 Int List!32172 BalanceConc!19576 Int) tuple3!4904)

(assert (=> b!2774891 (= lt!989484 (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))

(declare-fun e!1750200 () Bool)

(assert (=> b!2774891 e!1750200))

(declare-fun res!1159599 () Bool)

(assert (=> b!2774891 (=> (not res!1159599) (not e!1750200))))

(assert (=> b!2774891 (= res!1159599 (valid!2976 (_2!19071 lt!989506)))))

(declare-fun cacheDown!939 () CacheDown!2546)

(declare-fun cacheUp!820 () CacheUp!2424)

(assert (=> b!2774891 (= lt!989506 (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))

(declare-fun size!24868 (BalanceConc!19576) Int)

(assert (=> b!2774891 (= lt!989489 (size!24868 input!5495))))

(assert (=> b!2774891 (= lt!989496 (list!12096 input!5495))))

(declare-fun b!2774892 () Bool)

(declare-fun res!1159600 () Bool)

(assert (=> b!2774892 (=> (not res!1159600) (not e!1750206))))

(declare-fun valid!2977 (CacheDown!2546) Bool)

(assert (=> b!2774892 (= res!1159600 (valid!2977 cacheDown!939))))

(declare-fun b!2774893 () Bool)

(declare-fun e!1750211 () Bool)

(declare-fun e!1750223 () Bool)

(assert (=> b!2774893 (= e!1750211 e!1750223)))

(declare-fun b!2774894 () Bool)

(declare-fun c!450485 () Bool)

(declare-fun call!181490 () Bool)

(assert (=> b!2774894 (= c!450485 call!181490)))

(declare-fun lt!989499 () List!32172)

(declare-fun lt!989504 () List!32172)

(assert (=> b!2774894 (= (++!7932 lt!989499 lt!989504) lt!989496)))

(declare-fun lt!989487 () Unit!46204)

(declare-fun lt!989475 () C!16364)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!873 (List!32172 C!16364 List!32172 List!32172) Unit!46204)

(assert (=> b!2774894 (= lt!989487 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989475 lt!989504 lt!989496))))

(declare-fun tail!4390 (List!32172) List!32172)

(assert (=> b!2774894 (= lt!989504 (tail!4390 lt!989496))))

(declare-fun head!6152 (List!32172) C!16364)

(assert (=> b!2774894 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!989496)))

(declare-fun lt!989537 () Unit!46204)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!461 (List!32172 List!32172) Unit!46204)

(assert (=> b!2774894 (= lt!989537 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989496))))

(assert (=> b!2774894 (= lt!989499 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)))))

(assert (=> b!2774894 (= lt!989475 (head!6152 lt!989496))))

(declare-fun lt!989535 () Unit!46204)

(declare-fun e!1750195 () Unit!46204)

(assert (=> b!2774894 (= lt!989535 e!1750195)))

(declare-fun c!450493 () Bool)

(declare-fun lt!989527 () Int)

(declare-fun lt!989476 () Int)

(assert (=> b!2774894 (= c!450493 (= lt!989527 lt!989476))))

(assert (=> b!2774894 (<= lt!989527 lt!989476)))

(declare-fun size!24869 (List!32172) Int)

(assert (=> b!2774894 (= lt!989476 (size!24869 lt!989496))))

(assert (=> b!2774894 (= lt!989527 (size!24869 Nil!32072))))

(declare-fun lt!989523 () Unit!46204)

(declare-fun lemmaIsPrefixThenSmallerEqSize!264 (List!32172 List!32172) Unit!46204)

(assert (=> b!2774894 (= lt!989523 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989496))))

(declare-fun e!1750227 () tuple2!32288)

(declare-fun e!1750203 () tuple2!32288)

(assert (=> b!2774894 (= e!1750227 e!1750203)))

(declare-fun b!2774895 () Bool)

(declare-fun lt!989505 () Bool)

(declare-fun call!181482 () Bool)

(assert (=> b!2774895 (= lt!989505 call!181482)))

(assert (=> b!2774895 (= lt!989496 Nil!32072)))

(declare-fun lt!989508 () Unit!46204)

(assert (=> b!2774895 (= lt!989508 call!181473)))

(assert (=> b!2774895 call!181489))

(declare-fun lt!989531 () Unit!46204)

(assert (=> b!2774895 (= lt!989531 call!181475)))

(declare-fun e!1750214 () tuple3!4906)

(assert (=> b!2774895 (= e!1750214 (tuple3!4907 0 (_3!2922 lt!989506) (_2!19071 lt!989506)))))

(declare-fun bm!181467 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!463 (List!32172 List!32172 List!32172) Unit!46204)

(assert (=> bm!181467 (= call!181473 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 Nil!32072 lt!989496))))

(declare-fun lt!989542 () tuple3!4904)

(declare-fun bm!181468 () Bool)

(declare-fun lt!989507 () tuple3!4904)

(declare-fun call!181472 () Bool)

(declare-fun c!450487 () Bool)

(assert (=> bm!181468 (= call!181472 (valid!2977 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542))))))

(declare-fun b!2774896 () Bool)

(declare-fun e!1750217 () Bool)

(declare-fun e!1750222 () Bool)

(assert (=> b!2774896 (= e!1750217 e!1750222)))

(declare-fun e!1750220 () Bool)

(assert (=> b!2774897 (= e!1750222 (and e!1750220 tp!878247))))

(declare-fun b!2774898 () Bool)

(assert (=> b!2774898 (= e!1750213 e!1750214)))

(declare-fun c!450491 () Bool)

(assert (=> b!2774898 (= c!450491 (= 0 lt!989489))))

(declare-fun bm!181469 () Bool)

(declare-fun call!181491 () Unit!46204)

(assert (=> bm!181469 (= call!181491 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 Nil!32072 lt!989496))))

(declare-fun e!1750225 () Bool)

(declare-fun e!1750209 () Bool)

(assert (=> b!2774899 (= e!1750225 (and e!1750209 tp!878253))))

(declare-fun mapIsEmpty!17377 () Bool)

(declare-fun mapRes!17377 () Bool)

(assert (=> mapIsEmpty!17377 mapRes!17377))

(declare-fun bm!181470 () Bool)

(declare-fun call!181484 () (InoxSet Context!4642))

(declare-fun derivationStepZipper!369 ((InoxSet Context!4642) C!16364) (InoxSet Context!4642))

(assert (=> bm!181470 (= call!181484 (derivationStepZipper!369 z!3597 lt!989475))))

(declare-fun bm!181471 () Bool)

(declare-fun call!181485 () Unit!46204)

(assert (=> bm!181471 (= call!181485 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 Nil!32072 lt!989496))))

(declare-fun b!2774900 () Bool)

(declare-fun e!1750199 () Bool)

(declare-fun lt!989482 () MutLongMap!3813)

(get-info :version)

(assert (=> b!2774900 (= e!1750209 (and e!1750199 ((_ is LongMap!3813) lt!989482)))))

(assert (=> b!2774900 (= lt!989482 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))

(declare-fun b!2774901 () Bool)

(declare-fun res!1159596 () Bool)

(assert (=> b!2774901 (= res!1159596 call!181472)))

(declare-fun e!1750210 () Bool)

(assert (=> b!2774901 (=> (not res!1159596) (not e!1750210))))

(declare-fun b!2774902 () Bool)

(assert (=> b!2774902 (= e!1750213 (tuple3!4907 0 (_3!2922 lt!989506) (_2!19071 lt!989506)))))

(declare-fun b!2774903 () Bool)

(declare-fun e!1750201 () Bool)

(declare-fun lt!989530 () MutLongMap!3814)

(assert (=> b!2774903 (= e!1750220 (and e!1750201 ((_ is LongMap!3814) lt!989530)))))

(assert (=> b!2774903 (= lt!989530 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))

(declare-fun b!2774904 () Bool)

(declare-fun Unit!46207 () Unit!46204)

(assert (=> b!2774904 (= e!1750195 Unit!46207)))

(declare-fun lt!989511 () Unit!46204)

(declare-fun call!181478 () Unit!46204)

(assert (=> b!2774904 (= lt!989511 call!181478)))

(declare-fun call!181492 () Bool)

(assert (=> b!2774904 call!181492))

(declare-fun lt!989478 () Unit!46204)

(assert (=> b!2774904 (= lt!989478 call!181491)))

(assert (=> b!2774904 false))

(declare-fun bm!181472 () Bool)

(declare-fun lemmaIsPrefixRefl!1681 (List!32172 List!32172) Unit!46204)

(assert (=> bm!181472 (= call!181475 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun bm!181473 () Bool)

(declare-fun call!181483 () (InoxSet Context!4642))

(declare-fun lt!989491 () List!32172)

(declare-fun call!181486 () Int)

(declare-fun lt!989479 () List!32172)

(assert (=> bm!181473 (= call!181486 (findLongestMatchInnerZipperFast!52 call!181483 lt!989491 1 lt!989479 input!5495 lt!989489))))

(declare-fun b!2774905 () Bool)

(declare-fun call!181481 () tuple2!32288)

(assert (=> b!2774905 (= e!1750203 call!181481)))

(declare-fun mapNonEmpty!17377 () Bool)

(declare-fun mapRes!17378 () Bool)

(declare-fun tp!878249 () Bool)

(declare-fun tp!878254 () Bool)

(assert (=> mapNonEmpty!17377 (= mapRes!17378 (and tp!878249 tp!878254))))

(declare-fun mapKey!17378 () (_ BitVec 32))

(declare-fun mapRest!17378 () (Array (_ BitVec 32) List!32174))

(declare-fun mapValue!17378 () List!32174)

(assert (=> mapNonEmpty!17377 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) (store mapRest!17378 mapKey!17378 mapValue!17378))))

(declare-fun b!2774906 () Bool)

(declare-fun e!1750229 () Unit!46204)

(declare-fun Unit!46208 () Unit!46204)

(assert (=> b!2774906 (= e!1750229 Unit!46208)))

(declare-fun bm!181474 () Bool)

(assert (=> bm!181474 (= call!181481 (findLongestMatchInnerZipper!27 call!181484 lt!989499 1 lt!989504 lt!989496 lt!989489))))

(declare-fun bm!181475 () Bool)

(declare-datatypes ((tuple3!4908 0))(
  ( (tuple3!4909 (_1!19073 (InoxSet Context!4642)) (_2!19073 CacheUp!2424) (_3!2924 CacheDown!2546)) )
))
(declare-fun call!181477 () tuple3!4908)

(declare-fun lt!989486 () C!16364)

(declare-fun derivationStepZipperMem!97 ((InoxSet Context!4642) C!16364 CacheUp!2424 CacheDown!2546) tuple3!4908)

(assert (=> bm!181475 (= call!181477 (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))

(declare-fun b!2774907 () Bool)

(declare-fun lt!989533 () Bool)

(declare-fun call!181479 () Bool)

(assert (=> b!2774907 (= lt!989533 call!181479)))

(assert (=> b!2774907 (= lt!989496 Nil!32072)))

(declare-fun lt!989522 () Unit!46204)

(assert (=> b!2774907 (= lt!989522 call!181485)))

(declare-fun call!181474 () Bool)

(assert (=> b!2774907 call!181474))

(declare-fun lt!989539 () Unit!46204)

(declare-fun call!181488 () Unit!46204)

(assert (=> b!2774907 (= lt!989539 call!181488)))

(declare-fun e!1750196 () Int)

(assert (=> b!2774907 (= e!1750196 0)))

(declare-fun b!2774908 () Bool)

(declare-fun e!1750197 () Bool)

(declare-fun tp!878259 () Bool)

(assert (=> b!2774908 (= e!1750197 tp!878259)))

(declare-fun b!2774909 () Bool)

(assert (=> b!2774909 (= e!1750208 (= lt!989526 e!1750227))))

(declare-fun c!450494 () Bool)

(assert (=> b!2774909 (= c!450494 (= 0 lt!989489))))

(declare-fun b!2774910 () Bool)

(declare-fun e!1750205 () Bool)

(declare-fun call!181476 () Int)

(assert (=> b!2774910 (= e!1750205 (= (_1!19071 lt!989507) call!181476))))

(declare-fun b!2774911 () Bool)

(assert (=> b!2774911 (= e!1750221 (= lt!989521 0))))

(declare-fun bm!181476 () Bool)

(assert (=> bm!181476 (= call!181492 (isPrefix!2557 lt!989496 lt!989496))))

(declare-fun res!1159602 () Bool)

(assert (=> start!268406 (=> (not res!1159602) (not e!1750206))))

(assert (=> start!268406 (= res!1159602 (valid!2976 cacheUp!820))))

(assert (=> start!268406 e!1750206))

(declare-fun e!1750212 () Bool)

(declare-fun inv!43560 (CacheUp!2424) Bool)

(assert (=> start!268406 (and (inv!43560 cacheUp!820) e!1750212)))

(declare-fun inv!43561 (CacheDown!2546) Bool)

(assert (=> start!268406 (and (inv!43561 cacheDown!939) e!1750217)))

(declare-fun condSetEmpty!23028 () Bool)

(assert (=> start!268406 (= condSetEmpty!23028 (= z!3597 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23028 () Bool)

(assert (=> start!268406 setRes!23028))

(declare-fun e!1750216 () Bool)

(declare-fun inv!43562 (BalanceConc!19576) Bool)

(assert (=> start!268406 (and (inv!43562 input!5495) e!1750216)))

(declare-fun bm!181477 () Bool)

(assert (=> bm!181477 (= call!181474 (isPrefix!2557 lt!989496 lt!989496))))

(declare-fun b!2774912 () Bool)

(declare-fun e!1750224 () tuple3!4906)

(assert (=> b!2774912 (= e!1750224 (tuple3!4907 (_1!19071 lt!989542) (_3!2922 lt!989542) (_2!19071 lt!989542)))))

(declare-fun lt!989541 () tuple3!4908)

(assert (=> b!2774912 (= lt!989541 call!181477)))

(declare-fun call!181487 () tuple3!4904)

(assert (=> b!2774912 (= lt!989542 call!181487)))

(declare-fun res!1159597 () Bool)

(declare-fun call!181480 () Bool)

(assert (=> b!2774912 (= res!1159597 call!181480)))

(assert (=> b!2774912 (=> (not res!1159597) (not e!1750210))))

(assert (=> b!2774912 e!1750210))

(declare-fun bm!181478 () Bool)

(assert (=> bm!181478 (= call!181489 (isPrefix!2557 lt!989496 lt!989496))))

(declare-fun b!2774913 () Bool)

(declare-fun res!1159598 () Bool)

(assert (=> b!2774913 (=> (not res!1159598) (not e!1750218))))

(assert (=> b!2774913 (= res!1159598 (valid!2977 (_3!2922 lt!989484)))))

(declare-fun bm!181479 () Bool)

(declare-fun lt!989503 () C!16364)

(assert (=> bm!181479 (= call!181483 (derivationStepZipper!369 z!3597 lt!989503))))

(declare-fun mapNonEmpty!17378 () Bool)

(declare-fun tp!878256 () Bool)

(declare-fun tp!878262 () Bool)

(assert (=> mapNonEmpty!17378 (= mapRes!17377 (and tp!878256 tp!878262))))

(declare-fun mapKey!17377 () (_ BitVec 32))

(declare-fun mapRest!17377 () (Array (_ BitVec 32) List!32175))

(declare-fun mapValue!17377 () List!32175)

(assert (=> mapNonEmpty!17378 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) (store mapRest!17377 mapKey!17377 mapValue!17377))))

(declare-fun bm!181480 () Bool)

(declare-fun nullableZipper!636 ((InoxSet Context!4642)) Bool)

(assert (=> bm!181480 (= call!181479 (nullableZipper!636 z!3597))))

(declare-fun e!1750207 () Bool)

(declare-fun tp!878248 () Bool)

(declare-fun tp!878251 () Bool)

(declare-fun array_inv!4325 (array!13570) Bool)

(declare-fun array_inv!4326 (array!13572) Bool)

(assert (=> b!2774914 (= e!1750223 (and tp!878252 tp!878248 tp!878251 (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) e!1750207))))

(declare-fun lt!989532 () List!32172)

(declare-fun lt!989488 () List!32172)

(declare-fun bm!181481 () Bool)

(declare-fun lt!989515 () tuple3!4908)

(assert (=> bm!181481 (= call!181487 (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))

(declare-fun b!2774915 () Bool)

(declare-fun e!1750215 () Bool)

(declare-fun e!1750231 () Bool)

(assert (=> b!2774915 (= e!1750215 e!1750231)))

(declare-fun b!2774916 () Bool)

(declare-fun Unit!46209 () Unit!46204)

(assert (=> b!2774916 (= e!1750195 Unit!46209)))

(declare-fun b!2774917 () Bool)

(declare-fun Unit!46210 () Unit!46204)

(assert (=> b!2774917 (= e!1750230 Unit!46210)))

(declare-fun b!2774918 () Bool)

(declare-fun e!1750226 () Int)

(assert (=> b!2774918 (= e!1750226 call!181486)))

(declare-fun b!2774919 () Bool)

(assert (=> b!2774919 (= e!1750224 (tuple3!4907 (ite (= (_1!19071 lt!989507) 0) 0 (_1!19071 lt!989507)) (_3!2922 lt!989507) (_2!19071 lt!989507)))))

(assert (=> b!2774919 (= lt!989515 call!181477)))

(assert (=> b!2774919 (= lt!989507 call!181487)))

(declare-fun res!1159601 () Bool)

(assert (=> b!2774919 (= res!1159601 call!181480)))

(assert (=> b!2774919 (=> (not res!1159601) (not e!1750205))))

(assert (=> b!2774919 e!1750205))

(declare-fun bm!181482 () Bool)

(assert (=> bm!181482 (= call!181490 (nullableZipper!636 z!3597))))

(declare-fun b!2774920 () Bool)

(declare-fun tp!878255 () Bool)

(declare-fun inv!43563 (Conc!9981) Bool)

(assert (=> b!2774920 (= e!1750216 (and (inv!43563 (c!450499 input!5495)) tp!878255))))

(declare-fun b!2774921 () Bool)

(assert (=> b!2774921 (= e!1750201 e!1750211)))

(declare-fun b!2774922 () Bool)

(declare-fun c!450490 () Bool)

(assert (=> b!2774922 (= c!450490 call!181479)))

(assert (=> b!2774922 (= (++!7932 lt!989491 lt!989479) lt!989496)))

(assert (=> b!2774922 (= lt!989491 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)))))

(declare-fun lt!989497 () Unit!46204)

(assert (=> b!2774922 (= lt!989497 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989503 lt!989479 lt!989496))))

(assert (=> b!2774922 (= lt!989479 (tail!4390 lt!989496))))

(declare-fun apply!7512 (BalanceConc!19576 Int) C!16364)

(assert (=> b!2774922 (= lt!989503 (apply!7512 input!5495 0))))

(assert (=> b!2774922 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!989496)))

(declare-fun lt!989525 () Unit!46204)

(assert (=> b!2774922 (= lt!989525 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989496))))

(declare-fun lt!989492 () Unit!46204)

(assert (=> b!2774922 (= lt!989492 e!1750229)))

(declare-fun c!450498 () Bool)

(declare-fun lt!989519 () Int)

(assert (=> b!2774922 (= c!450498 (= lt!989519 lt!989489))))

(assert (=> b!2774922 (<= lt!989519 (size!24869 lt!989496))))

(assert (=> b!2774922 (= lt!989519 (size!24869 Nil!32072))))

(declare-fun lt!989498 () Unit!46204)

(assert (=> b!2774922 (= lt!989498 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989496))))

(declare-fun drop!1710 (List!32172 Int) List!32172)

(declare-fun apply!7513 (List!32172 Int) C!16364)

(assert (=> b!2774922 (= (head!6152 (drop!1710 lt!989496 0)) (apply!7513 lt!989496 0))))

(declare-fun lt!989536 () Unit!46204)

(declare-fun lemmaDropApply!916 (List!32172 Int) Unit!46204)

(assert (=> b!2774922 (= lt!989536 (lemmaDropApply!916 lt!989496 0))))

(declare-fun lt!989512 () List!32172)

(declare-fun lt!989529 () List!32172)

(assert (=> b!2774922 (and (= lt!989512 Nil!32072) (= lt!989529 lt!989496))))

(declare-fun lt!989495 () Unit!46204)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!342 (List!32172 List!32172 List!32172 List!32172) Unit!46204)

(assert (=> b!2774922 (= lt!989495 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989512 lt!989529 Nil!32072 lt!989496))))

(declare-fun lt!989540 () tuple2!32290)

(assert (=> b!2774922 (= lt!989529 (list!12096 (_2!19066 lt!989540)))))

(assert (=> b!2774922 (= lt!989512 (list!12096 (_1!19066 lt!989540)))))

(assert (=> b!2774922 (= lt!989540 (splitAt!119 input!5495 0))))

(assert (=> b!2774922 (= e!1750196 e!1750226)))

(declare-fun b!2774923 () Bool)

(assert (=> b!2774923 (= e!1750208 (= lt!989526 (tuple2!32289 Nil!32072 lt!989496)))))

(declare-fun b!2774924 () Bool)

(assert (=> b!2774924 (= e!1750221 (= lt!989521 e!1750196))))

(declare-fun c!450497 () Bool)

(assert (=> b!2774924 (= c!450497 (= 0 lt!989489))))

(declare-fun bm!181483 () Bool)

(assert (=> bm!181483 (= call!181482 (nullableZipper!636 z!3597))))

(declare-fun b!2774925 () Bool)

(declare-fun Unit!46211 () Unit!46204)

(assert (=> b!2774925 (= e!1750229 Unit!46211)))

(declare-fun lt!989518 () Unit!46204)

(assert (=> b!2774925 (= lt!989518 call!181488)))

(assert (=> b!2774925 call!181474))

(declare-fun lt!989524 () Unit!46204)

(assert (=> b!2774925 (= lt!989524 call!181485)))

(assert (=> b!2774925 false))

(declare-fun b!2774926 () Bool)

(declare-fun res!1159605 () Bool)

(assert (=> b!2774926 (= res!1159605 call!181472)))

(assert (=> b!2774926 (=> (not res!1159605) (not e!1750205))))

(declare-fun b!2774927 () Bool)

(declare-fun c!450486 () Bool)

(assert (=> b!2774927 (= c!450486 call!181490)))

(assert (=> b!2774927 (= lt!989496 Nil!32072)))

(declare-fun lt!989517 () Unit!46204)

(assert (=> b!2774927 (= lt!989517 call!181491)))

(assert (=> b!2774927 call!181492))

(declare-fun lt!989477 () Unit!46204)

(assert (=> b!2774927 (= lt!989477 call!181478)))

(assert (=> b!2774927 (= e!1750227 e!1750198)))

(declare-fun b!2774928 () Bool)

(declare-fun lt!989494 () Int)

(assert (=> b!2774928 (= e!1750226 (ite (= lt!989494 0) 0 lt!989494))))

(assert (=> b!2774928 (= lt!989494 call!181486)))

(declare-fun b!2774929 () Bool)

(assert (=> b!2774929 (= e!1750218 (= (_1!19071 lt!989484) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(declare-fun b!2774930 () Bool)

(declare-fun res!1159604 () Bool)

(assert (=> b!2774930 (=> (not res!1159604) (not e!1750200))))

(assert (=> b!2774930 (= res!1159604 (valid!2977 (_3!2922 lt!989506)))))

(declare-fun b!2774931 () Bool)

(assert (=> b!2774931 (= e!1750198 (tuple2!32289 Nil!32072 Nil!32072))))

(declare-fun setIsEmpty!23028 () Bool)

(assert (=> setIsEmpty!23028 setRes!23028))

(declare-fun b!2774932 () Bool)

(assert (=> b!2774932 (= e!1750199 e!1750215)))

(declare-fun b!2774933 () Bool)

(declare-fun e!1750202 () Bool)

(declare-fun tp!878257 () Bool)

(assert (=> b!2774933 (= e!1750202 (and tp!878257 mapRes!17378))))

(declare-fun condMapEmpty!17378 () Bool)

(declare-fun mapDefault!17377 () List!32174)

(assert (=> b!2774933 (= condMapEmpty!17378 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17377)))))

(declare-fun b!2774934 () Bool)

(declare-fun e!1750228 () tuple2!32288)

(declare-fun lt!989500 () tuple2!32288)

(assert (=> b!2774934 (= e!1750228 lt!989500)))

(declare-fun tp!878260 () Bool)

(declare-fun tp!878258 () Bool)

(declare-fun array_inv!4327 (array!13568) Bool)

(assert (=> b!2774935 (= e!1750231 (and tp!878261 tp!878260 tp!878258 (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) e!1750202))))

(declare-fun bm!181484 () Bool)

(assert (=> bm!181484 (= call!181478 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun b!2774936 () Bool)

(declare-fun tp!878250 () Bool)

(assert (=> b!2774936 (= e!1750207 (and tp!878250 mapRes!17377))))

(declare-fun condMapEmpty!17377 () Bool)

(declare-fun mapDefault!17378 () List!32175)

(assert (=> b!2774936 (= condMapEmpty!17377 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17378)))))

(declare-fun b!2774937 () Bool)

(assert (=> b!2774937 (= e!1750203 e!1750228)))

(assert (=> b!2774937 (= lt!989500 call!181481)))

(declare-fun c!450495 () Bool)

(declare-fun isEmpty!18097 (List!32172) Bool)

(assert (=> b!2774937 (= c!450495 (isEmpty!18097 (_1!19065 lt!989500)))))

(declare-fun b!2774938 () Bool)

(assert (=> b!2774938 (= e!1750210 (= (_1!19071 lt!989542) call!181476))))

(declare-fun bm!181485 () Bool)

(assert (=> bm!181485 (= call!181488 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun setNonEmpty!23028 () Bool)

(declare-fun setElem!23028 () Context!4642)

(declare-fun tp!878246 () Bool)

(declare-fun inv!43564 (Context!4642) Bool)

(assert (=> setNonEmpty!23028 (= setRes!23028 (and tp!878246 (inv!43564 setElem!23028) e!1750197))))

(declare-fun setRest!23028 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23028 (= z!3597 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23028 true) setRest!23028))))

(declare-fun b!2774939 () Bool)

(assert (=> b!2774939 (= c!450487 call!181482)))

(assert (=> b!2774939 (= (++!7932 lt!989488 lt!989532) lt!989496)))

(assert (=> b!2774939 (= lt!989488 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)))))

(declare-fun lt!989485 () Unit!46204)

(assert (=> b!2774939 (= lt!989485 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989486 lt!989532 lt!989496))))

(assert (=> b!2774939 (= lt!989532 (tail!4390 lt!989496))))

(assert (=> b!2774939 (= lt!989486 (apply!7512 input!5495 0))))

(assert (=> b!2774939 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!989496)))

(declare-fun lt!989509 () Unit!46204)

(assert (=> b!2774939 (= lt!989509 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989496))))

(declare-fun lt!989481 () Unit!46204)

(assert (=> b!2774939 (= lt!989481 e!1750230)))

(declare-fun c!450496 () Bool)

(declare-fun lt!989502 () Int)

(assert (=> b!2774939 (= c!450496 (= lt!989502 lt!989489))))

(assert (=> b!2774939 (<= lt!989502 (size!24869 lt!989496))))

(assert (=> b!2774939 (= lt!989502 (size!24869 Nil!32072))))

(declare-fun lt!989501 () Unit!46204)

(assert (=> b!2774939 (= lt!989501 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989496))))

(assert (=> b!2774939 (= (head!6152 (drop!1710 lt!989496 0)) (apply!7513 lt!989496 0))))

(declare-fun lt!989538 () Unit!46204)

(assert (=> b!2774939 (= lt!989538 (lemmaDropApply!916 lt!989496 0))))

(declare-fun lt!989516 () List!32172)

(declare-fun lt!989528 () List!32172)

(assert (=> b!2774939 (and (= lt!989516 Nil!32072) (= lt!989528 lt!989496))))

(declare-fun lt!989490 () Unit!46204)

(assert (=> b!2774939 (= lt!989490 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989516 lt!989528 Nil!32072 lt!989496))))

(declare-fun lt!989513 () tuple2!32290)

(assert (=> b!2774939 (= lt!989528 (list!12096 (_2!19066 lt!989513)))))

(assert (=> b!2774939 (= lt!989516 (list!12096 (_1!19066 lt!989513)))))

(assert (=> b!2774939 (= lt!989513 (splitAt!119 input!5495 0))))

(assert (=> b!2774939 (= e!1750214 e!1750224)))

(declare-fun b!2774940 () Bool)

(assert (=> b!2774940 (= e!1750228 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181486 () Bool)

(assert (=> bm!181486 (= call!181480 (valid!2976 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542))))))

(declare-fun bm!181487 () Bool)

(assert (=> bm!181487 (= call!181476 (findLongestMatchInnerZipperFast!52 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))

(declare-fun mapIsEmpty!17378 () Bool)

(assert (=> mapIsEmpty!17378 mapRes!17378))

(declare-fun b!2774941 () Bool)

(assert (=> b!2774941 (= e!1750212 e!1750225)))

(declare-fun b!2774942 () Bool)

(assert (=> b!2774942 (= e!1750200 (= (_1!19071 lt!989506) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(assert (= (and start!268406 res!1159602) b!2774892))

(assert (= (and b!2774892 res!1159600) b!2774891))

(assert (= (and b!2774891 res!1159599) b!2774930))

(assert (= (and b!2774930 res!1159604) b!2774942))

(assert (= (and b!2774891 res!1159603) b!2774913))

(assert (= (and b!2774913 res!1159598) b!2774929))

(assert (= (and b!2774891 c!450488) b!2774902))

(assert (= (and b!2774891 (not c!450488)) b!2774898))

(assert (= (and b!2774898 c!450491) b!2774895))

(assert (= (and b!2774898 (not c!450491)) b!2774939))

(assert (= (and b!2774939 c!450496) b!2774890))

(assert (= (and b!2774939 (not c!450496)) b!2774917))

(assert (= (and b!2774939 c!450487) b!2774919))

(assert (= (and b!2774939 (not c!450487)) b!2774912))

(assert (= (and b!2774919 res!1159601) b!2774926))

(assert (= (and b!2774926 res!1159605) b!2774910))

(assert (= (and b!2774912 res!1159597) b!2774901))

(assert (= (and b!2774901 res!1159596) b!2774938))

(assert (= (or b!2774919 b!2774912) bm!181486))

(assert (= (or b!2774919 b!2774912) bm!181481))

(assert (= (or b!2774926 b!2774901) bm!181468))

(assert (= (or b!2774919 b!2774912) bm!181475))

(assert (= (or b!2774910 b!2774938) bm!181487))

(assert (= (or b!2774895 b!2774939) bm!181483))

(assert (= (or b!2774895 b!2774890) bm!181472))

(assert (= (or b!2774895 b!2774890) bm!181467))

(assert (= (or b!2774895 b!2774890) bm!181478))

(assert (= (and b!2774891 c!450489) b!2774911))

(assert (= (and b!2774891 (not c!450489)) b!2774924))

(assert (= (and b!2774924 c!450497) b!2774907))

(assert (= (and b!2774924 (not c!450497)) b!2774922))

(assert (= (and b!2774922 c!450498) b!2774925))

(assert (= (and b!2774922 (not c!450498)) b!2774906))

(assert (= (and b!2774922 c!450490) b!2774928))

(assert (= (and b!2774922 (not c!450490)) b!2774918))

(assert (= (or b!2774928 b!2774918) bm!181479))

(assert (= (or b!2774928 b!2774918) bm!181473))

(assert (= (or b!2774907 b!2774922) bm!181480))

(assert (= (or b!2774907 b!2774925) bm!181485))

(assert (= (or b!2774907 b!2774925) bm!181471))

(assert (= (or b!2774907 b!2774925) bm!181477))

(assert (= (and b!2774891 c!450492) b!2774923))

(assert (= (and b!2774891 (not c!450492)) b!2774909))

(assert (= (and b!2774909 c!450494) b!2774927))

(assert (= (and b!2774909 (not c!450494)) b!2774894))

(assert (= (and b!2774927 c!450486) b!2774931))

(assert (= (and b!2774927 (not c!450486)) b!2774889))

(assert (= (and b!2774894 c!450493) b!2774904))

(assert (= (and b!2774894 (not c!450493)) b!2774916))

(assert (= (and b!2774894 c!450485) b!2774937))

(assert (= (and b!2774894 (not c!450485)) b!2774905))

(assert (= (and b!2774937 c!450495) b!2774940))

(assert (= (and b!2774937 (not c!450495)) b!2774934))

(assert (= (or b!2774937 b!2774905) bm!181470))

(assert (= (or b!2774937 b!2774905) bm!181474))

(assert (= (or b!2774927 b!2774894) bm!181482))

(assert (= (or b!2774927 b!2774904) bm!181484))

(assert (= (or b!2774927 b!2774904) bm!181469))

(assert (= (or b!2774927 b!2774904) bm!181476))

(assert (= (and b!2774933 condMapEmpty!17378) mapIsEmpty!17378))

(assert (= (and b!2774933 (not condMapEmpty!17378)) mapNonEmpty!17377))

(assert (= b!2774935 b!2774933))

(assert (= b!2774915 b!2774935))

(assert (= b!2774932 b!2774915))

(assert (= (and b!2774900 ((_ is LongMap!3813) (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))) b!2774932))

(assert (= b!2774899 b!2774900))

(assert (= (and b!2774941 ((_ is HashMap!3719) (cache!3862 cacheUp!820))) b!2774899))

(assert (= start!268406 b!2774941))

(assert (= (and b!2774936 condMapEmpty!17377) mapIsEmpty!17377))

(assert (= (and b!2774936 (not condMapEmpty!17377)) mapNonEmpty!17378))

(assert (= b!2774914 b!2774936))

(assert (= b!2774893 b!2774914))

(assert (= b!2774921 b!2774893))

(assert (= (and b!2774903 ((_ is LongMap!3814) (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))) b!2774921))

(assert (= b!2774897 b!2774903))

(assert (= (and b!2774896 ((_ is HashMap!3720) (cache!3863 cacheDown!939))) b!2774897))

(assert (= start!268406 b!2774896))

(assert (= (and start!268406 condSetEmpty!23028) setIsEmpty!23028))

(assert (= (and start!268406 (not condSetEmpty!23028)) setNonEmpty!23028))

(assert (= setNonEmpty!23028 b!2774908))

(assert (= start!268406 b!2774920))

(declare-fun m!3201309 () Bool)

(assert (=> b!2774913 m!3201309))

(declare-fun m!3201311 () Bool)

(assert (=> bm!181480 m!3201311))

(declare-fun m!3201313 () Bool)

(assert (=> b!2774935 m!3201313))

(declare-fun m!3201315 () Bool)

(assert (=> b!2774935 m!3201315))

(declare-fun m!3201317 () Bool)

(assert (=> start!268406 m!3201317))

(declare-fun m!3201319 () Bool)

(assert (=> start!268406 m!3201319))

(declare-fun m!3201321 () Bool)

(assert (=> start!268406 m!3201321))

(declare-fun m!3201323 () Bool)

(assert (=> start!268406 m!3201323))

(declare-fun m!3201325 () Bool)

(assert (=> bm!181470 m!3201325))

(declare-fun m!3201327 () Bool)

(assert (=> bm!181487 m!3201327))

(declare-fun m!3201329 () Bool)

(assert (=> b!2774892 m!3201329))

(declare-fun m!3201331 () Bool)

(assert (=> b!2774914 m!3201331))

(declare-fun m!3201333 () Bool)

(assert (=> b!2774914 m!3201333))

(declare-fun m!3201335 () Bool)

(assert (=> bm!181472 m!3201335))

(declare-fun m!3201337 () Bool)

(assert (=> bm!181474 m!3201337))

(declare-fun m!3201339 () Bool)

(assert (=> bm!181471 m!3201339))

(assert (=> bm!181467 m!3201339))

(declare-fun m!3201341 () Bool)

(assert (=> b!2774891 m!3201341))

(declare-fun m!3201343 () Bool)

(assert (=> b!2774891 m!3201343))

(declare-fun m!3201345 () Bool)

(assert (=> b!2774891 m!3201345))

(declare-fun m!3201347 () Bool)

(assert (=> b!2774891 m!3201347))

(declare-fun m!3201349 () Bool)

(assert (=> b!2774891 m!3201349))

(declare-fun m!3201351 () Bool)

(assert (=> b!2774891 m!3201351))

(declare-fun m!3201353 () Bool)

(assert (=> b!2774891 m!3201353))

(declare-fun m!3201355 () Bool)

(assert (=> b!2774891 m!3201355))

(declare-fun m!3201357 () Bool)

(assert (=> b!2774891 m!3201357))

(declare-fun m!3201359 () Bool)

(assert (=> b!2774891 m!3201359))

(declare-fun m!3201361 () Bool)

(assert (=> b!2774891 m!3201361))

(assert (=> b!2774891 m!3201343))

(assert (=> b!2774891 m!3201357))

(declare-fun m!3201363 () Bool)

(assert (=> b!2774891 m!3201363))

(declare-fun m!3201365 () Bool)

(assert (=> b!2774891 m!3201365))

(declare-fun m!3201367 () Bool)

(assert (=> b!2774891 m!3201367))

(declare-fun m!3201369 () Bool)

(assert (=> b!2774891 m!3201369))

(declare-fun m!3201371 () Bool)

(assert (=> b!2774891 m!3201371))

(assert (=> b!2774891 m!3201345))

(declare-fun m!3201373 () Bool)

(assert (=> b!2774891 m!3201373))

(declare-fun m!3201375 () Bool)

(assert (=> b!2774891 m!3201375))

(declare-fun m!3201377 () Bool)

(assert (=> b!2774891 m!3201377))

(declare-fun m!3201379 () Bool)

(assert (=> bm!181481 m!3201379))

(declare-fun m!3201381 () Bool)

(assert (=> bm!181478 m!3201381))

(assert (=> bm!181482 m!3201311))

(declare-fun m!3201383 () Bool)

(assert (=> bm!181475 m!3201383))

(assert (=> b!2774929 m!3201351))

(declare-fun m!3201385 () Bool)

(assert (=> bm!181486 m!3201385))

(assert (=> bm!181484 m!3201335))

(declare-fun m!3201387 () Bool)

(assert (=> b!2774922 m!3201387))

(declare-fun m!3201389 () Bool)

(assert (=> b!2774922 m!3201389))

(declare-fun m!3201391 () Bool)

(assert (=> b!2774922 m!3201391))

(assert (=> b!2774922 m!3201389))

(declare-fun m!3201393 () Bool)

(assert (=> b!2774922 m!3201393))

(declare-fun m!3201395 () Bool)

(assert (=> b!2774922 m!3201395))

(declare-fun m!3201397 () Bool)

(assert (=> b!2774922 m!3201397))

(declare-fun m!3201399 () Bool)

(assert (=> b!2774922 m!3201399))

(declare-fun m!3201401 () Bool)

(assert (=> b!2774922 m!3201401))

(declare-fun m!3201403 () Bool)

(assert (=> b!2774922 m!3201403))

(declare-fun m!3201405 () Bool)

(assert (=> b!2774922 m!3201405))

(declare-fun m!3201407 () Bool)

(assert (=> b!2774922 m!3201407))

(declare-fun m!3201409 () Bool)

(assert (=> b!2774922 m!3201409))

(assert (=> b!2774922 m!3201397))

(declare-fun m!3201411 () Bool)

(assert (=> b!2774922 m!3201411))

(declare-fun m!3201413 () Bool)

(assert (=> b!2774922 m!3201413))

(declare-fun m!3201415 () Bool)

(assert (=> b!2774922 m!3201415))

(declare-fun m!3201417 () Bool)

(assert (=> b!2774922 m!3201417))

(declare-fun m!3201419 () Bool)

(assert (=> b!2774922 m!3201419))

(declare-fun m!3201421 () Bool)

(assert (=> b!2774922 m!3201421))

(declare-fun m!3201423 () Bool)

(assert (=> b!2774922 m!3201423))

(declare-fun m!3201425 () Bool)

(assert (=> b!2774922 m!3201425))

(declare-fun m!3201427 () Bool)

(assert (=> bm!181468 m!3201427))

(assert (=> bm!181477 m!3201381))

(declare-fun m!3201429 () Bool)

(assert (=> b!2774939 m!3201429))

(assert (=> b!2774939 m!3201389))

(declare-fun m!3201431 () Bool)

(assert (=> b!2774939 m!3201431))

(assert (=> b!2774939 m!3201421))

(assert (=> b!2774939 m!3201389))

(assert (=> b!2774939 m!3201393))

(assert (=> b!2774939 m!3201395))

(assert (=> b!2774939 m!3201397))

(assert (=> b!2774939 m!3201423))

(assert (=> b!2774939 m!3201399))

(assert (=> b!2774939 m!3201401))

(declare-fun m!3201433 () Bool)

(assert (=> b!2774939 m!3201433))

(declare-fun m!3201435 () Bool)

(assert (=> b!2774939 m!3201435))

(assert (=> b!2774939 m!3201391))

(assert (=> b!2774939 m!3201409))

(assert (=> b!2774939 m!3201397))

(assert (=> b!2774939 m!3201411))

(assert (=> b!2774939 m!3201413))

(declare-fun m!3201437 () Bool)

(assert (=> b!2774939 m!3201437))

(assert (=> b!2774939 m!3201403))

(assert (=> b!2774939 m!3201405))

(declare-fun m!3201439 () Bool)

(assert (=> b!2774939 m!3201439))

(declare-fun m!3201441 () Bool)

(assert (=> mapNonEmpty!17378 m!3201441))

(declare-fun m!3201443 () Bool)

(assert (=> b!2774920 m!3201443))

(declare-fun m!3201445 () Bool)

(assert (=> b!2774894 m!3201445))

(assert (=> b!2774894 m!3201391))

(declare-fun m!3201447 () Bool)

(assert (=> b!2774894 m!3201447))

(assert (=> b!2774894 m!3201421))

(assert (=> b!2774894 m!3201395))

(assert (=> b!2774894 m!3201397))

(declare-fun m!3201449 () Bool)

(assert (=> b!2774894 m!3201449))

(assert (=> b!2774894 m!3201399))

(assert (=> b!2774894 m!3201401))

(declare-fun m!3201451 () Bool)

(assert (=> b!2774894 m!3201451))

(assert (=> b!2774894 m!3201397))

(assert (=> b!2774894 m!3201411))

(assert (=> b!2774894 m!3201413))

(declare-fun m!3201453 () Bool)

(assert (=> b!2774930 m!3201453))

(declare-fun m!3201455 () Bool)

(assert (=> mapNonEmpty!17377 m!3201455))

(declare-fun m!3201457 () Bool)

(assert (=> b!2774937 m!3201457))

(declare-fun m!3201459 () Bool)

(assert (=> bm!181479 m!3201459))

(declare-fun m!3201461 () Bool)

(assert (=> bm!181473 m!3201461))

(declare-fun m!3201463 () Bool)

(assert (=> setNonEmpty!23028 m!3201463))

(assert (=> bm!181469 m!3201339))

(assert (=> bm!181485 m!3201335))

(assert (=> b!2774942 m!3201351))

(assert (=> bm!181476 m!3201381))

(assert (=> bm!181483 m!3201311))

(check-sat (not b!2774930) (not bm!181468) (not b_next!79097) b_and!203131 b_and!203129 (not b!2774908) (not b!2774922) (not mapNonEmpty!17377) (not bm!181485) (not b!2774933) (not b!2774936) (not bm!181486) b_and!203133 (not b!2774914) (not b!2774894) (not bm!181471) (not bm!181474) (not bm!181479) (not bm!181484) (not bm!181476) (not bm!181469) (not bm!181478) (not b_next!79099) (not bm!181472) (not bm!181481) (not b!2774892) (not b!2774939) (not bm!181480) (not bm!181487) (not start!268406) (not mapNonEmpty!17378) (not bm!181475) (not bm!181470) (not bm!181477) (not b!2774920) (not b_next!79095) (not b!2774935) (not b!2774937) (not b!2774929) (not bm!181483) (not bm!181467) (not b!2774891) (not setNonEmpty!23028) b_and!203127 (not bm!181473) (not b_next!79093) (not bm!181482) (not b!2774913) (not b!2774942))
(check-sat b_and!203133 (not b_next!79099) (not b_next!79095) (not b_next!79097) b_and!203131 b_and!203129 b_and!203127 (not b_next!79093))
(get-model)

(declare-fun d!806458 () Bool)

(declare-fun e!1750236 () Bool)

(assert (=> d!806458 e!1750236))

(declare-fun res!1159610 () Bool)

(assert (=> d!806458 (=> (not res!1159610) (not e!1750236))))

(declare-fun lt!989546 () List!32172)

(declare-fun content!4508 (List!32172) (InoxSet C!16364))

(assert (=> d!806458 (= res!1159610 (= (content!4508 lt!989546) ((_ map or) (content!4508 Nil!32072) (content!4508 lt!989496))))))

(declare-fun e!1750237 () List!32172)

(assert (=> d!806458 (= lt!989546 e!1750237)))

(declare-fun c!450503 () Bool)

(assert (=> d!806458 (= c!450503 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806458 (= (++!7932 Nil!32072 lt!989496) lt!989546)))

(declare-fun b!2774954 () Bool)

(assert (=> b!2774954 (= e!1750236 (or (not (= lt!989496 Nil!32072)) (= lt!989546 Nil!32072)))))

(declare-fun b!2774952 () Bool)

(assert (=> b!2774952 (= e!1750237 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) lt!989496)))))

(declare-fun b!2774951 () Bool)

(assert (=> b!2774951 (= e!1750237 lt!989496)))

(declare-fun b!2774953 () Bool)

(declare-fun res!1159611 () Bool)

(assert (=> b!2774953 (=> (not res!1159611) (not e!1750236))))

(assert (=> b!2774953 (= res!1159611 (= (size!24869 lt!989546) (+ (size!24869 Nil!32072) (size!24869 lt!989496))))))

(assert (= (and d!806458 c!450503) b!2774951))

(assert (= (and d!806458 (not c!450503)) b!2774952))

(assert (= (and d!806458 res!1159610) b!2774953))

(assert (= (and b!2774953 res!1159611) b!2774954))

(declare-fun m!3201465 () Bool)

(assert (=> d!806458 m!3201465))

(declare-fun m!3201467 () Bool)

(assert (=> d!806458 m!3201467))

(declare-fun m!3201469 () Bool)

(assert (=> d!806458 m!3201469))

(declare-fun m!3201471 () Bool)

(assert (=> b!2774952 m!3201471))

(declare-fun m!3201473 () Bool)

(assert (=> b!2774953 m!3201473))

(assert (=> b!2774953 m!3201399))

(assert (=> b!2774953 m!3201391))

(assert (=> b!2774891 d!806458))

(declare-fun d!806460 () Bool)

(declare-fun e!1750240 () Bool)

(assert (=> d!806460 e!1750240))

(declare-fun res!1159616 () Bool)

(assert (=> d!806460 (=> (not res!1159616) (not e!1750240))))

(declare-fun lt!989549 () tuple3!4904)

(assert (=> d!806460 (= res!1159616 (valid!2976 (_2!19071 lt!989549)))))

(declare-fun choose!16271 (CacheUp!2424 CacheDown!2546 (InoxSet Context!4642) List!32172 Int List!32172 BalanceConc!19576 Int) tuple3!4904)

(assert (=> d!806460 (= lt!989549 (choose!16271 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))

(assert (=> d!806460 (= (++!7932 Nil!32072 lt!989496) (list!12096 input!5495))))

(assert (=> d!806460 (= (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489) lt!989549)))

(declare-fun b!2774959 () Bool)

(declare-fun res!1159617 () Bool)

(assert (=> b!2774959 (=> (not res!1159617) (not e!1750240))))

(assert (=> b!2774959 (= res!1159617 (valid!2977 (_3!2922 lt!989549)))))

(declare-fun b!2774960 () Bool)

(assert (=> b!2774960 (= e!1750240 (= (_1!19071 lt!989549) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(assert (= (and d!806460 res!1159616) b!2774959))

(assert (= (and b!2774959 res!1159617) b!2774960))

(declare-fun m!3201475 () Bool)

(assert (=> d!806460 m!3201475))

(declare-fun m!3201477 () Bool)

(assert (=> d!806460 m!3201477))

(assert (=> d!806460 m!3201357))

(assert (=> d!806460 m!3201349))

(declare-fun m!3201479 () Bool)

(assert (=> b!2774959 m!3201479))

(assert (=> b!2774960 m!3201351))

(assert (=> b!2774891 d!806460))

(declare-fun d!806462 () Bool)

(declare-fun validCacheMapUp!369 (MutableMap!3719) Bool)

(assert (=> d!806462 (= (valid!2976 (_2!19071 lt!989484)) (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989484))))))

(declare-fun bs!505268 () Bool)

(assert (= bs!505268 d!806462))

(declare-fun m!3201481 () Bool)

(assert (=> bs!505268 m!3201481))

(assert (=> b!2774891 d!806462))

(declare-fun b!2774970 () Bool)

(declare-fun res!1159627 () Bool)

(declare-fun e!1750249 () Bool)

(assert (=> b!2774970 (=> (not res!1159627) (not e!1750249))))

(assert (=> b!2774970 (= res!1159627 (= (head!6152 Nil!32072) (head!6152 (++!7932 Nil!32072 lt!989496))))))

(declare-fun b!2774969 () Bool)

(declare-fun e!1750248 () Bool)

(assert (=> b!2774969 (= e!1750248 e!1750249)))

(declare-fun res!1159628 () Bool)

(assert (=> b!2774969 (=> (not res!1159628) (not e!1750249))))

(assert (=> b!2774969 (= res!1159628 (not ((_ is Nil!32072) (++!7932 Nil!32072 lt!989496))))))

(declare-fun d!806464 () Bool)

(declare-fun e!1750247 () Bool)

(assert (=> d!806464 e!1750247))

(declare-fun res!1159629 () Bool)

(assert (=> d!806464 (=> res!1159629 e!1750247)))

(declare-fun lt!989552 () Bool)

(assert (=> d!806464 (= res!1159629 (not lt!989552))))

(assert (=> d!806464 (= lt!989552 e!1750248)))

(declare-fun res!1159626 () Bool)

(assert (=> d!806464 (=> res!1159626 e!1750248)))

(assert (=> d!806464 (= res!1159626 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806464 (= (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496)) lt!989552)))

(declare-fun b!2774971 () Bool)

(assert (=> b!2774971 (= e!1750249 (isPrefix!2557 (tail!4390 Nil!32072) (tail!4390 (++!7932 Nil!32072 lt!989496))))))

(declare-fun b!2774972 () Bool)

(assert (=> b!2774972 (= e!1750247 (>= (size!24869 (++!7932 Nil!32072 lt!989496)) (size!24869 Nil!32072)))))

(assert (= (and d!806464 (not res!1159626)) b!2774969))

(assert (= (and b!2774969 res!1159628) b!2774970))

(assert (= (and b!2774970 res!1159627) b!2774971))

(assert (= (and d!806464 (not res!1159629)) b!2774972))

(declare-fun m!3201483 () Bool)

(assert (=> b!2774970 m!3201483))

(assert (=> b!2774970 m!3201357))

(declare-fun m!3201485 () Bool)

(assert (=> b!2774970 m!3201485))

(declare-fun m!3201487 () Bool)

(assert (=> b!2774971 m!3201487))

(assert (=> b!2774971 m!3201357))

(declare-fun m!3201489 () Bool)

(assert (=> b!2774971 m!3201489))

(assert (=> b!2774971 m!3201487))

(assert (=> b!2774971 m!3201489))

(declare-fun m!3201491 () Bool)

(assert (=> b!2774971 m!3201491))

(assert (=> b!2774972 m!3201357))

(declare-fun m!3201493 () Bool)

(assert (=> b!2774972 m!3201493))

(assert (=> b!2774972 m!3201399))

(assert (=> b!2774891 d!806464))

(declare-fun d!806466 () Bool)

(declare-fun e!1750250 () Bool)

(assert (=> d!806466 e!1750250))

(declare-fun res!1159630 () Bool)

(assert (=> d!806466 (=> (not res!1159630) (not e!1750250))))

(declare-fun lt!989553 () List!32172)

(assert (=> d!806466 (= res!1159630 (= (content!4508 lt!989553) ((_ map or) (content!4508 (_1!19065 lt!989526)) (content!4508 (_2!19065 lt!989526)))))))

(declare-fun e!1750251 () List!32172)

(assert (=> d!806466 (= lt!989553 e!1750251)))

(declare-fun c!450504 () Bool)

(assert (=> d!806466 (= c!450504 ((_ is Nil!32072) (_1!19065 lt!989526)))))

(assert (=> d!806466 (= (++!7932 (_1!19065 lt!989526) (_2!19065 lt!989526)) lt!989553)))

(declare-fun b!2774976 () Bool)

(assert (=> b!2774976 (= e!1750250 (or (not (= (_2!19065 lt!989526) Nil!32072)) (= lt!989553 (_1!19065 lt!989526))))))

(declare-fun b!2774974 () Bool)

(assert (=> b!2774974 (= e!1750251 (Cons!32072 (h!37492 (_1!19065 lt!989526)) (++!7932 (t!228300 (_1!19065 lt!989526)) (_2!19065 lt!989526))))))

(declare-fun b!2774973 () Bool)

(assert (=> b!2774973 (= e!1750251 (_2!19065 lt!989526))))

(declare-fun b!2774975 () Bool)

(declare-fun res!1159631 () Bool)

(assert (=> b!2774975 (=> (not res!1159631) (not e!1750250))))

(assert (=> b!2774975 (= res!1159631 (= (size!24869 lt!989553) (+ (size!24869 (_1!19065 lt!989526)) (size!24869 (_2!19065 lt!989526)))))))

(assert (= (and d!806466 c!450504) b!2774973))

(assert (= (and d!806466 (not c!450504)) b!2774974))

(assert (= (and d!806466 res!1159630) b!2774975))

(assert (= (and b!2774975 res!1159631) b!2774976))

(declare-fun m!3201495 () Bool)

(assert (=> d!806466 m!3201495))

(declare-fun m!3201497 () Bool)

(assert (=> d!806466 m!3201497))

(declare-fun m!3201499 () Bool)

(assert (=> d!806466 m!3201499))

(declare-fun m!3201501 () Bool)

(assert (=> b!2774974 m!3201501))

(declare-fun m!3201503 () Bool)

(assert (=> b!2774975 m!3201503))

(declare-fun m!3201505 () Bool)

(assert (=> b!2774975 m!3201505))

(declare-fun m!3201507 () Bool)

(assert (=> b!2774975 m!3201507))

(assert (=> b!2774891 d!806466))

(declare-fun bs!505269 () Bool)

(declare-fun b!2774981 () Bool)

(declare-fun d!806468 () Bool)

(assert (= bs!505269 (and b!2774981 d!806468)))

(declare-fun lambda!101810 () Int)

(declare-fun lambda!101809 () Int)

(assert (=> bs!505269 (not (= lambda!101810 lambda!101809))))

(declare-fun bs!505270 () Bool)

(declare-fun b!2774982 () Bool)

(assert (= bs!505270 (and b!2774982 d!806468)))

(declare-fun lambda!101811 () Int)

(assert (=> bs!505270 (not (= lambda!101811 lambda!101809))))

(declare-fun bs!505271 () Bool)

(assert (= bs!505271 (and b!2774982 b!2774981)))

(assert (=> bs!505271 (= lambda!101811 lambda!101810)))

(declare-fun bm!181493 () Bool)

(declare-datatypes ((List!32176 0))(
  ( (Nil!32076) (Cons!32076 (h!37496 Context!4642) (t!228304 List!32176)) )
))
(declare-fun call!181498 () List!32176)

(declare-fun toList!1841 ((InoxSet Context!4642)) List!32176)

(assert (=> bm!181493 (= call!181498 (toList!1841 z!3597))))

(declare-fun lt!989574 () Bool)

(declare-datatypes ((Option!6262 0))(
  ( (None!6261) (Some!6261 (v!33686 List!32172)) )
))
(declare-fun isEmpty!18098 (Option!6262) Bool)

(declare-fun getLanguageWitness!189 ((InoxSet Context!4642)) Option!6262)

(assert (=> d!806468 (= lt!989574 (isEmpty!18098 (getLanguageWitness!189 z!3597)))))

(declare-fun forall!6631 ((InoxSet Context!4642) Int) Bool)

(assert (=> d!806468 (= lt!989574 (forall!6631 z!3597 lambda!101809))))

(declare-fun lt!989577 () Unit!46204)

(declare-fun e!1750258 () Unit!46204)

(assert (=> d!806468 (= lt!989577 e!1750258)))

(declare-fun c!450515 () Bool)

(assert (=> d!806468 (= c!450515 (not (forall!6631 z!3597 lambda!101809)))))

(assert (=> d!806468 (= (lostCauseZipper!443 z!3597) lt!989574)))

(declare-fun Unit!46212 () Unit!46204)

(assert (=> b!2774982 (= e!1750258 Unit!46212)))

(declare-fun lt!989572 () List!32176)

(assert (=> b!2774982 (= lt!989572 call!181498)))

(declare-fun lt!989576 () Unit!46204)

(declare-fun lemmaForallThenNotExists!84 (List!32176 Int) Unit!46204)

(assert (=> b!2774982 (= lt!989576 (lemmaForallThenNotExists!84 lt!989572 lambda!101809))))

(declare-fun call!181497 () Bool)

(assert (=> b!2774982 (not call!181497)))

(declare-fun lt!989570 () Unit!46204)

(assert (=> b!2774982 (= lt!989570 lt!989576)))

(declare-fun bm!181492 () Bool)

(declare-fun lt!989571 () List!32176)

(declare-fun exists!976 (List!32176 Int) Bool)

(assert (=> bm!181492 (= call!181497 (exists!976 (ite c!450515 lt!989571 lt!989572) (ite c!450515 lambda!101810 lambda!101811)))))

(declare-fun Unit!46213 () Unit!46204)

(assert (=> b!2774981 (= e!1750258 Unit!46213)))

(assert (=> b!2774981 (= lt!989571 call!181498)))

(declare-fun lt!989575 () Unit!46204)

(declare-fun lemmaNotForallThenExists!84 (List!32176 Int) Unit!46204)

(assert (=> b!2774981 (= lt!989575 (lemmaNotForallThenExists!84 lt!989571 lambda!101809))))

(assert (=> b!2774981 call!181497))

(declare-fun lt!989573 () Unit!46204)

(assert (=> b!2774981 (= lt!989573 lt!989575)))

(assert (= (and d!806468 c!450515) b!2774981))

(assert (= (and d!806468 (not c!450515)) b!2774982))

(assert (= (or b!2774981 b!2774982) bm!181492))

(assert (= (or b!2774981 b!2774982) bm!181493))

(declare-fun m!3201509 () Bool)

(assert (=> bm!181492 m!3201509))

(declare-fun m!3201511 () Bool)

(assert (=> bm!181493 m!3201511))

(declare-fun m!3201513 () Bool)

(assert (=> b!2774982 m!3201513))

(declare-fun m!3201515 () Bool)

(assert (=> d!806468 m!3201515))

(assert (=> d!806468 m!3201515))

(declare-fun m!3201517 () Bool)

(assert (=> d!806468 m!3201517))

(declare-fun m!3201519 () Bool)

(assert (=> d!806468 m!3201519))

(assert (=> d!806468 m!3201519))

(declare-fun m!3201521 () Bool)

(assert (=> b!2774981 m!3201521))

(assert (=> b!2774891 d!806468))

(declare-fun d!806470 () Bool)

(declare-fun list!12097 (Conc!9981) List!32172)

(assert (=> d!806470 (= (list!12096 input!5495) (list!12097 (c!450499 input!5495)))))

(declare-fun bs!505272 () Bool)

(assert (= bs!505272 d!806470))

(declare-fun m!3201523 () Bool)

(assert (=> bs!505272 m!3201523))

(assert (=> b!2774891 d!806470))

(declare-fun d!806472 () Bool)

(assert (=> d!806472 (= (list!12096 (_2!19066 lt!989480)) (list!12097 (c!450499 (_2!19066 lt!989480))))))

(declare-fun bs!505273 () Bool)

(assert (= bs!505273 d!806472))

(declare-fun m!3201525 () Bool)

(assert (=> bs!505273 m!3201525))

(assert (=> b!2774891 d!806472))

(declare-fun d!806474 () Bool)

(assert (=> d!806474 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(declare-fun lt!989580 () Unit!46204)

(declare-fun choose!16272 (List!32172 List!32172) Unit!46204)

(assert (=> d!806474 (= lt!989580 (choose!16272 Nil!32072 lt!989496))))

(assert (=> d!806474 (= (lemmaConcatTwoListThenFirstIsPrefix!1667 Nil!32072 lt!989496) lt!989580)))

(declare-fun bs!505274 () Bool)

(assert (= bs!505274 d!806474))

(assert (=> bs!505274 m!3201357))

(assert (=> bs!505274 m!3201357))

(assert (=> bs!505274 m!3201359))

(declare-fun m!3201527 () Bool)

(assert (=> bs!505274 m!3201527))

(assert (=> b!2774891 d!806474))

(declare-fun b!2775011 () Bool)

(declare-fun e!1750282 () Unit!46204)

(declare-fun Unit!46214 () Unit!46204)

(assert (=> b!2775011 (= e!1750282 Unit!46214)))

(declare-fun lt!989653 () Unit!46204)

(declare-fun call!181520 () Unit!46204)

(assert (=> b!2775011 (= lt!989653 call!181520)))

(declare-fun call!181516 () Bool)

(assert (=> b!2775011 call!181516))

(declare-fun lt!989649 () Unit!46204)

(assert (=> b!2775011 (= lt!989649 lt!989653)))

(declare-fun lt!989658 () Unit!46204)

(declare-fun call!181519 () Unit!46204)

(assert (=> b!2775011 (= lt!989658 call!181519)))

(assert (=> b!2775011 (= lt!989496 Nil!32072)))

(declare-fun lt!989642 () Unit!46204)

(assert (=> b!2775011 (= lt!989642 lt!989658)))

(assert (=> b!2775011 false))

(declare-fun d!806476 () Bool)

(declare-fun e!1750280 () Bool)

(assert (=> d!806476 e!1750280))

(declare-fun res!1159637 () Bool)

(assert (=> d!806476 (=> (not res!1159637) (not e!1750280))))

(declare-fun lt!989657 () tuple2!32288)

(assert (=> d!806476 (= res!1159637 (= (++!7932 (_1!19065 lt!989657) (_2!19065 lt!989657)) lt!989496))))

(declare-fun e!1750276 () tuple2!32288)

(assert (=> d!806476 (= lt!989657 e!1750276)))

(declare-fun c!450532 () Bool)

(assert (=> d!806476 (= c!450532 (lostCauseZipper!443 z!3597))))

(declare-fun lt!989645 () Unit!46204)

(declare-fun Unit!46215 () Unit!46204)

(assert (=> d!806476 (= lt!989645 Unit!46215)))

(assert (=> d!806476 (= (getSuffix!1239 lt!989496 Nil!32072) lt!989496)))

(declare-fun lt!989644 () Unit!46204)

(declare-fun lt!989647 () Unit!46204)

(assert (=> d!806476 (= lt!989644 lt!989647)))

(declare-fun lt!989640 () List!32172)

(assert (=> d!806476 (= lt!989496 lt!989640)))

(assert (=> d!806476 (= lt!989647 (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989640 lt!989496))))

(assert (=> d!806476 (= lt!989640 (getSuffix!1239 lt!989496 Nil!32072))))

(declare-fun lt!989641 () Unit!46204)

(declare-fun lt!989646 () Unit!46204)

(assert (=> d!806476 (= lt!989641 lt!989646)))

(assert (=> d!806476 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806476 (= lt!989646 (lemmaConcatTwoListThenFirstIsPrefix!1667 Nil!32072 lt!989496))))

(assert (=> d!806476 (= (++!7932 Nil!32072 lt!989496) lt!989496)))

(assert (=> d!806476 (= (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 lt!989496 lt!989489) lt!989657)))

(declare-fun bm!181510 () Bool)

(declare-fun call!181521 () C!16364)

(assert (=> bm!181510 (= call!181521 (head!6152 lt!989496))))

(declare-fun b!2775012 () Bool)

(declare-fun e!1750277 () tuple2!32288)

(declare-fun call!181515 () tuple2!32288)

(assert (=> b!2775012 (= e!1750277 call!181515)))

(declare-fun b!2775013 () Bool)

(declare-fun e!1750278 () Bool)

(assert (=> b!2775013 (= e!1750278 (>= (size!24869 (_1!19065 lt!989657)) (size!24869 Nil!32072)))))

(declare-fun b!2775014 () Bool)

(declare-fun c!450529 () Bool)

(declare-fun call!181517 () Bool)

(assert (=> b!2775014 (= c!450529 call!181517)))

(declare-fun lt!989650 () Unit!46204)

(declare-fun lt!989656 () Unit!46204)

(assert (=> b!2775014 (= lt!989650 lt!989656)))

(assert (=> b!2775014 (= lt!989496 Nil!32072)))

(assert (=> b!2775014 (= lt!989656 call!181519)))

(declare-fun lt!989636 () Unit!46204)

(declare-fun lt!989643 () Unit!46204)

(assert (=> b!2775014 (= lt!989636 lt!989643)))

(assert (=> b!2775014 call!181516))

(assert (=> b!2775014 (= lt!989643 call!181520)))

(declare-fun e!1750275 () tuple2!32288)

(declare-fun e!1750281 () tuple2!32288)

(assert (=> b!2775014 (= e!1750275 e!1750281)))

(declare-fun b!2775015 () Bool)

(assert (=> b!2775015 (= e!1750281 (tuple2!32289 Nil!32072 Nil!32072))))

(declare-fun b!2775016 () Bool)

(assert (=> b!2775016 (= e!1750276 e!1750275)))

(declare-fun c!450530 () Bool)

(assert (=> b!2775016 (= c!450530 (= 0 lt!989489))))

(declare-fun b!2775017 () Bool)

(assert (=> b!2775017 (= e!1750280 e!1750278)))

(declare-fun res!1159636 () Bool)

(assert (=> b!2775017 (=> res!1159636 e!1750278)))

(assert (=> b!2775017 (= res!1159636 (isEmpty!18097 (_1!19065 lt!989657)))))

(declare-fun b!2775018 () Bool)

(declare-fun e!1750279 () tuple2!32288)

(assert (=> b!2775018 (= e!1750279 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun b!2775019 () Bool)

(declare-fun Unit!46216 () Unit!46204)

(assert (=> b!2775019 (= e!1750282 Unit!46216)))

(declare-fun bm!181511 () Bool)

(assert (=> bm!181511 (= call!181517 (nullableZipper!636 z!3597))))

(declare-fun b!2775020 () Bool)

(declare-fun c!450531 () Bool)

(assert (=> b!2775020 (= c!450531 call!181517)))

(declare-fun lt!989648 () Unit!46204)

(declare-fun lt!989651 () Unit!46204)

(assert (=> b!2775020 (= lt!989648 lt!989651)))

(declare-fun lt!989635 () C!16364)

(declare-fun lt!989637 () List!32172)

(assert (=> b!2775020 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072)) lt!989637) lt!989496)))

(assert (=> b!2775020 (= lt!989651 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989635 lt!989637 lt!989496))))

(assert (=> b!2775020 (= lt!989637 (tail!4390 lt!989496))))

(assert (=> b!2775020 (= lt!989635 (head!6152 lt!989496))))

(declare-fun lt!989654 () Unit!46204)

(declare-fun lt!989634 () Unit!46204)

(assert (=> b!2775020 (= lt!989654 lt!989634)))

(assert (=> b!2775020 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)) lt!989496)))

(assert (=> b!2775020 (= lt!989634 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989496))))

(declare-fun lt!989655 () List!32172)

(assert (=> b!2775020 (= lt!989655 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989496) Nil!32072)))))

(declare-fun lt!989638 () Unit!46204)

(assert (=> b!2775020 (= lt!989638 e!1750282)))

(declare-fun c!450528 () Bool)

(assert (=> b!2775020 (= c!450528 (= (size!24869 Nil!32072) (size!24869 lt!989496)))))

(declare-fun lt!989639 () Unit!46204)

(declare-fun lt!989652 () Unit!46204)

(assert (=> b!2775020 (= lt!989639 lt!989652)))

(assert (=> b!2775020 (<= (size!24869 Nil!32072) (size!24869 lt!989496))))

(assert (=> b!2775020 (= lt!989652 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989496))))

(assert (=> b!2775020 (= e!1750275 e!1750277)))

(declare-fun bm!181512 () Bool)

(declare-fun call!181522 () (InoxSet Context!4642))

(assert (=> bm!181512 (= call!181522 (derivationStepZipper!369 z!3597 call!181521))))

(declare-fun b!2775021 () Bool)

(assert (=> b!2775021 (= e!1750281 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181513 () Bool)

(assert (=> bm!181513 (= call!181520 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun b!2775022 () Bool)

(declare-fun lt!989633 () tuple2!32288)

(assert (=> b!2775022 (= e!1750279 lt!989633)))

(declare-fun b!2775023 () Bool)

(assert (=> b!2775023 (= e!1750276 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181514 () Bool)

(declare-fun call!181518 () List!32172)

(assert (=> bm!181514 (= call!181515 (findLongestMatchInnerZipper!27 call!181522 lt!989655 (+ 0 1) call!181518 lt!989496 lt!989489))))

(declare-fun bm!181515 () Bool)

(assert (=> bm!181515 (= call!181519 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 Nil!32072 lt!989496))))

(declare-fun b!2775024 () Bool)

(assert (=> b!2775024 (= e!1750277 e!1750279)))

(assert (=> b!2775024 (= lt!989633 call!181515)))

(declare-fun c!450533 () Bool)

(assert (=> b!2775024 (= c!450533 (isEmpty!18097 (_1!19065 lt!989633)))))

(declare-fun bm!181516 () Bool)

(assert (=> bm!181516 (= call!181518 (tail!4390 lt!989496))))

(declare-fun bm!181517 () Bool)

(assert (=> bm!181517 (= call!181516 (isPrefix!2557 lt!989496 lt!989496))))

(assert (= (and d!806476 c!450532) b!2775023))

(assert (= (and d!806476 (not c!450532)) b!2775016))

(assert (= (and b!2775016 c!450530) b!2775014))

(assert (= (and b!2775016 (not c!450530)) b!2775020))

(assert (= (and b!2775014 c!450529) b!2775015))

(assert (= (and b!2775014 (not c!450529)) b!2775021))

(assert (= (and b!2775020 c!450528) b!2775011))

(assert (= (and b!2775020 (not c!450528)) b!2775019))

(assert (= (and b!2775020 c!450531) b!2775024))

(assert (= (and b!2775020 (not c!450531)) b!2775012))

(assert (= (and b!2775024 c!450533) b!2775018))

(assert (= (and b!2775024 (not c!450533)) b!2775022))

(assert (= (or b!2775024 b!2775012) bm!181516))

(assert (= (or b!2775024 b!2775012) bm!181510))

(assert (= (or b!2775024 b!2775012) bm!181512))

(assert (= (or b!2775024 b!2775012) bm!181514))

(assert (= (or b!2775014 b!2775020) bm!181511))

(assert (= (or b!2775014 b!2775011) bm!181513))

(assert (= (or b!2775014 b!2775011) bm!181515))

(assert (= (or b!2775014 b!2775011) bm!181517))

(assert (= (and d!806476 res!1159637) b!2775017))

(assert (= (and b!2775017 (not res!1159636)) b!2775013))

(declare-fun m!3201529 () Bool)

(assert (=> b!2775020 m!3201529))

(declare-fun m!3201531 () Bool)

(assert (=> b!2775020 m!3201531))

(assert (=> b!2775020 m!3201399))

(assert (=> b!2775020 m!3201449))

(declare-fun m!3201533 () Bool)

(assert (=> b!2775020 m!3201533))

(assert (=> b!2775020 m!3201421))

(declare-fun m!3201535 () Bool)

(assert (=> b!2775020 m!3201535))

(assert (=> b!2775020 m!3201395))

(assert (=> b!2775020 m!3201353))

(assert (=> b!2775020 m!3201535))

(declare-fun m!3201537 () Bool)

(assert (=> b!2775020 m!3201537))

(assert (=> b!2775020 m!3201353))

(declare-fun m!3201539 () Bool)

(assert (=> b!2775020 m!3201539))

(assert (=> b!2775020 m!3201533))

(declare-fun m!3201541 () Bool)

(assert (=> b!2775020 m!3201541))

(assert (=> b!2775020 m!3201391))

(assert (=> b!2775020 m!3201401))

(declare-fun m!3201543 () Bool)

(assert (=> b!2775024 m!3201543))

(assert (=> bm!181513 m!3201335))

(assert (=> bm!181517 m!3201381))

(assert (=> d!806476 m!3201357))

(assert (=> d!806476 m!3201359))

(assert (=> d!806476 m!3201361))

(assert (=> d!806476 m!3201357))

(assert (=> d!806476 m!3201353))

(declare-fun m!3201545 () Bool)

(assert (=> d!806476 m!3201545))

(declare-fun m!3201547 () Bool)

(assert (=> d!806476 m!3201547))

(assert (=> d!806476 m!3201373))

(assert (=> bm!181515 m!3201339))

(declare-fun m!3201549 () Bool)

(assert (=> b!2775013 m!3201549))

(assert (=> b!2775013 m!3201399))

(declare-fun m!3201551 () Bool)

(assert (=> bm!181514 m!3201551))

(assert (=> bm!181511 m!3201311))

(declare-fun m!3201553 () Bool)

(assert (=> bm!181512 m!3201553))

(declare-fun m!3201555 () Bool)

(assert (=> b!2775017 m!3201555))

(assert (=> bm!181516 m!3201395))

(assert (=> bm!181510 m!3201449))

(assert (=> b!2774891 d!806476))

(declare-fun d!806478 () Bool)

(assert (=> d!806478 (= (list!12096 (_1!19066 lt!989480)) (list!12097 (c!450499 (_1!19066 lt!989480))))))

(declare-fun bs!505275 () Bool)

(assert (= bs!505275 d!806478))

(declare-fun m!3201557 () Bool)

(assert (=> bs!505275 m!3201557))

(assert (=> b!2774891 d!806478))

(declare-fun d!806480 () Bool)

(declare-fun e!1750285 () Bool)

(assert (=> d!806480 e!1750285))

(declare-fun res!1159643 () Bool)

(assert (=> d!806480 (=> (not res!1159643) (not e!1750285))))

(declare-fun lt!989663 () tuple2!32290)

(declare-fun isBalanced!3044 (Conc!9981) Bool)

(assert (=> d!806480 (= res!1159643 (isBalanced!3044 (c!450499 (_1!19066 lt!989663))))))

(declare-datatypes ((tuple2!32298 0))(
  ( (tuple2!32299 (_1!19074 Conc!9981) (_2!19074 Conc!9981)) )
))
(declare-fun lt!989664 () tuple2!32298)

(assert (=> d!806480 (= lt!989663 (tuple2!32291 (BalanceConc!19577 (_1!19074 lt!989664)) (BalanceConc!19577 (_2!19074 lt!989664))))))

(declare-fun splitAt!120 (Conc!9981 Int) tuple2!32298)

(assert (=> d!806480 (= lt!989664 (splitAt!120 (c!450499 input!5495) (_1!19071 lt!989506)))))

(assert (=> d!806480 (isBalanced!3044 (c!450499 input!5495))))

(assert (=> d!806480 (= (splitAt!119 input!5495 (_1!19071 lt!989506)) lt!989663)))

(declare-fun b!2775029 () Bool)

(declare-fun res!1159642 () Bool)

(assert (=> b!2775029 (=> (not res!1159642) (not e!1750285))))

(assert (=> b!2775029 (= res!1159642 (isBalanced!3044 (c!450499 (_2!19066 lt!989663))))))

(declare-fun b!2775030 () Bool)

(declare-fun splitAtIndex!52 (List!32172 Int) tuple2!32288)

(assert (=> b!2775030 (= e!1750285 (= (tuple2!32289 (list!12096 (_1!19066 lt!989663)) (list!12096 (_2!19066 lt!989663))) (splitAtIndex!52 (list!12096 input!5495) (_1!19071 lt!989506))))))

(assert (= (and d!806480 res!1159643) b!2775029))

(assert (= (and b!2775029 res!1159642) b!2775030))

(declare-fun m!3201559 () Bool)

(assert (=> d!806480 m!3201559))

(declare-fun m!3201561 () Bool)

(assert (=> d!806480 m!3201561))

(declare-fun m!3201563 () Bool)

(assert (=> d!806480 m!3201563))

(declare-fun m!3201565 () Bool)

(assert (=> b!2775029 m!3201565))

(declare-fun m!3201567 () Bool)

(assert (=> b!2775030 m!3201567))

(declare-fun m!3201569 () Bool)

(assert (=> b!2775030 m!3201569))

(assert (=> b!2775030 m!3201349))

(assert (=> b!2775030 m!3201349))

(declare-fun m!3201571 () Bool)

(assert (=> b!2775030 m!3201571))

(assert (=> b!2774891 d!806480))

(declare-fun d!806482 () Bool)

(declare-fun e!1750286 () Bool)

(assert (=> d!806482 e!1750286))

(declare-fun res!1159644 () Bool)

(assert (=> d!806482 (=> (not res!1159644) (not e!1750286))))

(declare-fun lt!989665 () List!32172)

(assert (=> d!806482 (= res!1159644 (= (content!4508 lt!989665) ((_ map or) (content!4508 (list!12096 (_1!19066 lt!989480))) (content!4508 (list!12096 (_2!19066 lt!989480))))))))

(declare-fun e!1750287 () List!32172)

(assert (=> d!806482 (= lt!989665 e!1750287)))

(declare-fun c!450534 () Bool)

(assert (=> d!806482 (= c!450534 ((_ is Nil!32072) (list!12096 (_1!19066 lt!989480))))))

(assert (=> d!806482 (= (++!7932 (list!12096 (_1!19066 lt!989480)) (list!12096 (_2!19066 lt!989480))) lt!989665)))

(declare-fun b!2775034 () Bool)

(assert (=> b!2775034 (= e!1750286 (or (not (= (list!12096 (_2!19066 lt!989480)) Nil!32072)) (= lt!989665 (list!12096 (_1!19066 lt!989480)))))))

(declare-fun b!2775032 () Bool)

(assert (=> b!2775032 (= e!1750287 (Cons!32072 (h!37492 (list!12096 (_1!19066 lt!989480))) (++!7932 (t!228300 (list!12096 (_1!19066 lt!989480))) (list!12096 (_2!19066 lt!989480)))))))

(declare-fun b!2775031 () Bool)

(assert (=> b!2775031 (= e!1750287 (list!12096 (_2!19066 lt!989480)))))

(declare-fun b!2775033 () Bool)

(declare-fun res!1159645 () Bool)

(assert (=> b!2775033 (=> (not res!1159645) (not e!1750286))))

(assert (=> b!2775033 (= res!1159645 (= (size!24869 lt!989665) (+ (size!24869 (list!12096 (_1!19066 lt!989480))) (size!24869 (list!12096 (_2!19066 lt!989480))))))))

(assert (= (and d!806482 c!450534) b!2775031))

(assert (= (and d!806482 (not c!450534)) b!2775032))

(assert (= (and d!806482 res!1159644) b!2775033))

(assert (= (and b!2775033 res!1159645) b!2775034))

(declare-fun m!3201573 () Bool)

(assert (=> d!806482 m!3201573))

(assert (=> d!806482 m!3201343))

(declare-fun m!3201575 () Bool)

(assert (=> d!806482 m!3201575))

(assert (=> d!806482 m!3201345))

(declare-fun m!3201577 () Bool)

(assert (=> d!806482 m!3201577))

(assert (=> b!2775032 m!3201345))

(declare-fun m!3201579 () Bool)

(assert (=> b!2775032 m!3201579))

(declare-fun m!3201581 () Bool)

(assert (=> b!2775033 m!3201581))

(assert (=> b!2775033 m!3201343))

(declare-fun m!3201583 () Bool)

(assert (=> b!2775033 m!3201583))

(assert (=> b!2775033 m!3201345))

(declare-fun m!3201585 () Bool)

(assert (=> b!2775033 m!3201585))

(assert (=> b!2774891 d!806482))

(declare-fun d!806484 () Bool)

(declare-fun e!1750288 () Bool)

(assert (=> d!806484 e!1750288))

(declare-fun res!1159646 () Bool)

(assert (=> d!806484 (=> (not res!1159646) (not e!1750288))))

(declare-fun lt!989666 () tuple3!4904)

(assert (=> d!806484 (= res!1159646 (valid!2976 (_2!19071 lt!989666)))))

(assert (=> d!806484 (= lt!989666 (choose!16271 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))

(assert (=> d!806484 (= (++!7932 Nil!32072 lt!989496) (list!12096 input!5495))))

(assert (=> d!806484 (= (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489) lt!989666)))

(declare-fun b!2775035 () Bool)

(declare-fun res!1159647 () Bool)

(assert (=> b!2775035 (=> (not res!1159647) (not e!1750288))))

(assert (=> b!2775035 (= res!1159647 (valid!2977 (_3!2922 lt!989666)))))

(declare-fun b!2775036 () Bool)

(assert (=> b!2775036 (= e!1750288 (= (_1!19071 lt!989666) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(assert (= (and d!806484 res!1159646) b!2775035))

(assert (= (and b!2775035 res!1159647) b!2775036))

(declare-fun m!3201587 () Bool)

(assert (=> d!806484 m!3201587))

(declare-fun m!3201589 () Bool)

(assert (=> d!806484 m!3201589))

(assert (=> d!806484 m!3201357))

(assert (=> d!806484 m!3201349))

(declare-fun m!3201591 () Bool)

(assert (=> b!2775035 m!3201591))

(assert (=> b!2775036 m!3201351))

(assert (=> b!2774891 d!806484))

(declare-fun b!2775061 () Bool)

(declare-fun e!1750304 () Int)

(assert (=> b!2775061 (= e!1750304 0)))

(declare-fun b!2775063 () Bool)

(declare-fun e!1750306 () List!32172)

(assert (=> b!2775063 (= e!1750306 (list!12096 input!5495))))

(declare-fun b!2775064 () Bool)

(declare-fun e!1750301 () Int)

(assert (=> b!2775064 (= e!1750301 0)))

(declare-fun bm!181538 () Bool)

(declare-fun call!181546 () List!32172)

(assert (=> bm!181538 (= call!181546 (tail!4390 lt!989496))))

(declare-fun b!2775065 () Bool)

(declare-fun e!1750303 () Unit!46204)

(declare-fun Unit!46217 () Unit!46204)

(assert (=> b!2775065 (= e!1750303 Unit!46217)))

(declare-fun lt!989751 () List!32172)

(assert (=> b!2775065 (= lt!989751 (list!12096 input!5495))))

(declare-fun lt!989783 () List!32172)

(assert (=> b!2775065 (= lt!989783 (list!12096 input!5495))))

(declare-fun lt!989776 () Unit!46204)

(declare-fun call!181552 () Unit!46204)

(assert (=> b!2775065 (= lt!989776 call!181552)))

(declare-fun call!181547 () Bool)

(assert (=> b!2775065 call!181547))

(declare-fun lt!989761 () Unit!46204)

(assert (=> b!2775065 (= lt!989761 lt!989776)))

(declare-fun lt!989774 () List!32172)

(assert (=> b!2775065 (= lt!989774 (list!12096 input!5495))))

(declare-fun lt!989780 () Unit!46204)

(declare-fun call!181543 () Unit!46204)

(assert (=> b!2775065 (= lt!989780 call!181543)))

(assert (=> b!2775065 (= lt!989774 Nil!32072)))

(declare-fun lt!989784 () Unit!46204)

(assert (=> b!2775065 (= lt!989784 lt!989780)))

(assert (=> b!2775065 false))

(declare-fun b!2775066 () Bool)

(declare-fun e!1750302 () Int)

(declare-fun call!181545 () Int)

(assert (=> b!2775066 (= e!1750302 call!181545)))

(declare-fun bm!181539 () Bool)

(declare-fun call!181549 () List!32172)

(declare-fun call!181550 () C!16364)

(assert (=> bm!181539 (= call!181549 (++!7932 Nil!32072 (Cons!32072 call!181550 Nil!32072)))))

(declare-fun b!2775067 () Bool)

(declare-fun call!181551 () List!32172)

(assert (=> b!2775067 (= e!1750306 call!181551)))

(declare-fun b!2775068 () Bool)

(assert (=> b!2775068 (= e!1750304 0)))

(declare-fun b!2775069 () Bool)

(declare-fun c!450548 () Bool)

(declare-fun call!181544 () Bool)

(assert (=> b!2775069 (= c!450548 call!181544)))

(declare-fun lt!989753 () Unit!46204)

(declare-fun lt!989775 () Unit!46204)

(assert (=> b!2775069 (= lt!989753 lt!989775)))

(declare-fun lt!989782 () List!32172)

(assert (=> b!2775069 (= lt!989782 Nil!32072)))

(assert (=> b!2775069 (= lt!989775 call!181543)))

(assert (=> b!2775069 (= lt!989782 call!181551)))

(declare-fun lt!989766 () Unit!46204)

(declare-fun lt!989781 () Unit!46204)

(assert (=> b!2775069 (= lt!989766 lt!989781)))

(assert (=> b!2775069 call!181547))

(assert (=> b!2775069 (= lt!989781 call!181552)))

(declare-fun lt!989756 () List!32172)

(assert (=> b!2775069 (= lt!989756 call!181551)))

(declare-fun lt!989785 () List!32172)

(assert (=> b!2775069 (= lt!989785 call!181551)))

(declare-fun e!1750305 () Int)

(assert (=> b!2775069 (= e!1750305 e!1750304)))

(declare-fun bm!181540 () Bool)

(assert (=> bm!181540 (= call!181544 (nullableZipper!636 z!3597))))

(declare-fun bm!181541 () Bool)

(declare-fun c!450549 () Bool)

(declare-fun c!450550 () Bool)

(assert (=> bm!181541 (= c!450549 c!450550)))

(assert (=> bm!181541 (= call!181543 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450550 lt!989782 lt!989774) Nil!32072 e!1750306))))

(declare-fun bm!181542 () Bool)

(assert (=> bm!181542 (= call!181552 (lemmaIsPrefixRefl!1681 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783)))))

(declare-fun bm!181543 () Bool)

(assert (=> bm!181543 (= call!181547 (isPrefix!2557 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783)))))

(declare-fun lt!989752 () tuple2!32290)

(declare-fun bm!181544 () Bool)

(assert (=> bm!181544 (= call!181551 (list!12096 (ite c!450550 input!5495 (_2!19066 lt!989752))))))

(declare-fun b!2775070 () Bool)

(declare-fun lt!989792 () Int)

(assert (=> b!2775070 (= e!1750302 (ite (= lt!989792 0) 0 lt!989792))))

(assert (=> b!2775070 (= lt!989792 call!181545)))

(declare-fun d!806486 () Bool)

(declare-fun lt!989770 () Int)

(assert (=> d!806486 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 (list!12096 input!5495) lt!989489))) lt!989770)))

(assert (=> d!806486 (= lt!989770 e!1750301)))

(declare-fun c!450552 () Bool)

(assert (=> d!806486 (= c!450552 (lostCauseZipper!443 z!3597))))

(declare-fun lt!989791 () Unit!46204)

(declare-fun Unit!46218 () Unit!46204)

(assert (=> d!806486 (= lt!989791 Unit!46218)))

(assert (=> d!806486 (= (getSuffix!1239 (list!12096 input!5495) Nil!32072) lt!989496)))

(declare-fun lt!989759 () Unit!46204)

(declare-fun lt!989769 () Unit!46204)

(assert (=> d!806486 (= lt!989759 lt!989769)))

(declare-fun lt!989765 () List!32172)

(assert (=> d!806486 (= lt!989496 lt!989765)))

(assert (=> d!806486 (= lt!989769 (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989765 (list!12096 input!5495)))))

(assert (=> d!806486 (= lt!989765 (getSuffix!1239 (list!12096 input!5495) Nil!32072))))

(declare-fun lt!989755 () Unit!46204)

(declare-fun lt!989772 () Unit!46204)

(assert (=> d!806486 (= lt!989755 lt!989772)))

(assert (=> d!806486 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806486 (= lt!989772 (lemmaConcatTwoListThenFirstIsPrefix!1667 Nil!32072 lt!989496))))

(assert (=> d!806486 (= (++!7932 Nil!32072 lt!989496) (list!12096 input!5495))))

(assert (=> d!806486 (= (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489) lt!989770)))

(declare-fun b!2775062 () Bool)

(assert (=> b!2775062 (= e!1750301 e!1750305)))

(assert (=> b!2775062 (= c!450550 (= 0 lt!989489))))

(declare-fun bm!181545 () Bool)

(declare-fun call!181548 () (InoxSet Context!4642))

(assert (=> bm!181545 (= call!181545 (findLongestMatchInnerZipperFast!52 call!181548 call!181549 (+ 0 1) call!181546 input!5495 lt!989489))))

(declare-fun bm!181546 () Bool)

(assert (=> bm!181546 (= call!181548 (derivationStepZipper!369 z!3597 call!181550))))

(declare-fun b!2775071 () Bool)

(declare-fun Unit!46219 () Unit!46204)

(assert (=> b!2775071 (= e!1750303 Unit!46219)))

(declare-fun bm!181547 () Bool)

(assert (=> bm!181547 (= call!181550 (apply!7512 input!5495 0))))

(declare-fun b!2775072 () Bool)

(declare-fun c!450547 () Bool)

(assert (=> b!2775072 (= c!450547 call!181544)))

(declare-fun lt!989789 () Unit!46204)

(declare-fun lt!989771 () Unit!46204)

(assert (=> b!2775072 (= lt!989789 lt!989771)))

(declare-fun lt!989763 () C!16364)

(declare-fun lt!989760 () List!32172)

(declare-fun lt!989768 () List!32172)

(assert (=> b!2775072 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072)) lt!989760) lt!989768)))

(assert (=> b!2775072 (= lt!989771 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989763 lt!989760 lt!989768))))

(assert (=> b!2775072 (= lt!989768 (list!12096 input!5495))))

(assert (=> b!2775072 (= lt!989760 (tail!4390 lt!989496))))

(assert (=> b!2775072 (= lt!989763 (apply!7512 input!5495 0))))

(declare-fun lt!989758 () Unit!46204)

(declare-fun lt!989764 () Unit!46204)

(assert (=> b!2775072 (= lt!989758 lt!989764)))

(declare-fun lt!989778 () List!32172)

(assert (=> b!2775072 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)) lt!989778)))

(assert (=> b!2775072 (= lt!989764 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989778))))

(assert (=> b!2775072 (= lt!989778 (list!12096 input!5495))))

(declare-fun lt!989767 () Unit!46204)

(assert (=> b!2775072 (= lt!989767 e!1750303)))

(declare-fun c!450551 () Bool)

(assert (=> b!2775072 (= c!450551 (= (size!24869 Nil!32072) (size!24868 input!5495)))))

(declare-fun lt!989773 () Unit!46204)

(declare-fun lt!989777 () Unit!46204)

(assert (=> b!2775072 (= lt!989773 lt!989777)))

(declare-fun lt!989788 () List!32172)

(assert (=> b!2775072 (<= (size!24869 Nil!32072) (size!24869 lt!989788))))

(assert (=> b!2775072 (= lt!989777 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989788))))

(assert (=> b!2775072 (= lt!989788 (list!12096 input!5495))))

(declare-fun lt!989757 () Unit!46204)

(declare-fun lt!989787 () Unit!46204)

(assert (=> b!2775072 (= lt!989757 lt!989787)))

(declare-fun lt!989754 () List!32172)

(assert (=> b!2775072 (= (head!6152 (drop!1710 lt!989754 0)) (apply!7513 lt!989754 0))))

(assert (=> b!2775072 (= lt!989787 (lemmaDropApply!916 lt!989754 0))))

(assert (=> b!2775072 (= lt!989754 (list!12096 input!5495))))

(declare-fun lt!989762 () Unit!46204)

(declare-fun lt!989790 () Unit!46204)

(assert (=> b!2775072 (= lt!989762 lt!989790)))

(declare-fun lt!989786 () List!32172)

(declare-fun lt!989779 () List!32172)

(assert (=> b!2775072 (and (= lt!989786 Nil!32072) (= lt!989779 lt!989496))))

(assert (=> b!2775072 (= lt!989790 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989786 lt!989779 Nil!32072 lt!989496))))

(assert (=> b!2775072 (= lt!989779 call!181551)))

(assert (=> b!2775072 (= lt!989786 (list!12096 (_1!19066 lt!989752)))))

(assert (=> b!2775072 (= lt!989752 (splitAt!119 input!5495 0))))

(assert (=> b!2775072 (= e!1750305 e!1750302)))

(assert (= (and d!806486 c!450552) b!2775064))

(assert (= (and d!806486 (not c!450552)) b!2775062))

(assert (= (and b!2775062 c!450550) b!2775069))

(assert (= (and b!2775062 (not c!450550)) b!2775072))

(assert (= (and b!2775069 c!450548) b!2775061))

(assert (= (and b!2775069 (not c!450548)) b!2775068))

(assert (= (and b!2775072 c!450551) b!2775065))

(assert (= (and b!2775072 (not c!450551)) b!2775071))

(assert (= (and b!2775072 c!450547) b!2775070))

(assert (= (and b!2775072 (not c!450547)) b!2775066))

(assert (= (or b!2775070 b!2775066) bm!181547))

(assert (= (or b!2775070 b!2775066) bm!181538))

(assert (= (or b!2775070 b!2775066) bm!181539))

(assert (= (or b!2775070 b!2775066) bm!181546))

(assert (= (or b!2775070 b!2775066) bm!181545))

(assert (= (or b!2775069 b!2775072) bm!181544))

(assert (= (or b!2775069 b!2775072) bm!181540))

(assert (= (or b!2775069 b!2775065) bm!181542))

(assert (= (or b!2775069 b!2775065) bm!181543))

(assert (= (or b!2775069 b!2775065) bm!181541))

(assert (= (and bm!181541 c!450549) b!2775067))

(assert (= (and bm!181541 (not c!450549)) b!2775063))

(declare-fun m!3201593 () Bool)

(assert (=> bm!181542 m!3201593))

(declare-fun m!3201595 () Bool)

(assert (=> bm!181546 m!3201595))

(declare-fun m!3201597 () Bool)

(assert (=> b!2775072 m!3201597))

(declare-fun m!3201599 () Bool)

(assert (=> b!2775072 m!3201599))

(declare-fun m!3201601 () Bool)

(assert (=> b!2775072 m!3201601))

(assert (=> b!2775072 m!3201395))

(declare-fun m!3201603 () Bool)

(assert (=> b!2775072 m!3201603))

(declare-fun m!3201605 () Bool)

(assert (=> b!2775072 m!3201605))

(declare-fun m!3201607 () Bool)

(assert (=> b!2775072 m!3201607))

(assert (=> b!2775072 m!3201399))

(declare-fun m!3201609 () Bool)

(assert (=> b!2775072 m!3201609))

(assert (=> b!2775072 m!3201601))

(declare-fun m!3201611 () Bool)

(assert (=> b!2775072 m!3201611))

(declare-fun m!3201613 () Bool)

(assert (=> b!2775072 m!3201613))

(declare-fun m!3201615 () Bool)

(assert (=> b!2775072 m!3201615))

(declare-fun m!3201617 () Bool)

(assert (=> b!2775072 m!3201617))

(assert (=> b!2775072 m!3201349))

(assert (=> b!2775072 m!3201605))

(declare-fun m!3201619 () Bool)

(assert (=> b!2775072 m!3201619))

(declare-fun m!3201621 () Bool)

(assert (=> b!2775072 m!3201621))

(declare-fun m!3201623 () Bool)

(assert (=> b!2775072 m!3201623))

(declare-fun m!3201625 () Bool)

(assert (=> b!2775072 m!3201625))

(assert (=> b!2775072 m!3201623))

(declare-fun m!3201627 () Bool)

(assert (=> b!2775072 m!3201627))

(assert (=> b!2775072 m!3201355))

(assert (=> b!2775072 m!3201615))

(assert (=> b!2775072 m!3201423))

(assert (=> b!2775072 m!3201409))

(assert (=> bm!181538 m!3201395))

(declare-fun m!3201629 () Bool)

(assert (=> bm!181541 m!3201629))

(assert (=> b!2775063 m!3201349))

(declare-fun m!3201631 () Bool)

(assert (=> bm!181543 m!3201631))

(declare-fun m!3201633 () Bool)

(assert (=> bm!181539 m!3201633))

(declare-fun m!3201635 () Bool)

(assert (=> bm!181544 m!3201635))

(assert (=> bm!181547 m!3201423))

(assert (=> bm!181540 m!3201311))

(assert (=> d!806486 m!3201357))

(assert (=> d!806486 m!3201359))

(assert (=> d!806486 m!3201373))

(assert (=> d!806486 m!3201349))

(declare-fun m!3201637 () Bool)

(assert (=> d!806486 m!3201637))

(assert (=> d!806486 m!3201357))

(declare-fun m!3201639 () Bool)

(assert (=> d!806486 m!3201639))

(assert (=> d!806486 m!3201349))

(declare-fun m!3201641 () Bool)

(assert (=> d!806486 m!3201641))

(assert (=> d!806486 m!3201349))

(declare-fun m!3201643 () Bool)

(assert (=> d!806486 m!3201643))

(assert (=> d!806486 m!3201361))

(assert (=> d!806486 m!3201349))

(assert (=> b!2775065 m!3201349))

(declare-fun m!3201645 () Bool)

(assert (=> bm!181545 m!3201645))

(assert (=> b!2774891 d!806486))

(declare-fun d!806488 () Bool)

(assert (=> d!806488 (= (valid!2976 (_2!19071 lt!989506)) (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989506))))))

(declare-fun bs!505276 () Bool)

(assert (= bs!505276 d!806488))

(declare-fun m!3201647 () Bool)

(assert (=> bs!505276 m!3201647))

(assert (=> b!2774891 d!806488))

(declare-fun d!806490 () Bool)

(declare-fun lt!989795 () Int)

(assert (=> d!806490 (= lt!989795 (size!24869 (list!12096 input!5495)))))

(declare-fun size!24870 (Conc!9981) Int)

(assert (=> d!806490 (= lt!989795 (size!24870 (c!450499 input!5495)))))

(assert (=> d!806490 (= (size!24868 input!5495) lt!989795)))

(declare-fun bs!505277 () Bool)

(assert (= bs!505277 d!806490))

(assert (=> bs!505277 m!3201349))

(assert (=> bs!505277 m!3201349))

(declare-fun m!3201649 () Bool)

(assert (=> bs!505277 m!3201649))

(declare-fun m!3201651 () Bool)

(assert (=> bs!505277 m!3201651))

(assert (=> b!2774891 d!806490))

(declare-fun d!806492 () Bool)

(assert (=> d!806492 (= lt!989496 lt!989543)))

(declare-fun lt!989798 () Unit!46204)

(declare-fun choose!16273 (List!32172 List!32172 List!32172 List!32172 List!32172) Unit!46204)

(assert (=> d!806492 (= lt!989798 (choose!16273 Nil!32072 lt!989496 Nil!32072 lt!989543 lt!989496))))

(assert (=> d!806492 (isPrefix!2557 Nil!32072 lt!989496)))

(assert (=> d!806492 (= (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989543 lt!989496) lt!989798)))

(declare-fun bs!505278 () Bool)

(assert (= bs!505278 d!806492))

(declare-fun m!3201653 () Bool)

(assert (=> bs!505278 m!3201653))

(declare-fun m!3201655 () Bool)

(assert (=> bs!505278 m!3201655))

(assert (=> b!2774891 d!806492))

(declare-fun d!806494 () Bool)

(declare-fun lt!989801 () List!32172)

(assert (=> d!806494 (= (++!7932 Nil!32072 lt!989801) lt!989496)))

(declare-fun e!1750309 () List!32172)

(assert (=> d!806494 (= lt!989801 e!1750309)))

(declare-fun c!450555 () Bool)

(assert (=> d!806494 (= c!450555 ((_ is Cons!32072) Nil!32072))))

(assert (=> d!806494 (>= (size!24869 lt!989496) (size!24869 Nil!32072))))

(assert (=> d!806494 (= (getSuffix!1239 lt!989496 Nil!32072) lt!989801)))

(declare-fun b!2775077 () Bool)

(assert (=> b!2775077 (= e!1750309 (getSuffix!1239 (tail!4390 lt!989496) (t!228300 Nil!32072)))))

(declare-fun b!2775078 () Bool)

(assert (=> b!2775078 (= e!1750309 lt!989496)))

(assert (= (and d!806494 c!450555) b!2775077))

(assert (= (and d!806494 (not c!450555)) b!2775078))

(declare-fun m!3201657 () Bool)

(assert (=> d!806494 m!3201657))

(assert (=> d!806494 m!3201391))

(assert (=> d!806494 m!3201399))

(assert (=> b!2775077 m!3201395))

(assert (=> b!2775077 m!3201395))

(declare-fun m!3201659 () Bool)

(assert (=> b!2775077 m!3201659))

(assert (=> b!2774891 d!806494))

(declare-fun b!2775079 () Bool)

(declare-fun e!1750313 () Int)

(assert (=> b!2775079 (= e!1750313 1)))

(declare-fun b!2775081 () Bool)

(declare-fun e!1750315 () List!32172)

(assert (=> b!2775081 (= e!1750315 (list!12096 input!5495))))

(declare-fun b!2775082 () Bool)

(declare-fun e!1750310 () Int)

(assert (=> b!2775082 (= e!1750310 0)))

(declare-fun bm!181548 () Bool)

(declare-fun call!181556 () List!32172)

(assert (=> bm!181548 (= call!181556 (tail!4390 lt!989479))))

(declare-fun b!2775083 () Bool)

(declare-fun e!1750312 () Unit!46204)

(declare-fun Unit!46220 () Unit!46204)

(assert (=> b!2775083 (= e!1750312 Unit!46220)))

(declare-fun lt!989802 () List!32172)

(assert (=> b!2775083 (= lt!989802 (list!12096 input!5495))))

(declare-fun lt!989834 () List!32172)

(assert (=> b!2775083 (= lt!989834 (list!12096 input!5495))))

(declare-fun lt!989827 () Unit!46204)

(declare-fun call!181562 () Unit!46204)

(assert (=> b!2775083 (= lt!989827 call!181562)))

(declare-fun call!181557 () Bool)

(assert (=> b!2775083 call!181557))

(declare-fun lt!989812 () Unit!46204)

(assert (=> b!2775083 (= lt!989812 lt!989827)))

(declare-fun lt!989825 () List!32172)

(assert (=> b!2775083 (= lt!989825 (list!12096 input!5495))))

(declare-fun lt!989831 () Unit!46204)

(declare-fun call!181553 () Unit!46204)

(assert (=> b!2775083 (= lt!989831 call!181553)))

(assert (=> b!2775083 (= lt!989825 lt!989491)))

(declare-fun lt!989835 () Unit!46204)

(assert (=> b!2775083 (= lt!989835 lt!989831)))

(assert (=> b!2775083 false))

(declare-fun b!2775084 () Bool)

(declare-fun e!1750311 () Int)

(declare-fun call!181555 () Int)

(assert (=> b!2775084 (= e!1750311 call!181555)))

(declare-fun bm!181549 () Bool)

(declare-fun call!181559 () List!32172)

(declare-fun call!181560 () C!16364)

(assert (=> bm!181549 (= call!181559 (++!7932 lt!989491 (Cons!32072 call!181560 Nil!32072)))))

(declare-fun b!2775085 () Bool)

(declare-fun call!181561 () List!32172)

(assert (=> b!2775085 (= e!1750315 call!181561)))

(declare-fun b!2775086 () Bool)

(assert (=> b!2775086 (= e!1750313 0)))

(declare-fun b!2775087 () Bool)

(declare-fun c!450557 () Bool)

(declare-fun call!181554 () Bool)

(assert (=> b!2775087 (= c!450557 call!181554)))

(declare-fun lt!989804 () Unit!46204)

(declare-fun lt!989826 () Unit!46204)

(assert (=> b!2775087 (= lt!989804 lt!989826)))

(declare-fun lt!989833 () List!32172)

(assert (=> b!2775087 (= lt!989833 lt!989491)))

(assert (=> b!2775087 (= lt!989826 call!181553)))

(assert (=> b!2775087 (= lt!989833 call!181561)))

(declare-fun lt!989817 () Unit!46204)

(declare-fun lt!989832 () Unit!46204)

(assert (=> b!2775087 (= lt!989817 lt!989832)))

(assert (=> b!2775087 call!181557))

(assert (=> b!2775087 (= lt!989832 call!181562)))

(declare-fun lt!989807 () List!32172)

(assert (=> b!2775087 (= lt!989807 call!181561)))

(declare-fun lt!989836 () List!32172)

(assert (=> b!2775087 (= lt!989836 call!181561)))

(declare-fun e!1750314 () Int)

(assert (=> b!2775087 (= e!1750314 e!1750313)))

(declare-fun bm!181550 () Bool)

(assert (=> bm!181550 (= call!181554 (nullableZipper!636 call!181483))))

(declare-fun bm!181551 () Bool)

(declare-fun c!450558 () Bool)

(declare-fun c!450559 () Bool)

(assert (=> bm!181551 (= c!450558 c!450559)))

(assert (=> bm!181551 (= call!181553 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450559 lt!989833 lt!989825) lt!989491 e!1750315))))

(declare-fun bm!181552 () Bool)

(assert (=> bm!181552 (= call!181562 (lemmaIsPrefixRefl!1681 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834)))))

(declare-fun bm!181553 () Bool)

(assert (=> bm!181553 (= call!181557 (isPrefix!2557 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834)))))

(declare-fun lt!989803 () tuple2!32290)

(declare-fun bm!181554 () Bool)

(assert (=> bm!181554 (= call!181561 (list!12096 (ite c!450559 input!5495 (_2!19066 lt!989803))))))

(declare-fun b!2775088 () Bool)

(declare-fun lt!989843 () Int)

(assert (=> b!2775088 (= e!1750311 (ite (= lt!989843 0) 1 lt!989843))))

(assert (=> b!2775088 (= lt!989843 call!181555)))

(declare-fun lt!989821 () Int)

(declare-fun d!806496 () Bool)

(assert (=> d!806496 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 call!181483 lt!989491 1 lt!989479 (list!12096 input!5495) lt!989489))) lt!989821)))

(assert (=> d!806496 (= lt!989821 e!1750310)))

(declare-fun c!450561 () Bool)

(assert (=> d!806496 (= c!450561 (lostCauseZipper!443 call!181483))))

(declare-fun lt!989842 () Unit!46204)

(declare-fun Unit!46221 () Unit!46204)

(assert (=> d!806496 (= lt!989842 Unit!46221)))

(assert (=> d!806496 (= (getSuffix!1239 (list!12096 input!5495) lt!989491) lt!989479)))

(declare-fun lt!989810 () Unit!46204)

(declare-fun lt!989820 () Unit!46204)

(assert (=> d!806496 (= lt!989810 lt!989820)))

(declare-fun lt!989816 () List!32172)

(assert (=> d!806496 (= lt!989479 lt!989816)))

(assert (=> d!806496 (= lt!989820 (lemmaSamePrefixThenSameSuffix!1141 lt!989491 lt!989479 lt!989491 lt!989816 (list!12096 input!5495)))))

(assert (=> d!806496 (= lt!989816 (getSuffix!1239 (list!12096 input!5495) lt!989491))))

(declare-fun lt!989806 () Unit!46204)

(declare-fun lt!989823 () Unit!46204)

(assert (=> d!806496 (= lt!989806 lt!989823)))

(assert (=> d!806496 (isPrefix!2557 lt!989491 (++!7932 lt!989491 lt!989479))))

(assert (=> d!806496 (= lt!989823 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989491 lt!989479))))

(assert (=> d!806496 (= (++!7932 lt!989491 lt!989479) (list!12096 input!5495))))

(assert (=> d!806496 (= (findLongestMatchInnerZipperFast!52 call!181483 lt!989491 1 lt!989479 input!5495 lt!989489) lt!989821)))

(declare-fun b!2775080 () Bool)

(assert (=> b!2775080 (= e!1750310 e!1750314)))

(assert (=> b!2775080 (= c!450559 (= 1 lt!989489))))

(declare-fun bm!181555 () Bool)

(declare-fun call!181558 () (InoxSet Context!4642))

(assert (=> bm!181555 (= call!181555 (findLongestMatchInnerZipperFast!52 call!181558 call!181559 (+ 1 1) call!181556 input!5495 lt!989489))))

(declare-fun bm!181556 () Bool)

(assert (=> bm!181556 (= call!181558 (derivationStepZipper!369 call!181483 call!181560))))

(declare-fun b!2775089 () Bool)

(declare-fun Unit!46222 () Unit!46204)

(assert (=> b!2775089 (= e!1750312 Unit!46222)))

(declare-fun bm!181557 () Bool)

(assert (=> bm!181557 (= call!181560 (apply!7512 input!5495 1))))

(declare-fun b!2775090 () Bool)

(declare-fun c!450556 () Bool)

(assert (=> b!2775090 (= c!450556 call!181554)))

(declare-fun lt!989840 () Unit!46204)

(declare-fun lt!989822 () Unit!46204)

(assert (=> b!2775090 (= lt!989840 lt!989822)))

(declare-fun lt!989811 () List!32172)

(declare-fun lt!989814 () C!16364)

(declare-fun lt!989819 () List!32172)

(assert (=> b!2775090 (= (++!7932 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072)) lt!989811) lt!989819)))

(assert (=> b!2775090 (= lt!989822 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989491 lt!989814 lt!989811 lt!989819))))

(assert (=> b!2775090 (= lt!989819 (list!12096 input!5495))))

(assert (=> b!2775090 (= lt!989811 (tail!4390 lt!989479))))

(assert (=> b!2775090 (= lt!989814 (apply!7512 input!5495 1))))

(declare-fun lt!989809 () Unit!46204)

(declare-fun lt!989815 () Unit!46204)

(assert (=> b!2775090 (= lt!989809 lt!989815)))

(declare-fun lt!989829 () List!32172)

(assert (=> b!2775090 (isPrefix!2557 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)) lt!989829)))

(assert (=> b!2775090 (= lt!989815 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989491 lt!989829))))

(assert (=> b!2775090 (= lt!989829 (list!12096 input!5495))))

(declare-fun lt!989818 () Unit!46204)

(assert (=> b!2775090 (= lt!989818 e!1750312)))

(declare-fun c!450560 () Bool)

(assert (=> b!2775090 (= c!450560 (= (size!24869 lt!989491) (size!24868 input!5495)))))

(declare-fun lt!989824 () Unit!46204)

(declare-fun lt!989828 () Unit!46204)

(assert (=> b!2775090 (= lt!989824 lt!989828)))

(declare-fun lt!989839 () List!32172)

(assert (=> b!2775090 (<= (size!24869 lt!989491) (size!24869 lt!989839))))

(assert (=> b!2775090 (= lt!989828 (lemmaIsPrefixThenSmallerEqSize!264 lt!989491 lt!989839))))

(assert (=> b!2775090 (= lt!989839 (list!12096 input!5495))))

(declare-fun lt!989808 () Unit!46204)

(declare-fun lt!989838 () Unit!46204)

(assert (=> b!2775090 (= lt!989808 lt!989838)))

(declare-fun lt!989805 () List!32172)

(assert (=> b!2775090 (= (head!6152 (drop!1710 lt!989805 1)) (apply!7513 lt!989805 1))))

(assert (=> b!2775090 (= lt!989838 (lemmaDropApply!916 lt!989805 1))))

(assert (=> b!2775090 (= lt!989805 (list!12096 input!5495))))

(declare-fun lt!989813 () Unit!46204)

(declare-fun lt!989841 () Unit!46204)

(assert (=> b!2775090 (= lt!989813 lt!989841)))

(declare-fun lt!989830 () List!32172)

(declare-fun lt!989837 () List!32172)

(assert (=> b!2775090 (and (= lt!989837 lt!989491) (= lt!989830 lt!989479))))

(assert (=> b!2775090 (= lt!989841 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989837 lt!989830 lt!989491 lt!989479))))

(assert (=> b!2775090 (= lt!989830 call!181561)))

(assert (=> b!2775090 (= lt!989837 (list!12096 (_1!19066 lt!989803)))))

(assert (=> b!2775090 (= lt!989803 (splitAt!119 input!5495 1))))

(assert (=> b!2775090 (= e!1750314 e!1750311)))

(assert (= (and d!806496 c!450561) b!2775082))

(assert (= (and d!806496 (not c!450561)) b!2775080))

(assert (= (and b!2775080 c!450559) b!2775087))

(assert (= (and b!2775080 (not c!450559)) b!2775090))

(assert (= (and b!2775087 c!450557) b!2775079))

(assert (= (and b!2775087 (not c!450557)) b!2775086))

(assert (= (and b!2775090 c!450560) b!2775083))

(assert (= (and b!2775090 (not c!450560)) b!2775089))

(assert (= (and b!2775090 c!450556) b!2775088))

(assert (= (and b!2775090 (not c!450556)) b!2775084))

(assert (= (or b!2775088 b!2775084) bm!181557))

(assert (= (or b!2775088 b!2775084) bm!181548))

(assert (= (or b!2775088 b!2775084) bm!181549))

(assert (= (or b!2775088 b!2775084) bm!181556))

(assert (= (or b!2775088 b!2775084) bm!181555))

(assert (= (or b!2775087 b!2775090) bm!181554))

(assert (= (or b!2775087 b!2775090) bm!181550))

(assert (= (or b!2775087 b!2775083) bm!181552))

(assert (= (or b!2775087 b!2775083) bm!181553))

(assert (= (or b!2775087 b!2775083) bm!181551))

(assert (= (and bm!181551 c!450558) b!2775085))

(assert (= (and bm!181551 (not c!450558)) b!2775081))

(declare-fun m!3201661 () Bool)

(assert (=> bm!181552 m!3201661))

(declare-fun m!3201663 () Bool)

(assert (=> bm!181556 m!3201663))

(declare-fun m!3201665 () Bool)

(assert (=> b!2775090 m!3201665))

(declare-fun m!3201667 () Bool)

(assert (=> b!2775090 m!3201667))

(declare-fun m!3201669 () Bool)

(assert (=> b!2775090 m!3201669))

(declare-fun m!3201671 () Bool)

(assert (=> b!2775090 m!3201671))

(declare-fun m!3201673 () Bool)

(assert (=> b!2775090 m!3201673))

(declare-fun m!3201675 () Bool)

(assert (=> b!2775090 m!3201675))

(declare-fun m!3201677 () Bool)

(assert (=> b!2775090 m!3201677))

(declare-fun m!3201679 () Bool)

(assert (=> b!2775090 m!3201679))

(declare-fun m!3201681 () Bool)

(assert (=> b!2775090 m!3201681))

(assert (=> b!2775090 m!3201669))

(declare-fun m!3201683 () Bool)

(assert (=> b!2775090 m!3201683))

(declare-fun m!3201685 () Bool)

(assert (=> b!2775090 m!3201685))

(declare-fun m!3201687 () Bool)

(assert (=> b!2775090 m!3201687))

(declare-fun m!3201689 () Bool)

(assert (=> b!2775090 m!3201689))

(assert (=> b!2775090 m!3201349))

(assert (=> b!2775090 m!3201675))

(declare-fun m!3201691 () Bool)

(assert (=> b!2775090 m!3201691))

(declare-fun m!3201693 () Bool)

(assert (=> b!2775090 m!3201693))

(declare-fun m!3201695 () Bool)

(assert (=> b!2775090 m!3201695))

(declare-fun m!3201697 () Bool)

(assert (=> b!2775090 m!3201697))

(assert (=> b!2775090 m!3201695))

(declare-fun m!3201699 () Bool)

(assert (=> b!2775090 m!3201699))

(assert (=> b!2775090 m!3201355))

(assert (=> b!2775090 m!3201687))

(declare-fun m!3201701 () Bool)

(assert (=> b!2775090 m!3201701))

(declare-fun m!3201703 () Bool)

(assert (=> b!2775090 m!3201703))

(assert (=> bm!181548 m!3201671))

(declare-fun m!3201705 () Bool)

(assert (=> bm!181551 m!3201705))

(assert (=> b!2775081 m!3201349))

(declare-fun m!3201707 () Bool)

(assert (=> bm!181553 m!3201707))

(declare-fun m!3201709 () Bool)

(assert (=> bm!181549 m!3201709))

(declare-fun m!3201711 () Bool)

(assert (=> bm!181554 m!3201711))

(assert (=> bm!181557 m!3201701))

(declare-fun m!3201713 () Bool)

(assert (=> bm!181550 m!3201713))

(assert (=> d!806496 m!3201415))

(declare-fun m!3201715 () Bool)

(assert (=> d!806496 m!3201715))

(declare-fun m!3201717 () Bool)

(assert (=> d!806496 m!3201717))

(assert (=> d!806496 m!3201349))

(declare-fun m!3201719 () Bool)

(assert (=> d!806496 m!3201719))

(assert (=> d!806496 m!3201415))

(declare-fun m!3201721 () Bool)

(assert (=> d!806496 m!3201721))

(assert (=> d!806496 m!3201349))

(declare-fun m!3201723 () Bool)

(assert (=> d!806496 m!3201723))

(assert (=> d!806496 m!3201349))

(declare-fun m!3201725 () Bool)

(assert (=> d!806496 m!3201725))

(declare-fun m!3201727 () Bool)

(assert (=> d!806496 m!3201727))

(assert (=> d!806496 m!3201349))

(assert (=> b!2775083 m!3201349))

(declare-fun m!3201729 () Bool)

(assert (=> bm!181555 m!3201729))

(assert (=> bm!181473 d!806496))

(declare-fun d!806498 () Bool)

(assert (=> d!806498 (isPrefix!2557 lt!989496 lt!989496)))

(declare-fun lt!989846 () Unit!46204)

(declare-fun choose!16274 (List!32172 List!32172) Unit!46204)

(assert (=> d!806498 (= lt!989846 (choose!16274 lt!989496 lt!989496))))

(assert (=> d!806498 (= (lemmaIsPrefixRefl!1681 lt!989496 lt!989496) lt!989846)))

(declare-fun bs!505279 () Bool)

(assert (= bs!505279 d!806498))

(assert (=> bs!505279 m!3201381))

(declare-fun m!3201731 () Bool)

(assert (=> bs!505279 m!3201731))

(assert (=> bm!181472 d!806498))

(declare-fun d!806500 () Bool)

(declare-fun e!1750316 () Bool)

(assert (=> d!806500 e!1750316))

(declare-fun res!1159648 () Bool)

(assert (=> d!806500 (=> (not res!1159648) (not e!1750316))))

(declare-fun lt!989847 () tuple3!4904)

(assert (=> d!806500 (= res!1159648 (valid!2976 (_2!19071 lt!989847)))))

(assert (=> d!806500 (= lt!989847 (choose!16271 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))

(assert (=> d!806500 (= (++!7932 lt!989488 lt!989532) (list!12096 input!5495))))

(assert (=> d!806500 (= (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489) lt!989847)))

(declare-fun b!2775091 () Bool)

(declare-fun res!1159649 () Bool)

(assert (=> b!2775091 (=> (not res!1159649) (not e!1750316))))

(assert (=> b!2775091 (= res!1159649 (valid!2977 (_3!2922 lt!989847)))))

(declare-fun b!2775092 () Bool)

(assert (=> b!2775092 (= e!1750316 (= (_1!19071 lt!989847) (findLongestMatchInnerZipperFast!52 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489)))))

(assert (= (and d!806500 res!1159648) b!2775091))

(assert (= (and b!2775091 res!1159649) b!2775092))

(declare-fun m!3201733 () Bool)

(assert (=> d!806500 m!3201733))

(declare-fun m!3201735 () Bool)

(assert (=> d!806500 m!3201735))

(assert (=> d!806500 m!3201437))

(assert (=> d!806500 m!3201349))

(declare-fun m!3201737 () Bool)

(assert (=> b!2775091 m!3201737))

(assert (=> b!2775092 m!3201327))

(assert (=> bm!181481 d!806500))

(declare-fun d!806502 () Bool)

(declare-fun e!1750317 () Bool)

(assert (=> d!806502 e!1750317))

(declare-fun res!1159650 () Bool)

(assert (=> d!806502 (=> (not res!1159650) (not e!1750317))))

(declare-fun lt!989848 () List!32172)

(assert (=> d!806502 (= res!1159650 (= (content!4508 lt!989848) ((_ map or) (content!4508 lt!989499) (content!4508 lt!989504))))))

(declare-fun e!1750318 () List!32172)

(assert (=> d!806502 (= lt!989848 e!1750318)))

(declare-fun c!450562 () Bool)

(assert (=> d!806502 (= c!450562 ((_ is Nil!32072) lt!989499))))

(assert (=> d!806502 (= (++!7932 lt!989499 lt!989504) lt!989848)))

(declare-fun b!2775096 () Bool)

(assert (=> b!2775096 (= e!1750317 (or (not (= lt!989504 Nil!32072)) (= lt!989848 lt!989499)))))

(declare-fun b!2775094 () Bool)

(assert (=> b!2775094 (= e!1750318 (Cons!32072 (h!37492 lt!989499) (++!7932 (t!228300 lt!989499) lt!989504)))))

(declare-fun b!2775093 () Bool)

(assert (=> b!2775093 (= e!1750318 lt!989504)))

(declare-fun b!2775095 () Bool)

(declare-fun res!1159651 () Bool)

(assert (=> b!2775095 (=> (not res!1159651) (not e!1750317))))

(assert (=> b!2775095 (= res!1159651 (= (size!24869 lt!989848) (+ (size!24869 lt!989499) (size!24869 lt!989504))))))

(assert (= (and d!806502 c!450562) b!2775093))

(assert (= (and d!806502 (not c!450562)) b!2775094))

(assert (= (and d!806502 res!1159650) b!2775095))

(assert (= (and b!2775095 res!1159651) b!2775096))

(declare-fun m!3201739 () Bool)

(assert (=> d!806502 m!3201739))

(declare-fun m!3201741 () Bool)

(assert (=> d!806502 m!3201741))

(declare-fun m!3201743 () Bool)

(assert (=> d!806502 m!3201743))

(declare-fun m!3201745 () Bool)

(assert (=> b!2775094 m!3201745))

(declare-fun m!3201747 () Bool)

(assert (=> b!2775095 m!3201747))

(declare-fun m!3201749 () Bool)

(assert (=> b!2775095 m!3201749))

(declare-fun m!3201751 () Bool)

(assert (=> b!2775095 m!3201751))

(assert (=> b!2774894 d!806502))

(declare-fun d!806504 () Bool)

(assert (=> d!806504 (= (head!6152 lt!989543) (h!37492 lt!989543))))

(assert (=> b!2774894 d!806504))

(declare-fun d!806506 () Bool)

(assert (=> d!806506 (<= (size!24869 Nil!32072) (size!24869 lt!989496))))

(declare-fun lt!989851 () Unit!46204)

(declare-fun choose!16275 (List!32172 List!32172) Unit!46204)

(assert (=> d!806506 (= lt!989851 (choose!16275 Nil!32072 lt!989496))))

(assert (=> d!806506 (isPrefix!2557 Nil!32072 lt!989496)))

(assert (=> d!806506 (= (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989496) lt!989851)))

(declare-fun bs!505280 () Bool)

(assert (= bs!505280 d!806506))

(assert (=> bs!505280 m!3201399))

(assert (=> bs!505280 m!3201391))

(declare-fun m!3201753 () Bool)

(assert (=> bs!505280 m!3201753))

(assert (=> bs!505280 m!3201655))

(assert (=> b!2774894 d!806506))

(declare-fun d!806508 () Bool)

(declare-fun lt!989854 () Int)

(assert (=> d!806508 (>= lt!989854 0)))

(declare-fun e!1750321 () Int)

(assert (=> d!806508 (= lt!989854 e!1750321)))

(declare-fun c!450565 () Bool)

(assert (=> d!806508 (= c!450565 ((_ is Nil!32072) lt!989496))))

(assert (=> d!806508 (= (size!24869 lt!989496) lt!989854)))

(declare-fun b!2775101 () Bool)

(assert (=> b!2775101 (= e!1750321 0)))

(declare-fun b!2775102 () Bool)

(assert (=> b!2775102 (= e!1750321 (+ 1 (size!24869 (t!228300 lt!989496))))))

(assert (= (and d!806508 c!450565) b!2775101))

(assert (= (and d!806508 (not c!450565)) b!2775102))

(declare-fun m!3201755 () Bool)

(assert (=> b!2775102 m!3201755))

(assert (=> b!2774894 d!806508))

(declare-fun d!806510 () Bool)

(assert (=> d!806510 (= (tail!4390 lt!989496) (t!228300 lt!989496))))

(assert (=> b!2774894 d!806510))

(declare-fun d!806512 () Bool)

(assert (=> d!806512 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)) lt!989496)))

(declare-fun lt!989857 () Unit!46204)

(declare-fun choose!16276 (List!32172 List!32172) Unit!46204)

(assert (=> d!806512 (= lt!989857 (choose!16276 Nil!32072 lt!989496))))

(assert (=> d!806512 (isPrefix!2557 Nil!32072 lt!989496)))

(assert (=> d!806512 (= (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989496) lt!989857)))

(declare-fun bs!505281 () Bool)

(assert (= bs!505281 d!806512))

(declare-fun m!3201757 () Bool)

(assert (=> bs!505281 m!3201757))

(assert (=> bs!505281 m!3201535))

(assert (=> bs!505281 m!3201353))

(assert (=> bs!505281 m!3201539))

(assert (=> bs!505281 m!3201655))

(assert (=> bs!505281 m!3201353))

(assert (=> bs!505281 m!3201535))

(assert (=> bs!505281 m!3201537))

(assert (=> b!2774894 d!806512))

(declare-fun d!806514 () Bool)

(declare-fun lt!989858 () Int)

(assert (=> d!806514 (>= lt!989858 0)))

(declare-fun e!1750322 () Int)

(assert (=> d!806514 (= lt!989858 e!1750322)))

(declare-fun c!450566 () Bool)

(assert (=> d!806514 (= c!450566 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806514 (= (size!24869 Nil!32072) lt!989858)))

(declare-fun b!2775103 () Bool)

(assert (=> b!2775103 (= e!1750322 0)))

(declare-fun b!2775104 () Bool)

(assert (=> b!2775104 (= e!1750322 (+ 1 (size!24869 (t!228300 Nil!32072))))))

(assert (= (and d!806514 c!450566) b!2775103))

(assert (= (and d!806514 (not c!450566)) b!2775104))

(declare-fun m!3201759 () Bool)

(assert (=> b!2775104 m!3201759))

(assert (=> b!2774894 d!806514))

(declare-fun d!806516 () Bool)

(declare-fun e!1750323 () Bool)

(assert (=> d!806516 e!1750323))

(declare-fun res!1159652 () Bool)

(assert (=> d!806516 (=> (not res!1159652) (not e!1750323))))

(declare-fun lt!989859 () List!32172)

(assert (=> d!806516 (= res!1159652 (= (content!4508 lt!989859) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(declare-fun e!1750324 () List!32172)

(assert (=> d!806516 (= lt!989859 e!1750324)))

(declare-fun c!450567 () Bool)

(assert (=> d!806516 (= c!450567 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806516 (= (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!989859)))

(declare-fun b!2775108 () Bool)

(assert (=> b!2775108 (= e!1750323 (or (not (= (Cons!32072 (head!6152 lt!989543) Nil!32072) Nil!32072)) (= lt!989859 Nil!32072)))))

(declare-fun b!2775106 () Bool)

(assert (=> b!2775106 (= e!1750324 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 (head!6152 lt!989543) Nil!32072))))))

(declare-fun b!2775105 () Bool)

(assert (=> b!2775105 (= e!1750324 (Cons!32072 (head!6152 lt!989543) Nil!32072))))

(declare-fun b!2775107 () Bool)

(declare-fun res!1159653 () Bool)

(assert (=> b!2775107 (=> (not res!1159653) (not e!1750323))))

(assert (=> b!2775107 (= res!1159653 (= (size!24869 lt!989859) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(assert (= (and d!806516 c!450567) b!2775105))

(assert (= (and d!806516 (not c!450567)) b!2775106))

(assert (= (and d!806516 res!1159652) b!2775107))

(assert (= (and b!2775107 res!1159653) b!2775108))

(declare-fun m!3201761 () Bool)

(assert (=> d!806516 m!3201761))

(assert (=> d!806516 m!3201467))

(declare-fun m!3201763 () Bool)

(assert (=> d!806516 m!3201763))

(declare-fun m!3201765 () Bool)

(assert (=> b!2775106 m!3201765))

(declare-fun m!3201767 () Bool)

(assert (=> b!2775107 m!3201767))

(assert (=> b!2775107 m!3201399))

(declare-fun m!3201769 () Bool)

(assert (=> b!2775107 m!3201769))

(assert (=> b!2774894 d!806516))

(declare-fun d!806518 () Bool)

(assert (=> d!806518 (= (head!6152 lt!989496) (h!37492 lt!989496))))

(assert (=> b!2774894 d!806518))

(declare-fun d!806520 () Bool)

(declare-fun e!1750325 () Bool)

(assert (=> d!806520 e!1750325))

(declare-fun res!1159654 () Bool)

(assert (=> d!806520 (=> (not res!1159654) (not e!1750325))))

(declare-fun lt!989860 () List!32172)

(assert (=> d!806520 (= res!1159654 (= (content!4508 lt!989860) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989475 Nil!32072)))))))

(declare-fun e!1750326 () List!32172)

(assert (=> d!806520 (= lt!989860 e!1750326)))

(declare-fun c!450568 () Bool)

(assert (=> d!806520 (= c!450568 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806520 (= (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)) lt!989860)))

(declare-fun b!2775112 () Bool)

(assert (=> b!2775112 (= e!1750325 (or (not (= (Cons!32072 lt!989475 Nil!32072) Nil!32072)) (= lt!989860 Nil!32072)))))

(declare-fun b!2775110 () Bool)

(assert (=> b!2775110 (= e!1750326 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989475 Nil!32072))))))

(declare-fun b!2775109 () Bool)

(assert (=> b!2775109 (= e!1750326 (Cons!32072 lt!989475 Nil!32072))))

(declare-fun b!2775111 () Bool)

(declare-fun res!1159655 () Bool)

(assert (=> b!2775111 (=> (not res!1159655) (not e!1750325))))

(assert (=> b!2775111 (= res!1159655 (= (size!24869 lt!989860) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989475 Nil!32072)))))))

(assert (= (and d!806520 c!450568) b!2775109))

(assert (= (and d!806520 (not c!450568)) b!2775110))

(assert (= (and d!806520 res!1159654) b!2775111))

(assert (= (and b!2775111 res!1159655) b!2775112))

(declare-fun m!3201771 () Bool)

(assert (=> d!806520 m!3201771))

(assert (=> d!806520 m!3201467))

(declare-fun m!3201773 () Bool)

(assert (=> d!806520 m!3201773))

(declare-fun m!3201775 () Bool)

(assert (=> b!2775110 m!3201775))

(declare-fun m!3201777 () Bool)

(assert (=> b!2775111 m!3201777))

(assert (=> b!2775111 m!3201399))

(declare-fun m!3201779 () Bool)

(assert (=> b!2775111 m!3201779))

(assert (=> b!2774894 d!806520))

(declare-fun d!806522 () Bool)

(assert (=> d!806522 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)) lt!989504) lt!989496)))

(declare-fun lt!989863 () Unit!46204)

(declare-fun choose!16277 (List!32172 C!16364 List!32172 List!32172) Unit!46204)

(assert (=> d!806522 (= lt!989863 (choose!16277 Nil!32072 lt!989475 lt!989504 lt!989496))))

(assert (=> d!806522 (= (++!7932 Nil!32072 (Cons!32072 lt!989475 lt!989504)) lt!989496)))

(assert (=> d!806522 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989475 lt!989504 lt!989496) lt!989863)))

(declare-fun bs!505282 () Bool)

(assert (= bs!505282 d!806522))

(assert (=> bs!505282 m!3201445))

(assert (=> bs!505282 m!3201445))

(declare-fun m!3201781 () Bool)

(assert (=> bs!505282 m!3201781))

(declare-fun m!3201783 () Bool)

(assert (=> bs!505282 m!3201783))

(declare-fun m!3201785 () Bool)

(assert (=> bs!505282 m!3201785))

(assert (=> b!2774894 d!806522))

(declare-fun b!2775114 () Bool)

(declare-fun res!1159657 () Bool)

(declare-fun e!1750329 () Bool)

(assert (=> b!2775114 (=> (not res!1159657) (not e!1750329))))

(assert (=> b!2775114 (= res!1159657 (= (head!6152 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) (head!6152 lt!989496)))))

(declare-fun b!2775113 () Bool)

(declare-fun e!1750328 () Bool)

(assert (=> b!2775113 (= e!1750328 e!1750329)))

(declare-fun res!1159658 () Bool)

(assert (=> b!2775113 (=> (not res!1159658) (not e!1750329))))

(assert (=> b!2775113 (= res!1159658 (not ((_ is Nil!32072) lt!989496)))))

(declare-fun d!806524 () Bool)

(declare-fun e!1750327 () Bool)

(assert (=> d!806524 e!1750327))

(declare-fun res!1159659 () Bool)

(assert (=> d!806524 (=> res!1159659 e!1750327)))

(declare-fun lt!989864 () Bool)

(assert (=> d!806524 (= res!1159659 (not lt!989864))))

(assert (=> d!806524 (= lt!989864 e!1750328)))

(declare-fun res!1159656 () Bool)

(assert (=> d!806524 (=> res!1159656 e!1750328)))

(assert (=> d!806524 (= res!1159656 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))

(assert (=> d!806524 (= (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!989496) lt!989864)))

(declare-fun b!2775115 () Bool)

(assert (=> b!2775115 (= e!1750329 (isPrefix!2557 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) (tail!4390 lt!989496)))))

(declare-fun b!2775116 () Bool)

(assert (=> b!2775116 (= e!1750327 (>= (size!24869 lt!989496) (size!24869 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(assert (= (and d!806524 (not res!1159656)) b!2775113))

(assert (= (and b!2775113 res!1159658) b!2775114))

(assert (= (and b!2775114 res!1159657) b!2775115))

(assert (= (and d!806524 (not res!1159659)) b!2775116))

(assert (=> b!2775114 m!3201397))

(declare-fun m!3201787 () Bool)

(assert (=> b!2775114 m!3201787))

(assert (=> b!2775114 m!3201449))

(assert (=> b!2775115 m!3201397))

(declare-fun m!3201789 () Bool)

(assert (=> b!2775115 m!3201789))

(assert (=> b!2775115 m!3201395))

(assert (=> b!2775115 m!3201789))

(assert (=> b!2775115 m!3201395))

(declare-fun m!3201791 () Bool)

(assert (=> b!2775115 m!3201791))

(assert (=> b!2775116 m!3201391))

(assert (=> b!2775116 m!3201397))

(declare-fun m!3201793 () Bool)

(assert (=> b!2775116 m!3201793))

(assert (=> b!2774894 d!806524))

(declare-fun d!806526 () Bool)

(assert (=> d!806526 (= (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) (bvsge (size!24866 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2774935 d!806526))

(declare-fun d!806528 () Bool)

(assert (=> d!806528 (= (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) (bvsge (size!24865 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2774935 d!806528))

(declare-fun d!806530 () Bool)

(declare-fun validCacheMapDown!400 (MutableMap!3720) Bool)

(assert (=> d!806530 (= (valid!2977 cacheDown!939) (validCacheMapDown!400 (cache!3863 cacheDown!939)))))

(declare-fun bs!505283 () Bool)

(assert (= bs!505283 d!806530))

(declare-fun m!3201795 () Bool)

(assert (=> bs!505283 m!3201795))

(assert (=> b!2774892 d!806530))

(assert (=> bm!181484 d!806498))

(declare-fun d!806532 () Bool)

(assert (=> d!806532 (= lt!989496 Nil!32072)))

(declare-fun lt!989867 () Unit!46204)

(declare-fun choose!16278 (List!32172 List!32172 List!32172) Unit!46204)

(assert (=> d!806532 (= lt!989867 (choose!16278 lt!989496 Nil!32072 lt!989496))))

(assert (=> d!806532 (isPrefix!2557 lt!989496 lt!989496)))

(assert (=> d!806532 (= (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 Nil!32072 lt!989496) lt!989867)))

(declare-fun bs!505284 () Bool)

(assert (= bs!505284 d!806532))

(declare-fun m!3201797 () Bool)

(assert (=> bs!505284 m!3201797))

(assert (=> bs!505284 m!3201381))

(assert (=> bm!181467 d!806532))

(declare-fun d!806534 () Bool)

(declare-fun c!450571 () Bool)

(assert (=> d!806534 (= c!450571 ((_ is Node!9981) (c!450499 input!5495)))))

(declare-fun e!1750334 () Bool)

(assert (=> d!806534 (= (inv!43563 (c!450499 input!5495)) e!1750334)))

(declare-fun b!2775123 () Bool)

(declare-fun inv!43565 (Conc!9981) Bool)

(assert (=> b!2775123 (= e!1750334 (inv!43565 (c!450499 input!5495)))))

(declare-fun b!2775124 () Bool)

(declare-fun e!1750335 () Bool)

(assert (=> b!2775124 (= e!1750334 e!1750335)))

(declare-fun res!1159662 () Bool)

(assert (=> b!2775124 (= res!1159662 (not ((_ is Leaf!15201) (c!450499 input!5495))))))

(assert (=> b!2775124 (=> res!1159662 e!1750335)))

(declare-fun b!2775125 () Bool)

(declare-fun inv!43566 (Conc!9981) Bool)

(assert (=> b!2775125 (= e!1750335 (inv!43566 (c!450499 input!5495)))))

(assert (= (and d!806534 c!450571) b!2775123))

(assert (= (and d!806534 (not c!450571)) b!2775124))

(assert (= (and b!2775124 (not res!1159662)) b!2775125))

(declare-fun m!3201799 () Bool)

(assert (=> b!2775123 m!3201799))

(declare-fun m!3201801 () Bool)

(assert (=> b!2775125 m!3201801))

(assert (=> b!2774920 d!806534))

(declare-fun d!806536 () Bool)

(assert (=> d!806536 (= (valid!2977 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542))) (validCacheMapDown!400 (cache!3863 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542)))))))

(declare-fun bs!505285 () Bool)

(assert (= bs!505285 d!806536))

(declare-fun m!3201803 () Bool)

(assert (=> bs!505285 m!3201803))

(assert (=> bm!181468 d!806536))

(assert (=> bm!181485 d!806498))

(declare-fun b!2775126 () Bool)

(declare-fun e!1750343 () Unit!46204)

(declare-fun Unit!46223 () Unit!46204)

(assert (=> b!2775126 (= e!1750343 Unit!46223)))

(declare-fun lt!989888 () Unit!46204)

(declare-fun call!181568 () Unit!46204)

(assert (=> b!2775126 (= lt!989888 call!181568)))

(declare-fun call!181564 () Bool)

(assert (=> b!2775126 call!181564))

(declare-fun lt!989884 () Unit!46204)

(assert (=> b!2775126 (= lt!989884 lt!989888)))

(declare-fun lt!989893 () Unit!46204)

(declare-fun call!181567 () Unit!46204)

(assert (=> b!2775126 (= lt!989893 call!181567)))

(assert (=> b!2775126 (= lt!989496 lt!989499)))

(declare-fun lt!989877 () Unit!46204)

(assert (=> b!2775126 (= lt!989877 lt!989893)))

(assert (=> b!2775126 false))

(declare-fun d!806538 () Bool)

(declare-fun e!1750341 () Bool)

(assert (=> d!806538 e!1750341))

(declare-fun res!1159664 () Bool)

(assert (=> d!806538 (=> (not res!1159664) (not e!1750341))))

(declare-fun lt!989892 () tuple2!32288)

(assert (=> d!806538 (= res!1159664 (= (++!7932 (_1!19065 lt!989892) (_2!19065 lt!989892)) lt!989496))))

(declare-fun e!1750337 () tuple2!32288)

(assert (=> d!806538 (= lt!989892 e!1750337)))

(declare-fun c!450576 () Bool)

(assert (=> d!806538 (= c!450576 (lostCauseZipper!443 call!181484))))

(declare-fun lt!989880 () Unit!46204)

(declare-fun Unit!46224 () Unit!46204)

(assert (=> d!806538 (= lt!989880 Unit!46224)))

(assert (=> d!806538 (= (getSuffix!1239 lt!989496 lt!989499) lt!989504)))

(declare-fun lt!989879 () Unit!46204)

(declare-fun lt!989882 () Unit!46204)

(assert (=> d!806538 (= lt!989879 lt!989882)))

(declare-fun lt!989875 () List!32172)

(assert (=> d!806538 (= lt!989504 lt!989875)))

(assert (=> d!806538 (= lt!989882 (lemmaSamePrefixThenSameSuffix!1141 lt!989499 lt!989504 lt!989499 lt!989875 lt!989496))))

(assert (=> d!806538 (= lt!989875 (getSuffix!1239 lt!989496 lt!989499))))

(declare-fun lt!989876 () Unit!46204)

(declare-fun lt!989881 () Unit!46204)

(assert (=> d!806538 (= lt!989876 lt!989881)))

(assert (=> d!806538 (isPrefix!2557 lt!989499 (++!7932 lt!989499 lt!989504))))

(assert (=> d!806538 (= lt!989881 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989499 lt!989504))))

(assert (=> d!806538 (= (++!7932 lt!989499 lt!989504) lt!989496)))

(assert (=> d!806538 (= (findLongestMatchInnerZipper!27 call!181484 lt!989499 1 lt!989504 lt!989496 lt!989489) lt!989892)))

(declare-fun bm!181558 () Bool)

(declare-fun call!181569 () C!16364)

(assert (=> bm!181558 (= call!181569 (head!6152 lt!989504))))

(declare-fun b!2775127 () Bool)

(declare-fun e!1750338 () tuple2!32288)

(declare-fun call!181563 () tuple2!32288)

(assert (=> b!2775127 (= e!1750338 call!181563)))

(declare-fun b!2775128 () Bool)

(declare-fun e!1750339 () Bool)

(assert (=> b!2775128 (= e!1750339 (>= (size!24869 (_1!19065 lt!989892)) (size!24869 lt!989499)))))

(declare-fun b!2775129 () Bool)

(declare-fun c!450573 () Bool)

(declare-fun call!181565 () Bool)

(assert (=> b!2775129 (= c!450573 call!181565)))

(declare-fun lt!989885 () Unit!46204)

(declare-fun lt!989891 () Unit!46204)

(assert (=> b!2775129 (= lt!989885 lt!989891)))

(assert (=> b!2775129 (= lt!989496 lt!989499)))

(assert (=> b!2775129 (= lt!989891 call!181567)))

(declare-fun lt!989871 () Unit!46204)

(declare-fun lt!989878 () Unit!46204)

(assert (=> b!2775129 (= lt!989871 lt!989878)))

(assert (=> b!2775129 call!181564))

(assert (=> b!2775129 (= lt!989878 call!181568)))

(declare-fun e!1750336 () tuple2!32288)

(declare-fun e!1750342 () tuple2!32288)

(assert (=> b!2775129 (= e!1750336 e!1750342)))

(declare-fun b!2775130 () Bool)

(assert (=> b!2775130 (= e!1750342 (tuple2!32289 lt!989499 Nil!32072))))

(declare-fun b!2775131 () Bool)

(assert (=> b!2775131 (= e!1750337 e!1750336)))

(declare-fun c!450574 () Bool)

(assert (=> b!2775131 (= c!450574 (= 1 lt!989489))))

(declare-fun b!2775132 () Bool)

(assert (=> b!2775132 (= e!1750341 e!1750339)))

(declare-fun res!1159663 () Bool)

(assert (=> b!2775132 (=> res!1159663 e!1750339)))

(assert (=> b!2775132 (= res!1159663 (isEmpty!18097 (_1!19065 lt!989892)))))

(declare-fun b!2775133 () Bool)

(declare-fun e!1750340 () tuple2!32288)

(assert (=> b!2775133 (= e!1750340 (tuple2!32289 lt!989499 lt!989504))))

(declare-fun b!2775134 () Bool)

(declare-fun Unit!46225 () Unit!46204)

(assert (=> b!2775134 (= e!1750343 Unit!46225)))

(declare-fun bm!181559 () Bool)

(assert (=> bm!181559 (= call!181565 (nullableZipper!636 call!181484))))

(declare-fun b!2775135 () Bool)

(declare-fun c!450575 () Bool)

(assert (=> b!2775135 (= c!450575 call!181565)))

(declare-fun lt!989883 () Unit!46204)

(declare-fun lt!989886 () Unit!46204)

(assert (=> b!2775135 (= lt!989883 lt!989886)))

(declare-fun lt!989872 () List!32172)

(declare-fun lt!989870 () C!16364)

(assert (=> b!2775135 (= (++!7932 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072)) lt!989872) lt!989496)))

(assert (=> b!2775135 (= lt!989886 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989499 lt!989870 lt!989872 lt!989496))))

(assert (=> b!2775135 (= lt!989872 (tail!4390 lt!989504))))

(assert (=> b!2775135 (= lt!989870 (head!6152 lt!989504))))

(declare-fun lt!989889 () Unit!46204)

(declare-fun lt!989869 () Unit!46204)

(assert (=> b!2775135 (= lt!989889 lt!989869)))

(assert (=> b!2775135 (isPrefix!2557 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)) lt!989496)))

(assert (=> b!2775135 (= lt!989869 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989499 lt!989496))))

(declare-fun lt!989890 () List!32172)

(assert (=> b!2775135 (= lt!989890 (++!7932 lt!989499 (Cons!32072 (head!6152 lt!989504) Nil!32072)))))

(declare-fun lt!989873 () Unit!46204)

(assert (=> b!2775135 (= lt!989873 e!1750343)))

(declare-fun c!450572 () Bool)

(assert (=> b!2775135 (= c!450572 (= (size!24869 lt!989499) (size!24869 lt!989496)))))

(declare-fun lt!989874 () Unit!46204)

(declare-fun lt!989887 () Unit!46204)

(assert (=> b!2775135 (= lt!989874 lt!989887)))

(assert (=> b!2775135 (<= (size!24869 lt!989499) (size!24869 lt!989496))))

(assert (=> b!2775135 (= lt!989887 (lemmaIsPrefixThenSmallerEqSize!264 lt!989499 lt!989496))))

(assert (=> b!2775135 (= e!1750336 e!1750338)))

(declare-fun bm!181560 () Bool)

(declare-fun call!181570 () (InoxSet Context!4642))

(assert (=> bm!181560 (= call!181570 (derivationStepZipper!369 call!181484 call!181569))))

(declare-fun b!2775136 () Bool)

(assert (=> b!2775136 (= e!1750342 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181561 () Bool)

(assert (=> bm!181561 (= call!181568 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun b!2775137 () Bool)

(declare-fun lt!989868 () tuple2!32288)

(assert (=> b!2775137 (= e!1750340 lt!989868)))

(declare-fun b!2775138 () Bool)

(assert (=> b!2775138 (= e!1750337 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181562 () Bool)

(declare-fun call!181566 () List!32172)

(assert (=> bm!181562 (= call!181563 (findLongestMatchInnerZipper!27 call!181570 lt!989890 (+ 1 1) call!181566 lt!989496 lt!989489))))

(declare-fun bm!181563 () Bool)

(assert (=> bm!181563 (= call!181567 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 lt!989499 lt!989496))))

(declare-fun b!2775139 () Bool)

(assert (=> b!2775139 (= e!1750338 e!1750340)))

(assert (=> b!2775139 (= lt!989868 call!181563)))

(declare-fun c!450577 () Bool)

(assert (=> b!2775139 (= c!450577 (isEmpty!18097 (_1!19065 lt!989868)))))

(declare-fun bm!181564 () Bool)

(assert (=> bm!181564 (= call!181566 (tail!4390 lt!989504))))

(declare-fun bm!181565 () Bool)

(assert (=> bm!181565 (= call!181564 (isPrefix!2557 lt!989496 lt!989496))))

(assert (= (and d!806538 c!450576) b!2775138))

(assert (= (and d!806538 (not c!450576)) b!2775131))

(assert (= (and b!2775131 c!450574) b!2775129))

(assert (= (and b!2775131 (not c!450574)) b!2775135))

(assert (= (and b!2775129 c!450573) b!2775130))

(assert (= (and b!2775129 (not c!450573)) b!2775136))

(assert (= (and b!2775135 c!450572) b!2775126))

(assert (= (and b!2775135 (not c!450572)) b!2775134))

(assert (= (and b!2775135 c!450575) b!2775139))

(assert (= (and b!2775135 (not c!450575)) b!2775127))

(assert (= (and b!2775139 c!450577) b!2775133))

(assert (= (and b!2775139 (not c!450577)) b!2775137))

(assert (= (or b!2775139 b!2775127) bm!181564))

(assert (= (or b!2775139 b!2775127) bm!181558))

(assert (= (or b!2775139 b!2775127) bm!181560))

(assert (= (or b!2775139 b!2775127) bm!181562))

(assert (= (or b!2775129 b!2775135) bm!181559))

(assert (= (or b!2775129 b!2775126) bm!181561))

(assert (= (or b!2775129 b!2775126) bm!181563))

(assert (= (or b!2775129 b!2775126) bm!181565))

(assert (= (and d!806538 res!1159664) b!2775132))

(assert (= (and b!2775132 (not res!1159663)) b!2775128))

(declare-fun m!3201805 () Bool)

(assert (=> b!2775135 m!3201805))

(declare-fun m!3201807 () Bool)

(assert (=> b!2775135 m!3201807))

(assert (=> b!2775135 m!3201749))

(declare-fun m!3201809 () Bool)

(assert (=> b!2775135 m!3201809))

(declare-fun m!3201811 () Bool)

(assert (=> b!2775135 m!3201811))

(declare-fun m!3201813 () Bool)

(assert (=> b!2775135 m!3201813))

(declare-fun m!3201815 () Bool)

(assert (=> b!2775135 m!3201815))

(declare-fun m!3201817 () Bool)

(assert (=> b!2775135 m!3201817))

(declare-fun m!3201819 () Bool)

(assert (=> b!2775135 m!3201819))

(assert (=> b!2775135 m!3201815))

(declare-fun m!3201821 () Bool)

(assert (=> b!2775135 m!3201821))

(assert (=> b!2775135 m!3201819))

(declare-fun m!3201823 () Bool)

(assert (=> b!2775135 m!3201823))

(assert (=> b!2775135 m!3201811))

(declare-fun m!3201825 () Bool)

(assert (=> b!2775135 m!3201825))

(assert (=> b!2775135 m!3201391))

(declare-fun m!3201827 () Bool)

(assert (=> b!2775135 m!3201827))

(declare-fun m!3201829 () Bool)

(assert (=> b!2775139 m!3201829))

(assert (=> bm!181561 m!3201335))

(assert (=> bm!181565 m!3201381))

(assert (=> d!806538 m!3201447))

(declare-fun m!3201831 () Bool)

(assert (=> d!806538 m!3201831))

(declare-fun m!3201833 () Bool)

(assert (=> d!806538 m!3201833))

(assert (=> d!806538 m!3201447))

(assert (=> d!806538 m!3201819))

(declare-fun m!3201835 () Bool)

(assert (=> d!806538 m!3201835))

(declare-fun m!3201837 () Bool)

(assert (=> d!806538 m!3201837))

(declare-fun m!3201839 () Bool)

(assert (=> d!806538 m!3201839))

(declare-fun m!3201841 () Bool)

(assert (=> bm!181563 m!3201841))

(declare-fun m!3201843 () Bool)

(assert (=> b!2775128 m!3201843))

(assert (=> b!2775128 m!3201749))

(declare-fun m!3201845 () Bool)

(assert (=> bm!181562 m!3201845))

(declare-fun m!3201847 () Bool)

(assert (=> bm!181559 m!3201847))

(declare-fun m!3201849 () Bool)

(assert (=> bm!181560 m!3201849))

(declare-fun m!3201851 () Bool)

(assert (=> b!2775132 m!3201851))

(assert (=> bm!181564 m!3201817))

(assert (=> bm!181558 m!3201809))

(assert (=> bm!181474 d!806538))

(declare-fun d!806540 () Bool)

(assert (=> d!806540 (= (isEmpty!18097 (_1!19065 lt!989500)) ((_ is Nil!32072) (_1!19065 lt!989500)))))

(assert (=> b!2774937 d!806540))

(declare-fun d!806542 () Bool)

(declare-fun e!1750346 () Bool)

(assert (=> d!806542 e!1750346))

(declare-fun res!1159669 () Bool)

(assert (=> d!806542 (=> (not res!1159669) (not e!1750346))))

(declare-fun lt!989896 () tuple3!4908)

(assert (=> d!806542 (= res!1159669 (= (_1!19073 lt!989896) (derivationStepZipper!369 z!3597 lt!989486)))))

(declare-fun choose!16279 ((InoxSet Context!4642) C!16364 CacheUp!2424 CacheDown!2546) tuple3!4908)

(assert (=> d!806542 (= lt!989896 (choose!16279 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))

(assert (=> d!806542 (= (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)) lt!989896)))

(declare-fun b!2775144 () Bool)

(declare-fun res!1159670 () Bool)

(assert (=> b!2775144 (=> (not res!1159670) (not e!1750346))))

(assert (=> b!2775144 (= res!1159670 (valid!2976 (_2!19073 lt!989896)))))

(declare-fun b!2775145 () Bool)

(assert (=> b!2775145 (= e!1750346 (valid!2977 (_3!2924 lt!989896)))))

(assert (= (and d!806542 res!1159669) b!2775144))

(assert (= (and b!2775144 res!1159670) b!2775145))

(declare-fun m!3201853 () Bool)

(assert (=> d!806542 m!3201853))

(declare-fun m!3201855 () Bool)

(assert (=> d!806542 m!3201855))

(declare-fun m!3201857 () Bool)

(assert (=> b!2775144 m!3201857))

(declare-fun m!3201859 () Bool)

(assert (=> b!2775145 m!3201859))

(assert (=> bm!181475 d!806542))

(declare-fun bs!505286 () Bool)

(declare-fun d!806544 () Bool)

(assert (= bs!505286 (and d!806544 d!806468)))

(declare-fun lambda!101814 () Int)

(assert (=> bs!505286 (not (= lambda!101814 lambda!101809))))

(declare-fun bs!505287 () Bool)

(assert (= bs!505287 (and d!806544 b!2774981)))

(assert (=> bs!505287 (not (= lambda!101814 lambda!101810))))

(declare-fun bs!505288 () Bool)

(assert (= bs!505288 (and d!806544 b!2774982)))

(assert (=> bs!505288 (not (= lambda!101814 lambda!101811))))

(declare-fun exists!977 ((InoxSet Context!4642) Int) Bool)

(assert (=> d!806544 (= (nullableZipper!636 z!3597) (exists!977 z!3597 lambda!101814))))

(declare-fun bs!505289 () Bool)

(assert (= bs!505289 d!806544))

(declare-fun m!3201861 () Bool)

(assert (=> bs!505289 m!3201861))

(assert (=> bm!181482 d!806544))

(declare-fun d!806546 () Bool)

(assert (=> d!806546 (and (= lt!989516 Nil!32072) (= lt!989528 lt!989496))))

(declare-fun lt!989899 () Unit!46204)

(declare-fun choose!16280 (List!32172 List!32172 List!32172 List!32172) Unit!46204)

(assert (=> d!806546 (= lt!989899 (choose!16280 lt!989516 lt!989528 Nil!32072 lt!989496))))

(assert (=> d!806546 (= (++!7932 lt!989516 lt!989528) (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806546 (= (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989516 lt!989528 Nil!32072 lt!989496) lt!989899)))

(declare-fun bs!505290 () Bool)

(assert (= bs!505290 d!806546))

(declare-fun m!3201863 () Bool)

(assert (=> bs!505290 m!3201863))

(declare-fun m!3201865 () Bool)

(assert (=> bs!505290 m!3201865))

(assert (=> bs!505290 m!3201357))

(assert (=> b!2774939 d!806546))

(declare-fun d!806548 () Bool)

(declare-fun e!1750347 () Bool)

(assert (=> d!806548 e!1750347))

(declare-fun res!1159671 () Bool)

(assert (=> d!806548 (=> (not res!1159671) (not e!1750347))))

(declare-fun lt!989900 () List!32172)

(assert (=> d!806548 (= res!1159671 (= (content!4508 lt!989900) ((_ map or) (content!4508 lt!989488) (content!4508 lt!989532))))))

(declare-fun e!1750348 () List!32172)

(assert (=> d!806548 (= lt!989900 e!1750348)))

(declare-fun c!450580 () Bool)

(assert (=> d!806548 (= c!450580 ((_ is Nil!32072) lt!989488))))

(assert (=> d!806548 (= (++!7932 lt!989488 lt!989532) lt!989900)))

(declare-fun b!2775149 () Bool)

(assert (=> b!2775149 (= e!1750347 (or (not (= lt!989532 Nil!32072)) (= lt!989900 lt!989488)))))

(declare-fun b!2775147 () Bool)

(assert (=> b!2775147 (= e!1750348 (Cons!32072 (h!37492 lt!989488) (++!7932 (t!228300 lt!989488) lt!989532)))))

(declare-fun b!2775146 () Bool)

(assert (=> b!2775146 (= e!1750348 lt!989532)))

(declare-fun b!2775148 () Bool)

(declare-fun res!1159672 () Bool)

(assert (=> b!2775148 (=> (not res!1159672) (not e!1750347))))

(assert (=> b!2775148 (= res!1159672 (= (size!24869 lt!989900) (+ (size!24869 lt!989488) (size!24869 lt!989532))))))

(assert (= (and d!806548 c!450580) b!2775146))

(assert (= (and d!806548 (not c!450580)) b!2775147))

(assert (= (and d!806548 res!1159671) b!2775148))

(assert (= (and b!2775148 res!1159672) b!2775149))

(declare-fun m!3201867 () Bool)

(assert (=> d!806548 m!3201867))

(declare-fun m!3201869 () Bool)

(assert (=> d!806548 m!3201869))

(declare-fun m!3201871 () Bool)

(assert (=> d!806548 m!3201871))

(declare-fun m!3201873 () Bool)

(assert (=> b!2775147 m!3201873))

(declare-fun m!3201875 () Bool)

(assert (=> b!2775148 m!3201875))

(declare-fun m!3201877 () Bool)

(assert (=> b!2775148 m!3201877))

(declare-fun m!3201879 () Bool)

(assert (=> b!2775148 m!3201879))

(assert (=> b!2774939 d!806548))

(declare-fun d!806550 () Bool)

(assert (=> d!806550 (= (head!6152 (drop!1710 lt!989496 0)) (apply!7513 lt!989496 0))))

(declare-fun lt!989903 () Unit!46204)

(declare-fun choose!16281 (List!32172 Int) Unit!46204)

(assert (=> d!806550 (= lt!989903 (choose!16281 lt!989496 0))))

(declare-fun e!1750351 () Bool)

(assert (=> d!806550 e!1750351))

(declare-fun res!1159675 () Bool)

(assert (=> d!806550 (=> (not res!1159675) (not e!1750351))))

(assert (=> d!806550 (= res!1159675 (>= 0 0))))

(assert (=> d!806550 (= (lemmaDropApply!916 lt!989496 0) lt!989903)))

(declare-fun b!2775152 () Bool)

(assert (=> b!2775152 (= e!1750351 (< 0 (size!24869 lt!989496)))))

(assert (= (and d!806550 res!1159675) b!2775152))

(assert (=> d!806550 m!3201389))

(assert (=> d!806550 m!3201389))

(assert (=> d!806550 m!3201393))

(assert (=> d!806550 m!3201405))

(declare-fun m!3201881 () Bool)

(assert (=> d!806550 m!3201881))

(assert (=> b!2775152 m!3201391))

(assert (=> b!2774939 d!806550))

(assert (=> b!2774939 d!806504))

(declare-fun d!806552 () Bool)

(assert (=> d!806552 (= (list!12096 (_2!19066 lt!989513)) (list!12097 (c!450499 (_2!19066 lt!989513))))))

(declare-fun bs!505291 () Bool)

(assert (= bs!505291 d!806552))

(declare-fun m!3201883 () Bool)

(assert (=> bs!505291 m!3201883))

(assert (=> b!2774939 d!806552))

(declare-fun b!2775171 () Bool)

(declare-fun e!1750365 () Int)

(declare-fun e!1750366 () Int)

(assert (=> b!2775171 (= e!1750365 e!1750366)))

(declare-fun c!450592 () Bool)

(declare-fun call!181573 () Int)

(assert (=> b!2775171 (= c!450592 (>= 0 call!181573))))

(declare-fun b!2775172 () Bool)

(assert (=> b!2775172 (= e!1750366 0)))

(declare-fun d!806554 () Bool)

(declare-fun e!1750362 () Bool)

(assert (=> d!806554 e!1750362))

(declare-fun res!1159678 () Bool)

(assert (=> d!806554 (=> (not res!1159678) (not e!1750362))))

(declare-fun lt!989906 () List!32172)

(assert (=> d!806554 (= res!1159678 (= ((_ map implies) (content!4508 lt!989906) (content!4508 lt!989496)) ((as const (InoxSet C!16364)) true)))))

(declare-fun e!1750364 () List!32172)

(assert (=> d!806554 (= lt!989906 e!1750364)))

(declare-fun c!450590 () Bool)

(assert (=> d!806554 (= c!450590 ((_ is Nil!32072) lt!989496))))

(assert (=> d!806554 (= (drop!1710 lt!989496 0) lt!989906)))

(declare-fun b!2775173 () Bool)

(declare-fun e!1750363 () List!32172)

(assert (=> b!2775173 (= e!1750363 lt!989496)))

(declare-fun b!2775174 () Bool)

(assert (=> b!2775174 (= e!1750362 (= (size!24869 lt!989906) e!1750365))))

(declare-fun c!450589 () Bool)

(assert (=> b!2775174 (= c!450589 (<= 0 0))))

(declare-fun b!2775175 () Bool)

(assert (=> b!2775175 (= e!1750364 e!1750363)))

(declare-fun c!450591 () Bool)

(assert (=> b!2775175 (= c!450591 (<= 0 0))))

(declare-fun b!2775176 () Bool)

(assert (=> b!2775176 (= e!1750364 Nil!32072)))

(declare-fun bm!181568 () Bool)

(assert (=> bm!181568 (= call!181573 (size!24869 lt!989496))))

(declare-fun b!2775177 () Bool)

(assert (=> b!2775177 (= e!1750363 (drop!1710 (t!228300 lt!989496) (- 0 1)))))

(declare-fun b!2775178 () Bool)

(assert (=> b!2775178 (= e!1750366 (- call!181573 0))))

(declare-fun b!2775179 () Bool)

(assert (=> b!2775179 (= e!1750365 call!181573)))

(assert (= (and d!806554 c!450590) b!2775176))

(assert (= (and d!806554 (not c!450590)) b!2775175))

(assert (= (and b!2775175 c!450591) b!2775173))

(assert (= (and b!2775175 (not c!450591)) b!2775177))

(assert (= (and d!806554 res!1159678) b!2775174))

(assert (= (and b!2775174 c!450589) b!2775179))

(assert (= (and b!2775174 (not c!450589)) b!2775171))

(assert (= (and b!2775171 c!450592) b!2775172))

(assert (= (and b!2775171 (not c!450592)) b!2775178))

(assert (= (or b!2775179 b!2775171 b!2775178) bm!181568))

(declare-fun m!3201885 () Bool)

(assert (=> d!806554 m!3201885))

(assert (=> d!806554 m!3201469))

(declare-fun m!3201887 () Bool)

(assert (=> b!2775174 m!3201887))

(assert (=> bm!181568 m!3201391))

(declare-fun m!3201889 () Bool)

(assert (=> b!2775177 m!3201889))

(assert (=> b!2774939 d!806554))

(assert (=> b!2774939 d!806506))

(assert (=> b!2774939 d!806510))

(assert (=> b!2774939 d!806512))

(assert (=> b!2774939 d!806524))

(declare-fun d!806556 () Bool)

(assert (=> d!806556 (= (head!6152 (drop!1710 lt!989496 0)) (h!37492 (drop!1710 lt!989496 0)))))

(assert (=> b!2774939 d!806556))

(declare-fun d!806558 () Bool)

(declare-fun e!1750367 () Bool)

(assert (=> d!806558 e!1750367))

(declare-fun res!1159680 () Bool)

(assert (=> d!806558 (=> (not res!1159680) (not e!1750367))))

(declare-fun lt!989907 () tuple2!32290)

(assert (=> d!806558 (= res!1159680 (isBalanced!3044 (c!450499 (_1!19066 lt!989907))))))

(declare-fun lt!989908 () tuple2!32298)

(assert (=> d!806558 (= lt!989907 (tuple2!32291 (BalanceConc!19577 (_1!19074 lt!989908)) (BalanceConc!19577 (_2!19074 lt!989908))))))

(assert (=> d!806558 (= lt!989908 (splitAt!120 (c!450499 input!5495) 0))))

(assert (=> d!806558 (isBalanced!3044 (c!450499 input!5495))))

(assert (=> d!806558 (= (splitAt!119 input!5495 0) lt!989907)))

(declare-fun b!2775180 () Bool)

(declare-fun res!1159679 () Bool)

(assert (=> b!2775180 (=> (not res!1159679) (not e!1750367))))

(assert (=> b!2775180 (= res!1159679 (isBalanced!3044 (c!450499 (_2!19066 lt!989907))))))

(declare-fun b!2775181 () Bool)

(assert (=> b!2775181 (= e!1750367 (= (tuple2!32289 (list!12096 (_1!19066 lt!989907)) (list!12096 (_2!19066 lt!989907))) (splitAtIndex!52 (list!12096 input!5495) 0)))))

(assert (= (and d!806558 res!1159680) b!2775180))

(assert (= (and b!2775180 res!1159679) b!2775181))

(declare-fun m!3201891 () Bool)

(assert (=> d!806558 m!3201891))

(declare-fun m!3201893 () Bool)

(assert (=> d!806558 m!3201893))

(assert (=> d!806558 m!3201563))

(declare-fun m!3201895 () Bool)

(assert (=> b!2775180 m!3201895))

(declare-fun m!3201897 () Bool)

(assert (=> b!2775181 m!3201897))

(declare-fun m!3201899 () Bool)

(assert (=> b!2775181 m!3201899))

(assert (=> b!2775181 m!3201349))

(assert (=> b!2775181 m!3201349))

(declare-fun m!3201901 () Bool)

(assert (=> b!2775181 m!3201901))

(assert (=> b!2774939 d!806558))

(declare-fun d!806560 () Bool)

(declare-fun lt!989911 () C!16364)

(declare-fun contains!5996 (List!32172 C!16364) Bool)

(assert (=> d!806560 (contains!5996 lt!989496 lt!989911)))

(declare-fun e!1750373 () C!16364)

(assert (=> d!806560 (= lt!989911 e!1750373)))

(declare-fun c!450595 () Bool)

(assert (=> d!806560 (= c!450595 (= 0 0))))

(declare-fun e!1750372 () Bool)

(assert (=> d!806560 e!1750372))

(declare-fun res!1159683 () Bool)

(assert (=> d!806560 (=> (not res!1159683) (not e!1750372))))

(assert (=> d!806560 (= res!1159683 (<= 0 0))))

(assert (=> d!806560 (= (apply!7513 lt!989496 0) lt!989911)))

(declare-fun b!2775188 () Bool)

(assert (=> b!2775188 (= e!1750372 (< 0 (size!24869 lt!989496)))))

(declare-fun b!2775189 () Bool)

(assert (=> b!2775189 (= e!1750373 (head!6152 lt!989496))))

(declare-fun b!2775190 () Bool)

(assert (=> b!2775190 (= e!1750373 (apply!7513 (tail!4390 lt!989496) (- 0 1)))))

(assert (= (and d!806560 res!1159683) b!2775188))

(assert (= (and d!806560 c!450595) b!2775189))

(assert (= (and d!806560 (not c!450595)) b!2775190))

(declare-fun m!3201903 () Bool)

(assert (=> d!806560 m!3201903))

(assert (=> b!2775188 m!3201391))

(assert (=> b!2775189 m!3201449))

(assert (=> b!2775190 m!3201395))

(assert (=> b!2775190 m!3201395))

(declare-fun m!3201905 () Bool)

(assert (=> b!2775190 m!3201905))

(assert (=> b!2774939 d!806560))

(declare-fun d!806562 () Bool)

(assert (=> d!806562 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)) lt!989532) lt!989496)))

(declare-fun lt!989912 () Unit!46204)

(assert (=> d!806562 (= lt!989912 (choose!16277 Nil!32072 lt!989486 lt!989532 lt!989496))))

(assert (=> d!806562 (= (++!7932 Nil!32072 (Cons!32072 lt!989486 lt!989532)) lt!989496)))

(assert (=> d!806562 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989486 lt!989532 lt!989496) lt!989912)))

(declare-fun bs!505292 () Bool)

(assert (= bs!505292 d!806562))

(assert (=> bs!505292 m!3201431))

(assert (=> bs!505292 m!3201431))

(declare-fun m!3201907 () Bool)

(assert (=> bs!505292 m!3201907))

(declare-fun m!3201909 () Bool)

(assert (=> bs!505292 m!3201909))

(declare-fun m!3201911 () Bool)

(assert (=> bs!505292 m!3201911))

(assert (=> b!2774939 d!806562))

(assert (=> b!2774939 d!806516))

(assert (=> b!2774939 d!806508))

(declare-fun d!806564 () Bool)

(declare-fun lt!989915 () C!16364)

(assert (=> d!806564 (= lt!989915 (apply!7513 (list!12096 input!5495) 0))))

(declare-fun apply!7514 (Conc!9981 Int) C!16364)

(assert (=> d!806564 (= lt!989915 (apply!7514 (c!450499 input!5495) 0))))

(declare-fun e!1750376 () Bool)

(assert (=> d!806564 e!1750376))

(declare-fun res!1159686 () Bool)

(assert (=> d!806564 (=> (not res!1159686) (not e!1750376))))

(assert (=> d!806564 (= res!1159686 (<= 0 0))))

(assert (=> d!806564 (= (apply!7512 input!5495 0) lt!989915)))

(declare-fun b!2775193 () Bool)

(assert (=> b!2775193 (= e!1750376 (< 0 (size!24868 input!5495)))))

(assert (= (and d!806564 res!1159686) b!2775193))

(assert (=> d!806564 m!3201349))

(assert (=> d!806564 m!3201349))

(declare-fun m!3201913 () Bool)

(assert (=> d!806564 m!3201913))

(declare-fun m!3201915 () Bool)

(assert (=> d!806564 m!3201915))

(assert (=> b!2775193 m!3201355))

(assert (=> b!2774939 d!806564))

(declare-fun d!806566 () Bool)

(declare-fun e!1750377 () Bool)

(assert (=> d!806566 e!1750377))

(declare-fun res!1159687 () Bool)

(assert (=> d!806566 (=> (not res!1159687) (not e!1750377))))

(declare-fun lt!989916 () List!32172)

(assert (=> d!806566 (= res!1159687 (= (content!4508 lt!989916) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989486 Nil!32072)))))))

(declare-fun e!1750378 () List!32172)

(assert (=> d!806566 (= lt!989916 e!1750378)))

(declare-fun c!450596 () Bool)

(assert (=> d!806566 (= c!450596 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806566 (= (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)) lt!989916)))

(declare-fun b!2775197 () Bool)

(assert (=> b!2775197 (= e!1750377 (or (not (= (Cons!32072 lt!989486 Nil!32072) Nil!32072)) (= lt!989916 Nil!32072)))))

(declare-fun b!2775195 () Bool)

(assert (=> b!2775195 (= e!1750378 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989486 Nil!32072))))))

(declare-fun b!2775194 () Bool)

(assert (=> b!2775194 (= e!1750378 (Cons!32072 lt!989486 Nil!32072))))

(declare-fun b!2775196 () Bool)

(declare-fun res!1159688 () Bool)

(assert (=> b!2775196 (=> (not res!1159688) (not e!1750377))))

(assert (=> b!2775196 (= res!1159688 (= (size!24869 lt!989916) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989486 Nil!32072)))))))

(assert (= (and d!806566 c!450596) b!2775194))

(assert (= (and d!806566 (not c!450596)) b!2775195))

(assert (= (and d!806566 res!1159687) b!2775196))

(assert (= (and b!2775196 res!1159688) b!2775197))

(declare-fun m!3201917 () Bool)

(assert (=> d!806566 m!3201917))

(assert (=> d!806566 m!3201467))

(declare-fun m!3201919 () Bool)

(assert (=> d!806566 m!3201919))

(declare-fun m!3201921 () Bool)

(assert (=> b!2775195 m!3201921))

(declare-fun m!3201923 () Bool)

(assert (=> b!2775196 m!3201923))

(assert (=> b!2775196 m!3201399))

(declare-fun m!3201925 () Bool)

(assert (=> b!2775196 m!3201925))

(assert (=> b!2774939 d!806566))

(declare-fun d!806568 () Bool)

(assert (=> d!806568 (= (list!12096 (_1!19066 lt!989513)) (list!12097 (c!450499 (_1!19066 lt!989513))))))

(declare-fun bs!505293 () Bool)

(assert (= bs!505293 d!806568))

(declare-fun m!3201927 () Bool)

(assert (=> bs!505293 m!3201927))

(assert (=> b!2774939 d!806568))

(assert (=> b!2774939 d!806514))

(declare-fun d!806570 () Bool)

(assert (=> d!806570 (= (valid!2976 cacheUp!820) (validCacheMapUp!369 (cache!3862 cacheUp!820)))))

(declare-fun bs!505294 () Bool)

(assert (= bs!505294 d!806570))

(declare-fun m!3201929 () Bool)

(assert (=> bs!505294 m!3201929))

(assert (=> start!268406 d!806570))

(declare-fun d!806572 () Bool)

(declare-fun res!1159691 () Bool)

(declare-fun e!1750381 () Bool)

(assert (=> d!806572 (=> (not res!1159691) (not e!1750381))))

(assert (=> d!806572 (= res!1159691 ((_ is HashMap!3719) (cache!3862 cacheUp!820)))))

(assert (=> d!806572 (= (inv!43560 cacheUp!820) e!1750381)))

(declare-fun b!2775200 () Bool)

(assert (=> b!2775200 (= e!1750381 (validCacheMapUp!369 (cache!3862 cacheUp!820)))))

(assert (= (and d!806572 res!1159691) b!2775200))

(assert (=> b!2775200 m!3201929))

(assert (=> start!268406 d!806572))

(declare-fun d!806574 () Bool)

(declare-fun res!1159694 () Bool)

(declare-fun e!1750384 () Bool)

(assert (=> d!806574 (=> (not res!1159694) (not e!1750384))))

(assert (=> d!806574 (= res!1159694 ((_ is HashMap!3720) (cache!3863 cacheDown!939)))))

(assert (=> d!806574 (= (inv!43561 cacheDown!939) e!1750384)))

(declare-fun b!2775203 () Bool)

(assert (=> b!2775203 (= e!1750384 (validCacheMapDown!400 (cache!3863 cacheDown!939)))))

(assert (= (and d!806574 res!1159694) b!2775203))

(assert (=> b!2775203 m!3201795))

(assert (=> start!268406 d!806574))

(declare-fun d!806576 () Bool)

(assert (=> d!806576 (= (inv!43562 input!5495) (isBalanced!3044 (c!450499 input!5495)))))

(declare-fun bs!505295 () Bool)

(assert (= bs!505295 d!806576))

(assert (=> bs!505295 m!3201563))

(assert (=> start!268406 d!806576))

(declare-fun d!806578 () Bool)

(declare-fun lambda!101817 () Int)

(declare-fun forall!6632 (List!32173 Int) Bool)

(assert (=> d!806578 (= (inv!43564 setElem!23028) (forall!6632 (exprs!2821 setElem!23028) lambda!101817))))

(declare-fun bs!505296 () Bool)

(assert (= bs!505296 d!806578))

(declare-fun m!3201931 () Bool)

(assert (=> bs!505296 m!3201931))

(assert (=> setNonEmpty!23028 d!806578))

(declare-fun d!806580 () Bool)

(assert (=> d!806580 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)) lt!989479) lt!989496)))

(declare-fun lt!989917 () Unit!46204)

(assert (=> d!806580 (= lt!989917 (choose!16277 Nil!32072 lt!989503 lt!989479 lt!989496))))

(assert (=> d!806580 (= (++!7932 Nil!32072 (Cons!32072 lt!989503 lt!989479)) lt!989496)))

(assert (=> d!806580 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989503 lt!989479 lt!989496) lt!989917)))

(declare-fun bs!505297 () Bool)

(assert (= bs!505297 d!806580))

(assert (=> bs!505297 m!3201419))

(assert (=> bs!505297 m!3201419))

(declare-fun m!3201933 () Bool)

(assert (=> bs!505297 m!3201933))

(declare-fun m!3201935 () Bool)

(assert (=> bs!505297 m!3201935))

(declare-fun m!3201937 () Bool)

(assert (=> bs!505297 m!3201937))

(assert (=> b!2774922 d!806580))

(declare-fun d!806582 () Bool)

(assert (=> d!806582 (= (list!12096 (_2!19066 lt!989540)) (list!12097 (c!450499 (_2!19066 lt!989540))))))

(declare-fun bs!505298 () Bool)

(assert (= bs!505298 d!806582))

(declare-fun m!3201939 () Bool)

(assert (=> bs!505298 m!3201939))

(assert (=> b!2774922 d!806582))

(assert (=> b!2774922 d!806550))

(declare-fun d!806584 () Bool)

(assert (=> d!806584 (and (= lt!989512 Nil!32072) (= lt!989529 lt!989496))))

(declare-fun lt!989918 () Unit!46204)

(assert (=> d!806584 (= lt!989918 (choose!16280 lt!989512 lt!989529 Nil!32072 lt!989496))))

(assert (=> d!806584 (= (++!7932 lt!989512 lt!989529) (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806584 (= (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989512 lt!989529 Nil!32072 lt!989496) lt!989918)))

(declare-fun bs!505299 () Bool)

(assert (= bs!505299 d!806584))

(declare-fun m!3201941 () Bool)

(assert (=> bs!505299 m!3201941))

(declare-fun m!3201943 () Bool)

(assert (=> bs!505299 m!3201943))

(assert (=> bs!505299 m!3201357))

(assert (=> b!2774922 d!806584))

(assert (=> b!2774922 d!806504))

(assert (=> b!2774922 d!806554))

(assert (=> b!2774922 d!806506))

(assert (=> b!2774922 d!806510))

(assert (=> b!2774922 d!806512))

(assert (=> b!2774922 d!806524))

(assert (=> b!2774922 d!806514))

(assert (=> b!2774922 d!806560))

(declare-fun d!806586 () Bool)

(declare-fun e!1750385 () Bool)

(assert (=> d!806586 e!1750385))

(declare-fun res!1159695 () Bool)

(assert (=> d!806586 (=> (not res!1159695) (not e!1750385))))

(declare-fun lt!989919 () List!32172)

(assert (=> d!806586 (= res!1159695 (= (content!4508 lt!989919) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989503 Nil!32072)))))))

(declare-fun e!1750386 () List!32172)

(assert (=> d!806586 (= lt!989919 e!1750386)))

(declare-fun c!450597 () Bool)

(assert (=> d!806586 (= c!450597 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806586 (= (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)) lt!989919)))

(declare-fun b!2775207 () Bool)

(assert (=> b!2775207 (= e!1750385 (or (not (= (Cons!32072 lt!989503 Nil!32072) Nil!32072)) (= lt!989919 Nil!32072)))))

(declare-fun b!2775205 () Bool)

(assert (=> b!2775205 (= e!1750386 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989503 Nil!32072))))))

(declare-fun b!2775204 () Bool)

(assert (=> b!2775204 (= e!1750386 (Cons!32072 lt!989503 Nil!32072))))

(declare-fun b!2775206 () Bool)

(declare-fun res!1159696 () Bool)

(assert (=> b!2775206 (=> (not res!1159696) (not e!1750385))))

(assert (=> b!2775206 (= res!1159696 (= (size!24869 lt!989919) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989503 Nil!32072)))))))

(assert (= (and d!806586 c!450597) b!2775204))

(assert (= (and d!806586 (not c!450597)) b!2775205))

(assert (= (and d!806586 res!1159695) b!2775206))

(assert (= (and b!2775206 res!1159696) b!2775207))

(declare-fun m!3201945 () Bool)

(assert (=> d!806586 m!3201945))

(assert (=> d!806586 m!3201467))

(declare-fun m!3201947 () Bool)

(assert (=> d!806586 m!3201947))

(declare-fun m!3201949 () Bool)

(assert (=> b!2775205 m!3201949))

(declare-fun m!3201951 () Bool)

(assert (=> b!2775206 m!3201951))

(assert (=> b!2775206 m!3201399))

(declare-fun m!3201953 () Bool)

(assert (=> b!2775206 m!3201953))

(assert (=> b!2774922 d!806586))

(assert (=> b!2774922 d!806516))

(assert (=> b!2774922 d!806508))

(assert (=> b!2774922 d!806564))

(assert (=> b!2774922 d!806556))

(declare-fun d!806588 () Bool)

(assert (=> d!806588 (= (list!12096 (_1!19066 lt!989540)) (list!12097 (c!450499 (_1!19066 lt!989540))))))

(declare-fun bs!505300 () Bool)

(assert (= bs!505300 d!806588))

(declare-fun m!3201955 () Bool)

(assert (=> bs!505300 m!3201955))

(assert (=> b!2774922 d!806588))

(declare-fun d!806590 () Bool)

(declare-fun e!1750387 () Bool)

(assert (=> d!806590 e!1750387))

(declare-fun res!1159697 () Bool)

(assert (=> d!806590 (=> (not res!1159697) (not e!1750387))))

(declare-fun lt!989920 () List!32172)

(assert (=> d!806590 (= res!1159697 (= (content!4508 lt!989920) ((_ map or) (content!4508 lt!989491) (content!4508 lt!989479))))))

(declare-fun e!1750388 () List!32172)

(assert (=> d!806590 (= lt!989920 e!1750388)))

(declare-fun c!450598 () Bool)

(assert (=> d!806590 (= c!450598 ((_ is Nil!32072) lt!989491))))

(assert (=> d!806590 (= (++!7932 lt!989491 lt!989479) lt!989920)))

(declare-fun b!2775211 () Bool)

(assert (=> b!2775211 (= e!1750387 (or (not (= lt!989479 Nil!32072)) (= lt!989920 lt!989491)))))

(declare-fun b!2775209 () Bool)

(assert (=> b!2775209 (= e!1750388 (Cons!32072 (h!37492 lt!989491) (++!7932 (t!228300 lt!989491) lt!989479)))))

(declare-fun b!2775208 () Bool)

(assert (=> b!2775208 (= e!1750388 lt!989479)))

(declare-fun b!2775210 () Bool)

(declare-fun res!1159698 () Bool)

(assert (=> b!2775210 (=> (not res!1159698) (not e!1750387))))

(assert (=> b!2775210 (= res!1159698 (= (size!24869 lt!989920) (+ (size!24869 lt!989491) (size!24869 lt!989479))))))

(assert (= (and d!806590 c!450598) b!2775208))

(assert (= (and d!806590 (not c!450598)) b!2775209))

(assert (= (and d!806590 res!1159697) b!2775210))

(assert (= (and b!2775210 res!1159698) b!2775211))

(declare-fun m!3201957 () Bool)

(assert (=> d!806590 m!3201957))

(declare-fun m!3201959 () Bool)

(assert (=> d!806590 m!3201959))

(declare-fun m!3201961 () Bool)

(assert (=> d!806590 m!3201961))

(declare-fun m!3201963 () Bool)

(assert (=> b!2775209 m!3201963))

(declare-fun m!3201965 () Bool)

(assert (=> b!2775210 m!3201965))

(assert (=> b!2775210 m!3201679))

(declare-fun m!3201967 () Bool)

(assert (=> b!2775210 m!3201967))

(assert (=> b!2774922 d!806590))

(assert (=> b!2774922 d!806558))

(declare-fun b!2775213 () Bool)

(declare-fun res!1159700 () Bool)

(declare-fun e!1750391 () Bool)

(assert (=> b!2775213 (=> (not res!1159700) (not e!1750391))))

(assert (=> b!2775213 (= res!1159700 (= (head!6152 lt!989496) (head!6152 lt!989496)))))

(declare-fun b!2775212 () Bool)

(declare-fun e!1750390 () Bool)

(assert (=> b!2775212 (= e!1750390 e!1750391)))

(declare-fun res!1159701 () Bool)

(assert (=> b!2775212 (=> (not res!1159701) (not e!1750391))))

(assert (=> b!2775212 (= res!1159701 (not ((_ is Nil!32072) lt!989496)))))

(declare-fun d!806592 () Bool)

(declare-fun e!1750389 () Bool)

(assert (=> d!806592 e!1750389))

(declare-fun res!1159702 () Bool)

(assert (=> d!806592 (=> res!1159702 e!1750389)))

(declare-fun lt!989921 () Bool)

(assert (=> d!806592 (= res!1159702 (not lt!989921))))

(assert (=> d!806592 (= lt!989921 e!1750390)))

(declare-fun res!1159699 () Bool)

(assert (=> d!806592 (=> res!1159699 e!1750390)))

(assert (=> d!806592 (= res!1159699 ((_ is Nil!32072) lt!989496))))

(assert (=> d!806592 (= (isPrefix!2557 lt!989496 lt!989496) lt!989921)))

(declare-fun b!2775214 () Bool)

(assert (=> b!2775214 (= e!1750391 (isPrefix!2557 (tail!4390 lt!989496) (tail!4390 lt!989496)))))

(declare-fun b!2775215 () Bool)

(assert (=> b!2775215 (= e!1750389 (>= (size!24869 lt!989496) (size!24869 lt!989496)))))

(assert (= (and d!806592 (not res!1159699)) b!2775212))

(assert (= (and b!2775212 res!1159701) b!2775213))

(assert (= (and b!2775213 res!1159700) b!2775214))

(assert (= (and d!806592 (not res!1159702)) b!2775215))

(assert (=> b!2775213 m!3201449))

(assert (=> b!2775213 m!3201449))

(assert (=> b!2775214 m!3201395))

(assert (=> b!2775214 m!3201395))

(assert (=> b!2775214 m!3201395))

(assert (=> b!2775214 m!3201395))

(declare-fun m!3201969 () Bool)

(assert (=> b!2775214 m!3201969))

(assert (=> b!2775215 m!3201391))

(assert (=> b!2775215 m!3201391))

(assert (=> bm!181476 d!806592))

(assert (=> bm!181483 d!806544))

(declare-fun b!2775216 () Bool)

(declare-fun e!1750395 () Int)

(assert (=> b!2775216 (= e!1750395 1)))

(declare-fun b!2775218 () Bool)

(declare-fun e!1750397 () List!32172)

(assert (=> b!2775218 (= e!1750397 (list!12096 input!5495))))

(declare-fun b!2775219 () Bool)

(declare-fun e!1750392 () Int)

(assert (=> b!2775219 (= e!1750392 0)))

(declare-fun bm!181569 () Bool)

(declare-fun call!181577 () List!32172)

(assert (=> bm!181569 (= call!181577 (tail!4390 lt!989532))))

(declare-fun b!2775220 () Bool)

(declare-fun e!1750394 () Unit!46204)

(declare-fun Unit!46226 () Unit!46204)

(assert (=> b!2775220 (= e!1750394 Unit!46226)))

(declare-fun lt!989922 () List!32172)

(assert (=> b!2775220 (= lt!989922 (list!12096 input!5495))))

(declare-fun lt!989954 () List!32172)

(assert (=> b!2775220 (= lt!989954 (list!12096 input!5495))))

(declare-fun lt!989947 () Unit!46204)

(declare-fun call!181583 () Unit!46204)

(assert (=> b!2775220 (= lt!989947 call!181583)))

(declare-fun call!181578 () Bool)

(assert (=> b!2775220 call!181578))

(declare-fun lt!989932 () Unit!46204)

(assert (=> b!2775220 (= lt!989932 lt!989947)))

(declare-fun lt!989945 () List!32172)

(assert (=> b!2775220 (= lt!989945 (list!12096 input!5495))))

(declare-fun lt!989951 () Unit!46204)

(declare-fun call!181574 () Unit!46204)

(assert (=> b!2775220 (= lt!989951 call!181574)))

(assert (=> b!2775220 (= lt!989945 lt!989488)))

(declare-fun lt!989955 () Unit!46204)

(assert (=> b!2775220 (= lt!989955 lt!989951)))

(assert (=> b!2775220 false))

(declare-fun b!2775221 () Bool)

(declare-fun e!1750393 () Int)

(declare-fun call!181576 () Int)

(assert (=> b!2775221 (= e!1750393 call!181576)))

(declare-fun bm!181570 () Bool)

(declare-fun call!181580 () List!32172)

(declare-fun call!181581 () C!16364)

(assert (=> bm!181570 (= call!181580 (++!7932 lt!989488 (Cons!32072 call!181581 Nil!32072)))))

(declare-fun b!2775222 () Bool)

(declare-fun call!181582 () List!32172)

(assert (=> b!2775222 (= e!1750397 call!181582)))

(declare-fun b!2775223 () Bool)

(assert (=> b!2775223 (= e!1750395 0)))

(declare-fun b!2775224 () Bool)

(declare-fun c!450600 () Bool)

(declare-fun call!181575 () Bool)

(assert (=> b!2775224 (= c!450600 call!181575)))

(declare-fun lt!989924 () Unit!46204)

(declare-fun lt!989946 () Unit!46204)

(assert (=> b!2775224 (= lt!989924 lt!989946)))

(declare-fun lt!989953 () List!32172)

(assert (=> b!2775224 (= lt!989953 lt!989488)))

(assert (=> b!2775224 (= lt!989946 call!181574)))

(assert (=> b!2775224 (= lt!989953 call!181582)))

(declare-fun lt!989937 () Unit!46204)

(declare-fun lt!989952 () Unit!46204)

(assert (=> b!2775224 (= lt!989937 lt!989952)))

(assert (=> b!2775224 call!181578))

(assert (=> b!2775224 (= lt!989952 call!181583)))

(declare-fun lt!989927 () List!32172)

(assert (=> b!2775224 (= lt!989927 call!181582)))

(declare-fun lt!989956 () List!32172)

(assert (=> b!2775224 (= lt!989956 call!181582)))

(declare-fun e!1750396 () Int)

(assert (=> b!2775224 (= e!1750396 e!1750395)))

(declare-fun bm!181571 () Bool)

(assert (=> bm!181571 (= call!181575 (nullableZipper!636 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))))))

(declare-fun bm!181572 () Bool)

(declare-fun c!450601 () Bool)

(declare-fun c!450602 () Bool)

(assert (=> bm!181572 (= c!450601 c!450602)))

(assert (=> bm!181572 (= call!181574 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450602 lt!989953 lt!989945) lt!989488 e!1750397))))

(declare-fun bm!181573 () Bool)

(assert (=> bm!181573 (= call!181583 (lemmaIsPrefixRefl!1681 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954)))))

(declare-fun bm!181574 () Bool)

(assert (=> bm!181574 (= call!181578 (isPrefix!2557 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954)))))

(declare-fun lt!989923 () tuple2!32290)

(declare-fun bm!181575 () Bool)

(assert (=> bm!181575 (= call!181582 (list!12096 (ite c!450602 input!5495 (_2!19066 lt!989923))))))

(declare-fun b!2775225 () Bool)

(declare-fun lt!989963 () Int)

(assert (=> b!2775225 (= e!1750393 (ite (= lt!989963 0) 1 lt!989963))))

(assert (=> b!2775225 (= lt!989963 call!181576)))

(declare-fun d!806594 () Bool)

(declare-fun lt!989941 () Int)

(assert (=> d!806594 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 (list!12096 input!5495) lt!989489))) lt!989941)))

(assert (=> d!806594 (= lt!989941 e!1750392)))

(declare-fun c!450604 () Bool)

(assert (=> d!806594 (= c!450604 (lostCauseZipper!443 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))))))

(declare-fun lt!989962 () Unit!46204)

(declare-fun Unit!46227 () Unit!46204)

(assert (=> d!806594 (= lt!989962 Unit!46227)))

(assert (=> d!806594 (= (getSuffix!1239 (list!12096 input!5495) lt!989488) lt!989532)))

(declare-fun lt!989930 () Unit!46204)

(declare-fun lt!989940 () Unit!46204)

(assert (=> d!806594 (= lt!989930 lt!989940)))

(declare-fun lt!989936 () List!32172)

(assert (=> d!806594 (= lt!989532 lt!989936)))

(assert (=> d!806594 (= lt!989940 (lemmaSamePrefixThenSameSuffix!1141 lt!989488 lt!989532 lt!989488 lt!989936 (list!12096 input!5495)))))

(assert (=> d!806594 (= lt!989936 (getSuffix!1239 (list!12096 input!5495) lt!989488))))

(declare-fun lt!989926 () Unit!46204)

(declare-fun lt!989943 () Unit!46204)

(assert (=> d!806594 (= lt!989926 lt!989943)))

(assert (=> d!806594 (isPrefix!2557 lt!989488 (++!7932 lt!989488 lt!989532))))

(assert (=> d!806594 (= lt!989943 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989488 lt!989532))))

(assert (=> d!806594 (= (++!7932 lt!989488 lt!989532) (list!12096 input!5495))))

(assert (=> d!806594 (= (findLongestMatchInnerZipperFast!52 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489) lt!989941)))

(declare-fun b!2775217 () Bool)

(assert (=> b!2775217 (= e!1750392 e!1750396)))

(assert (=> b!2775217 (= c!450602 (= 1 lt!989489))))

(declare-fun call!181579 () (InoxSet Context!4642))

(declare-fun bm!181576 () Bool)

(assert (=> bm!181576 (= call!181576 (findLongestMatchInnerZipperFast!52 call!181579 call!181580 (+ 1 1) call!181577 input!5495 lt!989489))))

(declare-fun bm!181577 () Bool)

(assert (=> bm!181577 (= call!181579 (derivationStepZipper!369 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) call!181581))))

(declare-fun b!2775226 () Bool)

(declare-fun Unit!46228 () Unit!46204)

(assert (=> b!2775226 (= e!1750394 Unit!46228)))

(declare-fun bm!181578 () Bool)

(assert (=> bm!181578 (= call!181581 (apply!7512 input!5495 1))))

(declare-fun b!2775227 () Bool)

(declare-fun c!450599 () Bool)

(assert (=> b!2775227 (= c!450599 call!181575)))

(declare-fun lt!989960 () Unit!46204)

(declare-fun lt!989942 () Unit!46204)

(assert (=> b!2775227 (= lt!989960 lt!989942)))

(declare-fun lt!989934 () C!16364)

(declare-fun lt!989931 () List!32172)

(declare-fun lt!989939 () List!32172)

(assert (=> b!2775227 (= (++!7932 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072)) lt!989931) lt!989939)))

(assert (=> b!2775227 (= lt!989942 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989488 lt!989934 lt!989931 lt!989939))))

(assert (=> b!2775227 (= lt!989939 (list!12096 input!5495))))

(assert (=> b!2775227 (= lt!989931 (tail!4390 lt!989532))))

(assert (=> b!2775227 (= lt!989934 (apply!7512 input!5495 1))))

(declare-fun lt!989929 () Unit!46204)

(declare-fun lt!989935 () Unit!46204)

(assert (=> b!2775227 (= lt!989929 lt!989935)))

(declare-fun lt!989949 () List!32172)

(assert (=> b!2775227 (isPrefix!2557 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)) lt!989949)))

(assert (=> b!2775227 (= lt!989935 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989488 lt!989949))))

(assert (=> b!2775227 (= lt!989949 (list!12096 input!5495))))

(declare-fun lt!989938 () Unit!46204)

(assert (=> b!2775227 (= lt!989938 e!1750394)))

(declare-fun c!450603 () Bool)

(assert (=> b!2775227 (= c!450603 (= (size!24869 lt!989488) (size!24868 input!5495)))))

(declare-fun lt!989944 () Unit!46204)

(declare-fun lt!989948 () Unit!46204)

(assert (=> b!2775227 (= lt!989944 lt!989948)))

(declare-fun lt!989959 () List!32172)

(assert (=> b!2775227 (<= (size!24869 lt!989488) (size!24869 lt!989959))))

(assert (=> b!2775227 (= lt!989948 (lemmaIsPrefixThenSmallerEqSize!264 lt!989488 lt!989959))))

(assert (=> b!2775227 (= lt!989959 (list!12096 input!5495))))

(declare-fun lt!989928 () Unit!46204)

(declare-fun lt!989958 () Unit!46204)

(assert (=> b!2775227 (= lt!989928 lt!989958)))

(declare-fun lt!989925 () List!32172)

(assert (=> b!2775227 (= (head!6152 (drop!1710 lt!989925 1)) (apply!7513 lt!989925 1))))

(assert (=> b!2775227 (= lt!989958 (lemmaDropApply!916 lt!989925 1))))

(assert (=> b!2775227 (= lt!989925 (list!12096 input!5495))))

(declare-fun lt!989933 () Unit!46204)

(declare-fun lt!989961 () Unit!46204)

(assert (=> b!2775227 (= lt!989933 lt!989961)))

(declare-fun lt!989957 () List!32172)

(declare-fun lt!989950 () List!32172)

(assert (=> b!2775227 (and (= lt!989957 lt!989488) (= lt!989950 lt!989532))))

(assert (=> b!2775227 (= lt!989961 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989957 lt!989950 lt!989488 lt!989532))))

(assert (=> b!2775227 (= lt!989950 call!181582)))

(assert (=> b!2775227 (= lt!989957 (list!12096 (_1!19066 lt!989923)))))

(assert (=> b!2775227 (= lt!989923 (splitAt!119 input!5495 1))))

(assert (=> b!2775227 (= e!1750396 e!1750393)))

(assert (= (and d!806594 c!450604) b!2775219))

(assert (= (and d!806594 (not c!450604)) b!2775217))

(assert (= (and b!2775217 c!450602) b!2775224))

(assert (= (and b!2775217 (not c!450602)) b!2775227))

(assert (= (and b!2775224 c!450600) b!2775216))

(assert (= (and b!2775224 (not c!450600)) b!2775223))

(assert (= (and b!2775227 c!450603) b!2775220))

(assert (= (and b!2775227 (not c!450603)) b!2775226))

(assert (= (and b!2775227 c!450599) b!2775225))

(assert (= (and b!2775227 (not c!450599)) b!2775221))

(assert (= (or b!2775225 b!2775221) bm!181578))

(assert (= (or b!2775225 b!2775221) bm!181569))

(assert (= (or b!2775225 b!2775221) bm!181570))

(assert (= (or b!2775225 b!2775221) bm!181577))

(assert (= (or b!2775225 b!2775221) bm!181576))

(assert (= (or b!2775224 b!2775227) bm!181575))

(assert (= (or b!2775224 b!2775227) bm!181571))

(assert (= (or b!2775224 b!2775220) bm!181573))

(assert (= (or b!2775224 b!2775220) bm!181574))

(assert (= (or b!2775224 b!2775220) bm!181572))

(assert (= (and bm!181572 c!450601) b!2775222))

(assert (= (and bm!181572 (not c!450601)) b!2775218))

(declare-fun m!3201971 () Bool)

(assert (=> bm!181573 m!3201971))

(declare-fun m!3201973 () Bool)

(assert (=> bm!181577 m!3201973))

(declare-fun m!3201975 () Bool)

(assert (=> b!2775227 m!3201975))

(declare-fun m!3201977 () Bool)

(assert (=> b!2775227 m!3201977))

(declare-fun m!3201979 () Bool)

(assert (=> b!2775227 m!3201979))

(declare-fun m!3201981 () Bool)

(assert (=> b!2775227 m!3201981))

(declare-fun m!3201983 () Bool)

(assert (=> b!2775227 m!3201983))

(declare-fun m!3201985 () Bool)

(assert (=> b!2775227 m!3201985))

(declare-fun m!3201987 () Bool)

(assert (=> b!2775227 m!3201987))

(assert (=> b!2775227 m!3201877))

(declare-fun m!3201989 () Bool)

(assert (=> b!2775227 m!3201989))

(assert (=> b!2775227 m!3201979))

(declare-fun m!3201991 () Bool)

(assert (=> b!2775227 m!3201991))

(declare-fun m!3201993 () Bool)

(assert (=> b!2775227 m!3201993))

(declare-fun m!3201995 () Bool)

(assert (=> b!2775227 m!3201995))

(declare-fun m!3201997 () Bool)

(assert (=> b!2775227 m!3201997))

(assert (=> b!2775227 m!3201349))

(assert (=> b!2775227 m!3201985))

(declare-fun m!3201999 () Bool)

(assert (=> b!2775227 m!3201999))

(declare-fun m!3202001 () Bool)

(assert (=> b!2775227 m!3202001))

(declare-fun m!3202003 () Bool)

(assert (=> b!2775227 m!3202003))

(declare-fun m!3202005 () Bool)

(assert (=> b!2775227 m!3202005))

(assert (=> b!2775227 m!3202003))

(declare-fun m!3202007 () Bool)

(assert (=> b!2775227 m!3202007))

(assert (=> b!2775227 m!3201355))

(assert (=> b!2775227 m!3201995))

(assert (=> b!2775227 m!3201701))

(assert (=> b!2775227 m!3201703))

(assert (=> bm!181569 m!3201981))

(declare-fun m!3202009 () Bool)

(assert (=> bm!181572 m!3202009))

(assert (=> b!2775218 m!3201349))

(declare-fun m!3202011 () Bool)

(assert (=> bm!181574 m!3202011))

(declare-fun m!3202013 () Bool)

(assert (=> bm!181570 m!3202013))

(declare-fun m!3202015 () Bool)

(assert (=> bm!181575 m!3202015))

(assert (=> bm!181578 m!3201701))

(declare-fun m!3202017 () Bool)

(assert (=> bm!181571 m!3202017))

(assert (=> d!806594 m!3201437))

(declare-fun m!3202019 () Bool)

(assert (=> d!806594 m!3202019))

(declare-fun m!3202021 () Bool)

(assert (=> d!806594 m!3202021))

(assert (=> d!806594 m!3201349))

(declare-fun m!3202023 () Bool)

(assert (=> d!806594 m!3202023))

(assert (=> d!806594 m!3201437))

(declare-fun m!3202025 () Bool)

(assert (=> d!806594 m!3202025))

(assert (=> d!806594 m!3201349))

(declare-fun m!3202027 () Bool)

(assert (=> d!806594 m!3202027))

(assert (=> d!806594 m!3201349))

(declare-fun m!3202029 () Bool)

(assert (=> d!806594 m!3202029))

(declare-fun m!3202031 () Bool)

(assert (=> d!806594 m!3202031))

(assert (=> d!806594 m!3201349))

(assert (=> b!2775220 m!3201349))

(declare-fun m!3202033 () Bool)

(assert (=> bm!181576 m!3202033))

(assert (=> bm!181487 d!806594))

(assert (=> bm!181469 d!806532))

(declare-fun d!806596 () Bool)

(assert (=> d!806596 (= (valid!2976 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542))) (validCacheMapUp!369 (cache!3862 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542)))))))

(declare-fun bs!505301 () Bool)

(assert (= bs!505301 d!806596))

(declare-fun m!3202035 () Bool)

(assert (=> bs!505301 m!3202035))

(assert (=> bm!181486 d!806596))

(declare-fun d!806598 () Bool)

(assert (=> d!806598 true))

(declare-fun lambda!101820 () Int)

(declare-fun flatMap!186 ((InoxSet Context!4642) Int) (InoxSet Context!4642))

(assert (=> d!806598 (= (derivationStepZipper!369 z!3597 lt!989475) (flatMap!186 z!3597 lambda!101820))))

(declare-fun bs!505302 () Bool)

(assert (= bs!505302 d!806598))

(declare-fun m!3202037 () Bool)

(assert (=> bs!505302 m!3202037))

(assert (=> bm!181470 d!806598))

(assert (=> bm!181471 d!806532))

(assert (=> bm!181478 d!806592))

(assert (=> b!2774942 d!806486))

(assert (=> bm!181477 d!806592))

(declare-fun bs!505303 () Bool)

(declare-fun d!806600 () Bool)

(assert (= bs!505303 (and d!806600 d!806598)))

(declare-fun lambda!101821 () Int)

(assert (=> bs!505303 (= (= lt!989503 lt!989475) (= lambda!101821 lambda!101820))))

(assert (=> d!806600 true))

(assert (=> d!806600 (= (derivationStepZipper!369 z!3597 lt!989503) (flatMap!186 z!3597 lambda!101821))))

(declare-fun bs!505304 () Bool)

(assert (= bs!505304 d!806600))

(declare-fun m!3202039 () Bool)

(assert (=> bs!505304 m!3202039))

(assert (=> bm!181479 d!806600))

(declare-fun d!806602 () Bool)

(assert (=> d!806602 (= (valid!2977 (_3!2922 lt!989506)) (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989506))))))

(declare-fun bs!505305 () Bool)

(assert (= bs!505305 d!806602))

(declare-fun m!3202041 () Bool)

(assert (=> bs!505305 m!3202041))

(assert (=> b!2774930 d!806602))

(declare-fun d!806604 () Bool)

(assert (=> d!806604 (= (valid!2977 (_3!2922 lt!989484)) (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989484))))))

(declare-fun bs!505306 () Bool)

(assert (= bs!505306 d!806604))

(declare-fun m!3202043 () Bool)

(assert (=> bs!505306 m!3202043))

(assert (=> b!2774913 d!806604))

(assert (=> b!2774929 d!806486))

(declare-fun d!806606 () Bool)

(assert (=> d!806606 (= (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) (bvsge (size!24866 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2774914 d!806606))

(declare-fun d!806608 () Bool)

(assert (=> d!806608 (= (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) (bvsge (size!24867 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2774914 d!806608))

(assert (=> bm!181480 d!806544))

(declare-fun e!1750406 () Bool)

(assert (=> b!2774933 (= tp!878257 e!1750406)))

(declare-fun b!2775238 () Bool)

(declare-fun e!1750404 () Bool)

(declare-fun tp!878271 () Bool)

(assert (=> b!2775238 (= e!1750404 tp!878271)))

(declare-fun b!2775239 () Bool)

(declare-fun e!1750405 () Bool)

(declare-fun tp!878273 () Bool)

(assert (=> b!2775239 (= e!1750405 tp!878273)))

(declare-fun tp_is_empty!14023 () Bool)

(declare-fun b!2775240 () Bool)

(declare-fun tp!878274 () Bool)

(declare-fun setRes!23031 () Bool)

(assert (=> b!2775240 (= e!1750406 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapDefault!17377)))) e!1750405 tp_is_empty!14023 setRes!23031 tp!878274))))

(declare-fun condSetEmpty!23031 () Bool)

(assert (=> b!2775240 (= condSetEmpty!23031 (= (_2!19068 (h!37494 mapDefault!17377)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23031 () Context!4642)

(declare-fun setNonEmpty!23031 () Bool)

(declare-fun tp!878272 () Bool)

(assert (=> setNonEmpty!23031 (= setRes!23031 (and tp!878272 (inv!43564 setElem!23031) e!1750404))))

(declare-fun setRest!23031 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23031 (= (_2!19068 (h!37494 mapDefault!17377)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23031 true) setRest!23031))))

(declare-fun setIsEmpty!23031 () Bool)

(assert (=> setIsEmpty!23031 setRes!23031))

(assert (= b!2775240 b!2775239))

(assert (= (and b!2775240 condSetEmpty!23031) setIsEmpty!23031))

(assert (= (and b!2775240 (not condSetEmpty!23031)) setNonEmpty!23031))

(assert (= setNonEmpty!23031 b!2775238))

(assert (= (and b!2774933 ((_ is Cons!32074) mapDefault!17377)) b!2775240))

(declare-fun m!3202045 () Bool)

(assert (=> b!2775240 m!3202045))

(declare-fun m!3202047 () Bool)

(assert (=> setNonEmpty!23031 m!3202047))

(declare-fun b!2775249 () Bool)

(declare-fun e!1750415 () Bool)

(declare-fun tp!878287 () Bool)

(assert (=> b!2775249 (= e!1750415 tp!878287)))

(declare-fun setIsEmpty!23034 () Bool)

(declare-fun setRes!23034 () Bool)

(assert (=> setIsEmpty!23034 setRes!23034))

(declare-fun e!1750413 () Bool)

(assert (=> b!2774936 (= tp!878250 e!1750413)))

(declare-fun tp!878285 () Bool)

(declare-fun b!2775250 () Bool)

(declare-fun e!1750414 () Bool)

(declare-fun tp!878289 () Bool)

(assert (=> b!2775250 (= e!1750413 (and tp!878285 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapDefault!17378)))) e!1750414 tp_is_empty!14023 setRes!23034 tp!878289))))

(declare-fun condSetEmpty!23034 () Bool)

(assert (=> b!2775250 (= condSetEmpty!23034 (= (_2!19070 (h!37495 mapDefault!17378)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23034 () Bool)

(declare-fun tp!878288 () Bool)

(declare-fun setElem!23034 () Context!4642)

(assert (=> setNonEmpty!23034 (= setRes!23034 (and tp!878288 (inv!43564 setElem!23034) e!1750415))))

(declare-fun setRest!23034 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23034 (= (_2!19070 (h!37495 mapDefault!17378)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23034 true) setRest!23034))))

(declare-fun b!2775251 () Bool)

(declare-fun tp!878286 () Bool)

(assert (=> b!2775251 (= e!1750414 tp!878286)))

(assert (= b!2775250 b!2775251))

(assert (= (and b!2775250 condSetEmpty!23034) setIsEmpty!23034))

(assert (= (and b!2775250 (not condSetEmpty!23034)) setNonEmpty!23034))

(assert (= setNonEmpty!23034 b!2775249))

(assert (= (and b!2774936 ((_ is Cons!32075) mapDefault!17378)) b!2775250))

(declare-fun m!3202049 () Bool)

(assert (=> b!2775250 m!3202049))

(declare-fun m!3202051 () Bool)

(assert (=> setNonEmpty!23034 m!3202051))

(declare-fun e!1750418 () Bool)

(assert (=> b!2774935 (= tp!878260 e!1750418)))

(declare-fun b!2775252 () Bool)

(declare-fun e!1750416 () Bool)

(declare-fun tp!878290 () Bool)

(assert (=> b!2775252 (= e!1750416 tp!878290)))

(declare-fun b!2775253 () Bool)

(declare-fun e!1750417 () Bool)

(declare-fun tp!878292 () Bool)

(assert (=> b!2775253 (= e!1750417 tp!878292)))

(declare-fun b!2775254 () Bool)

(declare-fun tp!878293 () Bool)

(declare-fun setRes!23035 () Bool)

(assert (=> b!2775254 (= e!1750418 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) e!1750417 tp_is_empty!14023 setRes!23035 tp!878293))))

(declare-fun condSetEmpty!23035 () Bool)

(assert (=> b!2775254 (= condSetEmpty!23035 (= (_2!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23035 () Context!4642)

(declare-fun tp!878291 () Bool)

(declare-fun setNonEmpty!23035 () Bool)

(assert (=> setNonEmpty!23035 (= setRes!23035 (and tp!878291 (inv!43564 setElem!23035) e!1750416))))

(declare-fun setRest!23035 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23035 (= (_2!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23035 true) setRest!23035))))

(declare-fun setIsEmpty!23035 () Bool)

(assert (=> setIsEmpty!23035 setRes!23035))

(assert (= b!2775254 b!2775253))

(assert (= (and b!2775254 condSetEmpty!23035) setIsEmpty!23035))

(assert (= (and b!2775254 (not condSetEmpty!23035)) setNonEmpty!23035))

(assert (= setNonEmpty!23035 b!2775252))

(assert (= (and b!2774935 ((_ is Cons!32074) (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) b!2775254))

(declare-fun m!3202053 () Bool)

(assert (=> b!2775254 m!3202053))

(declare-fun m!3202055 () Bool)

(assert (=> setNonEmpty!23035 m!3202055))

(declare-fun e!1750421 () Bool)

(assert (=> b!2774935 (= tp!878258 e!1750421)))

(declare-fun b!2775255 () Bool)

(declare-fun e!1750419 () Bool)

(declare-fun tp!878294 () Bool)

(assert (=> b!2775255 (= e!1750419 tp!878294)))

(declare-fun b!2775256 () Bool)

(declare-fun e!1750420 () Bool)

(declare-fun tp!878296 () Bool)

(assert (=> b!2775256 (= e!1750420 tp!878296)))

(declare-fun setRes!23036 () Bool)

(declare-fun b!2775257 () Bool)

(declare-fun tp!878297 () Bool)

(assert (=> b!2775257 (= e!1750421 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) e!1750420 tp_is_empty!14023 setRes!23036 tp!878297))))

(declare-fun condSetEmpty!23036 () Bool)

(assert (=> b!2775257 (= condSetEmpty!23036 (= (_2!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23036 () Context!4642)

(declare-fun setNonEmpty!23036 () Bool)

(declare-fun tp!878295 () Bool)

(assert (=> setNonEmpty!23036 (= setRes!23036 (and tp!878295 (inv!43564 setElem!23036) e!1750419))))

(declare-fun setRest!23036 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23036 (= (_2!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23036 true) setRest!23036))))

(declare-fun setIsEmpty!23036 () Bool)

(assert (=> setIsEmpty!23036 setRes!23036))

(assert (= b!2775257 b!2775256))

(assert (= (and b!2775257 condSetEmpty!23036) setIsEmpty!23036))

(assert (= (and b!2775257 (not condSetEmpty!23036)) setNonEmpty!23036))

(assert (= setNonEmpty!23036 b!2775255))

(assert (= (and b!2774935 ((_ is Cons!32074) (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))) b!2775257))

(declare-fun m!3202057 () Bool)

(assert (=> b!2775257 m!3202057))

(declare-fun m!3202059 () Bool)

(assert (=> setNonEmpty!23036 m!3202059))

(declare-fun b!2775272 () Bool)

(declare-fun e!1750439 () Bool)

(declare-fun tp!878319 () Bool)

(assert (=> b!2775272 (= e!1750439 tp!878319)))

(declare-fun b!2775273 () Bool)

(declare-fun e!1750438 () Bool)

(declare-fun tp!878321 () Bool)

(assert (=> b!2775273 (= e!1750438 tp!878321)))

(declare-fun b!2775274 () Bool)

(declare-fun e!1750436 () Bool)

(declare-fun tp!878322 () Bool)

(assert (=> b!2775274 (= e!1750436 tp!878322)))

(declare-fun mapNonEmpty!17381 () Bool)

(declare-fun mapRes!17381 () Bool)

(declare-fun tp!878317 () Bool)

(declare-fun e!1750434 () Bool)

(assert (=> mapNonEmpty!17381 (= mapRes!17381 (and tp!878317 e!1750434))))

(declare-fun mapKey!17381 () (_ BitVec 32))

(declare-fun mapValue!17381 () List!32174)

(declare-fun mapRest!17381 () (Array (_ BitVec 32) List!32174))

(assert (=> mapNonEmpty!17381 (= mapRest!17378 (store mapRest!17381 mapKey!17381 mapValue!17381))))

(declare-fun tp!878316 () Bool)

(declare-fun setNonEmpty!23041 () Bool)

(declare-fun setElem!23042 () Context!4642)

(declare-fun setRes!23042 () Bool)

(assert (=> setNonEmpty!23041 (= setRes!23042 (and tp!878316 (inv!43564 setElem!23042) e!1750436))))

(declare-fun setRest!23042 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23041 (= (_2!19068 (h!37494 mapValue!17381)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23042 true) setRest!23042))))

(declare-fun condMapEmpty!17381 () Bool)

(declare-fun mapDefault!17381 () List!32174)

(assert (=> mapNonEmpty!17377 (= condMapEmpty!17381 (= mapRest!17378 ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17381)))))

(declare-fun e!1750437 () Bool)

(assert (=> mapNonEmpty!17377 (= tp!878249 (and e!1750437 mapRes!17381))))

(declare-fun setIsEmpty!23041 () Bool)

(assert (=> setIsEmpty!23041 setRes!23042))

(declare-fun mapIsEmpty!17381 () Bool)

(assert (=> mapIsEmpty!17381 mapRes!17381))

(declare-fun tp!878320 () Bool)

(declare-fun b!2775275 () Bool)

(assert (=> b!2775275 (= e!1750434 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapValue!17381)))) e!1750439 tp_is_empty!14023 setRes!23042 tp!878320))))

(declare-fun condSetEmpty!23041 () Bool)

(assert (=> b!2775275 (= condSetEmpty!23041 (= (_2!19068 (h!37494 mapValue!17381)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23042 () Bool)

(declare-fun setRes!23041 () Bool)

(declare-fun e!1750435 () Bool)

(declare-fun setElem!23041 () Context!4642)

(declare-fun tp!878318 () Bool)

(assert (=> setNonEmpty!23042 (= setRes!23041 (and tp!878318 (inv!43564 setElem!23041) e!1750435))))

(declare-fun setRest!23041 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23042 (= (_2!19068 (h!37494 mapDefault!17381)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23041 true) setRest!23041))))

(declare-fun b!2775276 () Bool)

(declare-fun tp!878324 () Bool)

(assert (=> b!2775276 (= e!1750435 tp!878324)))

(declare-fun tp!878323 () Bool)

(declare-fun b!2775277 () Bool)

(assert (=> b!2775277 (= e!1750437 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapDefault!17381)))) e!1750438 tp_is_empty!14023 setRes!23041 tp!878323))))

(declare-fun condSetEmpty!23042 () Bool)

(assert (=> b!2775277 (= condSetEmpty!23042 (= (_2!19068 (h!37494 mapDefault!17381)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setIsEmpty!23042 () Bool)

(assert (=> setIsEmpty!23042 setRes!23041))

(assert (= (and mapNonEmpty!17377 condMapEmpty!17381) mapIsEmpty!17381))

(assert (= (and mapNonEmpty!17377 (not condMapEmpty!17381)) mapNonEmpty!17381))

(assert (= b!2775275 b!2775272))

(assert (= (and b!2775275 condSetEmpty!23041) setIsEmpty!23041))

(assert (= (and b!2775275 (not condSetEmpty!23041)) setNonEmpty!23041))

(assert (= setNonEmpty!23041 b!2775274))

(assert (= (and mapNonEmpty!17381 ((_ is Cons!32074) mapValue!17381)) b!2775275))

(assert (= b!2775277 b!2775273))

(assert (= (and b!2775277 condSetEmpty!23042) setIsEmpty!23042))

(assert (= (and b!2775277 (not condSetEmpty!23042)) setNonEmpty!23042))

(assert (= setNonEmpty!23042 b!2775276))

(assert (= (and mapNonEmpty!17377 ((_ is Cons!32074) mapDefault!17381)) b!2775277))

(declare-fun m!3202061 () Bool)

(assert (=> mapNonEmpty!17381 m!3202061))

(declare-fun m!3202063 () Bool)

(assert (=> setNonEmpty!23041 m!3202063))

(declare-fun m!3202065 () Bool)

(assert (=> b!2775277 m!3202065))

(declare-fun m!3202067 () Bool)

(assert (=> setNonEmpty!23042 m!3202067))

(declare-fun m!3202069 () Bool)

(assert (=> b!2775275 m!3202069))

(declare-fun e!1750442 () Bool)

(assert (=> mapNonEmpty!17377 (= tp!878254 e!1750442)))

(declare-fun b!2775278 () Bool)

(declare-fun e!1750440 () Bool)

(declare-fun tp!878325 () Bool)

(assert (=> b!2775278 (= e!1750440 tp!878325)))

(declare-fun b!2775279 () Bool)

(declare-fun e!1750441 () Bool)

(declare-fun tp!878327 () Bool)

(assert (=> b!2775279 (= e!1750441 tp!878327)))

(declare-fun tp!878328 () Bool)

(declare-fun b!2775280 () Bool)

(declare-fun setRes!23043 () Bool)

(assert (=> b!2775280 (= e!1750442 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapValue!17378)))) e!1750441 tp_is_empty!14023 setRes!23043 tp!878328))))

(declare-fun condSetEmpty!23043 () Bool)

(assert (=> b!2775280 (= condSetEmpty!23043 (= (_2!19068 (h!37494 mapValue!17378)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878326 () Bool)

(declare-fun setElem!23043 () Context!4642)

(declare-fun setNonEmpty!23043 () Bool)

(assert (=> setNonEmpty!23043 (= setRes!23043 (and tp!878326 (inv!43564 setElem!23043) e!1750440))))

(declare-fun setRest!23043 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23043 (= (_2!19068 (h!37494 mapValue!17378)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23043 true) setRest!23043))))

(declare-fun setIsEmpty!23043 () Bool)

(assert (=> setIsEmpty!23043 setRes!23043))

(assert (= b!2775280 b!2775279))

(assert (= (and b!2775280 condSetEmpty!23043) setIsEmpty!23043))

(assert (= (and b!2775280 (not condSetEmpty!23043)) setNonEmpty!23043))

(assert (= setNonEmpty!23043 b!2775278))

(assert (= (and mapNonEmpty!17377 ((_ is Cons!32074) mapValue!17378)) b!2775280))

(declare-fun m!3202071 () Bool)

(assert (=> b!2775280 m!3202071))

(declare-fun m!3202073 () Bool)

(assert (=> setNonEmpty!23043 m!3202073))

(declare-fun b!2775289 () Bool)

(declare-fun tp!878337 () Bool)

(declare-fun e!1750447 () Bool)

(declare-fun tp!878336 () Bool)

(assert (=> b!2775289 (= e!1750447 (and (inv!43563 (left!24418 (c!450499 input!5495))) tp!878336 (inv!43563 (right!24748 (c!450499 input!5495))) tp!878337))))

(declare-fun b!2775291 () Bool)

(declare-fun e!1750448 () Bool)

(declare-fun tp!878335 () Bool)

(assert (=> b!2775291 (= e!1750448 tp!878335)))

(declare-fun b!2775290 () Bool)

(declare-fun inv!43567 (IArray!19967) Bool)

(assert (=> b!2775290 (= e!1750447 (and (inv!43567 (xs!13091 (c!450499 input!5495))) e!1750448))))

(assert (=> b!2774920 (= tp!878255 (and (inv!43563 (c!450499 input!5495)) e!1750447))))

(assert (= (and b!2774920 ((_ is Node!9981) (c!450499 input!5495))) b!2775289))

(assert (= b!2775290 b!2775291))

(assert (= (and b!2774920 ((_ is Leaf!15201) (c!450499 input!5495))) b!2775290))

(declare-fun m!3202075 () Bool)

(assert (=> b!2775289 m!3202075))

(declare-fun m!3202077 () Bool)

(assert (=> b!2775289 m!3202077))

(declare-fun m!3202079 () Bool)

(assert (=> b!2775290 m!3202079))

(assert (=> b!2774920 m!3201443))

(declare-fun e!1750463 () Bool)

(declare-fun tp!878365 () Bool)

(declare-fun b!2775306 () Bool)

(declare-fun tp!878367 () Bool)

(declare-fun mapValue!17384 () List!32175)

(declare-fun setRes!23048 () Bool)

(declare-fun e!1750466 () Bool)

(assert (=> b!2775306 (= e!1750466 (and tp!878367 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapValue!17384)))) e!1750463 tp_is_empty!14023 setRes!23048 tp!878365))))

(declare-fun condSetEmpty!23048 () Bool)

(assert (=> b!2775306 (= condSetEmpty!23048 (= (_2!19070 (h!37495 mapValue!17384)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun mapIsEmpty!17384 () Bool)

(declare-fun mapRes!17384 () Bool)

(assert (=> mapIsEmpty!17384 mapRes!17384))

(declare-fun setIsEmpty!23048 () Bool)

(declare-fun setRes!23049 () Bool)

(assert (=> setIsEmpty!23048 setRes!23049))

(declare-fun mapNonEmpty!17384 () Bool)

(declare-fun tp!878360 () Bool)

(assert (=> mapNonEmpty!17384 (= mapRes!17384 (and tp!878360 e!1750466))))

(declare-fun mapRest!17384 () (Array (_ BitVec 32) List!32175))

(declare-fun mapKey!17384 () (_ BitVec 32))

(assert (=> mapNonEmpty!17384 (= mapRest!17377 (store mapRest!17384 mapKey!17384 mapValue!17384))))

(declare-fun tp!878369 () Bool)

(declare-fun setNonEmpty!23048 () Bool)

(declare-fun setElem!23049 () Context!4642)

(declare-fun e!1750462 () Bool)

(assert (=> setNonEmpty!23048 (= setRes!23049 (and tp!878369 (inv!43564 setElem!23049) e!1750462))))

(declare-fun mapDefault!17384 () List!32175)

(declare-fun setRest!23048 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23048 (= (_2!19070 (h!37495 mapDefault!17384)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23049 true) setRest!23048))))

(declare-fun setIsEmpty!23049 () Bool)

(assert (=> setIsEmpty!23049 setRes!23048))

(declare-fun setNonEmpty!23049 () Bool)

(declare-fun e!1750461 () Bool)

(declare-fun tp!878368 () Bool)

(declare-fun setElem!23048 () Context!4642)

(assert (=> setNonEmpty!23049 (= setRes!23048 (and tp!878368 (inv!43564 setElem!23048) e!1750461))))

(declare-fun setRest!23049 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23049 (= (_2!19070 (h!37495 mapValue!17384)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23048 true) setRest!23049))))

(declare-fun tp!878362 () Bool)

(declare-fun e!1750465 () Bool)

(declare-fun e!1750464 () Bool)

(declare-fun b!2775308 () Bool)

(declare-fun tp!878361 () Bool)

(assert (=> b!2775308 (= e!1750464 (and tp!878361 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapDefault!17384)))) e!1750465 tp_is_empty!14023 setRes!23049 tp!878362))))

(declare-fun condSetEmpty!23049 () Bool)

(assert (=> b!2775308 (= condSetEmpty!23049 (= (_2!19070 (h!37495 mapDefault!17384)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun condMapEmpty!17384 () Bool)

(assert (=> mapNonEmpty!17378 (= condMapEmpty!17384 (= mapRest!17377 ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17384)))))

(assert (=> mapNonEmpty!17378 (= tp!878256 (and e!1750464 mapRes!17384))))

(declare-fun b!2775307 () Bool)

(declare-fun tp!878363 () Bool)

(assert (=> b!2775307 (= e!1750461 tp!878363)))

(declare-fun b!2775309 () Bool)

(declare-fun tp!878366 () Bool)

(assert (=> b!2775309 (= e!1750463 tp!878366)))

(declare-fun b!2775310 () Bool)

(declare-fun tp!878364 () Bool)

(assert (=> b!2775310 (= e!1750465 tp!878364)))

(declare-fun b!2775311 () Bool)

(declare-fun tp!878370 () Bool)

(assert (=> b!2775311 (= e!1750462 tp!878370)))

(assert (= (and mapNonEmpty!17378 condMapEmpty!17384) mapIsEmpty!17384))

(assert (= (and mapNonEmpty!17378 (not condMapEmpty!17384)) mapNonEmpty!17384))

(assert (= b!2775306 b!2775309))

(assert (= (and b!2775306 condSetEmpty!23048) setIsEmpty!23049))

(assert (= (and b!2775306 (not condSetEmpty!23048)) setNonEmpty!23049))

(assert (= setNonEmpty!23049 b!2775307))

(assert (= (and mapNonEmpty!17384 ((_ is Cons!32075) mapValue!17384)) b!2775306))

(assert (= b!2775308 b!2775310))

(assert (= (and b!2775308 condSetEmpty!23049) setIsEmpty!23048))

(assert (= (and b!2775308 (not condSetEmpty!23049)) setNonEmpty!23048))

(assert (= setNonEmpty!23048 b!2775311))

(assert (= (and mapNonEmpty!17378 ((_ is Cons!32075) mapDefault!17384)) b!2775308))

(declare-fun m!3202081 () Bool)

(assert (=> b!2775306 m!3202081))

(declare-fun m!3202083 () Bool)

(assert (=> setNonEmpty!23048 m!3202083))

(declare-fun m!3202085 () Bool)

(assert (=> b!2775308 m!3202085))

(declare-fun m!3202087 () Bool)

(assert (=> mapNonEmpty!17384 m!3202087))

(declare-fun m!3202089 () Bool)

(assert (=> setNonEmpty!23049 m!3202089))

(declare-fun b!2775312 () Bool)

(declare-fun e!1750469 () Bool)

(declare-fun tp!878373 () Bool)

(assert (=> b!2775312 (= e!1750469 tp!878373)))

(declare-fun setIsEmpty!23050 () Bool)

(declare-fun setRes!23050 () Bool)

(assert (=> setIsEmpty!23050 setRes!23050))

(declare-fun e!1750467 () Bool)

(assert (=> mapNonEmpty!17378 (= tp!878262 e!1750467)))

(declare-fun tp!878371 () Bool)

(declare-fun tp!878375 () Bool)

(declare-fun e!1750468 () Bool)

(declare-fun b!2775313 () Bool)

(assert (=> b!2775313 (= e!1750467 (and tp!878371 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapValue!17377)))) e!1750468 tp_is_empty!14023 setRes!23050 tp!878375))))

(declare-fun condSetEmpty!23050 () Bool)

(assert (=> b!2775313 (= condSetEmpty!23050 (= (_2!19070 (h!37495 mapValue!17377)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878374 () Bool)

(declare-fun setNonEmpty!23050 () Bool)

(declare-fun setElem!23050 () Context!4642)

(assert (=> setNonEmpty!23050 (= setRes!23050 (and tp!878374 (inv!43564 setElem!23050) e!1750469))))

(declare-fun setRest!23050 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23050 (= (_2!19070 (h!37495 mapValue!17377)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23050 true) setRest!23050))))

(declare-fun b!2775314 () Bool)

(declare-fun tp!878372 () Bool)

(assert (=> b!2775314 (= e!1750468 tp!878372)))

(assert (= b!2775313 b!2775314))

(assert (= (and b!2775313 condSetEmpty!23050) setIsEmpty!23050))

(assert (= (and b!2775313 (not condSetEmpty!23050)) setNonEmpty!23050))

(assert (= setNonEmpty!23050 b!2775312))

(assert (= (and mapNonEmpty!17378 ((_ is Cons!32075) mapValue!17377)) b!2775313))

(declare-fun m!3202091 () Bool)

(assert (=> b!2775313 m!3202091))

(declare-fun m!3202093 () Bool)

(assert (=> setNonEmpty!23050 m!3202093))

(declare-fun b!2775315 () Bool)

(declare-fun e!1750472 () Bool)

(declare-fun tp!878378 () Bool)

(assert (=> b!2775315 (= e!1750472 tp!878378)))

(declare-fun setIsEmpty!23051 () Bool)

(declare-fun setRes!23051 () Bool)

(assert (=> setIsEmpty!23051 setRes!23051))

(declare-fun e!1750470 () Bool)

(assert (=> b!2774914 (= tp!878248 e!1750470)))

(declare-fun e!1750471 () Bool)

(declare-fun tp!878380 () Bool)

(declare-fun b!2775316 () Bool)

(declare-fun tp!878376 () Bool)

(assert (=> b!2775316 (= e!1750470 (and tp!878376 (inv!43564 (_2!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) e!1750471 tp_is_empty!14023 setRes!23051 tp!878380))))

(declare-fun condSetEmpty!23051 () Bool)

(assert (=> b!2775316 (= condSetEmpty!23051 (= (_2!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878379 () Bool)

(declare-fun setElem!23051 () Context!4642)

(declare-fun setNonEmpty!23051 () Bool)

(assert (=> setNonEmpty!23051 (= setRes!23051 (and tp!878379 (inv!43564 setElem!23051) e!1750472))))

(declare-fun setRest!23051 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23051 (= (_2!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23051 true) setRest!23051))))

(declare-fun b!2775317 () Bool)

(declare-fun tp!878377 () Bool)

(assert (=> b!2775317 (= e!1750471 tp!878377)))

(assert (= b!2775316 b!2775317))

(assert (= (and b!2775316 condSetEmpty!23051) setIsEmpty!23051))

(assert (= (and b!2775316 (not condSetEmpty!23051)) setNonEmpty!23051))

(assert (= setNonEmpty!23051 b!2775315))

(assert (= (and b!2774914 ((_ is Cons!32075) (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) b!2775316))

(declare-fun m!3202095 () Bool)

(assert (=> b!2775316 m!3202095))

(declare-fun m!3202097 () Bool)

(assert (=> setNonEmpty!23051 m!3202097))

(declare-fun b!2775318 () Bool)

(declare-fun e!1750475 () Bool)

(declare-fun tp!878383 () Bool)

(assert (=> b!2775318 (= e!1750475 tp!878383)))

(declare-fun setIsEmpty!23052 () Bool)

(declare-fun setRes!23052 () Bool)

(assert (=> setIsEmpty!23052 setRes!23052))

(declare-fun e!1750473 () Bool)

(assert (=> b!2774914 (= tp!878251 e!1750473)))

(declare-fun tp!878385 () Bool)

(declare-fun e!1750474 () Bool)

(declare-fun b!2775319 () Bool)

(declare-fun tp!878381 () Bool)

(assert (=> b!2775319 (= e!1750473 (and tp!878381 (inv!43564 (_2!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) e!1750474 tp_is_empty!14023 setRes!23052 tp!878385))))

(declare-fun condSetEmpty!23052 () Bool)

(assert (=> b!2775319 (= condSetEmpty!23052 (= (_2!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23052 () Bool)

(declare-fun setElem!23052 () Context!4642)

(declare-fun tp!878384 () Bool)

(assert (=> setNonEmpty!23052 (= setRes!23052 (and tp!878384 (inv!43564 setElem!23052) e!1750475))))

(declare-fun setRest!23052 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23052 (= (_2!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23052 true) setRest!23052))))

(declare-fun b!2775320 () Bool)

(declare-fun tp!878382 () Bool)

(assert (=> b!2775320 (= e!1750474 tp!878382)))

(assert (= b!2775319 b!2775320))

(assert (= (and b!2775319 condSetEmpty!23052) setIsEmpty!23052))

(assert (= (and b!2775319 (not condSetEmpty!23052)) setNonEmpty!23052))

(assert (= setNonEmpty!23052 b!2775318))

(assert (= (and b!2774914 ((_ is Cons!32075) (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))) b!2775319))

(declare-fun m!3202099 () Bool)

(assert (=> b!2775319 m!3202099))

(declare-fun m!3202101 () Bool)

(assert (=> setNonEmpty!23052 m!3202101))

(declare-fun b!2775325 () Bool)

(declare-fun e!1750478 () Bool)

(declare-fun tp!878390 () Bool)

(declare-fun tp!878391 () Bool)

(assert (=> b!2775325 (= e!1750478 (and tp!878390 tp!878391))))

(assert (=> b!2774908 (= tp!878259 e!1750478)))

(assert (= (and b!2774908 ((_ is Cons!32073) (exprs!2821 setElem!23028))) b!2775325))

(declare-fun condSetEmpty!23055 () Bool)

(assert (=> setNonEmpty!23028 (= condSetEmpty!23055 (= setRest!23028 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23055 () Bool)

(assert (=> setNonEmpty!23028 (= tp!878246 setRes!23055)))

(declare-fun setIsEmpty!23055 () Bool)

(assert (=> setIsEmpty!23055 setRes!23055))

(declare-fun e!1750481 () Bool)

(declare-fun tp!878396 () Bool)

(declare-fun setElem!23055 () Context!4642)

(declare-fun setNonEmpty!23055 () Bool)

(assert (=> setNonEmpty!23055 (= setRes!23055 (and tp!878396 (inv!43564 setElem!23055) e!1750481))))

(declare-fun setRest!23055 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23055 (= setRest!23028 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23055 true) setRest!23055))))

(declare-fun b!2775330 () Bool)

(declare-fun tp!878397 () Bool)

(assert (=> b!2775330 (= e!1750481 tp!878397)))

(assert (= (and setNonEmpty!23028 condSetEmpty!23055) setIsEmpty!23055))

(assert (= (and setNonEmpty!23028 (not condSetEmpty!23055)) setNonEmpty!23055))

(assert (= setNonEmpty!23055 b!2775330))

(declare-fun m!3202103 () Bool)

(assert (=> setNonEmpty!23055 m!3202103))

(check-sat (not b!2775145) (not setNonEmpty!23036) (not b!2775128) (not b!2775174) (not d!806460) (not d!806462) (not bm!181516) (not d!806516) (not b!2775029) (not b!2775205) (not bm!181573) (not b!2775209) (not b!2775291) (not d!806562) (not bm!181570) (not b!2775095) (not bm!181565) (not b!2775114) (not d!806538) (not bm!181492) (not bm!181578) (not setNonEmpty!23035) (not b!2775030) (not bm!181577) (not b!2775256) (not b!2775125) (not d!806596) (not b!2774952) (not b!2775278) (not d!806570) (not b!2775310) (not bm!181575) (not d!806586) (not d!806488) (not bm!181554) (not b!2775036) b_and!203133 (not bm!181540) (not d!806532) (not bm!181564) (not b!2775252) (not b!2775115) (not mapNonEmpty!17381) (not b!2775177) (not d!806496) (not b!2775063) (not d!806476) (not b!2774959) (not setNonEmpty!23031) (not setNonEmpty!23055) (not bm!181558) tp_is_empty!14023 (not b!2775111) (not b!2775032) (not b!2774982) (not b!2775318) (not b!2775325) (not bm!181542) (not b!2775072) (not d!806500) (not bm!181541) (not d!806566) (not bm!181543) (not b!2775144) (not bm!181574) (not setNonEmpty!23048) (not b!2775290) (not b!2775152) (not d!806564) (not setNonEmpty!23041) (not b!2774960) (not bm!181493) (not bm!181545) (not bm!181547) (not d!806582) (not d!806590) (not b!2775077) (not mapNonEmpty!17384) (not b!2774975) (not d!806480) (not b!2775188) (not d!806502) (not b!2775319) (not d!806472) (not bm!181555) (not bm!181513) (not d!806478) (not d!806542) (not d!806466) (not b_next!79099) (not b!2775110) (not setNonEmpty!23043) (not b!2775123) (not b!2775132) (not b!2775203) (not bm!181568) (not d!806498) (not b!2775218) (not bm!181553) (not d!806530) (not b!2775200) (not b!2775255) (not bm!181515) (not b!2775330) (not b!2775094) (not setNonEmpty!23050) (not b!2775306) (not b!2775148) (not b!2774972) (not d!806602) (not b!2775272) (not b!2775180) (not b!2775090) (not d!806576) (not b!2774920) (not b_next!79095) (not b!2775316) (not b!2775273) (not b!2775275) (not d!806470) (not d!806522) (not d!806552) (not bm!181550) (not b!2775249) (not b_next!79097) (not b!2775091) (not b!2775104) (not bm!181517) (not bm!181548) (not d!806482) (not b!2775251) (not b!2775020) (not b!2775253) (not b!2775308) (not b!2775181) (not b!2775317) (not b!2775035) (not d!806486) (not setNonEmpty!23052) (not b!2775196) (not b!2775315) (not d!806536) (not d!806604) (not d!806494) (not bm!181561) (not b!2775307) (not b!2775083) (not bm!181557) (not b!2774953) b_and!203131 (not b!2774971) (not bm!181549) (not b!2775013) (not b!2775277) (not d!806490) (not b!2775195) (not d!806468) (not bm!181569) (not b!2775189) (not d!806568) (not d!806512) (not b!2775289) (not d!806484) (not d!806578) (not d!806600) (not setNonEmpty!23051) (not d!806474) (not b!2775206) (not d!806492) (not b!2775320) (not d!806550) (not d!806594) (not setNonEmpty!23042) (not b!2774970) (not b!2775033) (not d!806558) (not b!2775024) (not bm!181538) (not b!2775102) (not b!2775147) (not b!2775081) (not b!2775239) (not b!2775190) b_and!203129 (not bm!181559) (not bm!181544) (not b!2775135) (not b!2775106) (not b!2775274) (not bm!181576) (not b!2775279) (not d!806588) (not d!806458) b_and!203127 (not b!2775193) (not bm!181512) (not bm!181560) (not b!2775313) (not d!806506) (not b!2775220) (not bm!181571) (not setNonEmpty!23034) (not d!806546) (not bm!181552) (not d!806584) (not d!806580) (not bm!181556) (not b!2775250) (not bm!181539) (not b!2775092) (not b!2775311) (not d!806544) (not bm!181572) (not b!2775238) (not b!2774981) (not d!806520) (not d!806554) (not bm!181510) (not b!2775280) (not d!806598) (not b_next!79093) (not b!2775254) (not d!806560) (not b!2775065) (not b!2775017) (not b!2775116) (not d!806548) (not b!2775213) (not b!2775227) (not b!2775276) (not bm!181546) (not b!2775312) (not b!2775257) (not b!2775215) (not bm!181562) (not bm!181514) (not bm!181551) (not b!2775107) (not b!2775210) (not b!2775314) (not b!2775240) (not b!2775214) (not b!2775309) (not bm!181511) (not setNonEmpty!23049) (not b!2775139) (not bm!181563) (not b!2774974))
(check-sat b_and!203133 (not b_next!79099) (not b_next!79095) (not b_next!79097) b_and!203131 b_and!203129 b_and!203127 (not b_next!79093))
(get-model)

(declare-fun d!806610 () Bool)

(declare-fun res!1159707 () Bool)

(declare-fun e!1750484 () Bool)

(assert (=> d!806610 (=> (not res!1159707) (not e!1750484))))

(declare-fun valid!2978 (MutableMap!3719) Bool)

(assert (=> d!806610 (= res!1159707 (valid!2978 (cache!3862 cacheUp!820)))))

(assert (=> d!806610 (= (validCacheMapUp!369 (cache!3862 cacheUp!820)) e!1750484)))

(declare-fun b!2775335 () Bool)

(declare-fun res!1159708 () Bool)

(assert (=> b!2775335 (=> (not res!1159708) (not e!1750484))))

(declare-fun invariantList!452 (List!32174) Bool)

(declare-datatypes ((ListMap!1237 0))(
  ( (ListMap!1238 (toList!1842 List!32174)) )
))
(declare-fun map!6971 (MutableMap!3719) ListMap!1237)

(assert (=> b!2775335 (= res!1159708 (invariantList!452 (toList!1842 (map!6971 (cache!3862 cacheUp!820)))))))

(declare-fun b!2775336 () Bool)

(declare-fun lambda!101824 () Int)

(declare-fun forall!6633 (List!32174 Int) Bool)

(assert (=> b!2775336 (= e!1750484 (forall!6633 (toList!1842 (map!6971 (cache!3862 cacheUp!820))) lambda!101824))))

(assert (= (and d!806610 res!1159707) b!2775335))

(assert (= (and b!2775335 res!1159708) b!2775336))

(declare-fun m!3202106 () Bool)

(assert (=> d!806610 m!3202106))

(declare-fun m!3202108 () Bool)

(assert (=> b!2775335 m!3202108))

(declare-fun m!3202110 () Bool)

(assert (=> b!2775335 m!3202110))

(assert (=> b!2775336 m!3202108))

(declare-fun m!3202112 () Bool)

(assert (=> b!2775336 m!3202112))

(assert (=> b!2775200 d!806610))

(assert (=> b!2775188 d!806508))

(declare-fun d!806612 () Bool)

(declare-fun e!1750485 () Bool)

(assert (=> d!806612 e!1750485))

(declare-fun res!1159709 () Bool)

(assert (=> d!806612 (=> (not res!1159709) (not e!1750485))))

(declare-fun lt!989964 () List!32172)

(assert (=> d!806612 (= res!1159709 (= (content!4508 lt!989964) ((_ map or) (content!4508 Nil!32072) (content!4508 lt!989801))))))

(declare-fun e!1750486 () List!32172)

(assert (=> d!806612 (= lt!989964 e!1750486)))

(declare-fun c!450607 () Bool)

(assert (=> d!806612 (= c!450607 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806612 (= (++!7932 Nil!32072 lt!989801) lt!989964)))

(declare-fun b!2775340 () Bool)

(assert (=> b!2775340 (= e!1750485 (or (not (= lt!989801 Nil!32072)) (= lt!989964 Nil!32072)))))

(declare-fun b!2775338 () Bool)

(assert (=> b!2775338 (= e!1750486 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) lt!989801)))))

(declare-fun b!2775337 () Bool)

(assert (=> b!2775337 (= e!1750486 lt!989801)))

(declare-fun b!2775339 () Bool)

(declare-fun res!1159710 () Bool)

(assert (=> b!2775339 (=> (not res!1159710) (not e!1750485))))

(assert (=> b!2775339 (= res!1159710 (= (size!24869 lt!989964) (+ (size!24869 Nil!32072) (size!24869 lt!989801))))))

(assert (= (and d!806612 c!450607) b!2775337))

(assert (= (and d!806612 (not c!450607)) b!2775338))

(assert (= (and d!806612 res!1159709) b!2775339))

(assert (= (and b!2775339 res!1159710) b!2775340))

(declare-fun m!3202114 () Bool)

(assert (=> d!806612 m!3202114))

(assert (=> d!806612 m!3201467))

(declare-fun m!3202116 () Bool)

(assert (=> d!806612 m!3202116))

(declare-fun m!3202118 () Bool)

(assert (=> b!2775338 m!3202118))

(declare-fun m!3202120 () Bool)

(assert (=> b!2775339 m!3202120))

(assert (=> b!2775339 m!3201399))

(declare-fun m!3202122 () Bool)

(assert (=> b!2775339 m!3202122))

(assert (=> d!806494 d!806612))

(assert (=> d!806494 d!806508))

(assert (=> d!806494 d!806514))

(declare-fun bs!505307 () Bool)

(declare-fun d!806614 () Bool)

(assert (= bs!505307 (and d!806614 d!806468)))

(declare-fun lambda!101827 () Int)

(assert (=> bs!505307 (not (= lambda!101827 lambda!101809))))

(declare-fun bs!505308 () Bool)

(assert (= bs!505308 (and d!806614 b!2774981)))

(assert (=> bs!505308 (not (= lambda!101827 lambda!101810))))

(declare-fun bs!505309 () Bool)

(assert (= bs!505309 (and d!806614 b!2774982)))

(assert (=> bs!505309 (not (= lambda!101827 lambda!101811))))

(declare-fun bs!505310 () Bool)

(assert (= bs!505310 (and d!806614 d!806544)))

(assert (=> bs!505310 (not (= lambda!101827 lambda!101814))))

(assert (=> d!806614 true))

(declare-fun order!17239 () Int)

(declare-fun dynLambda!13607 (Int Int) Int)

(assert (=> d!806614 (< (dynLambda!13607 order!17239 lambda!101809) (dynLambda!13607 order!17239 lambda!101827))))

(assert (=> d!806614 (exists!976 lt!989571 lambda!101827)))

(declare-fun lt!989967 () Unit!46204)

(declare-fun choose!16282 (List!32176 Int) Unit!46204)

(assert (=> d!806614 (= lt!989967 (choose!16282 lt!989571 lambda!101809))))

(declare-fun forall!6634 (List!32176 Int) Bool)

(assert (=> d!806614 (not (forall!6634 lt!989571 lambda!101809))))

(assert (=> d!806614 (= (lemmaNotForallThenExists!84 lt!989571 lambda!101809) lt!989967)))

(declare-fun bs!505311 () Bool)

(assert (= bs!505311 d!806614))

(declare-fun m!3202124 () Bool)

(assert (=> bs!505311 m!3202124))

(declare-fun m!3202126 () Bool)

(assert (=> bs!505311 m!3202126))

(declare-fun m!3202128 () Bool)

(assert (=> bs!505311 m!3202128))

(assert (=> b!2774981 d!806614))

(declare-fun b!2775351 () Bool)

(declare-fun e!1750493 () List!32172)

(assert (=> b!2775351 (= e!1750493 Nil!32072)))

(declare-fun b!2775352 () Bool)

(declare-fun e!1750494 () List!32172)

(assert (=> b!2775352 (= e!1750493 e!1750494)))

(declare-fun c!450613 () Bool)

(assert (=> b!2775352 (= c!450613 ((_ is Leaf!15201) (c!450499 input!5495)))))

(declare-fun d!806616 () Bool)

(declare-fun c!450612 () Bool)

(assert (=> d!806616 (= c!450612 ((_ is Empty!9981) (c!450499 input!5495)))))

(assert (=> d!806616 (= (list!12097 (c!450499 input!5495)) e!1750493)))

(declare-fun b!2775353 () Bool)

(declare-fun list!12098 (IArray!19967) List!32172)

(assert (=> b!2775353 (= e!1750494 (list!12098 (xs!13091 (c!450499 input!5495))))))

(declare-fun b!2775354 () Bool)

(assert (=> b!2775354 (= e!1750494 (++!7932 (list!12097 (left!24418 (c!450499 input!5495))) (list!12097 (right!24748 (c!450499 input!5495)))))))

(assert (= (and d!806616 c!450612) b!2775351))

(assert (= (and d!806616 (not c!450612)) b!2775352))

(assert (= (and b!2775352 c!450613) b!2775353))

(assert (= (and b!2775352 (not c!450613)) b!2775354))

(declare-fun m!3202130 () Bool)

(assert (=> b!2775353 m!3202130))

(declare-fun m!3202132 () Bool)

(assert (=> b!2775354 m!3202132))

(declare-fun m!3202134 () Bool)

(assert (=> b!2775354 m!3202134))

(assert (=> b!2775354 m!3202132))

(assert (=> b!2775354 m!3202134))

(declare-fun m!3202136 () Bool)

(assert (=> b!2775354 m!3202136))

(assert (=> d!806470 d!806616))

(declare-fun bs!505312 () Bool)

(declare-fun d!806618 () Bool)

(assert (= bs!505312 (and d!806618 d!806598)))

(declare-fun lambda!101828 () Int)

(assert (=> bs!505312 (= (= lt!989486 lt!989475) (= lambda!101828 lambda!101820))))

(declare-fun bs!505313 () Bool)

(assert (= bs!505313 (and d!806618 d!806600)))

(assert (=> bs!505313 (= (= lt!989486 lt!989503) (= lambda!101828 lambda!101821))))

(assert (=> d!806618 true))

(assert (=> d!806618 (= (derivationStepZipper!369 z!3597 lt!989486) (flatMap!186 z!3597 lambda!101828))))

(declare-fun bs!505314 () Bool)

(assert (= bs!505314 d!806618))

(declare-fun m!3202138 () Bool)

(assert (=> bs!505314 m!3202138))

(assert (=> d!806542 d!806618))

(declare-fun b!2775403 () Bool)

(declare-fun b_free!78397 () Bool)

(declare-fun b_next!79101 () Bool)

(assert (=> b!2775403 (= b_free!78397 (not b_next!79101))))

(declare-fun tp!878442 () Bool)

(declare-fun b_and!203135 () Bool)

(assert (=> b!2775403 (= tp!878442 b_and!203135)))

(declare-fun b!2775389 () Bool)

(declare-fun b_free!78399 () Bool)

(declare-fun b_next!79103 () Bool)

(assert (=> b!2775389 (= b_free!78399 (not b_next!79103))))

(declare-fun tp!878444 () Bool)

(declare-fun b_and!203137 () Bool)

(assert (=> b!2775389 (= tp!878444 b_and!203137)))

(declare-fun b!2775391 () Bool)

(declare-fun b_free!78401 () Bool)

(declare-fun b_next!79105 () Bool)

(assert (=> b!2775391 (= b_free!78401 (not b_next!79105))))

(declare-fun tp!878439 () Bool)

(declare-fun b_and!203139 () Bool)

(assert (=> b!2775391 (= tp!878439 b_and!203139)))

(declare-fun b!2775398 () Bool)

(declare-fun b_free!78403 () Bool)

(declare-fun b_next!79107 () Bool)

(assert (=> b!2775398 (= b_free!78403 (not b_next!79107))))

(declare-fun tp!878441 () Bool)

(declare-fun b_and!203141 () Bool)

(assert (=> b!2775398 (= tp!878441 b_and!203141)))

(declare-fun e!1750542 () Bool)

(declare-fun e!1750536 () Bool)

(assert (=> b!2775389 (= e!1750542 (and e!1750536 tp!878444))))

(declare-fun b!2775390 () Bool)

(declare-fun res!1159718 () Bool)

(declare-fun e!1750534 () Bool)

(assert (=> b!2775390 (=> (not res!1159718) (not e!1750534))))

(declare-fun res!1159717 () tuple3!4908)

(assert (=> b!2775390 (= res!1159718 (valid!2976 (_2!19073 res!1159717)))))

(declare-fun e!1750546 () Bool)

(declare-fun e!1750547 () Bool)

(assert (=> b!2775391 (= e!1750546 (and e!1750547 tp!878439))))

(declare-fun b!2775392 () Bool)

(declare-fun e!1750538 () Bool)

(assert (=> b!2775392 (= e!1750538 e!1750546)))

(declare-fun d!806620 () Bool)

(assert (=> d!806620 e!1750534))

(declare-fun res!1159719 () Bool)

(assert (=> d!806620 (=> (not res!1159719) (not e!1750534))))

(assert (=> d!806620 (= res!1159719 (= (_1!19073 res!1159717) (derivationStepZipper!369 z!3597 lt!989486)))))

(declare-fun e!1750543 () Bool)

(declare-fun setRes!23058 () Bool)

(assert (=> d!806620 (and setRes!23058 (inv!43560 (_2!19073 res!1159717)) e!1750538 (inv!43561 (_3!2924 res!1159717)) e!1750543)))

(declare-fun condSetEmpty!23058 () Bool)

(assert (=> d!806620 (= condSetEmpty!23058 (= (_1!19073 res!1159717) ((as const (Array Context!4642 Bool)) false)))))

(assert (=> d!806620 (= (choose!16279 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)) res!1159717)))

(declare-fun b!2775393 () Bool)

(declare-fun e!1750541 () Bool)

(declare-fun e!1750532 () Bool)

(assert (=> b!2775393 (= e!1750541 e!1750532)))

(declare-fun b!2775394 () Bool)

(declare-fun e!1750548 () Bool)

(declare-fun lt!989972 () MutLongMap!3813)

(assert (=> b!2775394 (= e!1750547 (and e!1750548 ((_ is LongMap!3813) lt!989972)))))

(assert (=> b!2775394 (= lt!989972 (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))))

(declare-fun b!2775395 () Bool)

(declare-fun e!1750544 () Bool)

(declare-fun tp!878435 () Bool)

(assert (=> b!2775395 (= e!1750544 tp!878435)))

(declare-fun b!2775396 () Bool)

(declare-fun e!1750539 () Bool)

(assert (=> b!2775396 (= e!1750532 e!1750539)))

(declare-fun b!2775397 () Bool)

(declare-fun e!1750535 () Bool)

(declare-fun e!1750533 () Bool)

(assert (=> b!2775397 (= e!1750535 e!1750533)))

(declare-fun setIsEmpty!23058 () Bool)

(assert (=> setIsEmpty!23058 setRes!23058))

(declare-fun mapNonEmpty!17389 () Bool)

(declare-fun mapRes!17390 () Bool)

(declare-fun tp!878438 () Bool)

(declare-fun tp!878434 () Bool)

(assert (=> mapNonEmpty!17389 (= mapRes!17390 (and tp!878438 tp!878434))))

(declare-fun mapKey!17389 () (_ BitVec 32))

(declare-fun mapRest!17389 () (Array (_ BitVec 32) List!32174))

(declare-fun mapValue!17389 () List!32174)

(assert (=> mapNonEmpty!17389 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))))) (store mapRest!17389 mapKey!17389 mapValue!17389))))

(declare-fun tp!878437 () Bool)

(declare-fun tp!878431 () Bool)

(declare-fun e!1750531 () Bool)

(assert (=> b!2775398 (= e!1750539 (and tp!878441 tp!878437 tp!878431 (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))))) (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))))) e!1750531))))

(declare-fun b!2775399 () Bool)

(assert (=> b!2775399 (= e!1750548 e!1750535)))

(declare-fun b!2775400 () Bool)

(declare-fun tp!878443 () Bool)

(declare-fun mapRes!17389 () Bool)

(assert (=> b!2775400 (= e!1750531 (and tp!878443 mapRes!17389))))

(declare-fun condMapEmpty!17389 () Bool)

(declare-fun mapDefault!17389 () List!32175)

(assert (=> b!2775400 (= condMapEmpty!17389 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))))) ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17389)))))

(declare-fun b!2775401 () Bool)

(declare-fun e!1750540 () Bool)

(declare-fun tp!878445 () Bool)

(assert (=> b!2775401 (= e!1750540 (and tp!878445 mapRes!17390))))

(declare-fun condMapEmpty!17390 () Bool)

(declare-fun mapDefault!17390 () List!32174)

(assert (=> b!2775401 (= condMapEmpty!17390 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))))) ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17390)))))

(declare-fun b!2775402 () Bool)

(assert (=> b!2775402 (= e!1750534 (valid!2977 (_3!2924 res!1159717)))))

(declare-fun setNonEmpty!23058 () Bool)

(declare-fun setElem!23058 () Context!4642)

(declare-fun tp!878432 () Bool)

(assert (=> setNonEmpty!23058 (= setRes!23058 (and tp!878432 (inv!43564 setElem!23058) e!1750544))))

(declare-fun setRest!23058 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23058 (= (_1!19073 res!1159717) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23058 true) setRest!23058))))

(declare-fun mapIsEmpty!17389 () Bool)

(assert (=> mapIsEmpty!17389 mapRes!17389))

(declare-fun tp!878433 () Bool)

(declare-fun tp!878430 () Bool)

(assert (=> b!2775403 (= e!1750533 (and tp!878442 tp!878433 tp!878430 (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))))) (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))))) e!1750540))))

(declare-fun mapIsEmpty!17390 () Bool)

(assert (=> mapIsEmpty!17390 mapRes!17390))

(declare-fun mapNonEmpty!17390 () Bool)

(declare-fun tp!878436 () Bool)

(declare-fun tp!878440 () Bool)

(assert (=> mapNonEmpty!17390 (= mapRes!17389 (and tp!878436 tp!878440))))

(declare-fun mapKey!17390 () (_ BitVec 32))

(declare-fun mapValue!17390 () List!32175)

(declare-fun mapRest!17390 () (Array (_ BitVec 32) List!32175))

(assert (=> mapNonEmpty!17390 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))))) (store mapRest!17390 mapKey!17390 mapValue!17390))))

(declare-fun b!2775404 () Bool)

(declare-fun lt!989973 () MutLongMap!3814)

(assert (=> b!2775404 (= e!1750536 (and e!1750541 ((_ is LongMap!3814) lt!989973)))))

(assert (=> b!2775404 (= lt!989973 (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))))

(declare-fun b!2775405 () Bool)

(assert (=> b!2775405 (= e!1750543 e!1750542)))

(assert (= (and d!806620 condSetEmpty!23058) setIsEmpty!23058))

(assert (= (and d!806620 (not condSetEmpty!23058)) setNonEmpty!23058))

(assert (= setNonEmpty!23058 b!2775395))

(assert (= (and b!2775401 condMapEmpty!17390) mapIsEmpty!17390))

(assert (= (and b!2775401 (not condMapEmpty!17390)) mapNonEmpty!17389))

(assert (= b!2775403 b!2775401))

(assert (= b!2775397 b!2775403))

(assert (= b!2775399 b!2775397))

(assert (= (and b!2775394 ((_ is LongMap!3813) (v!33683 (underlying!7830 (cache!3862 (_2!19073 res!1159717)))))) b!2775399))

(assert (= b!2775391 b!2775394))

(assert (= (and b!2775392 ((_ is HashMap!3719) (cache!3862 (_2!19073 res!1159717)))) b!2775391))

(assert (= d!806620 b!2775392))

(assert (= (and b!2775400 condMapEmpty!17389) mapIsEmpty!17389))

(assert (= (and b!2775400 (not condMapEmpty!17389)) mapNonEmpty!17390))

(assert (= b!2775398 b!2775400))

(assert (= b!2775396 b!2775398))

(assert (= b!2775393 b!2775396))

(assert (= (and b!2775404 ((_ is LongMap!3814) (v!33685 (underlying!7832 (cache!3863 (_3!2924 res!1159717)))))) b!2775393))

(assert (= b!2775389 b!2775404))

(assert (= (and b!2775405 ((_ is HashMap!3720) (cache!3863 (_3!2924 res!1159717)))) b!2775389))

(assert (= d!806620 b!2775405))

(assert (= (and d!806620 res!1159719) b!2775390))

(assert (= (and b!2775390 res!1159718) b!2775402))

(declare-fun m!3202140 () Bool)

(assert (=> mapNonEmpty!17389 m!3202140))

(declare-fun m!3202142 () Bool)

(assert (=> setNonEmpty!23058 m!3202142))

(declare-fun m!3202144 () Bool)

(assert (=> b!2775398 m!3202144))

(declare-fun m!3202146 () Bool)

(assert (=> b!2775398 m!3202146))

(declare-fun m!3202148 () Bool)

(assert (=> b!2775403 m!3202148))

(declare-fun m!3202150 () Bool)

(assert (=> b!2775403 m!3202150))

(declare-fun m!3202152 () Bool)

(assert (=> b!2775390 m!3202152))

(declare-fun m!3202154 () Bool)

(assert (=> b!2775402 m!3202154))

(assert (=> d!806620 m!3201853))

(declare-fun m!3202156 () Bool)

(assert (=> d!806620 m!3202156))

(declare-fun m!3202158 () Bool)

(assert (=> d!806620 m!3202158))

(declare-fun m!3202160 () Bool)

(assert (=> mapNonEmpty!17390 m!3202160))

(assert (=> d!806542 d!806620))

(declare-fun bs!505315 () Bool)

(declare-fun d!806622 () Bool)

(assert (= bs!505315 (and d!806622 d!806578)))

(declare-fun lambda!101829 () Int)

(assert (=> bs!505315 (= lambda!101829 lambda!101817)))

(assert (=> d!806622 (= (inv!43564 setElem!23034) (forall!6632 (exprs!2821 setElem!23034) lambda!101829))))

(declare-fun bs!505316 () Bool)

(assert (= bs!505316 d!806622))

(declare-fun m!3202162 () Bool)

(assert (=> bs!505316 m!3202162))

(assert (=> setNonEmpty!23034 d!806622))

(declare-fun d!806624 () Bool)

(assert (=> d!806624 (= (isEmpty!18097 (_1!19065 lt!989657)) ((_ is Nil!32072) (_1!19065 lt!989657)))))

(assert (=> b!2775017 d!806624))

(declare-fun d!806626 () Bool)

(declare-fun lt!989976 () Bool)

(assert (=> d!806626 (= lt!989976 (exists!976 (toList!1841 z!3597) lambda!101814))))

(declare-fun choose!16283 ((InoxSet Context!4642) Int) Bool)

(assert (=> d!806626 (= lt!989976 (choose!16283 z!3597 lambda!101814))))

(assert (=> d!806626 (= (exists!977 z!3597 lambda!101814) lt!989976)))

(declare-fun bs!505317 () Bool)

(assert (= bs!505317 d!806626))

(assert (=> bs!505317 m!3201511))

(assert (=> bs!505317 m!3201511))

(declare-fun m!3202164 () Bool)

(assert (=> bs!505317 m!3202164))

(declare-fun m!3202166 () Bool)

(assert (=> bs!505317 m!3202166))

(assert (=> d!806544 d!806626))

(assert (=> d!806570 d!806610))

(declare-fun d!806628 () Bool)

(assert (=> d!806628 (= lt!989496 lt!989543)))

(assert (=> d!806628 true))

(declare-fun _$63!874 () Unit!46204)

(assert (=> d!806628 (= (choose!16273 Nil!32072 lt!989496 Nil!32072 lt!989543 lt!989496) _$63!874)))

(assert (=> d!806492 d!806628))

(declare-fun b!2775407 () Bool)

(declare-fun res!1159721 () Bool)

(declare-fun e!1750551 () Bool)

(assert (=> b!2775407 (=> (not res!1159721) (not e!1750551))))

(assert (=> b!2775407 (= res!1159721 (= (head!6152 Nil!32072) (head!6152 lt!989496)))))

(declare-fun b!2775406 () Bool)

(declare-fun e!1750550 () Bool)

(assert (=> b!2775406 (= e!1750550 e!1750551)))

(declare-fun res!1159722 () Bool)

(assert (=> b!2775406 (=> (not res!1159722) (not e!1750551))))

(assert (=> b!2775406 (= res!1159722 (not ((_ is Nil!32072) lt!989496)))))

(declare-fun d!806630 () Bool)

(declare-fun e!1750549 () Bool)

(assert (=> d!806630 e!1750549))

(declare-fun res!1159723 () Bool)

(assert (=> d!806630 (=> res!1159723 e!1750549)))

(declare-fun lt!989977 () Bool)

(assert (=> d!806630 (= res!1159723 (not lt!989977))))

(assert (=> d!806630 (= lt!989977 e!1750550)))

(declare-fun res!1159720 () Bool)

(assert (=> d!806630 (=> res!1159720 e!1750550)))

(assert (=> d!806630 (= res!1159720 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806630 (= (isPrefix!2557 Nil!32072 lt!989496) lt!989977)))

(declare-fun b!2775408 () Bool)

(assert (=> b!2775408 (= e!1750551 (isPrefix!2557 (tail!4390 Nil!32072) (tail!4390 lt!989496)))))

(declare-fun b!2775409 () Bool)

(assert (=> b!2775409 (= e!1750549 (>= (size!24869 lt!989496) (size!24869 Nil!32072)))))

(assert (= (and d!806630 (not res!1159720)) b!2775406))

(assert (= (and b!2775406 res!1159722) b!2775407))

(assert (= (and b!2775407 res!1159721) b!2775408))

(assert (= (and d!806630 (not res!1159723)) b!2775409))

(assert (=> b!2775407 m!3201483))

(assert (=> b!2775407 m!3201449))

(assert (=> b!2775408 m!3201487))

(assert (=> b!2775408 m!3201395))

(assert (=> b!2775408 m!3201487))

(assert (=> b!2775408 m!3201395))

(declare-fun m!3202168 () Bool)

(assert (=> b!2775408 m!3202168))

(assert (=> b!2775409 m!3201391))

(assert (=> b!2775409 m!3201399))

(assert (=> d!806492 d!806630))

(declare-fun b!2775410 () Bool)

(declare-fun e!1750555 () Int)

(declare-fun e!1750556 () Int)

(assert (=> b!2775410 (= e!1750555 e!1750556)))

(declare-fun c!450617 () Bool)

(declare-fun call!181584 () Int)

(assert (=> b!2775410 (= c!450617 (>= (- 0 1) call!181584))))

(declare-fun b!2775411 () Bool)

(assert (=> b!2775411 (= e!1750556 0)))

(declare-fun d!806632 () Bool)

(declare-fun e!1750552 () Bool)

(assert (=> d!806632 e!1750552))

(declare-fun res!1159724 () Bool)

(assert (=> d!806632 (=> (not res!1159724) (not e!1750552))))

(declare-fun lt!989978 () List!32172)

(assert (=> d!806632 (= res!1159724 (= ((_ map implies) (content!4508 lt!989978) (content!4508 (t!228300 lt!989496))) ((as const (InoxSet C!16364)) true)))))

(declare-fun e!1750554 () List!32172)

(assert (=> d!806632 (= lt!989978 e!1750554)))

(declare-fun c!450615 () Bool)

(assert (=> d!806632 (= c!450615 ((_ is Nil!32072) (t!228300 lt!989496)))))

(assert (=> d!806632 (= (drop!1710 (t!228300 lt!989496) (- 0 1)) lt!989978)))

(declare-fun b!2775412 () Bool)

(declare-fun e!1750553 () List!32172)

(assert (=> b!2775412 (= e!1750553 (t!228300 lt!989496))))

(declare-fun b!2775413 () Bool)

(assert (=> b!2775413 (= e!1750552 (= (size!24869 lt!989978) e!1750555))))

(declare-fun c!450614 () Bool)

(assert (=> b!2775413 (= c!450614 (<= (- 0 1) 0))))

(declare-fun b!2775414 () Bool)

(assert (=> b!2775414 (= e!1750554 e!1750553)))

(declare-fun c!450616 () Bool)

(assert (=> b!2775414 (= c!450616 (<= (- 0 1) 0))))

(declare-fun b!2775415 () Bool)

(assert (=> b!2775415 (= e!1750554 Nil!32072)))

(declare-fun bm!181579 () Bool)

(assert (=> bm!181579 (= call!181584 (size!24869 (t!228300 lt!989496)))))

(declare-fun b!2775416 () Bool)

(assert (=> b!2775416 (= e!1750553 (drop!1710 (t!228300 (t!228300 lt!989496)) (- (- 0 1) 1)))))

(declare-fun b!2775417 () Bool)

(assert (=> b!2775417 (= e!1750556 (- call!181584 (- 0 1)))))

(declare-fun b!2775418 () Bool)

(assert (=> b!2775418 (= e!1750555 call!181584)))

(assert (= (and d!806632 c!450615) b!2775415))

(assert (= (and d!806632 (not c!450615)) b!2775414))

(assert (= (and b!2775414 c!450616) b!2775412))

(assert (= (and b!2775414 (not c!450616)) b!2775416))

(assert (= (and d!806632 res!1159724) b!2775413))

(assert (= (and b!2775413 c!450614) b!2775418))

(assert (= (and b!2775413 (not c!450614)) b!2775410))

(assert (= (and b!2775410 c!450617) b!2775411))

(assert (= (and b!2775410 (not c!450617)) b!2775417))

(assert (= (or b!2775418 b!2775410 b!2775417) bm!181579))

(declare-fun m!3202170 () Bool)

(assert (=> d!806632 m!3202170))

(declare-fun m!3202172 () Bool)

(assert (=> d!806632 m!3202172))

(declare-fun m!3202174 () Bool)

(assert (=> b!2775413 m!3202174))

(assert (=> bm!181579 m!3201755))

(declare-fun m!3202176 () Bool)

(assert (=> b!2775416 m!3202176))

(assert (=> b!2775177 d!806632))

(declare-fun d!806634 () Bool)

(assert (=> d!806634 (= lt!989479 lt!989816)))

(declare-fun lt!989979 () Unit!46204)

(assert (=> d!806634 (= lt!989979 (choose!16273 lt!989491 lt!989479 lt!989491 lt!989816 (list!12096 input!5495)))))

(assert (=> d!806634 (isPrefix!2557 lt!989491 (list!12096 input!5495))))

(assert (=> d!806634 (= (lemmaSamePrefixThenSameSuffix!1141 lt!989491 lt!989479 lt!989491 lt!989816 (list!12096 input!5495)) lt!989979)))

(declare-fun bs!505318 () Bool)

(assert (= bs!505318 d!806634))

(assert (=> bs!505318 m!3201349))

(declare-fun m!3202178 () Bool)

(assert (=> bs!505318 m!3202178))

(assert (=> bs!505318 m!3201349))

(declare-fun m!3202180 () Bool)

(assert (=> bs!505318 m!3202180))

(assert (=> d!806496 d!806634))

(declare-fun b!2775419 () Bool)

(declare-fun e!1750564 () Unit!46204)

(declare-fun Unit!46229 () Unit!46204)

(assert (=> b!2775419 (= e!1750564 Unit!46229)))

(declare-fun lt!990000 () Unit!46204)

(declare-fun call!181590 () Unit!46204)

(assert (=> b!2775419 (= lt!990000 call!181590)))

(declare-fun call!181586 () Bool)

(assert (=> b!2775419 call!181586))

(declare-fun lt!989996 () Unit!46204)

(assert (=> b!2775419 (= lt!989996 lt!990000)))

(declare-fun lt!990005 () Unit!46204)

(declare-fun call!181589 () Unit!46204)

(assert (=> b!2775419 (= lt!990005 call!181589)))

(assert (=> b!2775419 (= (list!12096 input!5495) lt!989491)))

(declare-fun lt!989989 () Unit!46204)

(assert (=> b!2775419 (= lt!989989 lt!990005)))

(assert (=> b!2775419 false))

(declare-fun d!806636 () Bool)

(declare-fun e!1750562 () Bool)

(assert (=> d!806636 e!1750562))

(declare-fun res!1159726 () Bool)

(assert (=> d!806636 (=> (not res!1159726) (not e!1750562))))

(declare-fun lt!990004 () tuple2!32288)

(assert (=> d!806636 (= res!1159726 (= (++!7932 (_1!19065 lt!990004) (_2!19065 lt!990004)) (list!12096 input!5495)))))

(declare-fun e!1750558 () tuple2!32288)

(assert (=> d!806636 (= lt!990004 e!1750558)))

(declare-fun c!450622 () Bool)

(assert (=> d!806636 (= c!450622 (lostCauseZipper!443 call!181483))))

(declare-fun lt!989992 () Unit!46204)

(declare-fun Unit!46230 () Unit!46204)

(assert (=> d!806636 (= lt!989992 Unit!46230)))

(assert (=> d!806636 (= (getSuffix!1239 (list!12096 input!5495) lt!989491) lt!989479)))

(declare-fun lt!989991 () Unit!46204)

(declare-fun lt!989994 () Unit!46204)

(assert (=> d!806636 (= lt!989991 lt!989994)))

(declare-fun lt!989987 () List!32172)

(assert (=> d!806636 (= lt!989479 lt!989987)))

(assert (=> d!806636 (= lt!989994 (lemmaSamePrefixThenSameSuffix!1141 lt!989491 lt!989479 lt!989491 lt!989987 (list!12096 input!5495)))))

(assert (=> d!806636 (= lt!989987 (getSuffix!1239 (list!12096 input!5495) lt!989491))))

(declare-fun lt!989988 () Unit!46204)

(declare-fun lt!989993 () Unit!46204)

(assert (=> d!806636 (= lt!989988 lt!989993)))

(assert (=> d!806636 (isPrefix!2557 lt!989491 (++!7932 lt!989491 lt!989479))))

(assert (=> d!806636 (= lt!989993 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989491 lt!989479))))

(assert (=> d!806636 (= (++!7932 lt!989491 lt!989479) (list!12096 input!5495))))

(assert (=> d!806636 (= (findLongestMatchInnerZipper!27 call!181483 lt!989491 1 lt!989479 (list!12096 input!5495) lt!989489) lt!990004)))

(declare-fun bm!181580 () Bool)

(declare-fun call!181591 () C!16364)

(assert (=> bm!181580 (= call!181591 (head!6152 lt!989479))))

(declare-fun b!2775420 () Bool)

(declare-fun e!1750559 () tuple2!32288)

(declare-fun call!181585 () tuple2!32288)

(assert (=> b!2775420 (= e!1750559 call!181585)))

(declare-fun b!2775421 () Bool)

(declare-fun e!1750560 () Bool)

(assert (=> b!2775421 (= e!1750560 (>= (size!24869 (_1!19065 lt!990004)) (size!24869 lt!989491)))))

(declare-fun b!2775422 () Bool)

(declare-fun c!450619 () Bool)

(declare-fun call!181587 () Bool)

(assert (=> b!2775422 (= c!450619 call!181587)))

(declare-fun lt!989997 () Unit!46204)

(declare-fun lt!990003 () Unit!46204)

(assert (=> b!2775422 (= lt!989997 lt!990003)))

(assert (=> b!2775422 (= (list!12096 input!5495) lt!989491)))

(assert (=> b!2775422 (= lt!990003 call!181589)))

(declare-fun lt!989983 () Unit!46204)

(declare-fun lt!989990 () Unit!46204)

(assert (=> b!2775422 (= lt!989983 lt!989990)))

(assert (=> b!2775422 call!181586))

(assert (=> b!2775422 (= lt!989990 call!181590)))

(declare-fun e!1750557 () tuple2!32288)

(declare-fun e!1750563 () tuple2!32288)

(assert (=> b!2775422 (= e!1750557 e!1750563)))

(declare-fun b!2775423 () Bool)

(assert (=> b!2775423 (= e!1750563 (tuple2!32289 lt!989491 Nil!32072))))

(declare-fun b!2775424 () Bool)

(assert (=> b!2775424 (= e!1750558 e!1750557)))

(declare-fun c!450620 () Bool)

(assert (=> b!2775424 (= c!450620 (= 1 lt!989489))))

(declare-fun b!2775425 () Bool)

(assert (=> b!2775425 (= e!1750562 e!1750560)))

(declare-fun res!1159725 () Bool)

(assert (=> b!2775425 (=> res!1159725 e!1750560)))

(assert (=> b!2775425 (= res!1159725 (isEmpty!18097 (_1!19065 lt!990004)))))

(declare-fun b!2775426 () Bool)

(declare-fun e!1750561 () tuple2!32288)

(assert (=> b!2775426 (= e!1750561 (tuple2!32289 lt!989491 lt!989479))))

(declare-fun b!2775427 () Bool)

(declare-fun Unit!46231 () Unit!46204)

(assert (=> b!2775427 (= e!1750564 Unit!46231)))

(declare-fun bm!181581 () Bool)

(assert (=> bm!181581 (= call!181587 (nullableZipper!636 call!181483))))

(declare-fun b!2775428 () Bool)

(declare-fun c!450621 () Bool)

(assert (=> b!2775428 (= c!450621 call!181587)))

(declare-fun lt!989995 () Unit!46204)

(declare-fun lt!989998 () Unit!46204)

(assert (=> b!2775428 (= lt!989995 lt!989998)))

(declare-fun lt!989984 () List!32172)

(declare-fun lt!989982 () C!16364)

(assert (=> b!2775428 (= (++!7932 (++!7932 lt!989491 (Cons!32072 lt!989982 Nil!32072)) lt!989984) (list!12096 input!5495))))

(assert (=> b!2775428 (= lt!989998 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989491 lt!989982 lt!989984 (list!12096 input!5495)))))

(assert (=> b!2775428 (= lt!989984 (tail!4390 lt!989479))))

(assert (=> b!2775428 (= lt!989982 (head!6152 lt!989479))))

(declare-fun lt!990001 () Unit!46204)

(declare-fun lt!989981 () Unit!46204)

(assert (=> b!2775428 (= lt!990001 lt!989981)))

(assert (=> b!2775428 (isPrefix!2557 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 (list!12096 input!5495) lt!989491)) Nil!32072)) (list!12096 input!5495))))

(assert (=> b!2775428 (= lt!989981 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989491 (list!12096 input!5495)))))

(declare-fun lt!990002 () List!32172)

(assert (=> b!2775428 (= lt!990002 (++!7932 lt!989491 (Cons!32072 (head!6152 lt!989479) Nil!32072)))))

(declare-fun lt!989985 () Unit!46204)

(assert (=> b!2775428 (= lt!989985 e!1750564)))

(declare-fun c!450618 () Bool)

(assert (=> b!2775428 (= c!450618 (= (size!24869 lt!989491) (size!24869 (list!12096 input!5495))))))

(declare-fun lt!989986 () Unit!46204)

(declare-fun lt!989999 () Unit!46204)

(assert (=> b!2775428 (= lt!989986 lt!989999)))

(assert (=> b!2775428 (<= (size!24869 lt!989491) (size!24869 (list!12096 input!5495)))))

(assert (=> b!2775428 (= lt!989999 (lemmaIsPrefixThenSmallerEqSize!264 lt!989491 (list!12096 input!5495)))))

(assert (=> b!2775428 (= e!1750557 e!1750559)))

(declare-fun bm!181582 () Bool)

(declare-fun call!181592 () (InoxSet Context!4642))

(assert (=> bm!181582 (= call!181592 (derivationStepZipper!369 call!181483 call!181591))))

(declare-fun b!2775429 () Bool)

(assert (=> b!2775429 (= e!1750563 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun bm!181583 () Bool)

(assert (=> bm!181583 (= call!181590 (lemmaIsPrefixRefl!1681 (list!12096 input!5495) (list!12096 input!5495)))))

(declare-fun b!2775430 () Bool)

(declare-fun lt!989980 () tuple2!32288)

(assert (=> b!2775430 (= e!1750561 lt!989980)))

(declare-fun b!2775431 () Bool)

(assert (=> b!2775431 (= e!1750558 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun call!181588 () List!32172)

(declare-fun bm!181584 () Bool)

(assert (=> bm!181584 (= call!181585 (findLongestMatchInnerZipper!27 call!181592 lt!990002 (+ 1 1) call!181588 (list!12096 input!5495) lt!989489))))

(declare-fun bm!181585 () Bool)

(assert (=> bm!181585 (= call!181589 (lemmaIsPrefixSameLengthThenSameList!463 (list!12096 input!5495) lt!989491 (list!12096 input!5495)))))

(declare-fun b!2775432 () Bool)

(assert (=> b!2775432 (= e!1750559 e!1750561)))

(assert (=> b!2775432 (= lt!989980 call!181585)))

(declare-fun c!450623 () Bool)

(assert (=> b!2775432 (= c!450623 (isEmpty!18097 (_1!19065 lt!989980)))))

(declare-fun bm!181586 () Bool)

(assert (=> bm!181586 (= call!181588 (tail!4390 lt!989479))))

(declare-fun bm!181587 () Bool)

(assert (=> bm!181587 (= call!181586 (isPrefix!2557 (list!12096 input!5495) (list!12096 input!5495)))))

(assert (= (and d!806636 c!450622) b!2775431))

(assert (= (and d!806636 (not c!450622)) b!2775424))

(assert (= (and b!2775424 c!450620) b!2775422))

(assert (= (and b!2775424 (not c!450620)) b!2775428))

(assert (= (and b!2775422 c!450619) b!2775423))

(assert (= (and b!2775422 (not c!450619)) b!2775429))

(assert (= (and b!2775428 c!450618) b!2775419))

(assert (= (and b!2775428 (not c!450618)) b!2775427))

(assert (= (and b!2775428 c!450621) b!2775432))

(assert (= (and b!2775428 (not c!450621)) b!2775420))

(assert (= (and b!2775432 c!450623) b!2775426))

(assert (= (and b!2775432 (not c!450623)) b!2775430))

(assert (= (or b!2775432 b!2775420) bm!181586))

(assert (= (or b!2775432 b!2775420) bm!181580))

(assert (= (or b!2775432 b!2775420) bm!181582))

(assert (= (or b!2775432 b!2775420) bm!181584))

(assert (= (or b!2775422 b!2775428) bm!181581))

(assert (= (or b!2775422 b!2775419) bm!181583))

(assert (= (or b!2775422 b!2775419) bm!181585))

(assert (= (or b!2775422 b!2775419) bm!181587))

(assert (= (and d!806636 res!1159726) b!2775425))

(assert (= (and b!2775425 (not res!1159725)) b!2775421))

(assert (=> b!2775428 m!3201349))

(declare-fun m!3202182 () Bool)

(assert (=> b!2775428 m!3202182))

(declare-fun m!3202184 () Bool)

(assert (=> b!2775428 m!3202184))

(assert (=> b!2775428 m!3201679))

(declare-fun m!3202186 () Bool)

(assert (=> b!2775428 m!3202186))

(declare-fun m!3202188 () Bool)

(assert (=> b!2775428 m!3202188))

(assert (=> b!2775428 m!3201349))

(declare-fun m!3202190 () Bool)

(assert (=> b!2775428 m!3202190))

(declare-fun m!3202192 () Bool)

(assert (=> b!2775428 m!3202192))

(assert (=> b!2775428 m!3201671))

(assert (=> b!2775428 m!3201349))

(assert (=> b!2775428 m!3201719))

(assert (=> b!2775428 m!3202192))

(assert (=> b!2775428 m!3201349))

(declare-fun m!3202194 () Bool)

(assert (=> b!2775428 m!3202194))

(assert (=> b!2775428 m!3201719))

(declare-fun m!3202196 () Bool)

(assert (=> b!2775428 m!3202196))

(assert (=> b!2775428 m!3202188))

(declare-fun m!3202198 () Bool)

(assert (=> b!2775428 m!3202198))

(assert (=> b!2775428 m!3201349))

(assert (=> b!2775428 m!3201649))

(assert (=> b!2775428 m!3201349))

(declare-fun m!3202200 () Bool)

(assert (=> b!2775428 m!3202200))

(declare-fun m!3202202 () Bool)

(assert (=> b!2775432 m!3202202))

(assert (=> bm!181583 m!3201349))

(assert (=> bm!181583 m!3201349))

(declare-fun m!3202204 () Bool)

(assert (=> bm!181583 m!3202204))

(assert (=> bm!181587 m!3201349))

(assert (=> bm!181587 m!3201349))

(declare-fun m!3202206 () Bool)

(assert (=> bm!181587 m!3202206))

(assert (=> d!806636 m!3201415))

(assert (=> d!806636 m!3201715))

(assert (=> d!806636 m!3201727))

(assert (=> d!806636 m!3201415))

(assert (=> d!806636 m!3201349))

(assert (=> d!806636 m!3201719))

(declare-fun m!3202208 () Bool)

(assert (=> d!806636 m!3202208))

(assert (=> d!806636 m!3201349))

(declare-fun m!3202210 () Bool)

(assert (=> d!806636 m!3202210))

(assert (=> d!806636 m!3201717))

(assert (=> bm!181585 m!3201349))

(assert (=> bm!181585 m!3201349))

(declare-fun m!3202212 () Bool)

(assert (=> bm!181585 m!3202212))

(declare-fun m!3202214 () Bool)

(assert (=> b!2775421 m!3202214))

(assert (=> b!2775421 m!3201679))

(assert (=> bm!181584 m!3201349))

(declare-fun m!3202216 () Bool)

(assert (=> bm!181584 m!3202216))

(assert (=> bm!181581 m!3201713))

(declare-fun m!3202218 () Bool)

(assert (=> bm!181582 m!3202218))

(declare-fun m!3202220 () Bool)

(assert (=> b!2775425 m!3202220))

(assert (=> bm!181586 m!3201671))

(assert (=> bm!181580 m!3202186))

(assert (=> d!806496 d!806636))

(declare-fun bs!505319 () Bool)

(declare-fun d!806638 () Bool)

(assert (= bs!505319 (and d!806638 d!806468)))

(declare-fun lambda!101830 () Int)

(assert (=> bs!505319 (= lambda!101830 lambda!101809)))

(declare-fun bs!505320 () Bool)

(assert (= bs!505320 (and d!806638 b!2774981)))

(assert (=> bs!505320 (not (= lambda!101830 lambda!101810))))

(declare-fun bs!505321 () Bool)

(assert (= bs!505321 (and d!806638 d!806544)))

(assert (=> bs!505321 (not (= lambda!101830 lambda!101814))))

(declare-fun bs!505322 () Bool)

(assert (= bs!505322 (and d!806638 b!2774982)))

(assert (=> bs!505322 (not (= lambda!101830 lambda!101811))))

(declare-fun bs!505323 () Bool)

(assert (= bs!505323 (and d!806638 d!806614)))

(assert (=> bs!505323 (not (= lambda!101830 lambda!101827))))

(declare-fun bs!505324 () Bool)

(declare-fun b!2775433 () Bool)

(assert (= bs!505324 (and b!2775433 d!806468)))

(declare-fun lambda!101831 () Int)

(assert (=> bs!505324 (not (= lambda!101831 lambda!101809))))

(declare-fun bs!505325 () Bool)

(assert (= bs!505325 (and b!2775433 d!806638)))

(assert (=> bs!505325 (not (= lambda!101831 lambda!101830))))

(declare-fun bs!505326 () Bool)

(assert (= bs!505326 (and b!2775433 b!2774981)))

(assert (=> bs!505326 (= lambda!101831 lambda!101810)))

(declare-fun bs!505327 () Bool)

(assert (= bs!505327 (and b!2775433 d!806544)))

(assert (=> bs!505327 (not (= lambda!101831 lambda!101814))))

(declare-fun bs!505328 () Bool)

(assert (= bs!505328 (and b!2775433 b!2774982)))

(assert (=> bs!505328 (= lambda!101831 lambda!101811)))

(declare-fun bs!505329 () Bool)

(assert (= bs!505329 (and b!2775433 d!806614)))

(assert (=> bs!505329 (not (= lambda!101831 lambda!101827))))

(declare-fun bs!505330 () Bool)

(declare-fun b!2775434 () Bool)

(assert (= bs!505330 (and b!2775434 d!806638)))

(declare-fun lambda!101832 () Int)

(assert (=> bs!505330 (not (= lambda!101832 lambda!101830))))

(declare-fun bs!505331 () Bool)

(assert (= bs!505331 (and b!2775434 b!2774981)))

(assert (=> bs!505331 (= lambda!101832 lambda!101810)))

(declare-fun bs!505332 () Bool)

(assert (= bs!505332 (and b!2775434 d!806544)))

(assert (=> bs!505332 (not (= lambda!101832 lambda!101814))))

(declare-fun bs!505333 () Bool)

(assert (= bs!505333 (and b!2775434 d!806468)))

(assert (=> bs!505333 (not (= lambda!101832 lambda!101809))))

(declare-fun bs!505334 () Bool)

(assert (= bs!505334 (and b!2775434 b!2775433)))

(assert (=> bs!505334 (= lambda!101832 lambda!101831)))

(declare-fun bs!505335 () Bool)

(assert (= bs!505335 (and b!2775434 b!2774982)))

(assert (=> bs!505335 (= lambda!101832 lambda!101811)))

(declare-fun bs!505336 () Bool)

(assert (= bs!505336 (and b!2775434 d!806614)))

(assert (=> bs!505336 (not (= lambda!101832 lambda!101827))))

(declare-fun bm!181589 () Bool)

(declare-fun call!181594 () List!32176)

(assert (=> bm!181589 (= call!181594 (toList!1841 call!181483))))

(declare-fun lt!990010 () Bool)

(assert (=> d!806638 (= lt!990010 (isEmpty!18098 (getLanguageWitness!189 call!181483)))))

(assert (=> d!806638 (= lt!990010 (forall!6631 call!181483 lambda!101830))))

(declare-fun lt!990013 () Unit!46204)

(declare-fun e!1750565 () Unit!46204)

(assert (=> d!806638 (= lt!990013 e!1750565)))

(declare-fun c!450624 () Bool)

(assert (=> d!806638 (= c!450624 (not (forall!6631 call!181483 lambda!101830)))))

(assert (=> d!806638 (= (lostCauseZipper!443 call!181483) lt!990010)))

(declare-fun Unit!46232 () Unit!46204)

(assert (=> b!2775434 (= e!1750565 Unit!46232)))

(declare-fun lt!990008 () List!32176)

(assert (=> b!2775434 (= lt!990008 call!181594)))

(declare-fun lt!990012 () Unit!46204)

(assert (=> b!2775434 (= lt!990012 (lemmaForallThenNotExists!84 lt!990008 lambda!101830))))

(declare-fun call!181593 () Bool)

(assert (=> b!2775434 (not call!181593)))

(declare-fun lt!990006 () Unit!46204)

(assert (=> b!2775434 (= lt!990006 lt!990012)))

(declare-fun lt!990007 () List!32176)

(declare-fun bm!181588 () Bool)

(assert (=> bm!181588 (= call!181593 (exists!976 (ite c!450624 lt!990007 lt!990008) (ite c!450624 lambda!101831 lambda!101832)))))

(declare-fun Unit!46233 () Unit!46204)

(assert (=> b!2775433 (= e!1750565 Unit!46233)))

(assert (=> b!2775433 (= lt!990007 call!181594)))

(declare-fun lt!990011 () Unit!46204)

(assert (=> b!2775433 (= lt!990011 (lemmaNotForallThenExists!84 lt!990007 lambda!101830))))

(assert (=> b!2775433 call!181593))

(declare-fun lt!990009 () Unit!46204)

(assert (=> b!2775433 (= lt!990009 lt!990011)))

(assert (= (and d!806638 c!450624) b!2775433))

(assert (= (and d!806638 (not c!450624)) b!2775434))

(assert (= (or b!2775433 b!2775434) bm!181588))

(assert (= (or b!2775433 b!2775434) bm!181589))

(declare-fun m!3202222 () Bool)

(assert (=> bm!181588 m!3202222))

(declare-fun m!3202224 () Bool)

(assert (=> bm!181589 m!3202224))

(declare-fun m!3202226 () Bool)

(assert (=> b!2775434 m!3202226))

(declare-fun m!3202228 () Bool)

(assert (=> d!806638 m!3202228))

(assert (=> d!806638 m!3202228))

(declare-fun m!3202230 () Bool)

(assert (=> d!806638 m!3202230))

(declare-fun m!3202232 () Bool)

(assert (=> d!806638 m!3202232))

(assert (=> d!806638 m!3202232))

(declare-fun m!3202234 () Bool)

(assert (=> b!2775433 m!3202234))

(assert (=> d!806496 d!806638))

(declare-fun d!806640 () Bool)

(assert (=> d!806640 (isPrefix!2557 lt!989491 (++!7932 lt!989491 lt!989479))))

(declare-fun lt!990014 () Unit!46204)

(assert (=> d!806640 (= lt!990014 (choose!16272 lt!989491 lt!989479))))

(assert (=> d!806640 (= (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989491 lt!989479) lt!990014)))

(declare-fun bs!505337 () Bool)

(assert (= bs!505337 d!806640))

(assert (=> bs!505337 m!3201415))

(assert (=> bs!505337 m!3201415))

(assert (=> bs!505337 m!3201715))

(declare-fun m!3202236 () Bool)

(assert (=> bs!505337 m!3202236))

(assert (=> d!806496 d!806640))

(assert (=> d!806496 d!806470))

(declare-fun d!806642 () Bool)

(declare-fun lt!990015 () Int)

(assert (=> d!806642 (>= lt!990015 0)))

(declare-fun e!1750566 () Int)

(assert (=> d!806642 (= lt!990015 e!1750566)))

(declare-fun c!450625 () Bool)

(assert (=> d!806642 (= c!450625 ((_ is Nil!32072) (_1!19065 (findLongestMatchInnerZipper!27 call!181483 lt!989491 1 lt!989479 (list!12096 input!5495) lt!989489))))))

(assert (=> d!806642 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 call!181483 lt!989491 1 lt!989479 (list!12096 input!5495) lt!989489))) lt!990015)))

(declare-fun b!2775435 () Bool)

(assert (=> b!2775435 (= e!1750566 0)))

(declare-fun b!2775436 () Bool)

(assert (=> b!2775436 (= e!1750566 (+ 1 (size!24869 (t!228300 (_1!19065 (findLongestMatchInnerZipper!27 call!181483 lt!989491 1 lt!989479 (list!12096 input!5495) lt!989489))))))))

(assert (= (and d!806642 c!450625) b!2775435))

(assert (= (and d!806642 (not c!450625)) b!2775436))

(declare-fun m!3202238 () Bool)

(assert (=> b!2775436 m!3202238))

(assert (=> d!806496 d!806642))

(declare-fun b!2775438 () Bool)

(declare-fun res!1159728 () Bool)

(declare-fun e!1750569 () Bool)

(assert (=> b!2775438 (=> (not res!1159728) (not e!1750569))))

(assert (=> b!2775438 (= res!1159728 (= (head!6152 lt!989491) (head!6152 (++!7932 lt!989491 lt!989479))))))

(declare-fun b!2775437 () Bool)

(declare-fun e!1750568 () Bool)

(assert (=> b!2775437 (= e!1750568 e!1750569)))

(declare-fun res!1159729 () Bool)

(assert (=> b!2775437 (=> (not res!1159729) (not e!1750569))))

(assert (=> b!2775437 (= res!1159729 (not ((_ is Nil!32072) (++!7932 lt!989491 lt!989479))))))

(declare-fun d!806644 () Bool)

(declare-fun e!1750567 () Bool)

(assert (=> d!806644 e!1750567))

(declare-fun res!1159730 () Bool)

(assert (=> d!806644 (=> res!1159730 e!1750567)))

(declare-fun lt!990016 () Bool)

(assert (=> d!806644 (= res!1159730 (not lt!990016))))

(assert (=> d!806644 (= lt!990016 e!1750568)))

(declare-fun res!1159727 () Bool)

(assert (=> d!806644 (=> res!1159727 e!1750568)))

(assert (=> d!806644 (= res!1159727 ((_ is Nil!32072) lt!989491))))

(assert (=> d!806644 (= (isPrefix!2557 lt!989491 (++!7932 lt!989491 lt!989479)) lt!990016)))

(declare-fun b!2775439 () Bool)

(assert (=> b!2775439 (= e!1750569 (isPrefix!2557 (tail!4390 lt!989491) (tail!4390 (++!7932 lt!989491 lt!989479))))))

(declare-fun b!2775440 () Bool)

(assert (=> b!2775440 (= e!1750567 (>= (size!24869 (++!7932 lt!989491 lt!989479)) (size!24869 lt!989491)))))

(assert (= (and d!806644 (not res!1159727)) b!2775437))

(assert (= (and b!2775437 res!1159729) b!2775438))

(assert (= (and b!2775438 res!1159728) b!2775439))

(assert (= (and d!806644 (not res!1159730)) b!2775440))

(declare-fun m!3202240 () Bool)

(assert (=> b!2775438 m!3202240))

(assert (=> b!2775438 m!3201415))

(declare-fun m!3202242 () Bool)

(assert (=> b!2775438 m!3202242))

(declare-fun m!3202244 () Bool)

(assert (=> b!2775439 m!3202244))

(assert (=> b!2775439 m!3201415))

(declare-fun m!3202246 () Bool)

(assert (=> b!2775439 m!3202246))

(assert (=> b!2775439 m!3202244))

(assert (=> b!2775439 m!3202246))

(declare-fun m!3202248 () Bool)

(assert (=> b!2775439 m!3202248))

(assert (=> b!2775440 m!3201415))

(declare-fun m!3202250 () Bool)

(assert (=> b!2775440 m!3202250))

(assert (=> b!2775440 m!3201679))

(assert (=> d!806496 d!806644))

(assert (=> d!806496 d!806590))

(declare-fun d!806646 () Bool)

(declare-fun lt!990017 () List!32172)

(assert (=> d!806646 (= (++!7932 lt!989491 lt!990017) (list!12096 input!5495))))

(declare-fun e!1750570 () List!32172)

(assert (=> d!806646 (= lt!990017 e!1750570)))

(declare-fun c!450626 () Bool)

(assert (=> d!806646 (= c!450626 ((_ is Cons!32072) lt!989491))))

(assert (=> d!806646 (>= (size!24869 (list!12096 input!5495)) (size!24869 lt!989491))))

(assert (=> d!806646 (= (getSuffix!1239 (list!12096 input!5495) lt!989491) lt!990017)))

(declare-fun b!2775441 () Bool)

(assert (=> b!2775441 (= e!1750570 (getSuffix!1239 (tail!4390 (list!12096 input!5495)) (t!228300 lt!989491)))))

(declare-fun b!2775442 () Bool)

(assert (=> b!2775442 (= e!1750570 (list!12096 input!5495))))

(assert (= (and d!806646 c!450626) b!2775441))

(assert (= (and d!806646 (not c!450626)) b!2775442))

(declare-fun m!3202252 () Bool)

(assert (=> d!806646 m!3202252))

(assert (=> d!806646 m!3201349))

(assert (=> d!806646 m!3201649))

(assert (=> d!806646 m!3201679))

(assert (=> b!2775441 m!3201349))

(declare-fun m!3202254 () Bool)

(assert (=> b!2775441 m!3202254))

(assert (=> b!2775441 m!3202254))

(declare-fun m!3202256 () Bool)

(assert (=> b!2775441 m!3202256))

(assert (=> d!806496 d!806646))

(assert (=> bm!181540 d!806544))

(declare-fun d!806648 () Bool)

(declare-fun res!1159737 () Bool)

(declare-fun e!1750575 () Bool)

(assert (=> d!806648 (=> (not res!1159737) (not e!1750575))))

(declare-fun valid!2979 (MutableMap!3720) Bool)

(assert (=> d!806648 (= res!1159737 (valid!2979 (cache!3863 (_3!2922 lt!989484))))))

(assert (=> d!806648 (= (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989484))) e!1750575)))

(declare-fun b!2775449 () Bool)

(declare-fun res!1159738 () Bool)

(assert (=> b!2775449 (=> (not res!1159738) (not e!1750575))))

(declare-fun invariantList!453 (List!32175) Bool)

(declare-datatypes ((ListMap!1239 0))(
  ( (ListMap!1240 (toList!1843 List!32175)) )
))
(declare-fun map!6972 (MutableMap!3720) ListMap!1239)

(assert (=> b!2775449 (= res!1159738 (invariantList!453 (toList!1843 (map!6972 (cache!3863 (_3!2922 lt!989484))))))))

(declare-fun b!2775450 () Bool)

(declare-fun lambda!101835 () Int)

(declare-fun forall!6635 (List!32175 Int) Bool)

(assert (=> b!2775450 (= e!1750575 (forall!6635 (toList!1843 (map!6972 (cache!3863 (_3!2922 lt!989484)))) lambda!101835))))

(assert (= (and d!806648 res!1159737) b!2775449))

(assert (= (and b!2775449 res!1159738) b!2775450))

(declare-fun m!3202259 () Bool)

(assert (=> d!806648 m!3202259))

(declare-fun m!3202261 () Bool)

(assert (=> b!2775449 m!3202261))

(declare-fun m!3202263 () Bool)

(assert (=> b!2775449 m!3202263))

(assert (=> b!2775450 m!3202261))

(declare-fun m!3202265 () Bool)

(assert (=> b!2775450 m!3202265))

(assert (=> d!806604 d!806648))

(assert (=> d!806476 d!806458))

(declare-fun d!806650 () Bool)

(declare-fun e!1750576 () Bool)

(assert (=> d!806650 e!1750576))

(declare-fun res!1159739 () Bool)

(assert (=> d!806650 (=> (not res!1159739) (not e!1750576))))

(declare-fun lt!990018 () List!32172)

(assert (=> d!806650 (= res!1159739 (= (content!4508 lt!990018) ((_ map or) (content!4508 (_1!19065 lt!989657)) (content!4508 (_2!19065 lt!989657)))))))

(declare-fun e!1750577 () List!32172)

(assert (=> d!806650 (= lt!990018 e!1750577)))

(declare-fun c!450627 () Bool)

(assert (=> d!806650 (= c!450627 ((_ is Nil!32072) (_1!19065 lt!989657)))))

(assert (=> d!806650 (= (++!7932 (_1!19065 lt!989657) (_2!19065 lt!989657)) lt!990018)))

(declare-fun b!2775454 () Bool)

(assert (=> b!2775454 (= e!1750576 (or (not (= (_2!19065 lt!989657) Nil!32072)) (= lt!990018 (_1!19065 lt!989657))))))

(declare-fun b!2775452 () Bool)

(assert (=> b!2775452 (= e!1750577 (Cons!32072 (h!37492 (_1!19065 lt!989657)) (++!7932 (t!228300 (_1!19065 lt!989657)) (_2!19065 lt!989657))))))

(declare-fun b!2775451 () Bool)

(assert (=> b!2775451 (= e!1750577 (_2!19065 lt!989657))))

(declare-fun b!2775453 () Bool)

(declare-fun res!1159740 () Bool)

(assert (=> b!2775453 (=> (not res!1159740) (not e!1750576))))

(assert (=> b!2775453 (= res!1159740 (= (size!24869 lt!990018) (+ (size!24869 (_1!19065 lt!989657)) (size!24869 (_2!19065 lt!989657)))))))

(assert (= (and d!806650 c!450627) b!2775451))

(assert (= (and d!806650 (not c!450627)) b!2775452))

(assert (= (and d!806650 res!1159739) b!2775453))

(assert (= (and b!2775453 res!1159740) b!2775454))

(declare-fun m!3202267 () Bool)

(assert (=> d!806650 m!3202267))

(declare-fun m!3202269 () Bool)

(assert (=> d!806650 m!3202269))

(declare-fun m!3202271 () Bool)

(assert (=> d!806650 m!3202271))

(declare-fun m!3202273 () Bool)

(assert (=> b!2775452 m!3202273))

(declare-fun m!3202275 () Bool)

(assert (=> b!2775453 m!3202275))

(assert (=> b!2775453 m!3201549))

(declare-fun m!3202277 () Bool)

(assert (=> b!2775453 m!3202277))

(assert (=> d!806476 d!806650))

(assert (=> d!806476 d!806464))

(assert (=> d!806476 d!806468))

(assert (=> d!806476 d!806474))

(assert (=> d!806476 d!806494))

(declare-fun d!806652 () Bool)

(assert (=> d!806652 (= lt!989496 lt!989640)))

(declare-fun lt!990019 () Unit!46204)

(assert (=> d!806652 (= lt!990019 (choose!16273 Nil!32072 lt!989496 Nil!32072 lt!989640 lt!989496))))

(assert (=> d!806652 (isPrefix!2557 Nil!32072 lt!989496)))

(assert (=> d!806652 (= (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989640 lt!989496) lt!990019)))

(declare-fun bs!505338 () Bool)

(assert (= bs!505338 d!806652))

(declare-fun m!3202279 () Bool)

(assert (=> bs!505338 m!3202279))

(assert (=> bs!505338 m!3201655))

(assert (=> d!806476 d!806652))

(declare-fun d!806654 () Bool)

(declare-fun lt!990020 () Int)

(assert (=> d!806654 (>= lt!990020 0)))

(declare-fun e!1750578 () Int)

(assert (=> d!806654 (= lt!990020 e!1750578)))

(declare-fun c!450628 () Bool)

(assert (=> d!806654 (= c!450628 ((_ is Nil!32072) lt!989848))))

(assert (=> d!806654 (= (size!24869 lt!989848) lt!990020)))

(declare-fun b!2775455 () Bool)

(assert (=> b!2775455 (= e!1750578 0)))

(declare-fun b!2775456 () Bool)

(assert (=> b!2775456 (= e!1750578 (+ 1 (size!24869 (t!228300 lt!989848))))))

(assert (= (and d!806654 c!450628) b!2775455))

(assert (= (and d!806654 (not c!450628)) b!2775456))

(declare-fun m!3202281 () Bool)

(assert (=> b!2775456 m!3202281))

(assert (=> b!2775095 d!806654))

(declare-fun d!806656 () Bool)

(declare-fun lt!990021 () Int)

(assert (=> d!806656 (>= lt!990021 0)))

(declare-fun e!1750579 () Int)

(assert (=> d!806656 (= lt!990021 e!1750579)))

(declare-fun c!450629 () Bool)

(assert (=> d!806656 (= c!450629 ((_ is Nil!32072) lt!989499))))

(assert (=> d!806656 (= (size!24869 lt!989499) lt!990021)))

(declare-fun b!2775457 () Bool)

(assert (=> b!2775457 (= e!1750579 0)))

(declare-fun b!2775458 () Bool)

(assert (=> b!2775458 (= e!1750579 (+ 1 (size!24869 (t!228300 lt!989499))))))

(assert (= (and d!806656 c!450629) b!2775457))

(assert (= (and d!806656 (not c!450629)) b!2775458))

(declare-fun m!3202283 () Bool)

(assert (=> b!2775458 m!3202283))

(assert (=> b!2775095 d!806656))

(declare-fun d!806658 () Bool)

(declare-fun lt!990022 () Int)

(assert (=> d!806658 (>= lt!990022 0)))

(declare-fun e!1750580 () Int)

(assert (=> d!806658 (= lt!990022 e!1750580)))

(declare-fun c!450630 () Bool)

(assert (=> d!806658 (= c!450630 ((_ is Nil!32072) lt!989504))))

(assert (=> d!806658 (= (size!24869 lt!989504) lt!990022)))

(declare-fun b!2775459 () Bool)

(assert (=> b!2775459 (= e!1750580 0)))

(declare-fun b!2775460 () Bool)

(assert (=> b!2775460 (= e!1750580 (+ 1 (size!24869 (t!228300 lt!989504))))))

(assert (= (and d!806658 c!450630) b!2775459))

(assert (= (and d!806658 (not c!450630)) b!2775460))

(declare-fun m!3202285 () Bool)

(assert (=> b!2775460 m!3202285))

(assert (=> b!2775095 d!806658))

(declare-fun d!806660 () Bool)

(declare-fun e!1750581 () Bool)

(assert (=> d!806660 e!1750581))

(declare-fun res!1159741 () Bool)

(assert (=> d!806660 (=> (not res!1159741) (not e!1750581))))

(declare-fun lt!990023 () List!32172)

(assert (=> d!806660 (= res!1159741 (= (content!4508 lt!990023) ((_ map or) (content!4508 lt!989488) (content!4508 (Cons!32072 call!181581 Nil!32072)))))))

(declare-fun e!1750582 () List!32172)

(assert (=> d!806660 (= lt!990023 e!1750582)))

(declare-fun c!450631 () Bool)

(assert (=> d!806660 (= c!450631 ((_ is Nil!32072) lt!989488))))

(assert (=> d!806660 (= (++!7932 lt!989488 (Cons!32072 call!181581 Nil!32072)) lt!990023)))

(declare-fun b!2775464 () Bool)

(assert (=> b!2775464 (= e!1750581 (or (not (= (Cons!32072 call!181581 Nil!32072) Nil!32072)) (= lt!990023 lt!989488)))))

(declare-fun b!2775462 () Bool)

(assert (=> b!2775462 (= e!1750582 (Cons!32072 (h!37492 lt!989488) (++!7932 (t!228300 lt!989488) (Cons!32072 call!181581 Nil!32072))))))

(declare-fun b!2775461 () Bool)

(assert (=> b!2775461 (= e!1750582 (Cons!32072 call!181581 Nil!32072))))

(declare-fun b!2775463 () Bool)

(declare-fun res!1159742 () Bool)

(assert (=> b!2775463 (=> (not res!1159742) (not e!1750581))))

(assert (=> b!2775463 (= res!1159742 (= (size!24869 lt!990023) (+ (size!24869 lt!989488) (size!24869 (Cons!32072 call!181581 Nil!32072)))))))

(assert (= (and d!806660 c!450631) b!2775461))

(assert (= (and d!806660 (not c!450631)) b!2775462))

(assert (= (and d!806660 res!1159741) b!2775463))

(assert (= (and b!2775463 res!1159742) b!2775464))

(declare-fun m!3202287 () Bool)

(assert (=> d!806660 m!3202287))

(assert (=> d!806660 m!3201869))

(declare-fun m!3202289 () Bool)

(assert (=> d!806660 m!3202289))

(declare-fun m!3202291 () Bool)

(assert (=> b!2775462 m!3202291))

(declare-fun m!3202293 () Bool)

(assert (=> b!2775463 m!3202293))

(assert (=> b!2775463 m!3201877))

(declare-fun m!3202295 () Bool)

(assert (=> b!2775463 m!3202295))

(assert (=> bm!181570 d!806660))

(assert (=> b!2775081 d!806470))

(declare-fun d!806662 () Bool)

(declare-fun e!1750583 () Bool)

(assert (=> d!806662 e!1750583))

(declare-fun res!1159743 () Bool)

(assert (=> d!806662 (=> (not res!1159743) (not e!1750583))))

(declare-fun lt!990024 () List!32172)

(assert (=> d!806662 (= res!1159743 (= (content!4508 lt!990024) ((_ map or) (content!4508 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072))) (content!4508 lt!989532))))))

(declare-fun e!1750584 () List!32172)

(assert (=> d!806662 (= lt!990024 e!1750584)))

(declare-fun c!450632 () Bool)

(assert (=> d!806662 (= c!450632 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072))))))

(assert (=> d!806662 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)) lt!989532) lt!990024)))

(declare-fun b!2775468 () Bool)

(assert (=> b!2775468 (= e!1750583 (or (not (= lt!989532 Nil!32072)) (= lt!990024 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)))))))

(declare-fun b!2775466 () Bool)

(assert (=> b!2775466 (= e!1750584 (Cons!32072 (h!37492 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072))) (++!7932 (t!228300 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072))) lt!989532)))))

(declare-fun b!2775465 () Bool)

(assert (=> b!2775465 (= e!1750584 lt!989532)))

(declare-fun b!2775467 () Bool)

(declare-fun res!1159744 () Bool)

(assert (=> b!2775467 (=> (not res!1159744) (not e!1750583))))

(assert (=> b!2775467 (= res!1159744 (= (size!24869 lt!990024) (+ (size!24869 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072))) (size!24869 lt!989532))))))

(assert (= (and d!806662 c!450632) b!2775465))

(assert (= (and d!806662 (not c!450632)) b!2775466))

(assert (= (and d!806662 res!1159743) b!2775467))

(assert (= (and b!2775467 res!1159744) b!2775468))

(declare-fun m!3202297 () Bool)

(assert (=> d!806662 m!3202297))

(assert (=> d!806662 m!3201431))

(declare-fun m!3202299 () Bool)

(assert (=> d!806662 m!3202299))

(assert (=> d!806662 m!3201871))

(declare-fun m!3202301 () Bool)

(assert (=> b!2775466 m!3202301))

(declare-fun m!3202303 () Bool)

(assert (=> b!2775467 m!3202303))

(assert (=> b!2775467 m!3201431))

(declare-fun m!3202305 () Bool)

(assert (=> b!2775467 m!3202305))

(assert (=> b!2775467 m!3201879))

(assert (=> d!806562 d!806662))

(assert (=> d!806562 d!806566))

(declare-fun d!806664 () Bool)

(assert (=> d!806664 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989486 Nil!32072)) lt!989532) lt!989496)))

(assert (=> d!806664 true))

(declare-fun _$68!661 () Unit!46204)

(assert (=> d!806664 (= (choose!16277 Nil!32072 lt!989486 lt!989532 lt!989496) _$68!661)))

(declare-fun bs!505339 () Bool)

(assert (= bs!505339 d!806664))

(assert (=> bs!505339 m!3201431))

(assert (=> bs!505339 m!3201431))

(assert (=> bs!505339 m!3201907))

(assert (=> d!806562 d!806664))

(declare-fun d!806666 () Bool)

(declare-fun e!1750585 () Bool)

(assert (=> d!806666 e!1750585))

(declare-fun res!1159745 () Bool)

(assert (=> d!806666 (=> (not res!1159745) (not e!1750585))))

(declare-fun lt!990025 () List!32172)

(assert (=> d!806666 (= res!1159745 (= (content!4508 lt!990025) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989486 lt!989532)))))))

(declare-fun e!1750586 () List!32172)

(assert (=> d!806666 (= lt!990025 e!1750586)))

(declare-fun c!450633 () Bool)

(assert (=> d!806666 (= c!450633 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806666 (= (++!7932 Nil!32072 (Cons!32072 lt!989486 lt!989532)) lt!990025)))

(declare-fun b!2775472 () Bool)

(assert (=> b!2775472 (= e!1750585 (or (not (= (Cons!32072 lt!989486 lt!989532) Nil!32072)) (= lt!990025 Nil!32072)))))

(declare-fun b!2775470 () Bool)

(assert (=> b!2775470 (= e!1750586 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989486 lt!989532))))))

(declare-fun b!2775469 () Bool)

(assert (=> b!2775469 (= e!1750586 (Cons!32072 lt!989486 lt!989532))))

(declare-fun b!2775471 () Bool)

(declare-fun res!1159746 () Bool)

(assert (=> b!2775471 (=> (not res!1159746) (not e!1750585))))

(assert (=> b!2775471 (= res!1159746 (= (size!24869 lt!990025) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989486 lt!989532)))))))

(assert (= (and d!806666 c!450633) b!2775469))

(assert (= (and d!806666 (not c!450633)) b!2775470))

(assert (= (and d!806666 res!1159745) b!2775471))

(assert (= (and b!2775471 res!1159746) b!2775472))

(declare-fun m!3202307 () Bool)

(assert (=> d!806666 m!3202307))

(assert (=> d!806666 m!3201467))

(declare-fun m!3202309 () Bool)

(assert (=> d!806666 m!3202309))

(declare-fun m!3202311 () Bool)

(assert (=> b!2775470 m!3202311))

(declare-fun m!3202313 () Bool)

(assert (=> b!2775471 m!3202313))

(assert (=> b!2775471 m!3201399))

(declare-fun m!3202315 () Bool)

(assert (=> b!2775471 m!3202315))

(assert (=> d!806562 d!806666))

(declare-fun d!806668 () Bool)

(assert (=> d!806668 (= lt!989496 lt!989499)))

(declare-fun lt!990026 () Unit!46204)

(assert (=> d!806668 (= lt!990026 (choose!16278 lt!989496 lt!989499 lt!989496))))

(assert (=> d!806668 (isPrefix!2557 lt!989496 lt!989496)))

(assert (=> d!806668 (= (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 lt!989499 lt!989496) lt!990026)))

(declare-fun bs!505340 () Bool)

(assert (= bs!505340 d!806668))

(declare-fun m!3202317 () Bool)

(assert (=> bs!505340 m!3202317))

(assert (=> bs!505340 m!3201381))

(assert (=> bm!181563 d!806668))

(declare-fun d!806670 () Bool)

(assert (not d!806670))

(assert (=> b!2774971 d!806670))

(declare-fun d!806672 () Bool)

(assert (not d!806672))

(assert (=> b!2774971 d!806672))

(declare-fun d!806674 () Bool)

(assert (=> d!806674 (= (tail!4390 (++!7932 Nil!32072 lt!989496)) (t!228300 (++!7932 Nil!32072 lt!989496)))))

(assert (=> b!2774971 d!806674))

(assert (=> b!2775193 d!806490))

(declare-fun d!806676 () Bool)

(assert (=> d!806676 (= (head!6152 lt!989504) (h!37492 lt!989504))))

(assert (=> bm!181558 d!806676))

(assert (=> bm!181547 d!806564))

(declare-fun bs!505341 () Bool)

(declare-fun d!806678 () Bool)

(assert (= bs!505341 (and d!806678 d!806638)))

(declare-fun lambda!101836 () Int)

(assert (=> bs!505341 (not (= lambda!101836 lambda!101830))))

(declare-fun bs!505342 () Bool)

(assert (= bs!505342 (and d!806678 b!2774981)))

(assert (=> bs!505342 (not (= lambda!101836 lambda!101810))))

(declare-fun bs!505343 () Bool)

(assert (= bs!505343 (and d!806678 b!2775434)))

(assert (=> bs!505343 (not (= lambda!101836 lambda!101832))))

(declare-fun bs!505344 () Bool)

(assert (= bs!505344 (and d!806678 d!806544)))

(assert (=> bs!505344 (= lambda!101836 lambda!101814)))

(declare-fun bs!505345 () Bool)

(assert (= bs!505345 (and d!806678 d!806468)))

(assert (=> bs!505345 (not (= lambda!101836 lambda!101809))))

(declare-fun bs!505346 () Bool)

(assert (= bs!505346 (and d!806678 b!2775433)))

(assert (=> bs!505346 (not (= lambda!101836 lambda!101831))))

(declare-fun bs!505347 () Bool)

(assert (= bs!505347 (and d!806678 b!2774982)))

(assert (=> bs!505347 (not (= lambda!101836 lambda!101811))))

(declare-fun bs!505348 () Bool)

(assert (= bs!505348 (and d!806678 d!806614)))

(assert (=> bs!505348 (not (= lambda!101836 lambda!101827))))

(assert (=> d!806678 (= (nullableZipper!636 call!181483) (exists!977 call!181483 lambda!101836))))

(declare-fun bs!505349 () Bool)

(assert (= bs!505349 d!806678))

(declare-fun m!3202319 () Bool)

(assert (=> bs!505349 m!3202319))

(assert (=> bm!181550 d!806678))

(declare-fun b!2775473 () Bool)

(declare-fun e!1750587 () List!32172)

(assert (=> b!2775473 (= e!1750587 Nil!32072)))

(declare-fun b!2775474 () Bool)

(declare-fun e!1750588 () List!32172)

(assert (=> b!2775474 (= e!1750587 e!1750588)))

(declare-fun c!450635 () Bool)

(assert (=> b!2775474 (= c!450635 ((_ is Leaf!15201) (c!450499 (_1!19066 lt!989540))))))

(declare-fun d!806680 () Bool)

(declare-fun c!450634 () Bool)

(assert (=> d!806680 (= c!450634 ((_ is Empty!9981) (c!450499 (_1!19066 lt!989540))))))

(assert (=> d!806680 (= (list!12097 (c!450499 (_1!19066 lt!989540))) e!1750587)))

(declare-fun b!2775475 () Bool)

(assert (=> b!2775475 (= e!1750588 (list!12098 (xs!13091 (c!450499 (_1!19066 lt!989540)))))))

(declare-fun b!2775476 () Bool)

(assert (=> b!2775476 (= e!1750588 (++!7932 (list!12097 (left!24418 (c!450499 (_1!19066 lt!989540)))) (list!12097 (right!24748 (c!450499 (_1!19066 lt!989540))))))))

(assert (= (and d!806680 c!450634) b!2775473))

(assert (= (and d!806680 (not c!450634)) b!2775474))

(assert (= (and b!2775474 c!450635) b!2775475))

(assert (= (and b!2775474 (not c!450635)) b!2775476))

(declare-fun m!3202321 () Bool)

(assert (=> b!2775475 m!3202321))

(declare-fun m!3202323 () Bool)

(assert (=> b!2775476 m!3202323))

(declare-fun m!3202325 () Bool)

(assert (=> b!2775476 m!3202325))

(assert (=> b!2775476 m!3202323))

(assert (=> b!2775476 m!3202325))

(declare-fun m!3202327 () Bool)

(assert (=> b!2775476 m!3202327))

(assert (=> d!806588 d!806680))

(declare-fun d!806682 () Bool)

(assert (=> d!806682 (and (= lt!989516 Nil!32072) (= lt!989528 lt!989496))))

(assert (=> d!806682 true))

(declare-fun _$50!323 () Unit!46204)

(assert (=> d!806682 (= (choose!16280 lt!989516 lt!989528 Nil!32072 lt!989496) _$50!323)))

(assert (=> d!806546 d!806682))

(declare-fun d!806684 () Bool)

(declare-fun e!1750589 () Bool)

(assert (=> d!806684 e!1750589))

(declare-fun res!1159747 () Bool)

(assert (=> d!806684 (=> (not res!1159747) (not e!1750589))))

(declare-fun lt!990027 () List!32172)

(assert (=> d!806684 (= res!1159747 (= (content!4508 lt!990027) ((_ map or) (content!4508 lt!989516) (content!4508 lt!989528))))))

(declare-fun e!1750590 () List!32172)

(assert (=> d!806684 (= lt!990027 e!1750590)))

(declare-fun c!450636 () Bool)

(assert (=> d!806684 (= c!450636 ((_ is Nil!32072) lt!989516))))

(assert (=> d!806684 (= (++!7932 lt!989516 lt!989528) lt!990027)))

(declare-fun b!2775480 () Bool)

(assert (=> b!2775480 (= e!1750589 (or (not (= lt!989528 Nil!32072)) (= lt!990027 lt!989516)))))

(declare-fun b!2775478 () Bool)

(assert (=> b!2775478 (= e!1750590 (Cons!32072 (h!37492 lt!989516) (++!7932 (t!228300 lt!989516) lt!989528)))))

(declare-fun b!2775477 () Bool)

(assert (=> b!2775477 (= e!1750590 lt!989528)))

(declare-fun b!2775479 () Bool)

(declare-fun res!1159748 () Bool)

(assert (=> b!2775479 (=> (not res!1159748) (not e!1750589))))

(assert (=> b!2775479 (= res!1159748 (= (size!24869 lt!990027) (+ (size!24869 lt!989516) (size!24869 lt!989528))))))

(assert (= (and d!806684 c!450636) b!2775477))

(assert (= (and d!806684 (not c!450636)) b!2775478))

(assert (= (and d!806684 res!1159747) b!2775479))

(assert (= (and b!2775479 res!1159748) b!2775480))

(declare-fun m!3202329 () Bool)

(assert (=> d!806684 m!3202329))

(declare-fun m!3202331 () Bool)

(assert (=> d!806684 m!3202331))

(declare-fun m!3202333 () Bool)

(assert (=> d!806684 m!3202333))

(declare-fun m!3202335 () Bool)

(assert (=> b!2775478 m!3202335))

(declare-fun m!3202337 () Bool)

(assert (=> b!2775479 m!3202337))

(declare-fun m!3202339 () Bool)

(assert (=> b!2775479 m!3202339))

(declare-fun m!3202341 () Bool)

(assert (=> b!2775479 m!3202341))

(assert (=> d!806546 d!806684))

(assert (=> d!806546 d!806458))

(assert (=> b!2775063 d!806470))

(declare-fun bs!505350 () Bool)

(declare-fun d!806686 () Bool)

(assert (= bs!505350 (and d!806686 d!806578)))

(declare-fun lambda!101837 () Int)

(assert (=> bs!505350 (= lambda!101837 lambda!101817)))

(declare-fun bs!505351 () Bool)

(assert (= bs!505351 (and d!806686 d!806622)))

(assert (=> bs!505351 (= lambda!101837 lambda!101829)))

(assert (=> d!806686 (= (inv!43564 setElem!23042) (forall!6632 (exprs!2821 setElem!23042) lambda!101837))))

(declare-fun bs!505352 () Bool)

(assert (= bs!505352 d!806686))

(declare-fun m!3202343 () Bool)

(assert (=> bs!505352 m!3202343))

(assert (=> setNonEmpty!23041 d!806686))

(declare-fun d!806688 () Bool)

(declare-fun c!450639 () Bool)

(assert (=> d!806688 (= c!450639 ((_ is Nil!32072) lt!989906))))

(declare-fun e!1750593 () (InoxSet C!16364))

(assert (=> d!806688 (= (content!4508 lt!989906) e!1750593)))

(declare-fun b!2775485 () Bool)

(assert (=> b!2775485 (= e!1750593 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775486 () Bool)

(assert (=> b!2775486 (= e!1750593 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989906) true) (content!4508 (t!228300 lt!989906))))))

(assert (= (and d!806688 c!450639) b!2775485))

(assert (= (and d!806688 (not c!450639)) b!2775486))

(declare-fun m!3202345 () Bool)

(assert (=> b!2775486 m!3202345))

(declare-fun m!3202347 () Bool)

(assert (=> b!2775486 m!3202347))

(assert (=> d!806554 d!806688))

(declare-fun d!806690 () Bool)

(declare-fun c!450640 () Bool)

(assert (=> d!806690 (= c!450640 ((_ is Nil!32072) lt!989496))))

(declare-fun e!1750594 () (InoxSet C!16364))

(assert (=> d!806690 (= (content!4508 lt!989496) e!1750594)))

(declare-fun b!2775487 () Bool)

(assert (=> b!2775487 (= e!1750594 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775488 () Bool)

(assert (=> b!2775488 (= e!1750594 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989496) true) (content!4508 (t!228300 lt!989496))))))

(assert (= (and d!806690 c!450640) b!2775487))

(assert (= (and d!806690 (not c!450640)) b!2775488))

(declare-fun m!3202349 () Bool)

(assert (=> b!2775488 m!3202349))

(assert (=> b!2775488 m!3202172))

(assert (=> d!806554 d!806690))

(declare-fun bs!505353 () Bool)

(declare-fun d!806692 () Bool)

(assert (= bs!505353 (and d!806692 d!806598)))

(declare-fun lambda!101838 () Int)

(assert (=> bs!505353 (= (= call!181560 lt!989475) (= lambda!101838 lambda!101820))))

(declare-fun bs!505354 () Bool)

(assert (= bs!505354 (and d!806692 d!806600)))

(assert (=> bs!505354 (= (= call!181560 lt!989503) (= lambda!101838 lambda!101821))))

(declare-fun bs!505355 () Bool)

(assert (= bs!505355 (and d!806692 d!806618)))

(assert (=> bs!505355 (= (= call!181560 lt!989486) (= lambda!101838 lambda!101828))))

(assert (=> d!806692 true))

(assert (=> d!806692 (= (derivationStepZipper!369 call!181483 call!181560) (flatMap!186 call!181483 lambda!101838))))

(declare-fun bs!505356 () Bool)

(assert (= bs!505356 d!806692))

(declare-fun m!3202351 () Bool)

(assert (=> bs!505356 m!3202351))

(assert (=> bm!181556 d!806692))

(declare-fun bs!505357 () Bool)

(declare-fun d!806694 () Bool)

(assert (= bs!505357 (and d!806694 d!806578)))

(declare-fun lambda!101839 () Int)

(assert (=> bs!505357 (= lambda!101839 lambda!101817)))

(declare-fun bs!505358 () Bool)

(assert (= bs!505358 (and d!806694 d!806622)))

(assert (=> bs!505358 (= lambda!101839 lambda!101829)))

(declare-fun bs!505359 () Bool)

(assert (= bs!505359 (and d!806694 d!806686)))

(assert (=> bs!505359 (= lambda!101839 lambda!101837)))

(assert (=> d!806694 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 mapDefault!17378)))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapDefault!17378)))) lambda!101839))))

(declare-fun bs!505360 () Bool)

(assert (= bs!505360 d!806694))

(declare-fun m!3202353 () Bool)

(assert (=> bs!505360 m!3202353))

(assert (=> b!2775250 d!806694))

(declare-fun d!806696 () Bool)

(declare-fun lt!990028 () Int)

(assert (=> d!806696 (>= lt!990028 0)))

(declare-fun e!1750595 () Int)

(assert (=> d!806696 (= lt!990028 e!1750595)))

(declare-fun c!450641 () Bool)

(assert (=> d!806696 (= c!450641 ((_ is Nil!32072) lt!989900))))

(assert (=> d!806696 (= (size!24869 lt!989900) lt!990028)))

(declare-fun b!2775489 () Bool)

(assert (=> b!2775489 (= e!1750595 0)))

(declare-fun b!2775490 () Bool)

(assert (=> b!2775490 (= e!1750595 (+ 1 (size!24869 (t!228300 lt!989900))))))

(assert (= (and d!806696 c!450641) b!2775489))

(assert (= (and d!806696 (not c!450641)) b!2775490))

(declare-fun m!3202355 () Bool)

(assert (=> b!2775490 m!3202355))

(assert (=> b!2775148 d!806696))

(declare-fun d!806698 () Bool)

(declare-fun lt!990029 () Int)

(assert (=> d!806698 (>= lt!990029 0)))

(declare-fun e!1750596 () Int)

(assert (=> d!806698 (= lt!990029 e!1750596)))

(declare-fun c!450642 () Bool)

(assert (=> d!806698 (= c!450642 ((_ is Nil!32072) lt!989488))))

(assert (=> d!806698 (= (size!24869 lt!989488) lt!990029)))

(declare-fun b!2775491 () Bool)

(assert (=> b!2775491 (= e!1750596 0)))

(declare-fun b!2775492 () Bool)

(assert (=> b!2775492 (= e!1750596 (+ 1 (size!24869 (t!228300 lt!989488))))))

(assert (= (and d!806698 c!450642) b!2775491))

(assert (= (and d!806698 (not c!450642)) b!2775492))

(declare-fun m!3202357 () Bool)

(assert (=> b!2775492 m!3202357))

(assert (=> b!2775148 d!806698))

(declare-fun d!806700 () Bool)

(declare-fun lt!990030 () Int)

(assert (=> d!806700 (>= lt!990030 0)))

(declare-fun e!1750597 () Int)

(assert (=> d!806700 (= lt!990030 e!1750597)))

(declare-fun c!450643 () Bool)

(assert (=> d!806700 (= c!450643 ((_ is Nil!32072) lt!989532))))

(assert (=> d!806700 (= (size!24869 lt!989532) lt!990030)))

(declare-fun b!2775493 () Bool)

(assert (=> b!2775493 (= e!1750597 0)))

(declare-fun b!2775494 () Bool)

(assert (=> b!2775494 (= e!1750597 (+ 1 (size!24869 (t!228300 lt!989532))))))

(assert (= (and d!806700 c!450643) b!2775493))

(assert (= (and d!806700 (not c!450643)) b!2775494))

(declare-fun m!3202359 () Bool)

(assert (=> b!2775494 m!3202359))

(assert (=> b!2775148 d!806700))

(assert (=> bm!181568 d!806508))

(declare-fun d!806702 () Bool)

(declare-fun c!450644 () Bool)

(assert (=> d!806702 (= c!450644 ((_ is Nil!32072) lt!989553))))

(declare-fun e!1750598 () (InoxSet C!16364))

(assert (=> d!806702 (= (content!4508 lt!989553) e!1750598)))

(declare-fun b!2775495 () Bool)

(assert (=> b!2775495 (= e!1750598 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775496 () Bool)

(assert (=> b!2775496 (= e!1750598 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989553) true) (content!4508 (t!228300 lt!989553))))))

(assert (= (and d!806702 c!450644) b!2775495))

(assert (= (and d!806702 (not c!450644)) b!2775496))

(declare-fun m!3202361 () Bool)

(assert (=> b!2775496 m!3202361))

(declare-fun m!3202363 () Bool)

(assert (=> b!2775496 m!3202363))

(assert (=> d!806466 d!806702))

(declare-fun d!806704 () Bool)

(declare-fun c!450645 () Bool)

(assert (=> d!806704 (= c!450645 ((_ is Nil!32072) (_1!19065 lt!989526)))))

(declare-fun e!1750599 () (InoxSet C!16364))

(assert (=> d!806704 (= (content!4508 (_1!19065 lt!989526)) e!1750599)))

(declare-fun b!2775497 () Bool)

(assert (=> b!2775497 (= e!1750599 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775498 () Bool)

(assert (=> b!2775498 (= e!1750599 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (_1!19065 lt!989526)) true) (content!4508 (t!228300 (_1!19065 lt!989526)))))))

(assert (= (and d!806704 c!450645) b!2775497))

(assert (= (and d!806704 (not c!450645)) b!2775498))

(declare-fun m!3202365 () Bool)

(assert (=> b!2775498 m!3202365))

(declare-fun m!3202367 () Bool)

(assert (=> b!2775498 m!3202367))

(assert (=> d!806466 d!806704))

(declare-fun d!806706 () Bool)

(declare-fun c!450646 () Bool)

(assert (=> d!806706 (= c!450646 ((_ is Nil!32072) (_2!19065 lt!989526)))))

(declare-fun e!1750600 () (InoxSet C!16364))

(assert (=> d!806706 (= (content!4508 (_2!19065 lt!989526)) e!1750600)))

(declare-fun b!2775499 () Bool)

(assert (=> b!2775499 (= e!1750600 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775500 () Bool)

(assert (=> b!2775500 (= e!1750600 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (_2!19065 lt!989526)) true) (content!4508 (t!228300 (_2!19065 lt!989526)))))))

(assert (= (and d!806706 c!450646) b!2775499))

(assert (= (and d!806706 (not c!450646)) b!2775500))

(declare-fun m!3202369 () Bool)

(assert (=> b!2775500 m!3202369))

(declare-fun m!3202371 () Bool)

(assert (=> b!2775500 m!3202371))

(assert (=> d!806466 d!806706))

(declare-fun b!2775501 () Bool)

(declare-fun e!1750601 () List!32172)

(assert (=> b!2775501 (= e!1750601 Nil!32072)))

(declare-fun b!2775502 () Bool)

(declare-fun e!1750602 () List!32172)

(assert (=> b!2775502 (= e!1750601 e!1750602)))

(declare-fun c!450648 () Bool)

(assert (=> b!2775502 (= c!450648 ((_ is Leaf!15201) (c!450499 (_2!19066 lt!989540))))))

(declare-fun d!806708 () Bool)

(declare-fun c!450647 () Bool)

(assert (=> d!806708 (= c!450647 ((_ is Empty!9981) (c!450499 (_2!19066 lt!989540))))))

(assert (=> d!806708 (= (list!12097 (c!450499 (_2!19066 lt!989540))) e!1750601)))

(declare-fun b!2775503 () Bool)

(assert (=> b!2775503 (= e!1750602 (list!12098 (xs!13091 (c!450499 (_2!19066 lt!989540)))))))

(declare-fun b!2775504 () Bool)

(assert (=> b!2775504 (= e!1750602 (++!7932 (list!12097 (left!24418 (c!450499 (_2!19066 lt!989540)))) (list!12097 (right!24748 (c!450499 (_2!19066 lt!989540))))))))

(assert (= (and d!806708 c!450647) b!2775501))

(assert (= (and d!806708 (not c!450647)) b!2775502))

(assert (= (and b!2775502 c!450648) b!2775503))

(assert (= (and b!2775502 (not c!450648)) b!2775504))

(declare-fun m!3202373 () Bool)

(assert (=> b!2775503 m!3202373))

(declare-fun m!3202375 () Bool)

(assert (=> b!2775504 m!3202375))

(declare-fun m!3202377 () Bool)

(assert (=> b!2775504 m!3202377))

(assert (=> b!2775504 m!3202375))

(assert (=> b!2775504 m!3202377))

(declare-fun m!3202379 () Bool)

(assert (=> b!2775504 m!3202379))

(assert (=> d!806582 d!806708))

(declare-fun d!806710 () Bool)

(declare-fun lt!990031 () List!32172)

(assert (=> d!806710 (= (++!7932 lt!989499 lt!990031) lt!989496)))

(declare-fun e!1750603 () List!32172)

(assert (=> d!806710 (= lt!990031 e!1750603)))

(declare-fun c!450649 () Bool)

(assert (=> d!806710 (= c!450649 ((_ is Cons!32072) lt!989499))))

(assert (=> d!806710 (>= (size!24869 lt!989496) (size!24869 lt!989499))))

(assert (=> d!806710 (= (getSuffix!1239 lt!989496 lt!989499) lt!990031)))

(declare-fun b!2775505 () Bool)

(assert (=> b!2775505 (= e!1750603 (getSuffix!1239 (tail!4390 lt!989496) (t!228300 lt!989499)))))

(declare-fun b!2775506 () Bool)

(assert (=> b!2775506 (= e!1750603 lt!989496)))

(assert (= (and d!806710 c!450649) b!2775505))

(assert (= (and d!806710 (not c!450649)) b!2775506))

(declare-fun m!3202381 () Bool)

(assert (=> d!806710 m!3202381))

(assert (=> d!806710 m!3201391))

(assert (=> d!806710 m!3201749))

(assert (=> b!2775505 m!3201395))

(assert (=> b!2775505 m!3201395))

(declare-fun m!3202383 () Bool)

(assert (=> b!2775505 m!3202383))

(assert (=> d!806538 d!806710))

(declare-fun b!2775508 () Bool)

(declare-fun res!1159750 () Bool)

(declare-fun e!1750606 () Bool)

(assert (=> b!2775508 (=> (not res!1159750) (not e!1750606))))

(assert (=> b!2775508 (= res!1159750 (= (head!6152 lt!989499) (head!6152 (++!7932 lt!989499 lt!989504))))))

(declare-fun b!2775507 () Bool)

(declare-fun e!1750605 () Bool)

(assert (=> b!2775507 (= e!1750605 e!1750606)))

(declare-fun res!1159751 () Bool)

(assert (=> b!2775507 (=> (not res!1159751) (not e!1750606))))

(assert (=> b!2775507 (= res!1159751 (not ((_ is Nil!32072) (++!7932 lt!989499 lt!989504))))))

(declare-fun d!806712 () Bool)

(declare-fun e!1750604 () Bool)

(assert (=> d!806712 e!1750604))

(declare-fun res!1159752 () Bool)

(assert (=> d!806712 (=> res!1159752 e!1750604)))

(declare-fun lt!990032 () Bool)

(assert (=> d!806712 (= res!1159752 (not lt!990032))))

(assert (=> d!806712 (= lt!990032 e!1750605)))

(declare-fun res!1159749 () Bool)

(assert (=> d!806712 (=> res!1159749 e!1750605)))

(assert (=> d!806712 (= res!1159749 ((_ is Nil!32072) lt!989499))))

(assert (=> d!806712 (= (isPrefix!2557 lt!989499 (++!7932 lt!989499 lt!989504)) lt!990032)))

(declare-fun b!2775509 () Bool)

(assert (=> b!2775509 (= e!1750606 (isPrefix!2557 (tail!4390 lt!989499) (tail!4390 (++!7932 lt!989499 lt!989504))))))

(declare-fun b!2775510 () Bool)

(assert (=> b!2775510 (= e!1750604 (>= (size!24869 (++!7932 lt!989499 lt!989504)) (size!24869 lt!989499)))))

(assert (= (and d!806712 (not res!1159749)) b!2775507))

(assert (= (and b!2775507 res!1159751) b!2775508))

(assert (= (and b!2775508 res!1159750) b!2775509))

(assert (= (and d!806712 (not res!1159752)) b!2775510))

(declare-fun m!3202385 () Bool)

(assert (=> b!2775508 m!3202385))

(assert (=> b!2775508 m!3201447))

(declare-fun m!3202387 () Bool)

(assert (=> b!2775508 m!3202387))

(declare-fun m!3202389 () Bool)

(assert (=> b!2775509 m!3202389))

(assert (=> b!2775509 m!3201447))

(declare-fun m!3202391 () Bool)

(assert (=> b!2775509 m!3202391))

(assert (=> b!2775509 m!3202389))

(assert (=> b!2775509 m!3202391))

(declare-fun m!3202393 () Bool)

(assert (=> b!2775509 m!3202393))

(assert (=> b!2775510 m!3201447))

(declare-fun m!3202395 () Bool)

(assert (=> b!2775510 m!3202395))

(assert (=> b!2775510 m!3201749))

(assert (=> d!806538 d!806712))

(declare-fun d!806714 () Bool)

(assert (=> d!806714 (isPrefix!2557 lt!989499 (++!7932 lt!989499 lt!989504))))

(declare-fun lt!990033 () Unit!46204)

(assert (=> d!806714 (= lt!990033 (choose!16272 lt!989499 lt!989504))))

(assert (=> d!806714 (= (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989499 lt!989504) lt!990033)))

(declare-fun bs!505361 () Bool)

(assert (= bs!505361 d!806714))

(assert (=> bs!505361 m!3201447))

(assert (=> bs!505361 m!3201447))

(assert (=> bs!505361 m!3201831))

(declare-fun m!3202397 () Bool)

(assert (=> bs!505361 m!3202397))

(assert (=> d!806538 d!806714))

(declare-fun d!806716 () Bool)

(assert (=> d!806716 (= lt!989504 lt!989875)))

(declare-fun lt!990034 () Unit!46204)

(assert (=> d!806716 (= lt!990034 (choose!16273 lt!989499 lt!989504 lt!989499 lt!989875 lt!989496))))

(assert (=> d!806716 (isPrefix!2557 lt!989499 lt!989496)))

(assert (=> d!806716 (= (lemmaSamePrefixThenSameSuffix!1141 lt!989499 lt!989504 lt!989499 lt!989875 lt!989496) lt!990034)))

(declare-fun bs!505362 () Bool)

(assert (= bs!505362 d!806716))

(declare-fun m!3202399 () Bool)

(assert (=> bs!505362 m!3202399))

(declare-fun m!3202401 () Bool)

(assert (=> bs!505362 m!3202401))

(assert (=> d!806538 d!806716))

(assert (=> d!806538 d!806502))

(declare-fun bs!505363 () Bool)

(declare-fun d!806718 () Bool)

(assert (= bs!505363 (and d!806718 d!806638)))

(declare-fun lambda!101840 () Int)

(assert (=> bs!505363 (= lambda!101840 lambda!101830)))

(declare-fun bs!505364 () Bool)

(assert (= bs!505364 (and d!806718 b!2774981)))

(assert (=> bs!505364 (not (= lambda!101840 lambda!101810))))

(declare-fun bs!505365 () Bool)

(assert (= bs!505365 (and d!806718 d!806678)))

(assert (=> bs!505365 (not (= lambda!101840 lambda!101836))))

(declare-fun bs!505366 () Bool)

(assert (= bs!505366 (and d!806718 b!2775434)))

(assert (=> bs!505366 (not (= lambda!101840 lambda!101832))))

(declare-fun bs!505367 () Bool)

(assert (= bs!505367 (and d!806718 d!806544)))

(assert (=> bs!505367 (not (= lambda!101840 lambda!101814))))

(declare-fun bs!505368 () Bool)

(assert (= bs!505368 (and d!806718 d!806468)))

(assert (=> bs!505368 (= lambda!101840 lambda!101809)))

(declare-fun bs!505369 () Bool)

(assert (= bs!505369 (and d!806718 b!2775433)))

(assert (=> bs!505369 (not (= lambda!101840 lambda!101831))))

(declare-fun bs!505370 () Bool)

(assert (= bs!505370 (and d!806718 b!2774982)))

(assert (=> bs!505370 (not (= lambda!101840 lambda!101811))))

(declare-fun bs!505371 () Bool)

(assert (= bs!505371 (and d!806718 d!806614)))

(assert (=> bs!505371 (not (= lambda!101840 lambda!101827))))

(declare-fun bs!505372 () Bool)

(declare-fun b!2775511 () Bool)

(assert (= bs!505372 (and b!2775511 d!806638)))

(declare-fun lambda!101841 () Int)

(assert (=> bs!505372 (not (= lambda!101841 lambda!101830))))

(declare-fun bs!505373 () Bool)

(assert (= bs!505373 (and b!2775511 b!2774981)))

(assert (=> bs!505373 (= lambda!101841 lambda!101810)))

(declare-fun bs!505374 () Bool)

(assert (= bs!505374 (and b!2775511 d!806678)))

(assert (=> bs!505374 (not (= lambda!101841 lambda!101836))))

(declare-fun bs!505375 () Bool)

(assert (= bs!505375 (and b!2775511 b!2775434)))

(assert (=> bs!505375 (= lambda!101841 lambda!101832)))

(declare-fun bs!505376 () Bool)

(assert (= bs!505376 (and b!2775511 d!806718)))

(assert (=> bs!505376 (not (= lambda!101841 lambda!101840))))

(declare-fun bs!505377 () Bool)

(assert (= bs!505377 (and b!2775511 d!806544)))

(assert (=> bs!505377 (not (= lambda!101841 lambda!101814))))

(declare-fun bs!505378 () Bool)

(assert (= bs!505378 (and b!2775511 d!806468)))

(assert (=> bs!505378 (not (= lambda!101841 lambda!101809))))

(declare-fun bs!505379 () Bool)

(assert (= bs!505379 (and b!2775511 b!2775433)))

(assert (=> bs!505379 (= lambda!101841 lambda!101831)))

(declare-fun bs!505380 () Bool)

(assert (= bs!505380 (and b!2775511 b!2774982)))

(assert (=> bs!505380 (= lambda!101841 lambda!101811)))

(declare-fun bs!505381 () Bool)

(assert (= bs!505381 (and b!2775511 d!806614)))

(assert (=> bs!505381 (not (= lambda!101841 lambda!101827))))

(declare-fun bs!505382 () Bool)

(declare-fun b!2775512 () Bool)

(assert (= bs!505382 (and b!2775512 d!806638)))

(declare-fun lambda!101842 () Int)

(assert (=> bs!505382 (not (= lambda!101842 lambda!101830))))

(declare-fun bs!505383 () Bool)

(assert (= bs!505383 (and b!2775512 b!2774981)))

(assert (=> bs!505383 (= lambda!101842 lambda!101810)))

(declare-fun bs!505384 () Bool)

(assert (= bs!505384 (and b!2775512 d!806678)))

(assert (=> bs!505384 (not (= lambda!101842 lambda!101836))))

(declare-fun bs!505385 () Bool)

(assert (= bs!505385 (and b!2775512 b!2775434)))

(assert (=> bs!505385 (= lambda!101842 lambda!101832)))

(declare-fun bs!505386 () Bool)

(assert (= bs!505386 (and b!2775512 d!806718)))

(assert (=> bs!505386 (not (= lambda!101842 lambda!101840))))

(declare-fun bs!505387 () Bool)

(assert (= bs!505387 (and b!2775512 d!806544)))

(assert (=> bs!505387 (not (= lambda!101842 lambda!101814))))

(declare-fun bs!505388 () Bool)

(assert (= bs!505388 (and b!2775512 d!806468)))

(assert (=> bs!505388 (not (= lambda!101842 lambda!101809))))

(declare-fun bs!505389 () Bool)

(assert (= bs!505389 (and b!2775512 b!2775433)))

(assert (=> bs!505389 (= lambda!101842 lambda!101831)))

(declare-fun bs!505390 () Bool)

(assert (= bs!505390 (and b!2775512 b!2775511)))

(assert (=> bs!505390 (= lambda!101842 lambda!101841)))

(declare-fun bs!505391 () Bool)

(assert (= bs!505391 (and b!2775512 b!2774982)))

(assert (=> bs!505391 (= lambda!101842 lambda!101811)))

(declare-fun bs!505392 () Bool)

(assert (= bs!505392 (and b!2775512 d!806614)))

(assert (=> bs!505392 (not (= lambda!101842 lambda!101827))))

(declare-fun bm!181591 () Bool)

(declare-fun call!181596 () List!32176)

(assert (=> bm!181591 (= call!181596 (toList!1841 call!181484))))

(declare-fun lt!990039 () Bool)

(assert (=> d!806718 (= lt!990039 (isEmpty!18098 (getLanguageWitness!189 call!181484)))))

(assert (=> d!806718 (= lt!990039 (forall!6631 call!181484 lambda!101840))))

(declare-fun lt!990042 () Unit!46204)

(declare-fun e!1750607 () Unit!46204)

(assert (=> d!806718 (= lt!990042 e!1750607)))

(declare-fun c!450650 () Bool)

(assert (=> d!806718 (= c!450650 (not (forall!6631 call!181484 lambda!101840)))))

(assert (=> d!806718 (= (lostCauseZipper!443 call!181484) lt!990039)))

(declare-fun Unit!46234 () Unit!46204)

(assert (=> b!2775512 (= e!1750607 Unit!46234)))

(declare-fun lt!990037 () List!32176)

(assert (=> b!2775512 (= lt!990037 call!181596)))

(declare-fun lt!990041 () Unit!46204)

(assert (=> b!2775512 (= lt!990041 (lemmaForallThenNotExists!84 lt!990037 lambda!101840))))

(declare-fun call!181595 () Bool)

(assert (=> b!2775512 (not call!181595)))

(declare-fun lt!990035 () Unit!46204)

(assert (=> b!2775512 (= lt!990035 lt!990041)))

(declare-fun lt!990036 () List!32176)

(declare-fun bm!181590 () Bool)

(assert (=> bm!181590 (= call!181595 (exists!976 (ite c!450650 lt!990036 lt!990037) (ite c!450650 lambda!101841 lambda!101842)))))

(declare-fun Unit!46235 () Unit!46204)

(assert (=> b!2775511 (= e!1750607 Unit!46235)))

(assert (=> b!2775511 (= lt!990036 call!181596)))

(declare-fun lt!990040 () Unit!46204)

(assert (=> b!2775511 (= lt!990040 (lemmaNotForallThenExists!84 lt!990036 lambda!101840))))

(assert (=> b!2775511 call!181595))

(declare-fun lt!990038 () Unit!46204)

(assert (=> b!2775511 (= lt!990038 lt!990040)))

(assert (= (and d!806718 c!450650) b!2775511))

(assert (= (and d!806718 (not c!450650)) b!2775512))

(assert (= (or b!2775511 b!2775512) bm!181590))

(assert (= (or b!2775511 b!2775512) bm!181591))

(declare-fun m!3202403 () Bool)

(assert (=> bm!181590 m!3202403))

(declare-fun m!3202405 () Bool)

(assert (=> bm!181591 m!3202405))

(declare-fun m!3202407 () Bool)

(assert (=> b!2775512 m!3202407))

(declare-fun m!3202409 () Bool)

(assert (=> d!806718 m!3202409))

(assert (=> d!806718 m!3202409))

(declare-fun m!3202411 () Bool)

(assert (=> d!806718 m!3202411))

(declare-fun m!3202413 () Bool)

(assert (=> d!806718 m!3202413))

(assert (=> d!806718 m!3202413))

(declare-fun m!3202415 () Bool)

(assert (=> b!2775511 m!3202415))

(assert (=> d!806538 d!806718))

(declare-fun d!806720 () Bool)

(declare-fun e!1750608 () Bool)

(assert (=> d!806720 e!1750608))

(declare-fun res!1159753 () Bool)

(assert (=> d!806720 (=> (not res!1159753) (not e!1750608))))

(declare-fun lt!990043 () List!32172)

(assert (=> d!806720 (= res!1159753 (= (content!4508 lt!990043) ((_ map or) (content!4508 (_1!19065 lt!989892)) (content!4508 (_2!19065 lt!989892)))))))

(declare-fun e!1750609 () List!32172)

(assert (=> d!806720 (= lt!990043 e!1750609)))

(declare-fun c!450651 () Bool)

(assert (=> d!806720 (= c!450651 ((_ is Nil!32072) (_1!19065 lt!989892)))))

(assert (=> d!806720 (= (++!7932 (_1!19065 lt!989892) (_2!19065 lt!989892)) lt!990043)))

(declare-fun b!2775516 () Bool)

(assert (=> b!2775516 (= e!1750608 (or (not (= (_2!19065 lt!989892) Nil!32072)) (= lt!990043 (_1!19065 lt!989892))))))

(declare-fun b!2775514 () Bool)

(assert (=> b!2775514 (= e!1750609 (Cons!32072 (h!37492 (_1!19065 lt!989892)) (++!7932 (t!228300 (_1!19065 lt!989892)) (_2!19065 lt!989892))))))

(declare-fun b!2775513 () Bool)

(assert (=> b!2775513 (= e!1750609 (_2!19065 lt!989892))))

(declare-fun b!2775515 () Bool)

(declare-fun res!1159754 () Bool)

(assert (=> b!2775515 (=> (not res!1159754) (not e!1750608))))

(assert (=> b!2775515 (= res!1159754 (= (size!24869 lt!990043) (+ (size!24869 (_1!19065 lt!989892)) (size!24869 (_2!19065 lt!989892)))))))

(assert (= (and d!806720 c!450651) b!2775513))

(assert (= (and d!806720 (not c!450651)) b!2775514))

(assert (= (and d!806720 res!1159753) b!2775515))

(assert (= (and b!2775515 res!1159754) b!2775516))

(declare-fun m!3202417 () Bool)

(assert (=> d!806720 m!3202417))

(declare-fun m!3202419 () Bool)

(assert (=> d!806720 m!3202419))

(declare-fun m!3202421 () Bool)

(assert (=> d!806720 m!3202421))

(declare-fun m!3202423 () Bool)

(assert (=> b!2775514 m!3202423))

(declare-fun m!3202425 () Bool)

(assert (=> b!2775515 m!3202425))

(assert (=> b!2775515 m!3201843))

(declare-fun m!3202427 () Bool)

(assert (=> b!2775515 m!3202427))

(assert (=> d!806538 d!806720))

(declare-fun d!806722 () Bool)

(declare-fun e!1750610 () Bool)

(assert (=> d!806722 e!1750610))

(declare-fun res!1159755 () Bool)

(assert (=> d!806722 (=> (not res!1159755) (not e!1750610))))

(declare-fun lt!990044 () List!32172)

(assert (=> d!806722 (= res!1159755 (= (content!4508 lt!990044) ((_ map or) (content!4508 (t!228300 lt!989499)) (content!4508 lt!989504))))))

(declare-fun e!1750611 () List!32172)

(assert (=> d!806722 (= lt!990044 e!1750611)))

(declare-fun c!450652 () Bool)

(assert (=> d!806722 (= c!450652 ((_ is Nil!32072) (t!228300 lt!989499)))))

(assert (=> d!806722 (= (++!7932 (t!228300 lt!989499) lt!989504) lt!990044)))

(declare-fun b!2775520 () Bool)

(assert (=> b!2775520 (= e!1750610 (or (not (= lt!989504 Nil!32072)) (= lt!990044 (t!228300 lt!989499))))))

(declare-fun b!2775518 () Bool)

(assert (=> b!2775518 (= e!1750611 (Cons!32072 (h!37492 (t!228300 lt!989499)) (++!7932 (t!228300 (t!228300 lt!989499)) lt!989504)))))

(declare-fun b!2775517 () Bool)

(assert (=> b!2775517 (= e!1750611 lt!989504)))

(declare-fun b!2775519 () Bool)

(declare-fun res!1159756 () Bool)

(assert (=> b!2775519 (=> (not res!1159756) (not e!1750610))))

(assert (=> b!2775519 (= res!1159756 (= (size!24869 lt!990044) (+ (size!24869 (t!228300 lt!989499)) (size!24869 lt!989504))))))

(assert (= (and d!806722 c!450652) b!2775517))

(assert (= (and d!806722 (not c!450652)) b!2775518))

(assert (= (and d!806722 res!1159755) b!2775519))

(assert (= (and b!2775519 res!1159756) b!2775520))

(declare-fun m!3202429 () Bool)

(assert (=> d!806722 m!3202429))

(declare-fun m!3202431 () Bool)

(assert (=> d!806722 m!3202431))

(assert (=> d!806722 m!3201743))

(declare-fun m!3202433 () Bool)

(assert (=> b!2775518 m!3202433))

(declare-fun m!3202435 () Bool)

(assert (=> b!2775519 m!3202435))

(assert (=> b!2775519 m!3202283))

(assert (=> b!2775519 m!3201751))

(assert (=> b!2775094 d!806722))

(declare-fun d!806724 () Bool)

(declare-fun lt!990045 () Int)

(assert (=> d!806724 (>= lt!990045 0)))

(declare-fun e!1750612 () Int)

(assert (=> d!806724 (= lt!990045 e!1750612)))

(declare-fun c!450653 () Bool)

(assert (=> d!806724 (= c!450653 ((_ is Nil!32072) lt!989916))))

(assert (=> d!806724 (= (size!24869 lt!989916) lt!990045)))

(declare-fun b!2775521 () Bool)

(assert (=> b!2775521 (= e!1750612 0)))

(declare-fun b!2775522 () Bool)

(assert (=> b!2775522 (= e!1750612 (+ 1 (size!24869 (t!228300 lt!989916))))))

(assert (= (and d!806724 c!450653) b!2775521))

(assert (= (and d!806724 (not c!450653)) b!2775522))

(declare-fun m!3202437 () Bool)

(assert (=> b!2775522 m!3202437))

(assert (=> b!2775196 d!806724))

(assert (=> b!2775196 d!806514))

(declare-fun d!806726 () Bool)

(declare-fun lt!990046 () Int)

(assert (=> d!806726 (>= lt!990046 0)))

(declare-fun e!1750613 () Int)

(assert (=> d!806726 (= lt!990046 e!1750613)))

(declare-fun c!450654 () Bool)

(assert (=> d!806726 (= c!450654 ((_ is Nil!32072) (Cons!32072 lt!989486 Nil!32072)))))

(assert (=> d!806726 (= (size!24869 (Cons!32072 lt!989486 Nil!32072)) lt!990046)))

(declare-fun b!2775523 () Bool)

(assert (=> b!2775523 (= e!1750613 0)))

(declare-fun b!2775524 () Bool)

(assert (=> b!2775524 (= e!1750613 (+ 1 (size!24869 (t!228300 (Cons!32072 lt!989486 Nil!32072)))))))

(assert (= (and d!806726 c!450654) b!2775523))

(assert (= (and d!806726 (not c!450654)) b!2775524))

(declare-fun m!3202439 () Bool)

(assert (=> b!2775524 m!3202439))

(assert (=> b!2775196 d!806726))

(declare-fun d!806728 () Bool)

(assert (=> d!806728 (= (isEmpty!18098 (getLanguageWitness!189 z!3597)) (not ((_ is Some!6261) (getLanguageWitness!189 z!3597))))))

(assert (=> d!806468 d!806728))

(declare-fun bs!505393 () Bool)

(declare-fun d!806730 () Bool)

(assert (= bs!505393 (and d!806730 d!806638)))

(declare-fun lambda!101849 () Int)

(assert (=> bs!505393 (not (= lambda!101849 lambda!101830))))

(declare-fun bs!505394 () Bool)

(assert (= bs!505394 (and d!806730 b!2774981)))

(assert (=> bs!505394 (= lambda!101849 lambda!101810)))

(declare-fun bs!505395 () Bool)

(assert (= bs!505395 (and d!806730 b!2775512)))

(assert (=> bs!505395 (= lambda!101849 lambda!101842)))

(declare-fun bs!505396 () Bool)

(assert (= bs!505396 (and d!806730 d!806678)))

(assert (=> bs!505396 (not (= lambda!101849 lambda!101836))))

(declare-fun bs!505397 () Bool)

(assert (= bs!505397 (and d!806730 b!2775434)))

(assert (=> bs!505397 (= lambda!101849 lambda!101832)))

(declare-fun bs!505398 () Bool)

(assert (= bs!505398 (and d!806730 d!806718)))

(assert (=> bs!505398 (not (= lambda!101849 lambda!101840))))

(declare-fun bs!505399 () Bool)

(assert (= bs!505399 (and d!806730 d!806544)))

(assert (=> bs!505399 (not (= lambda!101849 lambda!101814))))

(declare-fun bs!505400 () Bool)

(assert (= bs!505400 (and d!806730 d!806468)))

(assert (=> bs!505400 (not (= lambda!101849 lambda!101809))))

(declare-fun bs!505401 () Bool)

(assert (= bs!505401 (and d!806730 b!2775433)))

(assert (=> bs!505401 (= lambda!101849 lambda!101831)))

(declare-fun bs!505402 () Bool)

(assert (= bs!505402 (and d!806730 b!2775511)))

(assert (=> bs!505402 (= lambda!101849 lambda!101841)))

(declare-fun bs!505403 () Bool)

(assert (= bs!505403 (and d!806730 b!2774982)))

(assert (=> bs!505403 (= lambda!101849 lambda!101811)))

(declare-fun bs!505404 () Bool)

(assert (= bs!505404 (and d!806730 d!806614)))

(assert (=> bs!505404 (not (= lambda!101849 lambda!101827))))

(declare-fun lt!990049 () Option!6262)

(declare-fun isDefined!4938 (Option!6262) Bool)

(assert (=> d!806730 (= (isDefined!4938 lt!990049) (exists!977 z!3597 lambda!101849))))

(declare-fun e!1750616 () Option!6262)

(assert (=> d!806730 (= lt!990049 e!1750616)))

(declare-fun c!450663 () Bool)

(assert (=> d!806730 (= c!450663 (exists!977 z!3597 lambda!101849))))

(assert (=> d!806730 (= (getLanguageWitness!189 z!3597) lt!990049)))

(declare-fun b!2775529 () Bool)

(declare-fun getLanguageWitness!190 (Context!4642) Option!6262)

(declare-fun getWitness!567 ((InoxSet Context!4642) Int) Context!4642)

(assert (=> b!2775529 (= e!1750616 (getLanguageWitness!190 (getWitness!567 z!3597 lambda!101849)))))

(declare-fun b!2775530 () Bool)

(assert (=> b!2775530 (= e!1750616 None!6261)))

(assert (= (and d!806730 c!450663) b!2775529))

(assert (= (and d!806730 (not c!450663)) b!2775530))

(declare-fun m!3202441 () Bool)

(assert (=> d!806730 m!3202441))

(declare-fun m!3202443 () Bool)

(assert (=> d!806730 m!3202443))

(assert (=> d!806730 m!3202443))

(declare-fun m!3202445 () Bool)

(assert (=> b!2775529 m!3202445))

(assert (=> b!2775529 m!3202445))

(declare-fun m!3202447 () Bool)

(assert (=> b!2775529 m!3202447))

(assert (=> d!806468 d!806730))

(declare-fun d!806732 () Bool)

(declare-fun lt!990052 () Bool)

(assert (=> d!806732 (= lt!990052 (forall!6634 (toList!1841 z!3597) lambda!101809))))

(declare-fun choose!16284 ((InoxSet Context!4642) Int) Bool)

(assert (=> d!806732 (= lt!990052 (choose!16284 z!3597 lambda!101809))))

(assert (=> d!806732 (= (forall!6631 z!3597 lambda!101809) lt!990052)))

(declare-fun bs!505405 () Bool)

(assert (= bs!505405 d!806732))

(assert (=> bs!505405 m!3201511))

(assert (=> bs!505405 m!3201511))

(declare-fun m!3202449 () Bool)

(assert (=> bs!505405 m!3202449))

(declare-fun m!3202451 () Bool)

(assert (=> bs!505405 m!3202451))

(assert (=> d!806468 d!806732))

(declare-fun b!2775531 () Bool)

(declare-fun e!1750624 () Unit!46204)

(declare-fun Unit!46236 () Unit!46204)

(assert (=> b!2775531 (= e!1750624 Unit!46236)))

(declare-fun lt!990073 () Unit!46204)

(declare-fun call!181602 () Unit!46204)

(assert (=> b!2775531 (= lt!990073 call!181602)))

(declare-fun call!181598 () Bool)

(assert (=> b!2775531 call!181598))

(declare-fun lt!990069 () Unit!46204)

(assert (=> b!2775531 (= lt!990069 lt!990073)))

(declare-fun lt!990078 () Unit!46204)

(declare-fun call!181601 () Unit!46204)

(assert (=> b!2775531 (= lt!990078 call!181601)))

(assert (=> b!2775531 (= lt!989496 lt!989890)))

(declare-fun lt!990062 () Unit!46204)

(assert (=> b!2775531 (= lt!990062 lt!990078)))

(assert (=> b!2775531 false))

(declare-fun d!806734 () Bool)

(declare-fun e!1750622 () Bool)

(assert (=> d!806734 e!1750622))

(declare-fun res!1159758 () Bool)

(assert (=> d!806734 (=> (not res!1159758) (not e!1750622))))

(declare-fun lt!990077 () tuple2!32288)

(assert (=> d!806734 (= res!1159758 (= (++!7932 (_1!19065 lt!990077) (_2!19065 lt!990077)) lt!989496))))

(declare-fun e!1750618 () tuple2!32288)

(assert (=> d!806734 (= lt!990077 e!1750618)))

(declare-fun c!450668 () Bool)

(assert (=> d!806734 (= c!450668 (lostCauseZipper!443 call!181570))))

(declare-fun lt!990065 () Unit!46204)

(declare-fun Unit!46237 () Unit!46204)

(assert (=> d!806734 (= lt!990065 Unit!46237)))

(assert (=> d!806734 (= (getSuffix!1239 lt!989496 lt!989890) call!181566)))

(declare-fun lt!990064 () Unit!46204)

(declare-fun lt!990067 () Unit!46204)

(assert (=> d!806734 (= lt!990064 lt!990067)))

(declare-fun lt!990060 () List!32172)

(assert (=> d!806734 (= call!181566 lt!990060)))

(assert (=> d!806734 (= lt!990067 (lemmaSamePrefixThenSameSuffix!1141 lt!989890 call!181566 lt!989890 lt!990060 lt!989496))))

(assert (=> d!806734 (= lt!990060 (getSuffix!1239 lt!989496 lt!989890))))

(declare-fun lt!990061 () Unit!46204)

(declare-fun lt!990066 () Unit!46204)

(assert (=> d!806734 (= lt!990061 lt!990066)))

(assert (=> d!806734 (isPrefix!2557 lt!989890 (++!7932 lt!989890 call!181566))))

(assert (=> d!806734 (= lt!990066 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989890 call!181566))))

(assert (=> d!806734 (= (++!7932 lt!989890 call!181566) lt!989496)))

(assert (=> d!806734 (= (findLongestMatchInnerZipper!27 call!181570 lt!989890 (+ 1 1) call!181566 lt!989496 lt!989489) lt!990077)))

(declare-fun bm!181592 () Bool)

(declare-fun call!181603 () C!16364)

(assert (=> bm!181592 (= call!181603 (head!6152 call!181566))))

(declare-fun b!2775532 () Bool)

(declare-fun e!1750619 () tuple2!32288)

(declare-fun call!181597 () tuple2!32288)

(assert (=> b!2775532 (= e!1750619 call!181597)))

(declare-fun b!2775533 () Bool)

(declare-fun e!1750620 () Bool)

(assert (=> b!2775533 (= e!1750620 (>= (size!24869 (_1!19065 lt!990077)) (size!24869 lt!989890)))))

(declare-fun b!2775534 () Bool)

(declare-fun c!450665 () Bool)

(declare-fun call!181599 () Bool)

(assert (=> b!2775534 (= c!450665 call!181599)))

(declare-fun lt!990070 () Unit!46204)

(declare-fun lt!990076 () Unit!46204)

(assert (=> b!2775534 (= lt!990070 lt!990076)))

(assert (=> b!2775534 (= lt!989496 lt!989890)))

(assert (=> b!2775534 (= lt!990076 call!181601)))

(declare-fun lt!990056 () Unit!46204)

(declare-fun lt!990063 () Unit!46204)

(assert (=> b!2775534 (= lt!990056 lt!990063)))

(assert (=> b!2775534 call!181598))

(assert (=> b!2775534 (= lt!990063 call!181602)))

(declare-fun e!1750617 () tuple2!32288)

(declare-fun e!1750623 () tuple2!32288)

(assert (=> b!2775534 (= e!1750617 e!1750623)))

(declare-fun b!2775535 () Bool)

(assert (=> b!2775535 (= e!1750623 (tuple2!32289 lt!989890 Nil!32072))))

(declare-fun b!2775536 () Bool)

(assert (=> b!2775536 (= e!1750618 e!1750617)))

(declare-fun c!450666 () Bool)

(assert (=> b!2775536 (= c!450666 (= (+ 1 1) lt!989489))))

(declare-fun b!2775537 () Bool)

(assert (=> b!2775537 (= e!1750622 e!1750620)))

(declare-fun res!1159757 () Bool)

(assert (=> b!2775537 (=> res!1159757 e!1750620)))

(assert (=> b!2775537 (= res!1159757 (isEmpty!18097 (_1!19065 lt!990077)))))

(declare-fun b!2775538 () Bool)

(declare-fun e!1750621 () tuple2!32288)

(assert (=> b!2775538 (= e!1750621 (tuple2!32289 lt!989890 call!181566))))

(declare-fun b!2775539 () Bool)

(declare-fun Unit!46238 () Unit!46204)

(assert (=> b!2775539 (= e!1750624 Unit!46238)))

(declare-fun bm!181593 () Bool)

(assert (=> bm!181593 (= call!181599 (nullableZipper!636 call!181570))))

(declare-fun b!2775540 () Bool)

(declare-fun c!450667 () Bool)

(assert (=> b!2775540 (= c!450667 call!181599)))

(declare-fun lt!990068 () Unit!46204)

(declare-fun lt!990071 () Unit!46204)

(assert (=> b!2775540 (= lt!990068 lt!990071)))

(declare-fun lt!990055 () C!16364)

(declare-fun lt!990057 () List!32172)

(assert (=> b!2775540 (= (++!7932 (++!7932 lt!989890 (Cons!32072 lt!990055 Nil!32072)) lt!990057) lt!989496)))

(assert (=> b!2775540 (= lt!990071 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989890 lt!990055 lt!990057 lt!989496))))

(assert (=> b!2775540 (= lt!990057 (tail!4390 call!181566))))

(assert (=> b!2775540 (= lt!990055 (head!6152 call!181566))))

(declare-fun lt!990074 () Unit!46204)

(declare-fun lt!990054 () Unit!46204)

(assert (=> b!2775540 (= lt!990074 lt!990054)))

(assert (=> b!2775540 (isPrefix!2557 (++!7932 lt!989890 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989890)) Nil!32072)) lt!989496)))

(assert (=> b!2775540 (= lt!990054 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989890 lt!989496))))

(declare-fun lt!990075 () List!32172)

(assert (=> b!2775540 (= lt!990075 (++!7932 lt!989890 (Cons!32072 (head!6152 call!181566) Nil!32072)))))

(declare-fun lt!990058 () Unit!46204)

(assert (=> b!2775540 (= lt!990058 e!1750624)))

(declare-fun c!450664 () Bool)

(assert (=> b!2775540 (= c!450664 (= (size!24869 lt!989890) (size!24869 lt!989496)))))

(declare-fun lt!990059 () Unit!46204)

(declare-fun lt!990072 () Unit!46204)

(assert (=> b!2775540 (= lt!990059 lt!990072)))

(assert (=> b!2775540 (<= (size!24869 lt!989890) (size!24869 lt!989496))))

(assert (=> b!2775540 (= lt!990072 (lemmaIsPrefixThenSmallerEqSize!264 lt!989890 lt!989496))))

(assert (=> b!2775540 (= e!1750617 e!1750619)))

(declare-fun bm!181594 () Bool)

(declare-fun call!181604 () (InoxSet Context!4642))

(assert (=> bm!181594 (= call!181604 (derivationStepZipper!369 call!181570 call!181603))))

(declare-fun b!2775541 () Bool)

(assert (=> b!2775541 (= e!1750623 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181595 () Bool)

(assert (=> bm!181595 (= call!181602 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun b!2775542 () Bool)

(declare-fun lt!990053 () tuple2!32288)

(assert (=> b!2775542 (= e!1750621 lt!990053)))

(declare-fun b!2775543 () Bool)

(assert (=> b!2775543 (= e!1750618 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun call!181600 () List!32172)

(declare-fun bm!181596 () Bool)

(assert (=> bm!181596 (= call!181597 (findLongestMatchInnerZipper!27 call!181604 lt!990075 (+ 1 1 1) call!181600 lt!989496 lt!989489))))

(declare-fun bm!181597 () Bool)

(assert (=> bm!181597 (= call!181601 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 lt!989890 lt!989496))))

(declare-fun b!2775544 () Bool)

(assert (=> b!2775544 (= e!1750619 e!1750621)))

(assert (=> b!2775544 (= lt!990053 call!181597)))

(declare-fun c!450669 () Bool)

(assert (=> b!2775544 (= c!450669 (isEmpty!18097 (_1!19065 lt!990053)))))

(declare-fun bm!181598 () Bool)

(assert (=> bm!181598 (= call!181600 (tail!4390 call!181566))))

(declare-fun bm!181599 () Bool)

(assert (=> bm!181599 (= call!181598 (isPrefix!2557 lt!989496 lt!989496))))

(assert (= (and d!806734 c!450668) b!2775543))

(assert (= (and d!806734 (not c!450668)) b!2775536))

(assert (= (and b!2775536 c!450666) b!2775534))

(assert (= (and b!2775536 (not c!450666)) b!2775540))

(assert (= (and b!2775534 c!450665) b!2775535))

(assert (= (and b!2775534 (not c!450665)) b!2775541))

(assert (= (and b!2775540 c!450664) b!2775531))

(assert (= (and b!2775540 (not c!450664)) b!2775539))

(assert (= (and b!2775540 c!450667) b!2775544))

(assert (= (and b!2775540 (not c!450667)) b!2775532))

(assert (= (and b!2775544 c!450669) b!2775538))

(assert (= (and b!2775544 (not c!450669)) b!2775542))

(assert (= (or b!2775544 b!2775532) bm!181598))

(assert (= (or b!2775544 b!2775532) bm!181592))

(assert (= (or b!2775544 b!2775532) bm!181594))

(assert (= (or b!2775544 b!2775532) bm!181596))

(assert (= (or b!2775534 b!2775540) bm!181593))

(assert (= (or b!2775534 b!2775531) bm!181595))

(assert (= (or b!2775534 b!2775531) bm!181597))

(assert (= (or b!2775534 b!2775531) bm!181599))

(assert (= (and d!806734 res!1159758) b!2775537))

(assert (= (and b!2775537 (not res!1159757)) b!2775533))

(declare-fun m!3202453 () Bool)

(assert (=> b!2775540 m!3202453))

(declare-fun m!3202455 () Bool)

(assert (=> b!2775540 m!3202455))

(declare-fun m!3202457 () Bool)

(assert (=> b!2775540 m!3202457))

(declare-fun m!3202459 () Bool)

(assert (=> b!2775540 m!3202459))

(declare-fun m!3202461 () Bool)

(assert (=> b!2775540 m!3202461))

(declare-fun m!3202463 () Bool)

(assert (=> b!2775540 m!3202463))

(declare-fun m!3202465 () Bool)

(assert (=> b!2775540 m!3202465))

(declare-fun m!3202467 () Bool)

(assert (=> b!2775540 m!3202467))

(declare-fun m!3202469 () Bool)

(assert (=> b!2775540 m!3202469))

(assert (=> b!2775540 m!3202465))

(declare-fun m!3202471 () Bool)

(assert (=> b!2775540 m!3202471))

(assert (=> b!2775540 m!3202469))

(declare-fun m!3202473 () Bool)

(assert (=> b!2775540 m!3202473))

(assert (=> b!2775540 m!3202461))

(declare-fun m!3202475 () Bool)

(assert (=> b!2775540 m!3202475))

(assert (=> b!2775540 m!3201391))

(declare-fun m!3202477 () Bool)

(assert (=> b!2775540 m!3202477))

(declare-fun m!3202479 () Bool)

(assert (=> b!2775544 m!3202479))

(assert (=> bm!181595 m!3201335))

(assert (=> bm!181599 m!3201381))

(declare-fun m!3202481 () Bool)

(assert (=> d!806734 m!3202481))

(declare-fun m!3202483 () Bool)

(assert (=> d!806734 m!3202483))

(declare-fun m!3202485 () Bool)

(assert (=> d!806734 m!3202485))

(assert (=> d!806734 m!3202481))

(assert (=> d!806734 m!3202469))

(declare-fun m!3202487 () Bool)

(assert (=> d!806734 m!3202487))

(declare-fun m!3202489 () Bool)

(assert (=> d!806734 m!3202489))

(declare-fun m!3202491 () Bool)

(assert (=> d!806734 m!3202491))

(declare-fun m!3202493 () Bool)

(assert (=> bm!181597 m!3202493))

(declare-fun m!3202495 () Bool)

(assert (=> b!2775533 m!3202495))

(assert (=> b!2775533 m!3202457))

(declare-fun m!3202497 () Bool)

(assert (=> bm!181596 m!3202497))

(declare-fun m!3202499 () Bool)

(assert (=> bm!181593 m!3202499))

(declare-fun m!3202501 () Bool)

(assert (=> bm!181594 m!3202501))

(declare-fun m!3202503 () Bool)

(assert (=> b!2775537 m!3202503))

(assert (=> bm!181598 m!3202467))

(assert (=> bm!181592 m!3202459))

(assert (=> bm!181562 d!806734))

(declare-fun d!806736 () Bool)

(assert (not d!806736))

(assert (=> b!2774970 d!806736))

(declare-fun d!806738 () Bool)

(assert (=> d!806738 (= (head!6152 (++!7932 Nil!32072 lt!989496)) (h!37492 (++!7932 Nil!32072 lt!989496)))))

(assert (=> b!2774970 d!806738))

(assert (=> b!2775092 d!806594))

(declare-fun b!2775545 () Bool)

(declare-fun e!1750625 () List!32172)

(assert (=> b!2775545 (= e!1750625 Nil!32072)))

(declare-fun b!2775546 () Bool)

(declare-fun e!1750626 () List!32172)

(assert (=> b!2775546 (= e!1750625 e!1750626)))

(declare-fun c!450671 () Bool)

(assert (=> b!2775546 (= c!450671 ((_ is Leaf!15201) (c!450499 (_2!19066 lt!989480))))))

(declare-fun d!806740 () Bool)

(declare-fun c!450670 () Bool)

(assert (=> d!806740 (= c!450670 ((_ is Empty!9981) (c!450499 (_2!19066 lt!989480))))))

(assert (=> d!806740 (= (list!12097 (c!450499 (_2!19066 lt!989480))) e!1750625)))

(declare-fun b!2775547 () Bool)

(assert (=> b!2775547 (= e!1750626 (list!12098 (xs!13091 (c!450499 (_2!19066 lt!989480)))))))

(declare-fun b!2775548 () Bool)

(assert (=> b!2775548 (= e!1750626 (++!7932 (list!12097 (left!24418 (c!450499 (_2!19066 lt!989480)))) (list!12097 (right!24748 (c!450499 (_2!19066 lt!989480))))))))

(assert (= (and d!806740 c!450670) b!2775545))

(assert (= (and d!806740 (not c!450670)) b!2775546))

(assert (= (and b!2775546 c!450671) b!2775547))

(assert (= (and b!2775546 (not c!450671)) b!2775548))

(declare-fun m!3202505 () Bool)

(assert (=> b!2775547 m!3202505))

(declare-fun m!3202507 () Bool)

(assert (=> b!2775548 m!3202507))

(declare-fun m!3202509 () Bool)

(assert (=> b!2775548 m!3202509))

(assert (=> b!2775548 m!3202507))

(assert (=> b!2775548 m!3202509))

(declare-fun m!3202511 () Bool)

(assert (=> b!2775548 m!3202511))

(assert (=> d!806472 d!806740))

(declare-fun b!2775561 () Bool)

(declare-fun res!1159773 () Bool)

(declare-fun e!1750632 () Bool)

(assert (=> b!2775561 (=> (not res!1159773) (not e!1750632))))

(assert (=> b!2775561 (= res!1159773 (isBalanced!3044 (right!24748 (c!450499 input!5495))))))

(declare-fun b!2775562 () Bool)

(declare-fun res!1159771 () Bool)

(assert (=> b!2775562 (=> (not res!1159771) (not e!1750632))))

(declare-fun height!1489 (Conc!9981) Int)

(assert (=> b!2775562 (= res!1159771 (<= (- (height!1489 (left!24418 (c!450499 input!5495))) (height!1489 (right!24748 (c!450499 input!5495)))) 1))))

(declare-fun b!2775563 () Bool)

(declare-fun isEmpty!18099 (Conc!9981) Bool)

(assert (=> b!2775563 (= e!1750632 (not (isEmpty!18099 (right!24748 (c!450499 input!5495)))))))

(declare-fun b!2775564 () Bool)

(declare-fun res!1159776 () Bool)

(assert (=> b!2775564 (=> (not res!1159776) (not e!1750632))))

(assert (=> b!2775564 (= res!1159776 (isBalanced!3044 (left!24418 (c!450499 input!5495))))))

(declare-fun b!2775565 () Bool)

(declare-fun e!1750631 () Bool)

(assert (=> b!2775565 (= e!1750631 e!1750632)))

(declare-fun res!1159775 () Bool)

(assert (=> b!2775565 (=> (not res!1159775) (not e!1750632))))

(assert (=> b!2775565 (= res!1159775 (<= (- 1) (- (height!1489 (left!24418 (c!450499 input!5495))) (height!1489 (right!24748 (c!450499 input!5495))))))))

(declare-fun b!2775566 () Bool)

(declare-fun res!1159772 () Bool)

(assert (=> b!2775566 (=> (not res!1159772) (not e!1750632))))

(assert (=> b!2775566 (= res!1159772 (not (isEmpty!18099 (left!24418 (c!450499 input!5495)))))))

(declare-fun d!806742 () Bool)

(declare-fun res!1159774 () Bool)

(assert (=> d!806742 (=> res!1159774 e!1750631)))

(assert (=> d!806742 (= res!1159774 (not ((_ is Node!9981) (c!450499 input!5495))))))

(assert (=> d!806742 (= (isBalanced!3044 (c!450499 input!5495)) e!1750631)))

(assert (= (and d!806742 (not res!1159774)) b!2775565))

(assert (= (and b!2775565 res!1159775) b!2775562))

(assert (= (and b!2775562 res!1159771) b!2775564))

(assert (= (and b!2775564 res!1159776) b!2775561))

(assert (= (and b!2775561 res!1159773) b!2775566))

(assert (= (and b!2775566 res!1159772) b!2775563))

(declare-fun m!3202513 () Bool)

(assert (=> b!2775562 m!3202513))

(declare-fun m!3202515 () Bool)

(assert (=> b!2775562 m!3202515))

(declare-fun m!3202517 () Bool)

(assert (=> b!2775566 m!3202517))

(assert (=> b!2775565 m!3202513))

(assert (=> b!2775565 m!3202515))

(declare-fun m!3202519 () Bool)

(assert (=> b!2775561 m!3202519))

(declare-fun m!3202521 () Bool)

(assert (=> b!2775564 m!3202521))

(declare-fun m!3202523 () Bool)

(assert (=> b!2775563 m!3202523))

(assert (=> d!806576 d!806742))

(declare-fun d!806744 () Bool)

(assert (=> d!806744 (= (list!12096 (ite c!450602 input!5495 (_2!19066 lt!989923))) (list!12097 (c!450499 (ite c!450602 input!5495 (_2!19066 lt!989923)))))))

(declare-fun bs!505406 () Bool)

(assert (= bs!505406 d!806744))

(declare-fun m!3202525 () Bool)

(assert (=> bs!505406 m!3202525))

(assert (=> bm!181575 d!806744))

(declare-fun d!806746 () Bool)

(declare-fun lt!990079 () Int)

(assert (=> d!806746 (>= lt!990079 0)))

(declare-fun e!1750633 () Int)

(assert (=> d!806746 (= lt!990079 e!1750633)))

(declare-fun c!450672 () Bool)

(assert (=> d!806746 (= c!450672 ((_ is Nil!32072) lt!989553))))

(assert (=> d!806746 (= (size!24869 lt!989553) lt!990079)))

(declare-fun b!2775567 () Bool)

(assert (=> b!2775567 (= e!1750633 0)))

(declare-fun b!2775568 () Bool)

(assert (=> b!2775568 (= e!1750633 (+ 1 (size!24869 (t!228300 lt!989553))))))

(assert (= (and d!806746 c!450672) b!2775567))

(assert (= (and d!806746 (not c!450672)) b!2775568))

(declare-fun m!3202527 () Bool)

(assert (=> b!2775568 m!3202527))

(assert (=> b!2774975 d!806746))

(declare-fun d!806748 () Bool)

(declare-fun lt!990080 () Int)

(assert (=> d!806748 (>= lt!990080 0)))

(declare-fun e!1750634 () Int)

(assert (=> d!806748 (= lt!990080 e!1750634)))

(declare-fun c!450673 () Bool)

(assert (=> d!806748 (= c!450673 ((_ is Nil!32072) (_1!19065 lt!989526)))))

(assert (=> d!806748 (= (size!24869 (_1!19065 lt!989526)) lt!990080)))

(declare-fun b!2775569 () Bool)

(assert (=> b!2775569 (= e!1750634 0)))

(declare-fun b!2775570 () Bool)

(assert (=> b!2775570 (= e!1750634 (+ 1 (size!24869 (t!228300 (_1!19065 lt!989526)))))))

(assert (= (and d!806748 c!450673) b!2775569))

(assert (= (and d!806748 (not c!450673)) b!2775570))

(declare-fun m!3202529 () Bool)

(assert (=> b!2775570 m!3202529))

(assert (=> b!2774975 d!806748))

(declare-fun d!806750 () Bool)

(declare-fun lt!990081 () Int)

(assert (=> d!806750 (>= lt!990081 0)))

(declare-fun e!1750635 () Int)

(assert (=> d!806750 (= lt!990081 e!1750635)))

(declare-fun c!450674 () Bool)

(assert (=> d!806750 (= c!450674 ((_ is Nil!32072) (_2!19065 lt!989526)))))

(assert (=> d!806750 (= (size!24869 (_2!19065 lt!989526)) lt!990081)))

(declare-fun b!2775571 () Bool)

(assert (=> b!2775571 (= e!1750635 0)))

(declare-fun b!2775572 () Bool)

(assert (=> b!2775572 (= e!1750635 (+ 1 (size!24869 (t!228300 (_2!19065 lt!989526)))))))

(assert (= (and d!806750 c!450674) b!2775571))

(assert (= (and d!806750 (not c!450674)) b!2775572))

(declare-fun m!3202531 () Bool)

(assert (=> b!2775572 m!3202531))

(assert (=> b!2774975 d!806750))

(assert (=> b!2775215 d!806508))

(declare-fun d!806752 () Bool)

(declare-fun lt!990084 () Bool)

(assert (=> d!806752 (= lt!990084 (select (content!4508 lt!989496) lt!989911))))

(declare-fun e!1750640 () Bool)

(assert (=> d!806752 (= lt!990084 e!1750640)))

(declare-fun res!1159782 () Bool)

(assert (=> d!806752 (=> (not res!1159782) (not e!1750640))))

(assert (=> d!806752 (= res!1159782 ((_ is Cons!32072) lt!989496))))

(assert (=> d!806752 (= (contains!5996 lt!989496 lt!989911) lt!990084)))

(declare-fun b!2775577 () Bool)

(declare-fun e!1750641 () Bool)

(assert (=> b!2775577 (= e!1750640 e!1750641)))

(declare-fun res!1159781 () Bool)

(assert (=> b!2775577 (=> res!1159781 e!1750641)))

(assert (=> b!2775577 (= res!1159781 (= (h!37492 lt!989496) lt!989911))))

(declare-fun b!2775578 () Bool)

(assert (=> b!2775578 (= e!1750641 (contains!5996 (t!228300 lt!989496) lt!989911))))

(assert (= (and d!806752 res!1159782) b!2775577))

(assert (= (and b!2775577 (not res!1159781)) b!2775578))

(assert (=> d!806752 m!3201469))

(declare-fun m!3202533 () Bool)

(assert (=> d!806752 m!3202533))

(declare-fun m!3202535 () Bool)

(assert (=> b!2775578 m!3202535))

(assert (=> d!806560 d!806752))

(assert (=> d!806550 d!806556))

(assert (=> d!806550 d!806554))

(assert (=> d!806550 d!806560))

(declare-fun d!806754 () Bool)

(assert (=> d!806754 (= (head!6152 (drop!1710 lt!989496 0)) (apply!7513 lt!989496 0))))

(assert (=> d!806754 true))

(declare-fun _$27!817 () Unit!46204)

(assert (=> d!806754 (= (choose!16281 lt!989496 0) _$27!817)))

(declare-fun bs!505407 () Bool)

(assert (= bs!505407 d!806754))

(assert (=> bs!505407 m!3201389))

(assert (=> bs!505407 m!3201389))

(assert (=> bs!505407 m!3201393))

(assert (=> bs!505407 m!3201405))

(assert (=> d!806550 d!806754))

(declare-fun d!806756 () Bool)

(declare-fun c!450675 () Bool)

(assert (=> d!806756 (= c!450675 ((_ is Nil!32072) lt!989848))))

(declare-fun e!1750642 () (InoxSet C!16364))

(assert (=> d!806756 (= (content!4508 lt!989848) e!1750642)))

(declare-fun b!2775579 () Bool)

(assert (=> b!2775579 (= e!1750642 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775580 () Bool)

(assert (=> b!2775580 (= e!1750642 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989848) true) (content!4508 (t!228300 lt!989848))))))

(assert (= (and d!806756 c!450675) b!2775579))

(assert (= (and d!806756 (not c!450675)) b!2775580))

(declare-fun m!3202537 () Bool)

(assert (=> b!2775580 m!3202537))

(declare-fun m!3202539 () Bool)

(assert (=> b!2775580 m!3202539))

(assert (=> d!806502 d!806756))

(declare-fun d!806758 () Bool)

(declare-fun c!450676 () Bool)

(assert (=> d!806758 (= c!450676 ((_ is Nil!32072) lt!989499))))

(declare-fun e!1750643 () (InoxSet C!16364))

(assert (=> d!806758 (= (content!4508 lt!989499) e!1750643)))

(declare-fun b!2775581 () Bool)

(assert (=> b!2775581 (= e!1750643 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775582 () Bool)

(assert (=> b!2775582 (= e!1750643 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989499) true) (content!4508 (t!228300 lt!989499))))))

(assert (= (and d!806758 c!450676) b!2775581))

(assert (= (and d!806758 (not c!450676)) b!2775582))

(declare-fun m!3202541 () Bool)

(assert (=> b!2775582 m!3202541))

(assert (=> b!2775582 m!3202431))

(assert (=> d!806502 d!806758))

(declare-fun d!806760 () Bool)

(declare-fun c!450677 () Bool)

(assert (=> d!806760 (= c!450677 ((_ is Nil!32072) lt!989504))))

(declare-fun e!1750644 () (InoxSet C!16364))

(assert (=> d!806760 (= (content!4508 lt!989504) e!1750644)))

(declare-fun b!2775583 () Bool)

(assert (=> b!2775583 (= e!1750644 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775584 () Bool)

(assert (=> b!2775584 (= e!1750644 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989504) true) (content!4508 (t!228300 lt!989504))))))

(assert (= (and d!806760 c!450677) b!2775583))

(assert (= (and d!806760 (not c!450677)) b!2775584))

(declare-fun m!3202543 () Bool)

(assert (=> b!2775584 m!3202543))

(declare-fun m!3202545 () Bool)

(assert (=> b!2775584 m!3202545))

(assert (=> d!806502 d!806760))

(declare-fun bs!505408 () Bool)

(declare-fun d!806762 () Bool)

(assert (= bs!505408 (and d!806762 d!806578)))

(declare-fun lambda!101850 () Int)

(assert (=> bs!505408 (= lambda!101850 lambda!101817)))

(declare-fun bs!505409 () Bool)

(assert (= bs!505409 (and d!806762 d!806622)))

(assert (=> bs!505409 (= lambda!101850 lambda!101829)))

(declare-fun bs!505410 () Bool)

(assert (= bs!505410 (and d!806762 d!806686)))

(assert (=> bs!505410 (= lambda!101850 lambda!101837)))

(declare-fun bs!505411 () Bool)

(assert (= bs!505411 (and d!806762 d!806694)))

(assert (=> bs!505411 (= lambda!101850 lambda!101839)))

(assert (=> d!806762 (= (inv!43564 setElem!23052) (forall!6632 (exprs!2821 setElem!23052) lambda!101850))))

(declare-fun bs!505412 () Bool)

(assert (= bs!505412 d!806762))

(declare-fun m!3202547 () Bool)

(assert (=> bs!505412 m!3202547))

(assert (=> setNonEmpty!23052 d!806762))

(declare-fun bs!505413 () Bool)

(declare-fun d!806764 () Bool)

(assert (= bs!505413 (and d!806764 d!806686)))

(declare-fun lambda!101851 () Int)

(assert (=> bs!505413 (= lambda!101851 lambda!101837)))

(declare-fun bs!505414 () Bool)

(assert (= bs!505414 (and d!806764 d!806578)))

(assert (=> bs!505414 (= lambda!101851 lambda!101817)))

(declare-fun bs!505415 () Bool)

(assert (= bs!505415 (and d!806764 d!806762)))

(assert (=> bs!505415 (= lambda!101851 lambda!101850)))

(declare-fun bs!505416 () Bool)

(assert (= bs!505416 (and d!806764 d!806622)))

(assert (=> bs!505416 (= lambda!101851 lambda!101829)))

(declare-fun bs!505417 () Bool)

(assert (= bs!505417 (and d!806764 d!806694)))

(assert (=> bs!505417 (= lambda!101851 lambda!101839)))

(assert (=> d!806764 (= (inv!43564 setElem!23050) (forall!6632 (exprs!2821 setElem!23050) lambda!101851))))

(declare-fun bs!505418 () Bool)

(assert (= bs!505418 d!806764))

(declare-fun m!3202549 () Bool)

(assert (=> bs!505418 m!3202549))

(assert (=> setNonEmpty!23050 d!806764))

(declare-fun d!806766 () Bool)

(assert (=> d!806766 (= (isEmpty!18097 (_1!19065 lt!989892)) ((_ is Nil!32072) (_1!19065 lt!989892)))))

(assert (=> b!2775132 d!806766))

(declare-fun b!2775585 () Bool)

(declare-fun e!1750648 () Int)

(assert (=> b!2775585 (= e!1750648 (+ 1 1))))

(declare-fun b!2775587 () Bool)

(declare-fun e!1750650 () List!32172)

(assert (=> b!2775587 (= e!1750650 (list!12096 input!5495))))

(declare-fun b!2775588 () Bool)

(declare-fun e!1750645 () Int)

(assert (=> b!2775588 (= e!1750645 0)))

(declare-fun bm!181600 () Bool)

(declare-fun call!181608 () List!32172)

(assert (=> bm!181600 (= call!181608 (tail!4390 call!181556))))

(declare-fun b!2775589 () Bool)

(declare-fun e!1750647 () Unit!46204)

(declare-fun Unit!46239 () Unit!46204)

(assert (=> b!2775589 (= e!1750647 Unit!46239)))

(declare-fun lt!990085 () List!32172)

(assert (=> b!2775589 (= lt!990085 (list!12096 input!5495))))

(declare-fun lt!990117 () List!32172)

(assert (=> b!2775589 (= lt!990117 (list!12096 input!5495))))

(declare-fun lt!990110 () Unit!46204)

(declare-fun call!181614 () Unit!46204)

(assert (=> b!2775589 (= lt!990110 call!181614)))

(declare-fun call!181609 () Bool)

(assert (=> b!2775589 call!181609))

(declare-fun lt!990095 () Unit!46204)

(assert (=> b!2775589 (= lt!990095 lt!990110)))

(declare-fun lt!990108 () List!32172)

(assert (=> b!2775589 (= lt!990108 (list!12096 input!5495))))

(declare-fun lt!990114 () Unit!46204)

(declare-fun call!181605 () Unit!46204)

(assert (=> b!2775589 (= lt!990114 call!181605)))

(assert (=> b!2775589 (= lt!990108 call!181559)))

(declare-fun lt!990118 () Unit!46204)

(assert (=> b!2775589 (= lt!990118 lt!990114)))

(assert (=> b!2775589 false))

(declare-fun b!2775590 () Bool)

(declare-fun e!1750646 () Int)

(declare-fun call!181607 () Int)

(assert (=> b!2775590 (= e!1750646 call!181607)))

(declare-fun bm!181601 () Bool)

(declare-fun call!181611 () List!32172)

(declare-fun call!181612 () C!16364)

(assert (=> bm!181601 (= call!181611 (++!7932 call!181559 (Cons!32072 call!181612 Nil!32072)))))

(declare-fun b!2775591 () Bool)

(declare-fun call!181613 () List!32172)

(assert (=> b!2775591 (= e!1750650 call!181613)))

(declare-fun b!2775592 () Bool)

(assert (=> b!2775592 (= e!1750648 0)))

(declare-fun b!2775593 () Bool)

(declare-fun c!450679 () Bool)

(declare-fun call!181606 () Bool)

(assert (=> b!2775593 (= c!450679 call!181606)))

(declare-fun lt!990087 () Unit!46204)

(declare-fun lt!990109 () Unit!46204)

(assert (=> b!2775593 (= lt!990087 lt!990109)))

(declare-fun lt!990116 () List!32172)

(assert (=> b!2775593 (= lt!990116 call!181559)))

(assert (=> b!2775593 (= lt!990109 call!181605)))

(assert (=> b!2775593 (= lt!990116 call!181613)))

(declare-fun lt!990100 () Unit!46204)

(declare-fun lt!990115 () Unit!46204)

(assert (=> b!2775593 (= lt!990100 lt!990115)))

(assert (=> b!2775593 call!181609))

(assert (=> b!2775593 (= lt!990115 call!181614)))

(declare-fun lt!990090 () List!32172)

(assert (=> b!2775593 (= lt!990090 call!181613)))

(declare-fun lt!990119 () List!32172)

(assert (=> b!2775593 (= lt!990119 call!181613)))

(declare-fun e!1750649 () Int)

(assert (=> b!2775593 (= e!1750649 e!1750648)))

(declare-fun bm!181602 () Bool)

(assert (=> bm!181602 (= call!181606 (nullableZipper!636 call!181558))))

(declare-fun bm!181603 () Bool)

(declare-fun c!450680 () Bool)

(declare-fun c!450681 () Bool)

(assert (=> bm!181603 (= c!450680 c!450681)))

(assert (=> bm!181603 (= call!181605 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450681 lt!990116 lt!990108) call!181559 e!1750650))))

(declare-fun bm!181604 () Bool)

(assert (=> bm!181604 (= call!181614 (lemmaIsPrefixRefl!1681 (ite c!450681 lt!990119 lt!990085) (ite c!450681 lt!990090 lt!990117)))))

(declare-fun bm!181605 () Bool)

(assert (=> bm!181605 (= call!181609 (isPrefix!2557 (ite c!450681 lt!990119 lt!990085) (ite c!450681 lt!990090 lt!990117)))))

(declare-fun bm!181606 () Bool)

(declare-fun lt!990086 () tuple2!32290)

(assert (=> bm!181606 (= call!181613 (list!12096 (ite c!450681 input!5495 (_2!19066 lt!990086))))))

(declare-fun b!2775594 () Bool)

(declare-fun lt!990126 () Int)

(assert (=> b!2775594 (= e!1750646 (ite (= lt!990126 0) (+ 1 1) lt!990126))))

(assert (=> b!2775594 (= lt!990126 call!181607)))

(declare-fun lt!990104 () Int)

(declare-fun d!806768 () Bool)

(assert (=> d!806768 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 call!181558 call!181559 (+ 1 1) call!181556 (list!12096 input!5495) lt!989489))) lt!990104)))

(assert (=> d!806768 (= lt!990104 e!1750645)))

(declare-fun c!450683 () Bool)

(assert (=> d!806768 (= c!450683 (lostCauseZipper!443 call!181558))))

(declare-fun lt!990125 () Unit!46204)

(declare-fun Unit!46240 () Unit!46204)

(assert (=> d!806768 (= lt!990125 Unit!46240)))

(assert (=> d!806768 (= (getSuffix!1239 (list!12096 input!5495) call!181559) call!181556)))

(declare-fun lt!990093 () Unit!46204)

(declare-fun lt!990103 () Unit!46204)

(assert (=> d!806768 (= lt!990093 lt!990103)))

(declare-fun lt!990099 () List!32172)

(assert (=> d!806768 (= call!181556 lt!990099)))

(assert (=> d!806768 (= lt!990103 (lemmaSamePrefixThenSameSuffix!1141 call!181559 call!181556 call!181559 lt!990099 (list!12096 input!5495)))))

(assert (=> d!806768 (= lt!990099 (getSuffix!1239 (list!12096 input!5495) call!181559))))

(declare-fun lt!990089 () Unit!46204)

(declare-fun lt!990106 () Unit!46204)

(assert (=> d!806768 (= lt!990089 lt!990106)))

(assert (=> d!806768 (isPrefix!2557 call!181559 (++!7932 call!181559 call!181556))))

(assert (=> d!806768 (= lt!990106 (lemmaConcatTwoListThenFirstIsPrefix!1667 call!181559 call!181556))))

(assert (=> d!806768 (= (++!7932 call!181559 call!181556) (list!12096 input!5495))))

(assert (=> d!806768 (= (findLongestMatchInnerZipperFast!52 call!181558 call!181559 (+ 1 1) call!181556 input!5495 lt!989489) lt!990104)))

(declare-fun b!2775586 () Bool)

(assert (=> b!2775586 (= e!1750645 e!1750649)))

(assert (=> b!2775586 (= c!450681 (= (+ 1 1) lt!989489))))

(declare-fun call!181610 () (InoxSet Context!4642))

(declare-fun bm!181607 () Bool)

(assert (=> bm!181607 (= call!181607 (findLongestMatchInnerZipperFast!52 call!181610 call!181611 (+ 1 1 1) call!181608 input!5495 lt!989489))))

(declare-fun bm!181608 () Bool)

(assert (=> bm!181608 (= call!181610 (derivationStepZipper!369 call!181558 call!181612))))

(declare-fun b!2775595 () Bool)

(declare-fun Unit!46241 () Unit!46204)

(assert (=> b!2775595 (= e!1750647 Unit!46241)))

(declare-fun bm!181609 () Bool)

(assert (=> bm!181609 (= call!181612 (apply!7512 input!5495 (+ 1 1)))))

(declare-fun b!2775596 () Bool)

(declare-fun c!450678 () Bool)

(assert (=> b!2775596 (= c!450678 call!181606)))

(declare-fun lt!990123 () Unit!46204)

(declare-fun lt!990105 () Unit!46204)

(assert (=> b!2775596 (= lt!990123 lt!990105)))

(declare-fun lt!990097 () C!16364)

(declare-fun lt!990102 () List!32172)

(declare-fun lt!990094 () List!32172)

(assert (=> b!2775596 (= (++!7932 (++!7932 call!181559 (Cons!32072 lt!990097 Nil!32072)) lt!990094) lt!990102)))

(assert (=> b!2775596 (= lt!990105 (lemmaMoveElementToOtherListKeepsConcatEq!873 call!181559 lt!990097 lt!990094 lt!990102))))

(assert (=> b!2775596 (= lt!990102 (list!12096 input!5495))))

(assert (=> b!2775596 (= lt!990094 (tail!4390 call!181556))))

(assert (=> b!2775596 (= lt!990097 (apply!7512 input!5495 (+ 1 1)))))

(declare-fun lt!990092 () Unit!46204)

(declare-fun lt!990098 () Unit!46204)

(assert (=> b!2775596 (= lt!990092 lt!990098)))

(declare-fun lt!990112 () List!32172)

(assert (=> b!2775596 (isPrefix!2557 (++!7932 call!181559 (Cons!32072 (head!6152 (getSuffix!1239 lt!990112 call!181559)) Nil!32072)) lt!990112)))

(assert (=> b!2775596 (= lt!990098 (lemmaAddHeadSuffixToPrefixStillPrefix!461 call!181559 lt!990112))))

(assert (=> b!2775596 (= lt!990112 (list!12096 input!5495))))

(declare-fun lt!990101 () Unit!46204)

(assert (=> b!2775596 (= lt!990101 e!1750647)))

(declare-fun c!450682 () Bool)

(assert (=> b!2775596 (= c!450682 (= (size!24869 call!181559) (size!24868 input!5495)))))

(declare-fun lt!990107 () Unit!46204)

(declare-fun lt!990111 () Unit!46204)

(assert (=> b!2775596 (= lt!990107 lt!990111)))

(declare-fun lt!990122 () List!32172)

(assert (=> b!2775596 (<= (size!24869 call!181559) (size!24869 lt!990122))))

(assert (=> b!2775596 (= lt!990111 (lemmaIsPrefixThenSmallerEqSize!264 call!181559 lt!990122))))

(assert (=> b!2775596 (= lt!990122 (list!12096 input!5495))))

(declare-fun lt!990091 () Unit!46204)

(declare-fun lt!990121 () Unit!46204)

(assert (=> b!2775596 (= lt!990091 lt!990121)))

(declare-fun lt!990088 () List!32172)

(assert (=> b!2775596 (= (head!6152 (drop!1710 lt!990088 (+ 1 1))) (apply!7513 lt!990088 (+ 1 1)))))

(assert (=> b!2775596 (= lt!990121 (lemmaDropApply!916 lt!990088 (+ 1 1)))))

(assert (=> b!2775596 (= lt!990088 (list!12096 input!5495))))

(declare-fun lt!990096 () Unit!46204)

(declare-fun lt!990124 () Unit!46204)

(assert (=> b!2775596 (= lt!990096 lt!990124)))

(declare-fun lt!990120 () List!32172)

(declare-fun lt!990113 () List!32172)

(assert (=> b!2775596 (and (= lt!990120 call!181559) (= lt!990113 call!181556))))

(assert (=> b!2775596 (= lt!990124 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!990120 lt!990113 call!181559 call!181556))))

(assert (=> b!2775596 (= lt!990113 call!181613)))

(assert (=> b!2775596 (= lt!990120 (list!12096 (_1!19066 lt!990086)))))

(assert (=> b!2775596 (= lt!990086 (splitAt!119 input!5495 (+ 1 1)))))

(assert (=> b!2775596 (= e!1750649 e!1750646)))

(assert (= (and d!806768 c!450683) b!2775588))

(assert (= (and d!806768 (not c!450683)) b!2775586))

(assert (= (and b!2775586 c!450681) b!2775593))

(assert (= (and b!2775586 (not c!450681)) b!2775596))

(assert (= (and b!2775593 c!450679) b!2775585))

(assert (= (and b!2775593 (not c!450679)) b!2775592))

(assert (= (and b!2775596 c!450682) b!2775589))

(assert (= (and b!2775596 (not c!450682)) b!2775595))

(assert (= (and b!2775596 c!450678) b!2775594))

(assert (= (and b!2775596 (not c!450678)) b!2775590))

(assert (= (or b!2775594 b!2775590) bm!181609))

(assert (= (or b!2775594 b!2775590) bm!181600))

(assert (= (or b!2775594 b!2775590) bm!181601))

(assert (= (or b!2775594 b!2775590) bm!181608))

(assert (= (or b!2775594 b!2775590) bm!181607))

(assert (= (or b!2775593 b!2775596) bm!181606))

(assert (= (or b!2775593 b!2775596) bm!181602))

(assert (= (or b!2775593 b!2775589) bm!181604))

(assert (= (or b!2775593 b!2775589) bm!181605))

(assert (= (or b!2775593 b!2775589) bm!181603))

(assert (= (and bm!181603 c!450680) b!2775591))

(assert (= (and bm!181603 (not c!450680)) b!2775587))

(declare-fun m!3202551 () Bool)

(assert (=> bm!181604 m!3202551))

(declare-fun m!3202553 () Bool)

(assert (=> bm!181608 m!3202553))

(declare-fun m!3202555 () Bool)

(assert (=> b!2775596 m!3202555))

(declare-fun m!3202557 () Bool)

(assert (=> b!2775596 m!3202557))

(declare-fun m!3202559 () Bool)

(assert (=> b!2775596 m!3202559))

(declare-fun m!3202561 () Bool)

(assert (=> b!2775596 m!3202561))

(declare-fun m!3202563 () Bool)

(assert (=> b!2775596 m!3202563))

(declare-fun m!3202565 () Bool)

(assert (=> b!2775596 m!3202565))

(declare-fun m!3202567 () Bool)

(assert (=> b!2775596 m!3202567))

(declare-fun m!3202569 () Bool)

(assert (=> b!2775596 m!3202569))

(declare-fun m!3202571 () Bool)

(assert (=> b!2775596 m!3202571))

(assert (=> b!2775596 m!3202559))

(declare-fun m!3202573 () Bool)

(assert (=> b!2775596 m!3202573))

(declare-fun m!3202575 () Bool)

(assert (=> b!2775596 m!3202575))

(declare-fun m!3202577 () Bool)

(assert (=> b!2775596 m!3202577))

(declare-fun m!3202579 () Bool)

(assert (=> b!2775596 m!3202579))

(assert (=> b!2775596 m!3201349))

(assert (=> b!2775596 m!3202565))

(declare-fun m!3202581 () Bool)

(assert (=> b!2775596 m!3202581))

(declare-fun m!3202583 () Bool)

(assert (=> b!2775596 m!3202583))

(declare-fun m!3202585 () Bool)

(assert (=> b!2775596 m!3202585))

(declare-fun m!3202587 () Bool)

(assert (=> b!2775596 m!3202587))

(assert (=> b!2775596 m!3202585))

(declare-fun m!3202589 () Bool)

(assert (=> b!2775596 m!3202589))

(assert (=> b!2775596 m!3201355))

(assert (=> b!2775596 m!3202577))

(declare-fun m!3202591 () Bool)

(assert (=> b!2775596 m!3202591))

(declare-fun m!3202593 () Bool)

(assert (=> b!2775596 m!3202593))

(assert (=> bm!181600 m!3202561))

(declare-fun m!3202595 () Bool)

(assert (=> bm!181603 m!3202595))

(assert (=> b!2775587 m!3201349))

(declare-fun m!3202597 () Bool)

(assert (=> bm!181605 m!3202597))

(declare-fun m!3202599 () Bool)

(assert (=> bm!181601 m!3202599))

(declare-fun m!3202601 () Bool)

(assert (=> bm!181606 m!3202601))

(assert (=> bm!181609 m!3202591))

(declare-fun m!3202603 () Bool)

(assert (=> bm!181602 m!3202603))

(declare-fun m!3202605 () Bool)

(assert (=> d!806768 m!3202605))

(declare-fun m!3202607 () Bool)

(assert (=> d!806768 m!3202607))

(declare-fun m!3202609 () Bool)

(assert (=> d!806768 m!3202609))

(assert (=> d!806768 m!3201349))

(declare-fun m!3202611 () Bool)

(assert (=> d!806768 m!3202611))

(assert (=> d!806768 m!3202605))

(declare-fun m!3202613 () Bool)

(assert (=> d!806768 m!3202613))

(assert (=> d!806768 m!3201349))

(declare-fun m!3202615 () Bool)

(assert (=> d!806768 m!3202615))

(assert (=> d!806768 m!3201349))

(declare-fun m!3202617 () Bool)

(assert (=> d!806768 m!3202617))

(declare-fun m!3202619 () Bool)

(assert (=> d!806768 m!3202619))

(assert (=> d!806768 m!3201349))

(assert (=> b!2775589 m!3201349))

(declare-fun m!3202621 () Bool)

(assert (=> bm!181607 m!3202621))

(assert (=> bm!181555 d!806768))

(declare-fun bs!505419 () Bool)

(declare-fun d!806770 () Bool)

(assert (= bs!505419 (and d!806770 d!806686)))

(declare-fun lambda!101852 () Int)

(assert (=> bs!505419 (= lambda!101852 lambda!101837)))

(declare-fun bs!505420 () Bool)

(assert (= bs!505420 (and d!806770 d!806578)))

(assert (=> bs!505420 (= lambda!101852 lambda!101817)))

(declare-fun bs!505421 () Bool)

(assert (= bs!505421 (and d!806770 d!806762)))

(assert (=> bs!505421 (= lambda!101852 lambda!101850)))

(declare-fun bs!505422 () Bool)

(assert (= bs!505422 (and d!806770 d!806764)))

(assert (=> bs!505422 (= lambda!101852 lambda!101851)))

(declare-fun bs!505423 () Bool)

(assert (= bs!505423 (and d!806770 d!806622)))

(assert (=> bs!505423 (= lambda!101852 lambda!101829)))

(declare-fun bs!505424 () Bool)

(assert (= bs!505424 (and d!806770 d!806694)))

(assert (=> bs!505424 (= lambda!101852 lambda!101839)))

(assert (=> d!806770 (= (inv!43564 setElem!23036) (forall!6632 (exprs!2821 setElem!23036) lambda!101852))))

(declare-fun bs!505425 () Bool)

(assert (= bs!505425 d!806770))

(declare-fun m!3202623 () Bool)

(assert (=> bs!505425 m!3202623))

(assert (=> setNonEmpty!23036 d!806770))

(declare-fun d!806772 () Bool)

(declare-fun e!1750651 () Bool)

(assert (=> d!806772 e!1750651))

(declare-fun res!1159783 () Bool)

(assert (=> d!806772 (=> (not res!1159783) (not e!1750651))))

(declare-fun lt!990127 () List!32172)

(assert (=> d!806772 (= res!1159783 (= (content!4508 lt!990127) ((_ map or) (content!4508 (t!228300 lt!989488)) (content!4508 lt!989532))))))

(declare-fun e!1750652 () List!32172)

(assert (=> d!806772 (= lt!990127 e!1750652)))

(declare-fun c!450684 () Bool)

(assert (=> d!806772 (= c!450684 ((_ is Nil!32072) (t!228300 lt!989488)))))

(assert (=> d!806772 (= (++!7932 (t!228300 lt!989488) lt!989532) lt!990127)))

(declare-fun b!2775600 () Bool)

(assert (=> b!2775600 (= e!1750651 (or (not (= lt!989532 Nil!32072)) (= lt!990127 (t!228300 lt!989488))))))

(declare-fun b!2775598 () Bool)

(assert (=> b!2775598 (= e!1750652 (Cons!32072 (h!37492 (t!228300 lt!989488)) (++!7932 (t!228300 (t!228300 lt!989488)) lt!989532)))))

(declare-fun b!2775597 () Bool)

(assert (=> b!2775597 (= e!1750652 lt!989532)))

(declare-fun b!2775599 () Bool)

(declare-fun res!1159784 () Bool)

(assert (=> b!2775599 (=> (not res!1159784) (not e!1750651))))

(assert (=> b!2775599 (= res!1159784 (= (size!24869 lt!990127) (+ (size!24869 (t!228300 lt!989488)) (size!24869 lt!989532))))))

(assert (= (and d!806772 c!450684) b!2775597))

(assert (= (and d!806772 (not c!450684)) b!2775598))

(assert (= (and d!806772 res!1159783) b!2775599))

(assert (= (and b!2775599 res!1159784) b!2775600))

(declare-fun m!3202625 () Bool)

(assert (=> d!806772 m!3202625))

(declare-fun m!3202627 () Bool)

(assert (=> d!806772 m!3202627))

(assert (=> d!806772 m!3201871))

(declare-fun m!3202629 () Bool)

(assert (=> b!2775598 m!3202629))

(declare-fun m!3202631 () Bool)

(assert (=> b!2775599 m!3202631))

(assert (=> b!2775599 m!3202357))

(assert (=> b!2775599 m!3201879))

(assert (=> b!2775147 d!806772))

(declare-fun d!806774 () Bool)

(declare-fun c!450685 () Bool)

(assert (=> d!806774 (= c!450685 ((_ is Nil!32072) lt!989859))))

(declare-fun e!1750653 () (InoxSet C!16364))

(assert (=> d!806774 (= (content!4508 lt!989859) e!1750653)))

(declare-fun b!2775601 () Bool)

(assert (=> b!2775601 (= e!1750653 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775602 () Bool)

(assert (=> b!2775602 (= e!1750653 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989859) true) (content!4508 (t!228300 lt!989859))))))

(assert (= (and d!806774 c!450685) b!2775601))

(assert (= (and d!806774 (not c!450685)) b!2775602))

(declare-fun m!3202633 () Bool)

(assert (=> b!2775602 m!3202633))

(declare-fun m!3202635 () Bool)

(assert (=> b!2775602 m!3202635))

(assert (=> d!806516 d!806774))

(declare-fun d!806776 () Bool)

(assert (=> d!806776 (= (content!4508 Nil!32072) ((as const (Array C!16364 Bool)) false))))

(assert (=> d!806516 d!806776))

(declare-fun d!806778 () Bool)

(declare-fun c!450686 () Bool)

(assert (=> d!806778 (= c!450686 ((_ is Nil!32072) (Cons!32072 (head!6152 lt!989543) Nil!32072)))))

(declare-fun e!1750654 () (InoxSet C!16364))

(assert (=> d!806778 (= (content!4508 (Cons!32072 (head!6152 lt!989543) Nil!32072)) e!1750654)))

(declare-fun b!2775603 () Bool)

(assert (=> b!2775603 (= e!1750654 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775604 () Bool)

(assert (=> b!2775604 (= e!1750654 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (Cons!32072 (head!6152 lt!989543) Nil!32072)) true) (content!4508 (t!228300 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(assert (= (and d!806778 c!450686) b!2775603))

(assert (= (and d!806778 (not c!450686)) b!2775604))

(declare-fun m!3202637 () Bool)

(assert (=> b!2775604 m!3202637))

(declare-fun m!3202639 () Bool)

(assert (=> b!2775604 m!3202639))

(assert (=> d!806516 d!806778))

(declare-fun d!806780 () Bool)

(assert (=> d!806780 (= (inv!43567 (xs!13091 (c!450499 input!5495))) (<= (size!24869 (innerList!10041 (xs!13091 (c!450499 input!5495)))) 2147483647))))

(declare-fun bs!505426 () Bool)

(assert (= bs!505426 d!806780))

(declare-fun m!3202641 () Bool)

(assert (=> bs!505426 m!3202641))

(assert (=> b!2775290 d!806780))

(declare-fun d!806782 () Bool)

(assert (not d!806782))

(assert (=> b!2775195 d!806782))

(declare-fun bs!505427 () Bool)

(declare-fun d!806784 () Bool)

(assert (= bs!505427 (and d!806784 d!806686)))

(declare-fun lambda!101853 () Int)

(assert (=> bs!505427 (= lambda!101853 lambda!101837)))

(declare-fun bs!505428 () Bool)

(assert (= bs!505428 (and d!806784 d!806578)))

(assert (=> bs!505428 (= lambda!101853 lambda!101817)))

(declare-fun bs!505429 () Bool)

(assert (= bs!505429 (and d!806784 d!806762)))

(assert (=> bs!505429 (= lambda!101853 lambda!101850)))

(declare-fun bs!505430 () Bool)

(assert (= bs!505430 (and d!806784 d!806764)))

(assert (=> bs!505430 (= lambda!101853 lambda!101851)))

(declare-fun bs!505431 () Bool)

(assert (= bs!505431 (and d!806784 d!806622)))

(assert (=> bs!505431 (= lambda!101853 lambda!101829)))

(declare-fun bs!505432 () Bool)

(assert (= bs!505432 (and d!806784 d!806694)))

(assert (=> bs!505432 (= lambda!101853 lambda!101839)))

(declare-fun bs!505433 () Bool)

(assert (= bs!505433 (and d!806784 d!806770)))

(assert (=> bs!505433 (= lambda!101853 lambda!101852)))

(assert (=> d!806784 (= (inv!43564 setElem!23031) (forall!6632 (exprs!2821 setElem!23031) lambda!101853))))

(declare-fun bs!505434 () Bool)

(assert (= bs!505434 d!806784))

(declare-fun m!3202643 () Bool)

(assert (=> bs!505434 m!3202643))

(assert (=> setNonEmpty!23031 d!806784))

(assert (=> b!2775220 d!806470))

(declare-fun d!806786 () Bool)

(declare-fun lt!990128 () Int)

(assert (=> d!806786 (>= lt!990128 0)))

(declare-fun e!1750655 () Int)

(assert (=> d!806786 (= lt!990128 e!1750655)))

(declare-fun c!450687 () Bool)

(assert (=> d!806786 (= c!450687 ((_ is Nil!32072) lt!989546))))

(assert (=> d!806786 (= (size!24869 lt!989546) lt!990128)))

(declare-fun b!2775605 () Bool)

(assert (=> b!2775605 (= e!1750655 0)))

(declare-fun b!2775606 () Bool)

(assert (=> b!2775606 (= e!1750655 (+ 1 (size!24869 (t!228300 lt!989546))))))

(assert (= (and d!806786 c!450687) b!2775605))

(assert (= (and d!806786 (not c!450687)) b!2775606))

(declare-fun m!3202645 () Bool)

(assert (=> b!2775606 m!3202645))

(assert (=> b!2774953 d!806786))

(assert (=> b!2774953 d!806514))

(assert (=> b!2774953 d!806508))

(declare-fun bs!505435 () Bool)

(declare-fun d!806788 () Bool)

(assert (= bs!505435 (and d!806788 d!806686)))

(declare-fun lambda!101854 () Int)

(assert (=> bs!505435 (= lambda!101854 lambda!101837)))

(declare-fun bs!505436 () Bool)

(assert (= bs!505436 (and d!806788 d!806578)))

(assert (=> bs!505436 (= lambda!101854 lambda!101817)))

(declare-fun bs!505437 () Bool)

(assert (= bs!505437 (and d!806788 d!806764)))

(assert (=> bs!505437 (= lambda!101854 lambda!101851)))

(declare-fun bs!505438 () Bool)

(assert (= bs!505438 (and d!806788 d!806622)))

(assert (=> bs!505438 (= lambda!101854 lambda!101829)))

(declare-fun bs!505439 () Bool)

(assert (= bs!505439 (and d!806788 d!806694)))

(assert (=> bs!505439 (= lambda!101854 lambda!101839)))

(declare-fun bs!505440 () Bool)

(assert (= bs!505440 (and d!806788 d!806770)))

(assert (=> bs!505440 (= lambda!101854 lambda!101852)))

(declare-fun bs!505441 () Bool)

(assert (= bs!505441 (and d!806788 d!806762)))

(assert (=> bs!505441 (= lambda!101854 lambda!101850)))

(declare-fun bs!505442 () Bool)

(assert (= bs!505442 (and d!806788 d!806784)))

(assert (=> bs!505442 (= lambda!101854 lambda!101853)))

(assert (=> d!806788 (= (inv!43564 setElem!23049) (forall!6632 (exprs!2821 setElem!23049) lambda!101854))))

(declare-fun bs!505443 () Bool)

(assert (= bs!505443 d!806788))

(declare-fun m!3202647 () Bool)

(assert (=> bs!505443 m!3202647))

(assert (=> setNonEmpty!23048 d!806788))

(declare-fun d!806790 () Bool)

(assert (=> d!806790 (= (valid!2977 (_3!2922 lt!989847)) (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989847))))))

(declare-fun bs!505444 () Bool)

(assert (= bs!505444 d!806790))

(declare-fun m!3202649 () Bool)

(assert (=> bs!505444 m!3202649))

(assert (=> b!2775091 d!806790))

(declare-fun bs!505445 () Bool)

(declare-fun b!2775608 () Bool)

(assert (= bs!505445 (and b!2775608 b!2775336)))

(declare-fun lambda!101855 () Int)

(assert (=> bs!505445 (= lambda!101855 lambda!101824)))

(declare-fun d!806792 () Bool)

(declare-fun res!1159785 () Bool)

(declare-fun e!1750656 () Bool)

(assert (=> d!806792 (=> (not res!1159785) (not e!1750656))))

(assert (=> d!806792 (= res!1159785 (valid!2978 (cache!3862 (_2!19071 lt!989506))))))

(assert (=> d!806792 (= (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989506))) e!1750656)))

(declare-fun b!2775607 () Bool)

(declare-fun res!1159786 () Bool)

(assert (=> b!2775607 (=> (not res!1159786) (not e!1750656))))

(assert (=> b!2775607 (= res!1159786 (invariantList!452 (toList!1842 (map!6971 (cache!3862 (_2!19071 lt!989506))))))))

(assert (=> b!2775608 (= e!1750656 (forall!6633 (toList!1842 (map!6971 (cache!3862 (_2!19071 lt!989506)))) lambda!101855))))

(assert (= (and d!806792 res!1159785) b!2775607))

(assert (= (and b!2775607 res!1159786) b!2775608))

(declare-fun m!3202651 () Bool)

(assert (=> d!806792 m!3202651))

(declare-fun m!3202653 () Bool)

(assert (=> b!2775607 m!3202653))

(declare-fun m!3202655 () Bool)

(assert (=> b!2775607 m!3202655))

(assert (=> b!2775608 m!3202653))

(declare-fun m!3202657 () Bool)

(assert (=> b!2775608 m!3202657))

(assert (=> d!806488 d!806792))

(declare-fun d!806794 () Bool)

(declare-fun lt!990129 () Int)

(assert (=> d!806794 (>= lt!990129 0)))

(declare-fun e!1750657 () Int)

(assert (=> d!806794 (= lt!990129 e!1750657)))

(declare-fun c!450688 () Bool)

(assert (=> d!806794 (= c!450688 ((_ is Nil!32072) lt!989859))))

(assert (=> d!806794 (= (size!24869 lt!989859) lt!990129)))

(declare-fun b!2775609 () Bool)

(assert (=> b!2775609 (= e!1750657 0)))

(declare-fun b!2775610 () Bool)

(assert (=> b!2775610 (= e!1750657 (+ 1 (size!24869 (t!228300 lt!989859))))))

(assert (= (and d!806794 c!450688) b!2775609))

(assert (= (and d!806794 (not c!450688)) b!2775610))

(declare-fun m!3202659 () Bool)

(assert (=> b!2775610 m!3202659))

(assert (=> b!2775107 d!806794))

(assert (=> b!2775107 d!806514))

(declare-fun d!806796 () Bool)

(declare-fun lt!990130 () Int)

(assert (=> d!806796 (>= lt!990130 0)))

(declare-fun e!1750658 () Int)

(assert (=> d!806796 (= lt!990130 e!1750658)))

(declare-fun c!450689 () Bool)

(assert (=> d!806796 (= c!450689 ((_ is Nil!32072) (Cons!32072 (head!6152 lt!989543) Nil!32072)))))

(assert (=> d!806796 (= (size!24869 (Cons!32072 (head!6152 lt!989543) Nil!32072)) lt!990130)))

(declare-fun b!2775611 () Bool)

(assert (=> b!2775611 (= e!1750658 0)))

(declare-fun b!2775612 () Bool)

(assert (=> b!2775612 (= e!1750658 (+ 1 (size!24869 (t!228300 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(assert (= (and d!806796 c!450689) b!2775611))

(assert (= (and d!806796 (not c!450689)) b!2775612))

(declare-fun m!3202661 () Bool)

(assert (=> b!2775612 m!3202661))

(assert (=> b!2775107 d!806796))

(declare-fun d!806798 () Bool)

(declare-fun e!1750659 () Bool)

(assert (=> d!806798 e!1750659))

(declare-fun res!1159787 () Bool)

(assert (=> d!806798 (=> (not res!1159787) (not e!1750659))))

(declare-fun lt!990131 () List!32172)

(assert (=> d!806798 (= res!1159787 (= (content!4508 lt!990131) ((_ map or) (content!4508 (t!228300 (_1!19065 lt!989526))) (content!4508 (_2!19065 lt!989526)))))))

(declare-fun e!1750660 () List!32172)

(assert (=> d!806798 (= lt!990131 e!1750660)))

(declare-fun c!450690 () Bool)

(assert (=> d!806798 (= c!450690 ((_ is Nil!32072) (t!228300 (_1!19065 lt!989526))))))

(assert (=> d!806798 (= (++!7932 (t!228300 (_1!19065 lt!989526)) (_2!19065 lt!989526)) lt!990131)))

(declare-fun b!2775616 () Bool)

(assert (=> b!2775616 (= e!1750659 (or (not (= (_2!19065 lt!989526) Nil!32072)) (= lt!990131 (t!228300 (_1!19065 lt!989526)))))))

(declare-fun b!2775614 () Bool)

(assert (=> b!2775614 (= e!1750660 (Cons!32072 (h!37492 (t!228300 (_1!19065 lt!989526))) (++!7932 (t!228300 (t!228300 (_1!19065 lt!989526))) (_2!19065 lt!989526))))))

(declare-fun b!2775613 () Bool)

(assert (=> b!2775613 (= e!1750660 (_2!19065 lt!989526))))

(declare-fun b!2775615 () Bool)

(declare-fun res!1159788 () Bool)

(assert (=> b!2775615 (=> (not res!1159788) (not e!1750659))))

(assert (=> b!2775615 (= res!1159788 (= (size!24869 lt!990131) (+ (size!24869 (t!228300 (_1!19065 lt!989526))) (size!24869 (_2!19065 lt!989526)))))))

(assert (= (and d!806798 c!450690) b!2775613))

(assert (= (and d!806798 (not c!450690)) b!2775614))

(assert (= (and d!806798 res!1159787) b!2775615))

(assert (= (and b!2775615 res!1159788) b!2775616))

(declare-fun m!3202663 () Bool)

(assert (=> d!806798 m!3202663))

(assert (=> d!806798 m!3202367))

(assert (=> d!806798 m!3201499))

(declare-fun m!3202665 () Bool)

(assert (=> b!2775614 m!3202665))

(declare-fun m!3202667 () Bool)

(assert (=> b!2775615 m!3202667))

(assert (=> b!2775615 m!3202529))

(assert (=> b!2775615 m!3201507))

(assert (=> b!2774974 d!806798))

(declare-fun b!2775617 () Bool)

(declare-fun res!1159791 () Bool)

(declare-fun e!1750662 () Bool)

(assert (=> b!2775617 (=> (not res!1159791) (not e!1750662))))

(assert (=> b!2775617 (= res!1159791 (isBalanced!3044 (right!24748 (c!450499 (_1!19066 lt!989663)))))))

(declare-fun b!2775618 () Bool)

(declare-fun res!1159789 () Bool)

(assert (=> b!2775618 (=> (not res!1159789) (not e!1750662))))

(assert (=> b!2775618 (= res!1159789 (<= (- (height!1489 (left!24418 (c!450499 (_1!19066 lt!989663)))) (height!1489 (right!24748 (c!450499 (_1!19066 lt!989663))))) 1))))

(declare-fun b!2775619 () Bool)

(assert (=> b!2775619 (= e!1750662 (not (isEmpty!18099 (right!24748 (c!450499 (_1!19066 lt!989663))))))))

(declare-fun b!2775620 () Bool)

(declare-fun res!1159794 () Bool)

(assert (=> b!2775620 (=> (not res!1159794) (not e!1750662))))

(assert (=> b!2775620 (= res!1159794 (isBalanced!3044 (left!24418 (c!450499 (_1!19066 lt!989663)))))))

(declare-fun b!2775621 () Bool)

(declare-fun e!1750661 () Bool)

(assert (=> b!2775621 (= e!1750661 e!1750662)))

(declare-fun res!1159793 () Bool)

(assert (=> b!2775621 (=> (not res!1159793) (not e!1750662))))

(assert (=> b!2775621 (= res!1159793 (<= (- 1) (- (height!1489 (left!24418 (c!450499 (_1!19066 lt!989663)))) (height!1489 (right!24748 (c!450499 (_1!19066 lt!989663)))))))))

(declare-fun b!2775622 () Bool)

(declare-fun res!1159790 () Bool)

(assert (=> b!2775622 (=> (not res!1159790) (not e!1750662))))

(assert (=> b!2775622 (= res!1159790 (not (isEmpty!18099 (left!24418 (c!450499 (_1!19066 lt!989663))))))))

(declare-fun d!806800 () Bool)

(declare-fun res!1159792 () Bool)

(assert (=> d!806800 (=> res!1159792 e!1750661)))

(assert (=> d!806800 (= res!1159792 (not ((_ is Node!9981) (c!450499 (_1!19066 lt!989663)))))))

(assert (=> d!806800 (= (isBalanced!3044 (c!450499 (_1!19066 lt!989663))) e!1750661)))

(assert (= (and d!806800 (not res!1159792)) b!2775621))

(assert (= (and b!2775621 res!1159793) b!2775618))

(assert (= (and b!2775618 res!1159789) b!2775620))

(assert (= (and b!2775620 res!1159794) b!2775617))

(assert (= (and b!2775617 res!1159791) b!2775622))

(assert (= (and b!2775622 res!1159790) b!2775619))

(declare-fun m!3202669 () Bool)

(assert (=> b!2775618 m!3202669))

(declare-fun m!3202671 () Bool)

(assert (=> b!2775618 m!3202671))

(declare-fun m!3202673 () Bool)

(assert (=> b!2775622 m!3202673))

(assert (=> b!2775621 m!3202669))

(assert (=> b!2775621 m!3202671))

(declare-fun m!3202675 () Bool)

(assert (=> b!2775617 m!3202675))

(declare-fun m!3202677 () Bool)

(assert (=> b!2775620 m!3202677))

(declare-fun m!3202679 () Bool)

(assert (=> b!2775619 m!3202679))

(assert (=> d!806480 d!806800))

(declare-fun b!2775671 () Bool)

(declare-fun e!1750696 () tuple2!32298)

(declare-fun e!1750695 () tuple2!32298)

(assert (=> b!2775671 (= e!1750696 e!1750695)))

(declare-fun c!450714 () Bool)

(assert (=> b!2775671 (= c!450714 (< (_1!19071 lt!989506) (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2775672 () Bool)

(declare-fun e!1750688 () Int)

(assert (=> b!2775672 (= e!1750688 (_1!19071 lt!989506))))

(declare-fun lt!990169 () List!32172)

(declare-fun lt!990168 () List!32172)

(declare-fun call!181627 () Int)

(declare-fun c!450713 () Bool)

(declare-fun bm!181622 () Bool)

(assert (=> bm!181622 (= call!181627 (size!24869 (ite c!450713 lt!990168 lt!990169)))))

(declare-fun bm!181623 () Bool)

(declare-fun lt!990163 () tuple2!32298)

(declare-fun call!181631 () Conc!9981)

(declare-fun lt!990160 () tuple2!32298)

(declare-fun ++!7933 (Conc!9981 Conc!9981) Conc!9981)

(assert (=> bm!181623 (= call!181631 (++!7933 (ite c!450714 (_2!19074 lt!990160) (left!24418 (c!450499 input!5495))) (ite c!450714 (right!24748 (c!450499 input!5495)) (_1!19074 lt!990163))))))

(declare-fun b!2775673 () Bool)

(assert (=> b!2775673 (= e!1750696 (tuple2!32299 (left!24418 (c!450499 input!5495)) (right!24748 (c!450499 input!5495))))))

(declare-fun b!2775674 () Bool)

(declare-fun c!450719 () Bool)

(assert (=> b!2775674 (= c!450719 (<= (_1!19071 lt!989506) 0))))

(declare-fun e!1750687 () tuple2!32298)

(declare-fun e!1750691 () tuple2!32298)

(assert (=> b!2775674 (= e!1750687 e!1750691)))

(declare-fun d!806802 () Bool)

(declare-fun e!1750698 () Bool)

(assert (=> d!806802 e!1750698))

(declare-fun res!1159799 () Bool)

(assert (=> d!806802 (=> (not res!1159799) (not e!1750698))))

(declare-fun lt!990166 () tuple2!32298)

(assert (=> d!806802 (= res!1159799 (isBalanced!3044 (_1!19074 lt!990166)))))

(declare-fun e!1750689 () tuple2!32298)

(assert (=> d!806802 (= lt!990166 e!1750689)))

(declare-fun c!450721 () Bool)

(assert (=> d!806802 (= c!450721 ((_ is Empty!9981) (c!450499 input!5495)))))

(assert (=> d!806802 (isBalanced!3044 (c!450499 input!5495))))

(assert (=> d!806802 (= (splitAt!120 (c!450499 input!5495) (_1!19071 lt!989506)) lt!990166)))

(declare-fun bm!181624 () Bool)

(declare-fun c!450720 () Bool)

(assert (=> bm!181624 (= c!450720 c!450713)))

(declare-fun call!181629 () tuple2!32288)

(declare-fun e!1750690 () List!32172)

(assert (=> bm!181624 (= call!181629 (splitAtIndex!52 e!1750690 (ite c!450713 (_1!19071 lt!989506) e!1750688)))))

(declare-fun b!2775675 () Bool)

(assert (=> b!2775675 (= e!1750689 e!1750687)))

(assert (=> b!2775675 (= c!450713 ((_ is Leaf!15201) (c!450499 input!5495)))))

(declare-fun b!2775676 () Bool)

(declare-fun e!1750692 () Int)

(assert (=> b!2775676 (= e!1750692 (- (_1!19071 lt!989506) (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2775677 () Bool)

(declare-fun e!1750697 () tuple2!32298)

(assert (=> b!2775677 (= e!1750691 e!1750697)))

(declare-fun c!450718 () Bool)

(assert (=> b!2775677 (= c!450718 (= (_1!19071 lt!989506) (csize!20193 (c!450499 input!5495))))))

(declare-fun b!2775678 () Bool)

(assert (=> b!2775678 (= e!1750690 (list!12098 (xs!13091 (c!450499 input!5495))))))

(declare-fun b!2775679 () Bool)

(assert (=> b!2775679 (= e!1750698 (= (tuple2!32289 (list!12097 (_1!19074 lt!990166)) (list!12097 (_2!19074 lt!990166))) (splitAtIndex!52 (list!12097 (c!450499 input!5495)) (_1!19071 lt!989506))))))

(declare-fun b!2775680 () Bool)

(declare-fun e!1750693 () tuple2!32288)

(declare-fun lt!990164 () List!32172)

(assert (=> b!2775680 (= e!1750693 (tuple2!32289 lt!990169 lt!990164))))

(declare-fun b!2775681 () Bool)

(assert (=> b!2775681 (= e!1750691 (tuple2!32299 Empty!9981 (c!450499 input!5495)))))

(declare-fun b!2775682 () Bool)

(assert (=> b!2775682 (= e!1750697 (tuple2!32299 (c!450499 input!5495) Empty!9981))))

(declare-fun b!2775683 () Bool)

(assert (=> b!2775683 (= e!1750692 (_1!19071 lt!989506))))

(declare-fun b!2775684 () Bool)

(assert (=> b!2775684 (= e!1750689 (tuple2!32299 (c!450499 input!5495) (c!450499 input!5495)))))

(declare-fun b!2775685 () Bool)

(declare-fun call!181632 () tuple2!32298)

(assert (=> b!2775685 (= lt!990163 call!181632)))

(assert (=> b!2775685 (= e!1750695 (tuple2!32299 call!181631 (_2!19074 lt!990163)))))

(declare-fun b!2775686 () Bool)

(declare-fun lt!990167 () Unit!46204)

(declare-fun lt!990158 () Unit!46204)

(assert (=> b!2775686 (= lt!990167 lt!990158)))

(declare-fun slice!744 (List!32172 Int Int) List!32172)

(assert (=> b!2775686 (= (drop!1710 lt!990168 (_1!19071 lt!989506)) (slice!744 lt!990168 (_1!19071 lt!989506) call!181627))))

(declare-fun dropLemma!14 (List!32172 Int) Unit!46204)

(assert (=> b!2775686 (= lt!990158 (dropLemma!14 lt!990168 (_1!19071 lt!989506)))))

(assert (=> b!2775686 (= lt!990168 (list!12098 (xs!13091 (c!450499 input!5495))))))

(declare-fun lt!990170 () tuple2!32288)

(assert (=> b!2775686 (= lt!990170 call!181629)))

(declare-fun slice!745 (IArray!19967 Int Int) IArray!19967)

(assert (=> b!2775686 (= e!1750697 (tuple2!32299 (Leaf!15201 (slice!745 (xs!13091 (c!450499 input!5495)) 0 (_1!19071 lt!989506)) (_1!19071 lt!989506)) (Leaf!15201 (slice!745 (xs!13091 (c!450499 input!5495)) (_1!19071 lt!989506) (csize!20193 (c!450499 input!5495))) (- (csize!20193 (c!450499 input!5495)) (_1!19071 lt!989506)))))))

(declare-fun b!2775687 () Bool)

(declare-fun lt!990165 () tuple2!32288)

(declare-fun call!181628 () tuple2!32288)

(assert (=> b!2775687 (= lt!990165 call!181628)))

(declare-fun e!1750694 () tuple2!32288)

(declare-fun call!181630 () List!32172)

(assert (=> b!2775687 (= e!1750694 (tuple2!32289 call!181630 (_2!19065 lt!990165)))))

(declare-fun b!2775688 () Bool)

(declare-fun lt!990161 () tuple2!32288)

(assert (=> b!2775688 (= lt!990161 call!181628)))

(assert (=> b!2775688 (= e!1750694 (tuple2!32289 (_1!19065 lt!990161) call!181630))))

(declare-fun b!2775689 () Bool)

(assert (=> b!2775689 (= e!1750688 (- (_1!19071 lt!989506) call!181627))))

(declare-fun b!2775690 () Bool)

(declare-fun c!450723 () Bool)

(assert (=> b!2775690 (= c!450723 (= (size!24870 (left!24418 (c!450499 input!5495))) (_1!19071 lt!989506)))))

(declare-fun lt!990159 () Unit!46204)

(declare-fun lt!990162 () Unit!46204)

(assert (=> b!2775690 (= lt!990159 lt!990162)))

(assert (=> b!2775690 (= (splitAtIndex!52 (++!7932 lt!990169 lt!990164) (_1!19071 lt!989506)) e!1750693)))

(declare-fun c!450717 () Bool)

(assert (=> b!2775690 (= c!450717 (= call!181627 (_1!19071 lt!989506)))))

(declare-fun splitAtLemma!14 (List!32172 List!32172 Int) Unit!46204)

(assert (=> b!2775690 (= lt!990162 (splitAtLemma!14 lt!990169 lt!990164 (_1!19071 lt!989506)))))

(assert (=> b!2775690 (= lt!990164 (list!12097 (right!24748 (c!450499 input!5495))))))

(assert (=> b!2775690 (= lt!990169 (list!12097 (left!24418 (c!450499 input!5495))))))

(assert (=> b!2775690 (= e!1750687 e!1750696)))

(declare-fun b!2775691 () Bool)

(assert (=> b!2775691 (= e!1750693 e!1750694)))

(declare-fun c!450715 () Bool)

(assert (=> b!2775691 (= c!450715 (< (_1!19071 lt!989506) call!181627))))

(declare-fun bm!181625 () Bool)

(declare-fun c!450722 () Bool)

(assert (=> bm!181625 (= c!450722 c!450714)))

(assert (=> bm!181625 (= call!181632 (splitAt!120 (ite c!450714 (left!24418 (c!450499 input!5495)) (right!24748 (c!450499 input!5495))) e!1750692))))

(declare-fun bm!181626 () Bool)

(assert (=> bm!181626 (= call!181630 (++!7932 (ite c!450715 (_2!19065 lt!990161) lt!990169) (ite c!450715 lt!990164 (_1!19065 lt!990165))))))

(declare-fun b!2775692 () Bool)

(declare-fun res!1159800 () Bool)

(assert (=> b!2775692 (=> (not res!1159800) (not e!1750698))))

(assert (=> b!2775692 (= res!1159800 (isBalanced!3044 (_2!19074 lt!990166)))))

(declare-fun b!2775693 () Bool)

(assert (=> b!2775693 (= lt!990160 call!181632)))

(assert (=> b!2775693 (= e!1750695 (tuple2!32299 (_1!19074 lt!990160) call!181631))))

(declare-fun b!2775694 () Bool)

(assert (=> b!2775694 (= e!1750690 (ite c!450715 lt!990169 lt!990164))))

(declare-fun bm!181627 () Bool)

(declare-fun c!450716 () Bool)

(assert (=> bm!181627 (= c!450716 c!450715)))

(assert (=> bm!181627 (= call!181628 call!181629)))

(assert (= (and d!806802 c!450721) b!2775684))

(assert (= (and d!806802 (not c!450721)) b!2775675))

(assert (= (and b!2775675 c!450713) b!2775674))

(assert (= (and b!2775675 (not c!450713)) b!2775690))

(assert (= (and b!2775674 c!450719) b!2775681))

(assert (= (and b!2775674 (not c!450719)) b!2775677))

(assert (= (and b!2775677 c!450718) b!2775682))

(assert (= (and b!2775677 (not c!450718)) b!2775686))

(assert (= (and b!2775690 c!450717) b!2775680))

(assert (= (and b!2775690 (not c!450717)) b!2775691))

(assert (= (and b!2775691 c!450715) b!2775688))

(assert (= (and b!2775691 (not c!450715)) b!2775687))

(assert (= (or b!2775688 b!2775687) bm!181626))

(assert (= (or b!2775688 b!2775687) bm!181627))

(assert (= (and bm!181627 c!450716) b!2775672))

(assert (= (and bm!181627 (not c!450716)) b!2775689))

(assert (= (and b!2775690 c!450723) b!2775673))

(assert (= (and b!2775690 (not c!450723)) b!2775671))

(assert (= (and b!2775671 c!450714) b!2775693))

(assert (= (and b!2775671 (not c!450714)) b!2775685))

(assert (= (or b!2775693 b!2775685) bm!181623))

(assert (= (or b!2775693 b!2775685) bm!181625))

(assert (= (and bm!181625 c!450722) b!2775683))

(assert (= (and bm!181625 (not c!450722)) b!2775676))

(assert (= (or b!2775686 b!2775689 b!2775690 b!2775691) bm!181622))

(assert (= (or b!2775686 bm!181627) bm!181624))

(assert (= (and bm!181624 c!450720) b!2775678))

(assert (= (and bm!181624 (not c!450720)) b!2775694))

(assert (= (and d!806802 res!1159799) b!2775692))

(assert (= (and b!2775692 res!1159800) b!2775679))

(declare-fun m!3202681 () Bool)

(assert (=> b!2775686 m!3202681))

(assert (=> b!2775686 m!3202130))

(declare-fun m!3202683 () Bool)

(assert (=> b!2775686 m!3202683))

(declare-fun m!3202685 () Bool)

(assert (=> b!2775686 m!3202685))

(declare-fun m!3202687 () Bool)

(assert (=> b!2775686 m!3202687))

(declare-fun m!3202689 () Bool)

(assert (=> b!2775686 m!3202689))

(declare-fun m!3202691 () Bool)

(assert (=> bm!181623 m!3202691))

(declare-fun m!3202693 () Bool)

(assert (=> b!2775679 m!3202693))

(declare-fun m!3202695 () Bool)

(assert (=> b!2775679 m!3202695))

(assert (=> b!2775679 m!3201523))

(assert (=> b!2775679 m!3201523))

(declare-fun m!3202697 () Bool)

(assert (=> b!2775679 m!3202697))

(declare-fun m!3202699 () Bool)

(assert (=> d!806802 m!3202699))

(assert (=> d!806802 m!3201563))

(declare-fun m!3202701 () Bool)

(assert (=> b!2775671 m!3202701))

(declare-fun m!3202703 () Bool)

(assert (=> bm!181626 m!3202703))

(declare-fun m!3202705 () Bool)

(assert (=> bm!181622 m!3202705))

(declare-fun m!3202707 () Bool)

(assert (=> bm!181624 m!3202707))

(declare-fun m!3202709 () Bool)

(assert (=> b!2775692 m!3202709))

(assert (=> b!2775678 m!3202130))

(assert (=> b!2775676 m!3202701))

(assert (=> b!2775690 m!3202132))

(assert (=> b!2775690 m!3202701))

(declare-fun m!3202711 () Bool)

(assert (=> b!2775690 m!3202711))

(assert (=> b!2775690 m!3202134))

(declare-fun m!3202713 () Bool)

(assert (=> b!2775690 m!3202713))

(assert (=> b!2775690 m!3202713))

(declare-fun m!3202715 () Bool)

(assert (=> b!2775690 m!3202715))

(declare-fun m!3202717 () Bool)

(assert (=> bm!181625 m!3202717))

(assert (=> d!806480 d!806802))

(assert (=> d!806480 d!806742))

(assert (=> d!806498 d!806592))

(declare-fun d!806804 () Bool)

(assert (=> d!806804 (isPrefix!2557 lt!989496 lt!989496)))

(assert (=> d!806804 true))

(declare-fun _$45!1675 () Unit!46204)

(assert (=> d!806804 (= (choose!16274 lt!989496 lt!989496) _$45!1675)))

(declare-fun bs!505446 () Bool)

(assert (= bs!505446 d!806804))

(assert (=> bs!505446 m!3201381))

(assert (=> d!806498 d!806804))

(assert (=> b!2775152 d!806508))

(assert (=> bm!181513 d!806498))

(declare-fun d!806806 () Bool)

(assert (=> d!806806 (= (valid!2977 (_3!2924 lt!989896)) (validCacheMapDown!400 (cache!3863 (_3!2924 lt!989896))))))

(declare-fun bs!505447 () Bool)

(assert (= bs!505447 d!806806))

(declare-fun m!3202719 () Bool)

(assert (=> bs!505447 m!3202719))

(assert (=> b!2775145 d!806806))

(assert (=> b!2775116 d!806508))

(declare-fun d!806808 () Bool)

(declare-fun lt!990171 () Int)

(assert (=> d!806808 (>= lt!990171 0)))

(declare-fun e!1750699 () Int)

(assert (=> d!806808 (= lt!990171 e!1750699)))

(declare-fun c!450724 () Bool)

(assert (=> d!806808 (= c!450724 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))

(assert (=> d!806808 (= (size!24869 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) lt!990171)))

(declare-fun b!2775695 () Bool)

(assert (=> b!2775695 (= e!1750699 0)))

(declare-fun b!2775696 () Bool)

(assert (=> b!2775696 (= e!1750699 (+ 1 (size!24869 (t!228300 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))))

(assert (= (and d!806808 c!450724) b!2775695))

(assert (= (and d!806808 (not c!450724)) b!2775696))

(declare-fun m!3202721 () Bool)

(assert (=> b!2775696 m!3202721))

(assert (=> b!2775116 d!806808))

(declare-fun b!2775698 () Bool)

(declare-fun res!1159802 () Bool)

(declare-fun e!1750702 () Bool)

(assert (=> b!2775698 (=> (not res!1159802) (not e!1750702))))

(assert (=> b!2775698 (= res!1159802 (= (head!6152 (ite c!450602 lt!989956 lt!989922)) (head!6152 (ite c!450602 lt!989927 lt!989954))))))

(declare-fun b!2775697 () Bool)

(declare-fun e!1750701 () Bool)

(assert (=> b!2775697 (= e!1750701 e!1750702)))

(declare-fun res!1159803 () Bool)

(assert (=> b!2775697 (=> (not res!1159803) (not e!1750702))))

(assert (=> b!2775697 (= res!1159803 (not ((_ is Nil!32072) (ite c!450602 lt!989927 lt!989954))))))

(declare-fun d!806810 () Bool)

(declare-fun e!1750700 () Bool)

(assert (=> d!806810 e!1750700))

(declare-fun res!1159804 () Bool)

(assert (=> d!806810 (=> res!1159804 e!1750700)))

(declare-fun lt!990172 () Bool)

(assert (=> d!806810 (= res!1159804 (not lt!990172))))

(assert (=> d!806810 (= lt!990172 e!1750701)))

(declare-fun res!1159801 () Bool)

(assert (=> d!806810 (=> res!1159801 e!1750701)))

(assert (=> d!806810 (= res!1159801 ((_ is Nil!32072) (ite c!450602 lt!989956 lt!989922)))))

(assert (=> d!806810 (= (isPrefix!2557 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954)) lt!990172)))

(declare-fun b!2775699 () Bool)

(assert (=> b!2775699 (= e!1750702 (isPrefix!2557 (tail!4390 (ite c!450602 lt!989956 lt!989922)) (tail!4390 (ite c!450602 lt!989927 lt!989954))))))

(declare-fun b!2775700 () Bool)

(assert (=> b!2775700 (= e!1750700 (>= (size!24869 (ite c!450602 lt!989927 lt!989954)) (size!24869 (ite c!450602 lt!989956 lt!989922))))))

(assert (= (and d!806810 (not res!1159801)) b!2775697))

(assert (= (and b!2775697 res!1159803) b!2775698))

(assert (= (and b!2775698 res!1159802) b!2775699))

(assert (= (and d!806810 (not res!1159804)) b!2775700))

(declare-fun m!3202723 () Bool)

(assert (=> b!2775698 m!3202723))

(declare-fun m!3202725 () Bool)

(assert (=> b!2775698 m!3202725))

(declare-fun m!3202727 () Bool)

(assert (=> b!2775699 m!3202727))

(declare-fun m!3202729 () Bool)

(assert (=> b!2775699 m!3202729))

(assert (=> b!2775699 m!3202727))

(assert (=> b!2775699 m!3202729))

(declare-fun m!3202731 () Bool)

(assert (=> b!2775699 m!3202731))

(declare-fun m!3202733 () Bool)

(assert (=> b!2775700 m!3202733))

(declare-fun m!3202735 () Bool)

(assert (=> b!2775700 m!3202735))

(assert (=> bm!181574 d!806810))

(declare-fun d!806812 () Bool)

(assert (=> d!806812 (= (valid!2976 (_2!19071 lt!989666)) (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989666))))))

(declare-fun bs!505448 () Bool)

(assert (= bs!505448 d!806812))

(declare-fun m!3202737 () Bool)

(assert (=> bs!505448 m!3202737))

(assert (=> d!806484 d!806812))

(declare-fun b!2775737 () Bool)

(declare-fun b_free!78405 () Bool)

(declare-fun b_next!79109 () Bool)

(assert (=> b!2775737 (= b_free!78405 (not b_next!79109))))

(declare-fun tp!878481 () Bool)

(declare-fun b_and!203143 () Bool)

(assert (=> b!2775737 (= tp!878481 b_and!203143)))

(declare-fun b!2775735 () Bool)

(declare-fun b_free!78407 () Bool)

(declare-fun b_next!79111 () Bool)

(assert (=> b!2775735 (= b_free!78407 (not b_next!79111))))

(declare-fun tp!878483 () Bool)

(declare-fun b_and!203145 () Bool)

(assert (=> b!2775735 (= tp!878483 b_and!203145)))

(declare-fun b!2775740 () Bool)

(declare-fun b_free!78409 () Bool)

(declare-fun b_next!79113 () Bool)

(assert (=> b!2775740 (= b_free!78409 (not b_next!79113))))

(declare-fun tp!878482 () Bool)

(declare-fun b_and!203147 () Bool)

(assert (=> b!2775740 (= tp!878482 b_and!203147)))

(declare-fun b!2775736 () Bool)

(declare-fun b_free!78411 () Bool)

(declare-fun b_next!79115 () Bool)

(assert (=> b!2775736 (= b_free!78411 (not b_next!79115))))

(declare-fun tp!878475 () Bool)

(declare-fun b_and!203149 () Bool)

(assert (=> b!2775736 (= tp!878475 b_and!203149)))

(declare-fun b!2775733 () Bool)

(declare-fun e!1750742 () Bool)

(declare-fun e!1750741 () Bool)

(assert (=> b!2775733 (= e!1750742 e!1750741)))

(declare-fun res!1159811 () tuple3!4904)

(declare-fun b!2775734 () Bool)

(declare-fun e!1750746 () Bool)

(assert (=> b!2775734 (= e!1750746 (= (_1!19071 res!1159811) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(declare-fun tp!878478 () Bool)

(declare-fun e!1750743 () Bool)

(declare-fun e!1750749 () Bool)

(declare-fun tp!878485 () Bool)

(assert (=> b!2775735 (= e!1750743 (and tp!878483 tp!878478 tp!878485 (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))))) (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))))) e!1750749))))

(declare-fun e!1750740 () Bool)

(declare-fun e!1750747 () Bool)

(declare-fun tp!878487 () Bool)

(declare-fun tp!878484 () Bool)

(assert (=> b!2775736 (= e!1750740 (and tp!878475 tp!878487 tp!878484 (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))))) (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))))) e!1750747))))

(declare-fun e!1750748 () Bool)

(declare-fun e!1750751 () Bool)

(assert (=> b!2775737 (= e!1750748 (and e!1750751 tp!878481))))

(declare-fun b!2775738 () Bool)

(declare-fun res!1159812 () Bool)

(assert (=> b!2775738 (=> (not res!1159812) (not e!1750746))))

(assert (=> b!2775738 (= res!1159812 (valid!2977 (_3!2922 res!1159811)))))

(declare-fun mapIsEmpty!17395 () Bool)

(declare-fun mapRes!17396 () Bool)

(assert (=> mapIsEmpty!17395 mapRes!17396))

(declare-fun b!2775739 () Bool)

(declare-fun e!1750752 () Bool)

(assert (=> b!2775739 (= e!1750752 e!1750740)))

(declare-fun b!2775741 () Bool)

(declare-fun tp!878486 () Bool)

(declare-fun mapRes!17395 () Bool)

(assert (=> b!2775741 (= e!1750749 (and tp!878486 mapRes!17395))))

(declare-fun condMapEmpty!17395 () Bool)

(declare-fun mapDefault!17396 () List!32175)

(assert (=> b!2775741 (= condMapEmpty!17395 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))))) ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17396)))))

(declare-fun b!2775742 () Bool)

(declare-fun e!1750744 () Bool)

(declare-fun e!1750737 () Bool)

(assert (=> b!2775742 (= e!1750744 e!1750737)))

(declare-fun mapNonEmpty!17395 () Bool)

(declare-fun tp!878477 () Bool)

(declare-fun tp!878479 () Bool)

(assert (=> mapNonEmpty!17395 (= mapRes!17396 (and tp!878477 tp!878479))))

(declare-fun mapKey!17395 () (_ BitVec 32))

(declare-fun mapValue!17396 () List!32174)

(declare-fun mapRest!17396 () (Array (_ BitVec 32) List!32174))

(assert (=> mapNonEmpty!17395 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))))) (store mapRest!17396 mapKey!17395 mapValue!17396))))

(declare-fun b!2775743 () Bool)

(declare-fun lt!990177 () MutLongMap!3814)

(assert (=> b!2775743 (= e!1750751 (and e!1750742 ((_ is LongMap!3814) lt!990177)))))

(assert (=> b!2775743 (= lt!990177 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))))

(declare-fun b!2775744 () Bool)

(declare-fun e!1750739 () Bool)

(assert (=> b!2775744 (= e!1750739 e!1750752)))

(declare-fun mapNonEmpty!17396 () Bool)

(declare-fun tp!878480 () Bool)

(declare-fun tp!878474 () Bool)

(assert (=> mapNonEmpty!17396 (= mapRes!17395 (and tp!878480 tp!878474))))

(declare-fun mapValue!17395 () List!32175)

(declare-fun mapRest!17395 () (Array (_ BitVec 32) List!32175))

(declare-fun mapKey!17396 () (_ BitVec 32))

(assert (=> mapNonEmpty!17396 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))))) (store mapRest!17395 mapKey!17396 mapValue!17395))))

(declare-fun mapIsEmpty!17396 () Bool)

(assert (=> mapIsEmpty!17396 mapRes!17395))

(declare-fun b!2775745 () Bool)

(declare-fun tp!878476 () Bool)

(assert (=> b!2775745 (= e!1750747 (and tp!878476 mapRes!17396))))

(declare-fun condMapEmpty!17396 () Bool)

(declare-fun mapDefault!17395 () List!32174)

(assert (=> b!2775745 (= condMapEmpty!17396 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))))) ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17395)))))

(declare-fun b!2775746 () Bool)

(declare-fun e!1750753 () Bool)

(assert (=> b!2775746 (= e!1750753 e!1750748)))

(declare-fun b!2775747 () Bool)

(declare-fun e!1750738 () Bool)

(declare-fun lt!990178 () MutLongMap!3813)

(assert (=> b!2775747 (= e!1750738 (and e!1750739 ((_ is LongMap!3813) lt!990178)))))

(assert (=> b!2775747 (= lt!990178 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))))

(declare-fun b!2775748 () Bool)

(assert (=> b!2775748 (= e!1750741 e!1750743)))

(assert (=> b!2775740 (= e!1750737 (and e!1750738 tp!878482))))

(declare-fun d!806814 () Bool)

(assert (=> d!806814 e!1750746))

(declare-fun res!1159813 () Bool)

(assert (=> d!806814 (=> (not res!1159813) (not e!1750746))))

(assert (=> d!806814 (= res!1159813 (valid!2976 (_2!19071 res!1159811)))))

(assert (=> d!806814 (and (inv!43560 (_2!19071 res!1159811)) e!1750744 (inv!43561 (_3!2922 res!1159811)) e!1750753)))

(assert (=> d!806814 (= (choose!16271 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489) res!1159811)))

(assert (= (and b!2775745 condMapEmpty!17396) mapIsEmpty!17395))

(assert (= (and b!2775745 (not condMapEmpty!17396)) mapNonEmpty!17395))

(assert (= b!2775736 b!2775745))

(assert (= b!2775739 b!2775736))

(assert (= b!2775744 b!2775739))

(assert (= (and b!2775747 ((_ is LongMap!3813) (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159811)))))) b!2775744))

(assert (= b!2775740 b!2775747))

(assert (= (and b!2775742 ((_ is HashMap!3719) (cache!3862 (_2!19071 res!1159811)))) b!2775740))

(assert (= d!806814 b!2775742))

(assert (= (and b!2775741 condMapEmpty!17395) mapIsEmpty!17396))

(assert (= (and b!2775741 (not condMapEmpty!17395)) mapNonEmpty!17396))

(assert (= b!2775735 b!2775741))

(assert (= b!2775748 b!2775735))

(assert (= b!2775733 b!2775748))

(assert (= (and b!2775743 ((_ is LongMap!3814) (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159811)))))) b!2775733))

(assert (= b!2775737 b!2775743))

(assert (= (and b!2775746 ((_ is HashMap!3720) (cache!3863 (_3!2922 res!1159811)))) b!2775737))

(assert (= d!806814 b!2775746))

(assert (= (and d!806814 res!1159813) b!2775738))

(assert (= (and b!2775738 res!1159812) b!2775734))

(declare-fun m!3202739 () Bool)

(assert (=> mapNonEmpty!17395 m!3202739))

(declare-fun m!3202741 () Bool)

(assert (=> b!2775738 m!3202741))

(declare-fun m!3202743 () Bool)

(assert (=> mapNonEmpty!17396 m!3202743))

(declare-fun m!3202745 () Bool)

(assert (=> d!806814 m!3202745))

(declare-fun m!3202747 () Bool)

(assert (=> d!806814 m!3202747))

(declare-fun m!3202749 () Bool)

(assert (=> d!806814 m!3202749))

(declare-fun m!3202751 () Bool)

(assert (=> b!2775735 m!3202751))

(declare-fun m!3202753 () Bool)

(assert (=> b!2775735 m!3202753))

(assert (=> b!2775734 m!3201351))

(declare-fun m!3202755 () Bool)

(assert (=> b!2775736 m!3202755))

(declare-fun m!3202757 () Bool)

(assert (=> b!2775736 m!3202757))

(assert (=> d!806484 d!806814))

(assert (=> d!806484 d!806458))

(assert (=> d!806484 d!806470))

(declare-fun d!806816 () Bool)

(declare-fun c!450725 () Bool)

(assert (=> d!806816 (= c!450725 ((_ is Nil!32072) lt!989900))))

(declare-fun e!1750754 () (InoxSet C!16364))

(assert (=> d!806816 (= (content!4508 lt!989900) e!1750754)))

(declare-fun b!2775749 () Bool)

(assert (=> b!2775749 (= e!1750754 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775750 () Bool)

(assert (=> b!2775750 (= e!1750754 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989900) true) (content!4508 (t!228300 lt!989900))))))

(assert (= (and d!806816 c!450725) b!2775749))

(assert (= (and d!806816 (not c!450725)) b!2775750))

(declare-fun m!3202759 () Bool)

(assert (=> b!2775750 m!3202759))

(declare-fun m!3202761 () Bool)

(assert (=> b!2775750 m!3202761))

(assert (=> d!806548 d!806816))

(declare-fun d!806818 () Bool)

(declare-fun c!450726 () Bool)

(assert (=> d!806818 (= c!450726 ((_ is Nil!32072) lt!989488))))

(declare-fun e!1750755 () (InoxSet C!16364))

(assert (=> d!806818 (= (content!4508 lt!989488) e!1750755)))

(declare-fun b!2775751 () Bool)

(assert (=> b!2775751 (= e!1750755 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775752 () Bool)

(assert (=> b!2775752 (= e!1750755 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989488) true) (content!4508 (t!228300 lt!989488))))))

(assert (= (and d!806818 c!450726) b!2775751))

(assert (= (and d!806818 (not c!450726)) b!2775752))

(declare-fun m!3202763 () Bool)

(assert (=> b!2775752 m!3202763))

(assert (=> b!2775752 m!3202627))

(assert (=> d!806548 d!806818))

(declare-fun d!806820 () Bool)

(declare-fun c!450727 () Bool)

(assert (=> d!806820 (= c!450727 ((_ is Nil!32072) lt!989532))))

(declare-fun e!1750756 () (InoxSet C!16364))

(assert (=> d!806820 (= (content!4508 lt!989532) e!1750756)))

(declare-fun b!2775753 () Bool)

(assert (=> b!2775753 (= e!1750756 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775754 () Bool)

(assert (=> b!2775754 (= e!1750756 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989532) true) (content!4508 (t!228300 lt!989532))))))

(assert (= (and d!806820 c!450727) b!2775753))

(assert (= (and d!806820 (not c!450727)) b!2775754))

(declare-fun m!3202765 () Bool)

(assert (=> b!2775754 m!3202765))

(declare-fun m!3202767 () Bool)

(assert (=> b!2775754 m!3202767))

(assert (=> d!806548 d!806820))

(declare-fun d!806822 () Bool)

(declare-fun c!450728 () Bool)

(assert (=> d!806822 (= c!450728 ((_ is Nil!32072) lt!989546))))

(declare-fun e!1750757 () (InoxSet C!16364))

(assert (=> d!806822 (= (content!4508 lt!989546) e!1750757)))

(declare-fun b!2775755 () Bool)

(assert (=> b!2775755 (= e!1750757 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775756 () Bool)

(assert (=> b!2775756 (= e!1750757 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989546) true) (content!4508 (t!228300 lt!989546))))))

(assert (= (and d!806822 c!450728) b!2775755))

(assert (= (and d!806822 (not c!450728)) b!2775756))

(declare-fun m!3202769 () Bool)

(assert (=> b!2775756 m!3202769))

(declare-fun m!3202771 () Bool)

(assert (=> b!2775756 m!3202771))

(assert (=> d!806458 d!806822))

(assert (=> d!806458 d!806776))

(assert (=> d!806458 d!806690))

(declare-fun bs!505449 () Bool)

(declare-fun d!806824 () Bool)

(assert (= bs!505449 (and d!806824 d!806598)))

(declare-fun lambda!101856 () Int)

(assert (=> bs!505449 (= (= call!181550 lt!989475) (= lambda!101856 lambda!101820))))

(declare-fun bs!505450 () Bool)

(assert (= bs!505450 (and d!806824 d!806600)))

(assert (=> bs!505450 (= (= call!181550 lt!989503) (= lambda!101856 lambda!101821))))

(declare-fun bs!505451 () Bool)

(assert (= bs!505451 (and d!806824 d!806618)))

(assert (=> bs!505451 (= (= call!181550 lt!989486) (= lambda!101856 lambda!101828))))

(declare-fun bs!505452 () Bool)

(assert (= bs!505452 (and d!806824 d!806692)))

(assert (=> bs!505452 (= (= call!181550 call!181560) (= lambda!101856 lambda!101838))))

(assert (=> d!806824 true))

(assert (=> d!806824 (= (derivationStepZipper!369 z!3597 call!181550) (flatMap!186 z!3597 lambda!101856))))

(declare-fun bs!505453 () Bool)

(assert (= bs!505453 d!806824))

(declare-fun m!3202773 () Bool)

(assert (=> bs!505453 m!3202773))

(assert (=> bm!181546 d!806824))

(declare-fun b!2775758 () Bool)

(declare-fun res!1159815 () Bool)

(declare-fun e!1750760 () Bool)

(assert (=> b!2775758 (=> (not res!1159815) (not e!1750760))))

(assert (=> b!2775758 (= res!1159815 (= (head!6152 (tail!4390 lt!989496)) (head!6152 (tail!4390 lt!989496))))))

(declare-fun b!2775757 () Bool)

(declare-fun e!1750759 () Bool)

(assert (=> b!2775757 (= e!1750759 e!1750760)))

(declare-fun res!1159816 () Bool)

(assert (=> b!2775757 (=> (not res!1159816) (not e!1750760))))

(assert (=> b!2775757 (= res!1159816 (not ((_ is Nil!32072) (tail!4390 lt!989496))))))

(declare-fun d!806826 () Bool)

(declare-fun e!1750758 () Bool)

(assert (=> d!806826 e!1750758))

(declare-fun res!1159817 () Bool)

(assert (=> d!806826 (=> res!1159817 e!1750758)))

(declare-fun lt!990179 () Bool)

(assert (=> d!806826 (= res!1159817 (not lt!990179))))

(assert (=> d!806826 (= lt!990179 e!1750759)))

(declare-fun res!1159814 () Bool)

(assert (=> d!806826 (=> res!1159814 e!1750759)))

(assert (=> d!806826 (= res!1159814 ((_ is Nil!32072) (tail!4390 lt!989496)))))

(assert (=> d!806826 (= (isPrefix!2557 (tail!4390 lt!989496) (tail!4390 lt!989496)) lt!990179)))

(declare-fun b!2775759 () Bool)

(assert (=> b!2775759 (= e!1750760 (isPrefix!2557 (tail!4390 (tail!4390 lt!989496)) (tail!4390 (tail!4390 lt!989496))))))

(declare-fun b!2775760 () Bool)

(assert (=> b!2775760 (= e!1750758 (>= (size!24869 (tail!4390 lt!989496)) (size!24869 (tail!4390 lt!989496))))))

(assert (= (and d!806826 (not res!1159814)) b!2775757))

(assert (= (and b!2775757 res!1159816) b!2775758))

(assert (= (and b!2775758 res!1159815) b!2775759))

(assert (= (and d!806826 (not res!1159817)) b!2775760))

(assert (=> b!2775758 m!3201395))

(declare-fun m!3202775 () Bool)

(assert (=> b!2775758 m!3202775))

(assert (=> b!2775758 m!3201395))

(assert (=> b!2775758 m!3202775))

(assert (=> b!2775759 m!3201395))

(declare-fun m!3202777 () Bool)

(assert (=> b!2775759 m!3202777))

(assert (=> b!2775759 m!3201395))

(assert (=> b!2775759 m!3202777))

(assert (=> b!2775759 m!3202777))

(assert (=> b!2775759 m!3202777))

(declare-fun m!3202779 () Bool)

(assert (=> b!2775759 m!3202779))

(assert (=> b!2775760 m!3201395))

(declare-fun m!3202781 () Bool)

(assert (=> b!2775760 m!3202781))

(assert (=> b!2775760 m!3201395))

(assert (=> b!2775760 m!3202781))

(assert (=> b!2775214 d!806826))

(assert (=> b!2775214 d!806510))

(declare-fun d!806828 () Bool)

(assert (=> d!806828 (= (list!12096 (_1!19066 lt!989663)) (list!12097 (c!450499 (_1!19066 lt!989663))))))

(declare-fun bs!505454 () Bool)

(assert (= bs!505454 d!806828))

(declare-fun m!3202783 () Bool)

(assert (=> bs!505454 m!3202783))

(assert (=> b!2775030 d!806828))

(declare-fun d!806830 () Bool)

(assert (=> d!806830 (= (list!12096 (_2!19066 lt!989663)) (list!12097 (c!450499 (_2!19066 lt!989663))))))

(declare-fun bs!505455 () Bool)

(assert (= bs!505455 d!806830))

(declare-fun m!3202785 () Bool)

(assert (=> bs!505455 m!3202785))

(assert (=> b!2775030 d!806830))

(declare-fun lt!990185 () tuple2!32288)

(declare-fun b!2775773 () Bool)

(declare-fun e!1750767 () Bool)

(assert (=> b!2775773 (= e!1750767 (= (_2!19065 lt!990185) (drop!1710 (list!12096 input!5495) (_1!19071 lt!989506))))))

(declare-fun b!2775774 () Bool)

(declare-fun lt!990184 () tuple2!32288)

(assert (=> b!2775774 (= lt!990184 (splitAtIndex!52 (t!228300 (list!12096 input!5495)) (- (_1!19071 lt!989506) 1)))))

(declare-fun e!1750769 () tuple2!32288)

(assert (=> b!2775774 (= e!1750769 (tuple2!32289 (Cons!32072 (h!37492 (list!12096 input!5495)) (_1!19065 lt!990184)) (_2!19065 lt!990184)))))

(declare-fun b!2775776 () Bool)

(declare-fun e!1750768 () tuple2!32288)

(assert (=> b!2775776 (= e!1750768 (tuple2!32289 Nil!32072 Nil!32072))))

(declare-fun b!2775777 () Bool)

(assert (=> b!2775777 (= e!1750769 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun b!2775778 () Bool)

(declare-fun res!1159822 () Bool)

(assert (=> b!2775778 (=> (not res!1159822) (not e!1750767))))

(declare-fun take!505 (List!32172 Int) List!32172)

(assert (=> b!2775778 (= res!1159822 (= (_1!19065 lt!990185) (take!505 (list!12096 input!5495) (_1!19071 lt!989506))))))

(declare-fun b!2775775 () Bool)

(assert (=> b!2775775 (= e!1750768 e!1750769)))

(declare-fun c!450734 () Bool)

(assert (=> b!2775775 (= c!450734 (<= (_1!19071 lt!989506) 0))))

(declare-fun d!806832 () Bool)

(assert (=> d!806832 e!1750767))

(declare-fun res!1159823 () Bool)

(assert (=> d!806832 (=> (not res!1159823) (not e!1750767))))

(assert (=> d!806832 (= res!1159823 (= (++!7932 (_1!19065 lt!990185) (_2!19065 lt!990185)) (list!12096 input!5495)))))

(assert (=> d!806832 (= lt!990185 e!1750768)))

(declare-fun c!450733 () Bool)

(assert (=> d!806832 (= c!450733 ((_ is Nil!32072) (list!12096 input!5495)))))

(assert (=> d!806832 (= (splitAtIndex!52 (list!12096 input!5495) (_1!19071 lt!989506)) lt!990185)))

(assert (= (and d!806832 c!450733) b!2775776))

(assert (= (and d!806832 (not c!450733)) b!2775775))

(assert (= (and b!2775775 c!450734) b!2775777))

(assert (= (and b!2775775 (not c!450734)) b!2775774))

(assert (= (and d!806832 res!1159823) b!2775778))

(assert (= (and b!2775778 res!1159822) b!2775773))

(assert (=> b!2775773 m!3201349))

(declare-fun m!3202787 () Bool)

(assert (=> b!2775773 m!3202787))

(declare-fun m!3202789 () Bool)

(assert (=> b!2775774 m!3202789))

(assert (=> b!2775778 m!3201349))

(declare-fun m!3202791 () Bool)

(assert (=> b!2775778 m!3202791))

(declare-fun m!3202793 () Bool)

(assert (=> d!806832 m!3202793))

(assert (=> b!2775030 d!806832))

(assert (=> b!2775030 d!806470))

(declare-fun d!806834 () Bool)

(declare-fun lt!990186 () Int)

(assert (=> d!806834 (>= lt!990186 0)))

(declare-fun e!1750770 () Int)

(assert (=> d!806834 (= lt!990186 e!1750770)))

(declare-fun c!450735 () Bool)

(assert (=> d!806834 (= c!450735 ((_ is Nil!32072) lt!989665))))

(assert (=> d!806834 (= (size!24869 lt!989665) lt!990186)))

(declare-fun b!2775779 () Bool)

(assert (=> b!2775779 (= e!1750770 0)))

(declare-fun b!2775780 () Bool)

(assert (=> b!2775780 (= e!1750770 (+ 1 (size!24869 (t!228300 lt!989665))))))

(assert (= (and d!806834 c!450735) b!2775779))

(assert (= (and d!806834 (not c!450735)) b!2775780))

(declare-fun m!3202795 () Bool)

(assert (=> b!2775780 m!3202795))

(assert (=> b!2775033 d!806834))

(declare-fun d!806836 () Bool)

(declare-fun lt!990187 () Int)

(assert (=> d!806836 (>= lt!990187 0)))

(declare-fun e!1750771 () Int)

(assert (=> d!806836 (= lt!990187 e!1750771)))

(declare-fun c!450736 () Bool)

(assert (=> d!806836 (= c!450736 ((_ is Nil!32072) (list!12096 (_1!19066 lt!989480))))))

(assert (=> d!806836 (= (size!24869 (list!12096 (_1!19066 lt!989480))) lt!990187)))

(declare-fun b!2775781 () Bool)

(assert (=> b!2775781 (= e!1750771 0)))

(declare-fun b!2775782 () Bool)

(assert (=> b!2775782 (= e!1750771 (+ 1 (size!24869 (t!228300 (list!12096 (_1!19066 lt!989480))))))))

(assert (= (and d!806836 c!450736) b!2775781))

(assert (= (and d!806836 (not c!450736)) b!2775782))

(declare-fun m!3202797 () Bool)

(assert (=> b!2775782 m!3202797))

(assert (=> b!2775033 d!806836))

(declare-fun d!806838 () Bool)

(declare-fun lt!990188 () Int)

(assert (=> d!806838 (>= lt!990188 0)))

(declare-fun e!1750772 () Int)

(assert (=> d!806838 (= lt!990188 e!1750772)))

(declare-fun c!450737 () Bool)

(assert (=> d!806838 (= c!450737 ((_ is Nil!32072) (list!12096 (_2!19066 lt!989480))))))

(assert (=> d!806838 (= (size!24869 (list!12096 (_2!19066 lt!989480))) lt!990188)))

(declare-fun b!2775783 () Bool)

(assert (=> b!2775783 (= e!1750772 0)))

(declare-fun b!2775784 () Bool)

(assert (=> b!2775784 (= e!1750772 (+ 1 (size!24869 (t!228300 (list!12096 (_2!19066 lt!989480))))))))

(assert (= (and d!806838 c!450737) b!2775783))

(assert (= (and d!806838 (not c!450737)) b!2775784))

(declare-fun m!3202799 () Bool)

(assert (=> b!2775784 m!3202799))

(assert (=> b!2775033 d!806838))

(declare-fun d!806840 () Bool)

(declare-fun c!450738 () Bool)

(assert (=> d!806840 (= c!450738 ((_ is Nil!32072) lt!989916))))

(declare-fun e!1750773 () (InoxSet C!16364))

(assert (=> d!806840 (= (content!4508 lt!989916) e!1750773)))

(declare-fun b!2775785 () Bool)

(assert (=> b!2775785 (= e!1750773 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775786 () Bool)

(assert (=> b!2775786 (= e!1750773 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989916) true) (content!4508 (t!228300 lt!989916))))))

(assert (= (and d!806840 c!450738) b!2775785))

(assert (= (and d!806840 (not c!450738)) b!2775786))

(declare-fun m!3202801 () Bool)

(assert (=> b!2775786 m!3202801))

(declare-fun m!3202803 () Bool)

(assert (=> b!2775786 m!3202803))

(assert (=> d!806566 d!806840))

(assert (=> d!806566 d!806776))

(declare-fun d!806842 () Bool)

(declare-fun c!450739 () Bool)

(assert (=> d!806842 (= c!450739 ((_ is Nil!32072) (Cons!32072 lt!989486 Nil!32072)))))

(declare-fun e!1750774 () (InoxSet C!16364))

(assert (=> d!806842 (= (content!4508 (Cons!32072 lt!989486 Nil!32072)) e!1750774)))

(declare-fun b!2775787 () Bool)

(assert (=> b!2775787 (= e!1750774 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775788 () Bool)

(assert (=> b!2775788 (= e!1750774 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (Cons!32072 lt!989486 Nil!32072)) true) (content!4508 (t!228300 (Cons!32072 lt!989486 Nil!32072)))))))

(assert (= (and d!806842 c!450739) b!2775787))

(assert (= (and d!806842 (not c!450739)) b!2775788))

(declare-fun m!3202805 () Bool)

(assert (=> b!2775788 m!3202805))

(declare-fun m!3202807 () Bool)

(assert (=> b!2775788 m!3202807))

(assert (=> d!806566 d!806842))

(declare-fun bs!505456 () Bool)

(declare-fun d!806844 () Bool)

(assert (= bs!505456 (and d!806844 d!806686)))

(declare-fun lambda!101857 () Int)

(assert (=> bs!505456 (= lambda!101857 lambda!101837)))

(declare-fun bs!505457 () Bool)

(assert (= bs!505457 (and d!806844 d!806578)))

(assert (=> bs!505457 (= lambda!101857 lambda!101817)))

(declare-fun bs!505458 () Bool)

(assert (= bs!505458 (and d!806844 d!806764)))

(assert (=> bs!505458 (= lambda!101857 lambda!101851)))

(declare-fun bs!505459 () Bool)

(assert (= bs!505459 (and d!806844 d!806788)))

(assert (=> bs!505459 (= lambda!101857 lambda!101854)))

(declare-fun bs!505460 () Bool)

(assert (= bs!505460 (and d!806844 d!806622)))

(assert (=> bs!505460 (= lambda!101857 lambda!101829)))

(declare-fun bs!505461 () Bool)

(assert (= bs!505461 (and d!806844 d!806694)))

(assert (=> bs!505461 (= lambda!101857 lambda!101839)))

(declare-fun bs!505462 () Bool)

(assert (= bs!505462 (and d!806844 d!806770)))

(assert (=> bs!505462 (= lambda!101857 lambda!101852)))

(declare-fun bs!505463 () Bool)

(assert (= bs!505463 (and d!806844 d!806762)))

(assert (=> bs!505463 (= lambda!101857 lambda!101850)))

(declare-fun bs!505464 () Bool)

(assert (= bs!505464 (and d!806844 d!806784)))

(assert (=> bs!505464 (= lambda!101857 lambda!101853)))

(assert (=> d!806844 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) lambda!101857))))

(declare-fun bs!505465 () Bool)

(assert (= bs!505465 d!806844))

(declare-fun m!3202809 () Bool)

(assert (=> bs!505465 m!3202809))

(assert (=> b!2775319 d!806844))

(declare-fun bs!505466 () Bool)

(declare-fun d!806846 () Bool)

(assert (= bs!505466 (and d!806846 d!806686)))

(declare-fun lambda!101858 () Int)

(assert (=> bs!505466 (= lambda!101858 lambda!101837)))

(declare-fun bs!505467 () Bool)

(assert (= bs!505467 (and d!806846 d!806578)))

(assert (=> bs!505467 (= lambda!101858 lambda!101817)))

(declare-fun bs!505468 () Bool)

(assert (= bs!505468 (and d!806846 d!806844)))

(assert (=> bs!505468 (= lambda!101858 lambda!101857)))

(declare-fun bs!505469 () Bool)

(assert (= bs!505469 (and d!806846 d!806764)))

(assert (=> bs!505469 (= lambda!101858 lambda!101851)))

(declare-fun bs!505470 () Bool)

(assert (= bs!505470 (and d!806846 d!806788)))

(assert (=> bs!505470 (= lambda!101858 lambda!101854)))

(declare-fun bs!505471 () Bool)

(assert (= bs!505471 (and d!806846 d!806622)))

(assert (=> bs!505471 (= lambda!101858 lambda!101829)))

(declare-fun bs!505472 () Bool)

(assert (= bs!505472 (and d!806846 d!806694)))

(assert (=> bs!505472 (= lambda!101858 lambda!101839)))

(declare-fun bs!505473 () Bool)

(assert (= bs!505473 (and d!806846 d!806770)))

(assert (=> bs!505473 (= lambda!101858 lambda!101852)))

(declare-fun bs!505474 () Bool)

(assert (= bs!505474 (and d!806846 d!806762)))

(assert (=> bs!505474 (= lambda!101858 lambda!101850)))

(declare-fun bs!505475 () Bool)

(assert (= bs!505475 (and d!806846 d!806784)))

(assert (=> bs!505475 (= lambda!101858 lambda!101853)))

(assert (=> d!806846 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 mapValue!17377)))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapValue!17377)))) lambda!101858))))

(declare-fun bs!505476 () Bool)

(assert (= bs!505476 d!806846))

(declare-fun m!3202811 () Bool)

(assert (=> bs!505476 m!3202811))

(assert (=> b!2775313 d!806846))

(declare-fun bs!505477 () Bool)

(declare-fun d!806848 () Bool)

(assert (= bs!505477 (and d!806848 d!806686)))

(declare-fun lambda!101859 () Int)

(assert (=> bs!505477 (= lambda!101859 lambda!101837)))

(declare-fun bs!505478 () Bool)

(assert (= bs!505478 (and d!806848 d!806578)))

(assert (=> bs!505478 (= lambda!101859 lambda!101817)))

(declare-fun bs!505479 () Bool)

(assert (= bs!505479 (and d!806848 d!806844)))

(assert (=> bs!505479 (= lambda!101859 lambda!101857)))

(declare-fun bs!505480 () Bool)

(assert (= bs!505480 (and d!806848 d!806846)))

(assert (=> bs!505480 (= lambda!101859 lambda!101858)))

(declare-fun bs!505481 () Bool)

(assert (= bs!505481 (and d!806848 d!806764)))

(assert (=> bs!505481 (= lambda!101859 lambda!101851)))

(declare-fun bs!505482 () Bool)

(assert (= bs!505482 (and d!806848 d!806788)))

(assert (=> bs!505482 (= lambda!101859 lambda!101854)))

(declare-fun bs!505483 () Bool)

(assert (= bs!505483 (and d!806848 d!806622)))

(assert (=> bs!505483 (= lambda!101859 lambda!101829)))

(declare-fun bs!505484 () Bool)

(assert (= bs!505484 (and d!806848 d!806694)))

(assert (=> bs!505484 (= lambda!101859 lambda!101839)))

(declare-fun bs!505485 () Bool)

(assert (= bs!505485 (and d!806848 d!806770)))

(assert (=> bs!505485 (= lambda!101859 lambda!101852)))

(declare-fun bs!505486 () Bool)

(assert (= bs!505486 (and d!806848 d!806762)))

(assert (=> bs!505486 (= lambda!101859 lambda!101850)))

(declare-fun bs!505487 () Bool)

(assert (= bs!505487 (and d!806848 d!806784)))

(assert (=> bs!505487 (= lambda!101859 lambda!101853)))

(assert (=> d!806848 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) lambda!101859))))

(declare-fun bs!505488 () Bool)

(assert (= bs!505488 d!806848))

(declare-fun m!3202813 () Bool)

(assert (=> bs!505488 m!3202813))

(assert (=> b!2775257 d!806848))

(declare-fun d!806850 () Bool)

(declare-fun res!1159828 () Bool)

(declare-fun e!1750779 () Bool)

(assert (=> d!806850 (=> res!1159828 e!1750779)))

(assert (=> d!806850 (= res!1159828 ((_ is Nil!32073) (exprs!2821 setElem!23028)))))

(assert (=> d!806850 (= (forall!6632 (exprs!2821 setElem!23028) lambda!101817) e!1750779)))

(declare-fun b!2775793 () Bool)

(declare-fun e!1750780 () Bool)

(assert (=> b!2775793 (= e!1750779 e!1750780)))

(declare-fun res!1159829 () Bool)

(assert (=> b!2775793 (=> (not res!1159829) (not e!1750780))))

(declare-fun dynLambda!13608 (Int Regex!8103) Bool)

(assert (=> b!2775793 (= res!1159829 (dynLambda!13608 lambda!101817 (h!37493 (exprs!2821 setElem!23028))))))

(declare-fun b!2775794 () Bool)

(assert (=> b!2775794 (= e!1750780 (forall!6632 (t!228301 (exprs!2821 setElem!23028)) lambda!101817))))

(assert (= (and d!806850 (not res!1159828)) b!2775793))

(assert (= (and b!2775793 res!1159829) b!2775794))

(declare-fun b_lambda!83435 () Bool)

(assert (=> (not b_lambda!83435) (not b!2775793)))

(declare-fun m!3202815 () Bool)

(assert (=> b!2775793 m!3202815))

(declare-fun m!3202817 () Bool)

(assert (=> b!2775794 m!3202817))

(assert (=> d!806578 d!806850))

(declare-fun d!806852 () Bool)

(declare-fun c!450740 () Bool)

(assert (=> d!806852 (= c!450740 ((_ is Node!9981) (left!24418 (c!450499 input!5495))))))

(declare-fun e!1750781 () Bool)

(assert (=> d!806852 (= (inv!43563 (left!24418 (c!450499 input!5495))) e!1750781)))

(declare-fun b!2775795 () Bool)

(assert (=> b!2775795 (= e!1750781 (inv!43565 (left!24418 (c!450499 input!5495))))))

(declare-fun b!2775796 () Bool)

(declare-fun e!1750782 () Bool)

(assert (=> b!2775796 (= e!1750781 e!1750782)))

(declare-fun res!1159830 () Bool)

(assert (=> b!2775796 (= res!1159830 (not ((_ is Leaf!15201) (left!24418 (c!450499 input!5495)))))))

(assert (=> b!2775796 (=> res!1159830 e!1750782)))

(declare-fun b!2775797 () Bool)

(assert (=> b!2775797 (= e!1750782 (inv!43566 (left!24418 (c!450499 input!5495))))))

(assert (= (and d!806852 c!450740) b!2775795))

(assert (= (and d!806852 (not c!450740)) b!2775796))

(assert (= (and b!2775796 (not res!1159830)) b!2775797))

(declare-fun m!3202819 () Bool)

(assert (=> b!2775795 m!3202819))

(declare-fun m!3202821 () Bool)

(assert (=> b!2775797 m!3202821))

(assert (=> b!2775289 d!806852))

(declare-fun d!806854 () Bool)

(declare-fun c!450741 () Bool)

(assert (=> d!806854 (= c!450741 ((_ is Node!9981) (right!24748 (c!450499 input!5495))))))

(declare-fun e!1750783 () Bool)

(assert (=> d!806854 (= (inv!43563 (right!24748 (c!450499 input!5495))) e!1750783)))

(declare-fun b!2775798 () Bool)

(assert (=> b!2775798 (= e!1750783 (inv!43565 (right!24748 (c!450499 input!5495))))))

(declare-fun b!2775799 () Bool)

(declare-fun e!1750784 () Bool)

(assert (=> b!2775799 (= e!1750783 e!1750784)))

(declare-fun res!1159831 () Bool)

(assert (=> b!2775799 (= res!1159831 (not ((_ is Leaf!15201) (right!24748 (c!450499 input!5495)))))))

(assert (=> b!2775799 (=> res!1159831 e!1750784)))

(declare-fun b!2775800 () Bool)

(assert (=> b!2775800 (= e!1750784 (inv!43566 (right!24748 (c!450499 input!5495))))))

(assert (= (and d!806854 c!450741) b!2775798))

(assert (= (and d!806854 (not c!450741)) b!2775799))

(assert (= (and b!2775799 (not res!1159831)) b!2775800))

(declare-fun m!3202823 () Bool)

(assert (=> b!2775798 m!3202823))

(declare-fun m!3202825 () Bool)

(assert (=> b!2775800 m!3202825))

(assert (=> b!2775289 d!806854))

(declare-fun d!806856 () Bool)

(assert (=> d!806856 (= (tail!4390 lt!989532) (t!228300 lt!989532))))

(assert (=> b!2775227 d!806856))

(declare-fun d!806858 () Bool)

(assert (=> d!806858 (= (++!7932 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072)) lt!989931) lt!989939)))

(declare-fun lt!990189 () Unit!46204)

(assert (=> d!806858 (= lt!990189 (choose!16277 lt!989488 lt!989934 lt!989931 lt!989939))))

(assert (=> d!806858 (= (++!7932 lt!989488 (Cons!32072 lt!989934 lt!989931)) lt!989939)))

(assert (=> d!806858 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989488 lt!989934 lt!989931 lt!989939) lt!990189)))

(declare-fun bs!505489 () Bool)

(assert (= bs!505489 d!806858))

(assert (=> bs!505489 m!3201985))

(assert (=> bs!505489 m!3201985))

(assert (=> bs!505489 m!3201987))

(declare-fun m!3202827 () Bool)

(assert (=> bs!505489 m!3202827))

(declare-fun m!3202829 () Bool)

(assert (=> bs!505489 m!3202829))

(assert (=> b!2775227 d!806858))

(declare-fun d!806860 () Bool)

(declare-fun e!1750785 () Bool)

(assert (=> d!806860 e!1750785))

(declare-fun res!1159832 () Bool)

(assert (=> d!806860 (=> (not res!1159832) (not e!1750785))))

(declare-fun lt!990190 () List!32172)

(assert (=> d!806860 (= res!1159832 (= (content!4508 lt!990190) ((_ map or) (content!4508 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072))) (content!4508 lt!989931))))))

(declare-fun e!1750786 () List!32172)

(assert (=> d!806860 (= lt!990190 e!1750786)))

(declare-fun c!450742 () Bool)

(assert (=> d!806860 (= c!450742 ((_ is Nil!32072) (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072))))))

(assert (=> d!806860 (= (++!7932 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072)) lt!989931) lt!990190)))

(declare-fun b!2775804 () Bool)

(assert (=> b!2775804 (= e!1750785 (or (not (= lt!989931 Nil!32072)) (= lt!990190 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072)))))))

(declare-fun b!2775802 () Bool)

(assert (=> b!2775802 (= e!1750786 (Cons!32072 (h!37492 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072))) (++!7932 (t!228300 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072))) lt!989931)))))

(declare-fun b!2775801 () Bool)

(assert (=> b!2775801 (= e!1750786 lt!989931)))

(declare-fun b!2775803 () Bool)

(declare-fun res!1159833 () Bool)

(assert (=> b!2775803 (=> (not res!1159833) (not e!1750785))))

(assert (=> b!2775803 (= res!1159833 (= (size!24869 lt!990190) (+ (size!24869 (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072))) (size!24869 lt!989931))))))

(assert (= (and d!806860 c!450742) b!2775801))

(assert (= (and d!806860 (not c!450742)) b!2775802))

(assert (= (and d!806860 res!1159832) b!2775803))

(assert (= (and b!2775803 res!1159833) b!2775804))

(declare-fun m!3202831 () Bool)

(assert (=> d!806860 m!3202831))

(assert (=> d!806860 m!3201985))

(declare-fun m!3202833 () Bool)

(assert (=> d!806860 m!3202833))

(declare-fun m!3202835 () Bool)

(assert (=> d!806860 m!3202835))

(declare-fun m!3202837 () Bool)

(assert (=> b!2775802 m!3202837))

(declare-fun m!3202839 () Bool)

(assert (=> b!2775803 m!3202839))

(assert (=> b!2775803 m!3201985))

(declare-fun m!3202841 () Bool)

(assert (=> b!2775803 m!3202841))

(declare-fun m!3202843 () Bool)

(assert (=> b!2775803 m!3202843))

(assert (=> b!2775227 d!806860))

(declare-fun d!806862 () Bool)

(assert (=> d!806862 (= (head!6152 (drop!1710 lt!989925 1)) (h!37492 (drop!1710 lt!989925 1)))))

(assert (=> b!2775227 d!806862))

(declare-fun d!806864 () Bool)

(assert (=> d!806864 (= (head!6152 (getSuffix!1239 lt!989949 lt!989488)) (h!37492 (getSuffix!1239 lt!989949 lt!989488)))))

(assert (=> b!2775227 d!806864))

(declare-fun d!806866 () Bool)

(assert (=> d!806866 (= (list!12096 (_1!19066 lt!989923)) (list!12097 (c!450499 (_1!19066 lt!989923))))))

(declare-fun bs!505490 () Bool)

(assert (= bs!505490 d!806866))

(declare-fun m!3202845 () Bool)

(assert (=> bs!505490 m!3202845))

(assert (=> b!2775227 d!806866))

(declare-fun d!806868 () Bool)

(assert (=> d!806868 (= (head!6152 (drop!1710 lt!989925 1)) (apply!7513 lt!989925 1))))

(declare-fun lt!990191 () Unit!46204)

(assert (=> d!806868 (= lt!990191 (choose!16281 lt!989925 1))))

(declare-fun e!1750787 () Bool)

(assert (=> d!806868 e!1750787))

(declare-fun res!1159834 () Bool)

(assert (=> d!806868 (=> (not res!1159834) (not e!1750787))))

(assert (=> d!806868 (= res!1159834 (>= 1 0))))

(assert (=> d!806868 (= (lemmaDropApply!916 lt!989925 1) lt!990191)))

(declare-fun b!2775805 () Bool)

(assert (=> b!2775805 (= e!1750787 (< 1 (size!24869 lt!989925)))))

(assert (= (and d!806868 res!1159834) b!2775805))

(assert (=> d!806868 m!3201995))

(assert (=> d!806868 m!3201995))

(assert (=> d!806868 m!3201997))

(assert (=> d!806868 m!3202007))

(declare-fun m!3202847 () Bool)

(assert (=> d!806868 m!3202847))

(declare-fun m!3202849 () Bool)

(assert (=> b!2775805 m!3202849))

(assert (=> b!2775227 d!806868))

(declare-fun b!2775807 () Bool)

(declare-fun res!1159836 () Bool)

(declare-fun e!1750790 () Bool)

(assert (=> b!2775807 (=> (not res!1159836) (not e!1750790))))

(assert (=> b!2775807 (= res!1159836 (= (head!6152 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072))) (head!6152 lt!989949)))))

(declare-fun b!2775806 () Bool)

(declare-fun e!1750789 () Bool)

(assert (=> b!2775806 (= e!1750789 e!1750790)))

(declare-fun res!1159837 () Bool)

(assert (=> b!2775806 (=> (not res!1159837) (not e!1750790))))

(assert (=> b!2775806 (= res!1159837 (not ((_ is Nil!32072) lt!989949)))))

(declare-fun d!806870 () Bool)

(declare-fun e!1750788 () Bool)

(assert (=> d!806870 e!1750788))

(declare-fun res!1159838 () Bool)

(assert (=> d!806870 (=> res!1159838 e!1750788)))

(declare-fun lt!990192 () Bool)

(assert (=> d!806870 (= res!1159838 (not lt!990192))))

(assert (=> d!806870 (= lt!990192 e!1750789)))

(declare-fun res!1159835 () Bool)

(assert (=> d!806870 (=> res!1159835 e!1750789)))

(assert (=> d!806870 (= res!1159835 ((_ is Nil!32072) (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072))))))

(assert (=> d!806870 (= (isPrefix!2557 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)) lt!989949) lt!990192)))

(declare-fun b!2775808 () Bool)

(assert (=> b!2775808 (= e!1750790 (isPrefix!2557 (tail!4390 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072))) (tail!4390 lt!989949)))))

(declare-fun b!2775809 () Bool)

(assert (=> b!2775809 (= e!1750788 (>= (size!24869 lt!989949) (size!24869 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)))))))

(assert (= (and d!806870 (not res!1159835)) b!2775806))

(assert (= (and b!2775806 res!1159837) b!2775807))

(assert (= (and b!2775807 res!1159836) b!2775808))

(assert (= (and d!806870 (not res!1159838)) b!2775809))

(assert (=> b!2775807 m!3202003))

(declare-fun m!3202851 () Bool)

(assert (=> b!2775807 m!3202851))

(declare-fun m!3202853 () Bool)

(assert (=> b!2775807 m!3202853))

(assert (=> b!2775808 m!3202003))

(declare-fun m!3202855 () Bool)

(assert (=> b!2775808 m!3202855))

(declare-fun m!3202857 () Bool)

(assert (=> b!2775808 m!3202857))

(assert (=> b!2775808 m!3202855))

(assert (=> b!2775808 m!3202857))

(declare-fun m!3202859 () Bool)

(assert (=> b!2775808 m!3202859))

(declare-fun m!3202861 () Bool)

(assert (=> b!2775809 m!3202861))

(assert (=> b!2775809 m!3202003))

(declare-fun m!3202863 () Bool)

(assert (=> b!2775809 m!3202863))

(assert (=> b!2775227 d!806870))

(assert (=> b!2775227 d!806698))

(declare-fun d!806872 () Bool)

(assert (=> d!806872 (isPrefix!2557 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)) lt!989949)))

(declare-fun lt!990193 () Unit!46204)

(assert (=> d!806872 (= lt!990193 (choose!16276 lt!989488 lt!989949))))

(assert (=> d!806872 (isPrefix!2557 lt!989488 lt!989949)))

(assert (=> d!806872 (= (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989488 lt!989949) lt!990193)))

(declare-fun bs!505491 () Bool)

(assert (= bs!505491 d!806872))

(declare-fun m!3202865 () Bool)

(assert (=> bs!505491 m!3202865))

(assert (=> bs!505491 m!3202003))

(assert (=> bs!505491 m!3201979))

(assert (=> bs!505491 m!3201991))

(declare-fun m!3202867 () Bool)

(assert (=> bs!505491 m!3202867))

(assert (=> bs!505491 m!3201979))

(assert (=> bs!505491 m!3202003))

(assert (=> bs!505491 m!3202005))

(assert (=> b!2775227 d!806872))

(declare-fun d!806874 () Bool)

(declare-fun lt!990194 () C!16364)

(assert (=> d!806874 (= lt!990194 (apply!7513 (list!12096 input!5495) 1))))

(assert (=> d!806874 (= lt!990194 (apply!7514 (c!450499 input!5495) 1))))

(declare-fun e!1750791 () Bool)

(assert (=> d!806874 e!1750791))

(declare-fun res!1159839 () Bool)

(assert (=> d!806874 (=> (not res!1159839) (not e!1750791))))

(assert (=> d!806874 (= res!1159839 (<= 0 1))))

(assert (=> d!806874 (= (apply!7512 input!5495 1) lt!990194)))

(declare-fun b!2775810 () Bool)

(assert (=> b!2775810 (= e!1750791 (< 1 (size!24868 input!5495)))))

(assert (= (and d!806874 res!1159839) b!2775810))

(assert (=> d!806874 m!3201349))

(assert (=> d!806874 m!3201349))

(declare-fun m!3202869 () Bool)

(assert (=> d!806874 m!3202869))

(declare-fun m!3202871 () Bool)

(assert (=> d!806874 m!3202871))

(assert (=> b!2775810 m!3201355))

(assert (=> b!2775227 d!806874))

(declare-fun d!806876 () Bool)

(assert (=> d!806876 (<= (size!24869 lt!989488) (size!24869 lt!989959))))

(declare-fun lt!990195 () Unit!46204)

(assert (=> d!806876 (= lt!990195 (choose!16275 lt!989488 lt!989959))))

(assert (=> d!806876 (isPrefix!2557 lt!989488 lt!989959)))

(assert (=> d!806876 (= (lemmaIsPrefixThenSmallerEqSize!264 lt!989488 lt!989959) lt!990195)))

(declare-fun bs!505492 () Bool)

(assert (= bs!505492 d!806876))

(assert (=> bs!505492 m!3201877))

(assert (=> bs!505492 m!3201993))

(declare-fun m!3202873 () Bool)

(assert (=> bs!505492 m!3202873))

(declare-fun m!3202875 () Bool)

(assert (=> bs!505492 m!3202875))

(assert (=> b!2775227 d!806876))

(assert (=> b!2775227 d!806470))

(declare-fun d!806878 () Bool)

(declare-fun e!1750792 () Bool)

(assert (=> d!806878 e!1750792))

(declare-fun res!1159841 () Bool)

(assert (=> d!806878 (=> (not res!1159841) (not e!1750792))))

(declare-fun lt!990196 () tuple2!32290)

(assert (=> d!806878 (= res!1159841 (isBalanced!3044 (c!450499 (_1!19066 lt!990196))))))

(declare-fun lt!990197 () tuple2!32298)

(assert (=> d!806878 (= lt!990196 (tuple2!32291 (BalanceConc!19577 (_1!19074 lt!990197)) (BalanceConc!19577 (_2!19074 lt!990197))))))

(assert (=> d!806878 (= lt!990197 (splitAt!120 (c!450499 input!5495) 1))))

(assert (=> d!806878 (isBalanced!3044 (c!450499 input!5495))))

(assert (=> d!806878 (= (splitAt!119 input!5495 1) lt!990196)))

(declare-fun b!2775811 () Bool)

(declare-fun res!1159840 () Bool)

(assert (=> b!2775811 (=> (not res!1159840) (not e!1750792))))

(assert (=> b!2775811 (= res!1159840 (isBalanced!3044 (c!450499 (_2!19066 lt!990196))))))

(declare-fun b!2775812 () Bool)

(assert (=> b!2775812 (= e!1750792 (= (tuple2!32289 (list!12096 (_1!19066 lt!990196)) (list!12096 (_2!19066 lt!990196))) (splitAtIndex!52 (list!12096 input!5495) 1)))))

(assert (= (and d!806878 res!1159841) b!2775811))

(assert (= (and b!2775811 res!1159840) b!2775812))

(declare-fun m!3202877 () Bool)

(assert (=> d!806878 m!3202877))

(declare-fun m!3202879 () Bool)

(assert (=> d!806878 m!3202879))

(assert (=> d!806878 m!3201563))

(declare-fun m!3202881 () Bool)

(assert (=> b!2775811 m!3202881))

(declare-fun m!3202883 () Bool)

(assert (=> b!2775812 m!3202883))

(declare-fun m!3202885 () Bool)

(assert (=> b!2775812 m!3202885))

(assert (=> b!2775812 m!3201349))

(assert (=> b!2775812 m!3201349))

(declare-fun m!3202887 () Bool)

(assert (=> b!2775812 m!3202887))

(assert (=> b!2775227 d!806878))

(declare-fun d!806880 () Bool)

(declare-fun lt!990198 () Int)

(assert (=> d!806880 (>= lt!990198 0)))

(declare-fun e!1750793 () Int)

(assert (=> d!806880 (= lt!990198 e!1750793)))

(declare-fun c!450743 () Bool)

(assert (=> d!806880 (= c!450743 ((_ is Nil!32072) lt!989959))))

(assert (=> d!806880 (= (size!24869 lt!989959) lt!990198)))

(declare-fun b!2775813 () Bool)

(assert (=> b!2775813 (= e!1750793 0)))

(declare-fun b!2775814 () Bool)

(assert (=> b!2775814 (= e!1750793 (+ 1 (size!24869 (t!228300 lt!989959))))))

(assert (= (and d!806880 c!450743) b!2775813))

(assert (= (and d!806880 (not c!450743)) b!2775814))

(declare-fun m!3202889 () Bool)

(assert (=> b!2775814 m!3202889))

(assert (=> b!2775227 d!806880))

(assert (=> b!2775227 d!806490))

(declare-fun d!806882 () Bool)

(assert (=> d!806882 (and (= lt!989957 lt!989488) (= lt!989950 lt!989532))))

(declare-fun lt!990199 () Unit!46204)

(assert (=> d!806882 (= lt!990199 (choose!16280 lt!989957 lt!989950 lt!989488 lt!989532))))

(assert (=> d!806882 (= (++!7932 lt!989957 lt!989950) (++!7932 lt!989488 lt!989532))))

(assert (=> d!806882 (= (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989957 lt!989950 lt!989488 lt!989532) lt!990199)))

(declare-fun bs!505493 () Bool)

(assert (= bs!505493 d!806882))

(declare-fun m!3202891 () Bool)

(assert (=> bs!505493 m!3202891))

(declare-fun m!3202893 () Bool)

(assert (=> bs!505493 m!3202893))

(assert (=> bs!505493 m!3201437))

(assert (=> b!2775227 d!806882))

(declare-fun d!806884 () Bool)

(declare-fun lt!990200 () List!32172)

(assert (=> d!806884 (= (++!7932 lt!989488 lt!990200) lt!989949)))

(declare-fun e!1750794 () List!32172)

(assert (=> d!806884 (= lt!990200 e!1750794)))

(declare-fun c!450744 () Bool)

(assert (=> d!806884 (= c!450744 ((_ is Cons!32072) lt!989488))))

(assert (=> d!806884 (>= (size!24869 lt!989949) (size!24869 lt!989488))))

(assert (=> d!806884 (= (getSuffix!1239 lt!989949 lt!989488) lt!990200)))

(declare-fun b!2775815 () Bool)

(assert (=> b!2775815 (= e!1750794 (getSuffix!1239 (tail!4390 lt!989949) (t!228300 lt!989488)))))

(declare-fun b!2775816 () Bool)

(assert (=> b!2775816 (= e!1750794 lt!989949)))

(assert (= (and d!806884 c!450744) b!2775815))

(assert (= (and d!806884 (not c!450744)) b!2775816))

(declare-fun m!3202895 () Bool)

(assert (=> d!806884 m!3202895))

(assert (=> d!806884 m!3202861))

(assert (=> d!806884 m!3201877))

(assert (=> b!2775815 m!3202857))

(assert (=> b!2775815 m!3202857))

(declare-fun m!3202897 () Bool)

(assert (=> b!2775815 m!3202897))

(assert (=> b!2775227 d!806884))

(declare-fun b!2775817 () Bool)

(declare-fun e!1750798 () Int)

(declare-fun e!1750799 () Int)

(assert (=> b!2775817 (= e!1750798 e!1750799)))

(declare-fun c!450748 () Bool)

(declare-fun call!181633 () Int)

(assert (=> b!2775817 (= c!450748 (>= 1 call!181633))))

(declare-fun b!2775818 () Bool)

(assert (=> b!2775818 (= e!1750799 0)))

(declare-fun d!806886 () Bool)

(declare-fun e!1750795 () Bool)

(assert (=> d!806886 e!1750795))

(declare-fun res!1159842 () Bool)

(assert (=> d!806886 (=> (not res!1159842) (not e!1750795))))

(declare-fun lt!990201 () List!32172)

(assert (=> d!806886 (= res!1159842 (= ((_ map implies) (content!4508 lt!990201) (content!4508 lt!989925)) ((as const (InoxSet C!16364)) true)))))

(declare-fun e!1750797 () List!32172)

(assert (=> d!806886 (= lt!990201 e!1750797)))

(declare-fun c!450746 () Bool)

(assert (=> d!806886 (= c!450746 ((_ is Nil!32072) lt!989925))))

(assert (=> d!806886 (= (drop!1710 lt!989925 1) lt!990201)))

(declare-fun b!2775819 () Bool)

(declare-fun e!1750796 () List!32172)

(assert (=> b!2775819 (= e!1750796 lt!989925)))

(declare-fun b!2775820 () Bool)

(assert (=> b!2775820 (= e!1750795 (= (size!24869 lt!990201) e!1750798))))

(declare-fun c!450745 () Bool)

(assert (=> b!2775820 (= c!450745 (<= 1 0))))

(declare-fun b!2775821 () Bool)

(assert (=> b!2775821 (= e!1750797 e!1750796)))

(declare-fun c!450747 () Bool)

(assert (=> b!2775821 (= c!450747 (<= 1 0))))

(declare-fun b!2775822 () Bool)

(assert (=> b!2775822 (= e!1750797 Nil!32072)))

(declare-fun bm!181628 () Bool)

(assert (=> bm!181628 (= call!181633 (size!24869 lt!989925))))

(declare-fun b!2775823 () Bool)

(assert (=> b!2775823 (= e!1750796 (drop!1710 (t!228300 lt!989925) (- 1 1)))))

(declare-fun b!2775824 () Bool)

(assert (=> b!2775824 (= e!1750799 (- call!181633 1))))

(declare-fun b!2775825 () Bool)

(assert (=> b!2775825 (= e!1750798 call!181633)))

(assert (= (and d!806886 c!450746) b!2775822))

(assert (= (and d!806886 (not c!450746)) b!2775821))

(assert (= (and b!2775821 c!450747) b!2775819))

(assert (= (and b!2775821 (not c!450747)) b!2775823))

(assert (= (and d!806886 res!1159842) b!2775820))

(assert (= (and b!2775820 c!450745) b!2775825))

(assert (= (and b!2775820 (not c!450745)) b!2775817))

(assert (= (and b!2775817 c!450748) b!2775818))

(assert (= (and b!2775817 (not c!450748)) b!2775824))

(assert (= (or b!2775825 b!2775817 b!2775824) bm!181628))

(declare-fun m!3202899 () Bool)

(assert (=> d!806886 m!3202899))

(declare-fun m!3202901 () Bool)

(assert (=> d!806886 m!3202901))

(declare-fun m!3202903 () Bool)

(assert (=> b!2775820 m!3202903))

(assert (=> bm!181628 m!3202849))

(declare-fun m!3202905 () Bool)

(assert (=> b!2775823 m!3202905))

(assert (=> b!2775227 d!806886))

(declare-fun d!806888 () Bool)

(declare-fun e!1750800 () Bool)

(assert (=> d!806888 e!1750800))

(declare-fun res!1159843 () Bool)

(assert (=> d!806888 (=> (not res!1159843) (not e!1750800))))

(declare-fun lt!990202 () List!32172)

(assert (=> d!806888 (= res!1159843 (= (content!4508 lt!990202) ((_ map or) (content!4508 lt!989488) (content!4508 (Cons!32072 lt!989934 Nil!32072)))))))

(declare-fun e!1750801 () List!32172)

(assert (=> d!806888 (= lt!990202 e!1750801)))

(declare-fun c!450749 () Bool)

(assert (=> d!806888 (= c!450749 ((_ is Nil!32072) lt!989488))))

(assert (=> d!806888 (= (++!7932 lt!989488 (Cons!32072 lt!989934 Nil!32072)) lt!990202)))

(declare-fun b!2775829 () Bool)

(assert (=> b!2775829 (= e!1750800 (or (not (= (Cons!32072 lt!989934 Nil!32072) Nil!32072)) (= lt!990202 lt!989488)))))

(declare-fun b!2775827 () Bool)

(assert (=> b!2775827 (= e!1750801 (Cons!32072 (h!37492 lt!989488) (++!7932 (t!228300 lt!989488) (Cons!32072 lt!989934 Nil!32072))))))

(declare-fun b!2775826 () Bool)

(assert (=> b!2775826 (= e!1750801 (Cons!32072 lt!989934 Nil!32072))))

(declare-fun b!2775828 () Bool)

(declare-fun res!1159844 () Bool)

(assert (=> b!2775828 (=> (not res!1159844) (not e!1750800))))

(assert (=> b!2775828 (= res!1159844 (= (size!24869 lt!990202) (+ (size!24869 lt!989488) (size!24869 (Cons!32072 lt!989934 Nil!32072)))))))

(assert (= (and d!806888 c!450749) b!2775826))

(assert (= (and d!806888 (not c!450749)) b!2775827))

(assert (= (and d!806888 res!1159843) b!2775828))

(assert (= (and b!2775828 res!1159844) b!2775829))

(declare-fun m!3202907 () Bool)

(assert (=> d!806888 m!3202907))

(assert (=> d!806888 m!3201869))

(declare-fun m!3202909 () Bool)

(assert (=> d!806888 m!3202909))

(declare-fun m!3202911 () Bool)

(assert (=> b!2775827 m!3202911))

(declare-fun m!3202913 () Bool)

(assert (=> b!2775828 m!3202913))

(assert (=> b!2775828 m!3201877))

(declare-fun m!3202915 () Bool)

(assert (=> b!2775828 m!3202915))

(assert (=> b!2775227 d!806888))

(declare-fun d!806890 () Bool)

(declare-fun e!1750802 () Bool)

(assert (=> d!806890 e!1750802))

(declare-fun res!1159845 () Bool)

(assert (=> d!806890 (=> (not res!1159845) (not e!1750802))))

(declare-fun lt!990203 () List!32172)

(assert (=> d!806890 (= res!1159845 (= (content!4508 lt!990203) ((_ map or) (content!4508 lt!989488) (content!4508 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)))))))

(declare-fun e!1750803 () List!32172)

(assert (=> d!806890 (= lt!990203 e!1750803)))

(declare-fun c!450750 () Bool)

(assert (=> d!806890 (= c!450750 ((_ is Nil!32072) lt!989488))))

(assert (=> d!806890 (= (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)) lt!990203)))

(declare-fun b!2775833 () Bool)

(assert (=> b!2775833 (= e!1750802 (or (not (= (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072) Nil!32072)) (= lt!990203 lt!989488)))))

(declare-fun b!2775831 () Bool)

(assert (=> b!2775831 (= e!1750803 (Cons!32072 (h!37492 lt!989488) (++!7932 (t!228300 lt!989488) (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072))))))

(declare-fun b!2775830 () Bool)

(assert (=> b!2775830 (= e!1750803 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072))))

(declare-fun b!2775832 () Bool)

(declare-fun res!1159846 () Bool)

(assert (=> b!2775832 (=> (not res!1159846) (not e!1750802))))

(assert (=> b!2775832 (= res!1159846 (= (size!24869 lt!990203) (+ (size!24869 lt!989488) (size!24869 (Cons!32072 (head!6152 (getSuffix!1239 lt!989949 lt!989488)) Nil!32072)))))))

(assert (= (and d!806890 c!450750) b!2775830))

(assert (= (and d!806890 (not c!450750)) b!2775831))

(assert (= (and d!806890 res!1159845) b!2775832))

(assert (= (and b!2775832 res!1159846) b!2775833))

(declare-fun m!3202917 () Bool)

(assert (=> d!806890 m!3202917))

(assert (=> d!806890 m!3201869))

(declare-fun m!3202919 () Bool)

(assert (=> d!806890 m!3202919))

(declare-fun m!3202921 () Bool)

(assert (=> b!2775831 m!3202921))

(declare-fun m!3202923 () Bool)

(assert (=> b!2775832 m!3202923))

(assert (=> b!2775832 m!3201877))

(declare-fun m!3202925 () Bool)

(assert (=> b!2775832 m!3202925))

(assert (=> b!2775227 d!806890))

(declare-fun d!806892 () Bool)

(declare-fun lt!990204 () C!16364)

(assert (=> d!806892 (contains!5996 lt!989925 lt!990204)))

(declare-fun e!1750805 () C!16364)

(assert (=> d!806892 (= lt!990204 e!1750805)))

(declare-fun c!450751 () Bool)

(assert (=> d!806892 (= c!450751 (= 1 0))))

(declare-fun e!1750804 () Bool)

(assert (=> d!806892 e!1750804))

(declare-fun res!1159847 () Bool)

(assert (=> d!806892 (=> (not res!1159847) (not e!1750804))))

(assert (=> d!806892 (= res!1159847 (<= 0 1))))

(assert (=> d!806892 (= (apply!7513 lt!989925 1) lt!990204)))

(declare-fun b!2775834 () Bool)

(assert (=> b!2775834 (= e!1750804 (< 1 (size!24869 lt!989925)))))

(declare-fun b!2775835 () Bool)

(assert (=> b!2775835 (= e!1750805 (head!6152 lt!989925))))

(declare-fun b!2775836 () Bool)

(assert (=> b!2775836 (= e!1750805 (apply!7513 (tail!4390 lt!989925) (- 1 1)))))

(assert (= (and d!806892 res!1159847) b!2775834))

(assert (= (and d!806892 c!450751) b!2775835))

(assert (= (and d!806892 (not c!450751)) b!2775836))

(declare-fun m!3202927 () Bool)

(assert (=> d!806892 m!3202927))

(assert (=> b!2775834 m!3202849))

(declare-fun m!3202929 () Bool)

(assert (=> b!2775835 m!3202929))

(declare-fun m!3202931 () Bool)

(assert (=> b!2775836 m!3202931))

(assert (=> b!2775836 m!3202931))

(declare-fun m!3202933 () Bool)

(assert (=> b!2775836 m!3202933))

(assert (=> b!2775227 d!806892))

(declare-fun d!806894 () Bool)

(declare-fun c!450752 () Bool)

(assert (=> d!806894 (= c!450752 ((_ is Nil!32072) lt!989920))))

(declare-fun e!1750806 () (InoxSet C!16364))

(assert (=> d!806894 (= (content!4508 lt!989920) e!1750806)))

(declare-fun b!2775837 () Bool)

(assert (=> b!2775837 (= e!1750806 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775838 () Bool)

(assert (=> b!2775838 (= e!1750806 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989920) true) (content!4508 (t!228300 lt!989920))))))

(assert (= (and d!806894 c!450752) b!2775837))

(assert (= (and d!806894 (not c!450752)) b!2775838))

(declare-fun m!3202935 () Bool)

(assert (=> b!2775838 m!3202935))

(declare-fun m!3202937 () Bool)

(assert (=> b!2775838 m!3202937))

(assert (=> d!806590 d!806894))

(declare-fun d!806896 () Bool)

(declare-fun c!450753 () Bool)

(assert (=> d!806896 (= c!450753 ((_ is Nil!32072) lt!989491))))

(declare-fun e!1750807 () (InoxSet C!16364))

(assert (=> d!806896 (= (content!4508 lt!989491) e!1750807)))

(declare-fun b!2775839 () Bool)

(assert (=> b!2775839 (= e!1750807 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775840 () Bool)

(assert (=> b!2775840 (= e!1750807 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989491) true) (content!4508 (t!228300 lt!989491))))))

(assert (= (and d!806896 c!450753) b!2775839))

(assert (= (and d!806896 (not c!450753)) b!2775840))

(declare-fun m!3202939 () Bool)

(assert (=> b!2775840 m!3202939))

(declare-fun m!3202941 () Bool)

(assert (=> b!2775840 m!3202941))

(assert (=> d!806590 d!806896))

(declare-fun d!806898 () Bool)

(declare-fun c!450754 () Bool)

(assert (=> d!806898 (= c!450754 ((_ is Nil!32072) lt!989479))))

(declare-fun e!1750808 () (InoxSet C!16364))

(assert (=> d!806898 (= (content!4508 lt!989479) e!1750808)))

(declare-fun b!2775841 () Bool)

(assert (=> b!2775841 (= e!1750808 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775842 () Bool)

(assert (=> b!2775842 (= e!1750808 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989479) true) (content!4508 (t!228300 lt!989479))))))

(assert (= (and d!806898 c!450754) b!2775841))

(assert (= (and d!806898 (not c!450754)) b!2775842))

(declare-fun m!3202943 () Bool)

(assert (=> b!2775842 m!3202943))

(declare-fun m!3202945 () Bool)

(assert (=> b!2775842 m!3202945))

(assert (=> d!806590 d!806898))

(assert (=> b!2774920 d!806534))

(declare-fun d!806900 () Bool)

(assert (not d!806900))

(assert (=> b!2774952 d!806900))

(declare-fun d!806902 () Bool)

(declare-fun c!450755 () Bool)

(assert (=> d!806902 (= c!450755 ((_ is Nil!32072) lt!989860))))

(declare-fun e!1750809 () (InoxSet C!16364))

(assert (=> d!806902 (= (content!4508 lt!989860) e!1750809)))

(declare-fun b!2775843 () Bool)

(assert (=> b!2775843 (= e!1750809 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775844 () Bool)

(assert (=> b!2775844 (= e!1750809 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989860) true) (content!4508 (t!228300 lt!989860))))))

(assert (= (and d!806902 c!450755) b!2775843))

(assert (= (and d!806902 (not c!450755)) b!2775844))

(declare-fun m!3202947 () Bool)

(assert (=> b!2775844 m!3202947))

(declare-fun m!3202949 () Bool)

(assert (=> b!2775844 m!3202949))

(assert (=> d!806520 d!806902))

(assert (=> d!806520 d!806776))

(declare-fun d!806904 () Bool)

(declare-fun c!450756 () Bool)

(assert (=> d!806904 (= c!450756 ((_ is Nil!32072) (Cons!32072 lt!989475 Nil!32072)))))

(declare-fun e!1750810 () (InoxSet C!16364))

(assert (=> d!806904 (= (content!4508 (Cons!32072 lt!989475 Nil!32072)) e!1750810)))

(declare-fun b!2775845 () Bool)

(assert (=> b!2775845 (= e!1750810 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775846 () Bool)

(assert (=> b!2775846 (= e!1750810 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (Cons!32072 lt!989475 Nil!32072)) true) (content!4508 (t!228300 (Cons!32072 lt!989475 Nil!32072)))))))

(assert (= (and d!806904 c!450756) b!2775845))

(assert (= (and d!806904 (not c!450756)) b!2775846))

(declare-fun m!3202951 () Bool)

(assert (=> b!2775846 m!3202951))

(declare-fun m!3202953 () Bool)

(assert (=> b!2775846 m!3202953))

(assert (=> d!806520 d!806904))

(assert (=> bm!181569 d!806856))

(assert (=> d!806506 d!806514))

(assert (=> d!806506 d!806508))

(declare-fun d!806906 () Bool)

(assert (=> d!806906 (<= (size!24869 Nil!32072) (size!24869 lt!989496))))

(assert (=> d!806906 true))

(declare-fun _$64!532 () Unit!46204)

(assert (=> d!806906 (= (choose!16275 Nil!32072 lt!989496) _$64!532)))

(declare-fun bs!505494 () Bool)

(assert (= bs!505494 d!806906))

(assert (=> bs!505494 m!3201399))

(assert (=> bs!505494 m!3201391))

(assert (=> d!806506 d!806906))

(assert (=> d!806506 d!806630))

(assert (=> bm!181561 d!806498))

(declare-fun bs!505495 () Bool)

(declare-fun d!806908 () Bool)

(assert (= bs!505495 (and d!806908 d!806686)))

(declare-fun lambda!101860 () Int)

(assert (=> bs!505495 (= lambda!101860 lambda!101837)))

(declare-fun bs!505496 () Bool)

(assert (= bs!505496 (and d!806908 d!806578)))

(assert (=> bs!505496 (= lambda!101860 lambda!101817)))

(declare-fun bs!505497 () Bool)

(assert (= bs!505497 (and d!806908 d!806846)))

(assert (=> bs!505497 (= lambda!101860 lambda!101858)))

(declare-fun bs!505498 () Bool)

(assert (= bs!505498 (and d!806908 d!806764)))

(assert (=> bs!505498 (= lambda!101860 lambda!101851)))

(declare-fun bs!505499 () Bool)

(assert (= bs!505499 (and d!806908 d!806788)))

(assert (=> bs!505499 (= lambda!101860 lambda!101854)))

(declare-fun bs!505500 () Bool)

(assert (= bs!505500 (and d!806908 d!806622)))

(assert (=> bs!505500 (= lambda!101860 lambda!101829)))

(declare-fun bs!505501 () Bool)

(assert (= bs!505501 (and d!806908 d!806694)))

(assert (=> bs!505501 (= lambda!101860 lambda!101839)))

(declare-fun bs!505502 () Bool)

(assert (= bs!505502 (and d!806908 d!806770)))

(assert (=> bs!505502 (= lambda!101860 lambda!101852)))

(declare-fun bs!505503 () Bool)

(assert (= bs!505503 (and d!806908 d!806848)))

(assert (=> bs!505503 (= lambda!101860 lambda!101859)))

(declare-fun bs!505504 () Bool)

(assert (= bs!505504 (and d!806908 d!806844)))

(assert (=> bs!505504 (= lambda!101860 lambda!101857)))

(declare-fun bs!505505 () Bool)

(assert (= bs!505505 (and d!806908 d!806762)))

(assert (=> bs!505505 (= lambda!101860 lambda!101850)))

(declare-fun bs!505506 () Bool)

(assert (= bs!505506 (and d!806908 d!806784)))

(assert (=> bs!505506 (= lambda!101860 lambda!101853)))

(assert (=> d!806908 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 mapDefault!17377)))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapDefault!17377)))) lambda!101860))))

(declare-fun bs!505507 () Bool)

(assert (= bs!505507 d!806908))

(declare-fun m!3202955 () Bool)

(assert (=> bs!505507 m!3202955))

(assert (=> b!2775240 d!806908))

(declare-fun bs!505508 () Bool)

(declare-fun d!806910 () Bool)

(assert (= bs!505508 (and d!806910 d!806686)))

(declare-fun lambda!101861 () Int)

(assert (=> bs!505508 (= lambda!101861 lambda!101837)))

(declare-fun bs!505509 () Bool)

(assert (= bs!505509 (and d!806910 d!806578)))

(assert (=> bs!505509 (= lambda!101861 lambda!101817)))

(declare-fun bs!505510 () Bool)

(assert (= bs!505510 (and d!806910 d!806846)))

(assert (=> bs!505510 (= lambda!101861 lambda!101858)))

(declare-fun bs!505511 () Bool)

(assert (= bs!505511 (and d!806910 d!806764)))

(assert (=> bs!505511 (= lambda!101861 lambda!101851)))

(declare-fun bs!505512 () Bool)

(assert (= bs!505512 (and d!806910 d!806788)))

(assert (=> bs!505512 (= lambda!101861 lambda!101854)))

(declare-fun bs!505513 () Bool)

(assert (= bs!505513 (and d!806910 d!806622)))

(assert (=> bs!505513 (= lambda!101861 lambda!101829)))

(declare-fun bs!505514 () Bool)

(assert (= bs!505514 (and d!806910 d!806694)))

(assert (=> bs!505514 (= lambda!101861 lambda!101839)))

(declare-fun bs!505515 () Bool)

(assert (= bs!505515 (and d!806910 d!806908)))

(assert (=> bs!505515 (= lambda!101861 lambda!101860)))

(declare-fun bs!505516 () Bool)

(assert (= bs!505516 (and d!806910 d!806770)))

(assert (=> bs!505516 (= lambda!101861 lambda!101852)))

(declare-fun bs!505517 () Bool)

(assert (= bs!505517 (and d!806910 d!806848)))

(assert (=> bs!505517 (= lambda!101861 lambda!101859)))

(declare-fun bs!505518 () Bool)

(assert (= bs!505518 (and d!806910 d!806844)))

(assert (=> bs!505518 (= lambda!101861 lambda!101857)))

(declare-fun bs!505519 () Bool)

(assert (= bs!505519 (and d!806910 d!806762)))

(assert (=> bs!505519 (= lambda!101861 lambda!101850)))

(declare-fun bs!505520 () Bool)

(assert (= bs!505520 (and d!806910 d!806784)))

(assert (=> bs!505520 (= lambda!101861 lambda!101853)))

(assert (=> d!806910 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 mapDefault!17381)))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapDefault!17381)))) lambda!101861))))

(declare-fun bs!505521 () Bool)

(assert (= bs!505521 d!806910))

(declare-fun m!3202957 () Bool)

(assert (=> bs!505521 m!3202957))

(assert (=> b!2775277 d!806910))

(declare-fun d!806912 () Bool)

(assert (not d!806912))

(assert (=> b!2775106 d!806912))

(declare-fun bs!505522 () Bool)

(declare-fun d!806914 () Bool)

(assert (= bs!505522 (and d!806914 d!806686)))

(declare-fun lambda!101862 () Int)

(assert (=> bs!505522 (= lambda!101862 lambda!101837)))

(declare-fun bs!505523 () Bool)

(assert (= bs!505523 (and d!806914 d!806910)))

(assert (=> bs!505523 (= lambda!101862 lambda!101861)))

(declare-fun bs!505524 () Bool)

(assert (= bs!505524 (and d!806914 d!806578)))

(assert (=> bs!505524 (= lambda!101862 lambda!101817)))

(declare-fun bs!505525 () Bool)

(assert (= bs!505525 (and d!806914 d!806846)))

(assert (=> bs!505525 (= lambda!101862 lambda!101858)))

(declare-fun bs!505526 () Bool)

(assert (= bs!505526 (and d!806914 d!806764)))

(assert (=> bs!505526 (= lambda!101862 lambda!101851)))

(declare-fun bs!505527 () Bool)

(assert (= bs!505527 (and d!806914 d!806788)))

(assert (=> bs!505527 (= lambda!101862 lambda!101854)))

(declare-fun bs!505528 () Bool)

(assert (= bs!505528 (and d!806914 d!806622)))

(assert (=> bs!505528 (= lambda!101862 lambda!101829)))

(declare-fun bs!505529 () Bool)

(assert (= bs!505529 (and d!806914 d!806694)))

(assert (=> bs!505529 (= lambda!101862 lambda!101839)))

(declare-fun bs!505530 () Bool)

(assert (= bs!505530 (and d!806914 d!806908)))

(assert (=> bs!505530 (= lambda!101862 lambda!101860)))

(declare-fun bs!505531 () Bool)

(assert (= bs!505531 (and d!806914 d!806770)))

(assert (=> bs!505531 (= lambda!101862 lambda!101852)))

(declare-fun bs!505532 () Bool)

(assert (= bs!505532 (and d!806914 d!806848)))

(assert (=> bs!505532 (= lambda!101862 lambda!101859)))

(declare-fun bs!505533 () Bool)

(assert (= bs!505533 (and d!806914 d!806844)))

(assert (=> bs!505533 (= lambda!101862 lambda!101857)))

(declare-fun bs!505534 () Bool)

(assert (= bs!505534 (and d!806914 d!806762)))

(assert (=> bs!505534 (= lambda!101862 lambda!101850)))

(declare-fun bs!505535 () Bool)

(assert (= bs!505535 (and d!806914 d!806784)))

(assert (=> bs!505535 (= lambda!101862 lambda!101853)))

(assert (=> d!806914 (= (inv!43564 setElem!23043) (forall!6632 (exprs!2821 setElem!23043) lambda!101862))))

(declare-fun bs!505536 () Bool)

(assert (= bs!505536 d!806914))

(declare-fun m!3202959 () Bool)

(assert (=> bs!505536 m!3202959))

(assert (=> setNonEmpty!23043 d!806914))

(declare-fun d!806916 () Bool)

(declare-fun c!450757 () Bool)

(assert (=> d!806916 (= c!450757 ((_ is Nil!32072) lt!989665))))

(declare-fun e!1750811 () (InoxSet C!16364))

(assert (=> d!806916 (= (content!4508 lt!989665) e!1750811)))

(declare-fun b!2775847 () Bool)

(assert (=> b!2775847 (= e!1750811 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775848 () Bool)

(assert (=> b!2775848 (= e!1750811 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989665) true) (content!4508 (t!228300 lt!989665))))))

(assert (= (and d!806916 c!450757) b!2775847))

(assert (= (and d!806916 (not c!450757)) b!2775848))

(declare-fun m!3202961 () Bool)

(assert (=> b!2775848 m!3202961))

(declare-fun m!3202963 () Bool)

(assert (=> b!2775848 m!3202963))

(assert (=> d!806482 d!806916))

(declare-fun d!806918 () Bool)

(declare-fun c!450758 () Bool)

(assert (=> d!806918 (= c!450758 ((_ is Nil!32072) (list!12096 (_1!19066 lt!989480))))))

(declare-fun e!1750812 () (InoxSet C!16364))

(assert (=> d!806918 (= (content!4508 (list!12096 (_1!19066 lt!989480))) e!1750812)))

(declare-fun b!2775849 () Bool)

(assert (=> b!2775849 (= e!1750812 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775850 () Bool)

(assert (=> b!2775850 (= e!1750812 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (list!12096 (_1!19066 lt!989480))) true) (content!4508 (t!228300 (list!12096 (_1!19066 lt!989480))))))))

(assert (= (and d!806918 c!450758) b!2775849))

(assert (= (and d!806918 (not c!450758)) b!2775850))

(declare-fun m!3202965 () Bool)

(assert (=> b!2775850 m!3202965))

(declare-fun m!3202967 () Bool)

(assert (=> b!2775850 m!3202967))

(assert (=> d!806482 d!806918))

(declare-fun d!806920 () Bool)

(declare-fun c!450759 () Bool)

(assert (=> d!806920 (= c!450759 ((_ is Nil!32072) (list!12096 (_2!19066 lt!989480))))))

(declare-fun e!1750813 () (InoxSet C!16364))

(assert (=> d!806920 (= (content!4508 (list!12096 (_2!19066 lt!989480))) e!1750813)))

(declare-fun b!2775851 () Bool)

(assert (=> b!2775851 (= e!1750813 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2775852 () Bool)

(assert (=> b!2775852 (= e!1750813 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (list!12096 (_2!19066 lt!989480))) true) (content!4508 (t!228300 (list!12096 (_2!19066 lt!989480))))))))

(assert (= (and d!806920 c!450759) b!2775851))

(assert (= (and d!806920 (not c!450759)) b!2775852))

(declare-fun m!3202969 () Bool)

(assert (=> b!2775852 m!3202969))

(declare-fun m!3202971 () Bool)

(assert (=> b!2775852 m!3202971))

(assert (=> d!806482 d!806920))

(declare-fun d!806922 () Bool)

(declare-fun lt!990205 () Int)

(assert (=> d!806922 (>= lt!990205 0)))

(declare-fun e!1750814 () Int)

(assert (=> d!806922 (= lt!990205 e!1750814)))

(declare-fun c!450760 () Bool)

(assert (=> d!806922 (= c!450760 ((_ is Nil!32072) lt!989920))))

(assert (=> d!806922 (= (size!24869 lt!989920) lt!990205)))

(declare-fun b!2775853 () Bool)

(assert (=> b!2775853 (= e!1750814 0)))

(declare-fun b!2775854 () Bool)

(assert (=> b!2775854 (= e!1750814 (+ 1 (size!24869 (t!228300 lt!989920))))))

(assert (= (and d!806922 c!450760) b!2775853))

(assert (= (and d!806922 (not c!450760)) b!2775854))

(declare-fun m!3202973 () Bool)

(assert (=> b!2775854 m!3202973))

(assert (=> b!2775210 d!806922))

(declare-fun d!806924 () Bool)

(declare-fun lt!990206 () Int)

(assert (=> d!806924 (>= lt!990206 0)))

(declare-fun e!1750815 () Int)

(assert (=> d!806924 (= lt!990206 e!1750815)))

(declare-fun c!450761 () Bool)

(assert (=> d!806924 (= c!450761 ((_ is Nil!32072) lt!989491))))

(assert (=> d!806924 (= (size!24869 lt!989491) lt!990206)))

(declare-fun b!2775855 () Bool)

(assert (=> b!2775855 (= e!1750815 0)))

(declare-fun b!2775856 () Bool)

(assert (=> b!2775856 (= e!1750815 (+ 1 (size!24869 (t!228300 lt!989491))))))

(assert (= (and d!806924 c!450761) b!2775855))

(assert (= (and d!806924 (not c!450761)) b!2775856))

(declare-fun m!3202975 () Bool)

(assert (=> b!2775856 m!3202975))

(assert (=> b!2775210 d!806924))

(declare-fun d!806926 () Bool)

(declare-fun lt!990207 () Int)

(assert (=> d!806926 (>= lt!990207 0)))

(declare-fun e!1750816 () Int)

(assert (=> d!806926 (= lt!990207 e!1750816)))

(declare-fun c!450762 () Bool)

(assert (=> d!806926 (= c!450762 ((_ is Nil!32072) lt!989479))))

(assert (=> d!806926 (= (size!24869 lt!989479) lt!990207)))

(declare-fun b!2775857 () Bool)

(assert (=> b!2775857 (= e!1750816 0)))

(declare-fun b!2775858 () Bool)

(assert (=> b!2775858 (= e!1750816 (+ 1 (size!24869 (t!228300 lt!989479))))))

(assert (= (and d!806926 c!450762) b!2775857))

(assert (= (and d!806926 (not c!450762)) b!2775858))

(declare-fun m!3202977 () Bool)

(assert (=> b!2775858 m!3202977))

(assert (=> b!2775210 d!806926))

(declare-fun b!2775860 () Bool)

(declare-fun res!1159849 () Bool)

(declare-fun e!1750819 () Bool)

(assert (=> b!2775860 (=> (not res!1159849) (not e!1750819))))

(assert (=> b!2775860 (= res!1159849 (= (head!6152 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)))) (head!6152 (tail!4390 lt!989496))))))

(declare-fun b!2775859 () Bool)

(declare-fun e!1750818 () Bool)

(assert (=> b!2775859 (= e!1750818 e!1750819)))

(declare-fun res!1159850 () Bool)

(assert (=> b!2775859 (=> (not res!1159850) (not e!1750819))))

(assert (=> b!2775859 (= res!1159850 (not ((_ is Nil!32072) (tail!4390 lt!989496))))))

(declare-fun d!806928 () Bool)

(declare-fun e!1750817 () Bool)

(assert (=> d!806928 e!1750817))

(declare-fun res!1159851 () Bool)

(assert (=> d!806928 (=> res!1159851 e!1750817)))

(declare-fun lt!990208 () Bool)

(assert (=> d!806928 (= res!1159851 (not lt!990208))))

(assert (=> d!806928 (= lt!990208 e!1750818)))

(declare-fun res!1159848 () Bool)

(assert (=> d!806928 (=> res!1159848 e!1750818)))

(assert (=> d!806928 (= res!1159848 ((_ is Nil!32072) (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)))))))

(assert (=> d!806928 (= (isPrefix!2557 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) (tail!4390 lt!989496)) lt!990208)))

(declare-fun b!2775861 () Bool)

(assert (=> b!2775861 (= e!1750819 (isPrefix!2557 (tail!4390 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072)))) (tail!4390 (tail!4390 lt!989496))))))

(declare-fun b!2775862 () Bool)

(assert (=> b!2775862 (= e!1750817 (>= (size!24869 (tail!4390 lt!989496)) (size!24869 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))))

(assert (= (and d!806928 (not res!1159848)) b!2775859))

(assert (= (and b!2775859 res!1159850) b!2775860))

(assert (= (and b!2775860 res!1159849) b!2775861))

(assert (= (and d!806928 (not res!1159851)) b!2775862))

(assert (=> b!2775860 m!3201789))

(declare-fun m!3202979 () Bool)

(assert (=> b!2775860 m!3202979))

(assert (=> b!2775860 m!3201395))

(assert (=> b!2775860 m!3202775))

(assert (=> b!2775861 m!3201789))

(declare-fun m!3202981 () Bool)

(assert (=> b!2775861 m!3202981))

(assert (=> b!2775861 m!3201395))

(assert (=> b!2775861 m!3202777))

(assert (=> b!2775861 m!3202981))

(assert (=> b!2775861 m!3202777))

(declare-fun m!3202983 () Bool)

(assert (=> b!2775861 m!3202983))

(assert (=> b!2775862 m!3201395))

(assert (=> b!2775862 m!3202781))

(assert (=> b!2775862 m!3201789))

(declare-fun m!3202985 () Bool)

(assert (=> b!2775862 m!3202985))

(assert (=> b!2775115 d!806928))

(declare-fun d!806930 () Bool)

(assert (=> d!806930 (= (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) (t!228300 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))

(assert (=> b!2775115 d!806930))

(assert (=> b!2775115 d!806510))

(declare-fun b!2775863 () Bool)

(declare-fun e!1750823 () Int)

(assert (=> b!2775863 (= e!1750823 (+ 0 1))))

(declare-fun b!2775865 () Bool)

(declare-fun e!1750825 () List!32172)

(assert (=> b!2775865 (= e!1750825 (list!12096 input!5495))))

(declare-fun b!2775866 () Bool)

(declare-fun e!1750820 () Int)

(assert (=> b!2775866 (= e!1750820 0)))

(declare-fun bm!181629 () Bool)

(declare-fun call!181637 () List!32172)

(assert (=> bm!181629 (= call!181637 (tail!4390 call!181546))))

(declare-fun b!2775867 () Bool)

(declare-fun e!1750822 () Unit!46204)

(declare-fun Unit!46242 () Unit!46204)

(assert (=> b!2775867 (= e!1750822 Unit!46242)))

(declare-fun lt!990209 () List!32172)

(assert (=> b!2775867 (= lt!990209 (list!12096 input!5495))))

(declare-fun lt!990241 () List!32172)

(assert (=> b!2775867 (= lt!990241 (list!12096 input!5495))))

(declare-fun lt!990234 () Unit!46204)

(declare-fun call!181643 () Unit!46204)

(assert (=> b!2775867 (= lt!990234 call!181643)))

(declare-fun call!181638 () Bool)

(assert (=> b!2775867 call!181638))

(declare-fun lt!990219 () Unit!46204)

(assert (=> b!2775867 (= lt!990219 lt!990234)))

(declare-fun lt!990232 () List!32172)

(assert (=> b!2775867 (= lt!990232 (list!12096 input!5495))))

(declare-fun lt!990238 () Unit!46204)

(declare-fun call!181634 () Unit!46204)

(assert (=> b!2775867 (= lt!990238 call!181634)))

(assert (=> b!2775867 (= lt!990232 call!181549)))

(declare-fun lt!990242 () Unit!46204)

(assert (=> b!2775867 (= lt!990242 lt!990238)))

(assert (=> b!2775867 false))

(declare-fun b!2775868 () Bool)

(declare-fun e!1750821 () Int)

(declare-fun call!181636 () Int)

(assert (=> b!2775868 (= e!1750821 call!181636)))

(declare-fun bm!181630 () Bool)

(declare-fun call!181640 () List!32172)

(declare-fun call!181641 () C!16364)

(assert (=> bm!181630 (= call!181640 (++!7932 call!181549 (Cons!32072 call!181641 Nil!32072)))))

(declare-fun b!2775869 () Bool)

(declare-fun call!181642 () List!32172)

(assert (=> b!2775869 (= e!1750825 call!181642)))

(declare-fun b!2775870 () Bool)

(assert (=> b!2775870 (= e!1750823 0)))

(declare-fun b!2775871 () Bool)

(declare-fun c!450764 () Bool)

(declare-fun call!181635 () Bool)

(assert (=> b!2775871 (= c!450764 call!181635)))

(declare-fun lt!990211 () Unit!46204)

(declare-fun lt!990233 () Unit!46204)

(assert (=> b!2775871 (= lt!990211 lt!990233)))

(declare-fun lt!990240 () List!32172)

(assert (=> b!2775871 (= lt!990240 call!181549)))

(assert (=> b!2775871 (= lt!990233 call!181634)))

(assert (=> b!2775871 (= lt!990240 call!181642)))

(declare-fun lt!990224 () Unit!46204)

(declare-fun lt!990239 () Unit!46204)

(assert (=> b!2775871 (= lt!990224 lt!990239)))

(assert (=> b!2775871 call!181638))

(assert (=> b!2775871 (= lt!990239 call!181643)))

(declare-fun lt!990214 () List!32172)

(assert (=> b!2775871 (= lt!990214 call!181642)))

(declare-fun lt!990243 () List!32172)

(assert (=> b!2775871 (= lt!990243 call!181642)))

(declare-fun e!1750824 () Int)

(assert (=> b!2775871 (= e!1750824 e!1750823)))

(declare-fun bm!181631 () Bool)

(assert (=> bm!181631 (= call!181635 (nullableZipper!636 call!181548))))

(declare-fun bm!181632 () Bool)

(declare-fun c!450765 () Bool)

(declare-fun c!450766 () Bool)

(assert (=> bm!181632 (= c!450765 c!450766)))

(assert (=> bm!181632 (= call!181634 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450766 lt!990240 lt!990232) call!181549 e!1750825))))

(declare-fun bm!181633 () Bool)

(assert (=> bm!181633 (= call!181643 (lemmaIsPrefixRefl!1681 (ite c!450766 lt!990243 lt!990209) (ite c!450766 lt!990214 lt!990241)))))

(declare-fun bm!181634 () Bool)

(assert (=> bm!181634 (= call!181638 (isPrefix!2557 (ite c!450766 lt!990243 lt!990209) (ite c!450766 lt!990214 lt!990241)))))

(declare-fun bm!181635 () Bool)

(declare-fun lt!990210 () tuple2!32290)

(assert (=> bm!181635 (= call!181642 (list!12096 (ite c!450766 input!5495 (_2!19066 lt!990210))))))

(declare-fun b!2775872 () Bool)

(declare-fun lt!990250 () Int)

(assert (=> b!2775872 (= e!1750821 (ite (= lt!990250 0) (+ 0 1) lt!990250))))

(assert (=> b!2775872 (= lt!990250 call!181636)))

(declare-fun d!806932 () Bool)

(declare-fun lt!990228 () Int)

(assert (=> d!806932 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 call!181548 call!181549 (+ 0 1) call!181546 (list!12096 input!5495) lt!989489))) lt!990228)))

(assert (=> d!806932 (= lt!990228 e!1750820)))

(declare-fun c!450768 () Bool)

(assert (=> d!806932 (= c!450768 (lostCauseZipper!443 call!181548))))

(declare-fun lt!990249 () Unit!46204)

(declare-fun Unit!46243 () Unit!46204)

(assert (=> d!806932 (= lt!990249 Unit!46243)))

(assert (=> d!806932 (= (getSuffix!1239 (list!12096 input!5495) call!181549) call!181546)))

(declare-fun lt!990217 () Unit!46204)

(declare-fun lt!990227 () Unit!46204)

(assert (=> d!806932 (= lt!990217 lt!990227)))

(declare-fun lt!990223 () List!32172)

(assert (=> d!806932 (= call!181546 lt!990223)))

(assert (=> d!806932 (= lt!990227 (lemmaSamePrefixThenSameSuffix!1141 call!181549 call!181546 call!181549 lt!990223 (list!12096 input!5495)))))

(assert (=> d!806932 (= lt!990223 (getSuffix!1239 (list!12096 input!5495) call!181549))))

(declare-fun lt!990213 () Unit!46204)

(declare-fun lt!990230 () Unit!46204)

(assert (=> d!806932 (= lt!990213 lt!990230)))

(assert (=> d!806932 (isPrefix!2557 call!181549 (++!7932 call!181549 call!181546))))

(assert (=> d!806932 (= lt!990230 (lemmaConcatTwoListThenFirstIsPrefix!1667 call!181549 call!181546))))

(assert (=> d!806932 (= (++!7932 call!181549 call!181546) (list!12096 input!5495))))

(assert (=> d!806932 (= (findLongestMatchInnerZipperFast!52 call!181548 call!181549 (+ 0 1) call!181546 input!5495 lt!989489) lt!990228)))

(declare-fun b!2775864 () Bool)

(assert (=> b!2775864 (= e!1750820 e!1750824)))

(assert (=> b!2775864 (= c!450766 (= (+ 0 1) lt!989489))))

(declare-fun call!181639 () (InoxSet Context!4642))

(declare-fun bm!181636 () Bool)

(assert (=> bm!181636 (= call!181636 (findLongestMatchInnerZipperFast!52 call!181639 call!181640 (+ 0 1 1) call!181637 input!5495 lt!989489))))

(declare-fun bm!181637 () Bool)

(assert (=> bm!181637 (= call!181639 (derivationStepZipper!369 call!181548 call!181641))))

(declare-fun b!2775873 () Bool)

(declare-fun Unit!46244 () Unit!46204)

(assert (=> b!2775873 (= e!1750822 Unit!46244)))

(declare-fun bm!181638 () Bool)

(assert (=> bm!181638 (= call!181641 (apply!7512 input!5495 (+ 0 1)))))

(declare-fun b!2775874 () Bool)

(declare-fun c!450763 () Bool)

(assert (=> b!2775874 (= c!450763 call!181635)))

(declare-fun lt!990247 () Unit!46204)

(declare-fun lt!990229 () Unit!46204)

(assert (=> b!2775874 (= lt!990247 lt!990229)))

(declare-fun lt!990218 () List!32172)

(declare-fun lt!990221 () C!16364)

(declare-fun lt!990226 () List!32172)

(assert (=> b!2775874 (= (++!7932 (++!7932 call!181549 (Cons!32072 lt!990221 Nil!32072)) lt!990218) lt!990226)))

(assert (=> b!2775874 (= lt!990229 (lemmaMoveElementToOtherListKeepsConcatEq!873 call!181549 lt!990221 lt!990218 lt!990226))))

(assert (=> b!2775874 (= lt!990226 (list!12096 input!5495))))

(assert (=> b!2775874 (= lt!990218 (tail!4390 call!181546))))

(assert (=> b!2775874 (= lt!990221 (apply!7512 input!5495 (+ 0 1)))))

(declare-fun lt!990216 () Unit!46204)

(declare-fun lt!990222 () Unit!46204)

(assert (=> b!2775874 (= lt!990216 lt!990222)))

(declare-fun lt!990236 () List!32172)

(assert (=> b!2775874 (isPrefix!2557 (++!7932 call!181549 (Cons!32072 (head!6152 (getSuffix!1239 lt!990236 call!181549)) Nil!32072)) lt!990236)))

(assert (=> b!2775874 (= lt!990222 (lemmaAddHeadSuffixToPrefixStillPrefix!461 call!181549 lt!990236))))

(assert (=> b!2775874 (= lt!990236 (list!12096 input!5495))))

(declare-fun lt!990225 () Unit!46204)

(assert (=> b!2775874 (= lt!990225 e!1750822)))

(declare-fun c!450767 () Bool)

(assert (=> b!2775874 (= c!450767 (= (size!24869 call!181549) (size!24868 input!5495)))))

(declare-fun lt!990231 () Unit!46204)

(declare-fun lt!990235 () Unit!46204)

(assert (=> b!2775874 (= lt!990231 lt!990235)))

(declare-fun lt!990246 () List!32172)

(assert (=> b!2775874 (<= (size!24869 call!181549) (size!24869 lt!990246))))

(assert (=> b!2775874 (= lt!990235 (lemmaIsPrefixThenSmallerEqSize!264 call!181549 lt!990246))))

(assert (=> b!2775874 (= lt!990246 (list!12096 input!5495))))

(declare-fun lt!990215 () Unit!46204)

(declare-fun lt!990245 () Unit!46204)

(assert (=> b!2775874 (= lt!990215 lt!990245)))

(declare-fun lt!990212 () List!32172)

(assert (=> b!2775874 (= (head!6152 (drop!1710 lt!990212 (+ 0 1))) (apply!7513 lt!990212 (+ 0 1)))))

(assert (=> b!2775874 (= lt!990245 (lemmaDropApply!916 lt!990212 (+ 0 1)))))

(assert (=> b!2775874 (= lt!990212 (list!12096 input!5495))))

(declare-fun lt!990220 () Unit!46204)

(declare-fun lt!990248 () Unit!46204)

(assert (=> b!2775874 (= lt!990220 lt!990248)))

(declare-fun lt!990237 () List!32172)

(declare-fun lt!990244 () List!32172)

(assert (=> b!2775874 (and (= lt!990244 call!181549) (= lt!990237 call!181546))))

(assert (=> b!2775874 (= lt!990248 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!990244 lt!990237 call!181549 call!181546))))

(assert (=> b!2775874 (= lt!990237 call!181642)))

(assert (=> b!2775874 (= lt!990244 (list!12096 (_1!19066 lt!990210)))))

(assert (=> b!2775874 (= lt!990210 (splitAt!119 input!5495 (+ 0 1)))))

(assert (=> b!2775874 (= e!1750824 e!1750821)))

(assert (= (and d!806932 c!450768) b!2775866))

(assert (= (and d!806932 (not c!450768)) b!2775864))

(assert (= (and b!2775864 c!450766) b!2775871))

(assert (= (and b!2775864 (not c!450766)) b!2775874))

(assert (= (and b!2775871 c!450764) b!2775863))

(assert (= (and b!2775871 (not c!450764)) b!2775870))

(assert (= (and b!2775874 c!450767) b!2775867))

(assert (= (and b!2775874 (not c!450767)) b!2775873))

(assert (= (and b!2775874 c!450763) b!2775872))

(assert (= (and b!2775874 (not c!450763)) b!2775868))

(assert (= (or b!2775872 b!2775868) bm!181638))

(assert (= (or b!2775872 b!2775868) bm!181629))

(assert (= (or b!2775872 b!2775868) bm!181630))

(assert (= (or b!2775872 b!2775868) bm!181637))

(assert (= (or b!2775872 b!2775868) bm!181636))

(assert (= (or b!2775871 b!2775874) bm!181635))

(assert (= (or b!2775871 b!2775874) bm!181631))

(assert (= (or b!2775871 b!2775867) bm!181633))

(assert (= (or b!2775871 b!2775867) bm!181634))

(assert (= (or b!2775871 b!2775867) bm!181632))

(assert (= (and bm!181632 c!450765) b!2775869))

(assert (= (and bm!181632 (not c!450765)) b!2775865))

(declare-fun m!3202987 () Bool)

(assert (=> bm!181633 m!3202987))

(declare-fun m!3202989 () Bool)

(assert (=> bm!181637 m!3202989))

(declare-fun m!3202991 () Bool)

(assert (=> b!2775874 m!3202991))

(declare-fun m!3202993 () Bool)

(assert (=> b!2775874 m!3202993))

(declare-fun m!3202995 () Bool)

(assert (=> b!2775874 m!3202995))

(declare-fun m!3202997 () Bool)

(assert (=> b!2775874 m!3202997))

(declare-fun m!3202999 () Bool)

(assert (=> b!2775874 m!3202999))

(declare-fun m!3203001 () Bool)

(assert (=> b!2775874 m!3203001))

(declare-fun m!3203003 () Bool)

(assert (=> b!2775874 m!3203003))

(declare-fun m!3203005 () Bool)

(assert (=> b!2775874 m!3203005))

(declare-fun m!3203007 () Bool)

(assert (=> b!2775874 m!3203007))

(assert (=> b!2775874 m!3202995))

(declare-fun m!3203009 () Bool)

(assert (=> b!2775874 m!3203009))

(declare-fun m!3203011 () Bool)

(assert (=> b!2775874 m!3203011))

(declare-fun m!3203013 () Bool)

(assert (=> b!2775874 m!3203013))

(declare-fun m!3203015 () Bool)

(assert (=> b!2775874 m!3203015))

(assert (=> b!2775874 m!3201349))

(assert (=> b!2775874 m!3203001))

(declare-fun m!3203017 () Bool)

(assert (=> b!2775874 m!3203017))

(declare-fun m!3203019 () Bool)

(assert (=> b!2775874 m!3203019))

(declare-fun m!3203021 () Bool)

(assert (=> b!2775874 m!3203021))

(declare-fun m!3203023 () Bool)

(assert (=> b!2775874 m!3203023))

(assert (=> b!2775874 m!3203021))

(declare-fun m!3203025 () Bool)

(assert (=> b!2775874 m!3203025))

(assert (=> b!2775874 m!3201355))

(assert (=> b!2775874 m!3203013))

(declare-fun m!3203027 () Bool)

(assert (=> b!2775874 m!3203027))

(declare-fun m!3203029 () Bool)

(assert (=> b!2775874 m!3203029))

(assert (=> bm!181629 m!3202997))

(declare-fun m!3203031 () Bool)

(assert (=> bm!181632 m!3203031))

(assert (=> b!2775865 m!3201349))

(declare-fun m!3203033 () Bool)

(assert (=> bm!181634 m!3203033))

(declare-fun m!3203035 () Bool)

(assert (=> bm!181630 m!3203035))

(declare-fun m!3203037 () Bool)

(assert (=> bm!181635 m!3203037))

(assert (=> bm!181638 m!3203027))

(declare-fun m!3203039 () Bool)

(assert (=> bm!181631 m!3203039))

(declare-fun m!3203041 () Bool)

(assert (=> d!806932 m!3203041))

(declare-fun m!3203043 () Bool)

(assert (=> d!806932 m!3203043))

(declare-fun m!3203045 () Bool)

(assert (=> d!806932 m!3203045))

(assert (=> d!806932 m!3201349))

(declare-fun m!3203047 () Bool)

(assert (=> d!806932 m!3203047))

(assert (=> d!806932 m!3203041))

(declare-fun m!3203049 () Bool)

(assert (=> d!806932 m!3203049))

(assert (=> d!806932 m!3201349))

(declare-fun m!3203051 () Bool)

(assert (=> d!806932 m!3203051))

(assert (=> d!806932 m!3201349))

(declare-fun m!3203053 () Bool)

(assert (=> d!806932 m!3203053))

(declare-fun m!3203055 () Bool)

(assert (=> d!806932 m!3203055))

(assert (=> d!806932 m!3201349))

(assert (=> b!2775867 m!3201349))

(declare-fun m!3203057 () Bool)

(assert (=> bm!181636 m!3203057))

(assert (=> bm!181545 d!806932))

(declare-fun bs!505537 () Bool)

(declare-fun b!2775876 () Bool)

(assert (= bs!505537 (and b!2775876 b!2775450)))

(declare-fun lambda!101863 () Int)

(assert (=> bs!505537 (= lambda!101863 lambda!101835)))

(declare-fun d!806934 () Bool)

(declare-fun res!1159852 () Bool)

(declare-fun e!1750826 () Bool)

(assert (=> d!806934 (=> (not res!1159852) (not e!1750826))))

(assert (=> d!806934 (= res!1159852 (valid!2979 (cache!3863 cacheDown!939)))))

(assert (=> d!806934 (= (validCacheMapDown!400 (cache!3863 cacheDown!939)) e!1750826)))

(declare-fun b!2775875 () Bool)

(declare-fun res!1159853 () Bool)

(assert (=> b!2775875 (=> (not res!1159853) (not e!1750826))))

(assert (=> b!2775875 (= res!1159853 (invariantList!453 (toList!1843 (map!6972 (cache!3863 cacheDown!939)))))))

(assert (=> b!2775876 (= e!1750826 (forall!6635 (toList!1843 (map!6972 (cache!3863 cacheDown!939))) lambda!101863))))

(assert (= (and d!806934 res!1159852) b!2775875))

(assert (= (and b!2775875 res!1159853) b!2775876))

(declare-fun m!3203059 () Bool)

(assert (=> d!806934 m!3203059))

(declare-fun m!3203061 () Bool)

(assert (=> b!2775875 m!3203061))

(declare-fun m!3203063 () Bool)

(assert (=> b!2775875 m!3203063))

(assert (=> b!2775876 m!3203061))

(declare-fun m!3203065 () Bool)

(assert (=> b!2775876 m!3203065))

(assert (=> b!2775203 d!806934))

(declare-fun bs!505538 () Bool)

(declare-fun d!806936 () Bool)

(assert (= bs!505538 (and d!806936 d!806686)))

(declare-fun lambda!101864 () Int)

(assert (=> bs!505538 (= lambda!101864 lambda!101837)))

(declare-fun bs!505539 () Bool)

(assert (= bs!505539 (and d!806936 d!806910)))

(assert (=> bs!505539 (= lambda!101864 lambda!101861)))

(declare-fun bs!505540 () Bool)

(assert (= bs!505540 (and d!806936 d!806578)))

(assert (=> bs!505540 (= lambda!101864 lambda!101817)))

(declare-fun bs!505541 () Bool)

(assert (= bs!505541 (and d!806936 d!806914)))

(assert (=> bs!505541 (= lambda!101864 lambda!101862)))

(declare-fun bs!505542 () Bool)

(assert (= bs!505542 (and d!806936 d!806846)))

(assert (=> bs!505542 (= lambda!101864 lambda!101858)))

(declare-fun bs!505543 () Bool)

(assert (= bs!505543 (and d!806936 d!806764)))

(assert (=> bs!505543 (= lambda!101864 lambda!101851)))

(declare-fun bs!505544 () Bool)

(assert (= bs!505544 (and d!806936 d!806788)))

(assert (=> bs!505544 (= lambda!101864 lambda!101854)))

(declare-fun bs!505545 () Bool)

(assert (= bs!505545 (and d!806936 d!806622)))

(assert (=> bs!505545 (= lambda!101864 lambda!101829)))

(declare-fun bs!505546 () Bool)

(assert (= bs!505546 (and d!806936 d!806694)))

(assert (=> bs!505546 (= lambda!101864 lambda!101839)))

(declare-fun bs!505547 () Bool)

(assert (= bs!505547 (and d!806936 d!806908)))

(assert (=> bs!505547 (= lambda!101864 lambda!101860)))

(declare-fun bs!505548 () Bool)

(assert (= bs!505548 (and d!806936 d!806770)))

(assert (=> bs!505548 (= lambda!101864 lambda!101852)))

(declare-fun bs!505549 () Bool)

(assert (= bs!505549 (and d!806936 d!806848)))

(assert (=> bs!505549 (= lambda!101864 lambda!101859)))

(declare-fun bs!505550 () Bool)

(assert (= bs!505550 (and d!806936 d!806844)))

(assert (=> bs!505550 (= lambda!101864 lambda!101857)))

(declare-fun bs!505551 () Bool)

(assert (= bs!505551 (and d!806936 d!806762)))

(assert (=> bs!505551 (= lambda!101864 lambda!101850)))

(declare-fun bs!505552 () Bool)

(assert (= bs!505552 (and d!806936 d!806784)))

(assert (=> bs!505552 (= lambda!101864 lambda!101853)))

(assert (=> d!806936 (= (inv!43564 setElem!23055) (forall!6632 (exprs!2821 setElem!23055) lambda!101864))))

(declare-fun bs!505553 () Bool)

(assert (= bs!505553 d!806936))

(declare-fun m!3203067 () Bool)

(assert (=> bs!505553 m!3203067))

(assert (=> setNonEmpty!23055 d!806936))

(declare-fun d!806938 () Bool)

(declare-fun lt!990251 () Int)

(assert (=> d!806938 (>= lt!990251 0)))

(declare-fun e!1750827 () Int)

(assert (=> d!806938 (= lt!990251 e!1750827)))

(declare-fun c!450769 () Bool)

(assert (=> d!806938 (= c!450769 ((_ is Nil!32072) lt!989860))))

(assert (=> d!806938 (= (size!24869 lt!989860) lt!990251)))

(declare-fun b!2775877 () Bool)

(assert (=> b!2775877 (= e!1750827 0)))

(declare-fun b!2775878 () Bool)

(assert (=> b!2775878 (= e!1750827 (+ 1 (size!24869 (t!228300 lt!989860))))))

(assert (= (and d!806938 c!450769) b!2775877))

(assert (= (and d!806938 (not c!450769)) b!2775878))

(declare-fun m!3203069 () Bool)

(assert (=> b!2775878 m!3203069))

(assert (=> b!2775111 d!806938))

(assert (=> b!2775111 d!806514))

(declare-fun d!806940 () Bool)

(declare-fun lt!990252 () Int)

(assert (=> d!806940 (>= lt!990252 0)))

(declare-fun e!1750828 () Int)

(assert (=> d!806940 (= lt!990252 e!1750828)))

(declare-fun c!450770 () Bool)

(assert (=> d!806940 (= c!450770 ((_ is Nil!32072) (Cons!32072 lt!989475 Nil!32072)))))

(assert (=> d!806940 (= (size!24869 (Cons!32072 lt!989475 Nil!32072)) lt!990252)))

(declare-fun b!2775879 () Bool)

(assert (=> b!2775879 (= e!1750828 0)))

(declare-fun b!2775880 () Bool)

(assert (=> b!2775880 (= e!1750828 (+ 1 (size!24869 (t!228300 (Cons!32072 lt!989475 Nil!32072)))))))

(assert (= (and d!806940 c!450770) b!2775879))

(assert (= (and d!806940 (not c!450770)) b!2775880))

(declare-fun m!3203071 () Bool)

(assert (=> b!2775880 m!3203071))

(assert (=> b!2775111 d!806940))

(declare-fun d!806942 () Bool)

(assert (=> d!806942 (isPrefix!2557 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954))))

(declare-fun lt!990253 () Unit!46204)

(assert (=> d!806942 (= lt!990253 (choose!16274 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954)))))

(assert (=> d!806942 (= (lemmaIsPrefixRefl!1681 (ite c!450602 lt!989956 lt!989922) (ite c!450602 lt!989927 lt!989954)) lt!990253)))

(declare-fun bs!505554 () Bool)

(assert (= bs!505554 d!806942))

(assert (=> bs!505554 m!3202011))

(declare-fun m!3203073 () Bool)

(assert (=> bs!505554 m!3203073))

(assert (=> bm!181573 d!806942))

(declare-fun d!806944 () Bool)

(assert (=> d!806944 (= (valid!2976 (_2!19073 lt!989896)) (validCacheMapUp!369 (cache!3862 (_2!19073 lt!989896))))))

(declare-fun bs!505555 () Bool)

(assert (= bs!505555 d!806944))

(declare-fun m!3203075 () Bool)

(assert (=> bs!505555 m!3203075))

(assert (=> b!2775144 d!806944))

(declare-fun b!2775881 () Bool)

(declare-fun res!1159856 () Bool)

(declare-fun e!1750830 () Bool)

(assert (=> b!2775881 (=> (not res!1159856) (not e!1750830))))

(assert (=> b!2775881 (= res!1159856 (isBalanced!3044 (right!24748 (c!450499 (_2!19066 lt!989663)))))))

(declare-fun b!2775882 () Bool)

(declare-fun res!1159854 () Bool)

(assert (=> b!2775882 (=> (not res!1159854) (not e!1750830))))

(assert (=> b!2775882 (= res!1159854 (<= (- (height!1489 (left!24418 (c!450499 (_2!19066 lt!989663)))) (height!1489 (right!24748 (c!450499 (_2!19066 lt!989663))))) 1))))

(declare-fun b!2775883 () Bool)

(assert (=> b!2775883 (= e!1750830 (not (isEmpty!18099 (right!24748 (c!450499 (_2!19066 lt!989663))))))))

(declare-fun b!2775884 () Bool)

(declare-fun res!1159859 () Bool)

(assert (=> b!2775884 (=> (not res!1159859) (not e!1750830))))

(assert (=> b!2775884 (= res!1159859 (isBalanced!3044 (left!24418 (c!450499 (_2!19066 lt!989663)))))))

(declare-fun b!2775885 () Bool)

(declare-fun e!1750829 () Bool)

(assert (=> b!2775885 (= e!1750829 e!1750830)))

(declare-fun res!1159858 () Bool)

(assert (=> b!2775885 (=> (not res!1159858) (not e!1750830))))

(assert (=> b!2775885 (= res!1159858 (<= (- 1) (- (height!1489 (left!24418 (c!450499 (_2!19066 lt!989663)))) (height!1489 (right!24748 (c!450499 (_2!19066 lt!989663)))))))))

(declare-fun b!2775886 () Bool)

(declare-fun res!1159855 () Bool)

(assert (=> b!2775886 (=> (not res!1159855) (not e!1750830))))

(assert (=> b!2775886 (= res!1159855 (not (isEmpty!18099 (left!24418 (c!450499 (_2!19066 lt!989663))))))))

(declare-fun d!806946 () Bool)

(declare-fun res!1159857 () Bool)

(assert (=> d!806946 (=> res!1159857 e!1750829)))

(assert (=> d!806946 (= res!1159857 (not ((_ is Node!9981) (c!450499 (_2!19066 lt!989663)))))))

(assert (=> d!806946 (= (isBalanced!3044 (c!450499 (_2!19066 lt!989663))) e!1750829)))

(assert (= (and d!806946 (not res!1159857)) b!2775885))

(assert (= (and b!2775885 res!1159858) b!2775882))

(assert (= (and b!2775882 res!1159854) b!2775884))

(assert (= (and b!2775884 res!1159859) b!2775881))

(assert (= (and b!2775881 res!1159856) b!2775886))

(assert (= (and b!2775886 res!1159855) b!2775883))

(declare-fun m!3203077 () Bool)

(assert (=> b!2775882 m!3203077))

(declare-fun m!3203079 () Bool)

(assert (=> b!2775882 m!3203079))

(declare-fun m!3203081 () Bool)

(assert (=> b!2775886 m!3203081))

(assert (=> b!2775885 m!3203077))

(assert (=> b!2775885 m!3203079))

(declare-fun m!3203083 () Bool)

(assert (=> b!2775881 m!3203083))

(declare-fun m!3203085 () Bool)

(assert (=> b!2775884 m!3203085))

(declare-fun m!3203087 () Bool)

(assert (=> b!2775883 m!3203087))

(assert (=> b!2775029 d!806946))

(assert (=> b!2775213 d!806518))

(declare-fun d!806948 () Bool)

(declare-fun e!1750831 () Bool)

(assert (=> d!806948 e!1750831))

(declare-fun res!1159860 () Bool)

(assert (=> d!806948 (=> (not res!1159860) (not e!1750831))))

(declare-fun lt!990254 () List!32172)

(assert (=> d!806948 (= res!1159860 (= (content!4508 lt!990254) ((_ map or) (content!4508 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072))) (content!4508 lt!989479))))))

(declare-fun e!1750832 () List!32172)

(assert (=> d!806948 (= lt!990254 e!1750832)))

(declare-fun c!450771 () Bool)

(assert (=> d!806948 (= c!450771 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072))))))

(assert (=> d!806948 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)) lt!989479) lt!990254)))

(declare-fun b!2775890 () Bool)

(assert (=> b!2775890 (= e!1750831 (or (not (= lt!989479 Nil!32072)) (= lt!990254 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)))))))

(declare-fun b!2775888 () Bool)

(assert (=> b!2775888 (= e!1750832 (Cons!32072 (h!37492 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072))) (++!7932 (t!228300 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072))) lt!989479)))))

(declare-fun b!2775887 () Bool)

(assert (=> b!2775887 (= e!1750832 lt!989479)))

(declare-fun b!2775889 () Bool)

(declare-fun res!1159861 () Bool)

(assert (=> b!2775889 (=> (not res!1159861) (not e!1750831))))

(assert (=> b!2775889 (= res!1159861 (= (size!24869 lt!990254) (+ (size!24869 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072))) (size!24869 lt!989479))))))

(assert (= (and d!806948 c!450771) b!2775887))

(assert (= (and d!806948 (not c!450771)) b!2775888))

(assert (= (and d!806948 res!1159860) b!2775889))

(assert (= (and b!2775889 res!1159861) b!2775890))

(declare-fun m!3203089 () Bool)

(assert (=> d!806948 m!3203089))

(assert (=> d!806948 m!3201419))

(declare-fun m!3203091 () Bool)

(assert (=> d!806948 m!3203091))

(assert (=> d!806948 m!3201961))

(declare-fun m!3203093 () Bool)

(assert (=> b!2775888 m!3203093))

(declare-fun m!3203095 () Bool)

(assert (=> b!2775889 m!3203095))

(assert (=> b!2775889 m!3201419))

(declare-fun m!3203097 () Bool)

(assert (=> b!2775889 m!3203097))

(assert (=> b!2775889 m!3201967))

(assert (=> d!806580 d!806948))

(assert (=> d!806580 d!806586))

(declare-fun d!806950 () Bool)

(assert (=> d!806950 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989503 Nil!32072)) lt!989479) lt!989496)))

(assert (=> d!806950 true))

(declare-fun _$68!662 () Unit!46204)

(assert (=> d!806950 (= (choose!16277 Nil!32072 lt!989503 lt!989479 lt!989496) _$68!662)))

(declare-fun bs!505556 () Bool)

(assert (= bs!505556 d!806950))

(assert (=> bs!505556 m!3201419))

(assert (=> bs!505556 m!3201419))

(assert (=> bs!505556 m!3201933))

(assert (=> d!806580 d!806950))

(declare-fun d!806952 () Bool)

(declare-fun e!1750833 () Bool)

(assert (=> d!806952 e!1750833))

(declare-fun res!1159862 () Bool)

(assert (=> d!806952 (=> (not res!1159862) (not e!1750833))))

(declare-fun lt!990255 () List!32172)

(assert (=> d!806952 (= res!1159862 (= (content!4508 lt!990255) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989503 lt!989479)))))))

(declare-fun e!1750834 () List!32172)

(assert (=> d!806952 (= lt!990255 e!1750834)))

(declare-fun c!450772 () Bool)

(assert (=> d!806952 (= c!450772 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806952 (= (++!7932 Nil!32072 (Cons!32072 lt!989503 lt!989479)) lt!990255)))

(declare-fun b!2775894 () Bool)

(assert (=> b!2775894 (= e!1750833 (or (not (= (Cons!32072 lt!989503 lt!989479) Nil!32072)) (= lt!990255 Nil!32072)))))

(declare-fun b!2775892 () Bool)

(assert (=> b!2775892 (= e!1750834 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989503 lt!989479))))))

(declare-fun b!2775891 () Bool)

(assert (=> b!2775891 (= e!1750834 (Cons!32072 lt!989503 lt!989479))))

(declare-fun b!2775893 () Bool)

(declare-fun res!1159863 () Bool)

(assert (=> b!2775893 (=> (not res!1159863) (not e!1750833))))

(assert (=> b!2775893 (= res!1159863 (= (size!24869 lt!990255) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989503 lt!989479)))))))

(assert (= (and d!806952 c!450772) b!2775891))

(assert (= (and d!806952 (not c!450772)) b!2775892))

(assert (= (and d!806952 res!1159862) b!2775893))

(assert (= (and b!2775893 res!1159863) b!2775894))

(declare-fun m!3203099 () Bool)

(assert (=> d!806952 m!3203099))

(assert (=> d!806952 m!3201467))

(declare-fun m!3203101 () Bool)

(assert (=> d!806952 m!3203101))

(declare-fun m!3203103 () Bool)

(assert (=> b!2775892 m!3203103))

(declare-fun m!3203105 () Bool)

(assert (=> b!2775893 m!3203105))

(assert (=> b!2775893 m!3201399))

(declare-fun m!3203107 () Bool)

(assert (=> b!2775893 m!3203107))

(assert (=> d!806580 d!806952))

(assert (=> bm!181517 d!806592))

(declare-fun d!806954 () Bool)

(declare-fun e!1750835 () Bool)

(assert (=> d!806954 e!1750835))

(declare-fun res!1159864 () Bool)

(assert (=> d!806954 (=> (not res!1159864) (not e!1750835))))

(declare-fun lt!990256 () List!32172)

(assert (=> d!806954 (= res!1159864 (= (content!4508 lt!990256) ((_ map or) (content!4508 (t!228300 (list!12096 (_1!19066 lt!989480)))) (content!4508 (list!12096 (_2!19066 lt!989480))))))))

(declare-fun e!1750836 () List!32172)

(assert (=> d!806954 (= lt!990256 e!1750836)))

(declare-fun c!450773 () Bool)

(assert (=> d!806954 (= c!450773 ((_ is Nil!32072) (t!228300 (list!12096 (_1!19066 lt!989480)))))))

(assert (=> d!806954 (= (++!7932 (t!228300 (list!12096 (_1!19066 lt!989480))) (list!12096 (_2!19066 lt!989480))) lt!990256)))

(declare-fun b!2775898 () Bool)

(assert (=> b!2775898 (= e!1750835 (or (not (= (list!12096 (_2!19066 lt!989480)) Nil!32072)) (= lt!990256 (t!228300 (list!12096 (_1!19066 lt!989480))))))))

(declare-fun b!2775896 () Bool)

(assert (=> b!2775896 (= e!1750836 (Cons!32072 (h!37492 (t!228300 (list!12096 (_1!19066 lt!989480)))) (++!7932 (t!228300 (t!228300 (list!12096 (_1!19066 lt!989480)))) (list!12096 (_2!19066 lt!989480)))))))

(declare-fun b!2775895 () Bool)

(assert (=> b!2775895 (= e!1750836 (list!12096 (_2!19066 lt!989480)))))

(declare-fun b!2775897 () Bool)

(declare-fun res!1159865 () Bool)

(assert (=> b!2775897 (=> (not res!1159865) (not e!1750835))))

(assert (=> b!2775897 (= res!1159865 (= (size!24869 lt!990256) (+ (size!24869 (t!228300 (list!12096 (_1!19066 lt!989480)))) (size!24869 (list!12096 (_2!19066 lt!989480))))))))

(assert (= (and d!806954 c!450773) b!2775895))

(assert (= (and d!806954 (not c!450773)) b!2775896))

(assert (= (and d!806954 res!1159864) b!2775897))

(assert (= (and b!2775897 res!1159865) b!2775898))

(declare-fun m!3203109 () Bool)

(assert (=> d!806954 m!3203109))

(assert (=> d!806954 m!3202967))

(assert (=> d!806954 m!3201345))

(assert (=> d!806954 m!3201577))

(assert (=> b!2775896 m!3201345))

(declare-fun m!3203111 () Bool)

(assert (=> b!2775896 m!3203111))

(declare-fun m!3203113 () Bool)

(assert (=> b!2775897 m!3203113))

(assert (=> b!2775897 m!3202797))

(assert (=> b!2775897 m!3201345))

(assert (=> b!2775897 m!3201585))

(assert (=> b!2775032 d!806954))

(assert (=> b!2775036 d!806486))

(assert (=> b!2774960 d!806486))

(declare-fun d!806956 () Bool)

(assert (=> d!806956 (= (list!12096 (ite c!450559 input!5495 (_2!19066 lt!989803))) (list!12097 (c!450499 (ite c!450559 input!5495 (_2!19066 lt!989803)))))))

(declare-fun bs!505557 () Bool)

(assert (= bs!505557 d!806956))

(declare-fun m!3203115 () Bool)

(assert (=> bs!505557 m!3203115))

(assert (=> bm!181554 d!806956))

(assert (=> bm!181578 d!806874))

(declare-fun d!806958 () Bool)

(declare-fun lt!990257 () Int)

(assert (=> d!806958 (>= lt!990257 0)))

(declare-fun e!1750837 () Int)

(assert (=> d!806958 (= lt!990257 e!1750837)))

(declare-fun c!450774 () Bool)

(assert (=> d!806958 (= c!450774 ((_ is Nil!32072) lt!989906))))

(assert (=> d!806958 (= (size!24869 lt!989906) lt!990257)))

(declare-fun b!2775899 () Bool)

(assert (=> b!2775899 (= e!1750837 0)))

(declare-fun b!2775900 () Bool)

(assert (=> b!2775900 (= e!1750837 (+ 1 (size!24869 (t!228300 lt!989906))))))

(assert (= (and d!806958 c!450774) b!2775899))

(assert (= (and d!806958 (not c!450774)) b!2775900))

(declare-fun m!3203117 () Bool)

(assert (=> b!2775900 m!3203117))

(assert (=> b!2775174 d!806958))

(declare-fun d!806960 () Bool)

(declare-fun e!1750838 () Bool)

(assert (=> d!806960 e!1750838))

(declare-fun res!1159866 () Bool)

(assert (=> d!806960 (=> (not res!1159866) (not e!1750838))))

(declare-fun lt!990258 () List!32172)

(assert (=> d!806960 (= res!1159866 (= (content!4508 lt!990258) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 call!181550 Nil!32072)))))))

(declare-fun e!1750839 () List!32172)

(assert (=> d!806960 (= lt!990258 e!1750839)))

(declare-fun c!450775 () Bool)

(assert (=> d!806960 (= c!450775 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!806960 (= (++!7932 Nil!32072 (Cons!32072 call!181550 Nil!32072)) lt!990258)))

(declare-fun b!2775904 () Bool)

(assert (=> b!2775904 (= e!1750838 (or (not (= (Cons!32072 call!181550 Nil!32072) Nil!32072)) (= lt!990258 Nil!32072)))))

(declare-fun b!2775902 () Bool)

(assert (=> b!2775902 (= e!1750839 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 call!181550 Nil!32072))))))

(declare-fun b!2775901 () Bool)

(assert (=> b!2775901 (= e!1750839 (Cons!32072 call!181550 Nil!32072))))

(declare-fun b!2775903 () Bool)

(declare-fun res!1159867 () Bool)

(assert (=> b!2775903 (=> (not res!1159867) (not e!1750838))))

(assert (=> b!2775903 (= res!1159867 (= (size!24869 lt!990258) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 call!181550 Nil!32072)))))))

(assert (= (and d!806960 c!450775) b!2775901))

(assert (= (and d!806960 (not c!450775)) b!2775902))

(assert (= (and d!806960 res!1159866) b!2775903))

(assert (= (and b!2775903 res!1159867) b!2775904))

(declare-fun m!3203119 () Bool)

(assert (=> d!806960 m!3203119))

(assert (=> d!806960 m!3201467))

(declare-fun m!3203121 () Bool)

(assert (=> d!806960 m!3203121))

(declare-fun m!3203123 () Bool)

(assert (=> b!2775902 m!3203123))

(declare-fun m!3203125 () Bool)

(assert (=> b!2775903 m!3203125))

(assert (=> b!2775903 m!3201399))

(declare-fun m!3203127 () Bool)

(assert (=> b!2775903 m!3203127))

(assert (=> bm!181539 d!806960))

(declare-fun bs!505558 () Bool)

(declare-fun b!2775906 () Bool)

(assert (= bs!505558 (and b!2775906 b!2775336)))

(declare-fun lambda!101865 () Int)

(assert (=> bs!505558 (= lambda!101865 lambda!101824)))

(declare-fun bs!505559 () Bool)

(assert (= bs!505559 (and b!2775906 b!2775608)))

(assert (=> bs!505559 (= lambda!101865 lambda!101855)))

(declare-fun d!806962 () Bool)

(declare-fun res!1159868 () Bool)

(declare-fun e!1750840 () Bool)

(assert (=> d!806962 (=> (not res!1159868) (not e!1750840))))

(assert (=> d!806962 (= res!1159868 (valid!2978 (cache!3862 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542)))))))

(assert (=> d!806962 (= (validCacheMapUp!369 (cache!3862 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542)))) e!1750840)))

(declare-fun b!2775905 () Bool)

(declare-fun res!1159869 () Bool)

(assert (=> b!2775905 (=> (not res!1159869) (not e!1750840))))

(assert (=> b!2775905 (= res!1159869 (invariantList!452 (toList!1842 (map!6971 (cache!3862 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542)))))))))

(assert (=> b!2775906 (= e!1750840 (forall!6633 (toList!1842 (map!6971 (cache!3862 (ite c!450487 (_2!19071 lt!989507) (_2!19071 lt!989542))))) lambda!101865))))

(assert (= (and d!806962 res!1159868) b!2775905))

(assert (= (and b!2775905 res!1159869) b!2775906))

(declare-fun m!3203129 () Bool)

(assert (=> d!806962 m!3203129))

(declare-fun m!3203131 () Bool)

(assert (=> b!2775905 m!3203131))

(declare-fun m!3203133 () Bool)

(assert (=> b!2775905 m!3203133))

(assert (=> b!2775906 m!3203131))

(declare-fun m!3203135 () Bool)

(assert (=> b!2775906 m!3203135))

(assert (=> d!806596 d!806962))

(declare-fun d!806964 () Bool)

(declare-fun lt!990259 () Int)

(assert (=> d!806964 (>= lt!990259 0)))

(declare-fun e!1750841 () Int)

(assert (=> d!806964 (= lt!990259 e!1750841)))

(declare-fun c!450776 () Bool)

(assert (=> d!806964 (= c!450776 ((_ is Nil!32072) (_1!19065 lt!989657)))))

(assert (=> d!806964 (= (size!24869 (_1!19065 lt!989657)) lt!990259)))

(declare-fun b!2775907 () Bool)

(assert (=> b!2775907 (= e!1750841 0)))

(declare-fun b!2775908 () Bool)

(assert (=> b!2775908 (= e!1750841 (+ 1 (size!24869 (t!228300 (_1!19065 lt!989657)))))))

(assert (= (and d!806964 c!450776) b!2775907))

(assert (= (and d!806964 (not c!450776)) b!2775908))

(declare-fun m!3203137 () Bool)

(assert (=> b!2775908 m!3203137))

(assert (=> b!2775013 d!806964))

(assert (=> b!2775013 d!806514))

(assert (=> d!806486 d!806458))

(declare-fun d!806966 () Bool)

(declare-fun lt!990260 () List!32172)

(assert (=> d!806966 (= (++!7932 Nil!32072 lt!990260) (list!12096 input!5495))))

(declare-fun e!1750842 () List!32172)

(assert (=> d!806966 (= lt!990260 e!1750842)))

(declare-fun c!450777 () Bool)

(assert (=> d!806966 (= c!450777 ((_ is Cons!32072) Nil!32072))))

(assert (=> d!806966 (>= (size!24869 (list!12096 input!5495)) (size!24869 Nil!32072))))

(assert (=> d!806966 (= (getSuffix!1239 (list!12096 input!5495) Nil!32072) lt!990260)))

(declare-fun b!2775909 () Bool)

(assert (=> b!2775909 (= e!1750842 (getSuffix!1239 (tail!4390 (list!12096 input!5495)) (t!228300 Nil!32072)))))

(declare-fun b!2775910 () Bool)

(assert (=> b!2775910 (= e!1750842 (list!12096 input!5495))))

(assert (= (and d!806966 c!450777) b!2775909))

(assert (= (and d!806966 (not c!450777)) b!2775910))

(declare-fun m!3203139 () Bool)

(assert (=> d!806966 m!3203139))

(assert (=> d!806966 m!3201349))

(assert (=> d!806966 m!3201649))

(assert (=> d!806966 m!3201399))

(assert (=> b!2775909 m!3201349))

(assert (=> b!2775909 m!3202254))

(assert (=> b!2775909 m!3202254))

(declare-fun m!3203141 () Bool)

(assert (=> b!2775909 m!3203141))

(assert (=> d!806486 d!806966))

(declare-fun d!806968 () Bool)

(declare-fun lt!990261 () Int)

(assert (=> d!806968 (>= lt!990261 0)))

(declare-fun e!1750843 () Int)

(assert (=> d!806968 (= lt!990261 e!1750843)))

(declare-fun c!450778 () Bool)

(assert (=> d!806968 (= c!450778 ((_ is Nil!32072) (_1!19065 (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 (list!12096 input!5495) lt!989489))))))

(assert (=> d!806968 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 (list!12096 input!5495) lt!989489))) lt!990261)))

(declare-fun b!2775911 () Bool)

(assert (=> b!2775911 (= e!1750843 0)))

(declare-fun b!2775912 () Bool)

(assert (=> b!2775912 (= e!1750843 (+ 1 (size!24869 (t!228300 (_1!19065 (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 (list!12096 input!5495) lt!989489))))))))

(assert (= (and d!806968 c!450778) b!2775911))

(assert (= (and d!806968 (not c!450778)) b!2775912))

(declare-fun m!3203143 () Bool)

(assert (=> b!2775912 m!3203143))

(assert (=> d!806486 d!806968))

(assert (=> d!806486 d!806464))

(assert (=> d!806486 d!806468))

(declare-fun d!806970 () Bool)

(assert (=> d!806970 (= lt!989496 lt!989765)))

(declare-fun lt!990262 () Unit!46204)

(assert (=> d!806970 (= lt!990262 (choose!16273 Nil!32072 lt!989496 Nil!32072 lt!989765 (list!12096 input!5495)))))

(assert (=> d!806970 (isPrefix!2557 Nil!32072 (list!12096 input!5495))))

(assert (=> d!806970 (= (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!989765 (list!12096 input!5495)) lt!990262)))

(declare-fun bs!505560 () Bool)

(assert (= bs!505560 d!806970))

(assert (=> bs!505560 m!3201349))

(declare-fun m!3203145 () Bool)

(assert (=> bs!505560 m!3203145))

(assert (=> bs!505560 m!3201349))

(declare-fun m!3203147 () Bool)

(assert (=> bs!505560 m!3203147))

(assert (=> d!806486 d!806970))

(assert (=> d!806486 d!806474))

(declare-fun b!2775913 () Bool)

(declare-fun e!1750851 () Unit!46204)

(declare-fun Unit!46245 () Unit!46204)

(assert (=> b!2775913 (= e!1750851 Unit!46245)))

(declare-fun lt!990283 () Unit!46204)

(declare-fun call!181649 () Unit!46204)

(assert (=> b!2775913 (= lt!990283 call!181649)))

(declare-fun call!181645 () Bool)

(assert (=> b!2775913 call!181645))

(declare-fun lt!990279 () Unit!46204)

(assert (=> b!2775913 (= lt!990279 lt!990283)))

(declare-fun lt!990288 () Unit!46204)

(declare-fun call!181648 () Unit!46204)

(assert (=> b!2775913 (= lt!990288 call!181648)))

(assert (=> b!2775913 (= (list!12096 input!5495) Nil!32072)))

(declare-fun lt!990272 () Unit!46204)

(assert (=> b!2775913 (= lt!990272 lt!990288)))

(assert (=> b!2775913 false))

(declare-fun d!806972 () Bool)

(declare-fun e!1750849 () Bool)

(assert (=> d!806972 e!1750849))

(declare-fun res!1159871 () Bool)

(assert (=> d!806972 (=> (not res!1159871) (not e!1750849))))

(declare-fun lt!990287 () tuple2!32288)

(assert (=> d!806972 (= res!1159871 (= (++!7932 (_1!19065 lt!990287) (_2!19065 lt!990287)) (list!12096 input!5495)))))

(declare-fun e!1750845 () tuple2!32288)

(assert (=> d!806972 (= lt!990287 e!1750845)))

(declare-fun c!450783 () Bool)

(assert (=> d!806972 (= c!450783 (lostCauseZipper!443 z!3597))))

(declare-fun lt!990275 () Unit!46204)

(declare-fun Unit!46246 () Unit!46204)

(assert (=> d!806972 (= lt!990275 Unit!46246)))

(assert (=> d!806972 (= (getSuffix!1239 (list!12096 input!5495) Nil!32072) lt!989496)))

(declare-fun lt!990274 () Unit!46204)

(declare-fun lt!990277 () Unit!46204)

(assert (=> d!806972 (= lt!990274 lt!990277)))

(declare-fun lt!990270 () List!32172)

(assert (=> d!806972 (= lt!989496 lt!990270)))

(assert (=> d!806972 (= lt!990277 (lemmaSamePrefixThenSameSuffix!1141 Nil!32072 lt!989496 Nil!32072 lt!990270 (list!12096 input!5495)))))

(assert (=> d!806972 (= lt!990270 (getSuffix!1239 (list!12096 input!5495) Nil!32072))))

(declare-fun lt!990271 () Unit!46204)

(declare-fun lt!990276 () Unit!46204)

(assert (=> d!806972 (= lt!990271 lt!990276)))

(assert (=> d!806972 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806972 (= lt!990276 (lemmaConcatTwoListThenFirstIsPrefix!1667 Nil!32072 lt!989496))))

(assert (=> d!806972 (= (++!7932 Nil!32072 lt!989496) (list!12096 input!5495))))

(assert (=> d!806972 (= (findLongestMatchInnerZipper!27 z!3597 Nil!32072 0 lt!989496 (list!12096 input!5495) lt!989489) lt!990287)))

(declare-fun bm!181639 () Bool)

(declare-fun call!181650 () C!16364)

(assert (=> bm!181639 (= call!181650 (head!6152 lt!989496))))

(declare-fun b!2775914 () Bool)

(declare-fun e!1750846 () tuple2!32288)

(declare-fun call!181644 () tuple2!32288)

(assert (=> b!2775914 (= e!1750846 call!181644)))

(declare-fun b!2775915 () Bool)

(declare-fun e!1750847 () Bool)

(assert (=> b!2775915 (= e!1750847 (>= (size!24869 (_1!19065 lt!990287)) (size!24869 Nil!32072)))))

(declare-fun b!2775916 () Bool)

(declare-fun c!450780 () Bool)

(declare-fun call!181646 () Bool)

(assert (=> b!2775916 (= c!450780 call!181646)))

(declare-fun lt!990280 () Unit!46204)

(declare-fun lt!990286 () Unit!46204)

(assert (=> b!2775916 (= lt!990280 lt!990286)))

(assert (=> b!2775916 (= (list!12096 input!5495) Nil!32072)))

(assert (=> b!2775916 (= lt!990286 call!181648)))

(declare-fun lt!990266 () Unit!46204)

(declare-fun lt!990273 () Unit!46204)

(assert (=> b!2775916 (= lt!990266 lt!990273)))

(assert (=> b!2775916 call!181645))

(assert (=> b!2775916 (= lt!990273 call!181649)))

(declare-fun e!1750844 () tuple2!32288)

(declare-fun e!1750850 () tuple2!32288)

(assert (=> b!2775916 (= e!1750844 e!1750850)))

(declare-fun b!2775917 () Bool)

(assert (=> b!2775917 (= e!1750850 (tuple2!32289 Nil!32072 Nil!32072))))

(declare-fun b!2775918 () Bool)

(assert (=> b!2775918 (= e!1750845 e!1750844)))

(declare-fun c!450781 () Bool)

(assert (=> b!2775918 (= c!450781 (= 0 lt!989489))))

(declare-fun b!2775919 () Bool)

(assert (=> b!2775919 (= e!1750849 e!1750847)))

(declare-fun res!1159870 () Bool)

(assert (=> b!2775919 (=> res!1159870 e!1750847)))

(assert (=> b!2775919 (= res!1159870 (isEmpty!18097 (_1!19065 lt!990287)))))

(declare-fun b!2775920 () Bool)

(declare-fun e!1750848 () tuple2!32288)

(assert (=> b!2775920 (= e!1750848 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun b!2775921 () Bool)

(declare-fun Unit!46247 () Unit!46204)

(assert (=> b!2775921 (= e!1750851 Unit!46247)))

(declare-fun bm!181640 () Bool)

(assert (=> bm!181640 (= call!181646 (nullableZipper!636 z!3597))))

(declare-fun b!2775922 () Bool)

(declare-fun c!450782 () Bool)

(assert (=> b!2775922 (= c!450782 call!181646)))

(declare-fun lt!990278 () Unit!46204)

(declare-fun lt!990281 () Unit!46204)

(assert (=> b!2775922 (= lt!990278 lt!990281)))

(declare-fun lt!990265 () C!16364)

(declare-fun lt!990267 () List!32172)

(assert (=> b!2775922 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!990265 Nil!32072)) lt!990267) (list!12096 input!5495))))

(assert (=> b!2775922 (= lt!990281 (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!990265 lt!990267 (list!12096 input!5495)))))

(assert (=> b!2775922 (= lt!990267 (tail!4390 lt!989496))))

(assert (=> b!2775922 (= lt!990265 (head!6152 lt!989496))))

(declare-fun lt!990284 () Unit!46204)

(declare-fun lt!990264 () Unit!46204)

(assert (=> b!2775922 (= lt!990284 lt!990264)))

(assert (=> b!2775922 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 (list!12096 input!5495) Nil!32072)) Nil!32072)) (list!12096 input!5495))))

(assert (=> b!2775922 (= lt!990264 (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 (list!12096 input!5495)))))

(declare-fun lt!990285 () List!32172)

(assert (=> b!2775922 (= lt!990285 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989496) Nil!32072)))))

(declare-fun lt!990268 () Unit!46204)

(assert (=> b!2775922 (= lt!990268 e!1750851)))

(declare-fun c!450779 () Bool)

(assert (=> b!2775922 (= c!450779 (= (size!24869 Nil!32072) (size!24869 (list!12096 input!5495))))))

(declare-fun lt!990269 () Unit!46204)

(declare-fun lt!990282 () Unit!46204)

(assert (=> b!2775922 (= lt!990269 lt!990282)))

(assert (=> b!2775922 (<= (size!24869 Nil!32072) (size!24869 (list!12096 input!5495)))))

(assert (=> b!2775922 (= lt!990282 (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 (list!12096 input!5495)))))

(assert (=> b!2775922 (= e!1750844 e!1750846)))

(declare-fun bm!181641 () Bool)

(declare-fun call!181651 () (InoxSet Context!4642))

(assert (=> bm!181641 (= call!181651 (derivationStepZipper!369 z!3597 call!181650))))

(declare-fun b!2775923 () Bool)

(assert (=> b!2775923 (= e!1750850 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun bm!181642 () Bool)

(assert (=> bm!181642 (= call!181649 (lemmaIsPrefixRefl!1681 (list!12096 input!5495) (list!12096 input!5495)))))

(declare-fun b!2775924 () Bool)

(declare-fun lt!990263 () tuple2!32288)

(assert (=> b!2775924 (= e!1750848 lt!990263)))

(declare-fun b!2775925 () Bool)

(assert (=> b!2775925 (= e!1750845 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun bm!181643 () Bool)

(declare-fun call!181647 () List!32172)

(assert (=> bm!181643 (= call!181644 (findLongestMatchInnerZipper!27 call!181651 lt!990285 (+ 0 1) call!181647 (list!12096 input!5495) lt!989489))))

(declare-fun bm!181644 () Bool)

(assert (=> bm!181644 (= call!181648 (lemmaIsPrefixSameLengthThenSameList!463 (list!12096 input!5495) Nil!32072 (list!12096 input!5495)))))

(declare-fun b!2775926 () Bool)

(assert (=> b!2775926 (= e!1750846 e!1750848)))

(assert (=> b!2775926 (= lt!990263 call!181644)))

(declare-fun c!450784 () Bool)

(assert (=> b!2775926 (= c!450784 (isEmpty!18097 (_1!19065 lt!990263)))))

(declare-fun bm!181645 () Bool)

(assert (=> bm!181645 (= call!181647 (tail!4390 lt!989496))))

(declare-fun bm!181646 () Bool)

(assert (=> bm!181646 (= call!181645 (isPrefix!2557 (list!12096 input!5495) (list!12096 input!5495)))))

(assert (= (and d!806972 c!450783) b!2775925))

(assert (= (and d!806972 (not c!450783)) b!2775918))

(assert (= (and b!2775918 c!450781) b!2775916))

(assert (= (and b!2775918 (not c!450781)) b!2775922))

(assert (= (and b!2775916 c!450780) b!2775917))

(assert (= (and b!2775916 (not c!450780)) b!2775923))

(assert (= (and b!2775922 c!450779) b!2775913))

(assert (= (and b!2775922 (not c!450779)) b!2775921))

(assert (= (and b!2775922 c!450782) b!2775926))

(assert (= (and b!2775922 (not c!450782)) b!2775914))

(assert (= (and b!2775926 c!450784) b!2775920))

(assert (= (and b!2775926 (not c!450784)) b!2775924))

(assert (= (or b!2775926 b!2775914) bm!181645))

(assert (= (or b!2775926 b!2775914) bm!181639))

(assert (= (or b!2775926 b!2775914) bm!181641))

(assert (= (or b!2775926 b!2775914) bm!181643))

(assert (= (or b!2775916 b!2775922) bm!181640))

(assert (= (or b!2775916 b!2775913) bm!181642))

(assert (= (or b!2775916 b!2775913) bm!181644))

(assert (= (or b!2775916 b!2775913) bm!181646))

(assert (= (and d!806972 res!1159871) b!2775919))

(assert (= (and b!2775919 (not res!1159870)) b!2775915))

(assert (=> b!2775922 m!3201349))

(declare-fun m!3203149 () Bool)

(assert (=> b!2775922 m!3203149))

(assert (=> b!2775922 m!3201531))

(assert (=> b!2775922 m!3201399))

(assert (=> b!2775922 m!3201449))

(declare-fun m!3203151 () Bool)

(assert (=> b!2775922 m!3203151))

(assert (=> b!2775922 m!3201349))

(declare-fun m!3203153 () Bool)

(assert (=> b!2775922 m!3203153))

(declare-fun m!3203155 () Bool)

(assert (=> b!2775922 m!3203155))

(assert (=> b!2775922 m!3201395))

(assert (=> b!2775922 m!3201349))

(assert (=> b!2775922 m!3201637))

(assert (=> b!2775922 m!3203155))

(assert (=> b!2775922 m!3201349))

(declare-fun m!3203157 () Bool)

(assert (=> b!2775922 m!3203157))

(assert (=> b!2775922 m!3201637))

(declare-fun m!3203159 () Bool)

(assert (=> b!2775922 m!3203159))

(assert (=> b!2775922 m!3203151))

(declare-fun m!3203161 () Bool)

(assert (=> b!2775922 m!3203161))

(assert (=> b!2775922 m!3201349))

(assert (=> b!2775922 m!3201649))

(assert (=> b!2775922 m!3201349))

(declare-fun m!3203163 () Bool)

(assert (=> b!2775922 m!3203163))

(declare-fun m!3203165 () Bool)

(assert (=> b!2775926 m!3203165))

(assert (=> bm!181642 m!3201349))

(assert (=> bm!181642 m!3201349))

(assert (=> bm!181642 m!3202204))

(assert (=> bm!181646 m!3201349))

(assert (=> bm!181646 m!3201349))

(assert (=> bm!181646 m!3202206))

(assert (=> d!806972 m!3201357))

(assert (=> d!806972 m!3201359))

(assert (=> d!806972 m!3201361))

(assert (=> d!806972 m!3201357))

(assert (=> d!806972 m!3201349))

(assert (=> d!806972 m!3201637))

(declare-fun m!3203167 () Bool)

(assert (=> d!806972 m!3203167))

(assert (=> d!806972 m!3201349))

(declare-fun m!3203169 () Bool)

(assert (=> d!806972 m!3203169))

(assert (=> d!806972 m!3201373))

(assert (=> bm!181644 m!3201349))

(assert (=> bm!181644 m!3201349))

(declare-fun m!3203171 () Bool)

(assert (=> bm!181644 m!3203171))

(declare-fun m!3203173 () Bool)

(assert (=> b!2775915 m!3203173))

(assert (=> b!2775915 m!3201399))

(assert (=> bm!181643 m!3201349))

(declare-fun m!3203175 () Bool)

(assert (=> bm!181643 m!3203175))

(assert (=> bm!181640 m!3201311))

(declare-fun m!3203177 () Bool)

(assert (=> bm!181641 m!3203177))

(declare-fun m!3203179 () Bool)

(assert (=> b!2775919 m!3203179))

(assert (=> bm!181645 m!3201395))

(assert (=> bm!181639 m!3201449))

(assert (=> d!806486 d!806972))

(assert (=> d!806486 d!806470))

(declare-fun bs!505561 () Bool)

(declare-fun b!2775928 () Bool)

(assert (= bs!505561 (and b!2775928 b!2775336)))

(declare-fun lambda!101866 () Int)

(assert (=> bs!505561 (= lambda!101866 lambda!101824)))

(declare-fun bs!505562 () Bool)

(assert (= bs!505562 (and b!2775928 b!2775608)))

(assert (=> bs!505562 (= lambda!101866 lambda!101855)))

(declare-fun bs!505563 () Bool)

(assert (= bs!505563 (and b!2775928 b!2775906)))

(assert (=> bs!505563 (= lambda!101866 lambda!101865)))

(declare-fun d!806974 () Bool)

(declare-fun res!1159872 () Bool)

(declare-fun e!1750852 () Bool)

(assert (=> d!806974 (=> (not res!1159872) (not e!1750852))))

(assert (=> d!806974 (= res!1159872 (valid!2978 (cache!3862 (_2!19071 lt!989484))))))

(assert (=> d!806974 (= (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989484))) e!1750852)))

(declare-fun b!2775927 () Bool)

(declare-fun res!1159873 () Bool)

(assert (=> b!2775927 (=> (not res!1159873) (not e!1750852))))

(assert (=> b!2775927 (= res!1159873 (invariantList!452 (toList!1842 (map!6971 (cache!3862 (_2!19071 lt!989484))))))))

(assert (=> b!2775928 (= e!1750852 (forall!6633 (toList!1842 (map!6971 (cache!3862 (_2!19071 lt!989484)))) lambda!101866))))

(assert (= (and d!806974 res!1159872) b!2775927))

(assert (= (and b!2775927 res!1159873) b!2775928))

(declare-fun m!3203181 () Bool)

(assert (=> d!806974 m!3203181))

(declare-fun m!3203183 () Bool)

(assert (=> b!2775927 m!3203183))

(declare-fun m!3203185 () Bool)

(assert (=> b!2775927 m!3203185))

(assert (=> b!2775928 m!3203183))

(declare-fun m!3203187 () Bool)

(assert (=> b!2775928 m!3203187))

(assert (=> d!806462 d!806974))

(declare-fun d!806976 () Bool)

(declare-fun lt!990289 () Int)

(assert (=> d!806976 (>= lt!990289 0)))

(declare-fun e!1750853 () Int)

(assert (=> d!806976 (= lt!990289 e!1750853)))

(declare-fun c!450785 () Bool)

(assert (=> d!806976 (= c!450785 ((_ is Nil!32072) lt!989919))))

(assert (=> d!806976 (= (size!24869 lt!989919) lt!990289)))

(declare-fun b!2775929 () Bool)

(assert (=> b!2775929 (= e!1750853 0)))

(declare-fun b!2775930 () Bool)

(assert (=> b!2775930 (= e!1750853 (+ 1 (size!24869 (t!228300 lt!989919))))))

(assert (= (and d!806976 c!450785) b!2775929))

(assert (= (and d!806976 (not c!450785)) b!2775930))

(declare-fun m!3203189 () Bool)

(assert (=> b!2775930 m!3203189))

(assert (=> b!2775206 d!806976))

(assert (=> b!2775206 d!806514))

(declare-fun d!806978 () Bool)

(declare-fun lt!990290 () Int)

(assert (=> d!806978 (>= lt!990290 0)))

(declare-fun e!1750854 () Int)

(assert (=> d!806978 (= lt!990290 e!1750854)))

(declare-fun c!450786 () Bool)

(assert (=> d!806978 (= c!450786 ((_ is Nil!32072) (Cons!32072 lt!989503 Nil!32072)))))

(assert (=> d!806978 (= (size!24869 (Cons!32072 lt!989503 Nil!32072)) lt!990290)))

(declare-fun b!2775931 () Bool)

(assert (=> b!2775931 (= e!1750854 0)))

(declare-fun b!2775932 () Bool)

(assert (=> b!2775932 (= e!1750854 (+ 1 (size!24869 (t!228300 (Cons!32072 lt!989503 Nil!32072)))))))

(assert (= (and d!806978 c!450786) b!2775931))

(assert (= (and d!806978 (not c!450786)) b!2775932))

(declare-fun m!3203191 () Bool)

(assert (=> b!2775932 m!3203191))

(assert (=> b!2775206 d!806978))

(declare-fun bs!505564 () Bool)

(declare-fun d!806980 () Bool)

(assert (= bs!505564 (and d!806980 d!806824)))

(declare-fun lambda!101867 () Int)

(assert (=> bs!505564 (= (= call!181521 call!181550) (= lambda!101867 lambda!101856))))

(declare-fun bs!505565 () Bool)

(assert (= bs!505565 (and d!806980 d!806692)))

(assert (=> bs!505565 (= (= call!181521 call!181560) (= lambda!101867 lambda!101838))))

(declare-fun bs!505566 () Bool)

(assert (= bs!505566 (and d!806980 d!806600)))

(assert (=> bs!505566 (= (= call!181521 lt!989503) (= lambda!101867 lambda!101821))))

(declare-fun bs!505567 () Bool)

(assert (= bs!505567 (and d!806980 d!806598)))

(assert (=> bs!505567 (= (= call!181521 lt!989475) (= lambda!101867 lambda!101820))))

(declare-fun bs!505568 () Bool)

(assert (= bs!505568 (and d!806980 d!806618)))

(assert (=> bs!505568 (= (= call!181521 lt!989486) (= lambda!101867 lambda!101828))))

(assert (=> d!806980 true))

(assert (=> d!806980 (= (derivationStepZipper!369 z!3597 call!181521) (flatMap!186 z!3597 lambda!101867))))

(declare-fun bs!505569 () Bool)

(assert (= bs!505569 d!806980))

(declare-fun m!3203193 () Bool)

(assert (=> bs!505569 m!3203193))

(assert (=> bm!181512 d!806980))

(declare-fun d!806982 () Bool)

(declare-fun e!1750855 () Bool)

(assert (=> d!806982 e!1750855))

(declare-fun res!1159874 () Bool)

(assert (=> d!806982 (=> (not res!1159874) (not e!1750855))))

(declare-fun lt!990291 () List!32172)

(assert (=> d!806982 (= res!1159874 (= (content!4508 lt!990291) ((_ map or) (content!4508 (t!228300 lt!989491)) (content!4508 lt!989479))))))

(declare-fun e!1750856 () List!32172)

(assert (=> d!806982 (= lt!990291 e!1750856)))

(declare-fun c!450787 () Bool)

(assert (=> d!806982 (= c!450787 ((_ is Nil!32072) (t!228300 lt!989491)))))

(assert (=> d!806982 (= (++!7932 (t!228300 lt!989491) lt!989479) lt!990291)))

(declare-fun b!2775936 () Bool)

(assert (=> b!2775936 (= e!1750855 (or (not (= lt!989479 Nil!32072)) (= lt!990291 (t!228300 lt!989491))))))

(declare-fun b!2775934 () Bool)

(assert (=> b!2775934 (= e!1750856 (Cons!32072 (h!37492 (t!228300 lt!989491)) (++!7932 (t!228300 (t!228300 lt!989491)) lt!989479)))))

(declare-fun b!2775933 () Bool)

(assert (=> b!2775933 (= e!1750856 lt!989479)))

(declare-fun b!2775935 () Bool)

(declare-fun res!1159875 () Bool)

(assert (=> b!2775935 (=> (not res!1159875) (not e!1750855))))

(assert (=> b!2775935 (= res!1159875 (= (size!24869 lt!990291) (+ (size!24869 (t!228300 lt!989491)) (size!24869 lt!989479))))))

(assert (= (and d!806982 c!450787) b!2775933))

(assert (= (and d!806982 (not c!450787)) b!2775934))

(assert (= (and d!806982 res!1159874) b!2775935))

(assert (= (and b!2775935 res!1159875) b!2775936))

(declare-fun m!3203195 () Bool)

(assert (=> d!806982 m!3203195))

(assert (=> d!806982 m!3202941))

(assert (=> d!806982 m!3201961))

(declare-fun m!3203197 () Bool)

(assert (=> b!2775934 m!3203197))

(declare-fun m!3203199 () Bool)

(assert (=> b!2775935 m!3203199))

(assert (=> b!2775935 m!3202975))

(assert (=> b!2775935 m!3201967))

(assert (=> b!2775209 d!806982))

(declare-fun bs!505570 () Bool)

(declare-fun d!806984 () Bool)

(assert (= bs!505570 (and d!806984 d!806686)))

(declare-fun lambda!101868 () Int)

(assert (=> bs!505570 (= lambda!101868 lambda!101837)))

(declare-fun bs!505571 () Bool)

(assert (= bs!505571 (and d!806984 d!806910)))

(assert (=> bs!505571 (= lambda!101868 lambda!101861)))

(declare-fun bs!505572 () Bool)

(assert (= bs!505572 (and d!806984 d!806578)))

(assert (=> bs!505572 (= lambda!101868 lambda!101817)))

(declare-fun bs!505573 () Bool)

(assert (= bs!505573 (and d!806984 d!806936)))

(assert (=> bs!505573 (= lambda!101868 lambda!101864)))

(declare-fun bs!505574 () Bool)

(assert (= bs!505574 (and d!806984 d!806914)))

(assert (=> bs!505574 (= lambda!101868 lambda!101862)))

(declare-fun bs!505575 () Bool)

(assert (= bs!505575 (and d!806984 d!806846)))

(assert (=> bs!505575 (= lambda!101868 lambda!101858)))

(declare-fun bs!505576 () Bool)

(assert (= bs!505576 (and d!806984 d!806764)))

(assert (=> bs!505576 (= lambda!101868 lambda!101851)))

(declare-fun bs!505577 () Bool)

(assert (= bs!505577 (and d!806984 d!806788)))

(assert (=> bs!505577 (= lambda!101868 lambda!101854)))

(declare-fun bs!505578 () Bool)

(assert (= bs!505578 (and d!806984 d!806622)))

(assert (=> bs!505578 (= lambda!101868 lambda!101829)))

(declare-fun bs!505579 () Bool)

(assert (= bs!505579 (and d!806984 d!806694)))

(assert (=> bs!505579 (= lambda!101868 lambda!101839)))

(declare-fun bs!505580 () Bool)

(assert (= bs!505580 (and d!806984 d!806908)))

(assert (=> bs!505580 (= lambda!101868 lambda!101860)))

(declare-fun bs!505581 () Bool)

(assert (= bs!505581 (and d!806984 d!806770)))

(assert (=> bs!505581 (= lambda!101868 lambda!101852)))

(declare-fun bs!505582 () Bool)

(assert (= bs!505582 (and d!806984 d!806848)))

(assert (=> bs!505582 (= lambda!101868 lambda!101859)))

(declare-fun bs!505583 () Bool)

(assert (= bs!505583 (and d!806984 d!806844)))

(assert (=> bs!505583 (= lambda!101868 lambda!101857)))

(declare-fun bs!505584 () Bool)

(assert (= bs!505584 (and d!806984 d!806762)))

(assert (=> bs!505584 (= lambda!101868 lambda!101850)))

(declare-fun bs!505585 () Bool)

(assert (= bs!505585 (and d!806984 d!806784)))

(assert (=> bs!505585 (= lambda!101868 lambda!101853)))

(assert (=> d!806984 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 mapValue!17378)))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapValue!17378)))) lambda!101868))))

(declare-fun bs!505586 () Bool)

(assert (= bs!505586 d!806984))

(declare-fun m!3203201 () Bool)

(assert (=> bs!505586 m!3203201))

(assert (=> b!2775280 d!806984))

(declare-fun d!806986 () Bool)

(assert (not d!806986))

(assert (=> b!2775110 d!806986))

(declare-fun d!806988 () Bool)

(declare-fun e!1750857 () Bool)

(assert (=> d!806988 e!1750857))

(declare-fun res!1159876 () Bool)

(assert (=> d!806988 (=> (not res!1159876) (not e!1750857))))

(declare-fun lt!990292 () List!32172)

(assert (=> d!806988 (= res!1159876 (= (content!4508 lt!990292) ((_ map or) (content!4508 lt!989491) (content!4508 (Cons!32072 call!181560 Nil!32072)))))))

(declare-fun e!1750858 () List!32172)

(assert (=> d!806988 (= lt!990292 e!1750858)))

(declare-fun c!450788 () Bool)

(assert (=> d!806988 (= c!450788 ((_ is Nil!32072) lt!989491))))

(assert (=> d!806988 (= (++!7932 lt!989491 (Cons!32072 call!181560 Nil!32072)) lt!990292)))

(declare-fun b!2775940 () Bool)

(assert (=> b!2775940 (= e!1750857 (or (not (= (Cons!32072 call!181560 Nil!32072) Nil!32072)) (= lt!990292 lt!989491)))))

(declare-fun b!2775938 () Bool)

(assert (=> b!2775938 (= e!1750858 (Cons!32072 (h!37492 lt!989491) (++!7932 (t!228300 lt!989491) (Cons!32072 call!181560 Nil!32072))))))

(declare-fun b!2775937 () Bool)

(assert (=> b!2775937 (= e!1750858 (Cons!32072 call!181560 Nil!32072))))

(declare-fun b!2775939 () Bool)

(declare-fun res!1159877 () Bool)

(assert (=> b!2775939 (=> (not res!1159877) (not e!1750857))))

(assert (=> b!2775939 (= res!1159877 (= (size!24869 lt!990292) (+ (size!24869 lt!989491) (size!24869 (Cons!32072 call!181560 Nil!32072)))))))

(assert (= (and d!806988 c!450788) b!2775937))

(assert (= (and d!806988 (not c!450788)) b!2775938))

(assert (= (and d!806988 res!1159876) b!2775939))

(assert (= (and b!2775939 res!1159877) b!2775940))

(declare-fun m!3203203 () Bool)

(assert (=> d!806988 m!3203203))

(assert (=> d!806988 m!3201959))

(declare-fun m!3203205 () Bool)

(assert (=> d!806988 m!3203205))

(declare-fun m!3203207 () Bool)

(assert (=> b!2775938 m!3203207))

(declare-fun m!3203209 () Bool)

(assert (=> b!2775939 m!3203209))

(assert (=> b!2775939 m!3201679))

(declare-fun m!3203211 () Bool)

(assert (=> b!2775939 m!3203211))

(assert (=> bm!181549 d!806988))

(declare-fun d!806990 () Bool)

(assert (=> d!806990 (= (head!6152 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))) (h!37492 (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989543) Nil!32072))))))

(assert (=> b!2775114 d!806990))

(assert (=> b!2775114 d!806518))

(declare-fun d!806992 () Bool)

(assert (=> d!806992 (= (ite c!450602 lt!989953 lt!989945) lt!989488)))

(declare-fun lt!990293 () Unit!46204)

(assert (=> d!806992 (= lt!990293 (choose!16278 (ite c!450602 lt!989953 lt!989945) lt!989488 e!1750397))))

(assert (=> d!806992 (isPrefix!2557 (ite c!450602 lt!989953 lt!989945) e!1750397)))

(assert (=> d!806992 (= (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450602 lt!989953 lt!989945) lt!989488 e!1750397) lt!990293)))

(declare-fun bs!505587 () Bool)

(assert (= bs!505587 d!806992))

(declare-fun m!3203213 () Bool)

(assert (=> bs!505587 m!3203213))

(declare-fun m!3203215 () Bool)

(assert (=> bs!505587 m!3203215))

(assert (=> bm!181572 d!806992))

(declare-fun d!806994 () Bool)

(declare-fun res!1159882 () Bool)

(declare-fun e!1750861 () Bool)

(assert (=> d!806994 (=> (not res!1159882) (not e!1750861))))

(assert (=> d!806994 (= res!1159882 (<= (size!24869 (list!12098 (xs!13091 (c!450499 input!5495)))) 512))))

(assert (=> d!806994 (= (inv!43566 (c!450499 input!5495)) e!1750861)))

(declare-fun b!2775945 () Bool)

(declare-fun res!1159883 () Bool)

(assert (=> b!2775945 (=> (not res!1159883) (not e!1750861))))

(assert (=> b!2775945 (= res!1159883 (= (csize!20193 (c!450499 input!5495)) (size!24869 (list!12098 (xs!13091 (c!450499 input!5495))))))))

(declare-fun b!2775946 () Bool)

(assert (=> b!2775946 (= e!1750861 (and (> (csize!20193 (c!450499 input!5495)) 0) (<= (csize!20193 (c!450499 input!5495)) 512)))))

(assert (= (and d!806994 res!1159882) b!2775945))

(assert (= (and b!2775945 res!1159883) b!2775946))

(assert (=> d!806994 m!3202130))

(assert (=> d!806994 m!3202130))

(declare-fun m!3203217 () Bool)

(assert (=> d!806994 m!3203217))

(assert (=> b!2775945 m!3202130))

(assert (=> b!2775945 m!3202130))

(assert (=> b!2775945 m!3203217))

(assert (=> b!2775125 d!806994))

(declare-fun d!806996 () Bool)

(declare-fun choose!16285 ((InoxSet Context!4642) Int) (InoxSet Context!4642))

(assert (=> d!806996 (= (flatMap!186 z!3597 lambda!101821) (choose!16285 z!3597 lambda!101821))))

(declare-fun bs!505588 () Bool)

(assert (= bs!505588 d!806996))

(declare-fun m!3203219 () Bool)

(assert (=> bs!505588 m!3203219))

(assert (=> d!806600 d!806996))

(assert (=> bm!181516 d!806510))

(assert (=> d!806474 d!806464))

(assert (=> d!806474 d!806458))

(declare-fun d!806998 () Bool)

(assert (=> d!806998 (isPrefix!2557 Nil!32072 (++!7932 Nil!32072 lt!989496))))

(assert (=> d!806998 true))

(declare-fun _$46!1392 () Unit!46204)

(assert (=> d!806998 (= (choose!16272 Nil!32072 lt!989496) _$46!1392)))

(declare-fun bs!505589 () Bool)

(assert (= bs!505589 d!806998))

(assert (=> bs!505589 m!3201357))

(assert (=> bs!505589 m!3201357))

(assert (=> bs!505589 m!3201359))

(assert (=> d!806474 d!806998))

(declare-fun b!2775948 () Bool)

(declare-fun res!1159885 () Bool)

(declare-fun e!1750864 () Bool)

(assert (=> b!2775948 (=> (not res!1159885) (not e!1750864))))

(assert (=> b!2775948 (= res!1159885 (= (head!6152 (ite c!450559 lt!989836 lt!989802)) (head!6152 (ite c!450559 lt!989807 lt!989834))))))

(declare-fun b!2775947 () Bool)

(declare-fun e!1750863 () Bool)

(assert (=> b!2775947 (= e!1750863 e!1750864)))

(declare-fun res!1159886 () Bool)

(assert (=> b!2775947 (=> (not res!1159886) (not e!1750864))))

(assert (=> b!2775947 (= res!1159886 (not ((_ is Nil!32072) (ite c!450559 lt!989807 lt!989834))))))

(declare-fun d!807000 () Bool)

(declare-fun e!1750862 () Bool)

(assert (=> d!807000 e!1750862))

(declare-fun res!1159887 () Bool)

(assert (=> d!807000 (=> res!1159887 e!1750862)))

(declare-fun lt!990294 () Bool)

(assert (=> d!807000 (= res!1159887 (not lt!990294))))

(assert (=> d!807000 (= lt!990294 e!1750863)))

(declare-fun res!1159884 () Bool)

(assert (=> d!807000 (=> res!1159884 e!1750863)))

(assert (=> d!807000 (= res!1159884 ((_ is Nil!32072) (ite c!450559 lt!989836 lt!989802)))))

(assert (=> d!807000 (= (isPrefix!2557 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834)) lt!990294)))

(declare-fun b!2775949 () Bool)

(assert (=> b!2775949 (= e!1750864 (isPrefix!2557 (tail!4390 (ite c!450559 lt!989836 lt!989802)) (tail!4390 (ite c!450559 lt!989807 lt!989834))))))

(declare-fun b!2775950 () Bool)

(assert (=> b!2775950 (= e!1750862 (>= (size!24869 (ite c!450559 lt!989807 lt!989834)) (size!24869 (ite c!450559 lt!989836 lt!989802))))))

(assert (= (and d!807000 (not res!1159884)) b!2775947))

(assert (= (and b!2775947 res!1159886) b!2775948))

(assert (= (and b!2775948 res!1159885) b!2775949))

(assert (= (and d!807000 (not res!1159887)) b!2775950))

(declare-fun m!3203221 () Bool)

(assert (=> b!2775948 m!3203221))

(declare-fun m!3203223 () Bool)

(assert (=> b!2775948 m!3203223))

(declare-fun m!3203225 () Bool)

(assert (=> b!2775949 m!3203225))

(declare-fun m!3203227 () Bool)

(assert (=> b!2775949 m!3203227))

(assert (=> b!2775949 m!3203225))

(assert (=> b!2775949 m!3203227))

(declare-fun m!3203229 () Bool)

(assert (=> b!2775949 m!3203229))

(declare-fun m!3203231 () Bool)

(assert (=> b!2775950 m!3203231))

(declare-fun m!3203233 () Bool)

(assert (=> b!2775950 m!3203233))

(assert (=> bm!181553 d!807000))

(declare-fun d!807002 () Bool)

(assert (=> d!807002 (= (valid!2977 (_3!2922 lt!989666)) (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989666))))))

(declare-fun bs!505590 () Bool)

(assert (= bs!505590 d!807002))

(declare-fun m!3203235 () Bool)

(assert (=> bs!505590 m!3203235))

(assert (=> b!2775035 d!807002))

(declare-fun b!2775951 () Bool)

(declare-fun e!1750865 () List!32172)

(assert (=> b!2775951 (= e!1750865 Nil!32072)))

(declare-fun b!2775952 () Bool)

(declare-fun e!1750866 () List!32172)

(assert (=> b!2775952 (= e!1750865 e!1750866)))

(declare-fun c!450790 () Bool)

(assert (=> b!2775952 (= c!450790 ((_ is Leaf!15201) (c!450499 (_1!19066 lt!989513))))))

(declare-fun d!807004 () Bool)

(declare-fun c!450789 () Bool)

(assert (=> d!807004 (= c!450789 ((_ is Empty!9981) (c!450499 (_1!19066 lt!989513))))))

(assert (=> d!807004 (= (list!12097 (c!450499 (_1!19066 lt!989513))) e!1750865)))

(declare-fun b!2775953 () Bool)

(assert (=> b!2775953 (= e!1750866 (list!12098 (xs!13091 (c!450499 (_1!19066 lt!989513)))))))

(declare-fun b!2775954 () Bool)

(assert (=> b!2775954 (= e!1750866 (++!7932 (list!12097 (left!24418 (c!450499 (_1!19066 lt!989513)))) (list!12097 (right!24748 (c!450499 (_1!19066 lt!989513))))))))

(assert (= (and d!807004 c!450789) b!2775951))

(assert (= (and d!807004 (not c!450789)) b!2775952))

(assert (= (and b!2775952 c!450790) b!2775953))

(assert (= (and b!2775952 (not c!450790)) b!2775954))

(declare-fun m!3203237 () Bool)

(assert (=> b!2775953 m!3203237))

(declare-fun m!3203239 () Bool)

(assert (=> b!2775954 m!3203239))

(declare-fun m!3203241 () Bool)

(assert (=> b!2775954 m!3203241))

(assert (=> b!2775954 m!3203239))

(assert (=> b!2775954 m!3203241))

(declare-fun m!3203243 () Bool)

(assert (=> b!2775954 m!3203243))

(assert (=> d!806568 d!807004))

(assert (=> d!806594 d!806548))

(declare-fun d!807006 () Bool)

(declare-fun lt!990295 () List!32172)

(assert (=> d!807006 (= (++!7932 lt!989488 lt!990295) (list!12096 input!5495))))

(declare-fun e!1750867 () List!32172)

(assert (=> d!807006 (= lt!990295 e!1750867)))

(declare-fun c!450791 () Bool)

(assert (=> d!807006 (= c!450791 ((_ is Cons!32072) lt!989488))))

(assert (=> d!807006 (>= (size!24869 (list!12096 input!5495)) (size!24869 lt!989488))))

(assert (=> d!807006 (= (getSuffix!1239 (list!12096 input!5495) lt!989488) lt!990295)))

(declare-fun b!2775955 () Bool)

(assert (=> b!2775955 (= e!1750867 (getSuffix!1239 (tail!4390 (list!12096 input!5495)) (t!228300 lt!989488)))))

(declare-fun b!2775956 () Bool)

(assert (=> b!2775956 (= e!1750867 (list!12096 input!5495))))

(assert (= (and d!807006 c!450791) b!2775955))

(assert (= (and d!807006 (not c!450791)) b!2775956))

(declare-fun m!3203245 () Bool)

(assert (=> d!807006 m!3203245))

(assert (=> d!807006 m!3201349))

(assert (=> d!807006 m!3201649))

(assert (=> d!807006 m!3201877))

(assert (=> b!2775955 m!3201349))

(assert (=> b!2775955 m!3202254))

(assert (=> b!2775955 m!3202254))

(declare-fun m!3203247 () Bool)

(assert (=> b!2775955 m!3203247))

(assert (=> d!806594 d!807006))

(declare-fun bs!505591 () Bool)

(declare-fun d!807008 () Bool)

(assert (= bs!505591 (and d!807008 d!806638)))

(declare-fun lambda!101869 () Int)

(assert (=> bs!505591 (= lambda!101869 lambda!101830)))

(declare-fun bs!505592 () Bool)

(assert (= bs!505592 (and d!807008 b!2774981)))

(assert (=> bs!505592 (not (= lambda!101869 lambda!101810))))

(declare-fun bs!505593 () Bool)

(assert (= bs!505593 (and d!807008 b!2775512)))

(assert (=> bs!505593 (not (= lambda!101869 lambda!101842))))

(declare-fun bs!505594 () Bool)

(assert (= bs!505594 (and d!807008 d!806678)))

(assert (=> bs!505594 (not (= lambda!101869 lambda!101836))))

(declare-fun bs!505595 () Bool)

(assert (= bs!505595 (and d!807008 b!2775434)))

(assert (=> bs!505595 (not (= lambda!101869 lambda!101832))))

(declare-fun bs!505596 () Bool)

(assert (= bs!505596 (and d!807008 d!806718)))

(assert (=> bs!505596 (= lambda!101869 lambda!101840)))

(declare-fun bs!505597 () Bool)

(assert (= bs!505597 (and d!807008 d!806544)))

(assert (=> bs!505597 (not (= lambda!101869 lambda!101814))))

(declare-fun bs!505598 () Bool)

(assert (= bs!505598 (and d!807008 d!806468)))

(assert (=> bs!505598 (= lambda!101869 lambda!101809)))

(declare-fun bs!505599 () Bool)

(assert (= bs!505599 (and d!807008 d!806730)))

(assert (=> bs!505599 (not (= lambda!101869 lambda!101849))))

(declare-fun bs!505600 () Bool)

(assert (= bs!505600 (and d!807008 b!2775433)))

(assert (=> bs!505600 (not (= lambda!101869 lambda!101831))))

(declare-fun bs!505601 () Bool)

(assert (= bs!505601 (and d!807008 b!2775511)))

(assert (=> bs!505601 (not (= lambda!101869 lambda!101841))))

(declare-fun bs!505602 () Bool)

(assert (= bs!505602 (and d!807008 b!2774982)))

(assert (=> bs!505602 (not (= lambda!101869 lambda!101811))))

(declare-fun bs!505603 () Bool)

(assert (= bs!505603 (and d!807008 d!806614)))

(assert (=> bs!505603 (not (= lambda!101869 lambda!101827))))

(declare-fun bs!505604 () Bool)

(declare-fun b!2775957 () Bool)

(assert (= bs!505604 (and b!2775957 d!806638)))

(declare-fun lambda!101870 () Int)

(assert (=> bs!505604 (not (= lambda!101870 lambda!101830))))

(declare-fun bs!505605 () Bool)

(assert (= bs!505605 (and b!2775957 b!2774981)))

(assert (=> bs!505605 (= lambda!101870 lambda!101810)))

(declare-fun bs!505606 () Bool)

(assert (= bs!505606 (and b!2775957 d!807008)))

(assert (=> bs!505606 (not (= lambda!101870 lambda!101869))))

(declare-fun bs!505607 () Bool)

(assert (= bs!505607 (and b!2775957 b!2775512)))

(assert (=> bs!505607 (= lambda!101870 lambda!101842)))

(declare-fun bs!505608 () Bool)

(assert (= bs!505608 (and b!2775957 d!806678)))

(assert (=> bs!505608 (not (= lambda!101870 lambda!101836))))

(declare-fun bs!505609 () Bool)

(assert (= bs!505609 (and b!2775957 b!2775434)))

(assert (=> bs!505609 (= lambda!101870 lambda!101832)))

(declare-fun bs!505610 () Bool)

(assert (= bs!505610 (and b!2775957 d!806718)))

(assert (=> bs!505610 (not (= lambda!101870 lambda!101840))))

(declare-fun bs!505611 () Bool)

(assert (= bs!505611 (and b!2775957 d!806544)))

(assert (=> bs!505611 (not (= lambda!101870 lambda!101814))))

(declare-fun bs!505612 () Bool)

(assert (= bs!505612 (and b!2775957 d!806468)))

(assert (=> bs!505612 (not (= lambda!101870 lambda!101809))))

(declare-fun bs!505613 () Bool)

(assert (= bs!505613 (and b!2775957 d!806730)))

(assert (=> bs!505613 (= lambda!101870 lambda!101849)))

(declare-fun bs!505614 () Bool)

(assert (= bs!505614 (and b!2775957 b!2775433)))

(assert (=> bs!505614 (= lambda!101870 lambda!101831)))

(declare-fun bs!505615 () Bool)

(assert (= bs!505615 (and b!2775957 b!2775511)))

(assert (=> bs!505615 (= lambda!101870 lambda!101841)))

(declare-fun bs!505616 () Bool)

(assert (= bs!505616 (and b!2775957 b!2774982)))

(assert (=> bs!505616 (= lambda!101870 lambda!101811)))

(declare-fun bs!505617 () Bool)

(assert (= bs!505617 (and b!2775957 d!806614)))

(assert (=> bs!505617 (not (= lambda!101870 lambda!101827))))

(declare-fun bs!505618 () Bool)

(declare-fun b!2775958 () Bool)

(assert (= bs!505618 (and b!2775958 d!806638)))

(declare-fun lambda!101871 () Int)

(assert (=> bs!505618 (not (= lambda!101871 lambda!101830))))

(declare-fun bs!505619 () Bool)

(assert (= bs!505619 (and b!2775958 b!2774981)))

(assert (=> bs!505619 (= lambda!101871 lambda!101810)))

(declare-fun bs!505620 () Bool)

(assert (= bs!505620 (and b!2775958 d!807008)))

(assert (=> bs!505620 (not (= lambda!101871 lambda!101869))))

(declare-fun bs!505621 () Bool)

(assert (= bs!505621 (and b!2775958 b!2775957)))

(assert (=> bs!505621 (= lambda!101871 lambda!101870)))

(declare-fun bs!505622 () Bool)

(assert (= bs!505622 (and b!2775958 b!2775512)))

(assert (=> bs!505622 (= lambda!101871 lambda!101842)))

(declare-fun bs!505623 () Bool)

(assert (= bs!505623 (and b!2775958 d!806678)))

(assert (=> bs!505623 (not (= lambda!101871 lambda!101836))))

(declare-fun bs!505624 () Bool)

(assert (= bs!505624 (and b!2775958 b!2775434)))

(assert (=> bs!505624 (= lambda!101871 lambda!101832)))

(declare-fun bs!505625 () Bool)

(assert (= bs!505625 (and b!2775958 d!806718)))

(assert (=> bs!505625 (not (= lambda!101871 lambda!101840))))

(declare-fun bs!505626 () Bool)

(assert (= bs!505626 (and b!2775958 d!806544)))

(assert (=> bs!505626 (not (= lambda!101871 lambda!101814))))

(declare-fun bs!505627 () Bool)

(assert (= bs!505627 (and b!2775958 d!806468)))

(assert (=> bs!505627 (not (= lambda!101871 lambda!101809))))

(declare-fun bs!505628 () Bool)

(assert (= bs!505628 (and b!2775958 d!806730)))

(assert (=> bs!505628 (= lambda!101871 lambda!101849)))

(declare-fun bs!505629 () Bool)

(assert (= bs!505629 (and b!2775958 b!2775433)))

(assert (=> bs!505629 (= lambda!101871 lambda!101831)))

(declare-fun bs!505630 () Bool)

(assert (= bs!505630 (and b!2775958 b!2775511)))

(assert (=> bs!505630 (= lambda!101871 lambda!101841)))

(declare-fun bs!505631 () Bool)

(assert (= bs!505631 (and b!2775958 b!2774982)))

(assert (=> bs!505631 (= lambda!101871 lambda!101811)))

(declare-fun bs!505632 () Bool)

(assert (= bs!505632 (and b!2775958 d!806614)))

(assert (=> bs!505632 (not (= lambda!101871 lambda!101827))))

(declare-fun bm!181648 () Bool)

(declare-fun call!181653 () List!32176)

(assert (=> bm!181648 (= call!181653 (toList!1841 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))))))

(declare-fun lt!990300 () Bool)

(assert (=> d!807008 (= lt!990300 (isEmpty!18098 (getLanguageWitness!189 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)))))))

(assert (=> d!807008 (= lt!990300 (forall!6631 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lambda!101869))))

(declare-fun lt!990303 () Unit!46204)

(declare-fun e!1750868 () Unit!46204)

(assert (=> d!807008 (= lt!990303 e!1750868)))

(declare-fun c!450792 () Bool)

(assert (=> d!807008 (= c!450792 (not (forall!6631 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lambda!101869)))))

(assert (=> d!807008 (= (lostCauseZipper!443 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))) lt!990300)))

(declare-fun Unit!46248 () Unit!46204)

(assert (=> b!2775958 (= e!1750868 Unit!46248)))

(declare-fun lt!990298 () List!32176)

(assert (=> b!2775958 (= lt!990298 call!181653)))

(declare-fun lt!990302 () Unit!46204)

(assert (=> b!2775958 (= lt!990302 (lemmaForallThenNotExists!84 lt!990298 lambda!101869))))

(declare-fun call!181652 () Bool)

(assert (=> b!2775958 (not call!181652)))

(declare-fun lt!990296 () Unit!46204)

(assert (=> b!2775958 (= lt!990296 lt!990302)))

(declare-fun lt!990297 () List!32176)

(declare-fun bm!181647 () Bool)

(assert (=> bm!181647 (= call!181652 (exists!976 (ite c!450792 lt!990297 lt!990298) (ite c!450792 lambda!101870 lambda!101871)))))

(declare-fun Unit!46249 () Unit!46204)

(assert (=> b!2775957 (= e!1750868 Unit!46249)))

(assert (=> b!2775957 (= lt!990297 call!181653)))

(declare-fun lt!990301 () Unit!46204)

(assert (=> b!2775957 (= lt!990301 (lemmaNotForallThenExists!84 lt!990297 lambda!101869))))

(assert (=> b!2775957 call!181652))

(declare-fun lt!990299 () Unit!46204)

(assert (=> b!2775957 (= lt!990299 lt!990301)))

(assert (= (and d!807008 c!450792) b!2775957))

(assert (= (and d!807008 (not c!450792)) b!2775958))

(assert (= (or b!2775957 b!2775958) bm!181647))

(assert (= (or b!2775957 b!2775958) bm!181648))

(declare-fun m!3203249 () Bool)

(assert (=> bm!181647 m!3203249))

(declare-fun m!3203251 () Bool)

(assert (=> bm!181648 m!3203251))

(declare-fun m!3203253 () Bool)

(assert (=> b!2775958 m!3203253))

(declare-fun m!3203255 () Bool)

(assert (=> d!807008 m!3203255))

(assert (=> d!807008 m!3203255))

(declare-fun m!3203257 () Bool)

(assert (=> d!807008 m!3203257))

(declare-fun m!3203259 () Bool)

(assert (=> d!807008 m!3203259))

(assert (=> d!807008 m!3203259))

(declare-fun m!3203261 () Bool)

(assert (=> b!2775957 m!3203261))

(assert (=> d!806594 d!807008))

(declare-fun b!2775959 () Bool)

(declare-fun e!1750876 () Unit!46204)

(declare-fun Unit!46250 () Unit!46204)

(assert (=> b!2775959 (= e!1750876 Unit!46250)))

(declare-fun lt!990324 () Unit!46204)

(declare-fun call!181659 () Unit!46204)

(assert (=> b!2775959 (= lt!990324 call!181659)))

(declare-fun call!181655 () Bool)

(assert (=> b!2775959 call!181655))

(declare-fun lt!990320 () Unit!46204)

(assert (=> b!2775959 (= lt!990320 lt!990324)))

(declare-fun lt!990329 () Unit!46204)

(declare-fun call!181658 () Unit!46204)

(assert (=> b!2775959 (= lt!990329 call!181658)))

(assert (=> b!2775959 (= (list!12096 input!5495) lt!989488)))

(declare-fun lt!990313 () Unit!46204)

(assert (=> b!2775959 (= lt!990313 lt!990329)))

(assert (=> b!2775959 false))

(declare-fun d!807010 () Bool)

(declare-fun e!1750874 () Bool)

(assert (=> d!807010 e!1750874))

(declare-fun res!1159889 () Bool)

(assert (=> d!807010 (=> (not res!1159889) (not e!1750874))))

(declare-fun lt!990328 () tuple2!32288)

(assert (=> d!807010 (= res!1159889 (= (++!7932 (_1!19065 lt!990328) (_2!19065 lt!990328)) (list!12096 input!5495)))))

(declare-fun e!1750870 () tuple2!32288)

(assert (=> d!807010 (= lt!990328 e!1750870)))

(declare-fun c!450797 () Bool)

(assert (=> d!807010 (= c!450797 (lostCauseZipper!443 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))))))

(declare-fun lt!990316 () Unit!46204)

(declare-fun Unit!46251 () Unit!46204)

(assert (=> d!807010 (= lt!990316 Unit!46251)))

(assert (=> d!807010 (= (getSuffix!1239 (list!12096 input!5495) lt!989488) lt!989532)))

(declare-fun lt!990315 () Unit!46204)

(declare-fun lt!990318 () Unit!46204)

(assert (=> d!807010 (= lt!990315 lt!990318)))

(declare-fun lt!990311 () List!32172)

(assert (=> d!807010 (= lt!989532 lt!990311)))

(assert (=> d!807010 (= lt!990318 (lemmaSamePrefixThenSameSuffix!1141 lt!989488 lt!989532 lt!989488 lt!990311 (list!12096 input!5495)))))

(assert (=> d!807010 (= lt!990311 (getSuffix!1239 (list!12096 input!5495) lt!989488))))

(declare-fun lt!990312 () Unit!46204)

(declare-fun lt!990317 () Unit!46204)

(assert (=> d!807010 (= lt!990312 lt!990317)))

(assert (=> d!807010 (isPrefix!2557 lt!989488 (++!7932 lt!989488 lt!989532))))

(assert (=> d!807010 (= lt!990317 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989488 lt!989532))))

(assert (=> d!807010 (= (++!7932 lt!989488 lt!989532) (list!12096 input!5495))))

(assert (=> d!807010 (= (findLongestMatchInnerZipper!27 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 (list!12096 input!5495) lt!989489) lt!990328)))

(declare-fun bm!181649 () Bool)

(declare-fun call!181660 () C!16364)

(assert (=> bm!181649 (= call!181660 (head!6152 lt!989532))))

(declare-fun b!2775960 () Bool)

(declare-fun e!1750871 () tuple2!32288)

(declare-fun call!181654 () tuple2!32288)

(assert (=> b!2775960 (= e!1750871 call!181654)))

(declare-fun b!2775961 () Bool)

(declare-fun e!1750872 () Bool)

(assert (=> b!2775961 (= e!1750872 (>= (size!24869 (_1!19065 lt!990328)) (size!24869 lt!989488)))))

(declare-fun b!2775962 () Bool)

(declare-fun c!450794 () Bool)

(declare-fun call!181656 () Bool)

(assert (=> b!2775962 (= c!450794 call!181656)))

(declare-fun lt!990321 () Unit!46204)

(declare-fun lt!990327 () Unit!46204)

(assert (=> b!2775962 (= lt!990321 lt!990327)))

(assert (=> b!2775962 (= (list!12096 input!5495) lt!989488)))

(assert (=> b!2775962 (= lt!990327 call!181658)))

(declare-fun lt!990307 () Unit!46204)

(declare-fun lt!990314 () Unit!46204)

(assert (=> b!2775962 (= lt!990307 lt!990314)))

(assert (=> b!2775962 call!181655))

(assert (=> b!2775962 (= lt!990314 call!181659)))

(declare-fun e!1750869 () tuple2!32288)

(declare-fun e!1750875 () tuple2!32288)

(assert (=> b!2775962 (= e!1750869 e!1750875)))

(declare-fun b!2775963 () Bool)

(assert (=> b!2775963 (= e!1750875 (tuple2!32289 lt!989488 Nil!32072))))

(declare-fun b!2775964 () Bool)

(assert (=> b!2775964 (= e!1750870 e!1750869)))

(declare-fun c!450795 () Bool)

(assert (=> b!2775964 (= c!450795 (= 1 lt!989489))))

(declare-fun b!2775965 () Bool)

(assert (=> b!2775965 (= e!1750874 e!1750872)))

(declare-fun res!1159888 () Bool)

(assert (=> b!2775965 (=> res!1159888 e!1750872)))

(assert (=> b!2775965 (= res!1159888 (isEmpty!18097 (_1!19065 lt!990328)))))

(declare-fun b!2775966 () Bool)

(declare-fun e!1750873 () tuple2!32288)

(assert (=> b!2775966 (= e!1750873 (tuple2!32289 lt!989488 lt!989532))))

(declare-fun b!2775967 () Bool)

(declare-fun Unit!46252 () Unit!46204)

(assert (=> b!2775967 (= e!1750876 Unit!46252)))

(declare-fun bm!181650 () Bool)

(assert (=> bm!181650 (= call!181656 (nullableZipper!636 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))))))

(declare-fun b!2775968 () Bool)

(declare-fun c!450796 () Bool)

(assert (=> b!2775968 (= c!450796 call!181656)))

(declare-fun lt!990319 () Unit!46204)

(declare-fun lt!990322 () Unit!46204)

(assert (=> b!2775968 (= lt!990319 lt!990322)))

(declare-fun lt!990306 () C!16364)

(declare-fun lt!990308 () List!32172)

(assert (=> b!2775968 (= (++!7932 (++!7932 lt!989488 (Cons!32072 lt!990306 Nil!32072)) lt!990308) (list!12096 input!5495))))

(assert (=> b!2775968 (= lt!990322 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989488 lt!990306 lt!990308 (list!12096 input!5495)))))

(assert (=> b!2775968 (= lt!990308 (tail!4390 lt!989532))))

(assert (=> b!2775968 (= lt!990306 (head!6152 lt!989532))))

(declare-fun lt!990325 () Unit!46204)

(declare-fun lt!990305 () Unit!46204)

(assert (=> b!2775968 (= lt!990325 lt!990305)))

(assert (=> b!2775968 (isPrefix!2557 (++!7932 lt!989488 (Cons!32072 (head!6152 (getSuffix!1239 (list!12096 input!5495) lt!989488)) Nil!32072)) (list!12096 input!5495))))

(assert (=> b!2775968 (= lt!990305 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989488 (list!12096 input!5495)))))

(declare-fun lt!990326 () List!32172)

(assert (=> b!2775968 (= lt!990326 (++!7932 lt!989488 (Cons!32072 (head!6152 lt!989532) Nil!32072)))))

(declare-fun lt!990309 () Unit!46204)

(assert (=> b!2775968 (= lt!990309 e!1750876)))

(declare-fun c!450793 () Bool)

(assert (=> b!2775968 (= c!450793 (= (size!24869 lt!989488) (size!24869 (list!12096 input!5495))))))

(declare-fun lt!990310 () Unit!46204)

(declare-fun lt!990323 () Unit!46204)

(assert (=> b!2775968 (= lt!990310 lt!990323)))

(assert (=> b!2775968 (<= (size!24869 lt!989488) (size!24869 (list!12096 input!5495)))))

(assert (=> b!2775968 (= lt!990323 (lemmaIsPrefixThenSmallerEqSize!264 lt!989488 (list!12096 input!5495)))))

(assert (=> b!2775968 (= e!1750869 e!1750871)))

(declare-fun call!181661 () (InoxSet Context!4642))

(declare-fun bm!181651 () Bool)

(assert (=> bm!181651 (= call!181661 (derivationStepZipper!369 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) call!181660))))

(declare-fun b!2775969 () Bool)

(assert (=> b!2775969 (= e!1750875 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun bm!181652 () Bool)

(assert (=> bm!181652 (= call!181659 (lemmaIsPrefixRefl!1681 (list!12096 input!5495) (list!12096 input!5495)))))

(declare-fun b!2775970 () Bool)

(declare-fun lt!990304 () tuple2!32288)

(assert (=> b!2775970 (= e!1750873 lt!990304)))

(declare-fun b!2775971 () Bool)

(assert (=> b!2775971 (= e!1750870 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun bm!181653 () Bool)

(declare-fun call!181657 () List!32172)

(assert (=> bm!181653 (= call!181654 (findLongestMatchInnerZipper!27 call!181661 lt!990326 (+ 1 1) call!181657 (list!12096 input!5495) lt!989489))))

(declare-fun bm!181654 () Bool)

(assert (=> bm!181654 (= call!181658 (lemmaIsPrefixSameLengthThenSameList!463 (list!12096 input!5495) lt!989488 (list!12096 input!5495)))))

(declare-fun b!2775972 () Bool)

(assert (=> b!2775972 (= e!1750871 e!1750873)))

(assert (=> b!2775972 (= lt!990304 call!181654)))

(declare-fun c!450798 () Bool)

(assert (=> b!2775972 (= c!450798 (isEmpty!18097 (_1!19065 lt!990304)))))

(declare-fun bm!181655 () Bool)

(assert (=> bm!181655 (= call!181657 (tail!4390 lt!989532))))

(declare-fun bm!181656 () Bool)

(assert (=> bm!181656 (= call!181655 (isPrefix!2557 (list!12096 input!5495) (list!12096 input!5495)))))

(assert (= (and d!807010 c!450797) b!2775971))

(assert (= (and d!807010 (not c!450797)) b!2775964))

(assert (= (and b!2775964 c!450795) b!2775962))

(assert (= (and b!2775964 (not c!450795)) b!2775968))

(assert (= (and b!2775962 c!450794) b!2775963))

(assert (= (and b!2775962 (not c!450794)) b!2775969))

(assert (= (and b!2775968 c!450793) b!2775959))

(assert (= (and b!2775968 (not c!450793)) b!2775967))

(assert (= (and b!2775968 c!450796) b!2775972))

(assert (= (and b!2775968 (not c!450796)) b!2775960))

(assert (= (and b!2775972 c!450798) b!2775966))

(assert (= (and b!2775972 (not c!450798)) b!2775970))

(assert (= (or b!2775972 b!2775960) bm!181655))

(assert (= (or b!2775972 b!2775960) bm!181649))

(assert (= (or b!2775972 b!2775960) bm!181651))

(assert (= (or b!2775972 b!2775960) bm!181653))

(assert (= (or b!2775962 b!2775968) bm!181650))

(assert (= (or b!2775962 b!2775959) bm!181652))

(assert (= (or b!2775962 b!2775959) bm!181654))

(assert (= (or b!2775962 b!2775959) bm!181656))

(assert (= (and d!807010 res!1159889) b!2775965))

(assert (= (and b!2775965 (not res!1159888)) b!2775961))

(assert (=> b!2775968 m!3201349))

(declare-fun m!3203263 () Bool)

(assert (=> b!2775968 m!3203263))

(declare-fun m!3203265 () Bool)

(assert (=> b!2775968 m!3203265))

(assert (=> b!2775968 m!3201877))

(declare-fun m!3203267 () Bool)

(assert (=> b!2775968 m!3203267))

(declare-fun m!3203269 () Bool)

(assert (=> b!2775968 m!3203269))

(assert (=> b!2775968 m!3201349))

(declare-fun m!3203271 () Bool)

(assert (=> b!2775968 m!3203271))

(declare-fun m!3203273 () Bool)

(assert (=> b!2775968 m!3203273))

(assert (=> b!2775968 m!3201981))

(assert (=> b!2775968 m!3201349))

(assert (=> b!2775968 m!3202023))

(assert (=> b!2775968 m!3203273))

(assert (=> b!2775968 m!3201349))

(declare-fun m!3203275 () Bool)

(assert (=> b!2775968 m!3203275))

(assert (=> b!2775968 m!3202023))

(declare-fun m!3203277 () Bool)

(assert (=> b!2775968 m!3203277))

(assert (=> b!2775968 m!3203269))

(declare-fun m!3203279 () Bool)

(assert (=> b!2775968 m!3203279))

(assert (=> b!2775968 m!3201349))

(assert (=> b!2775968 m!3201649))

(assert (=> b!2775968 m!3201349))

(declare-fun m!3203281 () Bool)

(assert (=> b!2775968 m!3203281))

(declare-fun m!3203283 () Bool)

(assert (=> b!2775972 m!3203283))

(assert (=> bm!181652 m!3201349))

(assert (=> bm!181652 m!3201349))

(assert (=> bm!181652 m!3202204))

(assert (=> bm!181656 m!3201349))

(assert (=> bm!181656 m!3201349))

(assert (=> bm!181656 m!3202206))

(assert (=> d!807010 m!3201437))

(assert (=> d!807010 m!3202019))

(assert (=> d!807010 m!3202031))

(assert (=> d!807010 m!3201437))

(assert (=> d!807010 m!3201349))

(assert (=> d!807010 m!3202023))

(declare-fun m!3203285 () Bool)

(assert (=> d!807010 m!3203285))

(assert (=> d!807010 m!3201349))

(declare-fun m!3203287 () Bool)

(assert (=> d!807010 m!3203287))

(assert (=> d!807010 m!3202021))

(assert (=> bm!181654 m!3201349))

(assert (=> bm!181654 m!3201349))

(declare-fun m!3203289 () Bool)

(assert (=> bm!181654 m!3203289))

(declare-fun m!3203291 () Bool)

(assert (=> b!2775961 m!3203291))

(assert (=> b!2775961 m!3201877))

(assert (=> bm!181653 m!3201349))

(declare-fun m!3203293 () Bool)

(assert (=> bm!181653 m!3203293))

(assert (=> bm!181650 m!3202017))

(declare-fun m!3203295 () Bool)

(assert (=> bm!181651 m!3203295))

(declare-fun m!3203297 () Bool)

(assert (=> b!2775965 m!3203297))

(assert (=> bm!181655 m!3201981))

(assert (=> bm!181649 m!3203267))

(assert (=> d!806594 d!807010))

(assert (=> d!806594 d!806470))

(declare-fun d!807012 () Bool)

(declare-fun lt!990330 () Int)

(assert (=> d!807012 (>= lt!990330 0)))

(declare-fun e!1750877 () Int)

(assert (=> d!807012 (= lt!990330 e!1750877)))

(declare-fun c!450799 () Bool)

(assert (=> d!807012 (= c!450799 ((_ is Nil!32072) (_1!19065 (findLongestMatchInnerZipper!27 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 (list!12096 input!5495) lt!989489))))))

(assert (=> d!807012 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 (list!12096 input!5495) lt!989489))) lt!990330)))

(declare-fun b!2775973 () Bool)

(assert (=> b!2775973 (= e!1750877 0)))

(declare-fun b!2775974 () Bool)

(assert (=> b!2775974 (= e!1750877 (+ 1 (size!24869 (t!228300 (_1!19065 (findLongestMatchInnerZipper!27 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 (list!12096 input!5495) lt!989489))))))))

(assert (= (and d!807012 c!450799) b!2775973))

(assert (= (and d!807012 (not c!450799)) b!2775974))

(declare-fun m!3203299 () Bool)

(assert (=> b!2775974 m!3203299))

(assert (=> d!806594 d!807012))

(declare-fun d!807014 () Bool)

(assert (=> d!807014 (= lt!989532 lt!989936)))

(declare-fun lt!990331 () Unit!46204)

(assert (=> d!807014 (= lt!990331 (choose!16273 lt!989488 lt!989532 lt!989488 lt!989936 (list!12096 input!5495)))))

(assert (=> d!807014 (isPrefix!2557 lt!989488 (list!12096 input!5495))))

(assert (=> d!807014 (= (lemmaSamePrefixThenSameSuffix!1141 lt!989488 lt!989532 lt!989488 lt!989936 (list!12096 input!5495)) lt!990331)))

(declare-fun bs!505633 () Bool)

(assert (= bs!505633 d!807014))

(assert (=> bs!505633 m!3201349))

(declare-fun m!3203301 () Bool)

(assert (=> bs!505633 m!3203301))

(assert (=> bs!505633 m!3201349))

(declare-fun m!3203303 () Bool)

(assert (=> bs!505633 m!3203303))

(assert (=> d!806594 d!807014))

(declare-fun d!807016 () Bool)

(assert (=> d!807016 (isPrefix!2557 lt!989488 (++!7932 lt!989488 lt!989532))))

(declare-fun lt!990332 () Unit!46204)

(assert (=> d!807016 (= lt!990332 (choose!16272 lt!989488 lt!989532))))

(assert (=> d!807016 (= (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989488 lt!989532) lt!990332)))

(declare-fun bs!505634 () Bool)

(assert (= bs!505634 d!807016))

(assert (=> bs!505634 m!3201437))

(assert (=> bs!505634 m!3201437))

(assert (=> bs!505634 m!3202019))

(declare-fun m!3203305 () Bool)

(assert (=> bs!505634 m!3203305))

(assert (=> d!806594 d!807016))

(declare-fun b!2775976 () Bool)

(declare-fun res!1159891 () Bool)

(declare-fun e!1750880 () Bool)

(assert (=> b!2775976 (=> (not res!1159891) (not e!1750880))))

(assert (=> b!2775976 (= res!1159891 (= (head!6152 lt!989488) (head!6152 (++!7932 lt!989488 lt!989532))))))

(declare-fun b!2775975 () Bool)

(declare-fun e!1750879 () Bool)

(assert (=> b!2775975 (= e!1750879 e!1750880)))

(declare-fun res!1159892 () Bool)

(assert (=> b!2775975 (=> (not res!1159892) (not e!1750880))))

(assert (=> b!2775975 (= res!1159892 (not ((_ is Nil!32072) (++!7932 lt!989488 lt!989532))))))

(declare-fun d!807018 () Bool)

(declare-fun e!1750878 () Bool)

(assert (=> d!807018 e!1750878))

(declare-fun res!1159893 () Bool)

(assert (=> d!807018 (=> res!1159893 e!1750878)))

(declare-fun lt!990333 () Bool)

(assert (=> d!807018 (= res!1159893 (not lt!990333))))

(assert (=> d!807018 (= lt!990333 e!1750879)))

(declare-fun res!1159890 () Bool)

(assert (=> d!807018 (=> res!1159890 e!1750879)))

(assert (=> d!807018 (= res!1159890 ((_ is Nil!32072) lt!989488))))

(assert (=> d!807018 (= (isPrefix!2557 lt!989488 (++!7932 lt!989488 lt!989532)) lt!990333)))

(declare-fun b!2775977 () Bool)

(assert (=> b!2775977 (= e!1750880 (isPrefix!2557 (tail!4390 lt!989488) (tail!4390 (++!7932 lt!989488 lt!989532))))))

(declare-fun b!2775978 () Bool)

(assert (=> b!2775978 (= e!1750878 (>= (size!24869 (++!7932 lt!989488 lt!989532)) (size!24869 lt!989488)))))

(assert (= (and d!807018 (not res!1159890)) b!2775975))

(assert (= (and b!2775975 res!1159892) b!2775976))

(assert (= (and b!2775976 res!1159891) b!2775977))

(assert (= (and d!807018 (not res!1159893)) b!2775978))

(declare-fun m!3203307 () Bool)

(assert (=> b!2775976 m!3203307))

(assert (=> b!2775976 m!3201437))

(declare-fun m!3203309 () Bool)

(assert (=> b!2775976 m!3203309))

(declare-fun m!3203311 () Bool)

(assert (=> b!2775977 m!3203311))

(assert (=> b!2775977 m!3201437))

(declare-fun m!3203313 () Bool)

(assert (=> b!2775977 m!3203313))

(assert (=> b!2775977 m!3203311))

(assert (=> b!2775977 m!3203313))

(declare-fun m!3203315 () Bool)

(assert (=> b!2775977 m!3203315))

(assert (=> b!2775978 m!3201437))

(declare-fun m!3203317 () Bool)

(assert (=> b!2775978 m!3203317))

(assert (=> b!2775978 m!3201877))

(assert (=> d!806594 d!807018))

(declare-fun d!807020 () Bool)

(assert (=> d!807020 (= (valid!2977 (_3!2922 lt!989549)) (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989549))))))

(declare-fun bs!505635 () Bool)

(assert (= bs!505635 d!807020))

(declare-fun m!3203319 () Bool)

(assert (=> bs!505635 m!3203319))

(assert (=> b!2774959 d!807020))

(declare-fun bs!505636 () Bool)

(declare-fun b!2775980 () Bool)

(assert (= bs!505636 (and b!2775980 b!2775450)))

(declare-fun lambda!101872 () Int)

(assert (=> bs!505636 (= lambda!101872 lambda!101835)))

(declare-fun bs!505637 () Bool)

(assert (= bs!505637 (and b!2775980 b!2775876)))

(assert (=> bs!505637 (= lambda!101872 lambda!101863)))

(declare-fun d!807022 () Bool)

(declare-fun res!1159894 () Bool)

(declare-fun e!1750881 () Bool)

(assert (=> d!807022 (=> (not res!1159894) (not e!1750881))))

(assert (=> d!807022 (= res!1159894 (valid!2979 (cache!3863 (_3!2922 lt!989506))))))

(assert (=> d!807022 (= (validCacheMapDown!400 (cache!3863 (_3!2922 lt!989506))) e!1750881)))

(declare-fun b!2775979 () Bool)

(declare-fun res!1159895 () Bool)

(assert (=> b!2775979 (=> (not res!1159895) (not e!1750881))))

(assert (=> b!2775979 (= res!1159895 (invariantList!453 (toList!1843 (map!6972 (cache!3863 (_3!2922 lt!989506))))))))

(assert (=> b!2775980 (= e!1750881 (forall!6635 (toList!1843 (map!6972 (cache!3863 (_3!2922 lt!989506)))) lambda!101872))))

(assert (= (and d!807022 res!1159894) b!2775979))

(assert (= (and b!2775979 res!1159895) b!2775980))

(declare-fun m!3203321 () Bool)

(assert (=> d!807022 m!3203321))

(declare-fun m!3203323 () Bool)

(assert (=> b!2775979 m!3203323))

(declare-fun m!3203325 () Bool)

(assert (=> b!2775979 m!3203325))

(assert (=> b!2775980 m!3203323))

(declare-fun m!3203327 () Bool)

(assert (=> b!2775980 m!3203327))

(assert (=> d!806602 d!807022))

(declare-fun bs!505638 () Bool)

(declare-fun d!807024 () Bool)

(assert (= bs!505638 (and d!807024 d!806686)))

(declare-fun lambda!101873 () Int)

(assert (=> bs!505638 (= lambda!101873 lambda!101837)))

(declare-fun bs!505639 () Bool)

(assert (= bs!505639 (and d!807024 d!806910)))

(assert (=> bs!505639 (= lambda!101873 lambda!101861)))

(declare-fun bs!505640 () Bool)

(assert (= bs!505640 (and d!807024 d!806578)))

(assert (=> bs!505640 (= lambda!101873 lambda!101817)))

(declare-fun bs!505641 () Bool)

(assert (= bs!505641 (and d!807024 d!806936)))

(assert (=> bs!505641 (= lambda!101873 lambda!101864)))

(declare-fun bs!505642 () Bool)

(assert (= bs!505642 (and d!807024 d!806914)))

(assert (=> bs!505642 (= lambda!101873 lambda!101862)))

(declare-fun bs!505643 () Bool)

(assert (= bs!505643 (and d!807024 d!806846)))

(assert (=> bs!505643 (= lambda!101873 lambda!101858)))

(declare-fun bs!505644 () Bool)

(assert (= bs!505644 (and d!807024 d!806764)))

(assert (=> bs!505644 (= lambda!101873 lambda!101851)))

(declare-fun bs!505645 () Bool)

(assert (= bs!505645 (and d!807024 d!806622)))

(assert (=> bs!505645 (= lambda!101873 lambda!101829)))

(declare-fun bs!505646 () Bool)

(assert (= bs!505646 (and d!807024 d!806694)))

(assert (=> bs!505646 (= lambda!101873 lambda!101839)))

(declare-fun bs!505647 () Bool)

(assert (= bs!505647 (and d!807024 d!806908)))

(assert (=> bs!505647 (= lambda!101873 lambda!101860)))

(declare-fun bs!505648 () Bool)

(assert (= bs!505648 (and d!807024 d!806770)))

(assert (=> bs!505648 (= lambda!101873 lambda!101852)))

(declare-fun bs!505649 () Bool)

(assert (= bs!505649 (and d!807024 d!806848)))

(assert (=> bs!505649 (= lambda!101873 lambda!101859)))

(declare-fun bs!505650 () Bool)

(assert (= bs!505650 (and d!807024 d!806844)))

(assert (=> bs!505650 (= lambda!101873 lambda!101857)))

(declare-fun bs!505651 () Bool)

(assert (= bs!505651 (and d!807024 d!806762)))

(assert (=> bs!505651 (= lambda!101873 lambda!101850)))

(declare-fun bs!505652 () Bool)

(assert (= bs!505652 (and d!807024 d!806784)))

(assert (=> bs!505652 (= lambda!101873 lambda!101853)))

(declare-fun bs!505653 () Bool)

(assert (= bs!505653 (and d!807024 d!806984)))

(assert (=> bs!505653 (= lambda!101873 lambda!101868)))

(declare-fun bs!505654 () Bool)

(assert (= bs!505654 (and d!807024 d!806788)))

(assert (=> bs!505654 (= lambda!101873 lambda!101854)))

(assert (=> d!807024 (= (inv!43564 setElem!23035) (forall!6632 (exprs!2821 setElem!23035) lambda!101873))))

(declare-fun bs!505655 () Bool)

(assert (= bs!505655 d!807024))

(declare-fun m!3203329 () Bool)

(assert (=> bs!505655 m!3203329))

(assert (=> setNonEmpty!23035 d!807024))

(assert (=> b!2775218 d!806470))

(declare-fun bs!505656 () Bool)

(declare-fun d!807026 () Bool)

(assert (= bs!505656 (and d!807026 d!806824)))

(declare-fun lambda!101874 () Int)

(assert (=> bs!505656 (= (= call!181569 call!181550) (= lambda!101874 lambda!101856))))

(declare-fun bs!505657 () Bool)

(assert (= bs!505657 (and d!807026 d!806692)))

(assert (=> bs!505657 (= (= call!181569 call!181560) (= lambda!101874 lambda!101838))))

(declare-fun bs!505658 () Bool)

(assert (= bs!505658 (and d!807026 d!806598)))

(assert (=> bs!505658 (= (= call!181569 lt!989475) (= lambda!101874 lambda!101820))))

(declare-fun bs!505659 () Bool)

(assert (= bs!505659 (and d!807026 d!806618)))

(assert (=> bs!505659 (= (= call!181569 lt!989486) (= lambda!101874 lambda!101828))))

(declare-fun bs!505660 () Bool)

(assert (= bs!505660 (and d!807026 d!806600)))

(assert (=> bs!505660 (= (= call!181569 lt!989503) (= lambda!101874 lambda!101821))))

(declare-fun bs!505661 () Bool)

(assert (= bs!505661 (and d!807026 d!806980)))

(assert (=> bs!505661 (= (= call!181569 call!181521) (= lambda!101874 lambda!101867))))

(assert (=> d!807026 true))

(assert (=> d!807026 (= (derivationStepZipper!369 call!181484 call!181569) (flatMap!186 call!181484 lambda!101874))))

(declare-fun bs!505662 () Bool)

(assert (= bs!505662 d!807026))

(declare-fun m!3203331 () Bool)

(assert (=> bs!505662 m!3203331))

(assert (=> bm!181560 d!807026))

(declare-fun bs!505663 () Bool)

(declare-fun d!807028 () Bool)

(assert (= bs!505663 (and d!807028 d!806686)))

(declare-fun lambda!101875 () Int)

(assert (=> bs!505663 (= lambda!101875 lambda!101837)))

(declare-fun bs!505664 () Bool)

(assert (= bs!505664 (and d!807028 d!806910)))

(assert (=> bs!505664 (= lambda!101875 lambda!101861)))

(declare-fun bs!505665 () Bool)

(assert (= bs!505665 (and d!807028 d!806578)))

(assert (=> bs!505665 (= lambda!101875 lambda!101817)))

(declare-fun bs!505666 () Bool)

(assert (= bs!505666 (and d!807028 d!806936)))

(assert (=> bs!505666 (= lambda!101875 lambda!101864)))

(declare-fun bs!505667 () Bool)

(assert (= bs!505667 (and d!807028 d!806914)))

(assert (=> bs!505667 (= lambda!101875 lambda!101862)))

(declare-fun bs!505668 () Bool)

(assert (= bs!505668 (and d!807028 d!806846)))

(assert (=> bs!505668 (= lambda!101875 lambda!101858)))

(declare-fun bs!505669 () Bool)

(assert (= bs!505669 (and d!807028 d!806764)))

(assert (=> bs!505669 (= lambda!101875 lambda!101851)))

(declare-fun bs!505670 () Bool)

(assert (= bs!505670 (and d!807028 d!806694)))

(assert (=> bs!505670 (= lambda!101875 lambda!101839)))

(declare-fun bs!505671 () Bool)

(assert (= bs!505671 (and d!807028 d!806908)))

(assert (=> bs!505671 (= lambda!101875 lambda!101860)))

(declare-fun bs!505672 () Bool)

(assert (= bs!505672 (and d!807028 d!806770)))

(assert (=> bs!505672 (= lambda!101875 lambda!101852)))

(declare-fun bs!505673 () Bool)

(assert (= bs!505673 (and d!807028 d!806848)))

(assert (=> bs!505673 (= lambda!101875 lambda!101859)))

(declare-fun bs!505674 () Bool)

(assert (= bs!505674 (and d!807028 d!806844)))

(assert (=> bs!505674 (= lambda!101875 lambda!101857)))

(declare-fun bs!505675 () Bool)

(assert (= bs!505675 (and d!807028 d!806762)))

(assert (=> bs!505675 (= lambda!101875 lambda!101850)))

(declare-fun bs!505676 () Bool)

(assert (= bs!505676 (and d!807028 d!806784)))

(assert (=> bs!505676 (= lambda!101875 lambda!101853)))

(declare-fun bs!505677 () Bool)

(assert (= bs!505677 (and d!807028 d!806984)))

(assert (=> bs!505677 (= lambda!101875 lambda!101868)))

(declare-fun bs!505678 () Bool)

(assert (= bs!505678 (and d!807028 d!806788)))

(assert (=> bs!505678 (= lambda!101875 lambda!101854)))

(declare-fun bs!505679 () Bool)

(assert (= bs!505679 (and d!807028 d!807024)))

(assert (=> bs!505679 (= lambda!101875 lambda!101873)))

(declare-fun bs!505680 () Bool)

(assert (= bs!505680 (and d!807028 d!806622)))

(assert (=> bs!505680 (= lambda!101875 lambda!101829)))

(assert (=> d!807028 (= (inv!43564 setElem!23041) (forall!6632 (exprs!2821 setElem!23041) lambda!101875))))

(declare-fun bs!505681 () Bool)

(assert (= bs!505681 d!807028))

(declare-fun m!3203333 () Bool)

(assert (=> bs!505681 m!3203333))

(assert (=> setNonEmpty!23042 d!807028))

(declare-fun bs!505682 () Bool)

(declare-fun d!807030 () Bool)

(assert (= bs!505682 (and d!807030 d!806686)))

(declare-fun lambda!101876 () Int)

(assert (=> bs!505682 (= lambda!101876 lambda!101837)))

(declare-fun bs!505683 () Bool)

(assert (= bs!505683 (and d!807030 d!806910)))

(assert (=> bs!505683 (= lambda!101876 lambda!101861)))

(declare-fun bs!505684 () Bool)

(assert (= bs!505684 (and d!807030 d!806578)))

(assert (=> bs!505684 (= lambda!101876 lambda!101817)))

(declare-fun bs!505685 () Bool)

(assert (= bs!505685 (and d!807030 d!806936)))

(assert (=> bs!505685 (= lambda!101876 lambda!101864)))

(declare-fun bs!505686 () Bool)

(assert (= bs!505686 (and d!807030 d!806914)))

(assert (=> bs!505686 (= lambda!101876 lambda!101862)))

(declare-fun bs!505687 () Bool)

(assert (= bs!505687 (and d!807030 d!807028)))

(assert (=> bs!505687 (= lambda!101876 lambda!101875)))

(declare-fun bs!505688 () Bool)

(assert (= bs!505688 (and d!807030 d!806846)))

(assert (=> bs!505688 (= lambda!101876 lambda!101858)))

(declare-fun bs!505689 () Bool)

(assert (= bs!505689 (and d!807030 d!806764)))

(assert (=> bs!505689 (= lambda!101876 lambda!101851)))

(declare-fun bs!505690 () Bool)

(assert (= bs!505690 (and d!807030 d!806694)))

(assert (=> bs!505690 (= lambda!101876 lambda!101839)))

(declare-fun bs!505691 () Bool)

(assert (= bs!505691 (and d!807030 d!806908)))

(assert (=> bs!505691 (= lambda!101876 lambda!101860)))

(declare-fun bs!505692 () Bool)

(assert (= bs!505692 (and d!807030 d!806770)))

(assert (=> bs!505692 (= lambda!101876 lambda!101852)))

(declare-fun bs!505693 () Bool)

(assert (= bs!505693 (and d!807030 d!806848)))

(assert (=> bs!505693 (= lambda!101876 lambda!101859)))

(declare-fun bs!505694 () Bool)

(assert (= bs!505694 (and d!807030 d!806844)))

(assert (=> bs!505694 (= lambda!101876 lambda!101857)))

(declare-fun bs!505695 () Bool)

(assert (= bs!505695 (and d!807030 d!806762)))

(assert (=> bs!505695 (= lambda!101876 lambda!101850)))

(declare-fun bs!505696 () Bool)

(assert (= bs!505696 (and d!807030 d!806784)))

(assert (=> bs!505696 (= lambda!101876 lambda!101853)))

(declare-fun bs!505697 () Bool)

(assert (= bs!505697 (and d!807030 d!806984)))

(assert (=> bs!505697 (= lambda!101876 lambda!101868)))

(declare-fun bs!505698 () Bool)

(assert (= bs!505698 (and d!807030 d!806788)))

(assert (=> bs!505698 (= lambda!101876 lambda!101854)))

(declare-fun bs!505699 () Bool)

(assert (= bs!505699 (and d!807030 d!807024)))

(assert (=> bs!505699 (= lambda!101876 lambda!101873)))

(declare-fun bs!505700 () Bool)

(assert (= bs!505700 (and d!807030 d!806622)))

(assert (=> bs!505700 (= lambda!101876 lambda!101829)))

(assert (=> d!807030 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 mapValue!17384)))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapValue!17384)))) lambda!101876))))

(declare-fun bs!505701 () Bool)

(assert (= bs!505701 d!807030))

(declare-fun m!3203335 () Bool)

(assert (=> bs!505701 m!3203335))

(assert (=> b!2775306 d!807030))

(declare-fun d!807032 () Bool)

(declare-fun e!1750884 () Bool)

(assert (=> d!807032 e!1750884))

(declare-fun res!1159898 () Bool)

(assert (=> d!807032 (=> (not res!1159898) (not e!1750884))))

(declare-fun lt!990336 () List!32176)

(declare-fun noDuplicate!544 (List!32176) Bool)

(assert (=> d!807032 (= res!1159898 (noDuplicate!544 lt!990336))))

(declare-fun choose!16286 ((InoxSet Context!4642)) List!32176)

(assert (=> d!807032 (= lt!990336 (choose!16286 z!3597))))

(assert (=> d!807032 (= (toList!1841 z!3597) lt!990336)))

(declare-fun b!2775983 () Bool)

(declare-fun content!4509 (List!32176) (InoxSet Context!4642))

(assert (=> b!2775983 (= e!1750884 (= (content!4509 lt!990336) z!3597))))

(assert (= (and d!807032 res!1159898) b!2775983))

(declare-fun m!3203337 () Bool)

(assert (=> d!807032 m!3203337))

(declare-fun m!3203339 () Bool)

(assert (=> d!807032 m!3203339))

(declare-fun m!3203341 () Bool)

(assert (=> b!2775983 m!3203341))

(assert (=> bm!181493 d!807032))

(declare-fun d!807034 () Bool)

(assert (not d!807034))

(assert (=> b!2775205 d!807034))

(assert (=> bm!181511 d!806544))

(declare-fun d!807036 () Bool)

(assert (=> d!807036 (= (list!12096 (ite c!450550 input!5495 (_2!19066 lt!989752))) (list!12097 (c!450499 (ite c!450550 input!5495 (_2!19066 lt!989752)))))))

(declare-fun bs!505702 () Bool)

(assert (= bs!505702 d!807036))

(declare-fun m!3203343 () Bool)

(assert (=> bs!505702 m!3203343))

(assert (=> bm!181544 d!807036))

(declare-fun d!807038 () Bool)

(declare-fun e!1750885 () Bool)

(assert (=> d!807038 e!1750885))

(declare-fun res!1159899 () Bool)

(assert (=> d!807038 (=> (not res!1159899) (not e!1750885))))

(declare-fun lt!990337 () List!32172)

(assert (=> d!807038 (= res!1159899 (= (content!4508 lt!990337) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 (head!6152 lt!989496) Nil!32072)))))))

(declare-fun e!1750886 () List!32172)

(assert (=> d!807038 (= lt!990337 e!1750886)))

(declare-fun c!450800 () Bool)

(assert (=> d!807038 (= c!450800 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807038 (= (++!7932 Nil!32072 (Cons!32072 (head!6152 lt!989496) Nil!32072)) lt!990337)))

(declare-fun b!2775987 () Bool)

(assert (=> b!2775987 (= e!1750885 (or (not (= (Cons!32072 (head!6152 lt!989496) Nil!32072) Nil!32072)) (= lt!990337 Nil!32072)))))

(declare-fun b!2775985 () Bool)

(assert (=> b!2775985 (= e!1750886 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 (head!6152 lt!989496) Nil!32072))))))

(declare-fun b!2775984 () Bool)

(assert (=> b!2775984 (= e!1750886 (Cons!32072 (head!6152 lt!989496) Nil!32072))))

(declare-fun b!2775986 () Bool)

(declare-fun res!1159900 () Bool)

(assert (=> b!2775986 (=> (not res!1159900) (not e!1750885))))

(assert (=> b!2775986 (= res!1159900 (= (size!24869 lt!990337) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 (head!6152 lt!989496) Nil!32072)))))))

(assert (= (and d!807038 c!450800) b!2775984))

(assert (= (and d!807038 (not c!450800)) b!2775985))

(assert (= (and d!807038 res!1159899) b!2775986))

(assert (= (and b!2775986 res!1159900) b!2775987))

(declare-fun m!3203345 () Bool)

(assert (=> d!807038 m!3203345))

(assert (=> d!807038 m!3201467))

(declare-fun m!3203347 () Bool)

(assert (=> d!807038 m!3203347))

(declare-fun m!3203349 () Bool)

(assert (=> b!2775985 m!3203349))

(declare-fun m!3203351 () Bool)

(assert (=> b!2775986 m!3203351))

(assert (=> b!2775986 m!3201399))

(declare-fun m!3203353 () Bool)

(assert (=> b!2775986 m!3203353))

(assert (=> b!2775020 d!807038))

(declare-fun d!807040 () Bool)

(declare-fun e!1750887 () Bool)

(assert (=> d!807040 e!1750887))

(declare-fun res!1159901 () Bool)

(assert (=> d!807040 (=> (not res!1159901) (not e!1750887))))

(declare-fun lt!990338 () List!32172)

(assert (=> d!807040 (= res!1159901 (= (content!4508 lt!990338) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989635 Nil!32072)))))))

(declare-fun e!1750888 () List!32172)

(assert (=> d!807040 (= lt!990338 e!1750888)))

(declare-fun c!450801 () Bool)

(assert (=> d!807040 (= c!450801 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807040 (= (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072)) lt!990338)))

(declare-fun b!2775991 () Bool)

(assert (=> b!2775991 (= e!1750887 (or (not (= (Cons!32072 lt!989635 Nil!32072) Nil!32072)) (= lt!990338 Nil!32072)))))

(declare-fun b!2775989 () Bool)

(assert (=> b!2775989 (= e!1750888 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989635 Nil!32072))))))

(declare-fun b!2775988 () Bool)

(assert (=> b!2775988 (= e!1750888 (Cons!32072 lt!989635 Nil!32072))))

(declare-fun b!2775990 () Bool)

(declare-fun res!1159902 () Bool)

(assert (=> b!2775990 (=> (not res!1159902) (not e!1750887))))

(assert (=> b!2775990 (= res!1159902 (= (size!24869 lt!990338) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989635 Nil!32072)))))))

(assert (= (and d!807040 c!450801) b!2775988))

(assert (= (and d!807040 (not c!450801)) b!2775989))

(assert (= (and d!807040 res!1159901) b!2775990))

(assert (= (and b!2775990 res!1159902) b!2775991))

(declare-fun m!3203355 () Bool)

(assert (=> d!807040 m!3203355))

(assert (=> d!807040 m!3201467))

(declare-fun m!3203357 () Bool)

(assert (=> d!807040 m!3203357))

(declare-fun m!3203359 () Bool)

(assert (=> b!2775989 m!3203359))

(declare-fun m!3203361 () Bool)

(assert (=> b!2775990 m!3203361))

(assert (=> b!2775990 m!3201399))

(declare-fun m!3203363 () Bool)

(assert (=> b!2775990 m!3203363))

(assert (=> b!2775020 d!807040))

(declare-fun d!807042 () Bool)

(assert (=> d!807042 (= (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) (h!37492 (getSuffix!1239 lt!989496 Nil!32072)))))

(assert (=> b!2775020 d!807042))

(declare-fun d!807044 () Bool)

(declare-fun e!1750889 () Bool)

(assert (=> d!807044 e!1750889))

(declare-fun res!1159903 () Bool)

(assert (=> d!807044 (=> (not res!1159903) (not e!1750889))))

(declare-fun lt!990339 () List!32172)

(assert (=> d!807044 (= res!1159903 (= (content!4508 lt!990339) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)))))))

(declare-fun e!1750890 () List!32172)

(assert (=> d!807044 (= lt!990339 e!1750890)))

(declare-fun c!450802 () Bool)

(assert (=> d!807044 (= c!450802 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807044 (= (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)) lt!990339)))

(declare-fun b!2775995 () Bool)

(assert (=> b!2775995 (= e!1750889 (or (not (= (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072) Nil!32072)) (= lt!990339 Nil!32072)))))

(declare-fun b!2775993 () Bool)

(assert (=> b!2775993 (= e!1750890 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072))))))

(declare-fun b!2775992 () Bool)

(assert (=> b!2775992 (= e!1750890 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072))))

(declare-fun b!2775994 () Bool)

(declare-fun res!1159904 () Bool)

(assert (=> b!2775994 (=> (not res!1159904) (not e!1750889))))

(assert (=> b!2775994 (= res!1159904 (= (size!24869 lt!990339) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)))))))

(assert (= (and d!807044 c!450802) b!2775992))

(assert (= (and d!807044 (not c!450802)) b!2775993))

(assert (= (and d!807044 res!1159903) b!2775994))

(assert (= (and b!2775994 res!1159904) b!2775995))

(declare-fun m!3203365 () Bool)

(assert (=> d!807044 m!3203365))

(assert (=> d!807044 m!3201467))

(declare-fun m!3203367 () Bool)

(assert (=> d!807044 m!3203367))

(declare-fun m!3203369 () Bool)

(assert (=> b!2775993 m!3203369))

(declare-fun m!3203371 () Bool)

(assert (=> b!2775994 m!3203371))

(assert (=> b!2775994 m!3201399))

(declare-fun m!3203373 () Bool)

(assert (=> b!2775994 m!3203373))

(assert (=> b!2775020 d!807044))

(assert (=> b!2775020 d!806506))

(assert (=> b!2775020 d!806508))

(assert (=> b!2775020 d!806518))

(assert (=> b!2775020 d!806514))

(assert (=> b!2775020 d!806510))

(assert (=> b!2775020 d!806494))

(declare-fun b!2775997 () Bool)

(declare-fun res!1159906 () Bool)

(declare-fun e!1750893 () Bool)

(assert (=> b!2775997 (=> (not res!1159906) (not e!1750893))))

(assert (=> b!2775997 (= res!1159906 (= (head!6152 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072))) (head!6152 lt!989496)))))

(declare-fun b!2775996 () Bool)

(declare-fun e!1750892 () Bool)

(assert (=> b!2775996 (= e!1750892 e!1750893)))

(declare-fun res!1159907 () Bool)

(assert (=> b!2775996 (=> (not res!1159907) (not e!1750893))))

(assert (=> b!2775996 (= res!1159907 (not ((_ is Nil!32072) lt!989496)))))

(declare-fun d!807046 () Bool)

(declare-fun e!1750891 () Bool)

(assert (=> d!807046 e!1750891))

(declare-fun res!1159908 () Bool)

(assert (=> d!807046 (=> res!1159908 e!1750891)))

(declare-fun lt!990340 () Bool)

(assert (=> d!807046 (= res!1159908 (not lt!990340))))

(assert (=> d!807046 (= lt!990340 e!1750892)))

(declare-fun res!1159905 () Bool)

(assert (=> d!807046 (=> res!1159905 e!1750892)))

(assert (=> d!807046 (= res!1159905 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072))))))

(assert (=> d!807046 (= (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)) lt!989496) lt!990340)))

(declare-fun b!2775998 () Bool)

(assert (=> b!2775998 (= e!1750893 (isPrefix!2557 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072))) (tail!4390 lt!989496)))))

(declare-fun b!2775999 () Bool)

(assert (=> b!2775999 (= e!1750891 (>= (size!24869 lt!989496) (size!24869 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)))))))

(assert (= (and d!807046 (not res!1159905)) b!2775996))

(assert (= (and b!2775996 res!1159907) b!2775997))

(assert (= (and b!2775997 res!1159906) b!2775998))

(assert (= (and d!807046 (not res!1159908)) b!2775999))

(assert (=> b!2775997 m!3201535))

(declare-fun m!3203375 () Bool)

(assert (=> b!2775997 m!3203375))

(assert (=> b!2775997 m!3201449))

(assert (=> b!2775998 m!3201535))

(declare-fun m!3203377 () Bool)

(assert (=> b!2775998 m!3203377))

(assert (=> b!2775998 m!3201395))

(assert (=> b!2775998 m!3203377))

(assert (=> b!2775998 m!3201395))

(declare-fun m!3203379 () Bool)

(assert (=> b!2775998 m!3203379))

(assert (=> b!2775999 m!3201391))

(assert (=> b!2775999 m!3201535))

(declare-fun m!3203381 () Bool)

(assert (=> b!2775999 m!3203381))

(assert (=> b!2775020 d!807046))

(assert (=> b!2775020 d!806512))

(declare-fun d!807048 () Bool)

(assert (=> d!807048 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072)) lt!989637) lt!989496)))

(declare-fun lt!990341 () Unit!46204)

(assert (=> d!807048 (= lt!990341 (choose!16277 Nil!32072 lt!989635 lt!989637 lt!989496))))

(assert (=> d!807048 (= (++!7932 Nil!32072 (Cons!32072 lt!989635 lt!989637)) lt!989496)))

(assert (=> d!807048 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989635 lt!989637 lt!989496) lt!990341)))

(declare-fun bs!505703 () Bool)

(assert (= bs!505703 d!807048))

(assert (=> bs!505703 m!3201533))

(assert (=> bs!505703 m!3201533))

(assert (=> bs!505703 m!3201541))

(declare-fun m!3203383 () Bool)

(assert (=> bs!505703 m!3203383))

(declare-fun m!3203385 () Bool)

(assert (=> bs!505703 m!3203385))

(assert (=> b!2775020 d!807048))

(declare-fun d!807050 () Bool)

(declare-fun e!1750894 () Bool)

(assert (=> d!807050 e!1750894))

(declare-fun res!1159909 () Bool)

(assert (=> d!807050 (=> (not res!1159909) (not e!1750894))))

(declare-fun lt!990342 () List!32172)

(assert (=> d!807050 (= res!1159909 (= (content!4508 lt!990342) ((_ map or) (content!4508 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072))) (content!4508 lt!989637))))))

(declare-fun e!1750895 () List!32172)

(assert (=> d!807050 (= lt!990342 e!1750895)))

(declare-fun c!450803 () Bool)

(assert (=> d!807050 (= c!450803 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072))))))

(assert (=> d!807050 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072)) lt!989637) lt!990342)))

(declare-fun b!2776003 () Bool)

(assert (=> b!2776003 (= e!1750894 (or (not (= lt!989637 Nil!32072)) (= lt!990342 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072)))))))

(declare-fun b!2776001 () Bool)

(assert (=> b!2776001 (= e!1750895 (Cons!32072 (h!37492 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072))) (++!7932 (t!228300 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072))) lt!989637)))))

(declare-fun b!2776000 () Bool)

(assert (=> b!2776000 (= e!1750895 lt!989637)))

(declare-fun b!2776002 () Bool)

(declare-fun res!1159910 () Bool)

(assert (=> b!2776002 (=> (not res!1159910) (not e!1750894))))

(assert (=> b!2776002 (= res!1159910 (= (size!24869 lt!990342) (+ (size!24869 (++!7932 Nil!32072 (Cons!32072 lt!989635 Nil!32072))) (size!24869 lt!989637))))))

(assert (= (and d!807050 c!450803) b!2776000))

(assert (= (and d!807050 (not c!450803)) b!2776001))

(assert (= (and d!807050 res!1159909) b!2776002))

(assert (= (and b!2776002 res!1159910) b!2776003))

(declare-fun m!3203387 () Bool)

(assert (=> d!807050 m!3203387))

(assert (=> d!807050 m!3201533))

(declare-fun m!3203389 () Bool)

(assert (=> d!807050 m!3203389))

(declare-fun m!3203391 () Bool)

(assert (=> d!807050 m!3203391))

(declare-fun m!3203393 () Bool)

(assert (=> b!2776001 m!3203393))

(declare-fun m!3203395 () Bool)

(assert (=> b!2776002 m!3203395))

(assert (=> b!2776002 m!3201533))

(declare-fun m!3203397 () Bool)

(assert (=> b!2776002 m!3203397))

(declare-fun m!3203399 () Bool)

(assert (=> b!2776002 m!3203399))

(assert (=> b!2775020 d!807050))

(declare-fun d!807052 () Bool)

(assert (=> d!807052 (and (= lt!989512 Nil!32072) (= lt!989529 lt!989496))))

(assert (=> d!807052 true))

(declare-fun _$50!324 () Unit!46204)

(assert (=> d!807052 (= (choose!16280 lt!989512 lt!989529 Nil!32072 lt!989496) _$50!324)))

(assert (=> d!806584 d!807052))

(declare-fun d!807054 () Bool)

(declare-fun e!1750896 () Bool)

(assert (=> d!807054 e!1750896))

(declare-fun res!1159911 () Bool)

(assert (=> d!807054 (=> (not res!1159911) (not e!1750896))))

(declare-fun lt!990343 () List!32172)

(assert (=> d!807054 (= res!1159911 (= (content!4508 lt!990343) ((_ map or) (content!4508 lt!989512) (content!4508 lt!989529))))))

(declare-fun e!1750897 () List!32172)

(assert (=> d!807054 (= lt!990343 e!1750897)))

(declare-fun c!450804 () Bool)

(assert (=> d!807054 (= c!450804 ((_ is Nil!32072) lt!989512))))

(assert (=> d!807054 (= (++!7932 lt!989512 lt!989529) lt!990343)))

(declare-fun b!2776007 () Bool)

(assert (=> b!2776007 (= e!1750896 (or (not (= lt!989529 Nil!32072)) (= lt!990343 lt!989512)))))

(declare-fun b!2776005 () Bool)

(assert (=> b!2776005 (= e!1750897 (Cons!32072 (h!37492 lt!989512) (++!7932 (t!228300 lt!989512) lt!989529)))))

(declare-fun b!2776004 () Bool)

(assert (=> b!2776004 (= e!1750897 lt!989529)))

(declare-fun b!2776006 () Bool)

(declare-fun res!1159912 () Bool)

(assert (=> b!2776006 (=> (not res!1159912) (not e!1750896))))

(assert (=> b!2776006 (= res!1159912 (= (size!24869 lt!990343) (+ (size!24869 lt!989512) (size!24869 lt!989529))))))

(assert (= (and d!807054 c!450804) b!2776004))

(assert (= (and d!807054 (not c!450804)) b!2776005))

(assert (= (and d!807054 res!1159911) b!2776006))

(assert (= (and b!2776006 res!1159912) b!2776007))

(declare-fun m!3203401 () Bool)

(assert (=> d!807054 m!3203401))

(declare-fun m!3203403 () Bool)

(assert (=> d!807054 m!3203403))

(declare-fun m!3203405 () Bool)

(assert (=> d!807054 m!3203405))

(declare-fun m!3203407 () Bool)

(assert (=> b!2776005 m!3203407))

(declare-fun m!3203409 () Bool)

(assert (=> b!2776006 m!3203409))

(declare-fun m!3203411 () Bool)

(assert (=> b!2776006 m!3203411))

(declare-fun m!3203413 () Bool)

(assert (=> b!2776006 m!3203413))

(assert (=> d!806584 d!807054))

(assert (=> d!806584 d!806458))

(declare-fun bs!505704 () Bool)

(declare-fun d!807056 () Bool)

(assert (= bs!505704 (and d!807056 d!806638)))

(declare-fun lambda!101877 () Int)

(assert (=> bs!505704 (not (= lambda!101877 lambda!101830))))

(declare-fun bs!505705 () Bool)

(assert (= bs!505705 (and d!807056 b!2774981)))

(assert (=> bs!505705 (not (= lambda!101877 lambda!101810))))

(declare-fun bs!505706 () Bool)

(assert (= bs!505706 (and d!807056 d!807008)))

(assert (=> bs!505706 (not (= lambda!101877 lambda!101869))))

(declare-fun bs!505707 () Bool)

(assert (= bs!505707 (and d!807056 b!2775957)))

(assert (=> bs!505707 (not (= lambda!101877 lambda!101870))))

(declare-fun bs!505708 () Bool)

(assert (= bs!505708 (and d!807056 b!2775512)))

(assert (=> bs!505708 (not (= lambda!101877 lambda!101842))))

(declare-fun bs!505709 () Bool)

(assert (= bs!505709 (and d!807056 b!2775958)))

(assert (=> bs!505709 (not (= lambda!101877 lambda!101871))))

(declare-fun bs!505710 () Bool)

(assert (= bs!505710 (and d!807056 d!806678)))

(assert (=> bs!505710 (= lambda!101877 lambda!101836)))

(declare-fun bs!505711 () Bool)

(assert (= bs!505711 (and d!807056 b!2775434)))

(assert (=> bs!505711 (not (= lambda!101877 lambda!101832))))

(declare-fun bs!505712 () Bool)

(assert (= bs!505712 (and d!807056 d!806718)))

(assert (=> bs!505712 (not (= lambda!101877 lambda!101840))))

(declare-fun bs!505713 () Bool)

(assert (= bs!505713 (and d!807056 d!806544)))

(assert (=> bs!505713 (= lambda!101877 lambda!101814)))

(declare-fun bs!505714 () Bool)

(assert (= bs!505714 (and d!807056 d!806468)))

(assert (=> bs!505714 (not (= lambda!101877 lambda!101809))))

(declare-fun bs!505715 () Bool)

(assert (= bs!505715 (and d!807056 d!806730)))

(assert (=> bs!505715 (not (= lambda!101877 lambda!101849))))

(declare-fun bs!505716 () Bool)

(assert (= bs!505716 (and d!807056 b!2775433)))

(assert (=> bs!505716 (not (= lambda!101877 lambda!101831))))

(declare-fun bs!505717 () Bool)

(assert (= bs!505717 (and d!807056 b!2775511)))

(assert (=> bs!505717 (not (= lambda!101877 lambda!101841))))

(declare-fun bs!505718 () Bool)

(assert (= bs!505718 (and d!807056 b!2774982)))

(assert (=> bs!505718 (not (= lambda!101877 lambda!101811))))

(declare-fun bs!505719 () Bool)

(assert (= bs!505719 (and d!807056 d!806614)))

(assert (=> bs!505719 (not (= lambda!101877 lambda!101827))))

(assert (=> d!807056 (= (nullableZipper!636 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541))) (exists!977 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lambda!101877))))

(declare-fun bs!505720 () Bool)

(assert (= bs!505720 d!807056))

(declare-fun m!3203415 () Bool)

(assert (=> bs!505720 m!3203415))

(assert (=> bm!181571 d!807056))

(assert (=> bm!181565 d!806592))

(declare-fun d!807058 () Bool)

(declare-fun lt!990344 () Int)

(assert (=> d!807058 (>= lt!990344 0)))

(declare-fun e!1750898 () Int)

(assert (=> d!807058 (= lt!990344 e!1750898)))

(declare-fun c!450805 () Bool)

(assert (=> d!807058 (= c!450805 ((_ is Nil!32072) (list!12096 input!5495)))))

(assert (=> d!807058 (= (size!24869 (list!12096 input!5495)) lt!990344)))

(declare-fun b!2776008 () Bool)

(assert (=> b!2776008 (= e!1750898 0)))

(declare-fun b!2776009 () Bool)

(assert (=> b!2776009 (= e!1750898 (+ 1 (size!24869 (t!228300 (list!12096 input!5495)))))))

(assert (= (and d!807058 c!450805) b!2776008))

(assert (= (and d!807058 (not c!450805)) b!2776009))

(declare-fun m!3203417 () Bool)

(assert (=> b!2776009 m!3203417))

(assert (=> d!806490 d!807058))

(assert (=> d!806490 d!806470))

(declare-fun d!807060 () Bool)

(declare-fun lt!990347 () Int)

(assert (=> d!807060 (= lt!990347 (size!24869 (list!12097 (c!450499 input!5495))))))

(assert (=> d!807060 (= lt!990347 (ite ((_ is Empty!9981) (c!450499 input!5495)) 0 (ite ((_ is Leaf!15201) (c!450499 input!5495)) (csize!20193 (c!450499 input!5495)) (csize!20192 (c!450499 input!5495)))))))

(assert (=> d!807060 (= (size!24870 (c!450499 input!5495)) lt!990347)))

(declare-fun bs!505721 () Bool)

(assert (= bs!505721 d!807060))

(assert (=> bs!505721 m!3201523))

(assert (=> bs!505721 m!3201523))

(declare-fun m!3203419 () Bool)

(assert (=> bs!505721 m!3203419))

(assert (=> d!806490 d!807060))

(declare-fun b!2776010 () Bool)

(declare-fun res!1159915 () Bool)

(declare-fun e!1750900 () Bool)

(assert (=> b!2776010 (=> (not res!1159915) (not e!1750900))))

(assert (=> b!2776010 (= res!1159915 (isBalanced!3044 (right!24748 (c!450499 (_1!19066 lt!989907)))))))

(declare-fun b!2776011 () Bool)

(declare-fun res!1159913 () Bool)

(assert (=> b!2776011 (=> (not res!1159913) (not e!1750900))))

(assert (=> b!2776011 (= res!1159913 (<= (- (height!1489 (left!24418 (c!450499 (_1!19066 lt!989907)))) (height!1489 (right!24748 (c!450499 (_1!19066 lt!989907))))) 1))))

(declare-fun b!2776012 () Bool)

(assert (=> b!2776012 (= e!1750900 (not (isEmpty!18099 (right!24748 (c!450499 (_1!19066 lt!989907))))))))

(declare-fun b!2776013 () Bool)

(declare-fun res!1159918 () Bool)

(assert (=> b!2776013 (=> (not res!1159918) (not e!1750900))))

(assert (=> b!2776013 (= res!1159918 (isBalanced!3044 (left!24418 (c!450499 (_1!19066 lt!989907)))))))

(declare-fun b!2776014 () Bool)

(declare-fun e!1750899 () Bool)

(assert (=> b!2776014 (= e!1750899 e!1750900)))

(declare-fun res!1159917 () Bool)

(assert (=> b!2776014 (=> (not res!1159917) (not e!1750900))))

(assert (=> b!2776014 (= res!1159917 (<= (- 1) (- (height!1489 (left!24418 (c!450499 (_1!19066 lt!989907)))) (height!1489 (right!24748 (c!450499 (_1!19066 lt!989907)))))))))

(declare-fun b!2776015 () Bool)

(declare-fun res!1159914 () Bool)

(assert (=> b!2776015 (=> (not res!1159914) (not e!1750900))))

(assert (=> b!2776015 (= res!1159914 (not (isEmpty!18099 (left!24418 (c!450499 (_1!19066 lt!989907))))))))

(declare-fun d!807062 () Bool)

(declare-fun res!1159916 () Bool)

(assert (=> d!807062 (=> res!1159916 e!1750899)))

(assert (=> d!807062 (= res!1159916 (not ((_ is Node!9981) (c!450499 (_1!19066 lt!989907)))))))

(assert (=> d!807062 (= (isBalanced!3044 (c!450499 (_1!19066 lt!989907))) e!1750899)))

(assert (= (and d!807062 (not res!1159916)) b!2776014))

(assert (= (and b!2776014 res!1159917) b!2776011))

(assert (= (and b!2776011 res!1159913) b!2776013))

(assert (= (and b!2776013 res!1159918) b!2776010))

(assert (= (and b!2776010 res!1159915) b!2776015))

(assert (= (and b!2776015 res!1159914) b!2776012))

(declare-fun m!3203421 () Bool)

(assert (=> b!2776011 m!3203421))

(declare-fun m!3203423 () Bool)

(assert (=> b!2776011 m!3203423))

(declare-fun m!3203425 () Bool)

(assert (=> b!2776015 m!3203425))

(assert (=> b!2776014 m!3203421))

(assert (=> b!2776014 m!3203423))

(declare-fun m!3203427 () Bool)

(assert (=> b!2776010 m!3203427))

(declare-fun m!3203429 () Bool)

(assert (=> b!2776013 m!3203429))

(declare-fun m!3203431 () Bool)

(assert (=> b!2776012 m!3203431))

(assert (=> d!806558 d!807062))

(declare-fun b!2776016 () Bool)

(declare-fun e!1750910 () tuple2!32298)

(declare-fun e!1750909 () tuple2!32298)

(assert (=> b!2776016 (= e!1750910 e!1750909)))

(declare-fun c!450807 () Bool)

(assert (=> b!2776016 (= c!450807 (< 0 (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2776017 () Bool)

(declare-fun e!1750902 () Int)

(assert (=> b!2776017 (= e!1750902 0)))

(declare-fun lt!990358 () List!32172)

(declare-fun call!181662 () Int)

(declare-fun lt!990359 () List!32172)

(declare-fun bm!181657 () Bool)

(declare-fun c!450806 () Bool)

(assert (=> bm!181657 (= call!181662 (size!24869 (ite c!450806 lt!990358 lt!990359)))))

(declare-fun call!181666 () Conc!9981)

(declare-fun lt!990353 () tuple2!32298)

(declare-fun bm!181658 () Bool)

(declare-fun lt!990350 () tuple2!32298)

(assert (=> bm!181658 (= call!181666 (++!7933 (ite c!450807 (_2!19074 lt!990350) (left!24418 (c!450499 input!5495))) (ite c!450807 (right!24748 (c!450499 input!5495)) (_1!19074 lt!990353))))))

(declare-fun b!2776018 () Bool)

(assert (=> b!2776018 (= e!1750910 (tuple2!32299 (left!24418 (c!450499 input!5495)) (right!24748 (c!450499 input!5495))))))

(declare-fun b!2776019 () Bool)

(declare-fun c!450812 () Bool)

(assert (=> b!2776019 (= c!450812 (<= 0 0))))

(declare-fun e!1750901 () tuple2!32298)

(declare-fun e!1750905 () tuple2!32298)

(assert (=> b!2776019 (= e!1750901 e!1750905)))

(declare-fun d!807064 () Bool)

(declare-fun e!1750912 () Bool)

(assert (=> d!807064 e!1750912))

(declare-fun res!1159919 () Bool)

(assert (=> d!807064 (=> (not res!1159919) (not e!1750912))))

(declare-fun lt!990356 () tuple2!32298)

(assert (=> d!807064 (= res!1159919 (isBalanced!3044 (_1!19074 lt!990356)))))

(declare-fun e!1750903 () tuple2!32298)

(assert (=> d!807064 (= lt!990356 e!1750903)))

(declare-fun c!450814 () Bool)

(assert (=> d!807064 (= c!450814 ((_ is Empty!9981) (c!450499 input!5495)))))

(assert (=> d!807064 (isBalanced!3044 (c!450499 input!5495))))

(assert (=> d!807064 (= (splitAt!120 (c!450499 input!5495) 0) lt!990356)))

(declare-fun bm!181659 () Bool)

(declare-fun c!450813 () Bool)

(assert (=> bm!181659 (= c!450813 c!450806)))

(declare-fun e!1750904 () List!32172)

(declare-fun call!181664 () tuple2!32288)

(assert (=> bm!181659 (= call!181664 (splitAtIndex!52 e!1750904 (ite c!450806 0 e!1750902)))))

(declare-fun b!2776020 () Bool)

(assert (=> b!2776020 (= e!1750903 e!1750901)))

(assert (=> b!2776020 (= c!450806 ((_ is Leaf!15201) (c!450499 input!5495)))))

(declare-fun b!2776021 () Bool)

(declare-fun e!1750906 () Int)

(assert (=> b!2776021 (= e!1750906 (- 0 (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2776022 () Bool)

(declare-fun e!1750911 () tuple2!32298)

(assert (=> b!2776022 (= e!1750905 e!1750911)))

(declare-fun c!450811 () Bool)

(assert (=> b!2776022 (= c!450811 (= 0 (csize!20193 (c!450499 input!5495))))))

(declare-fun b!2776023 () Bool)

(assert (=> b!2776023 (= e!1750904 (list!12098 (xs!13091 (c!450499 input!5495))))))

(declare-fun b!2776024 () Bool)

(assert (=> b!2776024 (= e!1750912 (= (tuple2!32289 (list!12097 (_1!19074 lt!990356)) (list!12097 (_2!19074 lt!990356))) (splitAtIndex!52 (list!12097 (c!450499 input!5495)) 0)))))

(declare-fun b!2776025 () Bool)

(declare-fun e!1750907 () tuple2!32288)

(declare-fun lt!990354 () List!32172)

(assert (=> b!2776025 (= e!1750907 (tuple2!32289 lt!990359 lt!990354))))

(declare-fun b!2776026 () Bool)

(assert (=> b!2776026 (= e!1750905 (tuple2!32299 Empty!9981 (c!450499 input!5495)))))

(declare-fun b!2776027 () Bool)

(assert (=> b!2776027 (= e!1750911 (tuple2!32299 (c!450499 input!5495) Empty!9981))))

(declare-fun b!2776028 () Bool)

(assert (=> b!2776028 (= e!1750906 0)))

(declare-fun b!2776029 () Bool)

(assert (=> b!2776029 (= e!1750903 (tuple2!32299 (c!450499 input!5495) (c!450499 input!5495)))))

(declare-fun b!2776030 () Bool)

(declare-fun call!181667 () tuple2!32298)

(assert (=> b!2776030 (= lt!990353 call!181667)))

(assert (=> b!2776030 (= e!1750909 (tuple2!32299 call!181666 (_2!19074 lt!990353)))))

(declare-fun b!2776031 () Bool)

(declare-fun lt!990357 () Unit!46204)

(declare-fun lt!990348 () Unit!46204)

(assert (=> b!2776031 (= lt!990357 lt!990348)))

(assert (=> b!2776031 (= (drop!1710 lt!990358 0) (slice!744 lt!990358 0 call!181662))))

(assert (=> b!2776031 (= lt!990348 (dropLemma!14 lt!990358 0))))

(assert (=> b!2776031 (= lt!990358 (list!12098 (xs!13091 (c!450499 input!5495))))))

(declare-fun lt!990360 () tuple2!32288)

(assert (=> b!2776031 (= lt!990360 call!181664)))

(assert (=> b!2776031 (= e!1750911 (tuple2!32299 (Leaf!15201 (slice!745 (xs!13091 (c!450499 input!5495)) 0 0) 0) (Leaf!15201 (slice!745 (xs!13091 (c!450499 input!5495)) 0 (csize!20193 (c!450499 input!5495))) (- (csize!20193 (c!450499 input!5495)) 0))))))

(declare-fun b!2776032 () Bool)

(declare-fun lt!990355 () tuple2!32288)

(declare-fun call!181663 () tuple2!32288)

(assert (=> b!2776032 (= lt!990355 call!181663)))

(declare-fun e!1750908 () tuple2!32288)

(declare-fun call!181665 () List!32172)

(assert (=> b!2776032 (= e!1750908 (tuple2!32289 call!181665 (_2!19065 lt!990355)))))

(declare-fun b!2776033 () Bool)

(declare-fun lt!990351 () tuple2!32288)

(assert (=> b!2776033 (= lt!990351 call!181663)))

(assert (=> b!2776033 (= e!1750908 (tuple2!32289 (_1!19065 lt!990351) call!181665))))

(declare-fun b!2776034 () Bool)

(assert (=> b!2776034 (= e!1750902 (- 0 call!181662))))

(declare-fun b!2776035 () Bool)

(declare-fun c!450816 () Bool)

(assert (=> b!2776035 (= c!450816 (= (size!24870 (left!24418 (c!450499 input!5495))) 0))))

(declare-fun lt!990349 () Unit!46204)

(declare-fun lt!990352 () Unit!46204)

(assert (=> b!2776035 (= lt!990349 lt!990352)))

(assert (=> b!2776035 (= (splitAtIndex!52 (++!7932 lt!990359 lt!990354) 0) e!1750907)))

(declare-fun c!450810 () Bool)

(assert (=> b!2776035 (= c!450810 (= call!181662 0))))

(assert (=> b!2776035 (= lt!990352 (splitAtLemma!14 lt!990359 lt!990354 0))))

(assert (=> b!2776035 (= lt!990354 (list!12097 (right!24748 (c!450499 input!5495))))))

(assert (=> b!2776035 (= lt!990359 (list!12097 (left!24418 (c!450499 input!5495))))))

(assert (=> b!2776035 (= e!1750901 e!1750910)))

(declare-fun b!2776036 () Bool)

(assert (=> b!2776036 (= e!1750907 e!1750908)))

(declare-fun c!450808 () Bool)

(assert (=> b!2776036 (= c!450808 (< 0 call!181662))))

(declare-fun bm!181660 () Bool)

(declare-fun c!450815 () Bool)

(assert (=> bm!181660 (= c!450815 c!450807)))

(assert (=> bm!181660 (= call!181667 (splitAt!120 (ite c!450807 (left!24418 (c!450499 input!5495)) (right!24748 (c!450499 input!5495))) e!1750906))))

(declare-fun bm!181661 () Bool)

(assert (=> bm!181661 (= call!181665 (++!7932 (ite c!450808 (_2!19065 lt!990351) lt!990359) (ite c!450808 lt!990354 (_1!19065 lt!990355))))))

(declare-fun b!2776037 () Bool)

(declare-fun res!1159920 () Bool)

(assert (=> b!2776037 (=> (not res!1159920) (not e!1750912))))

(assert (=> b!2776037 (= res!1159920 (isBalanced!3044 (_2!19074 lt!990356)))))

(declare-fun b!2776038 () Bool)

(assert (=> b!2776038 (= lt!990350 call!181667)))

(assert (=> b!2776038 (= e!1750909 (tuple2!32299 (_1!19074 lt!990350) call!181666))))

(declare-fun b!2776039 () Bool)

(assert (=> b!2776039 (= e!1750904 (ite c!450808 lt!990359 lt!990354))))

(declare-fun bm!181662 () Bool)

(declare-fun c!450809 () Bool)

(assert (=> bm!181662 (= c!450809 c!450808)))

(assert (=> bm!181662 (= call!181663 call!181664)))

(assert (= (and d!807064 c!450814) b!2776029))

(assert (= (and d!807064 (not c!450814)) b!2776020))

(assert (= (and b!2776020 c!450806) b!2776019))

(assert (= (and b!2776020 (not c!450806)) b!2776035))

(assert (= (and b!2776019 c!450812) b!2776026))

(assert (= (and b!2776019 (not c!450812)) b!2776022))

(assert (= (and b!2776022 c!450811) b!2776027))

(assert (= (and b!2776022 (not c!450811)) b!2776031))

(assert (= (and b!2776035 c!450810) b!2776025))

(assert (= (and b!2776035 (not c!450810)) b!2776036))

(assert (= (and b!2776036 c!450808) b!2776033))

(assert (= (and b!2776036 (not c!450808)) b!2776032))

(assert (= (or b!2776033 b!2776032) bm!181661))

(assert (= (or b!2776033 b!2776032) bm!181662))

(assert (= (and bm!181662 c!450809) b!2776017))

(assert (= (and bm!181662 (not c!450809)) b!2776034))

(assert (= (and b!2776035 c!450816) b!2776018))

(assert (= (and b!2776035 (not c!450816)) b!2776016))

(assert (= (and b!2776016 c!450807) b!2776038))

(assert (= (and b!2776016 (not c!450807)) b!2776030))

(assert (= (or b!2776038 b!2776030) bm!181658))

(assert (= (or b!2776038 b!2776030) bm!181660))

(assert (= (and bm!181660 c!450815) b!2776028))

(assert (= (and bm!181660 (not c!450815)) b!2776021))

(assert (= (or b!2776031 b!2776034 b!2776035 b!2776036) bm!181657))

(assert (= (or b!2776031 bm!181662) bm!181659))

(assert (= (and bm!181659 c!450813) b!2776023))

(assert (= (and bm!181659 (not c!450813)) b!2776039))

(assert (= (and d!807064 res!1159919) b!2776037))

(assert (= (and b!2776037 res!1159920) b!2776024))

(declare-fun m!3203433 () Bool)

(assert (=> b!2776031 m!3203433))

(assert (=> b!2776031 m!3202130))

(declare-fun m!3203435 () Bool)

(assert (=> b!2776031 m!3203435))

(declare-fun m!3203437 () Bool)

(assert (=> b!2776031 m!3203437))

(declare-fun m!3203439 () Bool)

(assert (=> b!2776031 m!3203439))

(declare-fun m!3203441 () Bool)

(assert (=> b!2776031 m!3203441))

(declare-fun m!3203443 () Bool)

(assert (=> bm!181658 m!3203443))

(declare-fun m!3203445 () Bool)

(assert (=> b!2776024 m!3203445))

(declare-fun m!3203447 () Bool)

(assert (=> b!2776024 m!3203447))

(assert (=> b!2776024 m!3201523))

(assert (=> b!2776024 m!3201523))

(declare-fun m!3203449 () Bool)

(assert (=> b!2776024 m!3203449))

(declare-fun m!3203451 () Bool)

(assert (=> d!807064 m!3203451))

(assert (=> d!807064 m!3201563))

(assert (=> b!2776016 m!3202701))

(declare-fun m!3203453 () Bool)

(assert (=> bm!181661 m!3203453))

(declare-fun m!3203455 () Bool)

(assert (=> bm!181657 m!3203455))

(declare-fun m!3203457 () Bool)

(assert (=> bm!181659 m!3203457))

(declare-fun m!3203459 () Bool)

(assert (=> b!2776037 m!3203459))

(assert (=> b!2776023 m!3202130))

(assert (=> b!2776021 m!3202701))

(assert (=> b!2776035 m!3202132))

(assert (=> b!2776035 m!3202701))

(declare-fun m!3203461 () Bool)

(assert (=> b!2776035 m!3203461))

(assert (=> b!2776035 m!3202134))

(declare-fun m!3203463 () Bool)

(assert (=> b!2776035 m!3203463))

(assert (=> b!2776035 m!3203463))

(declare-fun m!3203465 () Bool)

(assert (=> b!2776035 m!3203465))

(declare-fun m!3203467 () Bool)

(assert (=> bm!181660 m!3203467))

(assert (=> d!806558 d!807064))

(assert (=> d!806558 d!806742))

(declare-fun d!807066 () Bool)

(assert (=> d!807066 (= (isEmpty!18097 (_1!19065 lt!989633)) ((_ is Nil!32072) (_1!19065 lt!989633)))))

(assert (=> b!2775024 d!807066))

(declare-fun d!807068 () Bool)

(declare-fun c!450817 () Bool)

(assert (=> d!807068 (= c!450817 ((_ is Nil!32072) lt!989919))))

(declare-fun e!1750913 () (InoxSet C!16364))

(assert (=> d!807068 (= (content!4508 lt!989919) e!1750913)))

(declare-fun b!2776040 () Bool)

(assert (=> b!2776040 (= e!1750913 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2776041 () Bool)

(assert (=> b!2776041 (= e!1750913 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 lt!989919) true) (content!4508 (t!228300 lt!989919))))))

(assert (= (and d!807068 c!450817) b!2776040))

(assert (= (and d!807068 (not c!450817)) b!2776041))

(declare-fun m!3203469 () Bool)

(assert (=> b!2776041 m!3203469))

(declare-fun m!3203471 () Bool)

(assert (=> b!2776041 m!3203471))

(assert (=> d!806586 d!807068))

(assert (=> d!806586 d!806776))

(declare-fun d!807070 () Bool)

(declare-fun c!450818 () Bool)

(assert (=> d!807070 (= c!450818 ((_ is Nil!32072) (Cons!32072 lt!989503 Nil!32072)))))

(declare-fun e!1750914 () (InoxSet C!16364))

(assert (=> d!807070 (= (content!4508 (Cons!32072 lt!989503 Nil!32072)) e!1750914)))

(declare-fun b!2776042 () Bool)

(assert (=> b!2776042 (= e!1750914 ((as const (Array C!16364 Bool)) false))))

(declare-fun b!2776043 () Bool)

(assert (=> b!2776043 (= e!1750914 ((_ map or) (store ((as const (Array C!16364 Bool)) false) (h!37492 (Cons!32072 lt!989503 Nil!32072)) true) (content!4508 (t!228300 (Cons!32072 lt!989503 Nil!32072)))))))

(assert (= (and d!807070 c!450818) b!2776042))

(assert (= (and d!807070 (not c!450818)) b!2776043))

(declare-fun m!3203473 () Bool)

(assert (=> b!2776043 m!3203473))

(declare-fun m!3203475 () Bool)

(assert (=> b!2776043 m!3203475))

(assert (=> d!806586 d!807070))

(declare-fun d!807072 () Bool)

(assert (not d!807072))

(assert (=> b!2775104 d!807072))

(declare-fun bs!505722 () Bool)

(declare-fun b!2776045 () Bool)

(assert (= bs!505722 (and b!2776045 b!2775450)))

(declare-fun lambda!101878 () Int)

(assert (=> bs!505722 (= lambda!101878 lambda!101835)))

(declare-fun bs!505723 () Bool)

(assert (= bs!505723 (and b!2776045 b!2775876)))

(assert (=> bs!505723 (= lambda!101878 lambda!101863)))

(declare-fun bs!505724 () Bool)

(assert (= bs!505724 (and b!2776045 b!2775980)))

(assert (=> bs!505724 (= lambda!101878 lambda!101872)))

(declare-fun d!807074 () Bool)

(declare-fun res!1159921 () Bool)

(declare-fun e!1750915 () Bool)

(assert (=> d!807074 (=> (not res!1159921) (not e!1750915))))

(assert (=> d!807074 (= res!1159921 (valid!2979 (cache!3863 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542)))))))

(assert (=> d!807074 (= (validCacheMapDown!400 (cache!3863 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542)))) e!1750915)))

(declare-fun b!2776044 () Bool)

(declare-fun res!1159922 () Bool)

(assert (=> b!2776044 (=> (not res!1159922) (not e!1750915))))

(assert (=> b!2776044 (= res!1159922 (invariantList!453 (toList!1843 (map!6972 (cache!3863 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542)))))))))

(assert (=> b!2776045 (= e!1750915 (forall!6635 (toList!1843 (map!6972 (cache!3863 (ite c!450487 (_3!2922 lt!989507) (_3!2922 lt!989542))))) lambda!101878))))

(assert (= (and d!807074 res!1159921) b!2776044))

(assert (= (and b!2776044 res!1159922) b!2776045))

(declare-fun m!3203477 () Bool)

(assert (=> d!807074 m!3203477))

(declare-fun m!3203479 () Bool)

(assert (=> b!2776044 m!3203479))

(declare-fun m!3203481 () Bool)

(assert (=> b!2776044 m!3203481))

(assert (=> b!2776045 m!3203479))

(declare-fun m!3203483 () Bool)

(assert (=> b!2776045 m!3203483))

(assert (=> d!806536 d!807074))

(declare-fun d!807076 () Bool)

(assert (=> d!807076 (= (valid!2976 (_2!19071 lt!989549)) (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989549))))))

(declare-fun bs!505725 () Bool)

(assert (= bs!505725 d!807076))

(declare-fun m!3203485 () Bool)

(assert (=> bs!505725 m!3203485))

(assert (=> d!806460 d!807076))

(declare-fun b!2776050 () Bool)

(declare-fun b_free!78413 () Bool)

(declare-fun b_next!79117 () Bool)

(assert (=> b!2776050 (= b_free!78413 (not b_next!79117))))

(declare-fun tp!878495 () Bool)

(declare-fun b_and!203151 () Bool)

(assert (=> b!2776050 (= tp!878495 b_and!203151)))

(declare-fun b!2776048 () Bool)

(declare-fun b_free!78415 () Bool)

(declare-fun b_next!79119 () Bool)

(assert (=> b!2776048 (= b_free!78415 (not b_next!79119))))

(declare-fun tp!878497 () Bool)

(declare-fun b_and!203153 () Bool)

(assert (=> b!2776048 (= tp!878497 b_and!203153)))

(declare-fun b!2776053 () Bool)

(declare-fun b_free!78417 () Bool)

(declare-fun b_next!79121 () Bool)

(assert (=> b!2776053 (= b_free!78417 (not b_next!79121))))

(declare-fun tp!878496 () Bool)

(declare-fun b_and!203155 () Bool)

(assert (=> b!2776053 (= tp!878496 b_and!203155)))

(declare-fun b!2776049 () Bool)

(declare-fun b_free!78419 () Bool)

(declare-fun b_next!79123 () Bool)

(assert (=> b!2776049 (= b_free!78419 (not b_next!79123))))

(declare-fun tp!878489 () Bool)

(declare-fun b_and!203157 () Bool)

(assert (=> b!2776049 (= tp!878489 b_and!203157)))

(declare-fun b!2776046 () Bool)

(declare-fun e!1750921 () Bool)

(declare-fun e!1750920 () Bool)

(assert (=> b!2776046 (= e!1750921 e!1750920)))

(declare-fun res!1159923 () tuple3!4904)

(declare-fun b!2776047 () Bool)

(declare-fun e!1750925 () Bool)

(assert (=> b!2776047 (= e!1750925 (= (_1!19071 res!1159923) (findLongestMatchInnerZipperFast!52 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489)))))

(declare-fun tp!878499 () Bool)

(declare-fun e!1750922 () Bool)

(declare-fun e!1750928 () Bool)

(declare-fun tp!878492 () Bool)

(assert (=> b!2776048 (= e!1750922 (and tp!878497 tp!878492 tp!878499 (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))))) (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))))) e!1750928))))

(declare-fun e!1750926 () Bool)

(declare-fun tp!878501 () Bool)

(declare-fun e!1750919 () Bool)

(declare-fun tp!878498 () Bool)

(assert (=> b!2776049 (= e!1750919 (and tp!878489 tp!878501 tp!878498 (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))))) (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))))) e!1750926))))

(declare-fun e!1750927 () Bool)

(declare-fun e!1750930 () Bool)

(assert (=> b!2776050 (= e!1750927 (and e!1750930 tp!878495))))

(declare-fun b!2776051 () Bool)

(declare-fun res!1159924 () Bool)

(assert (=> b!2776051 (=> (not res!1159924) (not e!1750925))))

(assert (=> b!2776051 (= res!1159924 (valid!2977 (_3!2922 res!1159923)))))

(declare-fun mapIsEmpty!17397 () Bool)

(declare-fun mapRes!17398 () Bool)

(assert (=> mapIsEmpty!17397 mapRes!17398))

(declare-fun b!2776052 () Bool)

(declare-fun e!1750931 () Bool)

(assert (=> b!2776052 (= e!1750931 e!1750919)))

(declare-fun b!2776054 () Bool)

(declare-fun tp!878500 () Bool)

(declare-fun mapRes!17397 () Bool)

(assert (=> b!2776054 (= e!1750928 (and tp!878500 mapRes!17397))))

(declare-fun condMapEmpty!17397 () Bool)

(declare-fun mapDefault!17398 () List!32175)

(assert (=> b!2776054 (= condMapEmpty!17397 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))))) ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17398)))))

(declare-fun b!2776055 () Bool)

(declare-fun e!1750923 () Bool)

(declare-fun e!1750916 () Bool)

(assert (=> b!2776055 (= e!1750923 e!1750916)))

(declare-fun mapNonEmpty!17397 () Bool)

(declare-fun tp!878491 () Bool)

(declare-fun tp!878493 () Bool)

(assert (=> mapNonEmpty!17397 (= mapRes!17398 (and tp!878491 tp!878493))))

(declare-fun mapRest!17398 () (Array (_ BitVec 32) List!32174))

(declare-fun mapKey!17397 () (_ BitVec 32))

(declare-fun mapValue!17398 () List!32174)

(assert (=> mapNonEmpty!17397 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))))) (store mapRest!17398 mapKey!17397 mapValue!17398))))

(declare-fun b!2776056 () Bool)

(declare-fun lt!990361 () MutLongMap!3814)

(assert (=> b!2776056 (= e!1750930 (and e!1750921 ((_ is LongMap!3814) lt!990361)))))

(assert (=> b!2776056 (= lt!990361 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))))

(declare-fun b!2776057 () Bool)

(declare-fun e!1750918 () Bool)

(assert (=> b!2776057 (= e!1750918 e!1750931)))

(declare-fun mapNonEmpty!17398 () Bool)

(declare-fun tp!878494 () Bool)

(declare-fun tp!878488 () Bool)

(assert (=> mapNonEmpty!17398 (= mapRes!17397 (and tp!878494 tp!878488))))

(declare-fun mapKey!17398 () (_ BitVec 32))

(declare-fun mapRest!17397 () (Array (_ BitVec 32) List!32175))

(declare-fun mapValue!17397 () List!32175)

(assert (=> mapNonEmpty!17398 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))))) (store mapRest!17397 mapKey!17398 mapValue!17397))))

(declare-fun mapIsEmpty!17398 () Bool)

(assert (=> mapIsEmpty!17398 mapRes!17397))

(declare-fun b!2776058 () Bool)

(declare-fun tp!878490 () Bool)

(assert (=> b!2776058 (= e!1750926 (and tp!878490 mapRes!17398))))

(declare-fun condMapEmpty!17398 () Bool)

(declare-fun mapDefault!17397 () List!32174)

(assert (=> b!2776058 (= condMapEmpty!17398 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))))) ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17397)))))

(declare-fun b!2776059 () Bool)

(declare-fun e!1750932 () Bool)

(assert (=> b!2776059 (= e!1750932 e!1750927)))

(declare-fun b!2776060 () Bool)

(declare-fun e!1750917 () Bool)

(declare-fun lt!990362 () MutLongMap!3813)

(assert (=> b!2776060 (= e!1750917 (and e!1750918 ((_ is LongMap!3813) lt!990362)))))

(assert (=> b!2776060 (= lt!990362 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))))

(declare-fun b!2776061 () Bool)

(assert (=> b!2776061 (= e!1750920 e!1750922)))

(assert (=> b!2776053 (= e!1750916 (and e!1750917 tp!878496))))

(declare-fun d!807078 () Bool)

(assert (=> d!807078 e!1750925))

(declare-fun res!1159925 () Bool)

(assert (=> d!807078 (=> (not res!1159925) (not e!1750925))))

(assert (=> d!807078 (= res!1159925 (valid!2976 (_2!19071 res!1159923)))))

(assert (=> d!807078 (and (inv!43560 (_2!19071 res!1159923)) e!1750923 (inv!43561 (_3!2922 res!1159923)) e!1750932)))

(assert (=> d!807078 (= (choose!16271 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489) res!1159923)))

(assert (= (and b!2776058 condMapEmpty!17398) mapIsEmpty!17397))

(assert (= (and b!2776058 (not condMapEmpty!17398)) mapNonEmpty!17397))

(assert (= b!2776049 b!2776058))

(assert (= b!2776052 b!2776049))

(assert (= b!2776057 b!2776052))

(assert (= (and b!2776060 ((_ is LongMap!3813) (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159923)))))) b!2776057))

(assert (= b!2776053 b!2776060))

(assert (= (and b!2776055 ((_ is HashMap!3719) (cache!3862 (_2!19071 res!1159923)))) b!2776053))

(assert (= d!807078 b!2776055))

(assert (= (and b!2776054 condMapEmpty!17397) mapIsEmpty!17398))

(assert (= (and b!2776054 (not condMapEmpty!17397)) mapNonEmpty!17398))

(assert (= b!2776048 b!2776054))

(assert (= b!2776061 b!2776048))

(assert (= b!2776046 b!2776061))

(assert (= (and b!2776056 ((_ is LongMap!3814) (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159923)))))) b!2776046))

(assert (= b!2776050 b!2776056))

(assert (= (and b!2776059 ((_ is HashMap!3720) (cache!3863 (_3!2922 res!1159923)))) b!2776050))

(assert (= d!807078 b!2776059))

(assert (= (and d!807078 res!1159925) b!2776051))

(assert (= (and b!2776051 res!1159924) b!2776047))

(declare-fun m!3203487 () Bool)

(assert (=> mapNonEmpty!17397 m!3203487))

(declare-fun m!3203489 () Bool)

(assert (=> b!2776051 m!3203489))

(declare-fun m!3203491 () Bool)

(assert (=> mapNonEmpty!17398 m!3203491))

(declare-fun m!3203493 () Bool)

(assert (=> d!807078 m!3203493))

(declare-fun m!3203495 () Bool)

(assert (=> d!807078 m!3203495))

(declare-fun m!3203497 () Bool)

(assert (=> d!807078 m!3203497))

(declare-fun m!3203499 () Bool)

(assert (=> b!2776048 m!3203499))

(declare-fun m!3203501 () Bool)

(assert (=> b!2776048 m!3203501))

(assert (=> b!2776047 m!3201351))

(declare-fun m!3203503 () Bool)

(assert (=> b!2776049 m!3203503))

(declare-fun m!3203505 () Bool)

(assert (=> b!2776049 m!3203505))

(assert (=> d!806460 d!807078))

(assert (=> d!806460 d!806458))

(assert (=> d!806460 d!806470))

(declare-fun bs!505726 () Bool)

(declare-fun d!807080 () Bool)

(assert (= bs!505726 (and d!807080 d!806686)))

(declare-fun lambda!101879 () Int)

(assert (=> bs!505726 (= lambda!101879 lambda!101837)))

(declare-fun bs!505727 () Bool)

(assert (= bs!505727 (and d!807080 d!806910)))

(assert (=> bs!505727 (= lambda!101879 lambda!101861)))

(declare-fun bs!505728 () Bool)

(assert (= bs!505728 (and d!807080 d!806578)))

(assert (=> bs!505728 (= lambda!101879 lambda!101817)))

(declare-fun bs!505729 () Bool)

(assert (= bs!505729 (and d!807080 d!806936)))

(assert (=> bs!505729 (= lambda!101879 lambda!101864)))

(declare-fun bs!505730 () Bool)

(assert (= bs!505730 (and d!807080 d!806914)))

(assert (=> bs!505730 (= lambda!101879 lambda!101862)))

(declare-fun bs!505731 () Bool)

(assert (= bs!505731 (and d!807080 d!807028)))

(assert (=> bs!505731 (= lambda!101879 lambda!101875)))

(declare-fun bs!505732 () Bool)

(assert (= bs!505732 (and d!807080 d!806846)))

(assert (=> bs!505732 (= lambda!101879 lambda!101858)))

(declare-fun bs!505733 () Bool)

(assert (= bs!505733 (and d!807080 d!806764)))

(assert (=> bs!505733 (= lambda!101879 lambda!101851)))

(declare-fun bs!505734 () Bool)

(assert (= bs!505734 (and d!807080 d!807030)))

(assert (=> bs!505734 (= lambda!101879 lambda!101876)))

(declare-fun bs!505735 () Bool)

(assert (= bs!505735 (and d!807080 d!806694)))

(assert (=> bs!505735 (= lambda!101879 lambda!101839)))

(declare-fun bs!505736 () Bool)

(assert (= bs!505736 (and d!807080 d!806908)))

(assert (=> bs!505736 (= lambda!101879 lambda!101860)))

(declare-fun bs!505737 () Bool)

(assert (= bs!505737 (and d!807080 d!806770)))

(assert (=> bs!505737 (= lambda!101879 lambda!101852)))

(declare-fun bs!505738 () Bool)

(assert (= bs!505738 (and d!807080 d!806848)))

(assert (=> bs!505738 (= lambda!101879 lambda!101859)))

(declare-fun bs!505739 () Bool)

(assert (= bs!505739 (and d!807080 d!806844)))

(assert (=> bs!505739 (= lambda!101879 lambda!101857)))

(declare-fun bs!505740 () Bool)

(assert (= bs!505740 (and d!807080 d!806762)))

(assert (=> bs!505740 (= lambda!101879 lambda!101850)))

(declare-fun bs!505741 () Bool)

(assert (= bs!505741 (and d!807080 d!806784)))

(assert (=> bs!505741 (= lambda!101879 lambda!101853)))

(declare-fun bs!505742 () Bool)

(assert (= bs!505742 (and d!807080 d!806984)))

(assert (=> bs!505742 (= lambda!101879 lambda!101868)))

(declare-fun bs!505743 () Bool)

(assert (= bs!505743 (and d!807080 d!806788)))

(assert (=> bs!505743 (= lambda!101879 lambda!101854)))

(declare-fun bs!505744 () Bool)

(assert (= bs!505744 (and d!807080 d!807024)))

(assert (=> bs!505744 (= lambda!101879 lambda!101873)))

(declare-fun bs!505745 () Bool)

(assert (= bs!505745 (and d!807080 d!806622)))

(assert (=> bs!505745 (= lambda!101879 lambda!101829)))

(assert (=> d!807080 (= (inv!43564 setElem!23051) (forall!6632 (exprs!2821 setElem!23051) lambda!101879))))

(declare-fun bs!505746 () Bool)

(assert (= bs!505746 d!807080))

(declare-fun m!3203507 () Bool)

(assert (=> bs!505746 m!3203507))

(assert (=> setNonEmpty!23051 d!807080))

(assert (=> bm!181510 d!806518))

(declare-fun bs!505747 () Bool)

(declare-fun d!807082 () Bool)

(assert (= bs!505747 (and d!807082 d!806686)))

(declare-fun lambda!101880 () Int)

(assert (=> bs!505747 (= lambda!101880 lambda!101837)))

(declare-fun bs!505748 () Bool)

(assert (= bs!505748 (and d!807082 d!806910)))

(assert (=> bs!505748 (= lambda!101880 lambda!101861)))

(declare-fun bs!505749 () Bool)

(assert (= bs!505749 (and d!807082 d!806578)))

(assert (=> bs!505749 (= lambda!101880 lambda!101817)))

(declare-fun bs!505750 () Bool)

(assert (= bs!505750 (and d!807082 d!806936)))

(assert (=> bs!505750 (= lambda!101880 lambda!101864)))

(declare-fun bs!505751 () Bool)

(assert (= bs!505751 (and d!807082 d!806914)))

(assert (=> bs!505751 (= lambda!101880 lambda!101862)))

(declare-fun bs!505752 () Bool)

(assert (= bs!505752 (and d!807082 d!806846)))

(assert (=> bs!505752 (= lambda!101880 lambda!101858)))

(declare-fun bs!505753 () Bool)

(assert (= bs!505753 (and d!807082 d!806764)))

(assert (=> bs!505753 (= lambda!101880 lambda!101851)))

(declare-fun bs!505754 () Bool)

(assert (= bs!505754 (and d!807082 d!807030)))

(assert (=> bs!505754 (= lambda!101880 lambda!101876)))

(declare-fun bs!505755 () Bool)

(assert (= bs!505755 (and d!807082 d!806694)))

(assert (=> bs!505755 (= lambda!101880 lambda!101839)))

(declare-fun bs!505756 () Bool)

(assert (= bs!505756 (and d!807082 d!806908)))

(assert (=> bs!505756 (= lambda!101880 lambda!101860)))

(declare-fun bs!505757 () Bool)

(assert (= bs!505757 (and d!807082 d!806770)))

(assert (=> bs!505757 (= lambda!101880 lambda!101852)))

(declare-fun bs!505758 () Bool)

(assert (= bs!505758 (and d!807082 d!806848)))

(assert (=> bs!505758 (= lambda!101880 lambda!101859)))

(declare-fun bs!505759 () Bool)

(assert (= bs!505759 (and d!807082 d!806844)))

(assert (=> bs!505759 (= lambda!101880 lambda!101857)))

(declare-fun bs!505760 () Bool)

(assert (= bs!505760 (and d!807082 d!807080)))

(assert (=> bs!505760 (= lambda!101880 lambda!101879)))

(declare-fun bs!505761 () Bool)

(assert (= bs!505761 (and d!807082 d!807028)))

(assert (=> bs!505761 (= lambda!101880 lambda!101875)))

(declare-fun bs!505762 () Bool)

(assert (= bs!505762 (and d!807082 d!806762)))

(assert (=> bs!505762 (= lambda!101880 lambda!101850)))

(declare-fun bs!505763 () Bool)

(assert (= bs!505763 (and d!807082 d!806784)))

(assert (=> bs!505763 (= lambda!101880 lambda!101853)))

(declare-fun bs!505764 () Bool)

(assert (= bs!505764 (and d!807082 d!806984)))

(assert (=> bs!505764 (= lambda!101880 lambda!101868)))

(declare-fun bs!505765 () Bool)

(assert (= bs!505765 (and d!807082 d!806788)))

(assert (=> bs!505765 (= lambda!101880 lambda!101854)))

(declare-fun bs!505766 () Bool)

(assert (= bs!505766 (and d!807082 d!807024)))

(assert (=> bs!505766 (= lambda!101880 lambda!101873)))

(declare-fun bs!505767 () Bool)

(assert (= bs!505767 (and d!807082 d!806622)))

(assert (=> bs!505767 (= lambda!101880 lambda!101829)))

(assert (=> d!807082 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))) lambda!101880))))

(declare-fun bs!505768 () Bool)

(assert (= bs!505768 d!807082))

(declare-fun m!3203509 () Bool)

(assert (=> bs!505768 m!3203509))

(assert (=> b!2775254 d!807082))

(assert (=> b!2775065 d!806470))

(declare-fun bs!505769 () Bool)

(declare-fun d!807084 () Bool)

(assert (= bs!505769 (and d!807084 d!806638)))

(declare-fun lambda!101883 () Int)

(assert (=> bs!505769 (not (= lambda!101883 lambda!101830))))

(declare-fun bs!505770 () Bool)

(assert (= bs!505770 (and d!807084 b!2774981)))

(assert (=> bs!505770 (not (= lambda!101883 lambda!101810))))

(declare-fun bs!505771 () Bool)

(assert (= bs!505771 (and d!807084 d!807008)))

(assert (=> bs!505771 (not (= lambda!101883 lambda!101869))))

(declare-fun bs!505772 () Bool)

(assert (= bs!505772 (and d!807084 b!2775957)))

(assert (=> bs!505772 (not (= lambda!101883 lambda!101870))))

(declare-fun bs!505773 () Bool)

(assert (= bs!505773 (and d!807084 b!2775512)))

(assert (=> bs!505773 (not (= lambda!101883 lambda!101842))))

(declare-fun bs!505774 () Bool)

(assert (= bs!505774 (and d!807084 b!2775958)))

(assert (=> bs!505774 (not (= lambda!101883 lambda!101871))))

(declare-fun bs!505775 () Bool)

(assert (= bs!505775 (and d!807084 d!806678)))

(assert (=> bs!505775 (not (= lambda!101883 lambda!101836))))

(declare-fun bs!505776 () Bool)

(assert (= bs!505776 (and d!807084 b!2775434)))

(assert (=> bs!505776 (not (= lambda!101883 lambda!101832))))

(declare-fun bs!505777 () Bool)

(assert (= bs!505777 (and d!807084 d!806718)))

(assert (=> bs!505777 (not (= lambda!101883 lambda!101840))))

(declare-fun bs!505778 () Bool)

(assert (= bs!505778 (and d!807084 d!806544)))

(assert (=> bs!505778 (not (= lambda!101883 lambda!101814))))

(declare-fun bs!505779 () Bool)

(assert (= bs!505779 (and d!807084 d!806468)))

(assert (=> bs!505779 (not (= lambda!101883 lambda!101809))))

(declare-fun bs!505780 () Bool)

(assert (= bs!505780 (and d!807084 d!806730)))

(assert (=> bs!505780 (not (= lambda!101883 lambda!101849))))

(declare-fun bs!505781 () Bool)

(assert (= bs!505781 (and d!807084 b!2775433)))

(assert (=> bs!505781 (not (= lambda!101883 lambda!101831))))

(declare-fun bs!505782 () Bool)

(assert (= bs!505782 (and d!807084 b!2775511)))

(assert (=> bs!505782 (not (= lambda!101883 lambda!101841))))

(declare-fun bs!505783 () Bool)

(assert (= bs!505783 (and d!807084 b!2774982)))

(assert (=> bs!505783 (not (= lambda!101883 lambda!101811))))

(declare-fun bs!505784 () Bool)

(assert (= bs!505784 (and d!807084 d!806614)))

(assert (=> bs!505784 (= (= (ite c!450515 lambda!101810 lambda!101811) lambda!101809) (= lambda!101883 lambda!101827))))

(declare-fun bs!505785 () Bool)

(assert (= bs!505785 (and d!807084 d!807056)))

(assert (=> bs!505785 (not (= lambda!101883 lambda!101877))))

(assert (=> d!807084 true))

(assert (=> d!807084 (< (dynLambda!13607 order!17239 (ite c!450515 lambda!101810 lambda!101811)) (dynLambda!13607 order!17239 lambda!101883))))

(assert (=> d!807084 (= (exists!976 (ite c!450515 lt!989571 lt!989572) (ite c!450515 lambda!101810 lambda!101811)) (not (forall!6634 (ite c!450515 lt!989571 lt!989572) lambda!101883)))))

(declare-fun bs!505786 () Bool)

(assert (= bs!505786 d!807084))

(declare-fun m!3203511 () Bool)

(assert (=> bs!505786 m!3203511))

(assert (=> bm!181492 d!807084))

(assert (=> d!806512 d!807042))

(assert (=> d!806512 d!807044))

(assert (=> d!806512 d!806630))

(declare-fun d!807086 () Bool)

(assert (=> d!807086 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 Nil!32072)) Nil!32072)) lt!989496)))

(assert (=> d!807086 true))

(declare-fun _$65!1235 () Unit!46204)

(assert (=> d!807086 (= (choose!16276 Nil!32072 lt!989496) _$65!1235)))

(declare-fun bs!505787 () Bool)

(assert (= bs!505787 d!807086))

(assert (=> bs!505787 m!3201353))

(assert (=> bs!505787 m!3201353))

(assert (=> bs!505787 m!3201539))

(assert (=> bs!505787 m!3201535))

(assert (=> bs!505787 m!3201535))

(assert (=> bs!505787 m!3201537))

(assert (=> d!806512 d!807086))

(assert (=> d!806512 d!806494))

(assert (=> d!806512 d!807046))

(declare-fun d!807088 () Bool)

(assert (=> d!807088 (= (list!12096 (_1!19066 lt!989907)) (list!12097 (c!450499 (_1!19066 lt!989907))))))

(declare-fun bs!505788 () Bool)

(assert (= bs!505788 d!807088))

(declare-fun m!3203513 () Bool)

(assert (=> bs!505788 m!3203513))

(assert (=> b!2775181 d!807088))

(declare-fun d!807090 () Bool)

(assert (=> d!807090 (= (list!12096 (_2!19066 lt!989907)) (list!12097 (c!450499 (_2!19066 lt!989907))))))

(declare-fun bs!505789 () Bool)

(assert (= bs!505789 d!807090))

(declare-fun m!3203515 () Bool)

(assert (=> bs!505789 m!3203515))

(assert (=> b!2775181 d!807090))

(declare-fun b!2776062 () Bool)

(declare-fun e!1750933 () Bool)

(declare-fun lt!990364 () tuple2!32288)

(assert (=> b!2776062 (= e!1750933 (= (_2!19065 lt!990364) (drop!1710 (list!12096 input!5495) 0)))))

(declare-fun b!2776063 () Bool)

(declare-fun lt!990363 () tuple2!32288)

(assert (=> b!2776063 (= lt!990363 (splitAtIndex!52 (t!228300 (list!12096 input!5495)) (- 0 1)))))

(declare-fun e!1750935 () tuple2!32288)

(assert (=> b!2776063 (= e!1750935 (tuple2!32289 (Cons!32072 (h!37492 (list!12096 input!5495)) (_1!19065 lt!990363)) (_2!19065 lt!990363)))))

(declare-fun b!2776065 () Bool)

(declare-fun e!1750934 () tuple2!32288)

(assert (=> b!2776065 (= e!1750934 (tuple2!32289 Nil!32072 Nil!32072))))

(declare-fun b!2776066 () Bool)

(assert (=> b!2776066 (= e!1750935 (tuple2!32289 Nil!32072 (list!12096 input!5495)))))

(declare-fun b!2776067 () Bool)

(declare-fun res!1159926 () Bool)

(assert (=> b!2776067 (=> (not res!1159926) (not e!1750933))))

(assert (=> b!2776067 (= res!1159926 (= (_1!19065 lt!990364) (take!505 (list!12096 input!5495) 0)))))

(declare-fun b!2776064 () Bool)

(assert (=> b!2776064 (= e!1750934 e!1750935)))

(declare-fun c!450820 () Bool)

(assert (=> b!2776064 (= c!450820 (<= 0 0))))

(declare-fun d!807092 () Bool)

(assert (=> d!807092 e!1750933))

(declare-fun res!1159927 () Bool)

(assert (=> d!807092 (=> (not res!1159927) (not e!1750933))))

(assert (=> d!807092 (= res!1159927 (= (++!7932 (_1!19065 lt!990364) (_2!19065 lt!990364)) (list!12096 input!5495)))))

(assert (=> d!807092 (= lt!990364 e!1750934)))

(declare-fun c!450819 () Bool)

(assert (=> d!807092 (= c!450819 ((_ is Nil!32072) (list!12096 input!5495)))))

(assert (=> d!807092 (= (splitAtIndex!52 (list!12096 input!5495) 0) lt!990364)))

(assert (= (and d!807092 c!450819) b!2776065))

(assert (= (and d!807092 (not c!450819)) b!2776064))

(assert (= (and b!2776064 c!450820) b!2776066))

(assert (= (and b!2776064 (not c!450820)) b!2776063))

(assert (= (and d!807092 res!1159927) b!2776067))

(assert (= (and b!2776067 res!1159926) b!2776062))

(assert (=> b!2776062 m!3201349))

(declare-fun m!3203517 () Bool)

(assert (=> b!2776062 m!3203517))

(declare-fun m!3203519 () Bool)

(assert (=> b!2776063 m!3203519))

(assert (=> b!2776067 m!3201349))

(declare-fun m!3203521 () Bool)

(assert (=> b!2776067 m!3203521))

(declare-fun m!3203523 () Bool)

(assert (=> d!807092 m!3203523))

(assert (=> b!2775181 d!807092))

(assert (=> b!2775181 d!806470))

(declare-fun d!807094 () Bool)

(declare-fun lt!990365 () C!16364)

(assert (=> d!807094 (contains!5996 (tail!4390 lt!989496) lt!990365)))

(declare-fun e!1750937 () C!16364)

(assert (=> d!807094 (= lt!990365 e!1750937)))

(declare-fun c!450821 () Bool)

(assert (=> d!807094 (= c!450821 (= (- 0 1) 0))))

(declare-fun e!1750936 () Bool)

(assert (=> d!807094 e!1750936))

(declare-fun res!1159928 () Bool)

(assert (=> d!807094 (=> (not res!1159928) (not e!1750936))))

(assert (=> d!807094 (= res!1159928 (<= 0 (- 0 1)))))

(assert (=> d!807094 (= (apply!7513 (tail!4390 lt!989496) (- 0 1)) lt!990365)))

(declare-fun b!2776068 () Bool)

(assert (=> b!2776068 (= e!1750936 (< (- 0 1) (size!24869 (tail!4390 lt!989496))))))

(declare-fun b!2776069 () Bool)

(assert (=> b!2776069 (= e!1750937 (head!6152 (tail!4390 lt!989496)))))

(declare-fun b!2776070 () Bool)

(assert (=> b!2776070 (= e!1750937 (apply!7513 (tail!4390 (tail!4390 lt!989496)) (- (- 0 1) 1)))))

(assert (= (and d!807094 res!1159928) b!2776068))

(assert (= (and d!807094 c!450821) b!2776069))

(assert (= (and d!807094 (not c!450821)) b!2776070))

(assert (=> d!807094 m!3201395))

(declare-fun m!3203525 () Bool)

(assert (=> d!807094 m!3203525))

(assert (=> b!2776068 m!3201395))

(assert (=> b!2776068 m!3202781))

(assert (=> b!2776069 m!3201395))

(assert (=> b!2776069 m!3202775))

(assert (=> b!2776070 m!3201395))

(assert (=> b!2776070 m!3202777))

(assert (=> b!2776070 m!3202777))

(declare-fun m!3203527 () Bool)

(assert (=> b!2776070 m!3203527))

(assert (=> b!2775190 d!807094))

(assert (=> b!2775190 d!806510))

(declare-fun d!807096 () Bool)

(assert (=> d!807096 (= (valid!2976 (_2!19071 lt!989847)) (validCacheMapUp!369 (cache!3862 (_2!19071 lt!989847))))))

(declare-fun bs!505790 () Bool)

(assert (= bs!505790 d!807096))

(declare-fun m!3203529 () Bool)

(assert (=> bs!505790 m!3203529))

(assert (=> d!806500 d!807096))

(declare-fun b!2776075 () Bool)

(declare-fun b_free!78421 () Bool)

(declare-fun b_next!79125 () Bool)

(assert (=> b!2776075 (= b_free!78421 (not b_next!79125))))

(declare-fun tp!878509 () Bool)

(declare-fun b_and!203159 () Bool)

(assert (=> b!2776075 (= tp!878509 b_and!203159)))

(declare-fun b!2776073 () Bool)

(declare-fun b_free!78423 () Bool)

(declare-fun b_next!79127 () Bool)

(assert (=> b!2776073 (= b_free!78423 (not b_next!79127))))

(declare-fun tp!878511 () Bool)

(declare-fun b_and!203161 () Bool)

(assert (=> b!2776073 (= tp!878511 b_and!203161)))

(declare-fun b!2776078 () Bool)

(declare-fun b_free!78425 () Bool)

(declare-fun b_next!79129 () Bool)

(assert (=> b!2776078 (= b_free!78425 (not b_next!79129))))

(declare-fun tp!878510 () Bool)

(declare-fun b_and!203163 () Bool)

(assert (=> b!2776078 (= tp!878510 b_and!203163)))

(declare-fun b!2776074 () Bool)

(declare-fun b_free!78427 () Bool)

(declare-fun b_next!79131 () Bool)

(assert (=> b!2776074 (= b_free!78427 (not b_next!79131))))

(declare-fun tp!878503 () Bool)

(declare-fun b_and!203165 () Bool)

(assert (=> b!2776074 (= tp!878503 b_and!203165)))

(declare-fun b!2776071 () Bool)

(declare-fun e!1750943 () Bool)

(declare-fun e!1750942 () Bool)

(assert (=> b!2776071 (= e!1750943 e!1750942)))

(declare-fun b!2776072 () Bool)

(declare-fun e!1750947 () Bool)

(declare-fun res!1159929 () tuple3!4904)

(assert (=> b!2776072 (= e!1750947 (= (_1!19071 res!1159929) (findLongestMatchInnerZipperFast!52 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489)))))

(declare-fun e!1750950 () Bool)

(declare-fun e!1750944 () Bool)

(declare-fun tp!878506 () Bool)

(declare-fun tp!878513 () Bool)

(assert (=> b!2776073 (= e!1750944 (and tp!878511 tp!878506 tp!878513 (array_inv!4325 (_keys!4114 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))))) (array_inv!4326 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))))) e!1750950))))

(declare-fun tp!878515 () Bool)

(declare-fun tp!878512 () Bool)

(declare-fun e!1750941 () Bool)

(declare-fun e!1750948 () Bool)

(assert (=> b!2776074 (= e!1750941 (and tp!878503 tp!878515 tp!878512 (array_inv!4325 (_keys!4113 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))))) (array_inv!4327 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))))) e!1750948))))

(declare-fun e!1750949 () Bool)

(declare-fun e!1750952 () Bool)

(assert (=> b!2776075 (= e!1750949 (and e!1750952 tp!878509))))

(declare-fun b!2776076 () Bool)

(declare-fun res!1159930 () Bool)

(assert (=> b!2776076 (=> (not res!1159930) (not e!1750947))))

(assert (=> b!2776076 (= res!1159930 (valid!2977 (_3!2922 res!1159929)))))

(declare-fun mapIsEmpty!17399 () Bool)

(declare-fun mapRes!17400 () Bool)

(assert (=> mapIsEmpty!17399 mapRes!17400))

(declare-fun b!2776077 () Bool)

(declare-fun e!1750953 () Bool)

(assert (=> b!2776077 (= e!1750953 e!1750941)))

(declare-fun b!2776079 () Bool)

(declare-fun tp!878514 () Bool)

(declare-fun mapRes!17399 () Bool)

(assert (=> b!2776079 (= e!1750950 (and tp!878514 mapRes!17399))))

(declare-fun condMapEmpty!17399 () Bool)

(declare-fun mapDefault!17400 () List!32175)

(assert (=> b!2776079 (= condMapEmpty!17399 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))))) ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17400)))))

(declare-fun b!2776080 () Bool)

(declare-fun e!1750945 () Bool)

(declare-fun e!1750938 () Bool)

(assert (=> b!2776080 (= e!1750945 e!1750938)))

(declare-fun mapNonEmpty!17399 () Bool)

(declare-fun tp!878505 () Bool)

(declare-fun tp!878507 () Bool)

(assert (=> mapNonEmpty!17399 (= mapRes!17400 (and tp!878505 tp!878507))))

(declare-fun mapRest!17400 () (Array (_ BitVec 32) List!32174))

(declare-fun mapValue!17400 () List!32174)

(declare-fun mapKey!17399 () (_ BitVec 32))

(assert (=> mapNonEmpty!17399 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))))) (store mapRest!17400 mapKey!17399 mapValue!17400))))

(declare-fun b!2776081 () Bool)

(declare-fun lt!990366 () MutLongMap!3814)

(assert (=> b!2776081 (= e!1750952 (and e!1750943 ((_ is LongMap!3814) lt!990366)))))

(assert (=> b!2776081 (= lt!990366 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))))

(declare-fun b!2776082 () Bool)

(declare-fun e!1750940 () Bool)

(assert (=> b!2776082 (= e!1750940 e!1750953)))

(declare-fun mapNonEmpty!17400 () Bool)

(declare-fun tp!878508 () Bool)

(declare-fun tp!878502 () Bool)

(assert (=> mapNonEmpty!17400 (= mapRes!17399 (and tp!878508 tp!878502))))

(declare-fun mapRest!17399 () (Array (_ BitVec 32) List!32175))

(declare-fun mapKey!17400 () (_ BitVec 32))

(declare-fun mapValue!17399 () List!32175)

(assert (=> mapNonEmpty!17400 (= (arr!6051 (_values!4095 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))))) (store mapRest!17399 mapKey!17400 mapValue!17399))))

(declare-fun mapIsEmpty!17400 () Bool)

(assert (=> mapIsEmpty!17400 mapRes!17399))

(declare-fun b!2776083 () Bool)

(declare-fun tp!878504 () Bool)

(assert (=> b!2776083 (= e!1750948 (and tp!878504 mapRes!17400))))

(declare-fun condMapEmpty!17400 () Bool)

(declare-fun mapDefault!17399 () List!32174)

(assert (=> b!2776083 (= condMapEmpty!17400 (= (arr!6049 (_values!4094 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))))) ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17399)))))

(declare-fun b!2776084 () Bool)

(declare-fun e!1750954 () Bool)

(assert (=> b!2776084 (= e!1750954 e!1750949)))

(declare-fun b!2776085 () Bool)

(declare-fun e!1750939 () Bool)

(declare-fun lt!990367 () MutLongMap!3813)

(assert (=> b!2776085 (= e!1750939 (and e!1750940 ((_ is LongMap!3813) lt!990367)))))

(assert (=> b!2776085 (= lt!990367 (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))))

(declare-fun b!2776086 () Bool)

(assert (=> b!2776086 (= e!1750942 e!1750944)))

(assert (=> b!2776078 (= e!1750938 (and e!1750939 tp!878510))))

(declare-fun d!807098 () Bool)

(assert (=> d!807098 e!1750947))

(declare-fun res!1159931 () Bool)

(assert (=> d!807098 (=> (not res!1159931) (not e!1750947))))

(assert (=> d!807098 (= res!1159931 (valid!2976 (_2!19071 res!1159929)))))

(assert (=> d!807098 (and (inv!43560 (_2!19071 res!1159929)) e!1750945 (inv!43561 (_3!2922 res!1159929)) e!1750954)))

(assert (=> d!807098 (= (choose!16271 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489) res!1159929)))

(assert (= (and b!2776083 condMapEmpty!17400) mapIsEmpty!17399))

(assert (= (and b!2776083 (not condMapEmpty!17400)) mapNonEmpty!17399))

(assert (= b!2776074 b!2776083))

(assert (= b!2776077 b!2776074))

(assert (= b!2776082 b!2776077))

(assert (= (and b!2776085 ((_ is LongMap!3813) (v!33683 (underlying!7830 (cache!3862 (_2!19071 res!1159929)))))) b!2776082))

(assert (= b!2776078 b!2776085))

(assert (= (and b!2776080 ((_ is HashMap!3719) (cache!3862 (_2!19071 res!1159929)))) b!2776078))

(assert (= d!807098 b!2776080))

(assert (= (and b!2776079 condMapEmpty!17399) mapIsEmpty!17400))

(assert (= (and b!2776079 (not condMapEmpty!17399)) mapNonEmpty!17400))

(assert (= b!2776073 b!2776079))

(assert (= b!2776086 b!2776073))

(assert (= b!2776071 b!2776086))

(assert (= (and b!2776081 ((_ is LongMap!3814) (v!33685 (underlying!7832 (cache!3863 (_3!2922 res!1159929)))))) b!2776071))

(assert (= b!2776075 b!2776081))

(assert (= (and b!2776084 ((_ is HashMap!3720) (cache!3863 (_3!2922 res!1159929)))) b!2776075))

(assert (= d!807098 b!2776084))

(assert (= (and d!807098 res!1159931) b!2776076))

(assert (= (and b!2776076 res!1159930) b!2776072))

(declare-fun m!3203531 () Bool)

(assert (=> mapNonEmpty!17399 m!3203531))

(declare-fun m!3203533 () Bool)

(assert (=> b!2776076 m!3203533))

(declare-fun m!3203535 () Bool)

(assert (=> mapNonEmpty!17400 m!3203535))

(declare-fun m!3203537 () Bool)

(assert (=> d!807098 m!3203537))

(declare-fun m!3203539 () Bool)

(assert (=> d!807098 m!3203539))

(declare-fun m!3203541 () Bool)

(assert (=> d!807098 m!3203541))

(declare-fun m!3203543 () Bool)

(assert (=> b!2776073 m!3203543))

(declare-fun m!3203545 () Bool)

(assert (=> b!2776073 m!3203545))

(assert (=> b!2776072 m!3201327))

(declare-fun m!3203547 () Bool)

(assert (=> b!2776074 m!3203547))

(declare-fun m!3203549 () Bool)

(assert (=> b!2776074 m!3203549))

(assert (=> d!806500 d!807098))

(assert (=> d!806500 d!806548))

(assert (=> d!806500 d!806470))

(declare-fun bs!505791 () Bool)

(declare-fun d!807100 () Bool)

(assert (= bs!505791 (and d!807100 d!806686)))

(declare-fun lambda!101884 () Int)

(assert (=> bs!505791 (= lambda!101884 lambda!101837)))

(declare-fun bs!505792 () Bool)

(assert (= bs!505792 (and d!807100 d!806910)))

(assert (=> bs!505792 (= lambda!101884 lambda!101861)))

(declare-fun bs!505793 () Bool)

(assert (= bs!505793 (and d!807100 d!806578)))

(assert (=> bs!505793 (= lambda!101884 lambda!101817)))

(declare-fun bs!505794 () Bool)

(assert (= bs!505794 (and d!807100 d!806936)))

(assert (=> bs!505794 (= lambda!101884 lambda!101864)))

(declare-fun bs!505795 () Bool)

(assert (= bs!505795 (and d!807100 d!806914)))

(assert (=> bs!505795 (= lambda!101884 lambda!101862)))

(declare-fun bs!505796 () Bool)

(assert (= bs!505796 (and d!807100 d!806846)))

(assert (=> bs!505796 (= lambda!101884 lambda!101858)))

(declare-fun bs!505797 () Bool)

(assert (= bs!505797 (and d!807100 d!806764)))

(assert (=> bs!505797 (= lambda!101884 lambda!101851)))

(declare-fun bs!505798 () Bool)

(assert (= bs!505798 (and d!807100 d!806694)))

(assert (=> bs!505798 (= lambda!101884 lambda!101839)))

(declare-fun bs!505799 () Bool)

(assert (= bs!505799 (and d!807100 d!806908)))

(assert (=> bs!505799 (= lambda!101884 lambda!101860)))

(declare-fun bs!505800 () Bool)

(assert (= bs!505800 (and d!807100 d!806770)))

(assert (=> bs!505800 (= lambda!101884 lambda!101852)))

(declare-fun bs!505801 () Bool)

(assert (= bs!505801 (and d!807100 d!806848)))

(assert (=> bs!505801 (= lambda!101884 lambda!101859)))

(declare-fun bs!505802 () Bool)

(assert (= bs!505802 (and d!807100 d!806844)))

(assert (=> bs!505802 (= lambda!101884 lambda!101857)))

(declare-fun bs!505803 () Bool)

(assert (= bs!505803 (and d!807100 d!807080)))

(assert (=> bs!505803 (= lambda!101884 lambda!101879)))

(declare-fun bs!505804 () Bool)

(assert (= bs!505804 (and d!807100 d!807028)))

(assert (=> bs!505804 (= lambda!101884 lambda!101875)))

(declare-fun bs!505805 () Bool)

(assert (= bs!505805 (and d!807100 d!806762)))

(assert (=> bs!505805 (= lambda!101884 lambda!101850)))

(declare-fun bs!505806 () Bool)

(assert (= bs!505806 (and d!807100 d!806784)))

(assert (=> bs!505806 (= lambda!101884 lambda!101853)))

(declare-fun bs!505807 () Bool)

(assert (= bs!505807 (and d!807100 d!806984)))

(assert (=> bs!505807 (= lambda!101884 lambda!101868)))

(declare-fun bs!505808 () Bool)

(assert (= bs!505808 (and d!807100 d!806788)))

(assert (=> bs!505808 (= lambda!101884 lambda!101854)))

(declare-fun bs!505809 () Bool)

(assert (= bs!505809 (and d!807100 d!807082)))

(assert (=> bs!505809 (= lambda!101884 lambda!101880)))

(declare-fun bs!505810 () Bool)

(assert (= bs!505810 (and d!807100 d!807030)))

(assert (=> bs!505810 (= lambda!101884 lambda!101876)))

(declare-fun bs!505811 () Bool)

(assert (= bs!505811 (and d!807100 d!807024)))

(assert (=> bs!505811 (= lambda!101884 lambda!101873)))

(declare-fun bs!505812 () Bool)

(assert (= bs!505812 (and d!807100 d!806622)))

(assert (=> bs!505812 (= lambda!101884 lambda!101829)))

(assert (=> d!807100 (= (inv!43564 (_1!19067 (_1!19068 (h!37494 mapValue!17381)))) (forall!6632 (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapValue!17381)))) lambda!101884))))

(declare-fun bs!505813 () Bool)

(assert (= bs!505813 d!807100))

(declare-fun m!3203551 () Bool)

(assert (=> bs!505813 m!3203551))

(assert (=> b!2775275 d!807100))

(declare-fun d!807102 () Bool)

(declare-fun e!1750955 () Bool)

(assert (=> d!807102 e!1750955))

(declare-fun res!1159932 () Bool)

(assert (=> d!807102 (=> (not res!1159932) (not e!1750955))))

(declare-fun lt!990368 () List!32172)

(assert (=> d!807102 (= res!1159932 (= (content!4508 lt!990368) ((_ map or) (content!4508 lt!989499) (content!4508 (Cons!32072 lt!989870 Nil!32072)))))))

(declare-fun e!1750956 () List!32172)

(assert (=> d!807102 (= lt!990368 e!1750956)))

(declare-fun c!450822 () Bool)

(assert (=> d!807102 (= c!450822 ((_ is Nil!32072) lt!989499))))

(assert (=> d!807102 (= (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072)) lt!990368)))

(declare-fun b!2776090 () Bool)

(assert (=> b!2776090 (= e!1750955 (or (not (= (Cons!32072 lt!989870 Nil!32072) Nil!32072)) (= lt!990368 lt!989499)))))

(declare-fun b!2776088 () Bool)

(assert (=> b!2776088 (= e!1750956 (Cons!32072 (h!37492 lt!989499) (++!7932 (t!228300 lt!989499) (Cons!32072 lt!989870 Nil!32072))))))

(declare-fun b!2776087 () Bool)

(assert (=> b!2776087 (= e!1750956 (Cons!32072 lt!989870 Nil!32072))))

(declare-fun b!2776089 () Bool)

(declare-fun res!1159933 () Bool)

(assert (=> b!2776089 (=> (not res!1159933) (not e!1750955))))

(assert (=> b!2776089 (= res!1159933 (= (size!24869 lt!990368) (+ (size!24869 lt!989499) (size!24869 (Cons!32072 lt!989870 Nil!32072)))))))

(assert (= (and d!807102 c!450822) b!2776087))

(assert (= (and d!807102 (not c!450822)) b!2776088))

(assert (= (and d!807102 res!1159932) b!2776089))

(assert (= (and b!2776089 res!1159933) b!2776090))

(declare-fun m!3203553 () Bool)

(assert (=> d!807102 m!3203553))

(assert (=> d!807102 m!3201741))

(declare-fun m!3203555 () Bool)

(assert (=> d!807102 m!3203555))

(declare-fun m!3203557 () Bool)

(assert (=> b!2776088 m!3203557))

(declare-fun m!3203559 () Bool)

(assert (=> b!2776089 m!3203559))

(assert (=> b!2776089 m!3201749))

(declare-fun m!3203561 () Bool)

(assert (=> b!2776089 m!3203561))

(assert (=> b!2775135 d!807102))

(assert (=> b!2775135 d!806710))

(declare-fun d!807104 () Bool)

(assert (=> d!807104 (= (head!6152 (getSuffix!1239 lt!989496 lt!989499)) (h!37492 (getSuffix!1239 lt!989496 lt!989499)))))

(assert (=> b!2775135 d!807104))

(declare-fun b!2776092 () Bool)

(declare-fun res!1159935 () Bool)

(declare-fun e!1750959 () Bool)

(assert (=> b!2776092 (=> (not res!1159935) (not e!1750959))))

(assert (=> b!2776092 (= res!1159935 (= (head!6152 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072))) (head!6152 lt!989496)))))

(declare-fun b!2776091 () Bool)

(declare-fun e!1750958 () Bool)

(assert (=> b!2776091 (= e!1750958 e!1750959)))

(declare-fun res!1159936 () Bool)

(assert (=> b!2776091 (=> (not res!1159936) (not e!1750959))))

(assert (=> b!2776091 (= res!1159936 (not ((_ is Nil!32072) lt!989496)))))

(declare-fun d!807106 () Bool)

(declare-fun e!1750957 () Bool)

(assert (=> d!807106 e!1750957))

(declare-fun res!1159937 () Bool)

(assert (=> d!807106 (=> res!1159937 e!1750957)))

(declare-fun lt!990369 () Bool)

(assert (=> d!807106 (= res!1159937 (not lt!990369))))

(assert (=> d!807106 (= lt!990369 e!1750958)))

(declare-fun res!1159934 () Bool)

(assert (=> d!807106 (=> res!1159934 e!1750958)))

(assert (=> d!807106 (= res!1159934 ((_ is Nil!32072) (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072))))))

(assert (=> d!807106 (= (isPrefix!2557 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)) lt!989496) lt!990369)))

(declare-fun b!2776093 () Bool)

(assert (=> b!2776093 (= e!1750959 (isPrefix!2557 (tail!4390 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072))) (tail!4390 lt!989496)))))

(declare-fun b!2776094 () Bool)

(assert (=> b!2776094 (= e!1750957 (>= (size!24869 lt!989496) (size!24869 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)))))))

(assert (= (and d!807106 (not res!1159934)) b!2776091))

(assert (= (and b!2776091 res!1159936) b!2776092))

(assert (= (and b!2776092 res!1159935) b!2776093))

(assert (= (and d!807106 (not res!1159937)) b!2776094))

(assert (=> b!2776092 m!3201815))

(declare-fun m!3203563 () Bool)

(assert (=> b!2776092 m!3203563))

(assert (=> b!2776092 m!3201449))

(assert (=> b!2776093 m!3201815))

(declare-fun m!3203565 () Bool)

(assert (=> b!2776093 m!3203565))

(assert (=> b!2776093 m!3201395))

(assert (=> b!2776093 m!3203565))

(assert (=> b!2776093 m!3201395))

(declare-fun m!3203567 () Bool)

(assert (=> b!2776093 m!3203567))

(assert (=> b!2776094 m!3201391))

(assert (=> b!2776094 m!3201815))

(declare-fun m!3203569 () Bool)

(assert (=> b!2776094 m!3203569))

(assert (=> b!2775135 d!807106))

(declare-fun d!807108 () Bool)

(assert (=> d!807108 (isPrefix!2557 (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)) lt!989496)))

(declare-fun lt!990370 () Unit!46204)

(assert (=> d!807108 (= lt!990370 (choose!16276 lt!989499 lt!989496))))

(assert (=> d!807108 (isPrefix!2557 lt!989499 lt!989496)))

(assert (=> d!807108 (= (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989499 lt!989496) lt!990370)))

(declare-fun bs!505814 () Bool)

(assert (= bs!505814 d!807108))

(declare-fun m!3203571 () Bool)

(assert (=> bs!505814 m!3203571))

(assert (=> bs!505814 m!3201815))

(assert (=> bs!505814 m!3201819))

(assert (=> bs!505814 m!3201823))

(assert (=> bs!505814 m!3202401))

(assert (=> bs!505814 m!3201819))

(assert (=> bs!505814 m!3201815))

(assert (=> bs!505814 m!3201821))

(assert (=> b!2775135 d!807108))

(assert (=> b!2775135 d!806676))

(declare-fun d!807110 () Bool)

(declare-fun e!1750960 () Bool)

(assert (=> d!807110 e!1750960))

(declare-fun res!1159938 () Bool)

(assert (=> d!807110 (=> (not res!1159938) (not e!1750960))))

(declare-fun lt!990371 () List!32172)

(assert (=> d!807110 (= res!1159938 (= (content!4508 lt!990371) ((_ map or) (content!4508 lt!989499) (content!4508 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)))))))

(declare-fun e!1750961 () List!32172)

(assert (=> d!807110 (= lt!990371 e!1750961)))

(declare-fun c!450823 () Bool)

(assert (=> d!807110 (= c!450823 ((_ is Nil!32072) lt!989499))))

(assert (=> d!807110 (= (++!7932 lt!989499 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)) lt!990371)))

(declare-fun b!2776098 () Bool)

(assert (=> b!2776098 (= e!1750960 (or (not (= (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072) Nil!32072)) (= lt!990371 lt!989499)))))

(declare-fun b!2776096 () Bool)

(assert (=> b!2776096 (= e!1750961 (Cons!32072 (h!37492 lt!989499) (++!7932 (t!228300 lt!989499) (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072))))))

(declare-fun b!2776095 () Bool)

(assert (=> b!2776095 (= e!1750961 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072))))

(declare-fun b!2776097 () Bool)

(declare-fun res!1159939 () Bool)

(assert (=> b!2776097 (=> (not res!1159939) (not e!1750960))))

(assert (=> b!2776097 (= res!1159939 (= (size!24869 lt!990371) (+ (size!24869 lt!989499) (size!24869 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989499)) Nil!32072)))))))

(assert (= (and d!807110 c!450823) b!2776095))

(assert (= (and d!807110 (not c!450823)) b!2776096))

(assert (= (and d!807110 res!1159938) b!2776097))

(assert (= (and b!2776097 res!1159939) b!2776098))

(declare-fun m!3203573 () Bool)

(assert (=> d!807110 m!3203573))

(assert (=> d!807110 m!3201741))

(declare-fun m!3203575 () Bool)

(assert (=> d!807110 m!3203575))

(declare-fun m!3203577 () Bool)

(assert (=> b!2776096 m!3203577))

(declare-fun m!3203579 () Bool)

(assert (=> b!2776097 m!3203579))

(assert (=> b!2776097 m!3201749))

(declare-fun m!3203581 () Bool)

(assert (=> b!2776097 m!3203581))

(assert (=> b!2775135 d!807110))

(declare-fun d!807112 () Bool)

(assert (=> d!807112 (= (++!7932 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072)) lt!989872) lt!989496)))

(declare-fun lt!990372 () Unit!46204)

(assert (=> d!807112 (= lt!990372 (choose!16277 lt!989499 lt!989870 lt!989872 lt!989496))))

(assert (=> d!807112 (= (++!7932 lt!989499 (Cons!32072 lt!989870 lt!989872)) lt!989496)))

(assert (=> d!807112 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989499 lt!989870 lt!989872 lt!989496) lt!990372)))

(declare-fun bs!505815 () Bool)

(assert (= bs!505815 d!807112))

(assert (=> bs!505815 m!3201811))

(assert (=> bs!505815 m!3201811))

(assert (=> bs!505815 m!3201825))

(declare-fun m!3203583 () Bool)

(assert (=> bs!505815 m!3203583))

(declare-fun m!3203585 () Bool)

(assert (=> bs!505815 m!3203585))

(assert (=> b!2775135 d!807112))

(declare-fun d!807114 () Bool)

(declare-fun e!1750962 () Bool)

(assert (=> d!807114 e!1750962))

(declare-fun res!1159940 () Bool)

(assert (=> d!807114 (=> (not res!1159940) (not e!1750962))))

(declare-fun lt!990373 () List!32172)

(assert (=> d!807114 (= res!1159940 (= (content!4508 lt!990373) ((_ map or) (content!4508 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072))) (content!4508 lt!989872))))))

(declare-fun e!1750963 () List!32172)

(assert (=> d!807114 (= lt!990373 e!1750963)))

(declare-fun c!450824 () Bool)

(assert (=> d!807114 (= c!450824 ((_ is Nil!32072) (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072))))))

(assert (=> d!807114 (= (++!7932 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072)) lt!989872) lt!990373)))

(declare-fun b!2776102 () Bool)

(assert (=> b!2776102 (= e!1750962 (or (not (= lt!989872 Nil!32072)) (= lt!990373 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072)))))))

(declare-fun b!2776100 () Bool)

(assert (=> b!2776100 (= e!1750963 (Cons!32072 (h!37492 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072))) (++!7932 (t!228300 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072))) lt!989872)))))

(declare-fun b!2776099 () Bool)

(assert (=> b!2776099 (= e!1750963 lt!989872)))

(declare-fun b!2776101 () Bool)

(declare-fun res!1159941 () Bool)

(assert (=> b!2776101 (=> (not res!1159941) (not e!1750962))))

(assert (=> b!2776101 (= res!1159941 (= (size!24869 lt!990373) (+ (size!24869 (++!7932 lt!989499 (Cons!32072 lt!989870 Nil!32072))) (size!24869 lt!989872))))))

(assert (= (and d!807114 c!450824) b!2776099))

(assert (= (and d!807114 (not c!450824)) b!2776100))

(assert (= (and d!807114 res!1159940) b!2776101))

(assert (= (and b!2776101 res!1159941) b!2776102))

(declare-fun m!3203587 () Bool)

(assert (=> d!807114 m!3203587))

(assert (=> d!807114 m!3201811))

(declare-fun m!3203589 () Bool)

(assert (=> d!807114 m!3203589))

(declare-fun m!3203591 () Bool)

(assert (=> d!807114 m!3203591))

(declare-fun m!3203593 () Bool)

(assert (=> b!2776100 m!3203593))

(declare-fun m!3203595 () Bool)

(assert (=> b!2776101 m!3203595))

(assert (=> b!2776101 m!3201811))

(declare-fun m!3203597 () Bool)

(assert (=> b!2776101 m!3203597))

(declare-fun m!3203599 () Bool)

(assert (=> b!2776101 m!3203599))

(assert (=> b!2775135 d!807114))

(declare-fun d!807116 () Bool)

(declare-fun e!1750964 () Bool)

(assert (=> d!807116 e!1750964))

(declare-fun res!1159942 () Bool)

(assert (=> d!807116 (=> (not res!1159942) (not e!1750964))))

(declare-fun lt!990374 () List!32172)

(assert (=> d!807116 (= res!1159942 (= (content!4508 lt!990374) ((_ map or) (content!4508 lt!989499) (content!4508 (Cons!32072 (head!6152 lt!989504) Nil!32072)))))))

(declare-fun e!1750965 () List!32172)

(assert (=> d!807116 (= lt!990374 e!1750965)))

(declare-fun c!450825 () Bool)

(assert (=> d!807116 (= c!450825 ((_ is Nil!32072) lt!989499))))

(assert (=> d!807116 (= (++!7932 lt!989499 (Cons!32072 (head!6152 lt!989504) Nil!32072)) lt!990374)))

(declare-fun b!2776106 () Bool)

(assert (=> b!2776106 (= e!1750964 (or (not (= (Cons!32072 (head!6152 lt!989504) Nil!32072) Nil!32072)) (= lt!990374 lt!989499)))))

(declare-fun b!2776104 () Bool)

(assert (=> b!2776104 (= e!1750965 (Cons!32072 (h!37492 lt!989499) (++!7932 (t!228300 lt!989499) (Cons!32072 (head!6152 lt!989504) Nil!32072))))))

(declare-fun b!2776103 () Bool)

(assert (=> b!2776103 (= e!1750965 (Cons!32072 (head!6152 lt!989504) Nil!32072))))

(declare-fun b!2776105 () Bool)

(declare-fun res!1159943 () Bool)

(assert (=> b!2776105 (=> (not res!1159943) (not e!1750964))))

(assert (=> b!2776105 (= res!1159943 (= (size!24869 lt!990374) (+ (size!24869 lt!989499) (size!24869 (Cons!32072 (head!6152 lt!989504) Nil!32072)))))))

(assert (= (and d!807116 c!450825) b!2776103))

(assert (= (and d!807116 (not c!450825)) b!2776104))

(assert (= (and d!807116 res!1159942) b!2776105))

(assert (= (and b!2776105 res!1159943) b!2776106))

(declare-fun m!3203601 () Bool)

(assert (=> d!807116 m!3203601))

(assert (=> d!807116 m!3201741))

(declare-fun m!3203603 () Bool)

(assert (=> d!807116 m!3203603))

(declare-fun m!3203605 () Bool)

(assert (=> b!2776104 m!3203605))

(declare-fun m!3203607 () Bool)

(assert (=> b!2776105 m!3203607))

(assert (=> b!2776105 m!3201749))

(declare-fun m!3203609 () Bool)

(assert (=> b!2776105 m!3203609))

(assert (=> b!2775135 d!807116))

(declare-fun d!807118 () Bool)

(assert (=> d!807118 (<= (size!24869 lt!989499) (size!24869 lt!989496))))

(declare-fun lt!990375 () Unit!46204)

(assert (=> d!807118 (= lt!990375 (choose!16275 lt!989499 lt!989496))))

(assert (=> d!807118 (isPrefix!2557 lt!989499 lt!989496)))

(assert (=> d!807118 (= (lemmaIsPrefixThenSmallerEqSize!264 lt!989499 lt!989496) lt!990375)))

(declare-fun bs!505816 () Bool)

(assert (= bs!505816 d!807118))

(assert (=> bs!505816 m!3201749))

(assert (=> bs!505816 m!3201391))

(declare-fun m!3203611 () Bool)

(assert (=> bs!505816 m!3203611))

(assert (=> bs!505816 m!3202401))

(assert (=> b!2775135 d!807118))

(assert (=> b!2775135 d!806508))

(assert (=> b!2775135 d!806656))

(declare-fun d!807120 () Bool)

(assert (=> d!807120 (= (tail!4390 lt!989504) (t!228300 lt!989504))))

(assert (=> b!2775135 d!807120))

(assert (=> b!2775090 d!806924))

(declare-fun d!807122 () Bool)

(assert (=> d!807122 (= (head!6152 (drop!1710 lt!989805 1)) (apply!7513 lt!989805 1))))

(declare-fun lt!990376 () Unit!46204)

(assert (=> d!807122 (= lt!990376 (choose!16281 lt!989805 1))))

(declare-fun e!1750966 () Bool)

(assert (=> d!807122 e!1750966))

(declare-fun res!1159944 () Bool)

(assert (=> d!807122 (=> (not res!1159944) (not e!1750966))))

(assert (=> d!807122 (= res!1159944 (>= 1 0))))

(assert (=> d!807122 (= (lemmaDropApply!916 lt!989805 1) lt!990376)))

(declare-fun b!2776107 () Bool)

(assert (=> b!2776107 (= e!1750966 (< 1 (size!24869 lt!989805)))))

(assert (= (and d!807122 res!1159944) b!2776107))

(assert (=> d!807122 m!3201687))

(assert (=> d!807122 m!3201687))

(assert (=> d!807122 m!3201689))

(assert (=> d!807122 m!3201699))

(declare-fun m!3203613 () Bool)

(assert (=> d!807122 m!3203613))

(declare-fun m!3203615 () Bool)

(assert (=> b!2776107 m!3203615))

(assert (=> b!2775090 d!807122))

(assert (=> b!2775090 d!806490))

(declare-fun d!807124 () Bool)

(assert (=> d!807124 (= (head!6152 (drop!1710 lt!989805 1)) (h!37492 (drop!1710 lt!989805 1)))))

(assert (=> b!2775090 d!807124))

(declare-fun d!807126 () Bool)

(declare-fun lt!990377 () List!32172)

(assert (=> d!807126 (= (++!7932 lt!989491 lt!990377) lt!989829)))

(declare-fun e!1750967 () List!32172)

(assert (=> d!807126 (= lt!990377 e!1750967)))

(declare-fun c!450826 () Bool)

(assert (=> d!807126 (= c!450826 ((_ is Cons!32072) lt!989491))))

(assert (=> d!807126 (>= (size!24869 lt!989829) (size!24869 lt!989491))))

(assert (=> d!807126 (= (getSuffix!1239 lt!989829 lt!989491) lt!990377)))

(declare-fun b!2776108 () Bool)

(assert (=> b!2776108 (= e!1750967 (getSuffix!1239 (tail!4390 lt!989829) (t!228300 lt!989491)))))

(declare-fun b!2776109 () Bool)

(assert (=> b!2776109 (= e!1750967 lt!989829)))

(assert (= (and d!807126 c!450826) b!2776108))

(assert (= (and d!807126 (not c!450826)) b!2776109))

(declare-fun m!3203617 () Bool)

(assert (=> d!807126 m!3203617))

(declare-fun m!3203619 () Bool)

(assert (=> d!807126 m!3203619))

(assert (=> d!807126 m!3201679))

(declare-fun m!3203621 () Bool)

(assert (=> b!2776108 m!3203621))

(assert (=> b!2776108 m!3203621))

(declare-fun m!3203623 () Bool)

(assert (=> b!2776108 m!3203623))

(assert (=> b!2775090 d!807126))

(declare-fun d!807128 () Bool)

(assert (=> d!807128 (<= (size!24869 lt!989491) (size!24869 lt!989839))))

(declare-fun lt!990378 () Unit!46204)

(assert (=> d!807128 (= lt!990378 (choose!16275 lt!989491 lt!989839))))

(assert (=> d!807128 (isPrefix!2557 lt!989491 lt!989839)))

(assert (=> d!807128 (= (lemmaIsPrefixThenSmallerEqSize!264 lt!989491 lt!989839) lt!990378)))

(declare-fun bs!505817 () Bool)

(assert (= bs!505817 d!807128))

(assert (=> bs!505817 m!3201679))

(assert (=> bs!505817 m!3201685))

(declare-fun m!3203625 () Bool)

(assert (=> bs!505817 m!3203625))

(declare-fun m!3203627 () Bool)

(assert (=> bs!505817 m!3203627))

(assert (=> b!2775090 d!807128))

(declare-fun b!2776111 () Bool)

(declare-fun res!1159946 () Bool)

(declare-fun e!1750970 () Bool)

(assert (=> b!2776111 (=> (not res!1159946) (not e!1750970))))

(assert (=> b!2776111 (= res!1159946 (= (head!6152 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072))) (head!6152 lt!989829)))))

(declare-fun b!2776110 () Bool)

(declare-fun e!1750969 () Bool)

(assert (=> b!2776110 (= e!1750969 e!1750970)))

(declare-fun res!1159947 () Bool)

(assert (=> b!2776110 (=> (not res!1159947) (not e!1750970))))

(assert (=> b!2776110 (= res!1159947 (not ((_ is Nil!32072) lt!989829)))))

(declare-fun d!807130 () Bool)

(declare-fun e!1750968 () Bool)

(assert (=> d!807130 e!1750968))

(declare-fun res!1159948 () Bool)

(assert (=> d!807130 (=> res!1159948 e!1750968)))

(declare-fun lt!990379 () Bool)

(assert (=> d!807130 (= res!1159948 (not lt!990379))))

(assert (=> d!807130 (= lt!990379 e!1750969)))

(declare-fun res!1159945 () Bool)

(assert (=> d!807130 (=> res!1159945 e!1750969)))

(assert (=> d!807130 (= res!1159945 ((_ is Nil!32072) (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072))))))

(assert (=> d!807130 (= (isPrefix!2557 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)) lt!989829) lt!990379)))

(declare-fun b!2776112 () Bool)

(assert (=> b!2776112 (= e!1750970 (isPrefix!2557 (tail!4390 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072))) (tail!4390 lt!989829)))))

(declare-fun b!2776113 () Bool)

(assert (=> b!2776113 (= e!1750968 (>= (size!24869 lt!989829) (size!24869 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)))))))

(assert (= (and d!807130 (not res!1159945)) b!2776110))

(assert (= (and b!2776110 res!1159947) b!2776111))

(assert (= (and b!2776111 res!1159946) b!2776112))

(assert (= (and d!807130 (not res!1159948)) b!2776113))

(assert (=> b!2776111 m!3201695))

(declare-fun m!3203629 () Bool)

(assert (=> b!2776111 m!3203629))

(declare-fun m!3203631 () Bool)

(assert (=> b!2776111 m!3203631))

(assert (=> b!2776112 m!3201695))

(declare-fun m!3203633 () Bool)

(assert (=> b!2776112 m!3203633))

(assert (=> b!2776112 m!3203621))

(assert (=> b!2776112 m!3203633))

(assert (=> b!2776112 m!3203621))

(declare-fun m!3203635 () Bool)

(assert (=> b!2776112 m!3203635))

(assert (=> b!2776113 m!3203619))

(assert (=> b!2776113 m!3201695))

(declare-fun m!3203637 () Bool)

(assert (=> b!2776113 m!3203637))

(assert (=> b!2775090 d!807130))

(declare-fun d!807132 () Bool)

(declare-fun e!1750971 () Bool)

(assert (=> d!807132 e!1750971))

(declare-fun res!1159949 () Bool)

(assert (=> d!807132 (=> (not res!1159949) (not e!1750971))))

(declare-fun lt!990380 () List!32172)

(assert (=> d!807132 (= res!1159949 (= (content!4508 lt!990380) ((_ map or) (content!4508 lt!989491) (content!4508 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)))))))

(declare-fun e!1750972 () List!32172)

(assert (=> d!807132 (= lt!990380 e!1750972)))

(declare-fun c!450827 () Bool)

(assert (=> d!807132 (= c!450827 ((_ is Nil!32072) lt!989491))))

(assert (=> d!807132 (= (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)) lt!990380)))

(declare-fun b!2776117 () Bool)

(assert (=> b!2776117 (= e!1750971 (or (not (= (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072) Nil!32072)) (= lt!990380 lt!989491)))))

(declare-fun b!2776115 () Bool)

(assert (=> b!2776115 (= e!1750972 (Cons!32072 (h!37492 lt!989491) (++!7932 (t!228300 lt!989491) (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072))))))

(declare-fun b!2776114 () Bool)

(assert (=> b!2776114 (= e!1750972 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072))))

(declare-fun b!2776116 () Bool)

(declare-fun res!1159950 () Bool)

(assert (=> b!2776116 (=> (not res!1159950) (not e!1750971))))

(assert (=> b!2776116 (= res!1159950 (= (size!24869 lt!990380) (+ (size!24869 lt!989491) (size!24869 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)))))))

(assert (= (and d!807132 c!450827) b!2776114))

(assert (= (and d!807132 (not c!450827)) b!2776115))

(assert (= (and d!807132 res!1159949) b!2776116))

(assert (= (and b!2776116 res!1159950) b!2776117))

(declare-fun m!3203639 () Bool)

(assert (=> d!807132 m!3203639))

(assert (=> d!807132 m!3201959))

(declare-fun m!3203641 () Bool)

(assert (=> d!807132 m!3203641))

(declare-fun m!3203643 () Bool)

(assert (=> b!2776115 m!3203643))

(declare-fun m!3203645 () Bool)

(assert (=> b!2776116 m!3203645))

(assert (=> b!2776116 m!3201679))

(declare-fun m!3203647 () Bool)

(assert (=> b!2776116 m!3203647))

(assert (=> b!2775090 d!807132))

(declare-fun d!807134 () Bool)

(assert (=> d!807134 (= (head!6152 (getSuffix!1239 lt!989829 lt!989491)) (h!37492 (getSuffix!1239 lt!989829 lt!989491)))))

(assert (=> b!2775090 d!807134))

(declare-fun d!807136 () Bool)

(declare-fun lt!990381 () C!16364)

(assert (=> d!807136 (contains!5996 lt!989805 lt!990381)))

(declare-fun e!1750974 () C!16364)

(assert (=> d!807136 (= lt!990381 e!1750974)))

(declare-fun c!450828 () Bool)

(assert (=> d!807136 (= c!450828 (= 1 0))))

(declare-fun e!1750973 () Bool)

(assert (=> d!807136 e!1750973))

(declare-fun res!1159951 () Bool)

(assert (=> d!807136 (=> (not res!1159951) (not e!1750973))))

(assert (=> d!807136 (= res!1159951 (<= 0 1))))

(assert (=> d!807136 (= (apply!7513 lt!989805 1) lt!990381)))

(declare-fun b!2776118 () Bool)

(assert (=> b!2776118 (= e!1750973 (< 1 (size!24869 lt!989805)))))

(declare-fun b!2776119 () Bool)

(assert (=> b!2776119 (= e!1750974 (head!6152 lt!989805))))

(declare-fun b!2776120 () Bool)

(assert (=> b!2776120 (= e!1750974 (apply!7513 (tail!4390 lt!989805) (- 1 1)))))

(assert (= (and d!807136 res!1159951) b!2776118))

(assert (= (and d!807136 c!450828) b!2776119))

(assert (= (and d!807136 (not c!450828)) b!2776120))

(declare-fun m!3203649 () Bool)

(assert (=> d!807136 m!3203649))

(assert (=> b!2776118 m!3203615))

(declare-fun m!3203651 () Bool)

(assert (=> b!2776119 m!3203651))

(declare-fun m!3203653 () Bool)

(assert (=> b!2776120 m!3203653))

(assert (=> b!2776120 m!3203653))

(declare-fun m!3203655 () Bool)

(assert (=> b!2776120 m!3203655))

(assert (=> b!2775090 d!807136))

(declare-fun d!807138 () Bool)

(assert (=> d!807138 (= (list!12096 (_1!19066 lt!989803)) (list!12097 (c!450499 (_1!19066 lt!989803))))))

(declare-fun bs!505818 () Bool)

(assert (= bs!505818 d!807138))

(declare-fun m!3203657 () Bool)

(assert (=> bs!505818 m!3203657))

(assert (=> b!2775090 d!807138))

(declare-fun d!807140 () Bool)

(assert (=> d!807140 (isPrefix!2557 (++!7932 lt!989491 (Cons!32072 (head!6152 (getSuffix!1239 lt!989829 lt!989491)) Nil!32072)) lt!989829)))

(declare-fun lt!990382 () Unit!46204)

(assert (=> d!807140 (= lt!990382 (choose!16276 lt!989491 lt!989829))))

(assert (=> d!807140 (isPrefix!2557 lt!989491 lt!989829)))

(assert (=> d!807140 (= (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989491 lt!989829) lt!990382)))

(declare-fun bs!505819 () Bool)

(assert (= bs!505819 d!807140))

(declare-fun m!3203659 () Bool)

(assert (=> bs!505819 m!3203659))

(assert (=> bs!505819 m!3201695))

(assert (=> bs!505819 m!3201669))

(assert (=> bs!505819 m!3201683))

(declare-fun m!3203661 () Bool)

(assert (=> bs!505819 m!3203661))

(assert (=> bs!505819 m!3201669))

(assert (=> bs!505819 m!3201695))

(assert (=> bs!505819 m!3201697))

(assert (=> b!2775090 d!807140))

(declare-fun d!807142 () Bool)

(assert (=> d!807142 (= (++!7932 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072)) lt!989811) lt!989819)))

(declare-fun lt!990383 () Unit!46204)

(assert (=> d!807142 (= lt!990383 (choose!16277 lt!989491 lt!989814 lt!989811 lt!989819))))

(assert (=> d!807142 (= (++!7932 lt!989491 (Cons!32072 lt!989814 lt!989811)) lt!989819)))

(assert (=> d!807142 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989491 lt!989814 lt!989811 lt!989819) lt!990383)))

(declare-fun bs!505820 () Bool)

(assert (= bs!505820 d!807142))

(assert (=> bs!505820 m!3201675))

(assert (=> bs!505820 m!3201675))

(assert (=> bs!505820 m!3201677))

(declare-fun m!3203663 () Bool)

(assert (=> bs!505820 m!3203663))

(declare-fun m!3203665 () Bool)

(assert (=> bs!505820 m!3203665))

(assert (=> b!2775090 d!807142))

(declare-fun d!807144 () Bool)

(declare-fun e!1750975 () Bool)

(assert (=> d!807144 e!1750975))

(declare-fun res!1159952 () Bool)

(assert (=> d!807144 (=> (not res!1159952) (not e!1750975))))

(declare-fun lt!990384 () List!32172)

(assert (=> d!807144 (= res!1159952 (= (content!4508 lt!990384) ((_ map or) (content!4508 lt!989491) (content!4508 (Cons!32072 lt!989814 Nil!32072)))))))

(declare-fun e!1750976 () List!32172)

(assert (=> d!807144 (= lt!990384 e!1750976)))

(declare-fun c!450829 () Bool)

(assert (=> d!807144 (= c!450829 ((_ is Nil!32072) lt!989491))))

(assert (=> d!807144 (= (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072)) lt!990384)))

(declare-fun b!2776124 () Bool)

(assert (=> b!2776124 (= e!1750975 (or (not (= (Cons!32072 lt!989814 Nil!32072) Nil!32072)) (= lt!990384 lt!989491)))))

(declare-fun b!2776122 () Bool)

(assert (=> b!2776122 (= e!1750976 (Cons!32072 (h!37492 lt!989491) (++!7932 (t!228300 lt!989491) (Cons!32072 lt!989814 Nil!32072))))))

(declare-fun b!2776121 () Bool)

(assert (=> b!2776121 (= e!1750976 (Cons!32072 lt!989814 Nil!32072))))

(declare-fun b!2776123 () Bool)

(declare-fun res!1159953 () Bool)

(assert (=> b!2776123 (=> (not res!1159953) (not e!1750975))))

(assert (=> b!2776123 (= res!1159953 (= (size!24869 lt!990384) (+ (size!24869 lt!989491) (size!24869 (Cons!32072 lt!989814 Nil!32072)))))))

(assert (= (and d!807144 c!450829) b!2776121))

(assert (= (and d!807144 (not c!450829)) b!2776122))

(assert (= (and d!807144 res!1159952) b!2776123))

(assert (= (and b!2776123 res!1159953) b!2776124))

(declare-fun m!3203667 () Bool)

(assert (=> d!807144 m!3203667))

(assert (=> d!807144 m!3201959))

(declare-fun m!3203669 () Bool)

(assert (=> d!807144 m!3203669))

(declare-fun m!3203671 () Bool)

(assert (=> b!2776122 m!3203671))

(declare-fun m!3203673 () Bool)

(assert (=> b!2776123 m!3203673))

(assert (=> b!2776123 m!3201679))

(declare-fun m!3203675 () Bool)

(assert (=> b!2776123 m!3203675))

(assert (=> b!2775090 d!807144))

(declare-fun d!807146 () Bool)

(declare-fun e!1750977 () Bool)

(assert (=> d!807146 e!1750977))

(declare-fun res!1159954 () Bool)

(assert (=> d!807146 (=> (not res!1159954) (not e!1750977))))

(declare-fun lt!990385 () List!32172)

(assert (=> d!807146 (= res!1159954 (= (content!4508 lt!990385) ((_ map or) (content!4508 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072))) (content!4508 lt!989811))))))

(declare-fun e!1750978 () List!32172)

(assert (=> d!807146 (= lt!990385 e!1750978)))

(declare-fun c!450830 () Bool)

(assert (=> d!807146 (= c!450830 ((_ is Nil!32072) (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072))))))

(assert (=> d!807146 (= (++!7932 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072)) lt!989811) lt!990385)))

(declare-fun b!2776128 () Bool)

(assert (=> b!2776128 (= e!1750977 (or (not (= lt!989811 Nil!32072)) (= lt!990385 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072)))))))

(declare-fun b!2776126 () Bool)

(assert (=> b!2776126 (= e!1750978 (Cons!32072 (h!37492 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072))) (++!7932 (t!228300 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072))) lt!989811)))))

(declare-fun b!2776125 () Bool)

(assert (=> b!2776125 (= e!1750978 lt!989811)))

(declare-fun b!2776127 () Bool)

(declare-fun res!1159955 () Bool)

(assert (=> b!2776127 (=> (not res!1159955) (not e!1750977))))

(assert (=> b!2776127 (= res!1159955 (= (size!24869 lt!990385) (+ (size!24869 (++!7932 lt!989491 (Cons!32072 lt!989814 Nil!32072))) (size!24869 lt!989811))))))

(assert (= (and d!807146 c!450830) b!2776125))

(assert (= (and d!807146 (not c!450830)) b!2776126))

(assert (= (and d!807146 res!1159954) b!2776127))

(assert (= (and b!2776127 res!1159955) b!2776128))

(declare-fun m!3203677 () Bool)

(assert (=> d!807146 m!3203677))

(assert (=> d!807146 m!3201675))

(declare-fun m!3203679 () Bool)

(assert (=> d!807146 m!3203679))

(declare-fun m!3203681 () Bool)

(assert (=> d!807146 m!3203681))

(declare-fun m!3203683 () Bool)

(assert (=> b!2776126 m!3203683))

(declare-fun m!3203685 () Bool)

(assert (=> b!2776127 m!3203685))

(assert (=> b!2776127 m!3201675))

(declare-fun m!3203687 () Bool)

(assert (=> b!2776127 m!3203687))

(declare-fun m!3203689 () Bool)

(assert (=> b!2776127 m!3203689))

(assert (=> b!2775090 d!807146))

(assert (=> b!2775090 d!806874))

(declare-fun b!2776129 () Bool)

(declare-fun e!1750982 () Int)

(declare-fun e!1750983 () Int)

(assert (=> b!2776129 (= e!1750982 e!1750983)))

(declare-fun c!450834 () Bool)

(declare-fun call!181668 () Int)

(assert (=> b!2776129 (= c!450834 (>= 1 call!181668))))

(declare-fun b!2776130 () Bool)

(assert (=> b!2776130 (= e!1750983 0)))

(declare-fun d!807148 () Bool)

(declare-fun e!1750979 () Bool)

(assert (=> d!807148 e!1750979))

(declare-fun res!1159956 () Bool)

(assert (=> d!807148 (=> (not res!1159956) (not e!1750979))))

(declare-fun lt!990386 () List!32172)

(assert (=> d!807148 (= res!1159956 (= ((_ map implies) (content!4508 lt!990386) (content!4508 lt!989805)) ((as const (InoxSet C!16364)) true)))))

(declare-fun e!1750981 () List!32172)

(assert (=> d!807148 (= lt!990386 e!1750981)))

(declare-fun c!450832 () Bool)

(assert (=> d!807148 (= c!450832 ((_ is Nil!32072) lt!989805))))

(assert (=> d!807148 (= (drop!1710 lt!989805 1) lt!990386)))

(declare-fun b!2776131 () Bool)

(declare-fun e!1750980 () List!32172)

(assert (=> b!2776131 (= e!1750980 lt!989805)))

(declare-fun b!2776132 () Bool)

(assert (=> b!2776132 (= e!1750979 (= (size!24869 lt!990386) e!1750982))))

(declare-fun c!450831 () Bool)

(assert (=> b!2776132 (= c!450831 (<= 1 0))))

(declare-fun b!2776133 () Bool)

(assert (=> b!2776133 (= e!1750981 e!1750980)))

(declare-fun c!450833 () Bool)

(assert (=> b!2776133 (= c!450833 (<= 1 0))))

(declare-fun b!2776134 () Bool)

(assert (=> b!2776134 (= e!1750981 Nil!32072)))

(declare-fun bm!181663 () Bool)

(assert (=> bm!181663 (= call!181668 (size!24869 lt!989805))))

(declare-fun b!2776135 () Bool)

(assert (=> b!2776135 (= e!1750980 (drop!1710 (t!228300 lt!989805) (- 1 1)))))

(declare-fun b!2776136 () Bool)

(assert (=> b!2776136 (= e!1750983 (- call!181668 1))))

(declare-fun b!2776137 () Bool)

(assert (=> b!2776137 (= e!1750982 call!181668)))

(assert (= (and d!807148 c!450832) b!2776134))

(assert (= (and d!807148 (not c!450832)) b!2776133))

(assert (= (and b!2776133 c!450833) b!2776131))

(assert (= (and b!2776133 (not c!450833)) b!2776135))

(assert (= (and d!807148 res!1159956) b!2776132))

(assert (= (and b!2776132 c!450831) b!2776137))

(assert (= (and b!2776132 (not c!450831)) b!2776129))

(assert (= (and b!2776129 c!450834) b!2776130))

(assert (= (and b!2776129 (not c!450834)) b!2776136))

(assert (= (or b!2776137 b!2776129 b!2776136) bm!181663))

(declare-fun m!3203691 () Bool)

(assert (=> d!807148 m!3203691))

(declare-fun m!3203693 () Bool)

(assert (=> d!807148 m!3203693))

(declare-fun m!3203695 () Bool)

(assert (=> b!2776132 m!3203695))

(assert (=> bm!181663 m!3203615))

(declare-fun m!3203697 () Bool)

(assert (=> b!2776135 m!3203697))

(assert (=> b!2775090 d!807148))

(declare-fun d!807150 () Bool)

(assert (=> d!807150 (= (tail!4390 lt!989479) (t!228300 lt!989479))))

(assert (=> b!2775090 d!807150))

(assert (=> b!2775090 d!806470))

(assert (=> b!2775090 d!806878))

(declare-fun d!807152 () Bool)

(assert (=> d!807152 (and (= lt!989837 lt!989491) (= lt!989830 lt!989479))))

(declare-fun lt!990387 () Unit!46204)

(assert (=> d!807152 (= lt!990387 (choose!16280 lt!989837 lt!989830 lt!989491 lt!989479))))

(assert (=> d!807152 (= (++!7932 lt!989837 lt!989830) (++!7932 lt!989491 lt!989479))))

(assert (=> d!807152 (= (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989837 lt!989830 lt!989491 lt!989479) lt!990387)))

(declare-fun bs!505821 () Bool)

(assert (= bs!505821 d!807152))

(declare-fun m!3203699 () Bool)

(assert (=> bs!505821 m!3203699))

(declare-fun m!3203701 () Bool)

(assert (=> bs!505821 m!3203701))

(assert (=> bs!505821 m!3201415))

(assert (=> b!2775090 d!807152))

(declare-fun d!807154 () Bool)

(declare-fun lt!990388 () Int)

(assert (=> d!807154 (>= lt!990388 0)))

(declare-fun e!1750984 () Int)

(assert (=> d!807154 (= lt!990388 e!1750984)))

(declare-fun c!450835 () Bool)

(assert (=> d!807154 (= c!450835 ((_ is Nil!32072) lt!989839))))

(assert (=> d!807154 (= (size!24869 lt!989839) lt!990388)))

(declare-fun b!2776138 () Bool)

(assert (=> b!2776138 (= e!1750984 0)))

(declare-fun b!2776139 () Bool)

(assert (=> b!2776139 (= e!1750984 (+ 1 (size!24869 (t!228300 lt!989839))))))

(assert (= (and d!807154 c!450835) b!2776138))

(assert (= (and d!807154 (not c!450835)) b!2776139))

(declare-fun m!3203703 () Bool)

(assert (=> b!2776139 m!3203703))

(assert (=> b!2775090 d!807154))

(declare-fun d!807156 () Bool)

(declare-fun e!1750985 () Bool)

(assert (=> d!807156 e!1750985))

(declare-fun res!1159957 () Bool)

(assert (=> d!807156 (=> (not res!1159957) (not e!1750985))))

(declare-fun lt!990389 () List!32172)

(assert (=> d!807156 (= res!1159957 (= (content!4508 lt!990389) ((_ map or) (content!4508 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072))) (content!4508 lt!989504))))))

(declare-fun e!1750986 () List!32172)

(assert (=> d!807156 (= lt!990389 e!1750986)))

(declare-fun c!450836 () Bool)

(assert (=> d!807156 (= c!450836 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072))))))

(assert (=> d!807156 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)) lt!989504) lt!990389)))

(declare-fun b!2776143 () Bool)

(assert (=> b!2776143 (= e!1750985 (or (not (= lt!989504 Nil!32072)) (= lt!990389 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)))))))

(declare-fun b!2776141 () Bool)

(assert (=> b!2776141 (= e!1750986 (Cons!32072 (h!37492 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072))) (++!7932 (t!228300 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072))) lt!989504)))))

(declare-fun b!2776140 () Bool)

(assert (=> b!2776140 (= e!1750986 lt!989504)))

(declare-fun b!2776142 () Bool)

(declare-fun res!1159958 () Bool)

(assert (=> b!2776142 (=> (not res!1159958) (not e!1750985))))

(assert (=> b!2776142 (= res!1159958 (= (size!24869 lt!990389) (+ (size!24869 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072))) (size!24869 lt!989504))))))

(assert (= (and d!807156 c!450836) b!2776140))

(assert (= (and d!807156 (not c!450836)) b!2776141))

(assert (= (and d!807156 res!1159957) b!2776142))

(assert (= (and b!2776142 res!1159958) b!2776143))

(declare-fun m!3203705 () Bool)

(assert (=> d!807156 m!3203705))

(assert (=> d!807156 m!3201445))

(declare-fun m!3203707 () Bool)

(assert (=> d!807156 m!3203707))

(assert (=> d!807156 m!3201743))

(declare-fun m!3203709 () Bool)

(assert (=> b!2776141 m!3203709))

(declare-fun m!3203711 () Bool)

(assert (=> b!2776142 m!3203711))

(assert (=> b!2776142 m!3201445))

(declare-fun m!3203713 () Bool)

(assert (=> b!2776142 m!3203713))

(assert (=> b!2776142 m!3201751))

(assert (=> d!806522 d!807156))

(assert (=> d!806522 d!806520))

(declare-fun d!807158 () Bool)

(assert (=> d!807158 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989475 Nil!32072)) lt!989504) lt!989496)))

(assert (=> d!807158 true))

(declare-fun _$68!663 () Unit!46204)

(assert (=> d!807158 (= (choose!16277 Nil!32072 lt!989475 lt!989504 lt!989496) _$68!663)))

(declare-fun bs!505822 () Bool)

(assert (= bs!505822 d!807158))

(assert (=> bs!505822 m!3201445))

(assert (=> bs!505822 m!3201445))

(assert (=> bs!505822 m!3201781))

(assert (=> d!806522 d!807158))

(declare-fun d!807160 () Bool)

(declare-fun e!1750987 () Bool)

(assert (=> d!807160 e!1750987))

(declare-fun res!1159959 () Bool)

(assert (=> d!807160 (=> (not res!1159959) (not e!1750987))))

(declare-fun lt!990390 () List!32172)

(assert (=> d!807160 (= res!1159959 (= (content!4508 lt!990390) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989475 lt!989504)))))))

(declare-fun e!1750988 () List!32172)

(assert (=> d!807160 (= lt!990390 e!1750988)))

(declare-fun c!450837 () Bool)

(assert (=> d!807160 (= c!450837 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807160 (= (++!7932 Nil!32072 (Cons!32072 lt!989475 lt!989504)) lt!990390)))

(declare-fun b!2776147 () Bool)

(assert (=> b!2776147 (= e!1750987 (or (not (= (Cons!32072 lt!989475 lt!989504) Nil!32072)) (= lt!990390 Nil!32072)))))

(declare-fun b!2776145 () Bool)

(assert (=> b!2776145 (= e!1750988 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989475 lt!989504))))))

(declare-fun b!2776144 () Bool)

(assert (=> b!2776144 (= e!1750988 (Cons!32072 lt!989475 lt!989504))))

(declare-fun b!2776146 () Bool)

(declare-fun res!1159960 () Bool)

(assert (=> b!2776146 (=> (not res!1159960) (not e!1750987))))

(assert (=> b!2776146 (= res!1159960 (= (size!24869 lt!990390) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989475 lt!989504)))))))

(assert (= (and d!807160 c!450837) b!2776144))

(assert (= (and d!807160 (not c!450837)) b!2776145))

(assert (= (and d!807160 res!1159959) b!2776146))

(assert (= (and b!2776146 res!1159960) b!2776147))

(declare-fun m!3203715 () Bool)

(assert (=> d!807160 m!3203715))

(assert (=> d!807160 m!3201467))

(declare-fun m!3203717 () Bool)

(assert (=> d!807160 m!3203717))

(declare-fun m!3203719 () Bool)

(assert (=> b!2776145 m!3203719))

(declare-fun m!3203721 () Bool)

(assert (=> b!2776146 m!3203721))

(assert (=> b!2776146 m!3201399))

(declare-fun m!3203723 () Bool)

(assert (=> b!2776146 m!3203723))

(assert (=> d!806522 d!807160))

(declare-fun b!2776148 () Bool)

(declare-fun e!1750989 () List!32172)

(assert (=> b!2776148 (= e!1750989 Nil!32072)))

(declare-fun b!2776149 () Bool)

(declare-fun e!1750990 () List!32172)

(assert (=> b!2776149 (= e!1750989 e!1750990)))

(declare-fun c!450839 () Bool)

(assert (=> b!2776149 (= c!450839 ((_ is Leaf!15201) (c!450499 (_1!19066 lt!989480))))))

(declare-fun d!807162 () Bool)

(declare-fun c!450838 () Bool)

(assert (=> d!807162 (= c!450838 ((_ is Empty!9981) (c!450499 (_1!19066 lt!989480))))))

(assert (=> d!807162 (= (list!12097 (c!450499 (_1!19066 lt!989480))) e!1750989)))

(declare-fun b!2776150 () Bool)

(assert (=> b!2776150 (= e!1750990 (list!12098 (xs!13091 (c!450499 (_1!19066 lt!989480)))))))

(declare-fun b!2776151 () Bool)

(assert (=> b!2776151 (= e!1750990 (++!7932 (list!12097 (left!24418 (c!450499 (_1!19066 lt!989480)))) (list!12097 (right!24748 (c!450499 (_1!19066 lt!989480))))))))

(assert (= (and d!807162 c!450838) b!2776148))

(assert (= (and d!807162 (not c!450838)) b!2776149))

(assert (= (and b!2776149 c!450839) b!2776150))

(assert (= (and b!2776149 (not c!450839)) b!2776151))

(declare-fun m!3203725 () Bool)

(assert (=> b!2776150 m!3203725))

(declare-fun m!3203727 () Bool)

(assert (=> b!2776151 m!3203727))

(declare-fun m!3203729 () Bool)

(assert (=> b!2776151 m!3203729))

(assert (=> b!2776151 m!3203727))

(assert (=> b!2776151 m!3203729))

(declare-fun m!3203731 () Bool)

(assert (=> b!2776151 m!3203731))

(assert (=> d!806478 d!807162))

(assert (=> b!2775083 d!806470))

(declare-fun b!2776153 () Bool)

(declare-fun res!1159962 () Bool)

(declare-fun e!1750993 () Bool)

(assert (=> b!2776153 (=> (not res!1159962) (not e!1750993))))

(assert (=> b!2776153 (= res!1159962 (= (head!6152 (ite c!450550 lt!989785 lt!989751)) (head!6152 (ite c!450550 lt!989756 lt!989783))))))

(declare-fun b!2776152 () Bool)

(declare-fun e!1750992 () Bool)

(assert (=> b!2776152 (= e!1750992 e!1750993)))

(declare-fun res!1159963 () Bool)

(assert (=> b!2776152 (=> (not res!1159963) (not e!1750993))))

(assert (=> b!2776152 (= res!1159963 (not ((_ is Nil!32072) (ite c!450550 lt!989756 lt!989783))))))

(declare-fun d!807164 () Bool)

(declare-fun e!1750991 () Bool)

(assert (=> d!807164 e!1750991))

(declare-fun res!1159964 () Bool)

(assert (=> d!807164 (=> res!1159964 e!1750991)))

(declare-fun lt!990391 () Bool)

(assert (=> d!807164 (= res!1159964 (not lt!990391))))

(assert (=> d!807164 (= lt!990391 e!1750992)))

(declare-fun res!1159961 () Bool)

(assert (=> d!807164 (=> res!1159961 e!1750992)))

(assert (=> d!807164 (= res!1159961 ((_ is Nil!32072) (ite c!450550 lt!989785 lt!989751)))))

(assert (=> d!807164 (= (isPrefix!2557 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783)) lt!990391)))

(declare-fun b!2776154 () Bool)

(assert (=> b!2776154 (= e!1750993 (isPrefix!2557 (tail!4390 (ite c!450550 lt!989785 lt!989751)) (tail!4390 (ite c!450550 lt!989756 lt!989783))))))

(declare-fun b!2776155 () Bool)

(assert (=> b!2776155 (= e!1750991 (>= (size!24869 (ite c!450550 lt!989756 lt!989783)) (size!24869 (ite c!450550 lt!989785 lt!989751))))))

(assert (= (and d!807164 (not res!1159961)) b!2776152))

(assert (= (and b!2776152 res!1159963) b!2776153))

(assert (= (and b!2776153 res!1159962) b!2776154))

(assert (= (and d!807164 (not res!1159964)) b!2776155))

(declare-fun m!3203733 () Bool)

(assert (=> b!2776153 m!3203733))

(declare-fun m!3203735 () Bool)

(assert (=> b!2776153 m!3203735))

(declare-fun m!3203737 () Bool)

(assert (=> b!2776154 m!3203737))

(declare-fun m!3203739 () Bool)

(assert (=> b!2776154 m!3203739))

(assert (=> b!2776154 m!3203737))

(assert (=> b!2776154 m!3203739))

(declare-fun m!3203741 () Bool)

(assert (=> b!2776154 m!3203741))

(declare-fun m!3203743 () Bool)

(assert (=> b!2776155 m!3203743))

(declare-fun m!3203745 () Bool)

(assert (=> b!2776155 m!3203745))

(assert (=> bm!181543 d!807164))

(assert (=> bm!181564 d!807120))

(declare-fun d!807166 () Bool)

(declare-fun res!1159971 () Bool)

(declare-fun e!1750996 () Bool)

(assert (=> d!807166 (=> (not res!1159971) (not e!1750996))))

(assert (=> d!807166 (= res!1159971 (= (csize!20192 (c!450499 input!5495)) (+ (size!24870 (left!24418 (c!450499 input!5495))) (size!24870 (right!24748 (c!450499 input!5495))))))))

(assert (=> d!807166 (= (inv!43565 (c!450499 input!5495)) e!1750996)))

(declare-fun b!2776162 () Bool)

(declare-fun res!1159972 () Bool)

(assert (=> b!2776162 (=> (not res!1159972) (not e!1750996))))

(assert (=> b!2776162 (= res!1159972 (and (not (= (left!24418 (c!450499 input!5495)) Empty!9981)) (not (= (right!24748 (c!450499 input!5495)) Empty!9981))))))

(declare-fun b!2776163 () Bool)

(declare-fun res!1159973 () Bool)

(assert (=> b!2776163 (=> (not res!1159973) (not e!1750996))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2776163 (= res!1159973 (= (cheight!10192 (c!450499 input!5495)) (+ (max!0 (height!1489 (left!24418 (c!450499 input!5495))) (height!1489 (right!24748 (c!450499 input!5495)))) 1)))))

(declare-fun b!2776164 () Bool)

(assert (=> b!2776164 (= e!1750996 (<= 0 (cheight!10192 (c!450499 input!5495))))))

(assert (= (and d!807166 res!1159971) b!2776162))

(assert (= (and b!2776162 res!1159972) b!2776163))

(assert (= (and b!2776163 res!1159973) b!2776164))

(assert (=> d!807166 m!3202701))

(declare-fun m!3203747 () Bool)

(assert (=> d!807166 m!3203747))

(assert (=> b!2776163 m!3202513))

(assert (=> b!2776163 m!3202515))

(assert (=> b!2776163 m!3202513))

(assert (=> b!2776163 m!3202515))

(declare-fun m!3203749 () Bool)

(assert (=> b!2776163 m!3203749))

(assert (=> b!2775123 d!807166))

(declare-fun bs!505823 () Bool)

(declare-fun d!807168 () Bool)

(assert (= bs!505823 (and d!807168 d!806686)))

(declare-fun lambda!101885 () Int)

(assert (=> bs!505823 (= lambda!101885 lambda!101837)))

(declare-fun bs!505824 () Bool)

(assert (= bs!505824 (and d!807168 d!806910)))

(assert (=> bs!505824 (= lambda!101885 lambda!101861)))

(declare-fun bs!505825 () Bool)

(assert (= bs!505825 (and d!807168 d!806578)))

(assert (=> bs!505825 (= lambda!101885 lambda!101817)))

(declare-fun bs!505826 () Bool)

(assert (= bs!505826 (and d!807168 d!806936)))

(assert (=> bs!505826 (= lambda!101885 lambda!101864)))

(declare-fun bs!505827 () Bool)

(assert (= bs!505827 (and d!807168 d!806914)))

(assert (=> bs!505827 (= lambda!101885 lambda!101862)))

(declare-fun bs!505828 () Bool)

(assert (= bs!505828 (and d!807168 d!806846)))

(assert (=> bs!505828 (= lambda!101885 lambda!101858)))

(declare-fun bs!505829 () Bool)

(assert (= bs!505829 (and d!807168 d!806764)))

(assert (=> bs!505829 (= lambda!101885 lambda!101851)))

(declare-fun bs!505830 () Bool)

(assert (= bs!505830 (and d!807168 d!806694)))

(assert (=> bs!505830 (= lambda!101885 lambda!101839)))

(declare-fun bs!505831 () Bool)

(assert (= bs!505831 (and d!807168 d!806770)))

(assert (=> bs!505831 (= lambda!101885 lambda!101852)))

(declare-fun bs!505832 () Bool)

(assert (= bs!505832 (and d!807168 d!806848)))

(assert (=> bs!505832 (= lambda!101885 lambda!101859)))

(declare-fun bs!505833 () Bool)

(assert (= bs!505833 (and d!807168 d!806844)))

(assert (=> bs!505833 (= lambda!101885 lambda!101857)))

(declare-fun bs!505834 () Bool)

(assert (= bs!505834 (and d!807168 d!807080)))

(assert (=> bs!505834 (= lambda!101885 lambda!101879)))

(declare-fun bs!505835 () Bool)

(assert (= bs!505835 (and d!807168 d!807028)))

(assert (=> bs!505835 (= lambda!101885 lambda!101875)))

(declare-fun bs!505836 () Bool)

(assert (= bs!505836 (and d!807168 d!806762)))

(assert (=> bs!505836 (= lambda!101885 lambda!101850)))

(declare-fun bs!505837 () Bool)

(assert (= bs!505837 (and d!807168 d!806784)))

(assert (=> bs!505837 (= lambda!101885 lambda!101853)))

(declare-fun bs!505838 () Bool)

(assert (= bs!505838 (and d!807168 d!806984)))

(assert (=> bs!505838 (= lambda!101885 lambda!101868)))

(declare-fun bs!505839 () Bool)

(assert (= bs!505839 (and d!807168 d!806788)))

(assert (=> bs!505839 (= lambda!101885 lambda!101854)))

(declare-fun bs!505840 () Bool)

(assert (= bs!505840 (and d!807168 d!807082)))

(assert (=> bs!505840 (= lambda!101885 lambda!101880)))

(declare-fun bs!505841 () Bool)

(assert (= bs!505841 (and d!807168 d!807030)))

(assert (=> bs!505841 (= lambda!101885 lambda!101876)))

(declare-fun bs!505842 () Bool)

(assert (= bs!505842 (and d!807168 d!807024)))

(assert (=> bs!505842 (= lambda!101885 lambda!101873)))

(declare-fun bs!505843 () Bool)

(assert (= bs!505843 (and d!807168 d!806622)))

(assert (=> bs!505843 (= lambda!101885 lambda!101829)))

(declare-fun bs!505844 () Bool)

(assert (= bs!505844 (and d!807168 d!806908)))

(assert (=> bs!505844 (= lambda!101885 lambda!101860)))

(declare-fun bs!505845 () Bool)

(assert (= bs!505845 (and d!807168 d!807100)))

(assert (=> bs!505845 (= lambda!101885 lambda!101884)))

(assert (=> d!807168 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 mapDefault!17384)))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapDefault!17384)))) lambda!101885))))

(declare-fun bs!505846 () Bool)

(assert (= bs!505846 d!807168))

(declare-fun m!3203751 () Bool)

(assert (=> bs!505846 m!3203751))

(assert (=> b!2775308 d!807168))

(assert (=> bm!181515 d!806532))

(declare-fun b!2776165 () Bool)

(declare-fun e!1750997 () List!32172)

(assert (=> b!2776165 (= e!1750997 Nil!32072)))

(declare-fun b!2776166 () Bool)

(declare-fun e!1750998 () List!32172)

(assert (=> b!2776166 (= e!1750997 e!1750998)))

(declare-fun c!450841 () Bool)

(assert (=> b!2776166 (= c!450841 ((_ is Leaf!15201) (c!450499 (_2!19066 lt!989513))))))

(declare-fun d!807170 () Bool)

(declare-fun c!450840 () Bool)

(assert (=> d!807170 (= c!450840 ((_ is Empty!9981) (c!450499 (_2!19066 lt!989513))))))

(assert (=> d!807170 (= (list!12097 (c!450499 (_2!19066 lt!989513))) e!1750997)))

(declare-fun b!2776167 () Bool)

(assert (=> b!2776167 (= e!1750998 (list!12098 (xs!13091 (c!450499 (_2!19066 lt!989513)))))))

(declare-fun b!2776168 () Bool)

(assert (=> b!2776168 (= e!1750998 (++!7932 (list!12097 (left!24418 (c!450499 (_2!19066 lt!989513)))) (list!12097 (right!24748 (c!450499 (_2!19066 lt!989513))))))))

(assert (= (and d!807170 c!450840) b!2776165))

(assert (= (and d!807170 (not c!450840)) b!2776166))

(assert (= (and b!2776166 c!450841) b!2776167))

(assert (= (and b!2776166 (not c!450841)) b!2776168))

(declare-fun m!3203753 () Bool)

(assert (=> b!2776167 m!3203753))

(declare-fun m!3203755 () Bool)

(assert (=> b!2776168 m!3203755))

(declare-fun m!3203757 () Bool)

(assert (=> b!2776168 m!3203757))

(assert (=> b!2776168 m!3203755))

(assert (=> b!2776168 m!3203757))

(declare-fun m!3203759 () Bool)

(assert (=> b!2776168 m!3203759))

(assert (=> d!806552 d!807170))

(declare-fun d!807172 () Bool)

(declare-fun lt!990392 () Int)

(assert (=> d!807172 (>= lt!990392 0)))

(declare-fun e!1750999 () Int)

(assert (=> d!807172 (= lt!990392 e!1750999)))

(declare-fun c!450842 () Bool)

(assert (=> d!807172 (= c!450842 ((_ is Nil!32072) (_1!19065 lt!989892)))))

(assert (=> d!807172 (= (size!24869 (_1!19065 lt!989892)) lt!990392)))

(declare-fun b!2776169 () Bool)

(assert (=> b!2776169 (= e!1750999 0)))

(declare-fun b!2776170 () Bool)

(assert (=> b!2776170 (= e!1750999 (+ 1 (size!24869 (t!228300 (_1!19065 lt!989892)))))))

(assert (= (and d!807172 c!450842) b!2776169))

(assert (= (and d!807172 (not c!450842)) b!2776170))

(declare-fun m!3203761 () Bool)

(assert (=> b!2776170 m!3203761))

(assert (=> b!2775128 d!807172))

(assert (=> b!2775128 d!806656))

(declare-fun d!807174 () Bool)

(assert (=> d!807174 (isPrefix!2557 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834))))

(declare-fun lt!990393 () Unit!46204)

(assert (=> d!807174 (= lt!990393 (choose!16274 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834)))))

(assert (=> d!807174 (= (lemmaIsPrefixRefl!1681 (ite c!450559 lt!989836 lt!989802) (ite c!450559 lt!989807 lt!989834)) lt!990393)))

(declare-fun bs!505847 () Bool)

(assert (= bs!505847 d!807174))

(assert (=> bs!505847 m!3201707))

(declare-fun m!3203763 () Bool)

(assert (=> bs!505847 m!3203763))

(assert (=> bm!181552 d!807174))

(declare-fun bs!505848 () Bool)

(declare-fun d!807176 () Bool)

(assert (= bs!505848 (and d!807176 d!806824)))

(declare-fun lambda!101886 () Int)

(assert (=> bs!505848 (= (= call!181581 call!181550) (= lambda!101886 lambda!101856))))

(declare-fun bs!505849 () Bool)

(assert (= bs!505849 (and d!807176 d!806692)))

(assert (=> bs!505849 (= (= call!181581 call!181560) (= lambda!101886 lambda!101838))))

(declare-fun bs!505850 () Bool)

(assert (= bs!505850 (and d!807176 d!807026)))

(assert (=> bs!505850 (= (= call!181581 call!181569) (= lambda!101886 lambda!101874))))

(declare-fun bs!505851 () Bool)

(assert (= bs!505851 (and d!807176 d!806598)))

(assert (=> bs!505851 (= (= call!181581 lt!989475) (= lambda!101886 lambda!101820))))

(declare-fun bs!505852 () Bool)

(assert (= bs!505852 (and d!807176 d!806618)))

(assert (=> bs!505852 (= (= call!181581 lt!989486) (= lambda!101886 lambda!101828))))

(declare-fun bs!505853 () Bool)

(assert (= bs!505853 (and d!807176 d!806600)))

(assert (=> bs!505853 (= (= call!181581 lt!989503) (= lambda!101886 lambda!101821))))

(declare-fun bs!505854 () Bool)

(assert (= bs!505854 (and d!807176 d!806980)))

(assert (=> bs!505854 (= (= call!181581 call!181521) (= lambda!101886 lambda!101867))))

(assert (=> d!807176 true))

(assert (=> d!807176 (= (derivationStepZipper!369 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) call!181581) (flatMap!186 (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lambda!101886))))

(declare-fun bs!505855 () Bool)

(assert (= bs!505855 d!807176))

(declare-fun m!3203765 () Bool)

(assert (=> bs!505855 m!3203765))

(assert (=> bm!181577 d!807176))

(declare-fun bs!505856 () Bool)

(declare-fun d!807178 () Bool)

(assert (= bs!505856 (and d!807178 d!806686)))

(declare-fun lambda!101887 () Int)

(assert (=> bs!505856 (= lambda!101887 lambda!101837)))

(declare-fun bs!505857 () Bool)

(assert (= bs!505857 (and d!807178 d!806910)))

(assert (=> bs!505857 (= lambda!101887 lambda!101861)))

(declare-fun bs!505858 () Bool)

(assert (= bs!505858 (and d!807178 d!806578)))

(assert (=> bs!505858 (= lambda!101887 lambda!101817)))

(declare-fun bs!505859 () Bool)

(assert (= bs!505859 (and d!807178 d!806936)))

(assert (=> bs!505859 (= lambda!101887 lambda!101864)))

(declare-fun bs!505860 () Bool)

(assert (= bs!505860 (and d!807178 d!806914)))

(assert (=> bs!505860 (= lambda!101887 lambda!101862)))

(declare-fun bs!505861 () Bool)

(assert (= bs!505861 (and d!807178 d!806846)))

(assert (=> bs!505861 (= lambda!101887 lambda!101858)))

(declare-fun bs!505862 () Bool)

(assert (= bs!505862 (and d!807178 d!806764)))

(assert (=> bs!505862 (= lambda!101887 lambda!101851)))

(declare-fun bs!505863 () Bool)

(assert (= bs!505863 (and d!807178 d!807168)))

(assert (=> bs!505863 (= lambda!101887 lambda!101885)))

(declare-fun bs!505864 () Bool)

(assert (= bs!505864 (and d!807178 d!806694)))

(assert (=> bs!505864 (= lambda!101887 lambda!101839)))

(declare-fun bs!505865 () Bool)

(assert (= bs!505865 (and d!807178 d!806770)))

(assert (=> bs!505865 (= lambda!101887 lambda!101852)))

(declare-fun bs!505866 () Bool)

(assert (= bs!505866 (and d!807178 d!806848)))

(assert (=> bs!505866 (= lambda!101887 lambda!101859)))

(declare-fun bs!505867 () Bool)

(assert (= bs!505867 (and d!807178 d!806844)))

(assert (=> bs!505867 (= lambda!101887 lambda!101857)))

(declare-fun bs!505868 () Bool)

(assert (= bs!505868 (and d!807178 d!807080)))

(assert (=> bs!505868 (= lambda!101887 lambda!101879)))

(declare-fun bs!505869 () Bool)

(assert (= bs!505869 (and d!807178 d!807028)))

(assert (=> bs!505869 (= lambda!101887 lambda!101875)))

(declare-fun bs!505870 () Bool)

(assert (= bs!505870 (and d!807178 d!806762)))

(assert (=> bs!505870 (= lambda!101887 lambda!101850)))

(declare-fun bs!505871 () Bool)

(assert (= bs!505871 (and d!807178 d!806784)))

(assert (=> bs!505871 (= lambda!101887 lambda!101853)))

(declare-fun bs!505872 () Bool)

(assert (= bs!505872 (and d!807178 d!806984)))

(assert (=> bs!505872 (= lambda!101887 lambda!101868)))

(declare-fun bs!505873 () Bool)

(assert (= bs!505873 (and d!807178 d!806788)))

(assert (=> bs!505873 (= lambda!101887 lambda!101854)))

(declare-fun bs!505874 () Bool)

(assert (= bs!505874 (and d!807178 d!807082)))

(assert (=> bs!505874 (= lambda!101887 lambda!101880)))

(declare-fun bs!505875 () Bool)

(assert (= bs!505875 (and d!807178 d!807030)))

(assert (=> bs!505875 (= lambda!101887 lambda!101876)))

(declare-fun bs!505876 () Bool)

(assert (= bs!505876 (and d!807178 d!807024)))

(assert (=> bs!505876 (= lambda!101887 lambda!101873)))

(declare-fun bs!505877 () Bool)

(assert (= bs!505877 (and d!807178 d!806622)))

(assert (=> bs!505877 (= lambda!101887 lambda!101829)))

(declare-fun bs!505878 () Bool)

(assert (= bs!505878 (and d!807178 d!806908)))

(assert (=> bs!505878 (= lambda!101887 lambda!101860)))

(declare-fun bs!505879 () Bool)

(assert (= bs!505879 (and d!807178 d!807100)))

(assert (=> bs!505879 (= lambda!101887 lambda!101884)))

(assert (=> d!807178 (= (inv!43564 (_2!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) (forall!6632 (exprs!2821 (_2!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))) lambda!101887))))

(declare-fun bs!505880 () Bool)

(assert (= bs!505880 d!807178))

(declare-fun m!3203767 () Bool)

(assert (=> bs!505880 m!3203767))

(assert (=> b!2775316 d!807178))

(declare-fun d!807180 () Bool)

(assert (not d!807180))

(assert (=> b!2775077 d!807180))

(assert (=> b!2775077 d!806510))

(assert (=> bm!181538 d!806510))

(declare-fun d!807182 () Bool)

(assert (=> d!807182 (= lt!989496 Nil!32072)))

(assert (=> d!807182 true))

(declare-fun _$60!746 () Unit!46204)

(assert (=> d!807182 (= (choose!16278 lt!989496 Nil!32072 lt!989496) _$60!746)))

(assert (=> d!806532 d!807182))

(assert (=> d!806532 d!806592))

(declare-fun bs!505881 () Bool)

(declare-fun d!807184 () Bool)

(assert (= bs!505881 (and d!807184 d!806638)))

(declare-fun lambda!101890 () Int)

(assert (=> bs!505881 (not (= lambda!101890 lambda!101830))))

(declare-fun bs!505882 () Bool)

(assert (= bs!505882 (and d!807184 b!2774981)))

(assert (=> bs!505882 (not (= lambda!101890 lambda!101810))))

(declare-fun bs!505883 () Bool)

(assert (= bs!505883 (and d!807184 d!807008)))

(assert (=> bs!505883 (not (= lambda!101890 lambda!101869))))

(declare-fun bs!505884 () Bool)

(assert (= bs!505884 (and d!807184 b!2775957)))

(assert (=> bs!505884 (not (= lambda!101890 lambda!101870))))

(declare-fun bs!505885 () Bool)

(assert (= bs!505885 (and d!807184 b!2775512)))

(assert (=> bs!505885 (not (= lambda!101890 lambda!101842))))

(declare-fun bs!505886 () Bool)

(assert (= bs!505886 (and d!807184 b!2775958)))

(assert (=> bs!505886 (not (= lambda!101890 lambda!101871))))

(declare-fun bs!505887 () Bool)

(assert (= bs!505887 (and d!807184 d!806678)))

(assert (=> bs!505887 (not (= lambda!101890 lambda!101836))))

(declare-fun bs!505888 () Bool)

(assert (= bs!505888 (and d!807184 b!2775434)))

(assert (=> bs!505888 (not (= lambda!101890 lambda!101832))))

(declare-fun bs!505889 () Bool)

(assert (= bs!505889 (and d!807184 d!806718)))

(assert (=> bs!505889 (not (= lambda!101890 lambda!101840))))

(declare-fun bs!505890 () Bool)

(assert (= bs!505890 (and d!807184 d!806544)))

(assert (=> bs!505890 (not (= lambda!101890 lambda!101814))))

(declare-fun bs!505891 () Bool)

(assert (= bs!505891 (and d!807184 d!807084)))

(assert (=> bs!505891 (= (= lambda!101809 (ite c!450515 lambda!101810 lambda!101811)) (= lambda!101890 lambda!101883))))

(declare-fun bs!505892 () Bool)

(assert (= bs!505892 (and d!807184 d!806468)))

(assert (=> bs!505892 (not (= lambda!101890 lambda!101809))))

(declare-fun bs!505893 () Bool)

(assert (= bs!505893 (and d!807184 d!806730)))

(assert (=> bs!505893 (not (= lambda!101890 lambda!101849))))

(declare-fun bs!505894 () Bool)

(assert (= bs!505894 (and d!807184 b!2775433)))

(assert (=> bs!505894 (not (= lambda!101890 lambda!101831))))

(declare-fun bs!505895 () Bool)

(assert (= bs!505895 (and d!807184 b!2775511)))

(assert (=> bs!505895 (not (= lambda!101890 lambda!101841))))

(declare-fun bs!505896 () Bool)

(assert (= bs!505896 (and d!807184 b!2774982)))

(assert (=> bs!505896 (not (= lambda!101890 lambda!101811))))

(declare-fun bs!505897 () Bool)

(assert (= bs!505897 (and d!807184 d!806614)))

(assert (=> bs!505897 (= lambda!101890 lambda!101827)))

(declare-fun bs!505898 () Bool)

(assert (= bs!505898 (and d!807184 d!807056)))

(assert (=> bs!505898 (not (= lambda!101890 lambda!101877))))

(assert (=> d!807184 true))

(assert (=> d!807184 (< (dynLambda!13607 order!17239 lambda!101809) (dynLambda!13607 order!17239 lambda!101890))))

(assert (=> d!807184 (not (exists!976 lt!989572 lambda!101890))))

(declare-fun lt!990396 () Unit!46204)

(declare-fun choose!16287 (List!32176 Int) Unit!46204)

(assert (=> d!807184 (= lt!990396 (choose!16287 lt!989572 lambda!101809))))

(assert (=> d!807184 (forall!6634 lt!989572 lambda!101809)))

(assert (=> d!807184 (= (lemmaForallThenNotExists!84 lt!989572 lambda!101809) lt!990396)))

(declare-fun bs!505899 () Bool)

(assert (= bs!505899 d!807184))

(declare-fun m!3203769 () Bool)

(assert (=> bs!505899 m!3203769))

(declare-fun m!3203771 () Bool)

(assert (=> bs!505899 m!3203771))

(declare-fun m!3203773 () Bool)

(assert (=> bs!505899 m!3203773))

(assert (=> b!2774982 d!807184))

(assert (=> b!2775189 d!806518))

(declare-fun bs!505900 () Bool)

(declare-fun d!807186 () Bool)

(assert (= bs!505900 (and d!807186 d!806638)))

(declare-fun lambda!101891 () Int)

(assert (=> bs!505900 (not (= lambda!101891 lambda!101830))))

(declare-fun bs!505901 () Bool)

(assert (= bs!505901 (and d!807186 d!807184)))

(assert (=> bs!505901 (not (= lambda!101891 lambda!101890))))

(declare-fun bs!505902 () Bool)

(assert (= bs!505902 (and d!807186 b!2774981)))

(assert (=> bs!505902 (not (= lambda!101891 lambda!101810))))

(declare-fun bs!505903 () Bool)

(assert (= bs!505903 (and d!807186 d!807008)))

(assert (=> bs!505903 (not (= lambda!101891 lambda!101869))))

(declare-fun bs!505904 () Bool)

(assert (= bs!505904 (and d!807186 b!2775957)))

(assert (=> bs!505904 (not (= lambda!101891 lambda!101870))))

(declare-fun bs!505905 () Bool)

(assert (= bs!505905 (and d!807186 b!2775512)))

(assert (=> bs!505905 (not (= lambda!101891 lambda!101842))))

(declare-fun bs!505906 () Bool)

(assert (= bs!505906 (and d!807186 b!2775958)))

(assert (=> bs!505906 (not (= lambda!101891 lambda!101871))))

(declare-fun bs!505907 () Bool)

(assert (= bs!505907 (and d!807186 d!806678)))

(assert (=> bs!505907 (= lambda!101891 lambda!101836)))

(declare-fun bs!505908 () Bool)

(assert (= bs!505908 (and d!807186 b!2775434)))

(assert (=> bs!505908 (not (= lambda!101891 lambda!101832))))

(declare-fun bs!505909 () Bool)

(assert (= bs!505909 (and d!807186 d!806718)))

(assert (=> bs!505909 (not (= lambda!101891 lambda!101840))))

(declare-fun bs!505910 () Bool)

(assert (= bs!505910 (and d!807186 d!806544)))

(assert (=> bs!505910 (= lambda!101891 lambda!101814)))

(declare-fun bs!505911 () Bool)

(assert (= bs!505911 (and d!807186 d!807084)))

(assert (=> bs!505911 (not (= lambda!101891 lambda!101883))))

(declare-fun bs!505912 () Bool)

(assert (= bs!505912 (and d!807186 d!806468)))

(assert (=> bs!505912 (not (= lambda!101891 lambda!101809))))

(declare-fun bs!505913 () Bool)

(assert (= bs!505913 (and d!807186 d!806730)))

(assert (=> bs!505913 (not (= lambda!101891 lambda!101849))))

(declare-fun bs!505914 () Bool)

(assert (= bs!505914 (and d!807186 b!2775433)))

(assert (=> bs!505914 (not (= lambda!101891 lambda!101831))))

(declare-fun bs!505915 () Bool)

(assert (= bs!505915 (and d!807186 b!2775511)))

(assert (=> bs!505915 (not (= lambda!101891 lambda!101841))))

(declare-fun bs!505916 () Bool)

(assert (= bs!505916 (and d!807186 b!2774982)))

(assert (=> bs!505916 (not (= lambda!101891 lambda!101811))))

(declare-fun bs!505917 () Bool)

(assert (= bs!505917 (and d!807186 d!806614)))

(assert (=> bs!505917 (not (= lambda!101891 lambda!101827))))

(declare-fun bs!505918 () Bool)

(assert (= bs!505918 (and d!807186 d!807056)))

(assert (=> bs!505918 (= lambda!101891 lambda!101877)))

(assert (=> d!807186 (= (nullableZipper!636 call!181484) (exists!977 call!181484 lambda!101891))))

(declare-fun bs!505919 () Bool)

(assert (= bs!505919 d!807186))

(declare-fun m!3203775 () Bool)

(assert (=> bs!505919 m!3203775))

(assert (=> bm!181559 d!807186))

(declare-fun b!2776171 () Bool)

(declare-fun res!1159976 () Bool)

(declare-fun e!1751003 () Bool)

(assert (=> b!2776171 (=> (not res!1159976) (not e!1751003))))

(assert (=> b!2776171 (= res!1159976 (isBalanced!3044 (right!24748 (c!450499 (_2!19066 lt!989907)))))))

(declare-fun b!2776172 () Bool)

(declare-fun res!1159974 () Bool)

(assert (=> b!2776172 (=> (not res!1159974) (not e!1751003))))

(assert (=> b!2776172 (= res!1159974 (<= (- (height!1489 (left!24418 (c!450499 (_2!19066 lt!989907)))) (height!1489 (right!24748 (c!450499 (_2!19066 lt!989907))))) 1))))

(declare-fun b!2776173 () Bool)

(assert (=> b!2776173 (= e!1751003 (not (isEmpty!18099 (right!24748 (c!450499 (_2!19066 lt!989907))))))))

(declare-fun b!2776174 () Bool)

(declare-fun res!1159979 () Bool)

(assert (=> b!2776174 (=> (not res!1159979) (not e!1751003))))

(assert (=> b!2776174 (= res!1159979 (isBalanced!3044 (left!24418 (c!450499 (_2!19066 lt!989907)))))))

(declare-fun b!2776175 () Bool)

(declare-fun e!1751002 () Bool)

(assert (=> b!2776175 (= e!1751002 e!1751003)))

(declare-fun res!1159978 () Bool)

(assert (=> b!2776175 (=> (not res!1159978) (not e!1751003))))

(assert (=> b!2776175 (= res!1159978 (<= (- 1) (- (height!1489 (left!24418 (c!450499 (_2!19066 lt!989907)))) (height!1489 (right!24748 (c!450499 (_2!19066 lt!989907)))))))))

(declare-fun b!2776176 () Bool)

(declare-fun res!1159975 () Bool)

(assert (=> b!2776176 (=> (not res!1159975) (not e!1751003))))

(assert (=> b!2776176 (= res!1159975 (not (isEmpty!18099 (left!24418 (c!450499 (_2!19066 lt!989907))))))))

(declare-fun d!807188 () Bool)

(declare-fun res!1159977 () Bool)

(assert (=> d!807188 (=> res!1159977 e!1751002)))

(assert (=> d!807188 (= res!1159977 (not ((_ is Node!9981) (c!450499 (_2!19066 lt!989907)))))))

(assert (=> d!807188 (= (isBalanced!3044 (c!450499 (_2!19066 lt!989907))) e!1751002)))

(assert (= (and d!807188 (not res!1159977)) b!2776175))

(assert (= (and b!2776175 res!1159978) b!2776172))

(assert (= (and b!2776172 res!1159974) b!2776174))

(assert (= (and b!2776174 res!1159979) b!2776171))

(assert (= (and b!2776171 res!1159976) b!2776176))

(assert (= (and b!2776176 res!1159975) b!2776173))

(declare-fun m!3203777 () Bool)

(assert (=> b!2776172 m!3203777))

(declare-fun m!3203779 () Bool)

(assert (=> b!2776172 m!3203779))

(declare-fun m!3203781 () Bool)

(assert (=> b!2776176 m!3203781))

(assert (=> b!2776175 m!3203777))

(assert (=> b!2776175 m!3203779))

(declare-fun m!3203783 () Bool)

(assert (=> b!2776171 m!3203783))

(declare-fun m!3203785 () Bool)

(assert (=> b!2776174 m!3203785))

(declare-fun m!3203787 () Bool)

(assert (=> b!2776173 m!3203787))

(assert (=> b!2775180 d!807188))

(assert (=> bm!181557 d!806874))

(declare-fun d!807190 () Bool)

(assert (=> d!807190 (= (ite c!450550 lt!989782 lt!989774) Nil!32072)))

(declare-fun lt!990397 () Unit!46204)

(assert (=> d!807190 (= lt!990397 (choose!16278 (ite c!450550 lt!989782 lt!989774) Nil!32072 e!1750306))))

(assert (=> d!807190 (isPrefix!2557 (ite c!450550 lt!989782 lt!989774) e!1750306)))

(assert (=> d!807190 (= (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450550 lt!989782 lt!989774) Nil!32072 e!1750306) lt!990397)))

(declare-fun bs!505920 () Bool)

(assert (= bs!505920 d!807190))

(declare-fun m!3203789 () Bool)

(assert (=> bs!505920 m!3203789))

(declare-fun m!3203791 () Bool)

(assert (=> bs!505920 m!3203791))

(assert (=> bm!181541 d!807190))

(declare-fun d!807192 () Bool)

(assert (=> d!807192 (= (flatMap!186 z!3597 lambda!101820) (choose!16285 z!3597 lambda!101820))))

(declare-fun bs!505921 () Bool)

(assert (= bs!505921 d!807192))

(declare-fun m!3203793 () Bool)

(assert (=> bs!505921 m!3203793))

(assert (=> d!806598 d!807192))

(declare-fun d!807194 () Bool)

(assert (=> d!807194 (isPrefix!2557 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783))))

(declare-fun lt!990398 () Unit!46204)

(assert (=> d!807194 (= lt!990398 (choose!16274 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783)))))

(assert (=> d!807194 (= (lemmaIsPrefixRefl!1681 (ite c!450550 lt!989785 lt!989751) (ite c!450550 lt!989756 lt!989783)) lt!990398)))

(declare-fun bs!505922 () Bool)

(assert (= bs!505922 d!807194))

(assert (=> bs!505922 m!3201631))

(declare-fun m!3203795 () Bool)

(assert (=> bs!505922 m!3203795))

(assert (=> bm!181542 d!807194))

(assert (=> bm!181548 d!807150))

(declare-fun d!807196 () Bool)

(declare-fun lt!990399 () Int)

(assert (=> d!807196 (>= lt!990399 0)))

(declare-fun e!1751004 () Int)

(assert (=> d!807196 (= lt!990399 e!1751004)))

(declare-fun c!450843 () Bool)

(assert (=> d!807196 (= c!450843 ((_ is Nil!32072) (++!7932 Nil!32072 lt!989496)))))

(assert (=> d!807196 (= (size!24869 (++!7932 Nil!32072 lt!989496)) lt!990399)))

(declare-fun b!2776177 () Bool)

(assert (=> b!2776177 (= e!1751004 0)))

(declare-fun b!2776178 () Bool)

(assert (=> b!2776178 (= e!1751004 (+ 1 (size!24869 (t!228300 (++!7932 Nil!32072 lt!989496)))))))

(assert (= (and d!807196 c!450843) b!2776177))

(assert (= (and d!807196 (not c!450843)) b!2776178))

(declare-fun m!3203797 () Bool)

(assert (=> b!2776178 m!3203797))

(assert (=> b!2774972 d!807196))

(assert (=> b!2774972 d!806514))

(declare-fun bs!505923 () Bool)

(declare-fun d!807198 () Bool)

(assert (= bs!505923 (and d!807198 d!806686)))

(declare-fun lambda!101892 () Int)

(assert (=> bs!505923 (= lambda!101892 lambda!101837)))

(declare-fun bs!505924 () Bool)

(assert (= bs!505924 (and d!807198 d!806910)))

(assert (=> bs!505924 (= lambda!101892 lambda!101861)))

(declare-fun bs!505925 () Bool)

(assert (= bs!505925 (and d!807198 d!806578)))

(assert (=> bs!505925 (= lambda!101892 lambda!101817)))

(declare-fun bs!505926 () Bool)

(assert (= bs!505926 (and d!807198 d!806936)))

(assert (=> bs!505926 (= lambda!101892 lambda!101864)))

(declare-fun bs!505927 () Bool)

(assert (= bs!505927 (and d!807198 d!806914)))

(assert (=> bs!505927 (= lambda!101892 lambda!101862)))

(declare-fun bs!505928 () Bool)

(assert (= bs!505928 (and d!807198 d!807178)))

(assert (=> bs!505928 (= lambda!101892 lambda!101887)))

(declare-fun bs!505929 () Bool)

(assert (= bs!505929 (and d!807198 d!806846)))

(assert (=> bs!505929 (= lambda!101892 lambda!101858)))

(declare-fun bs!505930 () Bool)

(assert (= bs!505930 (and d!807198 d!806764)))

(assert (=> bs!505930 (= lambda!101892 lambda!101851)))

(declare-fun bs!505931 () Bool)

(assert (= bs!505931 (and d!807198 d!807168)))

(assert (=> bs!505931 (= lambda!101892 lambda!101885)))

(declare-fun bs!505932 () Bool)

(assert (= bs!505932 (and d!807198 d!806694)))

(assert (=> bs!505932 (= lambda!101892 lambda!101839)))

(declare-fun bs!505933 () Bool)

(assert (= bs!505933 (and d!807198 d!806770)))

(assert (=> bs!505933 (= lambda!101892 lambda!101852)))

(declare-fun bs!505934 () Bool)

(assert (= bs!505934 (and d!807198 d!806848)))

(assert (=> bs!505934 (= lambda!101892 lambda!101859)))

(declare-fun bs!505935 () Bool)

(assert (= bs!505935 (and d!807198 d!806844)))

(assert (=> bs!505935 (= lambda!101892 lambda!101857)))

(declare-fun bs!505936 () Bool)

(assert (= bs!505936 (and d!807198 d!807080)))

(assert (=> bs!505936 (= lambda!101892 lambda!101879)))

(declare-fun bs!505937 () Bool)

(assert (= bs!505937 (and d!807198 d!807028)))

(assert (=> bs!505937 (= lambda!101892 lambda!101875)))

(declare-fun bs!505938 () Bool)

(assert (= bs!505938 (and d!807198 d!806762)))

(assert (=> bs!505938 (= lambda!101892 lambda!101850)))

(declare-fun bs!505939 () Bool)

(assert (= bs!505939 (and d!807198 d!806784)))

(assert (=> bs!505939 (= lambda!101892 lambda!101853)))

(declare-fun bs!505940 () Bool)

(assert (= bs!505940 (and d!807198 d!806984)))

(assert (=> bs!505940 (= lambda!101892 lambda!101868)))

(declare-fun bs!505941 () Bool)

(assert (= bs!505941 (and d!807198 d!806788)))

(assert (=> bs!505941 (= lambda!101892 lambda!101854)))

(declare-fun bs!505942 () Bool)

(assert (= bs!505942 (and d!807198 d!807082)))

(assert (=> bs!505942 (= lambda!101892 lambda!101880)))

(declare-fun bs!505943 () Bool)

(assert (= bs!505943 (and d!807198 d!807030)))

(assert (=> bs!505943 (= lambda!101892 lambda!101876)))

(declare-fun bs!505944 () Bool)

(assert (= bs!505944 (and d!807198 d!807024)))

(assert (=> bs!505944 (= lambda!101892 lambda!101873)))

(declare-fun bs!505945 () Bool)

(assert (= bs!505945 (and d!807198 d!806622)))

(assert (=> bs!505945 (= lambda!101892 lambda!101829)))

(declare-fun bs!505946 () Bool)

(assert (= bs!505946 (and d!807198 d!806908)))

(assert (=> bs!505946 (= lambda!101892 lambda!101860)))

(declare-fun bs!505947 () Bool)

(assert (= bs!505947 (and d!807198 d!807100)))

(assert (=> bs!505947 (= lambda!101892 lambda!101884)))

(assert (=> d!807198 (= (inv!43564 setElem!23048) (forall!6632 (exprs!2821 setElem!23048) lambda!101892))))

(declare-fun bs!505948 () Bool)

(assert (= bs!505948 d!807198))

(declare-fun m!3203799 () Bool)

(assert (=> bs!505948 m!3203799))

(assert (=> setNonEmpty!23049 d!807198))

(declare-fun d!807200 () Bool)

(assert (=> d!807200 (= (isEmpty!18097 (_1!19065 lt!989868)) ((_ is Nil!32072) (_1!19065 lt!989868)))))

(assert (=> b!2775139 d!807200))

(assert (=> d!806530 d!806934))

(declare-fun b!2776179 () Bool)

(declare-fun e!1751012 () Unit!46204)

(declare-fun Unit!46253 () Unit!46204)

(assert (=> b!2776179 (= e!1751012 Unit!46253)))

(declare-fun lt!990420 () Unit!46204)

(declare-fun call!181674 () Unit!46204)

(assert (=> b!2776179 (= lt!990420 call!181674)))

(declare-fun call!181670 () Bool)

(assert (=> b!2776179 call!181670))

(declare-fun lt!990416 () Unit!46204)

(assert (=> b!2776179 (= lt!990416 lt!990420)))

(declare-fun lt!990425 () Unit!46204)

(declare-fun call!181673 () Unit!46204)

(assert (=> b!2776179 (= lt!990425 call!181673)))

(assert (=> b!2776179 (= lt!989496 lt!989655)))

(declare-fun lt!990409 () Unit!46204)

(assert (=> b!2776179 (= lt!990409 lt!990425)))

(assert (=> b!2776179 false))

(declare-fun d!807202 () Bool)

(declare-fun e!1751010 () Bool)

(assert (=> d!807202 e!1751010))

(declare-fun res!1159981 () Bool)

(assert (=> d!807202 (=> (not res!1159981) (not e!1751010))))

(declare-fun lt!990424 () tuple2!32288)

(assert (=> d!807202 (= res!1159981 (= (++!7932 (_1!19065 lt!990424) (_2!19065 lt!990424)) lt!989496))))

(declare-fun e!1751006 () tuple2!32288)

(assert (=> d!807202 (= lt!990424 e!1751006)))

(declare-fun c!450848 () Bool)

(assert (=> d!807202 (= c!450848 (lostCauseZipper!443 call!181522))))

(declare-fun lt!990412 () Unit!46204)

(declare-fun Unit!46254 () Unit!46204)

(assert (=> d!807202 (= lt!990412 Unit!46254)))

(assert (=> d!807202 (= (getSuffix!1239 lt!989496 lt!989655) call!181518)))

(declare-fun lt!990411 () Unit!46204)

(declare-fun lt!990414 () Unit!46204)

(assert (=> d!807202 (= lt!990411 lt!990414)))

(declare-fun lt!990407 () List!32172)

(assert (=> d!807202 (= call!181518 lt!990407)))

(assert (=> d!807202 (= lt!990414 (lemmaSamePrefixThenSameSuffix!1141 lt!989655 call!181518 lt!989655 lt!990407 lt!989496))))

(assert (=> d!807202 (= lt!990407 (getSuffix!1239 lt!989496 lt!989655))))

(declare-fun lt!990408 () Unit!46204)

(declare-fun lt!990413 () Unit!46204)

(assert (=> d!807202 (= lt!990408 lt!990413)))

(assert (=> d!807202 (isPrefix!2557 lt!989655 (++!7932 lt!989655 call!181518))))

(assert (=> d!807202 (= lt!990413 (lemmaConcatTwoListThenFirstIsPrefix!1667 lt!989655 call!181518))))

(assert (=> d!807202 (= (++!7932 lt!989655 call!181518) lt!989496)))

(assert (=> d!807202 (= (findLongestMatchInnerZipper!27 call!181522 lt!989655 (+ 0 1) call!181518 lt!989496 lt!989489) lt!990424)))

(declare-fun bm!181664 () Bool)

(declare-fun call!181675 () C!16364)

(assert (=> bm!181664 (= call!181675 (head!6152 call!181518))))

(declare-fun b!2776180 () Bool)

(declare-fun e!1751007 () tuple2!32288)

(declare-fun call!181669 () tuple2!32288)

(assert (=> b!2776180 (= e!1751007 call!181669)))

(declare-fun b!2776181 () Bool)

(declare-fun e!1751008 () Bool)

(assert (=> b!2776181 (= e!1751008 (>= (size!24869 (_1!19065 lt!990424)) (size!24869 lt!989655)))))

(declare-fun b!2776182 () Bool)

(declare-fun c!450845 () Bool)

(declare-fun call!181671 () Bool)

(assert (=> b!2776182 (= c!450845 call!181671)))

(declare-fun lt!990417 () Unit!46204)

(declare-fun lt!990423 () Unit!46204)

(assert (=> b!2776182 (= lt!990417 lt!990423)))

(assert (=> b!2776182 (= lt!989496 lt!989655)))

(assert (=> b!2776182 (= lt!990423 call!181673)))

(declare-fun lt!990403 () Unit!46204)

(declare-fun lt!990410 () Unit!46204)

(assert (=> b!2776182 (= lt!990403 lt!990410)))

(assert (=> b!2776182 call!181670))

(assert (=> b!2776182 (= lt!990410 call!181674)))

(declare-fun e!1751005 () tuple2!32288)

(declare-fun e!1751011 () tuple2!32288)

(assert (=> b!2776182 (= e!1751005 e!1751011)))

(declare-fun b!2776183 () Bool)

(assert (=> b!2776183 (= e!1751011 (tuple2!32289 lt!989655 Nil!32072))))

(declare-fun b!2776184 () Bool)

(assert (=> b!2776184 (= e!1751006 e!1751005)))

(declare-fun c!450846 () Bool)

(assert (=> b!2776184 (= c!450846 (= (+ 0 1) lt!989489))))

(declare-fun b!2776185 () Bool)

(assert (=> b!2776185 (= e!1751010 e!1751008)))

(declare-fun res!1159980 () Bool)

(assert (=> b!2776185 (=> res!1159980 e!1751008)))

(assert (=> b!2776185 (= res!1159980 (isEmpty!18097 (_1!19065 lt!990424)))))

(declare-fun b!2776186 () Bool)

(declare-fun e!1751009 () tuple2!32288)

(assert (=> b!2776186 (= e!1751009 (tuple2!32289 lt!989655 call!181518))))

(declare-fun b!2776187 () Bool)

(declare-fun Unit!46255 () Unit!46204)

(assert (=> b!2776187 (= e!1751012 Unit!46255)))

(declare-fun bm!181665 () Bool)

(assert (=> bm!181665 (= call!181671 (nullableZipper!636 call!181522))))

(declare-fun b!2776188 () Bool)

(declare-fun c!450847 () Bool)

(assert (=> b!2776188 (= c!450847 call!181671)))

(declare-fun lt!990415 () Unit!46204)

(declare-fun lt!990418 () Unit!46204)

(assert (=> b!2776188 (= lt!990415 lt!990418)))

(declare-fun lt!990404 () List!32172)

(declare-fun lt!990402 () C!16364)

(assert (=> b!2776188 (= (++!7932 (++!7932 lt!989655 (Cons!32072 lt!990402 Nil!32072)) lt!990404) lt!989496)))

(assert (=> b!2776188 (= lt!990418 (lemmaMoveElementToOtherListKeepsConcatEq!873 lt!989655 lt!990402 lt!990404 lt!989496))))

(assert (=> b!2776188 (= lt!990404 (tail!4390 call!181518))))

(assert (=> b!2776188 (= lt!990402 (head!6152 call!181518))))

(declare-fun lt!990421 () Unit!46204)

(declare-fun lt!990401 () Unit!46204)

(assert (=> b!2776188 (= lt!990421 lt!990401)))

(assert (=> b!2776188 (isPrefix!2557 (++!7932 lt!989655 (Cons!32072 (head!6152 (getSuffix!1239 lt!989496 lt!989655)) Nil!32072)) lt!989496)))

(assert (=> b!2776188 (= lt!990401 (lemmaAddHeadSuffixToPrefixStillPrefix!461 lt!989655 lt!989496))))

(declare-fun lt!990422 () List!32172)

(assert (=> b!2776188 (= lt!990422 (++!7932 lt!989655 (Cons!32072 (head!6152 call!181518) Nil!32072)))))

(declare-fun lt!990405 () Unit!46204)

(assert (=> b!2776188 (= lt!990405 e!1751012)))

(declare-fun c!450844 () Bool)

(assert (=> b!2776188 (= c!450844 (= (size!24869 lt!989655) (size!24869 lt!989496)))))

(declare-fun lt!990406 () Unit!46204)

(declare-fun lt!990419 () Unit!46204)

(assert (=> b!2776188 (= lt!990406 lt!990419)))

(assert (=> b!2776188 (<= (size!24869 lt!989655) (size!24869 lt!989496))))

(assert (=> b!2776188 (= lt!990419 (lemmaIsPrefixThenSmallerEqSize!264 lt!989655 lt!989496))))

(assert (=> b!2776188 (= e!1751005 e!1751007)))

(declare-fun bm!181666 () Bool)

(declare-fun call!181676 () (InoxSet Context!4642))

(assert (=> bm!181666 (= call!181676 (derivationStepZipper!369 call!181522 call!181675))))

(declare-fun b!2776189 () Bool)

(assert (=> b!2776189 (= e!1751011 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181667 () Bool)

(assert (=> bm!181667 (= call!181674 (lemmaIsPrefixRefl!1681 lt!989496 lt!989496))))

(declare-fun b!2776190 () Bool)

(declare-fun lt!990400 () tuple2!32288)

(assert (=> b!2776190 (= e!1751009 lt!990400)))

(declare-fun b!2776191 () Bool)

(assert (=> b!2776191 (= e!1751006 (tuple2!32289 Nil!32072 lt!989496))))

(declare-fun bm!181668 () Bool)

(declare-fun call!181672 () List!32172)

(assert (=> bm!181668 (= call!181669 (findLongestMatchInnerZipper!27 call!181676 lt!990422 (+ 0 1 1) call!181672 lt!989496 lt!989489))))

(declare-fun bm!181669 () Bool)

(assert (=> bm!181669 (= call!181673 (lemmaIsPrefixSameLengthThenSameList!463 lt!989496 lt!989655 lt!989496))))

(declare-fun b!2776192 () Bool)

(assert (=> b!2776192 (= e!1751007 e!1751009)))

(assert (=> b!2776192 (= lt!990400 call!181669)))

(declare-fun c!450849 () Bool)

(assert (=> b!2776192 (= c!450849 (isEmpty!18097 (_1!19065 lt!990400)))))

(declare-fun bm!181670 () Bool)

(assert (=> bm!181670 (= call!181672 (tail!4390 call!181518))))

(declare-fun bm!181671 () Bool)

(assert (=> bm!181671 (= call!181670 (isPrefix!2557 lt!989496 lt!989496))))

(assert (= (and d!807202 c!450848) b!2776191))

(assert (= (and d!807202 (not c!450848)) b!2776184))

(assert (= (and b!2776184 c!450846) b!2776182))

(assert (= (and b!2776184 (not c!450846)) b!2776188))

(assert (= (and b!2776182 c!450845) b!2776183))

(assert (= (and b!2776182 (not c!450845)) b!2776189))

(assert (= (and b!2776188 c!450844) b!2776179))

(assert (= (and b!2776188 (not c!450844)) b!2776187))

(assert (= (and b!2776188 c!450847) b!2776192))

(assert (= (and b!2776188 (not c!450847)) b!2776180))

(assert (= (and b!2776192 c!450849) b!2776186))

(assert (= (and b!2776192 (not c!450849)) b!2776190))

(assert (= (or b!2776192 b!2776180) bm!181670))

(assert (= (or b!2776192 b!2776180) bm!181664))

(assert (= (or b!2776192 b!2776180) bm!181666))

(assert (= (or b!2776192 b!2776180) bm!181668))

(assert (= (or b!2776182 b!2776188) bm!181665))

(assert (= (or b!2776182 b!2776179) bm!181667))

(assert (= (or b!2776182 b!2776179) bm!181669))

(assert (= (or b!2776182 b!2776179) bm!181671))

(assert (= (and d!807202 res!1159981) b!2776185))

(assert (= (and b!2776185 (not res!1159980)) b!2776181))

(declare-fun m!3203801 () Bool)

(assert (=> b!2776188 m!3203801))

(declare-fun m!3203803 () Bool)

(assert (=> b!2776188 m!3203803))

(declare-fun m!3203805 () Bool)

(assert (=> b!2776188 m!3203805))

(declare-fun m!3203807 () Bool)

(assert (=> b!2776188 m!3203807))

(declare-fun m!3203809 () Bool)

(assert (=> b!2776188 m!3203809))

(declare-fun m!3203811 () Bool)

(assert (=> b!2776188 m!3203811))

(declare-fun m!3203813 () Bool)

(assert (=> b!2776188 m!3203813))

(declare-fun m!3203815 () Bool)

(assert (=> b!2776188 m!3203815))

(declare-fun m!3203817 () Bool)

(assert (=> b!2776188 m!3203817))

(assert (=> b!2776188 m!3203813))

(declare-fun m!3203819 () Bool)

(assert (=> b!2776188 m!3203819))

(assert (=> b!2776188 m!3203817))

(declare-fun m!3203821 () Bool)

(assert (=> b!2776188 m!3203821))

(assert (=> b!2776188 m!3203809))

(declare-fun m!3203823 () Bool)

(assert (=> b!2776188 m!3203823))

(assert (=> b!2776188 m!3201391))

(declare-fun m!3203825 () Bool)

(assert (=> b!2776188 m!3203825))

(declare-fun m!3203827 () Bool)

(assert (=> b!2776192 m!3203827))

(assert (=> bm!181667 m!3201335))

(assert (=> bm!181671 m!3201381))

(declare-fun m!3203829 () Bool)

(assert (=> d!807202 m!3203829))

(declare-fun m!3203831 () Bool)

(assert (=> d!807202 m!3203831))

(declare-fun m!3203833 () Bool)

(assert (=> d!807202 m!3203833))

(assert (=> d!807202 m!3203829))

(assert (=> d!807202 m!3203817))

(declare-fun m!3203835 () Bool)

(assert (=> d!807202 m!3203835))

(declare-fun m!3203837 () Bool)

(assert (=> d!807202 m!3203837))

(declare-fun m!3203839 () Bool)

(assert (=> d!807202 m!3203839))

(declare-fun m!3203841 () Bool)

(assert (=> bm!181669 m!3203841))

(declare-fun m!3203843 () Bool)

(assert (=> b!2776181 m!3203843))

(assert (=> b!2776181 m!3203805))

(declare-fun m!3203845 () Bool)

(assert (=> bm!181668 m!3203845))

(declare-fun m!3203847 () Bool)

(assert (=> bm!181665 m!3203847))

(declare-fun m!3203849 () Bool)

(assert (=> bm!181666 m!3203849))

(declare-fun m!3203851 () Bool)

(assert (=> b!2776185 m!3203851))

(assert (=> bm!181670 m!3203815))

(assert (=> bm!181664 m!3203807))

(assert (=> bm!181514 d!807202))

(declare-fun d!807204 () Bool)

(declare-fun lt!990426 () Int)

(assert (=> d!807204 (>= lt!990426 0)))

(declare-fun e!1751013 () Int)

(assert (=> d!807204 (= lt!990426 e!1751013)))

(declare-fun c!450850 () Bool)

(assert (=> d!807204 (= c!450850 ((_ is Nil!32072) (t!228300 lt!989496)))))

(assert (=> d!807204 (= (size!24869 (t!228300 lt!989496)) lt!990426)))

(declare-fun b!2776193 () Bool)

(assert (=> b!2776193 (= e!1751013 0)))

(declare-fun b!2776194 () Bool)

(assert (=> b!2776194 (= e!1751013 (+ 1 (size!24869 (t!228300 (t!228300 lt!989496)))))))

(assert (= (and d!807204 c!450850) b!2776193))

(assert (= (and d!807204 (not c!450850)) b!2776194))

(declare-fun m!3203853 () Bool)

(assert (=> b!2776194 m!3203853))

(assert (=> b!2775102 d!807204))

(declare-fun d!807206 () Bool)

(declare-fun e!1751014 () Bool)

(assert (=> d!807206 e!1751014))

(declare-fun res!1159982 () Bool)

(assert (=> d!807206 (=> (not res!1159982) (not e!1751014))))

(declare-fun lt!990427 () List!32172)

(assert (=> d!807206 (= res!1159982 (= (content!4508 lt!990427) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)))))))

(declare-fun e!1751015 () List!32172)

(assert (=> d!807206 (= lt!990427 e!1751015)))

(declare-fun c!450851 () Bool)

(assert (=> d!807206 (= c!450851 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807206 (= (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)) lt!990427)))

(declare-fun b!2776198 () Bool)

(assert (=> b!2776198 (= e!1751014 (or (not (= (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072) Nil!32072)) (= lt!990427 Nil!32072)))))

(declare-fun b!2776196 () Bool)

(assert (=> b!2776196 (= e!1751015 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072))))))

(declare-fun b!2776195 () Bool)

(assert (=> b!2776195 (= e!1751015 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072))))

(declare-fun b!2776197 () Bool)

(declare-fun res!1159983 () Bool)

(assert (=> b!2776197 (=> (not res!1159983) (not e!1751014))))

(assert (=> b!2776197 (= res!1159983 (= (size!24869 lt!990427) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)))))))

(assert (= (and d!807206 c!450851) b!2776195))

(assert (= (and d!807206 (not c!450851)) b!2776196))

(assert (= (and d!807206 res!1159982) b!2776197))

(assert (= (and b!2776197 res!1159983) b!2776198))

(declare-fun m!3203855 () Bool)

(assert (=> d!807206 m!3203855))

(assert (=> d!807206 m!3201467))

(declare-fun m!3203857 () Bool)

(assert (=> d!807206 m!3203857))

(declare-fun m!3203859 () Bool)

(assert (=> b!2776196 m!3203859))

(declare-fun m!3203861 () Bool)

(assert (=> b!2776197 m!3203861))

(assert (=> b!2776197 m!3201399))

(declare-fun m!3203863 () Bool)

(assert (=> b!2776197 m!3203863))

(assert (=> b!2775072 d!807206))

(declare-fun d!807208 () Bool)

(declare-fun e!1751016 () Bool)

(assert (=> d!807208 e!1751016))

(declare-fun res!1159984 () Bool)

(assert (=> d!807208 (=> (not res!1159984) (not e!1751016))))

(declare-fun lt!990428 () List!32172)

(assert (=> d!807208 (= res!1159984 (= (content!4508 lt!990428) ((_ map or) (content!4508 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072))) (content!4508 lt!989760))))))

(declare-fun e!1751017 () List!32172)

(assert (=> d!807208 (= lt!990428 e!1751017)))

(declare-fun c!450852 () Bool)

(assert (=> d!807208 (= c!450852 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072))))))

(assert (=> d!807208 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072)) lt!989760) lt!990428)))

(declare-fun b!2776202 () Bool)

(assert (=> b!2776202 (= e!1751016 (or (not (= lt!989760 Nil!32072)) (= lt!990428 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072)))))))

(declare-fun b!2776200 () Bool)

(assert (=> b!2776200 (= e!1751017 (Cons!32072 (h!37492 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072))) (++!7932 (t!228300 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072))) lt!989760)))))

(declare-fun b!2776199 () Bool)

(assert (=> b!2776199 (= e!1751017 lt!989760)))

(declare-fun b!2776201 () Bool)

(declare-fun res!1159985 () Bool)

(assert (=> b!2776201 (=> (not res!1159985) (not e!1751016))))

(assert (=> b!2776201 (= res!1159985 (= (size!24869 lt!990428) (+ (size!24869 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072))) (size!24869 lt!989760))))))

(assert (= (and d!807208 c!450852) b!2776199))

(assert (= (and d!807208 (not c!450852)) b!2776200))

(assert (= (and d!807208 res!1159984) b!2776201))

(assert (= (and b!2776201 res!1159985) b!2776202))

(declare-fun m!3203865 () Bool)

(assert (=> d!807208 m!3203865))

(assert (=> d!807208 m!3201605))

(declare-fun m!3203867 () Bool)

(assert (=> d!807208 m!3203867))

(declare-fun m!3203869 () Bool)

(assert (=> d!807208 m!3203869))

(declare-fun m!3203871 () Bool)

(assert (=> b!2776200 m!3203871))

(declare-fun m!3203873 () Bool)

(assert (=> b!2776201 m!3203873))

(assert (=> b!2776201 m!3201605))

(declare-fun m!3203875 () Bool)

(assert (=> b!2776201 m!3203875))

(declare-fun m!3203877 () Bool)

(assert (=> b!2776201 m!3203877))

(assert (=> b!2775072 d!807208))

(assert (=> b!2775072 d!806470))

(assert (=> b!2775072 d!806490))

(assert (=> b!2775072 d!806564))

(declare-fun b!2776204 () Bool)

(declare-fun res!1159987 () Bool)

(declare-fun e!1751020 () Bool)

(assert (=> b!2776204 (=> (not res!1159987) (not e!1751020))))

(assert (=> b!2776204 (= res!1159987 (= (head!6152 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072))) (head!6152 lt!989778)))))

(declare-fun b!2776203 () Bool)

(declare-fun e!1751019 () Bool)

(assert (=> b!2776203 (= e!1751019 e!1751020)))

(declare-fun res!1159988 () Bool)

(assert (=> b!2776203 (=> (not res!1159988) (not e!1751020))))

(assert (=> b!2776203 (= res!1159988 (not ((_ is Nil!32072) lt!989778)))))

(declare-fun d!807210 () Bool)

(declare-fun e!1751018 () Bool)

(assert (=> d!807210 e!1751018))

(declare-fun res!1159989 () Bool)

(assert (=> d!807210 (=> res!1159989 e!1751018)))

(declare-fun lt!990429 () Bool)

(assert (=> d!807210 (= res!1159989 (not lt!990429))))

(assert (=> d!807210 (= lt!990429 e!1751019)))

(declare-fun res!1159986 () Bool)

(assert (=> d!807210 (=> res!1159986 e!1751019)))

(assert (=> d!807210 (= res!1159986 ((_ is Nil!32072) (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072))))))

(assert (=> d!807210 (= (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)) lt!989778) lt!990429)))

(declare-fun b!2776205 () Bool)

(assert (=> b!2776205 (= e!1751020 (isPrefix!2557 (tail!4390 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072))) (tail!4390 lt!989778)))))

(declare-fun b!2776206 () Bool)

(assert (=> b!2776206 (= e!1751018 (>= (size!24869 lt!989778) (size!24869 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)))))))

(assert (= (and d!807210 (not res!1159986)) b!2776203))

(assert (= (and b!2776203 res!1159988) b!2776204))

(assert (= (and b!2776204 res!1159987) b!2776205))

(assert (= (and d!807210 (not res!1159989)) b!2776206))

(assert (=> b!2776204 m!3201623))

(declare-fun m!3203879 () Bool)

(assert (=> b!2776204 m!3203879))

(declare-fun m!3203881 () Bool)

(assert (=> b!2776204 m!3203881))

(assert (=> b!2776205 m!3201623))

(declare-fun m!3203883 () Bool)

(assert (=> b!2776205 m!3203883))

(declare-fun m!3203885 () Bool)

(assert (=> b!2776205 m!3203885))

(assert (=> b!2776205 m!3203883))

(assert (=> b!2776205 m!3203885))

(declare-fun m!3203887 () Bool)

(assert (=> b!2776205 m!3203887))

(declare-fun m!3203889 () Bool)

(assert (=> b!2776206 m!3203889))

(assert (=> b!2776206 m!3201623))

(declare-fun m!3203891 () Bool)

(assert (=> b!2776206 m!3203891))

(assert (=> b!2775072 d!807210))

(declare-fun b!2776207 () Bool)

(declare-fun e!1751024 () Int)

(declare-fun e!1751025 () Int)

(assert (=> b!2776207 (= e!1751024 e!1751025)))

(declare-fun c!450856 () Bool)

(declare-fun call!181677 () Int)

(assert (=> b!2776207 (= c!450856 (>= 0 call!181677))))

(declare-fun b!2776208 () Bool)

(assert (=> b!2776208 (= e!1751025 0)))

(declare-fun d!807212 () Bool)

(declare-fun e!1751021 () Bool)

(assert (=> d!807212 e!1751021))

(declare-fun res!1159990 () Bool)

(assert (=> d!807212 (=> (not res!1159990) (not e!1751021))))

(declare-fun lt!990430 () List!32172)

(assert (=> d!807212 (= res!1159990 (= ((_ map implies) (content!4508 lt!990430) (content!4508 lt!989754)) ((as const (InoxSet C!16364)) true)))))

(declare-fun e!1751023 () List!32172)

(assert (=> d!807212 (= lt!990430 e!1751023)))

(declare-fun c!450854 () Bool)

(assert (=> d!807212 (= c!450854 ((_ is Nil!32072) lt!989754))))

(assert (=> d!807212 (= (drop!1710 lt!989754 0) lt!990430)))

(declare-fun b!2776209 () Bool)

(declare-fun e!1751022 () List!32172)

(assert (=> b!2776209 (= e!1751022 lt!989754)))

(declare-fun b!2776210 () Bool)

(assert (=> b!2776210 (= e!1751021 (= (size!24869 lt!990430) e!1751024))))

(declare-fun c!450853 () Bool)

(assert (=> b!2776210 (= c!450853 (<= 0 0))))

(declare-fun b!2776211 () Bool)

(assert (=> b!2776211 (= e!1751023 e!1751022)))

(declare-fun c!450855 () Bool)

(assert (=> b!2776211 (= c!450855 (<= 0 0))))

(declare-fun b!2776212 () Bool)

(assert (=> b!2776212 (= e!1751023 Nil!32072)))

(declare-fun bm!181672 () Bool)

(assert (=> bm!181672 (= call!181677 (size!24869 lt!989754))))

(declare-fun b!2776213 () Bool)

(assert (=> b!2776213 (= e!1751022 (drop!1710 (t!228300 lt!989754) (- 0 1)))))

(declare-fun b!2776214 () Bool)

(assert (=> b!2776214 (= e!1751025 (- call!181677 0))))

(declare-fun b!2776215 () Bool)

(assert (=> b!2776215 (= e!1751024 call!181677)))

(assert (= (and d!807212 c!450854) b!2776212))

(assert (= (and d!807212 (not c!450854)) b!2776211))

(assert (= (and b!2776211 c!450855) b!2776209))

(assert (= (and b!2776211 (not c!450855)) b!2776213))

(assert (= (and d!807212 res!1159990) b!2776210))

(assert (= (and b!2776210 c!450853) b!2776215))

(assert (= (and b!2776210 (not c!450853)) b!2776207))

(assert (= (and b!2776207 c!450856) b!2776208))

(assert (= (and b!2776207 (not c!450856)) b!2776214))

(assert (= (or b!2776215 b!2776207 b!2776214) bm!181672))

(declare-fun m!3203893 () Bool)

(assert (=> d!807212 m!3203893))

(declare-fun m!3203895 () Bool)

(assert (=> d!807212 m!3203895))

(declare-fun m!3203897 () Bool)

(assert (=> b!2776210 m!3203897))

(declare-fun m!3203899 () Bool)

(assert (=> bm!181672 m!3203899))

(declare-fun m!3203901 () Bool)

(assert (=> b!2776213 m!3203901))

(assert (=> b!2775072 d!807212))

(declare-fun d!807214 () Bool)

(declare-fun lt!990431 () C!16364)

(assert (=> d!807214 (contains!5996 lt!989754 lt!990431)))

(declare-fun e!1751027 () C!16364)

(assert (=> d!807214 (= lt!990431 e!1751027)))

(declare-fun c!450857 () Bool)

(assert (=> d!807214 (= c!450857 (= 0 0))))

(declare-fun e!1751026 () Bool)

(assert (=> d!807214 e!1751026))

(declare-fun res!1159991 () Bool)

(assert (=> d!807214 (=> (not res!1159991) (not e!1751026))))

(assert (=> d!807214 (= res!1159991 (<= 0 0))))

(assert (=> d!807214 (= (apply!7513 lt!989754 0) lt!990431)))

(declare-fun b!2776216 () Bool)

(assert (=> b!2776216 (= e!1751026 (< 0 (size!24869 lt!989754)))))

(declare-fun b!2776217 () Bool)

(assert (=> b!2776217 (= e!1751027 (head!6152 lt!989754))))

(declare-fun b!2776218 () Bool)

(assert (=> b!2776218 (= e!1751027 (apply!7513 (tail!4390 lt!989754) (- 0 1)))))

(assert (= (and d!807214 res!1159991) b!2776216))

(assert (= (and d!807214 c!450857) b!2776217))

(assert (= (and d!807214 (not c!450857)) b!2776218))

(declare-fun m!3203903 () Bool)

(assert (=> d!807214 m!3203903))

(assert (=> b!2776216 m!3203899))

(declare-fun m!3203905 () Bool)

(assert (=> b!2776217 m!3203905))

(declare-fun m!3203907 () Bool)

(assert (=> b!2776218 m!3203907))

(assert (=> b!2776218 m!3203907))

(declare-fun m!3203909 () Bool)

(assert (=> b!2776218 m!3203909))

(assert (=> b!2775072 d!807214))

(declare-fun d!807216 () Bool)

(declare-fun e!1751028 () Bool)

(assert (=> d!807216 e!1751028))

(declare-fun res!1159992 () Bool)

(assert (=> d!807216 (=> (not res!1159992) (not e!1751028))))

(declare-fun lt!990432 () List!32172)

(assert (=> d!807216 (= res!1159992 (= (content!4508 lt!990432) ((_ map or) (content!4508 Nil!32072) (content!4508 (Cons!32072 lt!989763 Nil!32072)))))))

(declare-fun e!1751029 () List!32172)

(assert (=> d!807216 (= lt!990432 e!1751029)))

(declare-fun c!450858 () Bool)

(assert (=> d!807216 (= c!450858 ((_ is Nil!32072) Nil!32072))))

(assert (=> d!807216 (= (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072)) lt!990432)))

(declare-fun b!2776222 () Bool)

(assert (=> b!2776222 (= e!1751028 (or (not (= (Cons!32072 lt!989763 Nil!32072) Nil!32072)) (= lt!990432 Nil!32072)))))

(declare-fun b!2776220 () Bool)

(assert (=> b!2776220 (= e!1751029 (Cons!32072 (h!37492 Nil!32072) (++!7932 (t!228300 Nil!32072) (Cons!32072 lt!989763 Nil!32072))))))

(declare-fun b!2776219 () Bool)

(assert (=> b!2776219 (= e!1751029 (Cons!32072 lt!989763 Nil!32072))))

(declare-fun b!2776221 () Bool)

(declare-fun res!1159993 () Bool)

(assert (=> b!2776221 (=> (not res!1159993) (not e!1751028))))

(assert (=> b!2776221 (= res!1159993 (= (size!24869 lt!990432) (+ (size!24869 Nil!32072) (size!24869 (Cons!32072 lt!989763 Nil!32072)))))))

(assert (= (and d!807216 c!450858) b!2776219))

(assert (= (and d!807216 (not c!450858)) b!2776220))

(assert (= (and d!807216 res!1159992) b!2776221))

(assert (= (and b!2776221 res!1159993) b!2776222))

(declare-fun m!3203911 () Bool)

(assert (=> d!807216 m!3203911))

(assert (=> d!807216 m!3201467))

(declare-fun m!3203913 () Bool)

(assert (=> d!807216 m!3203913))

(declare-fun m!3203915 () Bool)

(assert (=> b!2776220 m!3203915))

(declare-fun m!3203917 () Bool)

(assert (=> b!2776221 m!3203917))

(assert (=> b!2776221 m!3201399))

(declare-fun m!3203919 () Bool)

(assert (=> b!2776221 m!3203919))

(assert (=> b!2775072 d!807216))

(assert (=> b!2775072 d!806558))

(declare-fun d!807218 () Bool)

(assert (=> d!807218 (= (head!6152 (drop!1710 lt!989754 0)) (apply!7513 lt!989754 0))))

(declare-fun lt!990433 () Unit!46204)

(assert (=> d!807218 (= lt!990433 (choose!16281 lt!989754 0))))

(declare-fun e!1751030 () Bool)

(assert (=> d!807218 e!1751030))

(declare-fun res!1159994 () Bool)

(assert (=> d!807218 (=> (not res!1159994) (not e!1751030))))

(assert (=> d!807218 (= res!1159994 (>= 0 0))))

(assert (=> d!807218 (= (lemmaDropApply!916 lt!989754 0) lt!990433)))

(declare-fun b!2776223 () Bool)

(assert (=> b!2776223 (= e!1751030 (< 0 (size!24869 lt!989754)))))

(assert (= (and d!807218 res!1159994) b!2776223))

(assert (=> d!807218 m!3201615))

(assert (=> d!807218 m!3201615))

(assert (=> d!807218 m!3201617))

(assert (=> d!807218 m!3201627))

(declare-fun m!3203921 () Bool)

(assert (=> d!807218 m!3203921))

(assert (=> b!2776223 m!3203899))

(assert (=> b!2775072 d!807218))

(declare-fun d!807220 () Bool)

(assert (=> d!807220 (= (++!7932 (++!7932 Nil!32072 (Cons!32072 lt!989763 Nil!32072)) lt!989760) lt!989768)))

(declare-fun lt!990434 () Unit!46204)

(assert (=> d!807220 (= lt!990434 (choose!16277 Nil!32072 lt!989763 lt!989760 lt!989768))))

(assert (=> d!807220 (= (++!7932 Nil!32072 (Cons!32072 lt!989763 lt!989760)) lt!989768)))

(assert (=> d!807220 (= (lemmaMoveElementToOtherListKeepsConcatEq!873 Nil!32072 lt!989763 lt!989760 lt!989768) lt!990434)))

(declare-fun bs!505949 () Bool)

(assert (= bs!505949 d!807220))

(assert (=> bs!505949 m!3201605))

(assert (=> bs!505949 m!3201605))

(assert (=> bs!505949 m!3201607))

(declare-fun m!3203923 () Bool)

(assert (=> bs!505949 m!3203923))

(declare-fun m!3203925 () Bool)

(assert (=> bs!505949 m!3203925))

(assert (=> b!2775072 d!807220))

(declare-fun d!807222 () Bool)

(assert (=> d!807222 (= (list!12096 (_1!19066 lt!989752)) (list!12097 (c!450499 (_1!19066 lt!989752))))))

(declare-fun bs!505950 () Bool)

(assert (= bs!505950 d!807222))

(declare-fun m!3203927 () Bool)

(assert (=> bs!505950 m!3203927))

(assert (=> b!2775072 d!807222))

(declare-fun d!807224 () Bool)

(assert (=> d!807224 (and (= lt!989786 Nil!32072) (= lt!989779 lt!989496))))

(declare-fun lt!990435 () Unit!46204)

(assert (=> d!807224 (= lt!990435 (choose!16280 lt!989786 lt!989779 Nil!32072 lt!989496))))

(assert (=> d!807224 (= (++!7932 lt!989786 lt!989779) (++!7932 Nil!32072 lt!989496))))

(assert (=> d!807224 (= (lemmaConcatSameAndSameSizesThenSameLists!342 lt!989786 lt!989779 Nil!32072 lt!989496) lt!990435)))

(declare-fun bs!505951 () Bool)

(assert (= bs!505951 d!807224))

(declare-fun m!3203929 () Bool)

(assert (=> bs!505951 m!3203929))

(declare-fun m!3203931 () Bool)

(assert (=> bs!505951 m!3203931))

(assert (=> bs!505951 m!3201357))

(assert (=> b!2775072 d!807224))

(declare-fun d!807226 () Bool)

(assert (=> d!807226 (= (head!6152 (drop!1710 lt!989754 0)) (h!37492 (drop!1710 lt!989754 0)))))

(assert (=> b!2775072 d!807226))

(declare-fun d!807228 () Bool)

(assert (=> d!807228 (= (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) (h!37492 (getSuffix!1239 lt!989778 Nil!32072)))))

(assert (=> b!2775072 d!807228))

(assert (=> b!2775072 d!806510))

(declare-fun d!807230 () Bool)

(assert (=> d!807230 (isPrefix!2557 (++!7932 Nil!32072 (Cons!32072 (head!6152 (getSuffix!1239 lt!989778 Nil!32072)) Nil!32072)) lt!989778)))

(declare-fun lt!990436 () Unit!46204)

(assert (=> d!807230 (= lt!990436 (choose!16276 Nil!32072 lt!989778))))

(assert (=> d!807230 (isPrefix!2557 Nil!32072 lt!989778)))

(assert (=> d!807230 (= (lemmaAddHeadSuffixToPrefixStillPrefix!461 Nil!32072 lt!989778) lt!990436)))

(declare-fun bs!505952 () Bool)

(assert (= bs!505952 d!807230))

(declare-fun m!3203933 () Bool)

(assert (=> bs!505952 m!3203933))

(assert (=> bs!505952 m!3201623))

(assert (=> bs!505952 m!3201601))

(assert (=> bs!505952 m!3201611))

(declare-fun m!3203935 () Bool)

(assert (=> bs!505952 m!3203935))

(assert (=> bs!505952 m!3201601))

(assert (=> bs!505952 m!3201623))

(assert (=> bs!505952 m!3201625))

(assert (=> b!2775072 d!807230))

(declare-fun d!807232 () Bool)

(declare-fun lt!990437 () Int)

(assert (=> d!807232 (>= lt!990437 0)))

(declare-fun e!1751031 () Int)

(assert (=> d!807232 (= lt!990437 e!1751031)))

(declare-fun c!450859 () Bool)

(assert (=> d!807232 (= c!450859 ((_ is Nil!32072) lt!989788))))

(assert (=> d!807232 (= (size!24869 lt!989788) lt!990437)))

(declare-fun b!2776224 () Bool)

(assert (=> b!2776224 (= e!1751031 0)))

(declare-fun b!2776225 () Bool)

(assert (=> b!2776225 (= e!1751031 (+ 1 (size!24869 (t!228300 lt!989788))))))

(assert (= (and d!807232 c!450859) b!2776224))

(assert (= (and d!807232 (not c!450859)) b!2776225))

(declare-fun m!3203937 () Bool)

(assert (=> b!2776225 m!3203937))

(assert (=> b!2775072 d!807232))

(assert (=> b!2775072 d!806514))

(declare-fun d!807234 () Bool)

(declare-fun lt!990438 () List!32172)

(assert (=> d!807234 (= (++!7932 Nil!32072 lt!990438) lt!989778)))

(declare-fun e!1751032 () List!32172)

(assert (=> d!807234 (= lt!990438 e!1751032)))

(declare-fun c!450860 () Bool)

(assert (=> d!807234 (= c!450860 ((_ is Cons!32072) Nil!32072))))

(assert (=> d!807234 (>= (size!24869 lt!989778) (size!24869 Nil!32072))))

(assert (=> d!807234 (= (getSuffix!1239 lt!989778 Nil!32072) lt!990438)))

(declare-fun b!2776226 () Bool)

(assert (=> b!2776226 (= e!1751032 (getSuffix!1239 (tail!4390 lt!989778) (t!228300 Nil!32072)))))

(declare-fun b!2776227 () Bool)

(assert (=> b!2776227 (= e!1751032 lt!989778)))

(assert (= (and d!807234 c!450860) b!2776226))

(assert (= (and d!807234 (not c!450860)) b!2776227))

(declare-fun m!3203939 () Bool)

(assert (=> d!807234 m!3203939))

(assert (=> d!807234 m!3203889))

(assert (=> d!807234 m!3201399))

(assert (=> b!2776226 m!3203885))

(assert (=> b!2776226 m!3203885))

(declare-fun m!3203941 () Bool)

(assert (=> b!2776226 m!3203941))

(assert (=> b!2775072 d!807234))

(declare-fun d!807236 () Bool)

(assert (=> d!807236 (<= (size!24869 Nil!32072) (size!24869 lt!989788))))

(declare-fun lt!990439 () Unit!46204)

(assert (=> d!807236 (= lt!990439 (choose!16275 Nil!32072 lt!989788))))

(assert (=> d!807236 (isPrefix!2557 Nil!32072 lt!989788)))

(assert (=> d!807236 (= (lemmaIsPrefixThenSmallerEqSize!264 Nil!32072 lt!989788) lt!990439)))

(declare-fun bs!505953 () Bool)

(assert (= bs!505953 d!807236))

(assert (=> bs!505953 m!3201399))

(assert (=> bs!505953 m!3201613))

(declare-fun m!3203943 () Bool)

(assert (=> bs!505953 m!3203943))

(declare-fun m!3203945 () Bool)

(assert (=> bs!505953 m!3203945))

(assert (=> b!2775072 d!807236))

(declare-fun b!2776228 () Bool)

(declare-fun e!1751036 () Int)

(assert (=> b!2776228 (= e!1751036 (+ 1 1))))

(declare-fun b!2776230 () Bool)

(declare-fun e!1751038 () List!32172)

(assert (=> b!2776230 (= e!1751038 (list!12096 input!5495))))

(declare-fun b!2776231 () Bool)

(declare-fun e!1751033 () Int)

(assert (=> b!2776231 (= e!1751033 0)))

(declare-fun bm!181673 () Bool)

(declare-fun call!181681 () List!32172)

(assert (=> bm!181673 (= call!181681 (tail!4390 call!181577))))

(declare-fun b!2776232 () Bool)

(declare-fun e!1751035 () Unit!46204)

(declare-fun Unit!46256 () Unit!46204)

(assert (=> b!2776232 (= e!1751035 Unit!46256)))

(declare-fun lt!990440 () List!32172)

(assert (=> b!2776232 (= lt!990440 (list!12096 input!5495))))

(declare-fun lt!990472 () List!32172)

(assert (=> b!2776232 (= lt!990472 (list!12096 input!5495))))

(declare-fun lt!990465 () Unit!46204)

(declare-fun call!181687 () Unit!46204)

(assert (=> b!2776232 (= lt!990465 call!181687)))

(declare-fun call!181682 () Bool)

(assert (=> b!2776232 call!181682))

(declare-fun lt!990450 () Unit!46204)

(assert (=> b!2776232 (= lt!990450 lt!990465)))

(declare-fun lt!990463 () List!32172)

(assert (=> b!2776232 (= lt!990463 (list!12096 input!5495))))

(declare-fun lt!990469 () Unit!46204)

(declare-fun call!181678 () Unit!46204)

(assert (=> b!2776232 (= lt!990469 call!181678)))

(assert (=> b!2776232 (= lt!990463 call!181580)))

(declare-fun lt!990473 () Unit!46204)

(assert (=> b!2776232 (= lt!990473 lt!990469)))

(assert (=> b!2776232 false))

(declare-fun b!2776233 () Bool)

(declare-fun e!1751034 () Int)

(declare-fun call!181680 () Int)

(assert (=> b!2776233 (= e!1751034 call!181680)))

(declare-fun bm!181674 () Bool)

(declare-fun call!181684 () List!32172)

(declare-fun call!181685 () C!16364)

(assert (=> bm!181674 (= call!181684 (++!7932 call!181580 (Cons!32072 call!181685 Nil!32072)))))

(declare-fun b!2776234 () Bool)

(declare-fun call!181686 () List!32172)

(assert (=> b!2776234 (= e!1751038 call!181686)))

(declare-fun b!2776235 () Bool)

(assert (=> b!2776235 (= e!1751036 0)))

(declare-fun b!2776236 () Bool)

(declare-fun c!450862 () Bool)

(declare-fun call!181679 () Bool)

(assert (=> b!2776236 (= c!450862 call!181679)))

(declare-fun lt!990442 () Unit!46204)

(declare-fun lt!990464 () Unit!46204)

(assert (=> b!2776236 (= lt!990442 lt!990464)))

(declare-fun lt!990471 () List!32172)

(assert (=> b!2776236 (= lt!990471 call!181580)))

(assert (=> b!2776236 (= lt!990464 call!181678)))

(assert (=> b!2776236 (= lt!990471 call!181686)))

(declare-fun lt!990455 () Unit!46204)

(declare-fun lt!990470 () Unit!46204)

(assert (=> b!2776236 (= lt!990455 lt!990470)))

(assert (=> b!2776236 call!181682))

(assert (=> b!2776236 (= lt!990470 call!181687)))

(declare-fun lt!990445 () List!32172)

(assert (=> b!2776236 (= lt!990445 call!181686)))

(declare-fun lt!990474 () List!32172)

(assert (=> b!2776236 (= lt!990474 call!181686)))

(declare-fun e!1751037 () Int)

(assert (=> b!2776236 (= e!1751037 e!1751036)))

(declare-fun bm!181675 () Bool)

(assert (=> bm!181675 (= call!181679 (nullableZipper!636 call!181579))))

(declare-fun bm!181676 () Bool)

(declare-fun c!450863 () Bool)

(declare-fun c!450864 () Bool)

(assert (=> bm!181676 (= c!450863 c!450864)))

(assert (=> bm!181676 (= call!181678 (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450864 lt!990471 lt!990463) call!181580 e!1751038))))

(declare-fun bm!181677 () Bool)

(assert (=> bm!181677 (= call!181687 (lemmaIsPrefixRefl!1681 (ite c!450864 lt!990474 lt!990440) (ite c!450864 lt!990445 lt!990472)))))

(declare-fun bm!181678 () Bool)

(assert (=> bm!181678 (= call!181682 (isPrefix!2557 (ite c!450864 lt!990474 lt!990440) (ite c!450864 lt!990445 lt!990472)))))

(declare-fun bm!181679 () Bool)

(declare-fun lt!990441 () tuple2!32290)

(assert (=> bm!181679 (= call!181686 (list!12096 (ite c!450864 input!5495 (_2!19066 lt!990441))))))

(declare-fun b!2776237 () Bool)

(declare-fun lt!990481 () Int)

(assert (=> b!2776237 (= e!1751034 (ite (= lt!990481 0) (+ 1 1) lt!990481))))

(assert (=> b!2776237 (= lt!990481 call!181680)))

(declare-fun lt!990459 () Int)

(declare-fun d!807238 () Bool)

(assert (=> d!807238 (= (size!24869 (_1!19065 (findLongestMatchInnerZipper!27 call!181579 call!181580 (+ 1 1) call!181577 (list!12096 input!5495) lt!989489))) lt!990459)))

(assert (=> d!807238 (= lt!990459 e!1751033)))

(declare-fun c!450866 () Bool)

(assert (=> d!807238 (= c!450866 (lostCauseZipper!443 call!181579))))

(declare-fun lt!990480 () Unit!46204)

(declare-fun Unit!46257 () Unit!46204)

(assert (=> d!807238 (= lt!990480 Unit!46257)))

(assert (=> d!807238 (= (getSuffix!1239 (list!12096 input!5495) call!181580) call!181577)))

(declare-fun lt!990448 () Unit!46204)

(declare-fun lt!990458 () Unit!46204)

(assert (=> d!807238 (= lt!990448 lt!990458)))

(declare-fun lt!990454 () List!32172)

(assert (=> d!807238 (= call!181577 lt!990454)))

(assert (=> d!807238 (= lt!990458 (lemmaSamePrefixThenSameSuffix!1141 call!181580 call!181577 call!181580 lt!990454 (list!12096 input!5495)))))

(assert (=> d!807238 (= lt!990454 (getSuffix!1239 (list!12096 input!5495) call!181580))))

(declare-fun lt!990444 () Unit!46204)

(declare-fun lt!990461 () Unit!46204)

(assert (=> d!807238 (= lt!990444 lt!990461)))

(assert (=> d!807238 (isPrefix!2557 call!181580 (++!7932 call!181580 call!181577))))

(assert (=> d!807238 (= lt!990461 (lemmaConcatTwoListThenFirstIsPrefix!1667 call!181580 call!181577))))

(assert (=> d!807238 (= (++!7932 call!181580 call!181577) (list!12096 input!5495))))

(assert (=> d!807238 (= (findLongestMatchInnerZipperFast!52 call!181579 call!181580 (+ 1 1) call!181577 input!5495 lt!989489) lt!990459)))

(declare-fun b!2776229 () Bool)

(assert (=> b!2776229 (= e!1751033 e!1751037)))

(assert (=> b!2776229 (= c!450864 (= (+ 1 1) lt!989489))))

(declare-fun call!181683 () (InoxSet Context!4642))

(declare-fun bm!181680 () Bool)

(assert (=> bm!181680 (= call!181680 (findLongestMatchInnerZipperFast!52 call!181683 call!181684 (+ 1 1 1) call!181681 input!5495 lt!989489))))

(declare-fun bm!181681 () Bool)

(assert (=> bm!181681 (= call!181683 (derivationStepZipper!369 call!181579 call!181685))))

(declare-fun b!2776238 () Bool)

(declare-fun Unit!46258 () Unit!46204)

(assert (=> b!2776238 (= e!1751035 Unit!46258)))

(declare-fun bm!181682 () Bool)

(assert (=> bm!181682 (= call!181685 (apply!7512 input!5495 (+ 1 1)))))

(declare-fun b!2776239 () Bool)

(declare-fun c!450861 () Bool)

(assert (=> b!2776239 (= c!450861 call!181679)))

(declare-fun lt!990478 () Unit!46204)

(declare-fun lt!990460 () Unit!46204)

(assert (=> b!2776239 (= lt!990478 lt!990460)))

(declare-fun lt!990457 () List!32172)

(declare-fun lt!990452 () C!16364)

(declare-fun lt!990449 () List!32172)

(assert (=> b!2776239 (= (++!7932 (++!7932 call!181580 (Cons!32072 lt!990452 Nil!32072)) lt!990449) lt!990457)))

(assert (=> b!2776239 (= lt!990460 (lemmaMoveElementToOtherListKeepsConcatEq!873 call!181580 lt!990452 lt!990449 lt!990457))))

(assert (=> b!2776239 (= lt!990457 (list!12096 input!5495))))

(assert (=> b!2776239 (= lt!990449 (tail!4390 call!181577))))

(assert (=> b!2776239 (= lt!990452 (apply!7512 input!5495 (+ 1 1)))))

(declare-fun lt!990447 () Unit!46204)

(declare-fun lt!990453 () Unit!46204)

(assert (=> b!2776239 (= lt!990447 lt!990453)))

(declare-fun lt!990467 () List!32172)

(assert (=> b!2776239 (isPrefix!2557 (++!7932 call!181580 (Cons!32072 (head!6152 (getSuffix!1239 lt!990467 call!181580)) Nil!32072)) lt!990467)))

(assert (=> b!2776239 (= lt!990453 (lemmaAddHeadSuffixToPrefixStillPrefix!461 call!181580 lt!990467))))

(assert (=> b!2776239 (= lt!990467 (list!12096 input!5495))))

(declare-fun lt!990456 () Unit!46204)

(assert (=> b!2776239 (= lt!990456 e!1751035)))

(declare-fun c!450865 () Bool)

(assert (=> b!2776239 (= c!450865 (= (size!24869 call!181580) (size!24868 input!5495)))))

(declare-fun lt!990462 () Unit!46204)

(declare-fun lt!990466 () Unit!46204)

(assert (=> b!2776239 (= lt!990462 lt!990466)))

(declare-fun lt!990477 () List!32172)

(assert (=> b!2776239 (<= (size!24869 call!181580) (size!24869 lt!990477))))

(assert (=> b!2776239 (= lt!990466 (lemmaIsPrefixThenSmallerEqSize!264 call!181580 lt!990477))))

(assert (=> b!2776239 (= lt!990477 (list!12096 input!5495))))

(declare-fun lt!990446 () Unit!46204)

(declare-fun lt!990476 () Unit!46204)

(assert (=> b!2776239 (= lt!990446 lt!990476)))

(declare-fun lt!990443 () List!32172)

(assert (=> b!2776239 (= (head!6152 (drop!1710 lt!990443 (+ 1 1))) (apply!7513 lt!990443 (+ 1 1)))))

(assert (=> b!2776239 (= lt!990476 (lemmaDropApply!916 lt!990443 (+ 1 1)))))

(assert (=> b!2776239 (= lt!990443 (list!12096 input!5495))))

(declare-fun lt!990451 () Unit!46204)

(declare-fun lt!990479 () Unit!46204)

(assert (=> b!2776239 (= lt!990451 lt!990479)))

(declare-fun lt!990468 () List!32172)

(declare-fun lt!990475 () List!32172)

(assert (=> b!2776239 (and (= lt!990475 call!181580) (= lt!990468 call!181577))))

(assert (=> b!2776239 (= lt!990479 (lemmaConcatSameAndSameSizesThenSameLists!342 lt!990475 lt!990468 call!181580 call!181577))))

(assert (=> b!2776239 (= lt!990468 call!181686)))

(assert (=> b!2776239 (= lt!990475 (list!12096 (_1!19066 lt!990441)))))

(assert (=> b!2776239 (= lt!990441 (splitAt!119 input!5495 (+ 1 1)))))

(assert (=> b!2776239 (= e!1751037 e!1751034)))

(assert (= (and d!807238 c!450866) b!2776231))

(assert (= (and d!807238 (not c!450866)) b!2776229))

(assert (= (and b!2776229 c!450864) b!2776236))

(assert (= (and b!2776229 (not c!450864)) b!2776239))

(assert (= (and b!2776236 c!450862) b!2776228))

(assert (= (and b!2776236 (not c!450862)) b!2776235))

(assert (= (and b!2776239 c!450865) b!2776232))

(assert (= (and b!2776239 (not c!450865)) b!2776238))

(assert (= (and b!2776239 c!450861) b!2776237))

(assert (= (and b!2776239 (not c!450861)) b!2776233))

(assert (= (or b!2776237 b!2776233) bm!181682))

(assert (= (or b!2776237 b!2776233) bm!181673))

(assert (= (or b!2776237 b!2776233) bm!181674))

(assert (= (or b!2776237 b!2776233) bm!181681))

(assert (= (or b!2776237 b!2776233) bm!181680))

(assert (= (or b!2776236 b!2776239) bm!181679))

(assert (= (or b!2776236 b!2776239) bm!181675))

(assert (= (or b!2776236 b!2776232) bm!181677))

(assert (= (or b!2776236 b!2776232) bm!181678))

(assert (= (or b!2776236 b!2776232) bm!181676))

(assert (= (and bm!181676 c!450863) b!2776234))

(assert (= (and bm!181676 (not c!450863)) b!2776230))

(declare-fun m!3203947 () Bool)

(assert (=> bm!181677 m!3203947))

(declare-fun m!3203949 () Bool)

(assert (=> bm!181681 m!3203949))

(declare-fun m!3203951 () Bool)

(assert (=> b!2776239 m!3203951))

(declare-fun m!3203953 () Bool)

(assert (=> b!2776239 m!3203953))

(declare-fun m!3203955 () Bool)

(assert (=> b!2776239 m!3203955))

(declare-fun m!3203957 () Bool)

(assert (=> b!2776239 m!3203957))

(declare-fun m!3203959 () Bool)

(assert (=> b!2776239 m!3203959))

(declare-fun m!3203961 () Bool)

(assert (=> b!2776239 m!3203961))

(declare-fun m!3203963 () Bool)

(assert (=> b!2776239 m!3203963))

(declare-fun m!3203965 () Bool)

(assert (=> b!2776239 m!3203965))

(declare-fun m!3203967 () Bool)

(assert (=> b!2776239 m!3203967))

(assert (=> b!2776239 m!3203955))

(declare-fun m!3203969 () Bool)

(assert (=> b!2776239 m!3203969))

(declare-fun m!3203971 () Bool)

(assert (=> b!2776239 m!3203971))

(declare-fun m!3203973 () Bool)

(assert (=> b!2776239 m!3203973))

(declare-fun m!3203975 () Bool)

(assert (=> b!2776239 m!3203975))

(assert (=> b!2776239 m!3201349))

(assert (=> b!2776239 m!3203961))

(declare-fun m!3203977 () Bool)

(assert (=> b!2776239 m!3203977))

(declare-fun m!3203979 () Bool)

(assert (=> b!2776239 m!3203979))

(declare-fun m!3203981 () Bool)

(assert (=> b!2776239 m!3203981))

(declare-fun m!3203983 () Bool)

(assert (=> b!2776239 m!3203983))

(assert (=> b!2776239 m!3203981))

(declare-fun m!3203985 () Bool)

(assert (=> b!2776239 m!3203985))

(assert (=> b!2776239 m!3201355))

(assert (=> b!2776239 m!3203973))

(assert (=> b!2776239 m!3202591))

(assert (=> b!2776239 m!3202593))

(assert (=> bm!181673 m!3203957))

(declare-fun m!3203987 () Bool)

(assert (=> bm!181676 m!3203987))

(assert (=> b!2776230 m!3201349))

(declare-fun m!3203989 () Bool)

(assert (=> bm!181678 m!3203989))

(declare-fun m!3203991 () Bool)

(assert (=> bm!181674 m!3203991))

(declare-fun m!3203993 () Bool)

(assert (=> bm!181679 m!3203993))

(assert (=> bm!181682 m!3202591))

(declare-fun m!3203995 () Bool)

(assert (=> bm!181675 m!3203995))

(declare-fun m!3203997 () Bool)

(assert (=> d!807238 m!3203997))

(declare-fun m!3203999 () Bool)

(assert (=> d!807238 m!3203999))

(declare-fun m!3204001 () Bool)

(assert (=> d!807238 m!3204001))

(assert (=> d!807238 m!3201349))

(declare-fun m!3204003 () Bool)

(assert (=> d!807238 m!3204003))

(assert (=> d!807238 m!3203997))

(declare-fun m!3204005 () Bool)

(assert (=> d!807238 m!3204005))

(assert (=> d!807238 m!3201349))

(declare-fun m!3204007 () Bool)

(assert (=> d!807238 m!3204007))

(assert (=> d!807238 m!3201349))

(declare-fun m!3204009 () Bool)

(assert (=> d!807238 m!3204009))

(declare-fun m!3204011 () Bool)

(assert (=> d!807238 m!3204011))

(assert (=> d!807238 m!3201349))

(assert (=> b!2776232 m!3201349))

(declare-fun m!3204013 () Bool)

(assert (=> bm!181680 m!3204013))

(assert (=> bm!181576 d!807238))

(declare-fun d!807240 () Bool)

(assert (=> d!807240 (= (ite c!450559 lt!989833 lt!989825) lt!989491)))

(declare-fun lt!990482 () Unit!46204)

(assert (=> d!807240 (= lt!990482 (choose!16278 (ite c!450559 lt!989833 lt!989825) lt!989491 e!1750315))))

(assert (=> d!807240 (isPrefix!2557 (ite c!450559 lt!989833 lt!989825) e!1750315)))

(assert (=> d!807240 (= (lemmaIsPrefixSameLengthThenSameList!463 (ite c!450559 lt!989833 lt!989825) lt!989491 e!1750315) lt!990482)))

(declare-fun bs!505954 () Bool)

(assert (= bs!505954 d!807240))

(declare-fun m!3204015 () Bool)

(assert (=> bs!505954 m!3204015))

(declare-fun m!3204017 () Bool)

(assert (=> bs!505954 m!3204017))

(assert (=> bm!181551 d!807240))

(declare-fun d!807242 () Bool)

(declare-fun lt!990483 () C!16364)

(assert (=> d!807242 (contains!5996 (list!12096 input!5495) lt!990483)))

(declare-fun e!1751040 () C!16364)

(assert (=> d!807242 (= lt!990483 e!1751040)))

(declare-fun c!450867 () Bool)

(assert (=> d!807242 (= c!450867 (= 0 0))))

(declare-fun e!1751039 () Bool)

(assert (=> d!807242 e!1751039))

(declare-fun res!1159995 () Bool)

(assert (=> d!807242 (=> (not res!1159995) (not e!1751039))))

(assert (=> d!807242 (= res!1159995 (<= 0 0))))

(assert (=> d!807242 (= (apply!7513 (list!12096 input!5495) 0) lt!990483)))

(declare-fun b!2776240 () Bool)

(assert (=> b!2776240 (= e!1751039 (< 0 (size!24869 (list!12096 input!5495))))))

(declare-fun b!2776241 () Bool)

(assert (=> b!2776241 (= e!1751040 (head!6152 (list!12096 input!5495)))))

(declare-fun b!2776242 () Bool)

(assert (=> b!2776242 (= e!1751040 (apply!7513 (tail!4390 (list!12096 input!5495)) (- 0 1)))))

(assert (= (and d!807242 res!1159995) b!2776240))

(assert (= (and d!807242 c!450867) b!2776241))

(assert (= (and d!807242 (not c!450867)) b!2776242))

(assert (=> d!807242 m!3201349))

(declare-fun m!3204019 () Bool)

(assert (=> d!807242 m!3204019))

(assert (=> b!2776240 m!3201349))

(assert (=> b!2776240 m!3201649))

(assert (=> b!2776241 m!3201349))

(declare-fun m!3204021 () Bool)

(assert (=> b!2776241 m!3204021))

(assert (=> b!2776242 m!3201349))

(assert (=> b!2776242 m!3202254))

(assert (=> b!2776242 m!3202254))

(declare-fun m!3204023 () Bool)

(assert (=> b!2776242 m!3204023))

(assert (=> d!806564 d!807242))

(assert (=> d!806564 d!806470))

(declare-fun b!2776257 () Bool)

(declare-fun e!1751049 () C!16364)

(declare-fun e!1751052 () C!16364)

(assert (=> b!2776257 (= e!1751049 e!1751052)))

(declare-fun lt!990489 () Bool)

(declare-fun appendIndex!283 (List!32172 List!32172 Int) Bool)

(assert (=> b!2776257 (= lt!990489 (appendIndex!283 (list!12097 (left!24418 (c!450499 input!5495))) (list!12097 (right!24748 (c!450499 input!5495))) 0))))

(declare-fun c!450874 () Bool)

(assert (=> b!2776257 (= c!450874 (< 0 (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2776258 () Bool)

(declare-fun e!1751051 () Int)

(assert (=> b!2776258 (= e!1751051 (- 0 (size!24870 (left!24418 (c!450499 input!5495)))))))

(declare-fun b!2776259 () Bool)

(declare-fun apply!7515 (IArray!19967 Int) C!16364)

(assert (=> b!2776259 (= e!1751049 (apply!7515 (xs!13091 (c!450499 input!5495)) 0))))

(declare-fun d!807244 () Bool)

(declare-fun lt!990488 () C!16364)

(assert (=> d!807244 (= lt!990488 (apply!7513 (list!12097 (c!450499 input!5495)) 0))))

(assert (=> d!807244 (= lt!990488 e!1751049)))

(declare-fun c!450875 () Bool)

(assert (=> d!807244 (= c!450875 ((_ is Leaf!15201) (c!450499 input!5495)))))

(declare-fun e!1751050 () Bool)

(assert (=> d!807244 e!1751050))

(declare-fun res!1159998 () Bool)

(assert (=> d!807244 (=> (not res!1159998) (not e!1751050))))

(assert (=> d!807244 (= res!1159998 (<= 0 0))))

(assert (=> d!807244 (= (apply!7514 (c!450499 input!5495) 0) lt!990488)))

(declare-fun bm!181685 () Bool)

(declare-fun c!450876 () Bool)

(assert (=> bm!181685 (= c!450876 c!450874)))

(declare-fun call!181690 () C!16364)

(assert (=> bm!181685 (= call!181690 (apply!7514 (ite c!450874 (left!24418 (c!450499 input!5495)) (right!24748 (c!450499 input!5495))) e!1751051))))

(declare-fun b!2776260 () Bool)

(assert (=> b!2776260 (= e!1751052 call!181690)))

(declare-fun b!2776261 () Bool)

(assert (=> b!2776261 (= e!1751052 call!181690)))

(declare-fun b!2776262 () Bool)

(assert (=> b!2776262 (= e!1751051 0)))

(declare-fun b!2776263 () Bool)

(assert (=> b!2776263 (= e!1751050 (< 0 (size!24870 (c!450499 input!5495))))))

(assert (= (and d!807244 res!1159998) b!2776263))

(assert (= (and d!807244 c!450875) b!2776259))

(assert (= (and d!807244 (not c!450875)) b!2776257))

(assert (= (and b!2776257 c!450874) b!2776260))

(assert (= (and b!2776257 (not c!450874)) b!2776261))

(assert (= (or b!2776260 b!2776261) bm!181685))

(assert (= (and bm!181685 c!450876) b!2776262))

(assert (= (and bm!181685 (not c!450876)) b!2776258))

(assert (=> b!2776257 m!3202132))

(assert (=> b!2776257 m!3202134))

(assert (=> b!2776257 m!3202132))

(assert (=> b!2776257 m!3202134))

(declare-fun m!3204025 () Bool)

(assert (=> b!2776257 m!3204025))

(assert (=> b!2776257 m!3202701))

(declare-fun m!3204027 () Bool)

(assert (=> bm!181685 m!3204027))

(assert (=> d!807244 m!3201523))

(assert (=> d!807244 m!3201523))

(declare-fun m!3204029 () Bool)

(assert (=> d!807244 m!3204029))

(declare-fun m!3204031 () Bool)

(assert (=> b!2776259 m!3204031))

(assert (=> b!2776258 m!3202701))

(assert (=> b!2776263 m!3201651))

(assert (=> d!806564 d!807244))

(declare-fun condSetEmpty!23059 () Bool)

(assert (=> setNonEmpty!23052 (= condSetEmpty!23059 (= setRest!23052 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23059 () Bool)

(assert (=> setNonEmpty!23052 (= tp!878384 setRes!23059)))

(declare-fun setIsEmpty!23059 () Bool)

(assert (=> setIsEmpty!23059 setRes!23059))

(declare-fun setNonEmpty!23059 () Bool)

(declare-fun setElem!23059 () Context!4642)

(declare-fun tp!878516 () Bool)

(declare-fun e!1751053 () Bool)

(assert (=> setNonEmpty!23059 (= setRes!23059 (and tp!878516 (inv!43564 setElem!23059) e!1751053))))

(declare-fun setRest!23059 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23059 (= setRest!23052 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23059 true) setRest!23059))))

(declare-fun b!2776264 () Bool)

(declare-fun tp!878517 () Bool)

(assert (=> b!2776264 (= e!1751053 tp!878517)))

(assert (= (and setNonEmpty!23052 condSetEmpty!23059) setIsEmpty!23059))

(assert (= (and setNonEmpty!23052 (not condSetEmpty!23059)) setNonEmpty!23059))

(assert (= setNonEmpty!23059 b!2776264))

(declare-fun m!3204033 () Bool)

(assert (=> setNonEmpty!23059 m!3204033))

(declare-fun condSetEmpty!23060 () Bool)

(assert (=> setNonEmpty!23050 (= condSetEmpty!23060 (= setRest!23050 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23060 () Bool)

(assert (=> setNonEmpty!23050 (= tp!878374 setRes!23060)))

(declare-fun setIsEmpty!23060 () Bool)

(assert (=> setIsEmpty!23060 setRes!23060))

(declare-fun e!1751054 () Bool)

(declare-fun setNonEmpty!23060 () Bool)

(declare-fun setElem!23060 () Context!4642)

(declare-fun tp!878518 () Bool)

(assert (=> setNonEmpty!23060 (= setRes!23060 (and tp!878518 (inv!43564 setElem!23060) e!1751054))))

(declare-fun setRest!23060 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23060 (= setRest!23050 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23060 true) setRest!23060))))

(declare-fun b!2776265 () Bool)

(declare-fun tp!878519 () Bool)

(assert (=> b!2776265 (= e!1751054 tp!878519)))

(assert (= (and setNonEmpty!23050 condSetEmpty!23060) setIsEmpty!23060))

(assert (= (and setNonEmpty!23050 (not condSetEmpty!23060)) setNonEmpty!23060))

(assert (= setNonEmpty!23060 b!2776265))

(declare-fun m!3204035 () Bool)

(assert (=> setNonEmpty!23060 m!3204035))

(declare-fun b!2776280 () Bool)

(declare-fun e!1751068 () Bool)

(declare-fun lt!990494 () MutLongMap!3814)

(assert (=> b!2776280 (= e!1751068 ((_ is LongMap!3814) lt!990494))))

(assert (=> b!2776280 (= lt!990494 (v!33685 (underlying!7832 (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))))))

(declare-fun b!2776281 () Bool)

(declare-fun e!1751071 () Bool)

(assert (=> b!2776281 (= e!1751071 e!1751068)))

(declare-fun b!2776282 () Bool)

(declare-fun e!1751070 () Bool)

(declare-fun e!1751069 () Bool)

(assert (=> b!2776282 (= e!1751070 e!1751069)))

(declare-fun b!2776283 () Bool)

(declare-fun e!1751067 () Bool)

(assert (=> b!2776283 (= e!1751067 e!1751071)))

(declare-fun b!2776284 () Bool)

(declare-fun e!1751072 () Bool)

(assert (=> b!2776284 (= e!1751072 e!1751070)))

(declare-fun b!2776285 () Bool)

(declare-fun lt!990495 () MutLongMap!3813)

(assert (=> b!2776285 (= e!1751069 ((_ is LongMap!3813) lt!990495))))

(assert (=> b!2776285 (= lt!990495 (v!33683 (underlying!7830 (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))))))

(assert (=> d!806460 (= true (and e!1751072 e!1751067))))

(assert (= b!2776282 b!2776285))

(assert (= (and b!2776284 ((_ is HashMap!3719) (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))) b!2776282))

(assert (= d!806460 b!2776284))

(assert (= b!2776281 b!2776280))

(assert (= (and b!2776283 ((_ is HashMap!3720) (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 cacheUp!820 cacheDown!939 z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))) b!2776281))

(assert (= d!806460 b!2776283))

(declare-fun condSetEmpty!23061 () Bool)

(assert (=> setNonEmpty!23051 (= condSetEmpty!23061 (= setRest!23051 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23061 () Bool)

(assert (=> setNonEmpty!23051 (= tp!878379 setRes!23061)))

(declare-fun setIsEmpty!23061 () Bool)

(assert (=> setIsEmpty!23061 setRes!23061))

(declare-fun setNonEmpty!23061 () Bool)

(declare-fun e!1751073 () Bool)

(declare-fun setElem!23061 () Context!4642)

(declare-fun tp!878520 () Bool)

(assert (=> setNonEmpty!23061 (= setRes!23061 (and tp!878520 (inv!43564 setElem!23061) e!1751073))))

(declare-fun setRest!23061 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23061 (= setRest!23051 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23061 true) setRest!23061))))

(declare-fun b!2776286 () Bool)

(declare-fun tp!878521 () Bool)

(assert (=> b!2776286 (= e!1751073 tp!878521)))

(assert (= (and setNonEmpty!23051 condSetEmpty!23061) setIsEmpty!23061))

(assert (= (and setNonEmpty!23051 (not condSetEmpty!23061)) setNonEmpty!23061))

(assert (= setNonEmpty!23061 b!2776286))

(declare-fun m!3204037 () Bool)

(assert (=> setNonEmpty!23061 m!3204037))

(declare-fun b!2776287 () Bool)

(declare-fun e!1751074 () Bool)

(declare-fun tp!878522 () Bool)

(declare-fun tp!878523 () Bool)

(assert (=> b!2776287 (= e!1751074 (and tp!878522 tp!878523))))

(assert (=> b!2775256 (= tp!878296 e!1751074)))

(assert (= (and b!2775256 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))))) b!2776287))

(declare-fun b!2776288 () Bool)

(declare-fun e!1751080 () Bool)

(declare-fun tp!878527 () Bool)

(assert (=> b!2776288 (= e!1751080 tp!878527)))

(declare-fun b!2776289 () Bool)

(declare-fun e!1751079 () Bool)

(declare-fun tp!878529 () Bool)

(assert (=> b!2776289 (= e!1751079 tp!878529)))

(declare-fun b!2776290 () Bool)

(declare-fun e!1751077 () Bool)

(declare-fun tp!878530 () Bool)

(assert (=> b!2776290 (= e!1751077 tp!878530)))

(declare-fun mapNonEmpty!17401 () Bool)

(declare-fun mapRes!17401 () Bool)

(declare-fun tp!878525 () Bool)

(declare-fun e!1751075 () Bool)

(assert (=> mapNonEmpty!17401 (= mapRes!17401 (and tp!878525 e!1751075))))

(declare-fun mapKey!17401 () (_ BitVec 32))

(declare-fun mapRest!17401 () (Array (_ BitVec 32) List!32174))

(declare-fun mapValue!17401 () List!32174)

(assert (=> mapNonEmpty!17401 (= mapRest!17381 (store mapRest!17401 mapKey!17401 mapValue!17401))))

(declare-fun setElem!23063 () Context!4642)

(declare-fun setNonEmpty!23062 () Bool)

(declare-fun tp!878524 () Bool)

(declare-fun setRes!23063 () Bool)

(assert (=> setNonEmpty!23062 (= setRes!23063 (and tp!878524 (inv!43564 setElem!23063) e!1751077))))

(declare-fun setRest!23063 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23062 (= (_2!19068 (h!37494 mapValue!17401)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23063 true) setRest!23063))))

(declare-fun condMapEmpty!17401 () Bool)

(declare-fun mapDefault!17401 () List!32174)

(assert (=> mapNonEmpty!17381 (= condMapEmpty!17401 (= mapRest!17381 ((as const (Array (_ BitVec 32) List!32174)) mapDefault!17401)))))

(declare-fun e!1751078 () Bool)

(assert (=> mapNonEmpty!17381 (= tp!878317 (and e!1751078 mapRes!17401))))

(declare-fun setIsEmpty!23062 () Bool)

(assert (=> setIsEmpty!23062 setRes!23063))

(declare-fun mapIsEmpty!17401 () Bool)

(assert (=> mapIsEmpty!17401 mapRes!17401))

(declare-fun tp!878528 () Bool)

(declare-fun b!2776291 () Bool)

(assert (=> b!2776291 (= e!1751075 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapValue!17401)))) e!1751080 tp_is_empty!14023 setRes!23063 tp!878528))))

(declare-fun condSetEmpty!23062 () Bool)

(assert (=> b!2776291 (= condSetEmpty!23062 (= (_2!19068 (h!37494 mapValue!17401)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun e!1751076 () Bool)

(declare-fun setElem!23062 () Context!4642)

(declare-fun setNonEmpty!23063 () Bool)

(declare-fun setRes!23062 () Bool)

(declare-fun tp!878526 () Bool)

(assert (=> setNonEmpty!23063 (= setRes!23062 (and tp!878526 (inv!43564 setElem!23062) e!1751076))))

(declare-fun setRest!23062 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23063 (= (_2!19068 (h!37494 mapDefault!17401)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23062 true) setRest!23062))))

(declare-fun b!2776292 () Bool)

(declare-fun tp!878532 () Bool)

(assert (=> b!2776292 (= e!1751076 tp!878532)))

(declare-fun tp!878531 () Bool)

(declare-fun b!2776293 () Bool)

(assert (=> b!2776293 (= e!1751078 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 mapDefault!17401)))) e!1751079 tp_is_empty!14023 setRes!23062 tp!878531))))

(declare-fun condSetEmpty!23063 () Bool)

(assert (=> b!2776293 (= condSetEmpty!23063 (= (_2!19068 (h!37494 mapDefault!17401)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setIsEmpty!23063 () Bool)

(assert (=> setIsEmpty!23063 setRes!23062))

(assert (= (and mapNonEmpty!17381 condMapEmpty!17401) mapIsEmpty!17401))

(assert (= (and mapNonEmpty!17381 (not condMapEmpty!17401)) mapNonEmpty!17401))

(assert (= b!2776291 b!2776288))

(assert (= (and b!2776291 condSetEmpty!23062) setIsEmpty!23062))

(assert (= (and b!2776291 (not condSetEmpty!23062)) setNonEmpty!23062))

(assert (= setNonEmpty!23062 b!2776290))

(assert (= (and mapNonEmpty!17401 ((_ is Cons!32074) mapValue!17401)) b!2776291))

(assert (= b!2776293 b!2776289))

(assert (= (and b!2776293 condSetEmpty!23063) setIsEmpty!23063))

(assert (= (and b!2776293 (not condSetEmpty!23063)) setNonEmpty!23063))

(assert (= setNonEmpty!23063 b!2776292))

(assert (= (and mapNonEmpty!17381 ((_ is Cons!32074) mapDefault!17401)) b!2776293))

(declare-fun m!3204039 () Bool)

(assert (=> mapNonEmpty!17401 m!3204039))

(declare-fun m!3204041 () Bool)

(assert (=> setNonEmpty!23062 m!3204041))

(declare-fun m!3204043 () Bool)

(assert (=> b!2776293 m!3204043))

(declare-fun m!3204045 () Bool)

(assert (=> setNonEmpty!23063 m!3204045))

(declare-fun m!3204047 () Bool)

(assert (=> b!2776291 m!3204047))

(declare-fun b!2776294 () Bool)

(declare-fun e!1751081 () Bool)

(declare-fun tp!878533 () Bool)

(declare-fun tp!878534 () Bool)

(assert (=> b!2776294 (= e!1751081 (and tp!878533 tp!878534))))

(assert (=> b!2775252 (= tp!878290 e!1751081)))

(assert (= (and b!2775252 ((_ is Cons!32073) (exprs!2821 setElem!23035))) b!2776294))

(declare-fun condSetEmpty!23064 () Bool)

(assert (=> setNonEmpty!23036 (= condSetEmpty!23064 (= setRest!23036 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23064 () Bool)

(assert (=> setNonEmpty!23036 (= tp!878295 setRes!23064)))

(declare-fun setIsEmpty!23064 () Bool)

(assert (=> setIsEmpty!23064 setRes!23064))

(declare-fun setElem!23064 () Context!4642)

(declare-fun e!1751082 () Bool)

(declare-fun tp!878535 () Bool)

(declare-fun setNonEmpty!23064 () Bool)

(assert (=> setNonEmpty!23064 (= setRes!23064 (and tp!878535 (inv!43564 setElem!23064) e!1751082))))

(declare-fun setRest!23064 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23064 (= setRest!23036 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23064 true) setRest!23064))))

(declare-fun b!2776295 () Bool)

(declare-fun tp!878536 () Bool)

(assert (=> b!2776295 (= e!1751082 tp!878536)))

(assert (= (and setNonEmpty!23036 condSetEmpty!23064) setIsEmpty!23064))

(assert (= (and setNonEmpty!23036 (not condSetEmpty!23064)) setNonEmpty!23064))

(assert (= setNonEmpty!23064 b!2776295))

(declare-fun m!3204049 () Bool)

(assert (=> setNonEmpty!23064 m!3204049))

(declare-fun e!1751085 () Bool)

(assert (=> b!2775254 (= tp!878293 e!1751085)))

(declare-fun b!2776296 () Bool)

(declare-fun e!1751083 () Bool)

(declare-fun tp!878537 () Bool)

(assert (=> b!2776296 (= e!1751083 tp!878537)))

(declare-fun b!2776297 () Bool)

(declare-fun e!1751084 () Bool)

(declare-fun tp!878539 () Bool)

(assert (=> b!2776297 (= e!1751084 tp!878539)))

(declare-fun b!2776298 () Bool)

(declare-fun setRes!23065 () Bool)

(declare-fun tp!878540 () Bool)

(assert (=> b!2776298 (= e!1751085 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))))) e!1751084 tp_is_empty!14023 setRes!23065 tp!878540))))

(declare-fun condSetEmpty!23065 () Bool)

(assert (=> b!2776298 (= condSetEmpty!23065 (= (_2!19068 (h!37494 (t!228302 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23065 () Bool)

(declare-fun setElem!23065 () Context!4642)

(declare-fun tp!878538 () Bool)

(assert (=> setNonEmpty!23065 (= setRes!23065 (and tp!878538 (inv!43564 setElem!23065) e!1751083))))

(declare-fun setRest!23065 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23065 (= (_2!19068 (h!37494 (t!228302 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23065 true) setRest!23065))))

(declare-fun setIsEmpty!23065 () Bool)

(assert (=> setIsEmpty!23065 setRes!23065))

(assert (= b!2776298 b!2776297))

(assert (= (and b!2776298 condSetEmpty!23065) setIsEmpty!23065))

(assert (= (and b!2776298 (not condSetEmpty!23065)) setNonEmpty!23065))

(assert (= setNonEmpty!23065 b!2776296))

(assert (= (and b!2775254 ((_ is Cons!32074) (t!228302 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) b!2776298))

(declare-fun m!3204051 () Bool)

(assert (=> b!2776298 m!3204051))

(declare-fun m!3204053 () Bool)

(assert (=> setNonEmpty!23065 m!3204053))

(declare-fun b!2776311 () Bool)

(declare-fun e!1751088 () Bool)

(declare-fun tp!878553 () Bool)

(assert (=> b!2776311 (= e!1751088 tp!878553)))

(declare-fun b!2776312 () Bool)

(declare-fun tp!878551 () Bool)

(declare-fun tp!878555 () Bool)

(assert (=> b!2776312 (= e!1751088 (and tp!878551 tp!878555))))

(assert (=> b!2775325 (= tp!878390 e!1751088)))

(declare-fun b!2776310 () Bool)

(declare-fun tp!878552 () Bool)

(declare-fun tp!878554 () Bool)

(assert (=> b!2776310 (= e!1751088 (and tp!878552 tp!878554))))

(declare-fun b!2776309 () Bool)

(assert (=> b!2776309 (= e!1751088 tp_is_empty!14023)))

(assert (= (and b!2775325 ((_ is ElementMatch!8103) (h!37493 (exprs!2821 setElem!23028)))) b!2776309))

(assert (= (and b!2775325 ((_ is Concat!13191) (h!37493 (exprs!2821 setElem!23028)))) b!2776310))

(assert (= (and b!2775325 ((_ is Star!8103) (h!37493 (exprs!2821 setElem!23028)))) b!2776311))

(assert (= (and b!2775325 ((_ is Union!8103) (h!37493 (exprs!2821 setElem!23028)))) b!2776312))

(declare-fun b!2776313 () Bool)

(declare-fun e!1751089 () Bool)

(declare-fun tp!878556 () Bool)

(declare-fun tp!878557 () Bool)

(assert (=> b!2776313 (= e!1751089 (and tp!878556 tp!878557))))

(assert (=> b!2775325 (= tp!878391 e!1751089)))

(assert (= (and b!2775325 ((_ is Cons!32073) (t!228301 (exprs!2821 setElem!23028)))) b!2776313))

(declare-fun b!2776314 () Bool)

(declare-fun e!1751091 () Bool)

(declare-fun lt!990496 () MutLongMap!3814)

(assert (=> b!2776314 (= e!1751091 ((_ is LongMap!3814) lt!990496))))

(assert (=> b!2776314 (= lt!990496 (v!33685 (underlying!7832 (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))))))

(declare-fun b!2776315 () Bool)

(declare-fun e!1751094 () Bool)

(assert (=> b!2776315 (= e!1751094 e!1751091)))

(declare-fun b!2776316 () Bool)

(declare-fun e!1751093 () Bool)

(declare-fun e!1751092 () Bool)

(assert (=> b!2776316 (= e!1751093 e!1751092)))

(declare-fun b!2776317 () Bool)

(declare-fun e!1751090 () Bool)

(assert (=> b!2776317 (= e!1751090 e!1751094)))

(declare-fun b!2776318 () Bool)

(declare-fun e!1751095 () Bool)

(assert (=> b!2776318 (= e!1751095 e!1751093)))

(declare-fun b!2776319 () Bool)

(declare-fun lt!990497 () MutLongMap!3813)

(assert (=> b!2776319 (= e!1751092 ((_ is LongMap!3813) lt!990497))))

(assert (=> b!2776319 (= lt!990497 (v!33683 (underlying!7830 (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))))))

(assert (=> d!806500 (= true (and e!1751095 e!1751090))))

(assert (= b!2776316 b!2776319))

(assert (= (and b!2776318 ((_ is HashMap!3719) (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))) b!2776316))

(assert (= d!806500 b!2776318))

(assert (= b!2776315 b!2776314))

(assert (= (and b!2776317 ((_ is HashMap!3720) (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 (ite c!450487 (_2!19073 lt!989515) (_2!19073 lt!989541)) (ite c!450487 (_3!2924 lt!989515) (_3!2924 lt!989541)) (ite c!450487 (_1!19073 lt!989515) (_1!19073 lt!989541)) lt!989488 1 lt!989532 input!5495 lt!989489))))) b!2776315))

(assert (= d!806500 b!2776317))

(declare-fun b!2776334 () Bool)

(declare-fun e!1751110 () Bool)

(declare-fun e!1751111 () Bool)

(assert (=> b!2776334 (= e!1751110 e!1751111)))

(declare-fun e!1751112 () Bool)

(assert (=> d!806542 (= true (and e!1751110 e!1751112))))

(declare-fun b!2776335 () Bool)

(declare-fun e!1751113 () Bool)

(assert (=> b!2776335 (= e!1751111 e!1751113)))

(declare-fun b!2776336 () Bool)

(declare-fun e!1751109 () Bool)

(assert (=> b!2776336 (= e!1751112 e!1751109)))

(declare-fun b!2776337 () Bool)

(declare-fun e!1751108 () Bool)

(assert (=> b!2776337 (= e!1751109 e!1751108)))

(declare-fun b!2776338 () Bool)

(declare-fun lt!990502 () MutLongMap!3813)

(assert (=> b!2776338 (= e!1751113 ((_ is LongMap!3813) lt!990502))))

(assert (=> b!2776338 (= lt!990502 (v!33683 (underlying!7830 (cache!3862 (_2!19073 (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))))))

(declare-fun b!2776339 () Bool)

(declare-fun lt!990503 () MutLongMap!3814)

(assert (=> b!2776339 (= e!1751108 ((_ is LongMap!3814) lt!990503))))

(assert (=> b!2776339 (= lt!990503 (v!33685 (underlying!7832 (cache!3863 (_3!2924 (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))))))

(assert (= b!2776335 b!2776338))

(assert (= (and b!2776334 ((_ is HashMap!3719) (cache!3862 (_2!19073 (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))) b!2776335))

(assert (= d!806542 b!2776334))

(assert (= b!2776337 b!2776339))

(assert (= (and b!2776336 ((_ is HashMap!3720) (cache!3863 (_3!2924 (derivationStepZipperMem!97 z!3597 lt!989486 (_2!19071 lt!989506) (_3!2922 lt!989506)))))) b!2776337))

(assert (= d!806542 b!2776336))

(declare-fun condSetEmpty!23066 () Bool)

(assert (=> setNonEmpty!23034 (= condSetEmpty!23066 (= setRest!23034 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23066 () Bool)

(assert (=> setNonEmpty!23034 (= tp!878288 setRes!23066)))

(declare-fun setIsEmpty!23066 () Bool)

(assert (=> setIsEmpty!23066 setRes!23066))

(declare-fun setNonEmpty!23066 () Bool)

(declare-fun tp!878558 () Bool)

(declare-fun e!1751114 () Bool)

(declare-fun setElem!23066 () Context!4642)

(assert (=> setNonEmpty!23066 (= setRes!23066 (and tp!878558 (inv!43564 setElem!23066) e!1751114))))

(declare-fun setRest!23066 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23066 (= setRest!23034 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23066 true) setRest!23066))))

(declare-fun b!2776340 () Bool)

(declare-fun tp!878559 () Bool)

(assert (=> b!2776340 (= e!1751114 tp!878559)))

(assert (= (and setNonEmpty!23034 condSetEmpty!23066) setIsEmpty!23066))

(assert (= (and setNonEmpty!23034 (not condSetEmpty!23066)) setNonEmpty!23066))

(assert (= setNonEmpty!23066 b!2776340))

(declare-fun m!3204055 () Bool)

(assert (=> setNonEmpty!23066 m!3204055))

(declare-fun e!1751117 () Bool)

(assert (=> b!2775275 (= tp!878320 e!1751117)))

(declare-fun b!2776341 () Bool)

(declare-fun e!1751115 () Bool)

(declare-fun tp!878560 () Bool)

(assert (=> b!2776341 (= e!1751115 tp!878560)))

(declare-fun b!2776342 () Bool)

(declare-fun e!1751116 () Bool)

(declare-fun tp!878562 () Bool)

(assert (=> b!2776342 (= e!1751116 tp!878562)))

(declare-fun b!2776343 () Bool)

(declare-fun tp!878563 () Bool)

(declare-fun setRes!23067 () Bool)

(assert (=> b!2776343 (= e!1751117 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 mapValue!17381))))) e!1751116 tp_is_empty!14023 setRes!23067 tp!878563))))

(declare-fun condSetEmpty!23067 () Bool)

(assert (=> b!2776343 (= condSetEmpty!23067 (= (_2!19068 (h!37494 (t!228302 mapValue!17381))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23067 () Bool)

(declare-fun tp!878561 () Bool)

(declare-fun setElem!23067 () Context!4642)

(assert (=> setNonEmpty!23067 (= setRes!23067 (and tp!878561 (inv!43564 setElem!23067) e!1751115))))

(declare-fun setRest!23067 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23067 (= (_2!19068 (h!37494 (t!228302 mapValue!17381))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23067 true) setRest!23067))))

(declare-fun setIsEmpty!23067 () Bool)

(assert (=> setIsEmpty!23067 setRes!23067))

(assert (= b!2776343 b!2776342))

(assert (= (and b!2776343 condSetEmpty!23067) setIsEmpty!23067))

(assert (= (and b!2776343 (not condSetEmpty!23067)) setNonEmpty!23067))

(assert (= setNonEmpty!23067 b!2776341))

(assert (= (and b!2775275 ((_ is Cons!32074) (t!228302 mapValue!17381))) b!2776343))

(declare-fun m!3204057 () Bool)

(assert (=> b!2776343 m!3204057))

(declare-fun m!3204059 () Bool)

(assert (=> setNonEmpty!23067 m!3204059))

(declare-fun b!2776344 () Bool)

(declare-fun e!1751118 () Bool)

(declare-fun tp!878564 () Bool)

(declare-fun tp!878565 () Bool)

(assert (=> b!2776344 (= e!1751118 (and tp!878564 tp!878565))))

(assert (=> b!2775276 (= tp!878324 e!1751118)))

(assert (= (and b!2775276 ((_ is Cons!32073) (exprs!2821 setElem!23041))) b!2776344))

(declare-fun b!2776345 () Bool)

(declare-fun e!1751119 () Bool)

(declare-fun tp!878566 () Bool)

(declare-fun tp!878567 () Bool)

(assert (=> b!2776345 (= e!1751119 (and tp!878566 tp!878567))))

(assert (=> b!2775239 (= tp!878273 e!1751119)))

(assert (= (and b!2775239 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapDefault!17377)))))) b!2776345))

(declare-fun condSetEmpty!23068 () Bool)

(assert (=> setNonEmpty!23031 (= condSetEmpty!23068 (= setRest!23031 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23068 () Bool)

(assert (=> setNonEmpty!23031 (= tp!878272 setRes!23068)))

(declare-fun setIsEmpty!23068 () Bool)

(assert (=> setIsEmpty!23068 setRes!23068))

(declare-fun setElem!23068 () Context!4642)

(declare-fun setNonEmpty!23068 () Bool)

(declare-fun e!1751120 () Bool)

(declare-fun tp!878568 () Bool)

(assert (=> setNonEmpty!23068 (= setRes!23068 (and tp!878568 (inv!43564 setElem!23068) e!1751120))))

(declare-fun setRest!23068 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23068 (= setRest!23031 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23068 true) setRest!23068))))

(declare-fun b!2776346 () Bool)

(declare-fun tp!878569 () Bool)

(assert (=> b!2776346 (= e!1751120 tp!878569)))

(assert (= (and setNonEmpty!23031 condSetEmpty!23068) setIsEmpty!23068))

(assert (= (and setNonEmpty!23031 (not condSetEmpty!23068)) setNonEmpty!23068))

(assert (= setNonEmpty!23068 b!2776346))

(declare-fun m!3204061 () Bool)

(assert (=> setNonEmpty!23068 m!3204061))

(declare-fun mapValue!17402 () List!32175)

(declare-fun b!2776347 () Bool)

(declare-fun e!1751126 () Bool)

(declare-fun e!1751123 () Bool)

(declare-fun tp!878575 () Bool)

(declare-fun tp!878577 () Bool)

(declare-fun setRes!23069 () Bool)

(assert (=> b!2776347 (= e!1751126 (and tp!878577 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapValue!17402)))) e!1751123 tp_is_empty!14023 setRes!23069 tp!878575))))

(declare-fun condSetEmpty!23069 () Bool)

(assert (=> b!2776347 (= condSetEmpty!23069 (= (_2!19070 (h!37495 mapValue!17402)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun mapIsEmpty!17402 () Bool)

(declare-fun mapRes!17402 () Bool)

(assert (=> mapIsEmpty!17402 mapRes!17402))

(declare-fun setIsEmpty!23069 () Bool)

(declare-fun setRes!23070 () Bool)

(assert (=> setIsEmpty!23069 setRes!23070))

(declare-fun mapNonEmpty!17402 () Bool)

(declare-fun tp!878570 () Bool)

(assert (=> mapNonEmpty!17402 (= mapRes!17402 (and tp!878570 e!1751126))))

(declare-fun mapRest!17402 () (Array (_ BitVec 32) List!32175))

(declare-fun mapKey!17402 () (_ BitVec 32))

(assert (=> mapNonEmpty!17402 (= mapRest!17384 (store mapRest!17402 mapKey!17402 mapValue!17402))))

(declare-fun setNonEmpty!23069 () Bool)

(declare-fun e!1751122 () Bool)

(declare-fun tp!878579 () Bool)

(declare-fun setElem!23070 () Context!4642)

(assert (=> setNonEmpty!23069 (= setRes!23070 (and tp!878579 (inv!43564 setElem!23070) e!1751122))))

(declare-fun mapDefault!17402 () List!32175)

(declare-fun setRest!23069 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23069 (= (_2!19070 (h!37495 mapDefault!17402)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23070 true) setRest!23069))))

(declare-fun setIsEmpty!23070 () Bool)

(assert (=> setIsEmpty!23070 setRes!23069))

(declare-fun e!1751121 () Bool)

(declare-fun setElem!23069 () Context!4642)

(declare-fun tp!878578 () Bool)

(declare-fun setNonEmpty!23070 () Bool)

(assert (=> setNonEmpty!23070 (= setRes!23069 (and tp!878578 (inv!43564 setElem!23069) e!1751121))))

(declare-fun setRest!23070 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23070 (= (_2!19070 (h!37495 mapValue!17402)) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23069 true) setRest!23070))))

(declare-fun b!2776349 () Bool)

(declare-fun tp!878572 () Bool)

(declare-fun e!1751125 () Bool)

(declare-fun e!1751124 () Bool)

(declare-fun tp!878571 () Bool)

(assert (=> b!2776349 (= e!1751124 (and tp!878571 (inv!43564 (_2!19069 (_1!19070 (h!37495 mapDefault!17402)))) e!1751125 tp_is_empty!14023 setRes!23070 tp!878572))))

(declare-fun condSetEmpty!23070 () Bool)

(assert (=> b!2776349 (= condSetEmpty!23070 (= (_2!19070 (h!37495 mapDefault!17402)) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun condMapEmpty!17402 () Bool)

(assert (=> mapNonEmpty!17384 (= condMapEmpty!17402 (= mapRest!17384 ((as const (Array (_ BitVec 32) List!32175)) mapDefault!17402)))))

(assert (=> mapNonEmpty!17384 (= tp!878360 (and e!1751124 mapRes!17402))))

(declare-fun b!2776348 () Bool)

(declare-fun tp!878573 () Bool)

(assert (=> b!2776348 (= e!1751121 tp!878573)))

(declare-fun b!2776350 () Bool)

(declare-fun tp!878576 () Bool)

(assert (=> b!2776350 (= e!1751123 tp!878576)))

(declare-fun b!2776351 () Bool)

(declare-fun tp!878574 () Bool)

(assert (=> b!2776351 (= e!1751125 tp!878574)))

(declare-fun b!2776352 () Bool)

(declare-fun tp!878580 () Bool)

(assert (=> b!2776352 (= e!1751122 tp!878580)))

(assert (= (and mapNonEmpty!17384 condMapEmpty!17402) mapIsEmpty!17402))

(assert (= (and mapNonEmpty!17384 (not condMapEmpty!17402)) mapNonEmpty!17402))

(assert (= b!2776347 b!2776350))

(assert (= (and b!2776347 condSetEmpty!23069) setIsEmpty!23070))

(assert (= (and b!2776347 (not condSetEmpty!23069)) setNonEmpty!23070))

(assert (= setNonEmpty!23070 b!2776348))

(assert (= (and mapNonEmpty!17402 ((_ is Cons!32075) mapValue!17402)) b!2776347))

(assert (= b!2776349 b!2776351))

(assert (= (and b!2776349 condSetEmpty!23070) setIsEmpty!23069))

(assert (= (and b!2776349 (not condSetEmpty!23070)) setNonEmpty!23069))

(assert (= setNonEmpty!23069 b!2776352))

(assert (= (and mapNonEmpty!17384 ((_ is Cons!32075) mapDefault!17402)) b!2776349))

(declare-fun m!3204063 () Bool)

(assert (=> b!2776347 m!3204063))

(declare-fun m!3204065 () Bool)

(assert (=> setNonEmpty!23069 m!3204065))

(declare-fun m!3204067 () Bool)

(assert (=> b!2776349 m!3204067))

(declare-fun m!3204069 () Bool)

(assert (=> mapNonEmpty!17402 m!3204069))

(declare-fun m!3204071 () Bool)

(assert (=> setNonEmpty!23070 m!3204071))

(declare-fun condSetEmpty!23071 () Bool)

(assert (=> setNonEmpty!23048 (= condSetEmpty!23071 (= setRest!23048 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23071 () Bool)

(assert (=> setNonEmpty!23048 (= tp!878369 setRes!23071)))

(declare-fun setIsEmpty!23071 () Bool)

(assert (=> setIsEmpty!23071 setRes!23071))

(declare-fun e!1751127 () Bool)

(declare-fun setNonEmpty!23071 () Bool)

(declare-fun setElem!23071 () Context!4642)

(declare-fun tp!878581 () Bool)

(assert (=> setNonEmpty!23071 (= setRes!23071 (and tp!878581 (inv!43564 setElem!23071) e!1751127))))

(declare-fun setRest!23071 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23071 (= setRest!23048 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23071 true) setRest!23071))))

(declare-fun b!2776353 () Bool)

(declare-fun tp!878582 () Bool)

(assert (=> b!2776353 (= e!1751127 tp!878582)))

(assert (= (and setNonEmpty!23048 condSetEmpty!23071) setIsEmpty!23071))

(assert (= (and setNonEmpty!23048 (not condSetEmpty!23071)) setNonEmpty!23071))

(assert (= setNonEmpty!23071 b!2776353))

(declare-fun m!3204073 () Bool)

(assert (=> setNonEmpty!23071 m!3204073))

(declare-fun e!1751130 () Bool)

(assert (=> b!2775280 (= tp!878328 e!1751130)))

(declare-fun b!2776354 () Bool)

(declare-fun e!1751128 () Bool)

(declare-fun tp!878583 () Bool)

(assert (=> b!2776354 (= e!1751128 tp!878583)))

(declare-fun b!2776355 () Bool)

(declare-fun e!1751129 () Bool)

(declare-fun tp!878585 () Bool)

(assert (=> b!2776355 (= e!1751129 tp!878585)))

(declare-fun setRes!23072 () Bool)

(declare-fun b!2776356 () Bool)

(declare-fun tp!878586 () Bool)

(assert (=> b!2776356 (= e!1751130 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 mapValue!17378))))) e!1751129 tp_is_empty!14023 setRes!23072 tp!878586))))

(declare-fun condSetEmpty!23072 () Bool)

(assert (=> b!2776356 (= condSetEmpty!23072 (= (_2!19068 (h!37494 (t!228302 mapValue!17378))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23072 () Context!4642)

(declare-fun tp!878584 () Bool)

(declare-fun setNonEmpty!23072 () Bool)

(assert (=> setNonEmpty!23072 (= setRes!23072 (and tp!878584 (inv!43564 setElem!23072) e!1751128))))

(declare-fun setRest!23072 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23072 (= (_2!19068 (h!37494 (t!228302 mapValue!17378))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23072 true) setRest!23072))))

(declare-fun setIsEmpty!23072 () Bool)

(assert (=> setIsEmpty!23072 setRes!23072))

(assert (= b!2776356 b!2776355))

(assert (= (and b!2776356 condSetEmpty!23072) setIsEmpty!23072))

(assert (= (and b!2776356 (not condSetEmpty!23072)) setNonEmpty!23072))

(assert (= setNonEmpty!23072 b!2776354))

(assert (= (and b!2775280 ((_ is Cons!32074) (t!228302 mapValue!17378))) b!2776356))

(declare-fun m!3204075 () Bool)

(assert (=> b!2776356 m!3204075))

(declare-fun m!3204077 () Bool)

(assert (=> setNonEmpty!23072 m!3204077))

(declare-fun b!2776357 () Bool)

(declare-fun e!1751131 () Bool)

(declare-fun tp!878587 () Bool)

(declare-fun tp!878588 () Bool)

(assert (=> b!2776357 (= e!1751131 (and tp!878587 tp!878588))))

(assert (=> b!2775307 (= tp!878363 e!1751131)))

(assert (= (and b!2775307 ((_ is Cons!32073) (exprs!2821 setElem!23048))) b!2776357))

(declare-fun b!2776360 () Bool)

(declare-fun e!1751132 () Bool)

(declare-fun tp!878591 () Bool)

(assert (=> b!2776360 (= e!1751132 tp!878591)))

(declare-fun b!2776361 () Bool)

(declare-fun tp!878589 () Bool)

(declare-fun tp!878593 () Bool)

(assert (=> b!2776361 (= e!1751132 (and tp!878589 tp!878593))))

(assert (=> b!2775308 (= tp!878361 e!1751132)))

(declare-fun b!2776359 () Bool)

(declare-fun tp!878590 () Bool)

(declare-fun tp!878592 () Bool)

(assert (=> b!2776359 (= e!1751132 (and tp!878590 tp!878592))))

(declare-fun b!2776358 () Bool)

(assert (=> b!2776358 (= e!1751132 tp_is_empty!14023)))

(assert (= (and b!2775308 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17384))))) b!2776358))

(assert (= (and b!2775308 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 mapDefault!17384))))) b!2776359))

(assert (= (and b!2775308 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17384))))) b!2776360))

(assert (= (and b!2775308 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17384))))) b!2776361))

(declare-fun b!2776362 () Bool)

(declare-fun e!1751135 () Bool)

(declare-fun tp!878596 () Bool)

(assert (=> b!2776362 (= e!1751135 tp!878596)))

(declare-fun setIsEmpty!23073 () Bool)

(declare-fun setRes!23073 () Bool)

(assert (=> setIsEmpty!23073 setRes!23073))

(declare-fun e!1751133 () Bool)

(assert (=> b!2775308 (= tp!878362 e!1751133)))

(declare-fun b!2776363 () Bool)

(declare-fun tp!878594 () Bool)

(declare-fun tp!878598 () Bool)

(declare-fun e!1751134 () Bool)

(assert (=> b!2776363 (= e!1751133 (and tp!878594 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 mapDefault!17384))))) e!1751134 tp_is_empty!14023 setRes!23073 tp!878598))))

(declare-fun condSetEmpty!23073 () Bool)

(assert (=> b!2776363 (= condSetEmpty!23073 (= (_2!19070 (h!37495 (t!228303 mapDefault!17384))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878597 () Bool)

(declare-fun setElem!23073 () Context!4642)

(declare-fun setNonEmpty!23073 () Bool)

(assert (=> setNonEmpty!23073 (= setRes!23073 (and tp!878597 (inv!43564 setElem!23073) e!1751135))))

(declare-fun setRest!23073 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23073 (= (_2!19070 (h!37495 (t!228303 mapDefault!17384))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23073 true) setRest!23073))))

(declare-fun b!2776364 () Bool)

(declare-fun tp!878595 () Bool)

(assert (=> b!2776364 (= e!1751134 tp!878595)))

(assert (= b!2776363 b!2776364))

(assert (= (and b!2776363 condSetEmpty!23073) setIsEmpty!23073))

(assert (= (and b!2776363 (not condSetEmpty!23073)) setNonEmpty!23073))

(assert (= setNonEmpty!23073 b!2776362))

(assert (= (and b!2775308 ((_ is Cons!32075) (t!228303 mapDefault!17384))) b!2776363))

(declare-fun m!3204079 () Bool)

(assert (=> b!2776363 m!3204079))

(declare-fun m!3204081 () Bool)

(assert (=> setNonEmpty!23073 m!3204081))

(declare-fun b!2776365 () Bool)

(declare-fun e!1751137 () Bool)

(declare-fun lt!990504 () MutLongMap!3814)

(assert (=> b!2776365 (= e!1751137 ((_ is LongMap!3814) lt!990504))))

(assert (=> b!2776365 (= lt!990504 (v!33685 (underlying!7832 (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))))))

(declare-fun b!2776366 () Bool)

(declare-fun e!1751140 () Bool)

(assert (=> b!2776366 (= e!1751140 e!1751137)))

(declare-fun b!2776367 () Bool)

(declare-fun e!1751139 () Bool)

(declare-fun e!1751138 () Bool)

(assert (=> b!2776367 (= e!1751139 e!1751138)))

(declare-fun b!2776368 () Bool)

(declare-fun e!1751136 () Bool)

(assert (=> b!2776368 (= e!1751136 e!1751140)))

(declare-fun b!2776369 () Bool)

(declare-fun e!1751141 () Bool)

(assert (=> b!2776369 (= e!1751141 e!1751139)))

(declare-fun b!2776370 () Bool)

(declare-fun lt!990505 () MutLongMap!3813)

(assert (=> b!2776370 (= e!1751138 ((_ is LongMap!3813) lt!990505))))

(assert (=> b!2776370 (= lt!990505 (v!33683 (underlying!7830 (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))))))

(assert (=> d!806484 (= true (and e!1751141 e!1751136))))

(assert (= b!2776367 b!2776370))

(assert (= (and b!2776369 ((_ is HashMap!3719) (cache!3862 (_2!19071 (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))) b!2776367))

(assert (= d!806484 b!2776369))

(assert (= b!2776366 b!2776365))

(assert (= (and b!2776368 ((_ is HashMap!3720) (cache!3863 (_3!2922 (findLongestMatchInnerZipperFastMem!45 (_2!19071 lt!989506) (_3!2922 lt!989506) z!3597 Nil!32072 0 lt!989496 input!5495 lt!989489))))) b!2776366))

(assert (= d!806484 b!2776368))

(declare-fun b!2776371 () Bool)

(declare-fun e!1751142 () Bool)

(declare-fun tp!878599 () Bool)

(declare-fun tp!878600 () Bool)

(assert (=> b!2776371 (= e!1751142 (and tp!878599 tp!878600))))

(assert (=> b!2775330 (= tp!878397 e!1751142)))

(assert (= (and b!2775330 ((_ is Cons!32073) (exprs!2821 setElem!23055))) b!2776371))

(declare-fun b!2776372 () Bool)

(declare-fun e!1751143 () Bool)

(declare-fun tp!878601 () Bool)

(declare-fun tp!878602 () Bool)

(assert (=> b!2776372 (= e!1751143 (and tp!878601 tp!878602))))

(assert (=> b!2775310 (= tp!878364 e!1751143)))

(assert (= (and b!2775310 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapDefault!17384)))))) b!2776372))

(declare-fun b!2776373 () Bool)

(declare-fun e!1751144 () Bool)

(declare-fun tp!878603 () Bool)

(declare-fun tp!878604 () Bool)

(assert (=> b!2776373 (= e!1751144 (and tp!878603 tp!878604))))

(assert (=> b!2775273 (= tp!878321 e!1751144)))

(assert (= (and b!2775273 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapDefault!17381)))))) b!2776373))

(declare-fun b!2776376 () Bool)

(declare-fun e!1751145 () Bool)

(declare-fun tp!878607 () Bool)

(assert (=> b!2776376 (= e!1751145 tp!878607)))

(declare-fun b!2776377 () Bool)

(declare-fun tp!878605 () Bool)

(declare-fun tp!878609 () Bool)

(assert (=> b!2776377 (= e!1751145 (and tp!878605 tp!878609))))

(assert (=> b!2775316 (= tp!878376 e!1751145)))

(declare-fun b!2776375 () Bool)

(declare-fun tp!878606 () Bool)

(declare-fun tp!878608 () Bool)

(assert (=> b!2776375 (= e!1751145 (and tp!878606 tp!878608))))

(declare-fun b!2776374 () Bool)

(assert (=> b!2776374 (= e!1751145 tp_is_empty!14023)))

(assert (= (and b!2775316 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776374))

(assert (= (and b!2775316 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776375))

(assert (= (and b!2775316 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776376))

(assert (= (and b!2775316 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776377))

(declare-fun b!2776378 () Bool)

(declare-fun e!1751148 () Bool)

(declare-fun tp!878612 () Bool)

(assert (=> b!2776378 (= e!1751148 tp!878612)))

(declare-fun setIsEmpty!23074 () Bool)

(declare-fun setRes!23074 () Bool)

(assert (=> setIsEmpty!23074 setRes!23074))

(declare-fun e!1751146 () Bool)

(assert (=> b!2775316 (= tp!878380 e!1751146)))

(declare-fun tp!878614 () Bool)

(declare-fun b!2776379 () Bool)

(declare-fun tp!878610 () Bool)

(declare-fun e!1751147 () Bool)

(assert (=> b!2776379 (= e!1751146 (and tp!878610 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) e!1751147 tp_is_empty!14023 setRes!23074 tp!878614))))

(declare-fun condSetEmpty!23074 () Bool)

(assert (=> b!2776379 (= condSetEmpty!23074 (= (_2!19070 (h!37495 (t!228303 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23074 () Bool)

(declare-fun setElem!23074 () Context!4642)

(declare-fun tp!878613 () Bool)

(assert (=> setNonEmpty!23074 (= setRes!23074 (and tp!878613 (inv!43564 setElem!23074) e!1751148))))

(declare-fun setRest!23074 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23074 (= (_2!19070 (h!37495 (t!228303 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23074 true) setRest!23074))))

(declare-fun b!2776380 () Bool)

(declare-fun tp!878611 () Bool)

(assert (=> b!2776380 (= e!1751147 tp!878611)))

(assert (= b!2776379 b!2776380))

(assert (= (and b!2776379 condSetEmpty!23074) setIsEmpty!23074))

(assert (= (and b!2776379 (not condSetEmpty!23074)) setNonEmpty!23074))

(assert (= setNonEmpty!23074 b!2776378))

(assert (= (and b!2775316 ((_ is Cons!32075) (t!228303 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) b!2776379))

(declare-fun m!3204083 () Bool)

(assert (=> b!2776379 m!3204083))

(declare-fun m!3204085 () Bool)

(assert (=> setNonEmpty!23074 m!3204085))

(declare-fun b!2776383 () Bool)

(declare-fun e!1751149 () Bool)

(declare-fun tp!878617 () Bool)

(assert (=> b!2776383 (= e!1751149 tp!878617)))

(declare-fun b!2776384 () Bool)

(declare-fun tp!878615 () Bool)

(declare-fun tp!878619 () Bool)

(assert (=> b!2776384 (= e!1751149 (and tp!878615 tp!878619))))

(assert (=> b!2775319 (= tp!878381 e!1751149)))

(declare-fun b!2776382 () Bool)

(declare-fun tp!878616 () Bool)

(declare-fun tp!878618 () Bool)

(assert (=> b!2776382 (= e!1751149 (and tp!878616 tp!878618))))

(declare-fun b!2776381 () Bool)

(assert (=> b!2776381 (= e!1751149 tp_is_empty!14023)))

(assert (= (and b!2775319 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776381))

(assert (= (and b!2775319 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776382))

(assert (= (and b!2775319 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776383))

(assert (= (and b!2775319 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) b!2776384))

(declare-fun b!2776385 () Bool)

(declare-fun e!1751152 () Bool)

(declare-fun tp!878622 () Bool)

(assert (=> b!2776385 (= e!1751152 tp!878622)))

(declare-fun setIsEmpty!23075 () Bool)

(declare-fun setRes!23075 () Bool)

(assert (=> setIsEmpty!23075 setRes!23075))

(declare-fun e!1751150 () Bool)

(assert (=> b!2775319 (= tp!878385 e!1751150)))

(declare-fun b!2776386 () Bool)

(declare-fun tp!878624 () Bool)

(declare-fun e!1751151 () Bool)

(declare-fun tp!878620 () Bool)

(assert (=> b!2776386 (= e!1751150 (and tp!878620 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))))) e!1751151 tp_is_empty!14023 setRes!23075 tp!878624))))

(declare-fun condSetEmpty!23075 () Bool)

(assert (=> b!2776386 (= condSetEmpty!23075 (= (_2!19070 (h!37495 (t!228303 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23075 () Bool)

(declare-fun setElem!23075 () Context!4642)

(declare-fun tp!878623 () Bool)

(assert (=> setNonEmpty!23075 (= setRes!23075 (and tp!878623 (inv!43564 setElem!23075) e!1751152))))

(declare-fun setRest!23075 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23075 (= (_2!19070 (h!37495 (t!228303 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23075 true) setRest!23075))))

(declare-fun b!2776387 () Bool)

(declare-fun tp!878621 () Bool)

(assert (=> b!2776387 (= e!1751151 tp!878621)))

(assert (= b!2776386 b!2776387))

(assert (= (and b!2776386 condSetEmpty!23075) setIsEmpty!23075))

(assert (= (and b!2776386 (not condSetEmpty!23075)) setNonEmpty!23075))

(assert (= setNonEmpty!23075 b!2776385))

(assert (= (and b!2775319 ((_ is Cons!32075) (t!228303 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939))))))))) b!2776386))

(declare-fun m!3204087 () Bool)

(assert (=> b!2776386 m!3204087))

(declare-fun m!3204089 () Bool)

(assert (=> setNonEmpty!23075 m!3204089))

(declare-fun b!2776388 () Bool)

(declare-fun e!1751153 () Bool)

(declare-fun tp!878625 () Bool)

(declare-fun tp!878626 () Bool)

(assert (=> b!2776388 (= e!1751153 (and tp!878625 tp!878626))))

(assert (=> b!2775255 (= tp!878294 e!1751153)))

(assert (= (and b!2775255 ((_ is Cons!32073) (exprs!2821 setElem!23036))) b!2776388))

(declare-fun b!2776389 () Bool)

(declare-fun e!1751154 () Bool)

(declare-fun tp!878627 () Bool)

(declare-fun tp!878628 () Bool)

(assert (=> b!2776389 (= e!1751154 (and tp!878627 tp!878628))))

(assert (=> b!2775274 (= tp!878322 e!1751154)))

(assert (= (and b!2775274 ((_ is Cons!32073) (exprs!2821 setElem!23042))) b!2776389))

(declare-fun b!2776392 () Bool)

(declare-fun e!1751155 () Bool)

(declare-fun tp!878631 () Bool)

(assert (=> b!2776392 (= e!1751155 tp!878631)))

(declare-fun b!2776393 () Bool)

(declare-fun tp!878629 () Bool)

(declare-fun tp!878633 () Bool)

(assert (=> b!2776393 (= e!1751155 (and tp!878629 tp!878633))))

(assert (=> b!2775313 (= tp!878371 e!1751155)))

(declare-fun b!2776391 () Bool)

(declare-fun tp!878630 () Bool)

(declare-fun tp!878632 () Bool)

(assert (=> b!2776391 (= e!1751155 (and tp!878630 tp!878632))))

(declare-fun b!2776390 () Bool)

(assert (=> b!2776390 (= e!1751155 tp_is_empty!14023)))

(assert (= (and b!2775313 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17377))))) b!2776390))

(assert (= (and b!2775313 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 mapValue!17377))))) b!2776391))

(assert (= (and b!2775313 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17377))))) b!2776392))

(assert (= (and b!2775313 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17377))))) b!2776393))

(declare-fun b!2776394 () Bool)

(declare-fun e!1751158 () Bool)

(declare-fun tp!878636 () Bool)

(assert (=> b!2776394 (= e!1751158 tp!878636)))

(declare-fun setIsEmpty!23076 () Bool)

(declare-fun setRes!23076 () Bool)

(assert (=> setIsEmpty!23076 setRes!23076))

(declare-fun e!1751156 () Bool)

(assert (=> b!2775313 (= tp!878375 e!1751156)))

(declare-fun e!1751157 () Bool)

(declare-fun tp!878634 () Bool)

(declare-fun tp!878638 () Bool)

(declare-fun b!2776395 () Bool)

(assert (=> b!2776395 (= e!1751156 (and tp!878634 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 mapValue!17377))))) e!1751157 tp_is_empty!14023 setRes!23076 tp!878638))))

(declare-fun condSetEmpty!23076 () Bool)

(assert (=> b!2776395 (= condSetEmpty!23076 (= (_2!19070 (h!37495 (t!228303 mapValue!17377))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878637 () Bool)

(declare-fun setElem!23076 () Context!4642)

(declare-fun setNonEmpty!23076 () Bool)

(assert (=> setNonEmpty!23076 (= setRes!23076 (and tp!878637 (inv!43564 setElem!23076) e!1751158))))

(declare-fun setRest!23076 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23076 (= (_2!19070 (h!37495 (t!228303 mapValue!17377))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23076 true) setRest!23076))))

(declare-fun b!2776396 () Bool)

(declare-fun tp!878635 () Bool)

(assert (=> b!2776396 (= e!1751157 tp!878635)))

(assert (= b!2776395 b!2776396))

(assert (= (and b!2776395 condSetEmpty!23076) setIsEmpty!23076))

(assert (= (and b!2776395 (not condSetEmpty!23076)) setNonEmpty!23076))

(assert (= setNonEmpty!23076 b!2776394))

(assert (= (and b!2775313 ((_ is Cons!32075) (t!228303 mapValue!17377))) b!2776395))

(declare-fun m!3204091 () Bool)

(assert (=> b!2776395 m!3204091))

(declare-fun m!3204093 () Bool)

(assert (=> setNonEmpty!23076 m!3204093))

(declare-fun e!1751161 () Bool)

(assert (=> b!2775257 (= tp!878297 e!1751161)))

(declare-fun b!2776397 () Bool)

(declare-fun e!1751159 () Bool)

(declare-fun tp!878639 () Bool)

(assert (=> b!2776397 (= e!1751159 tp!878639)))

(declare-fun b!2776398 () Bool)

(declare-fun e!1751160 () Bool)

(declare-fun tp!878641 () Bool)

(assert (=> b!2776398 (= e!1751160 tp!878641)))

(declare-fun tp!878642 () Bool)

(declare-fun setRes!23077 () Bool)

(declare-fun b!2776399 () Bool)

(assert (=> b!2776399 (= e!1751161 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))))) e!1751160 tp_is_empty!14023 setRes!23077 tp!878642))))

(declare-fun condSetEmpty!23077 () Bool)

(assert (=> b!2776399 (= condSetEmpty!23077 (= (_2!19068 (h!37494 (t!228302 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23077 () Context!4642)

(declare-fun tp!878640 () Bool)

(declare-fun setNonEmpty!23077 () Bool)

(assert (=> setNonEmpty!23077 (= setRes!23077 (and tp!878640 (inv!43564 setElem!23077) e!1751159))))

(declare-fun setRest!23077 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23077 (= (_2!19068 (h!37494 (t!228302 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23077 true) setRest!23077))))

(declare-fun setIsEmpty!23077 () Bool)

(assert (=> setIsEmpty!23077 setRes!23077))

(assert (= b!2776399 b!2776398))

(assert (= (and b!2776399 condSetEmpty!23077) setIsEmpty!23077))

(assert (= (and b!2776399 (not condSetEmpty!23077)) setNonEmpty!23077))

(assert (= setNonEmpty!23077 b!2776397))

(assert (= (and b!2775257 ((_ is Cons!32074) (t!228302 (minValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820))))))))) b!2776399))

(declare-fun m!3204095 () Bool)

(assert (=> b!2776399 m!3204095))

(declare-fun m!3204097 () Bool)

(assert (=> setNonEmpty!23077 m!3204097))

(declare-fun condSetEmpty!23078 () Bool)

(assert (=> setNonEmpty!23041 (= condSetEmpty!23078 (= setRest!23042 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23078 () Bool)

(assert (=> setNonEmpty!23041 (= tp!878316 setRes!23078)))

(declare-fun setIsEmpty!23078 () Bool)

(assert (=> setIsEmpty!23078 setRes!23078))

(declare-fun setNonEmpty!23078 () Bool)

(declare-fun e!1751162 () Bool)

(declare-fun setElem!23078 () Context!4642)

(declare-fun tp!878643 () Bool)

(assert (=> setNonEmpty!23078 (= setRes!23078 (and tp!878643 (inv!43564 setElem!23078) e!1751162))))

(declare-fun setRest!23078 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23078 (= setRest!23042 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23078 true) setRest!23078))))

(declare-fun b!2776400 () Bool)

(declare-fun tp!878644 () Bool)

(assert (=> b!2776400 (= e!1751162 tp!878644)))

(assert (= (and setNonEmpty!23041 condSetEmpty!23078) setIsEmpty!23078))

(assert (= (and setNonEmpty!23041 (not condSetEmpty!23078)) setNonEmpty!23078))

(assert (= setNonEmpty!23078 b!2776400))

(declare-fun m!3204099 () Bool)

(assert (=> setNonEmpty!23078 m!3204099))

(declare-fun b!2776401 () Bool)

(declare-fun e!1751163 () Bool)

(declare-fun tp!878645 () Bool)

(declare-fun tp!878646 () Bool)

(assert (=> b!2776401 (= e!1751163 (and tp!878645 tp!878646))))

(assert (=> b!2775317 (= tp!878377 e!1751163)))

(assert (= (and b!2775317 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 (zeroValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))))) b!2776401))

(declare-fun b!2776402 () Bool)

(declare-fun e!1751164 () Bool)

(declare-fun tp!878647 () Bool)

(declare-fun tp!878648 () Bool)

(assert (=> b!2776402 (= e!1751164 (and tp!878647 tp!878648))))

(assert (=> b!2775320 (= tp!878382 e!1751164)))

(assert (= (and b!2775320 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 (minValue!4073 (v!33684 (underlying!7831 (v!33685 (underlying!7832 (cache!3863 cacheDown!939)))))))))))) b!2776402))

(declare-fun tp!878651 () Bool)

(declare-fun b!2776403 () Bool)

(declare-fun e!1751165 () Bool)

(declare-fun tp!878650 () Bool)

(assert (=> b!2776403 (= e!1751165 (and (inv!43563 (left!24418 (left!24418 (c!450499 input!5495)))) tp!878650 (inv!43563 (right!24748 (left!24418 (c!450499 input!5495)))) tp!878651))))

(declare-fun b!2776405 () Bool)

(declare-fun e!1751166 () Bool)

(declare-fun tp!878649 () Bool)

(assert (=> b!2776405 (= e!1751166 tp!878649)))

(declare-fun b!2776404 () Bool)

(assert (=> b!2776404 (= e!1751165 (and (inv!43567 (xs!13091 (left!24418 (c!450499 input!5495)))) e!1751166))))

(assert (=> b!2775289 (= tp!878336 (and (inv!43563 (left!24418 (c!450499 input!5495))) e!1751165))))

(assert (= (and b!2775289 ((_ is Node!9981) (left!24418 (c!450499 input!5495)))) b!2776403))

(assert (= b!2776404 b!2776405))

(assert (= (and b!2775289 ((_ is Leaf!15201) (left!24418 (c!450499 input!5495)))) b!2776404))

(declare-fun m!3204101 () Bool)

(assert (=> b!2776403 m!3204101))

(declare-fun m!3204103 () Bool)

(assert (=> b!2776403 m!3204103))

(declare-fun m!3204105 () Bool)

(assert (=> b!2776404 m!3204105))

(assert (=> b!2775289 m!3202075))

(declare-fun tp!878654 () Bool)

(declare-fun tp!878653 () Bool)

(declare-fun e!1751167 () Bool)

(declare-fun b!2776406 () Bool)

(assert (=> b!2776406 (= e!1751167 (and (inv!43563 (left!24418 (right!24748 (c!450499 input!5495)))) tp!878653 (inv!43563 (right!24748 (right!24748 (c!450499 input!5495)))) tp!878654))))

(declare-fun b!2776408 () Bool)

(declare-fun e!1751168 () Bool)

(declare-fun tp!878652 () Bool)

(assert (=> b!2776408 (= e!1751168 tp!878652)))

(declare-fun b!2776407 () Bool)

(assert (=> b!2776407 (= e!1751167 (and (inv!43567 (xs!13091 (right!24748 (c!450499 input!5495)))) e!1751168))))

(assert (=> b!2775289 (= tp!878337 (and (inv!43563 (right!24748 (c!450499 input!5495))) e!1751167))))

(assert (= (and b!2775289 ((_ is Node!9981) (right!24748 (c!450499 input!5495)))) b!2776406))

(assert (= b!2776407 b!2776408))

(assert (= (and b!2775289 ((_ is Leaf!15201) (right!24748 (c!450499 input!5495)))) b!2776407))

(declare-fun m!3204107 () Bool)

(assert (=> b!2776406 m!3204107))

(declare-fun m!3204109 () Bool)

(assert (=> b!2776406 m!3204109))

(declare-fun m!3204111 () Bool)

(assert (=> b!2776407 m!3204111))

(assert (=> b!2775289 m!3202077))

(declare-fun b!2776409 () Bool)

(declare-fun e!1751169 () Bool)

(declare-fun tp!878655 () Bool)

(declare-fun tp!878656 () Bool)

(assert (=> b!2776409 (= e!1751169 (and tp!878655 tp!878656))))

(assert (=> b!2775314 (= tp!878372 e!1751169)))

(assert (= (and b!2775314 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapValue!17377)))))) b!2776409))

(declare-fun b!2776410 () Bool)

(declare-fun e!1751170 () Bool)

(declare-fun tp!878657 () Bool)

(declare-fun tp!878658 () Bool)

(assert (=> b!2776410 (= e!1751170 (and tp!878657 tp!878658))))

(assert (=> b!2775253 (= tp!878292 e!1751170)))

(assert (= (and b!2775253 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 (zeroValue!4072 (v!33682 (underlying!7829 (v!33683 (underlying!7830 (cache!3862 cacheUp!820)))))))))))) b!2776410))

(declare-fun b!2776411 () Bool)

(declare-fun e!1751171 () Bool)

(declare-fun tp!878659 () Bool)

(declare-fun tp!878660 () Bool)

(assert (=> b!2776411 (= e!1751171 (and tp!878659 tp!878660))))

(assert (=> b!2775249 (= tp!878287 e!1751171)))

(assert (= (and b!2775249 ((_ is Cons!32073) (exprs!2821 setElem!23034))) b!2776411))

(declare-fun condSetEmpty!23079 () Bool)

(assert (=> setNonEmpty!23035 (= condSetEmpty!23079 (= setRest!23035 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23079 () Bool)

(assert (=> setNonEmpty!23035 (= tp!878291 setRes!23079)))

(declare-fun setIsEmpty!23079 () Bool)

(assert (=> setIsEmpty!23079 setRes!23079))

(declare-fun tp!878661 () Bool)

(declare-fun e!1751172 () Bool)

(declare-fun setNonEmpty!23079 () Bool)

(declare-fun setElem!23079 () Context!4642)

(assert (=> setNonEmpty!23079 (= setRes!23079 (and tp!878661 (inv!43564 setElem!23079) e!1751172))))

(declare-fun setRest!23079 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23079 (= setRest!23035 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23079 true) setRest!23079))))

(declare-fun b!2776412 () Bool)

(declare-fun tp!878662 () Bool)

(assert (=> b!2776412 (= e!1751172 tp!878662)))

(assert (= (and setNonEmpty!23035 condSetEmpty!23079) setIsEmpty!23079))

(assert (= (and setNonEmpty!23035 (not condSetEmpty!23079)) setNonEmpty!23079))

(assert (= setNonEmpty!23079 b!2776412))

(declare-fun m!3204113 () Bool)

(assert (=> setNonEmpty!23079 m!3204113))

(declare-fun b!2776415 () Bool)

(declare-fun e!1751173 () Bool)

(declare-fun tp!878665 () Bool)

(assert (=> b!2776415 (= e!1751173 tp!878665)))

(declare-fun b!2776416 () Bool)

(declare-fun tp!878663 () Bool)

(declare-fun tp!878667 () Bool)

(assert (=> b!2776416 (= e!1751173 (and tp!878663 tp!878667))))

(assert (=> b!2775250 (= tp!878285 e!1751173)))

(declare-fun b!2776414 () Bool)

(declare-fun tp!878664 () Bool)

(declare-fun tp!878666 () Bool)

(assert (=> b!2776414 (= e!1751173 (and tp!878664 tp!878666))))

(declare-fun b!2776413 () Bool)

(assert (=> b!2776413 (= e!1751173 tp_is_empty!14023)))

(assert (= (and b!2775250 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17378))))) b!2776413))

(assert (= (and b!2775250 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 mapDefault!17378))))) b!2776414))

(assert (= (and b!2775250 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17378))))) b!2776415))

(assert (= (and b!2775250 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 mapDefault!17378))))) b!2776416))

(declare-fun b!2776417 () Bool)

(declare-fun e!1751176 () Bool)

(declare-fun tp!878670 () Bool)

(assert (=> b!2776417 (= e!1751176 tp!878670)))

(declare-fun setIsEmpty!23080 () Bool)

(declare-fun setRes!23080 () Bool)

(assert (=> setIsEmpty!23080 setRes!23080))

(declare-fun e!1751174 () Bool)

(assert (=> b!2775250 (= tp!878289 e!1751174)))

(declare-fun e!1751175 () Bool)

(declare-fun b!2776418 () Bool)

(declare-fun tp!878672 () Bool)

(declare-fun tp!878668 () Bool)

(assert (=> b!2776418 (= e!1751174 (and tp!878668 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 mapDefault!17378))))) e!1751175 tp_is_empty!14023 setRes!23080 tp!878672))))

(declare-fun condSetEmpty!23080 () Bool)

(assert (=> b!2776418 (= condSetEmpty!23080 (= (_2!19070 (h!37495 (t!228303 mapDefault!17378))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun tp!878671 () Bool)

(declare-fun setElem!23080 () Context!4642)

(declare-fun setNonEmpty!23080 () Bool)

(assert (=> setNonEmpty!23080 (= setRes!23080 (and tp!878671 (inv!43564 setElem!23080) e!1751176))))

(declare-fun setRest!23080 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23080 (= (_2!19070 (h!37495 (t!228303 mapDefault!17378))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23080 true) setRest!23080))))

(declare-fun b!2776419 () Bool)

(declare-fun tp!878669 () Bool)

(assert (=> b!2776419 (= e!1751175 tp!878669)))

(assert (= b!2776418 b!2776419))

(assert (= (and b!2776418 condSetEmpty!23080) setIsEmpty!23080))

(assert (= (and b!2776418 (not condSetEmpty!23080)) setNonEmpty!23080))

(assert (= setNonEmpty!23080 b!2776417))

(assert (= (and b!2775250 ((_ is Cons!32075) (t!228303 mapDefault!17378))) b!2776418))

(declare-fun m!3204115 () Bool)

(assert (=> b!2776418 m!3204115))

(declare-fun m!3204117 () Bool)

(assert (=> setNonEmpty!23080 m!3204117))

(declare-fun b!2776420 () Bool)

(declare-fun e!1751177 () Bool)

(declare-fun tp!878673 () Bool)

(declare-fun tp!878674 () Bool)

(assert (=> b!2776420 (= e!1751177 (and tp!878673 tp!878674))))

(assert (=> b!2775238 (= tp!878271 e!1751177)))

(assert (= (and b!2775238 ((_ is Cons!32073) (exprs!2821 setElem!23031))) b!2776420))

(declare-fun condSetEmpty!23081 () Bool)

(assert (=> setNonEmpty!23042 (= condSetEmpty!23081 (= setRest!23041 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23081 () Bool)

(assert (=> setNonEmpty!23042 (= tp!878318 setRes!23081)))

(declare-fun setIsEmpty!23081 () Bool)

(assert (=> setIsEmpty!23081 setRes!23081))

(declare-fun e!1751178 () Bool)

(declare-fun setNonEmpty!23081 () Bool)

(declare-fun tp!878675 () Bool)

(declare-fun setElem!23081 () Context!4642)

(assert (=> setNonEmpty!23081 (= setRes!23081 (and tp!878675 (inv!43564 setElem!23081) e!1751178))))

(declare-fun setRest!23081 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23081 (= setRest!23041 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23081 true) setRest!23081))))

(declare-fun b!2776421 () Bool)

(declare-fun tp!878676 () Bool)

(assert (=> b!2776421 (= e!1751178 tp!878676)))

(assert (= (and setNonEmpty!23042 condSetEmpty!23081) setIsEmpty!23081))

(assert (= (and setNonEmpty!23042 (not condSetEmpty!23081)) setNonEmpty!23081))

(assert (= setNonEmpty!23081 b!2776421))

(declare-fun m!3204119 () Bool)

(assert (=> setNonEmpty!23081 m!3204119))

(declare-fun b!2776426 () Bool)

(declare-fun e!1751181 () Bool)

(declare-fun tp!878679 () Bool)

(assert (=> b!2776426 (= e!1751181 (and tp_is_empty!14023 tp!878679))))

(assert (=> b!2775291 (= tp!878335 e!1751181)))

(assert (= (and b!2775291 ((_ is Cons!32072) (innerList!10041 (xs!13091 (c!450499 input!5495))))) b!2776426))

(declare-fun b!2776429 () Bool)

(declare-fun e!1751182 () Bool)

(declare-fun tp!878682 () Bool)

(assert (=> b!2776429 (= e!1751182 tp!878682)))

(declare-fun b!2776430 () Bool)

(declare-fun tp!878680 () Bool)

(declare-fun tp!878684 () Bool)

(assert (=> b!2776430 (= e!1751182 (and tp!878680 tp!878684))))

(assert (=> b!2775306 (= tp!878367 e!1751182)))

(declare-fun b!2776428 () Bool)

(declare-fun tp!878681 () Bool)

(declare-fun tp!878683 () Bool)

(assert (=> b!2776428 (= e!1751182 (and tp!878681 tp!878683))))

(declare-fun b!2776427 () Bool)

(assert (=> b!2776427 (= e!1751182 tp_is_empty!14023)))

(assert (= (and b!2775306 ((_ is ElementMatch!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17384))))) b!2776427))

(assert (= (and b!2775306 ((_ is Concat!13191) (_1!19069 (_1!19070 (h!37495 mapValue!17384))))) b!2776428))

(assert (= (and b!2775306 ((_ is Star!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17384))))) b!2776429))

(assert (= (and b!2775306 ((_ is Union!8103) (_1!19069 (_1!19070 (h!37495 mapValue!17384))))) b!2776430))

(declare-fun b!2776431 () Bool)

(declare-fun e!1751185 () Bool)

(declare-fun tp!878687 () Bool)

(assert (=> b!2776431 (= e!1751185 tp!878687)))

(declare-fun setIsEmpty!23082 () Bool)

(declare-fun setRes!23082 () Bool)

(assert (=> setIsEmpty!23082 setRes!23082))

(declare-fun e!1751183 () Bool)

(assert (=> b!2775306 (= tp!878365 e!1751183)))

(declare-fun b!2776432 () Bool)

(declare-fun tp!878689 () Bool)

(declare-fun tp!878685 () Bool)

(declare-fun e!1751184 () Bool)

(assert (=> b!2776432 (= e!1751183 (and tp!878685 (inv!43564 (_2!19069 (_1!19070 (h!37495 (t!228303 mapValue!17384))))) e!1751184 tp_is_empty!14023 setRes!23082 tp!878689))))

(declare-fun condSetEmpty!23082 () Bool)

(assert (=> b!2776432 (= condSetEmpty!23082 (= (_2!19070 (h!37495 (t!228303 mapValue!17384))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23082 () Bool)

(declare-fun setElem!23082 () Context!4642)

(declare-fun tp!878688 () Bool)

(assert (=> setNonEmpty!23082 (= setRes!23082 (and tp!878688 (inv!43564 setElem!23082) e!1751185))))

(declare-fun setRest!23082 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23082 (= (_2!19070 (h!37495 (t!228303 mapValue!17384))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23082 true) setRest!23082))))

(declare-fun b!2776433 () Bool)

(declare-fun tp!878686 () Bool)

(assert (=> b!2776433 (= e!1751184 tp!878686)))

(assert (= b!2776432 b!2776433))

(assert (= (and b!2776432 condSetEmpty!23082) setIsEmpty!23082))

(assert (= (and b!2776432 (not condSetEmpty!23082)) setNonEmpty!23082))

(assert (= setNonEmpty!23082 b!2776431))

(assert (= (and b!2775306 ((_ is Cons!32075) (t!228303 mapValue!17384))) b!2776432))

(declare-fun m!3204121 () Bool)

(assert (=> b!2776432 m!3204121))

(declare-fun m!3204123 () Bool)

(assert (=> setNonEmpty!23082 m!3204123))

(declare-fun b!2776434 () Bool)

(declare-fun e!1751186 () Bool)

(declare-fun tp!878690 () Bool)

(declare-fun tp!878691 () Bool)

(assert (=> b!2776434 (= e!1751186 (and tp!878690 tp!878691))))

(assert (=> b!2775251 (= tp!878286 e!1751186)))

(assert (= (and b!2775251 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapDefault!17378)))))) b!2776434))

(declare-fun e!1751189 () Bool)

(assert (=> b!2775240 (= tp!878274 e!1751189)))

(declare-fun b!2776435 () Bool)

(declare-fun e!1751187 () Bool)

(declare-fun tp!878692 () Bool)

(assert (=> b!2776435 (= e!1751187 tp!878692)))

(declare-fun b!2776436 () Bool)

(declare-fun e!1751188 () Bool)

(declare-fun tp!878694 () Bool)

(assert (=> b!2776436 (= e!1751188 tp!878694)))

(declare-fun setRes!23083 () Bool)

(declare-fun tp!878695 () Bool)

(declare-fun b!2776437 () Bool)

(assert (=> b!2776437 (= e!1751189 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 mapDefault!17377))))) e!1751188 tp_is_empty!14023 setRes!23083 tp!878695))))

(declare-fun condSetEmpty!23083 () Bool)

(assert (=> b!2776437 (= condSetEmpty!23083 (= (_2!19068 (h!37494 (t!228302 mapDefault!17377))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setNonEmpty!23083 () Bool)

(declare-fun tp!878693 () Bool)

(declare-fun setElem!23083 () Context!4642)

(assert (=> setNonEmpty!23083 (= setRes!23083 (and tp!878693 (inv!43564 setElem!23083) e!1751187))))

(declare-fun setRest!23083 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23083 (= (_2!19068 (h!37494 (t!228302 mapDefault!17377))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23083 true) setRest!23083))))

(declare-fun setIsEmpty!23083 () Bool)

(assert (=> setIsEmpty!23083 setRes!23083))

(assert (= b!2776437 b!2776436))

(assert (= (and b!2776437 condSetEmpty!23083) setIsEmpty!23083))

(assert (= (and b!2776437 (not condSetEmpty!23083)) setNonEmpty!23083))

(assert (= setNonEmpty!23083 b!2776435))

(assert (= (and b!2775240 ((_ is Cons!32074) (t!228302 mapDefault!17377))) b!2776437))

(declare-fun m!3204125 () Bool)

(assert (=> b!2776437 m!3204125))

(declare-fun m!3204127 () Bool)

(assert (=> setNonEmpty!23083 m!3204127))

(declare-fun e!1751192 () Bool)

(assert (=> b!2775277 (= tp!878323 e!1751192)))

(declare-fun b!2776438 () Bool)

(declare-fun e!1751190 () Bool)

(declare-fun tp!878696 () Bool)

(assert (=> b!2776438 (= e!1751190 tp!878696)))

(declare-fun b!2776439 () Bool)

(declare-fun e!1751191 () Bool)

(declare-fun tp!878698 () Bool)

(assert (=> b!2776439 (= e!1751191 tp!878698)))

(declare-fun b!2776440 () Bool)

(declare-fun tp!878699 () Bool)

(declare-fun setRes!23084 () Bool)

(assert (=> b!2776440 (= e!1751192 (and (inv!43564 (_1!19067 (_1!19068 (h!37494 (t!228302 mapDefault!17381))))) e!1751191 tp_is_empty!14023 setRes!23084 tp!878699))))

(declare-fun condSetEmpty!23084 () Bool)

(assert (=> b!2776440 (= condSetEmpty!23084 (= (_2!19068 (h!37494 (t!228302 mapDefault!17381))) ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setElem!23084 () Context!4642)

(declare-fun setNonEmpty!23084 () Bool)

(declare-fun tp!878697 () Bool)

(assert (=> setNonEmpty!23084 (= setRes!23084 (and tp!878697 (inv!43564 setElem!23084) e!1751190))))

(declare-fun setRest!23084 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23084 (= (_2!19068 (h!37494 (t!228302 mapDefault!17381))) ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23084 true) setRest!23084))))

(declare-fun setIsEmpty!23084 () Bool)

(assert (=> setIsEmpty!23084 setRes!23084))

(assert (= b!2776440 b!2776439))

(assert (= (and b!2776440 condSetEmpty!23084) setIsEmpty!23084))

(assert (= (and b!2776440 (not condSetEmpty!23084)) setNonEmpty!23084))

(assert (= setNonEmpty!23084 b!2776438))

(assert (= (and b!2775277 ((_ is Cons!32074) (t!228302 mapDefault!17381))) b!2776440))

(declare-fun m!3204129 () Bool)

(assert (=> b!2776440 m!3204129))

(declare-fun m!3204131 () Bool)

(assert (=> setNonEmpty!23084 m!3204131))

(declare-fun b!2776441 () Bool)

(declare-fun e!1751193 () Bool)

(declare-fun tp!878700 () Bool)

(declare-fun tp!878701 () Bool)

(assert (=> b!2776441 (= e!1751193 (and tp!878700 tp!878701))))

(assert (=> b!2775278 (= tp!878325 e!1751193)))

(assert (= (and b!2775278 ((_ is Cons!32073) (exprs!2821 setElem!23043))) b!2776441))

(declare-fun b!2776442 () Bool)

(declare-fun e!1751194 () Bool)

(declare-fun tp!878702 () Bool)

(declare-fun tp!878703 () Bool)

(assert (=> b!2776442 (= e!1751194 (and tp!878702 tp!878703))))

(assert (=> b!2775279 (= tp!878327 e!1751194)))

(assert (= (and b!2775279 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapValue!17378)))))) b!2776442))

(declare-fun condSetEmpty!23085 () Bool)

(assert (=> setNonEmpty!23043 (= condSetEmpty!23085 (= setRest!23043 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23085 () Bool)

(assert (=> setNonEmpty!23043 (= tp!878326 setRes!23085)))

(declare-fun setIsEmpty!23085 () Bool)

(assert (=> setIsEmpty!23085 setRes!23085))

(declare-fun setNonEmpty!23085 () Bool)

(declare-fun tp!878704 () Bool)

(declare-fun setElem!23085 () Context!4642)

(declare-fun e!1751195 () Bool)

(assert (=> setNonEmpty!23085 (= setRes!23085 (and tp!878704 (inv!43564 setElem!23085) e!1751195))))

(declare-fun setRest!23085 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23085 (= setRest!23043 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23085 true) setRest!23085))))

(declare-fun b!2776443 () Bool)

(declare-fun tp!878705 () Bool)

(assert (=> b!2776443 (= e!1751195 tp!878705)))

(assert (= (and setNonEmpty!23043 condSetEmpty!23085) setIsEmpty!23085))

(assert (= (and setNonEmpty!23043 (not condSetEmpty!23085)) setNonEmpty!23085))

(assert (= setNonEmpty!23085 b!2776443))

(declare-fun m!3204133 () Bool)

(assert (=> setNonEmpty!23085 m!3204133))

(declare-fun condSetEmpty!23086 () Bool)

(assert (=> setNonEmpty!23049 (= condSetEmpty!23086 (= setRest!23049 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23086 () Bool)

(assert (=> setNonEmpty!23049 (= tp!878368 setRes!23086)))

(declare-fun setIsEmpty!23086 () Bool)

(assert (=> setIsEmpty!23086 setRes!23086))

(declare-fun setNonEmpty!23086 () Bool)

(declare-fun setElem!23086 () Context!4642)

(declare-fun e!1751196 () Bool)

(declare-fun tp!878706 () Bool)

(assert (=> setNonEmpty!23086 (= setRes!23086 (and tp!878706 (inv!43564 setElem!23086) e!1751196))))

(declare-fun setRest!23086 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23086 (= setRest!23049 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23086 true) setRest!23086))))

(declare-fun b!2776444 () Bool)

(declare-fun tp!878707 () Bool)

(assert (=> b!2776444 (= e!1751196 tp!878707)))

(assert (= (and setNonEmpty!23049 condSetEmpty!23086) setIsEmpty!23086))

(assert (= (and setNonEmpty!23049 (not condSetEmpty!23086)) setNonEmpty!23086))

(assert (= setNonEmpty!23086 b!2776444))

(declare-fun m!3204135 () Bool)

(assert (=> setNonEmpty!23086 m!3204135))

(declare-fun condSetEmpty!23087 () Bool)

(assert (=> setNonEmpty!23055 (= condSetEmpty!23087 (= setRest!23055 ((as const (Array Context!4642 Bool)) false)))))

(declare-fun setRes!23087 () Bool)

(assert (=> setNonEmpty!23055 (= tp!878396 setRes!23087)))

(declare-fun setIsEmpty!23087 () Bool)

(assert (=> setIsEmpty!23087 setRes!23087))

(declare-fun tp!878708 () Bool)

(declare-fun setNonEmpty!23087 () Bool)

(declare-fun e!1751197 () Bool)

(declare-fun setElem!23087 () Context!4642)

(assert (=> setNonEmpty!23087 (= setRes!23087 (and tp!878708 (inv!43564 setElem!23087) e!1751197))))

(declare-fun setRest!23087 () (InoxSet Context!4642))

(assert (=> setNonEmpty!23087 (= setRest!23055 ((_ map or) (store ((as const (Array Context!4642 Bool)) false) setElem!23087 true) setRest!23087))))

(declare-fun b!2776445 () Bool)

(declare-fun tp!878709 () Bool)

(assert (=> b!2776445 (= e!1751197 tp!878709)))

(assert (= (and setNonEmpty!23055 condSetEmpty!23087) setIsEmpty!23087))

(assert (= (and setNonEmpty!23055 (not condSetEmpty!23087)) setNonEmpty!23087))

(assert (= setNonEmpty!23087 b!2776445))

(declare-fun m!3204137 () Bool)

(assert (=> setNonEmpty!23087 m!3204137))

(declare-fun b!2776446 () Bool)

(declare-fun e!1751198 () Bool)

(declare-fun tp!878710 () Bool)

(declare-fun tp!878711 () Bool)

(assert (=> b!2776446 (= e!1751198 (and tp!878710 tp!878711))))

(assert (=> b!2775309 (= tp!878366 e!1751198)))

(assert (= (and b!2775309 ((_ is Cons!32073) (exprs!2821 (_2!19069 (_1!19070 (h!37495 mapValue!17384)))))) b!2776446))

(declare-fun b!2776447 () Bool)

(declare-fun e!1751199 () Bool)

(declare-fun tp!878712 () Bool)

(declare-fun tp!878713 () Bool)

(assert (=> b!2776447 (= e!1751199 (and tp!878712 tp!878713))))

(assert (=> b!2775311 (= tp!878370 e!1751199)))

(assert (= (and b!2775311 ((_ is Cons!32073) (exprs!2821 setElem!23049))) b!2776447))

(declare-fun b!2776448 () Bool)

(declare-fun e!1751200 () Bool)

(declare-fun tp!878714 () Bool)

(declare-fun tp!878715 () Bool)

(assert (=> b!2776448 (= e!1751200 (and tp!878714 tp!878715))))

(assert (=> b!2775272 (= tp!878319 e!1751200)))

(assert (= (and b!2775272 ((_ is Cons!32073) (exprs!2821 (_1!19067 (_1!19068 (h!37494 mapValue!17381)))))) b!2776448))

(declare-fun b!2776449 () Bool)

(declare-fun e!1751201 () Bool)

(declare-fun tp!878716 () Bool)

(declare-fun tp!878717 () Bool)

(assert (=> b!2776449 (= e!1751201 (and tp!878716 tp!878717))))

(assert (=> b!2775315 (= tp!878378 e!1751201)))

(assert (= (and b!2775315 ((_ is Cons!32073) (exprs!2821 setElem!23051))) b!2776449))

(declare-fun b!2776450 () Bool)

(declare-fun e!1751202 () Bool)

(declare-fun tp!878718 () Bool)

(declare-fun tp!878719 () Bool)

(assert (=> b!2776450 (= e!1751202 (and tp!878718 tp!878719))))

(assert (=> b!2775318 (= tp!878383 e!1751202)))

(assert (= (and b!2775318 ((_ is Cons!32073) (exprs!2821 setElem!23052))) b!2776450))

(declare-fun b!2776451 () Bool)

(declare-fun e!1751203 () Bool)

(declare-fun tp!878720 () Bool)

(declare-fun tp!878721 () Bool)

(assert (=> b!2776451 (= e!1751203 (and tp!878720 tp!878721))))

(assert (=> b!2775312 (= tp!878373 e!1751203)))

(assert (= (and b!2775312 ((_ is Cons!32073) (exprs!2821 setElem!23050))) b!2776451))

(declare-fun b_lambda!83437 () Bool)

(assert (= b_lambda!83435 (or d!806578 b_lambda!83437)))

(declare-fun bs!505955 () Bool)

(declare-fun d!807246 () Bool)

(assert (= bs!505955 (and d!807246 d!806578)))

(declare-fun validRegex!3337 (Regex!8103) Bool)

(assert (=> bs!505955 (= (dynLambda!13608 lambda!101817 (h!37493 (exprs!2821 setElem!23028))) (validRegex!3337 (h!37493 (exprs!2821 setElem!23028))))))

(declare-fun m!3204139 () Bool)

(assert (=> bs!505955 m!3204139))

(assert (=> b!2775793 d!807246))

(check-sat (not b!2776242) (not d!806640) (not d!806994) (not d!806780) (not d!806878) (not b!2775620) (not bm!181601) (not b_lambda!83437) (not b!2775403) (not b!2776142) (not b_next!79109) (not b!2775453) (not bm!181599) (not b!2775671) (not b!2776218) (not b!2776409) (not b!2775815) (not b!2776437) (not b!2775794) (not b!2775617) (not d!807216) (not d!807078) (not b!2776445) (not bm!181648) (not bm!181606) (not bm!181634) (not d!806744) (not b!2775809) (not bm!181582) (not b!2775402) (not bm!181594) (not b!2775994) (not b_next!79123) (not d!807112) (not d!807092) (not b!2775458) (not b!2775441) (not b!2775828) (not bm!181645) (not b!2776205) (not b!2775607) b_and!203165 (not b!2775945) (not b!2775835) (not d!806872) (not b!2775897) (not setNonEmpty!23074) (not d!806962) (not b!2776074) (not d!807192) (not b!2776096) (not b!2775440) (not b!2775903) (not d!806626) (not d!807236) (not b!2775610) (not bm!181608) (not b!2775832) (not bm!181650) (not d!806966) (not b!2776379) (not bm!181585) (not d!807146) (not b!2775413) (not b!2775432) (not d!806882) (not b!2776047) (not b!2776447) (not d!806888) (not b!2775902) (not b!2776201) (not b!2776076) (not b!2776347) (not b!2775533) (not b!2775750) (not b!2775788) (not b!2775986) (not bm!181659) (not d!807152) (not b!2776352) (not b!2775449) (not b!2775486) (not b!2775735) (not d!807114) (not b!2775547) (not b!2775452) (not b!2775977) (not b!2775938) (not d!806948) (not b!2775589) (not d!806906) b_and!203153 (not bm!181642) (not d!806678) (not bm!181640) (not b!2776054) (not d!807218) (not d!806720) (not bm!181597) (not d!807242) (not b!2776289) (not b!2776104) (not d!806662) (not d!806982) (not b!2775421) (not b!2775831) (not b!2775508) (not d!806610) (not d!806884) (not d!806812) (not d!807122) (not b!2776356) b_and!203149 (not b!2776154) (not b!2776119) b_and!203151 b_and!203145 (not b!2776005) (not b!2776220) (not bm!181633) (not b!2776058) (not b!2776351) (not b_next!79117) (not b!2776363) (not d!807074) (not d!806792) b_and!203133 (not d!806832) (not b!2775811) (not b!2775865) (not b!2776150) (not b!2775599) (not d!807184) (not setNonEmpty!23076) (not b!2775756) (not b!2775700) (not b!2775958) (not d!806992) (not d!807140) (not b!2775939) (not b!2775608) (not d!807086) (not bm!181666) (not b_next!79127) (not bm!181674) (not b!2776006) (not b!2775606) (not setNonEmpty!23058) (not b!2776386) (not b!2775450) (not b!2775798) (not b!2775912) b_and!203161 (not b!2776389) (not b!2775861) (not bm!181626) (not d!806710) (not setNonEmpty!23059) (not b!2776294) (not b!2775463) (not b!2776192) (not b!2775456) (not d!806716) (not b!2776194) (not b!2776035) (not b!2775736) (not d!806950) (not d!807064) (not d!807032) (not b!2776439) (not bm!181636) (not bm!181638) (not d!807202) (not b!2776287) (not b!2775466) (not d!807158) (not d!807206) (not b!2775810) (not b!2776216) (not b!2776167) (not b!2775814) (not d!807016) tp_is_empty!14023 (not b!2776240) (not b!2775876) (not b!2775565) (not b!2775428) (not d!807234) (not b!2776122) (not b!2775974) (not b!2776415) (not b!2776010) (not d!806936) (not b!2775882) (not b!2775808) (not d!807050) (not b!2775840) (not b!2776346) (not b!2776407) (not b!2776043) (not b!2775760) (not d!807030) (not b!2775598) (not b!2776089) (not bm!181649) (not b!2775615) (not b!2775846) (not b!2776097) (not b!2776092) (not b!2776135) (not b!2776012) (not b!2775734) (not b!2776431) (not d!806722) (not setNonEmpty!23061) (not setNonEmpty!23081) (not b!2775582) (not b!2776072) (not b!2776155) (not bm!181671) (not d!807222) (not b!2775950) (not b!2776023) (not b_next!79119) (not b!2775838) (not b!2775475) (not b!2776210) b_and!203135 (not b!2775596) (not bm!181593) (not bm!181643) (not b!2776265) (not b!2776206) (not b!2775436) (not b!2775752) (not b!2776068) (not b!2776232) (not d!806970) (not d!806980) (not bm!181677) (not b!2776108) (not b!2775844) (not b!2775848) (not b!2775953) (not b!2775416) (not bm!181669) (not bm!181590) (not b!2775805) (not bm!181651) (not b!2775618) (not b!2776405) (not b!2776127) (not b!2775884) (not d!807244) (not b!2776395) (not b!2775476) (not b!2776343) (not d!807116) (not bm!181589) (not b!2775827) (not b!2775439) (not bm!181628) (not b!2775519) (not b!2776354) (not d!807038) b_and!203143 b_and!203147 (not b!2775795) (not d!807208) (not b!2776101) (not d!807118) (not b!2775807) (not b!2776403) (not b!2775834) (not b!2775858) (not b!2776015) (not b!2776204) (not mapNonEmpty!17396) (not bm!181604) (not b!2776116) (not b!2776258) (not b!2776440) (not bm!181673) (not b!2775782) b_and!203139 (not d!807020) (not b!2775978) (not b!2776105) (not d!806770) (not b!2776393) (not b!2775518) (not setNonEmpty!23063) (not d!806934) (not b!2776009) (not b!2776404) (not b_next!79099) (not b!2776153) (not d!807044) (not mapNonEmpty!17395) (not b!2776435) (not bm!181581) (not b_next!79101) (not b!2776421) (not d!806648) (not b!2776197) (not b_next!79107) (not d!807186) (not b!2775492) (not b!2775852) (not d!807176) (not d!807240) (not b!2775927) (not b!2775686) (not d!806974) (not b!2776041) (not d!806788) (not b!2775842) (not b!2775860) (not setNonEmpty!23080) (not setNonEmpty!23083) (not d!806954) (not b!2775880) (not bm!181588) (not d!807096) (not b!2775949) b_and!203163 (not b!2775478) (not d!807128) (not d!806908) (not d!806910) (not bm!181605) (not b!2776291) (not bm!181583) (not b!2775614) (not bm!181641) (not b!2775398) (not b!2776429) (not b!2775774) (not bm!181580) (not d!807108) (not b!2775529) (not b_next!79103) (not bm!181595) (not b!2776170) (not b!2776341) (not d!806660) (not d!806830) (not b!2776132) (not d!807054) (not mapNonEmpty!17401) (not b!2776011) (not setNonEmpty!23070) (not b!2776311) (not b!2776361) (not b!2775514) (not b!2776310) (not b!2776408) (not b!2775584) (not d!806944) (not d!807174) (not b!2776292) (not d!807022) (not b!2775875) (not bm!181586) (not d!806952) (not b!2775896) (not b!2775570) (not d!807024) (not b!2776088) (not b!2775754) (not b!2775961) (not b!2776112) (not b!2776430) (not b!2776146) (not d!806804) (not bm!181637) (not b_next!79111) b_and!203137 (not b!2776451) (not d!807098) (not b!2776448) (not b!2775602) (not b!2775408) (not d!806972) (not b!2776062) (not b!2776093) (not d!806768) (not setNonEmpty!23073) (not d!806612) (not d!806942) (not d!806730) (not b!2775548) (not b!2775892) (not b!2775622) (not b!2775802) (not b!2776312) (not d!806798) (not bs!505955) (not b!2776295) (not d!806622) (not b!2776141) (not b!2776115) (not bm!181635) (not b!2776014) (not b!2776372) (not b!2776118) (not d!806790) (not b!2776257) (not b!2776348) (not bm!181579) (not d!806686) (not b!2775812) (not d!806824) (not d!807026) (not d!806892) (not b_next!79095) (not bm!181587) (not b!2776221) (not b!2775564) (not d!807008) (not d!806732) (not bm!181623) (not b_next!79131) (not b!2775401) (not d!807002) (not d!807238) (not b!2776376) (not d!806914) (not b!2776349) (not bm!181670) (not d!806984) (not d!807136) (not d!807060) (not bm!181668) (not b!2776340) (not bm!181584) (not bm!181629) (not b!2775354) (not b!2776420) (not d!806636) (not setNonEmpty!23060) (not b!2776185) (not b!2775968) (not b!2776176) (not d!806652) (not mapNonEmpty!17390) (not d!807132) (not b!2776100) (not b!2775889) (not b!2775893) (not b!2775928) (not b!2776426) (not b!2776178) (not b_next!79115) (not b!2776126) (not b!2776392) (not d!806632) (not b!2775773) (not bm!181657) (not d!807166) (not d!807160) (not setNonEmpty!23084) (not b!2775980) (not b!2775494) (not b!2775537) (not b!2775699) (not bm!181663) (not bm!181665) (not b!2775692) (not mapNonEmpty!17398) (not bm!181681) (not bm!181609) (not d!806734) (not bm!181591) (not bm!181679) (not b!2775433) (not bm!181654) (not b!2776069) (not b!2776111) (not d!807198) (not setNonEmpty!23082) (not d!807214) (not b!2775498) (not d!806876) (not d!806762) (not d!806784) (not b_next!79097) (not bm!181667) (not b!2776432) (not b!2776436) (not b!2776355) (not d!806814) (not b!2776387) (not setNonEmpty!23086) (not setNonEmpty!23079) (not b!2776171) (not b!2775470) (not setNonEmpty!23072) (not bm!181652) (not b!2775578) (not b!2775690) (not d!806828) (not d!806614) (not b!2775544) (not b!2775906) (not b!2776444) (not b!2775954) (not b!2775561) (not b!2776286) (not b!2775604) (not b!2776168) (not bm!181632) (not bm!181647) (not b!2776410) (not b!2775515) (not b!2776113) (not b!2776357) (not b!2775935) (not setNonEmpty!23085) (not b!2776173) (not b!2775989) (not b!2776412) (not bm!181631) (not d!807168) (not b!2776145) (not b!2776434) (not b!2776263) (not d!806638) (not b!2776217) (not b!2775800) (not b!2776048) (not b!2776371) (not b!2775434) (not b!2775488) (not b!2775510) b_and!203131 (not d!806752) (not d!807014) (not d!806772) (not b_next!79105) (not b!2776175) (not d!807082) (not bm!181685) (not mapNonEmpty!17402) (not bm!181664) (not b!2776230) (not d!807220) b_and!203157 (not bm!181682) (not b!2775919) (not d!806848) (not bm!181592) (not b!2775922) (not mapNonEmpty!17400) (not b!2776298) (not d!807212) (not bm!181678) (not b!2775522) (not bm!181630) (not b!2776345) (not d!806858) (not b!2775738) (not b!2775587) (not d!806846) (not b!2775572) (not d!806664) (not bm!181596) (not b!2776120) (not b!2776362) (not b!2775878) (not bm!181622) (not b!2775505) (not b!2776344) (not b!2775289) (not bm!181646) (not b!2776172) (not b!2775504) (not b!2776400) (not d!806718) (not bm!181676) (not b!2775540) (not b!2775562) (not b!2776350) (not b!2775985) (not b_next!79129) (not d!807080) (not d!807010) (not b!2776290) (not d!806754) (not b!2776428) (not b!2776378) (not b!2776037) (not d!807094) (not b!2775820) (not b!2775862) (not d!807076) (not b!2775676) b_and!203159 (not b!2776151) (not bm!181600) (not b!2775409) (not b!2776031) (not b!2776049) (not b!2775883) (not d!806866) (not b!2776399) (not b_next!79121) (not mapNonEmpty!17399) (not b!2775836) (not b!2775696) (not b!2775745) (not b!2776364) (not b!2776446) (not b!2775786) (not b!2776001) (not b_next!79113) (not bm!181655) (not b!2775395) (not b!2775479) (not bm!181680) (not d!807100) (not b!2775874) (not d!807088) (not b!2775867) (not d!806694) b_and!203129 (not setNonEmpty!23087) (not b!2776418) (not d!807084) (not b!2776377) (not b!2776107) (not b!2775854) (not b!2776181) (not bm!181598) (not b!2776359) (not b!2776417) (not d!806890) (not b!2776200) (not b!2775957) (not b!2776373) (not b!2776226) (not b!2776139) (not b!2775353) (not b!2776051) (not b!2776396) (not b!2775438) (not b!2776174) (not b!2776213) (not d!807006) (not b!2775500) (not setNonEmpty!23071) (not b!2776293) (not setNonEmpty!23062) (not b!2775338) (not b!2775336) (not b!2776296) (not setNonEmpty!23065) (not bm!181660) (not b!2776391) (not b_next!79125) (not bm!181658) (not b!2776313) (not b!2776288) (not b!2776398) (not d!807178) (not b!2776297) (not d!807148) (not b!2775885) (not b!2775997) (not bm!181656) (not b!2776380) (not b!2775803) (not b!2776449) b_and!203127 (not b!2776411) (not d!806932) (not d!806764) (not b!2775758) (not b!2775471) (not b!2775612) (not b!2776163) (not b!2775390) (not b!2775778) (not d!807036) (not b!2776264) (not b!2775993) (not b!2775563) (not b!2775490) (not b!2775512) (not b!2775905) (not b!2775462) (not bm!181607) (not d!806806) (not b!2775741) (not b!2775698) (not d!807056) (not b!2776438) (not setNonEmpty!23066) (not b!2775881) (not b!2775888) (not bm!181661) (not d!807110) (not d!806844) (not mapNonEmpty!17389) (not b!2776414) (not b!2775856) (not b!2776385) (not d!807144) (not bm!181624) (not d!806618) (not b!2775926) (not d!806714) (not b!2776342) (not b!2775976) (not b!2776067) (not b!2776094) (not bm!181603) (not setNonEmpty!23069) (not b!2775679) (not b!2776394) (not b!2776225) (not b!2776401) (not b!2775972) (not d!806868) (not b!2776044) (not d!806988) (not b!2776083) (not b!2775503) (not b!2775511) (not b!2776382) (not b!2776442) (not setNonEmpty!23075) (not b!2775460) (not d!806620) (not d!806650) (not b!2775979) (not b!2776024) (not d!807126) (not b!2775509) (not b!2776384) (not d!806956) (not b!2776402) (not d!806998) (not d!807040) (not d!807102) (not bm!181639) (not b!2776073) (not b!2775467) (not d!806886) (not b!2775339) (not d!807156) (not d!807230) (not b_next!79093) (not b!2775621) (not b!2775678) (not b!2776416) (not b!2775780) (not b!2775400) (not b!2775965) (not d!806996) (not b!2776123) (not bm!181625) (not d!806634) (not b!2775580) (not b!2776397) (not b!2775524) (not setNonEmpty!23077) (not d!806646) b_and!203141 (not b!2775930) (not d!806874) (not b!2775909) (not b!2775784) (not b!2775823) (not b!2776375) (not b!2775886) (not b!2775948) (not b!2776013) (not b!2776360) (not d!807138) (not b!2776002) (not b!2775998) (not b!2775496) (not b!2776070) (not d!807090) (not b!2776406) (not b!2775955) (not setNonEmpty!23068) (not d!806666) (not setNonEmpty!23064) (not d!806802) (not b!2775759) (not d!807224) (not bm!181653) (not d!806860) (not b!2775983) (not b!2776016) (not b!2776063) (not b!2776433) (not bm!181675) (not b!2775797) (not d!807142) (not b!2776259) (not mapNonEmpty!17397) (not d!807190) (not d!807028) (not d!807048) (not d!806960) (not b!2776443) (not b!2776045) (not b!2775619) (not d!807194) (not b!2775568) (not b!2775908) (not b!2776196) b_and!203155 (not d!806668) (not b!2776383) (not b!2776388) (not b!2775850) (not setNonEmpty!23078) (not b!2775335) (not b!2776353) (not bm!181644) (not b!2775425) (not bm!181602) (not b!2776079) (not b!2775934) (not b!2775990) (not b!2775915) (not b!2776239) (not setNonEmpty!23067) (not bm!181672) (not b!2776241) (not b!2775566) (not b!2776021) (not b!2776450) (not b!2776223) (not d!806684) (not b!2775900) (not b!2775407) (not d!806692) (not b!2776441) (not b!2775932) (not b!2776188) (not b!2775999) (not b!2776419))
(check-sat (not b_next!79109) b_and!203153 b_and!203139 (not b_next!79115) (not b_next!79097) b_and!203157 (not b_next!79129) b_and!203129 (not b_next!79125) b_and!203127 (not b_next!79093) b_and!203141 b_and!203155 (not b_next!79123) b_and!203165 (not b_next!79117) b_and!203149 b_and!203151 b_and!203145 b_and!203133 (not b_next!79127) b_and!203161 (not b_next!79119) b_and!203135 b_and!203143 b_and!203147 (not b_next!79107) (not b_next!79099) (not b_next!79101) b_and!203163 (not b_next!79103) (not b_next!79111) b_and!203137 (not b_next!79131) (not b_next!79095) (not b_next!79105) b_and!203131 b_and!203159 (not b_next!79113) (not b_next!79121))
