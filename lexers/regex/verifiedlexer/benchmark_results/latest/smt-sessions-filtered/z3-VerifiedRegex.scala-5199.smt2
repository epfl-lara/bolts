; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267334 () Bool)

(assert start!267334)

(declare-fun b!2759319 () Bool)

(declare-fun b_free!78005 () Bool)

(declare-fun b_next!78709 () Bool)

(assert (=> b!2759319 (= b_free!78005 (not b_next!78709))))

(declare-fun tp!872070 () Bool)

(declare-fun b_and!202743 () Bool)

(assert (=> b!2759319 (= tp!872070 b_and!202743)))

(declare-fun b!2759335 () Bool)

(declare-fun b_free!78007 () Bool)

(declare-fun b_next!78711 () Bool)

(assert (=> b!2759335 (= b_free!78007 (not b_next!78711))))

(declare-fun tp!872078 () Bool)

(declare-fun b_and!202745 () Bool)

(assert (=> b!2759335 (= tp!872078 b_and!202745)))

(declare-fun b!2759324 () Bool)

(declare-fun b_free!78009 () Bool)

(declare-fun b_next!78713 () Bool)

(assert (=> b!2759324 (= b_free!78009 (not b_next!78713))))

(declare-fun tp!872072 () Bool)

(declare-fun b_and!202747 () Bool)

(assert (=> b!2759324 (= tp!872072 b_and!202747)))

(declare-fun b!2759341 () Bool)

(declare-fun b_free!78011 () Bool)

(declare-fun b_next!78715 () Bool)

(assert (=> b!2759341 (= b_free!78011 (not b_next!78715))))

(declare-fun tp!872077 () Bool)

(declare-fun b_and!202749 () Bool)

(assert (=> b!2759341 (= tp!872077 b_and!202749)))

(declare-fun b!2759315 () Bool)

(declare-fun res!1155667 () Bool)

(declare-fun e!1739793 () Bool)

(assert (=> b!2759315 (=> (not res!1155667) (not e!1739793))))

(declare-datatypes ((C!16284 0))(
  ( (C!16285 (val!10076 Int)) )
))
(declare-datatypes ((Regex!8063 0))(
  ( (ElementMatch!8063 (c!447029 C!16284)) (Concat!13151 (regOne!16638 Regex!8063) (regTwo!16638 Regex!8063)) (EmptyExpr!8063) (Star!8063 (reg!8392 Regex!8063)) (EmptyLang!8063) (Union!8063 (regOne!16639 Regex!8063) (regTwo!16639 Regex!8063)) )
))
(declare-datatypes ((List!32006 0))(
  ( (Nil!31906) (Cons!31906 (h!37326 Regex!8063) (t!228118 List!32006)) )
))
(declare-datatypes ((Context!4562 0))(
  ( (Context!4563 (exprs!2781 List!32006)) )
))
(declare-datatypes ((array!13291 0))(
  ( (array!13292 (arr!5930 (Array (_ BitVec 32) (_ BitVec 64))) (size!24672 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4696 0))(
  ( (tuple3!4697 (_1!18794 Regex!8063) (_2!18794 Context!4562) (_3!2818 C!16284)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31952 0))(
  ( (tuple2!31953 (_1!18795 tuple3!4696) (_2!18795 (InoxSet Context!4562))) )
))
(declare-datatypes ((List!32007 0))(
  ( (Nil!31907) (Cons!31907 (h!37327 tuple2!31952) (t!228119 List!32007)) )
))
(declare-datatypes ((array!13293 0))(
  ( (array!13294 (arr!5931 (Array (_ BitVec 32) List!32007)) (size!24673 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7468 0))(
  ( (LongMapFixedSize!7469 (defaultEntry!4119 Int) (mask!9502 (_ BitVec 32)) (extraKeys!3983 (_ BitVec 32)) (zeroValue!3993 List!32007) (minValue!3993 List!32007) (_size!7511 (_ BitVec 32)) (_keys!4034 array!13291) (_values!4015 array!13293) (_vacant!3795 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14745 0))(
  ( (Cell!14746 (v!33515 LongMapFixedSize!7468)) )
))
(declare-datatypes ((MutLongMap!3734 0))(
  ( (LongMap!3734 (underlying!7671 Cell!14745)) (MutLongMapExt!3733 (__x!20852 Int)) )
))
(declare-datatypes ((Cell!14747 0))(
  ( (Cell!14748 (v!33516 MutLongMap!3734)) )
))
(declare-datatypes ((Hashable!3650 0))(
  ( (HashableExt!3649 (__x!20853 Int)) )
))
(declare-datatypes ((MutableMap!3640 0))(
  ( (MutableMapExt!3639 (__x!20854 Int)) (HashMap!3640 (underlying!7672 Cell!14747) (hashF!5682 Hashable!3650) (_size!7512 (_ BitVec 32)) (defaultValue!3811 Int)) )
))
(declare-datatypes ((CacheDown!2466 0))(
  ( (CacheDown!2467 (cache!3783 MutableMap!3640)) )
))
(declare-fun cacheDown!939 () CacheDown!2466)

(declare-fun valid!2904 (CacheDown!2466) Bool)

(assert (=> b!2759315 (= res!1155667 (valid!2904 cacheDown!939))))

(declare-fun b!2759316 () Bool)

(declare-datatypes ((tuple2!31954 0))(
  ( (tuple2!31955 (_1!18796 Context!4562) (_2!18796 C!16284)) )
))
(declare-datatypes ((tuple2!31956 0))(
  ( (tuple2!31957 (_1!18797 tuple2!31954) (_2!18797 (InoxSet Context!4562))) )
))
(declare-datatypes ((List!32008 0))(
  ( (Nil!31908) (Cons!31908 (h!37328 tuple2!31956) (t!228120 List!32008)) )
))
(declare-datatypes ((Hashable!3651 0))(
  ( (HashableExt!3650 (__x!20855 Int)) )
))
(declare-datatypes ((array!13295 0))(
  ( (array!13296 (arr!5932 (Array (_ BitVec 32) List!32008)) (size!24674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7470 0))(
  ( (LongMapFixedSize!7471 (defaultEntry!4120 Int) (mask!9503 (_ BitVec 32)) (extraKeys!3984 (_ BitVec 32)) (zeroValue!3994 List!32008) (minValue!3994 List!32008) (_size!7513 (_ BitVec 32)) (_keys!4035 array!13291) (_values!4016 array!13295) (_vacant!3796 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14749 0))(
  ( (Cell!14750 (v!33517 LongMapFixedSize!7470)) )
))
(declare-datatypes ((MutLongMap!3735 0))(
  ( (LongMap!3735 (underlying!7673 Cell!14749)) (MutLongMapExt!3734 (__x!20856 Int)) )
))
(declare-datatypes ((Cell!14751 0))(
  ( (Cell!14752 (v!33518 MutLongMap!3735)) )
))
(declare-datatypes ((MutableMap!3641 0))(
  ( (MutableMapExt!3640 (__x!20857 Int)) (HashMap!3641 (underlying!7674 Cell!14751) (hashF!5683 Hashable!3651) (_size!7514 (_ BitVec 32)) (defaultValue!3812 Int)) )
))
(declare-datatypes ((CacheUp!2346 0))(
  ( (CacheUp!2347 (cache!3784 MutableMap!3641)) )
))
(declare-datatypes ((tuple3!4698 0))(
  ( (tuple3!4699 (_1!18798 Int) (_2!18798 CacheDown!2466) (_3!2819 CacheUp!2346)) )
))
(declare-fun e!1739819 () tuple3!4698)

(declare-datatypes ((tuple3!4700 0))(
  ( (tuple3!4701 (_1!18799 Int) (_2!18799 CacheUp!2346) (_3!2820 CacheDown!2466)) )
))
(declare-fun lt!979228 () tuple3!4700)

(assert (=> b!2759316 (= e!1739819 (tuple3!4699 (_1!18799 lt!979228) (_3!2820 lt!979228) (_2!18799 lt!979228)))))

(declare-datatypes ((tuple3!4702 0))(
  ( (tuple3!4703 (_1!18800 (InoxSet Context!4562)) (_2!18800 CacheUp!2346) (_3!2821 CacheDown!2466)) )
))
(declare-fun lt!979215 () tuple3!4702)

(declare-fun call!179058 () tuple3!4702)

(assert (=> b!2759316 (= lt!979215 call!179058)))

(declare-fun call!179073 () tuple3!4700)

(assert (=> b!2759316 (= lt!979228 call!179073)))

(declare-fun res!1155664 () Bool)

(declare-fun call!179070 () Bool)

(assert (=> b!2759316 (= res!1155664 call!179070)))

(declare-fun e!1739786 () Bool)

(assert (=> b!2759316 (=> (not res!1155664) (not e!1739786))))

(assert (=> b!2759316 e!1739786))

(declare-fun bm!179050 () Bool)

(declare-fun call!179062 () (InoxSet Context!4562))

(declare-fun z!3597 () (InoxSet Context!4562))

(declare-fun lt!979260 () C!16284)

(declare-fun derivationStepZipper!353 ((InoxSet Context!4562) C!16284) (InoxSet Context!4562))

(assert (=> bm!179050 (= call!179062 (derivationStepZipper!353 z!3597 lt!979260))))

(declare-fun b!2759317 () Bool)

(declare-datatypes ((Unit!45821 0))(
  ( (Unit!45822) )
))
(declare-fun e!1739795 () Unit!45821)

(declare-fun Unit!45823 () Unit!45821)

(assert (=> b!2759317 (= e!1739795 Unit!45823)))

(declare-fun lt!979230 () Unit!45821)

(declare-fun call!179072 () Unit!45821)

(assert (=> b!2759317 (= lt!979230 call!179072)))

(declare-fun call!179069 () Bool)

(assert (=> b!2759317 call!179069))

(declare-fun lt!979243 () Unit!45821)

(declare-fun call!179060 () Unit!45821)

(assert (=> b!2759317 (= lt!979243 call!179060)))

(assert (=> b!2759317 false))

(declare-fun b!2759318 () Bool)

(declare-fun e!1739789 () Bool)

(declare-fun e!1739797 () Bool)

(assert (=> b!2759318 (= e!1739789 e!1739797)))

(declare-fun e!1739792 () Bool)

(assert (=> b!2759319 (= e!1739797 (and e!1739792 tp!872070))))

(declare-fun bm!179051 () Bool)

(declare-fun call!179066 () Bool)

(declare-datatypes ((List!32009 0))(
  ( (Nil!31909) (Cons!31909 (h!37329 C!16284) (t!228121 List!32009)) )
))
(declare-fun lt!979234 () List!32009)

(declare-fun isPrefix!2537 (List!32009 List!32009) Bool)

(assert (=> bm!179051 (= call!179066 (isPrefix!2537 lt!979234 lt!979234))))

(declare-fun e!1739800 () Bool)

(declare-fun setRes!22307 () Bool)

(declare-fun setElem!22307 () Context!4562)

(declare-fun tp!872074 () Bool)

(declare-fun setNonEmpty!22307 () Bool)

(declare-fun inv!43328 (Context!4562) Bool)

(assert (=> setNonEmpty!22307 (= setRes!22307 (and tp!872074 (inv!43328 setElem!22307) e!1739800))))

(declare-fun setRest!22307 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22307 (= z!3597 ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22307 true) setRest!22307))))

(declare-fun b!2759320 () Bool)

(declare-datatypes ((tuple2!31958 0))(
  ( (tuple2!31959 (_1!18801 List!32009) (_2!18801 List!32009)) )
))
(declare-fun e!1739812 () tuple2!31958)

(declare-fun lt!979211 () tuple2!31958)

(assert (=> b!2759320 (= e!1739812 lt!979211)))

(declare-fun lt!979207 () List!32009)

(declare-fun lt!979213 () Int)

(declare-fun bm!179052 () Bool)

(declare-fun call!179061 () tuple2!31958)

(declare-fun lt!979204 () List!32009)

(declare-fun findLongestMatchInnerZipper!8 ((InoxSet Context!4562) List!32009 Int List!32009 List!32009 Int) tuple2!31958)

(assert (=> bm!179052 (= call!179061 (findLongestMatchInnerZipper!8 call!179062 lt!979207 1 lt!979204 lt!979234 lt!979213))))

(declare-fun b!2759321 () Bool)

(declare-fun e!1739788 () Unit!45821)

(declare-fun Unit!45824 () Unit!45821)

(assert (=> b!2759321 (= e!1739788 Unit!45824)))

(declare-fun lt!979223 () Unit!45821)

(declare-fun call!179071 () Unit!45821)

(assert (=> b!2759321 (= lt!979223 call!179071)))

(declare-fun call!179063 () Bool)

(assert (=> b!2759321 call!179063))

(declare-fun lt!979227 () Unit!45821)

(declare-fun call!179074 () Unit!45821)

(assert (=> b!2759321 (= lt!979227 call!179074)))

(assert (=> b!2759321 false))

(declare-fun c!447027 () Bool)

(declare-fun bm!179053 () Bool)

(declare-fun call!179065 () Bool)

(declare-fun lt!979221 () tuple3!4700)

(assert (=> bm!179053 (= call!179065 (valid!2904 (ite c!447027 (_3!2820 lt!979221) (_3!2820 lt!979228))))))

(declare-fun bm!179054 () Bool)

(assert (=> bm!179054 (= call!179069 (isPrefix!2537 lt!979234 lt!979234))))

(declare-fun b!2759322 () Bool)

(assert (=> b!2759322 (= e!1739812 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun b!2759323 () Bool)

(declare-fun e!1739816 () Int)

(declare-fun lt!979199 () Int)

(assert (=> b!2759323 (= e!1739816 (ite (= lt!979199 0) 0 lt!979199))))

(declare-fun call!179075 () Int)

(assert (=> b!2759323 (= lt!979199 call!179075)))

(declare-fun e!1739785 () Bool)

(declare-fun e!1739801 () Bool)

(assert (=> b!2759324 (= e!1739785 (and e!1739801 tp!872072))))

(declare-fun b!2759325 () Bool)

(declare-fun c!447021 () Bool)

(declare-fun call!179055 () Bool)

(assert (=> b!2759325 (= c!447021 call!179055)))

(declare-fun lt!979224 () List!32009)

(declare-fun lt!979253 () List!32009)

(declare-fun ++!7898 (List!32009 List!32009) List!32009)

(assert (=> b!2759325 (= (++!7898 lt!979224 lt!979253) lt!979234)))

(declare-fun lt!979262 () C!16284)

(assert (=> b!2759325 (= lt!979224 (++!7898 Nil!31909 (Cons!31909 lt!979262 Nil!31909)))))

(declare-fun lt!979252 () Unit!45821)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!854 (List!32009 C!16284 List!32009 List!32009) Unit!45821)

(assert (=> b!2759325 (= lt!979252 (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979262 lt!979253 lt!979234))))

(declare-fun tail!4371 (List!32009) List!32009)

(assert (=> b!2759325 (= lt!979253 (tail!4371 lt!979234))))

(declare-datatypes ((IArray!19895 0))(
  ( (IArray!19896 (innerList!10005 List!32009)) )
))
(declare-datatypes ((Conc!9945 0))(
  ( (Node!9945 (left!24348 Conc!9945) (right!24678 Conc!9945) (csize!20120 Int) (cheight!10156 Int)) (Leaf!15145 (xs!13053 IArray!19895) (csize!20121 Int)) (Empty!9945) )
))
(declare-datatypes ((BalanceConc!19504 0))(
  ( (BalanceConc!19505 (c!447030 Conc!9945)) )
))
(declare-fun input!5495 () BalanceConc!19504)

(declare-fun apply!7465 (BalanceConc!19504 Int) C!16284)

(assert (=> b!2759325 (= lt!979262 (apply!7465 input!5495 0))))

(declare-fun lt!979233 () List!32009)

(declare-fun head!6133 (List!32009) C!16284)

(assert (=> b!2759325 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)) lt!979234)))

(declare-fun lt!979249 () Unit!45821)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!442 (List!32009 List!32009) Unit!45821)

(assert (=> b!2759325 (= lt!979249 (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979234))))

(declare-fun lt!979217 () Unit!45821)

(declare-fun e!1739807 () Unit!45821)

(assert (=> b!2759325 (= lt!979217 e!1739807)))

(declare-fun c!447018 () Bool)

(declare-fun lt!979255 () Int)

(assert (=> b!2759325 (= c!447018 (= lt!979255 lt!979213))))

(declare-fun size!24675 (List!32009) Int)

(assert (=> b!2759325 (<= lt!979255 (size!24675 lt!979234))))

(assert (=> b!2759325 (= lt!979255 (size!24675 Nil!31909))))

(declare-fun lt!979239 () Unit!45821)

(declare-fun lemmaIsPrefixThenSmallerEqSize!245 (List!32009 List!32009) Unit!45821)

(assert (=> b!2759325 (= lt!979239 (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979234))))

(declare-fun drop!1691 (List!32009 Int) List!32009)

(declare-fun apply!7466 (List!32009 Int) C!16284)

(assert (=> b!2759325 (= (head!6133 (drop!1691 lt!979234 0)) (apply!7466 lt!979234 0))))

(declare-fun lt!979231 () Unit!45821)

(declare-fun lemmaDropApply!897 (List!32009 Int) Unit!45821)

(assert (=> b!2759325 (= lt!979231 (lemmaDropApply!897 lt!979234 0))))

(declare-fun lt!979240 () List!32009)

(declare-fun lt!979197 () List!32009)

(assert (=> b!2759325 (and (= lt!979240 Nil!31909) (= lt!979197 lt!979234))))

(declare-fun lt!979244 () Unit!45821)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!323 (List!32009 List!32009 List!32009 List!32009) Unit!45821)

(assert (=> b!2759325 (= lt!979244 (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979240 lt!979197 Nil!31909 lt!979234))))

(declare-datatypes ((tuple2!31960 0))(
  ( (tuple2!31961 (_1!18802 BalanceConc!19504) (_2!18802 BalanceConc!19504)) )
))
(declare-fun lt!979219 () tuple2!31960)

(declare-fun list!12049 (BalanceConc!19504) List!32009)

(assert (=> b!2759325 (= lt!979197 (list!12049 (_2!18802 lt!979219)))))

(assert (=> b!2759325 (= lt!979240 (list!12049 (_1!18802 lt!979219)))))

(declare-fun splitAt!93 (BalanceConc!19504 Int) tuple2!31960)

(assert (=> b!2759325 (= lt!979219 (splitAt!93 input!5495 0))))

(declare-fun e!1739806 () Int)

(assert (=> b!2759325 (= e!1739806 e!1739816)))

(declare-fun b!2759326 () Bool)

(assert (=> b!2759326 (= e!1739816 call!179075)))

(declare-fun b!2759327 () Bool)

(declare-fun e!1739810 () tuple3!4698)

(declare-fun lt!979254 () tuple3!4700)

(assert (=> b!2759327 (= e!1739810 (tuple3!4699 0 (_3!2820 lt!979254) (_2!18799 lt!979254)))))

(declare-fun mapIsEmpty!17003 () Bool)

(declare-fun mapRes!17004 () Bool)

(assert (=> mapIsEmpty!17003 mapRes!17004))

(declare-fun b!2759328 () Bool)

(declare-fun e!1739790 () Bool)

(declare-fun lt!979202 () MutLongMap!3735)

(get-info :version)

(assert (=> b!2759328 (= e!1739792 (and e!1739790 ((_ is LongMap!3735) lt!979202)))))

(declare-fun cacheUp!820 () CacheUp!2346)

(assert (=> b!2759328 (= lt!979202 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))

(declare-fun b!2759329 () Bool)

(declare-fun res!1155661 () Bool)

(assert (=> b!2759329 (= res!1155661 call!179065)))

(declare-fun e!1739814 () Bool)

(assert (=> b!2759329 (=> (not res!1155661) (not e!1739814))))

(declare-fun b!2759330 () Bool)

(declare-fun res!1155662 () Bool)

(assert (=> b!2759330 (= res!1155662 call!179065)))

(assert (=> b!2759330 (=> (not res!1155662) (not e!1739786))))

(declare-fun b!2759331 () Bool)

(declare-fun Unit!45825 () Unit!45821)

(assert (=> b!2759331 (= e!1739788 Unit!45825)))

(declare-fun bm!179055 () Bool)

(assert (=> bm!179055 (= call!179063 (isPrefix!2537 lt!979234 lt!979234))))

(declare-fun bm!179056 () Bool)

(declare-fun lt!979236 () List!32009)

(declare-fun lt!979205 () tuple3!4702)

(declare-fun lt!979258 () List!32009)

(declare-fun findLongestMatchInnerZipperFastMem!17 (CacheUp!2346 CacheDown!2466 (InoxSet Context!4562) List!32009 Int List!32009 BalanceConc!19504 Int) tuple3!4700)

(assert (=> bm!179056 (= call!179073 (findLongestMatchInnerZipperFastMem!17 (ite c!447027 (_2!18800 lt!979205) (_2!18800 lt!979215)) (ite c!447027 (_3!2821 lt!979205) (_3!2821 lt!979215)) (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213))))

(declare-fun bm!179057 () Bool)

(declare-fun call!179067 () Bool)

(declare-fun nullableZipper!617 ((InoxSet Context!4562)) Bool)

(assert (=> bm!179057 (= call!179067 (nullableZipper!617 z!3597))))

(declare-fun call!179068 () Int)

(declare-fun bm!179058 () Bool)

(declare-fun findLongestMatchInnerZipperFast!21 ((InoxSet Context!4562) List!32009 Int List!32009 BalanceConc!19504 Int) Int)

(assert (=> bm!179058 (= call!179068 (findLongestMatchInnerZipperFast!21 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213))))

(declare-fun b!2759332 () Bool)

(declare-fun e!1739791 () Bool)

(declare-fun lt!979263 () Int)

(assert (=> b!2759332 (= e!1739791 (= lt!979263 0))))

(declare-fun bm!179059 () Bool)

(declare-fun call!179056 () Unit!45821)

(declare-fun lemmaIsPrefixSameLengthThenSameList!445 (List!32009 List!32009 List!32009) Unit!45821)

(assert (=> bm!179059 (= call!179056 (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 Nil!31909 lt!979234))))

(declare-fun b!2759333 () Bool)

(declare-fun e!1739817 () Bool)

(declare-fun lt!979196 () MutLongMap!3734)

(assert (=> b!2759333 (= e!1739801 (and e!1739817 ((_ is LongMap!3734) lt!979196)))))

(assert (=> b!2759333 (= lt!979196 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))

(declare-fun bm!179060 () Bool)

(declare-fun valid!2905 (CacheUp!2346) Bool)

(assert (=> bm!179060 (= call!179070 (valid!2905 (ite c!447027 (_2!18799 lt!979221) (_2!18799 lt!979228))))))

(declare-fun bm!179061 () Bool)

(declare-fun call!179064 () (InoxSet Context!4562))

(assert (=> bm!179061 (= call!179064 (derivationStepZipper!353 z!3597 lt!979262))))

(declare-fun bm!179062 () Bool)

(declare-fun call!179057 () Bool)

(assert (=> bm!179062 (= call!179057 (nullableZipper!617 z!3597))))

(declare-fun mapNonEmpty!17003 () Bool)

(declare-fun mapRes!17003 () Bool)

(declare-fun tp!872066 () Bool)

(declare-fun tp!872076 () Bool)

(assert (=> mapNonEmpty!17003 (= mapRes!17003 (and tp!872066 tp!872076))))

(declare-fun mapRest!17004 () (Array (_ BitVec 32) List!32007))

(declare-fun mapKey!17004 () (_ BitVec 32))

(declare-fun mapValue!17004 () List!32007)

(assert (=> mapNonEmpty!17003 (= (arr!5931 (_values!4015 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) (store mapRest!17004 mapKey!17004 mapValue!17004))))

(declare-fun bm!179063 () Bool)

(assert (=> bm!179063 (= call!179060 (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 Nil!31909 lt!979234))))

(declare-fun b!2759334 () Bool)

(declare-fun tp!872075 () Bool)

(assert (=> b!2759334 (= e!1739800 tp!872075)))

(declare-fun e!1739820 () Bool)

(declare-fun tp!872064 () Bool)

(declare-fun tp!872067 () Bool)

(declare-fun e!1739802 () Bool)

(declare-fun array_inv!4239 (array!13291) Bool)

(declare-fun array_inv!4240 (array!13293) Bool)

(assert (=> b!2759335 (= e!1739820 (and tp!872078 tp!872067 tp!872064 (array_inv!4239 (_keys!4034 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) (array_inv!4240 (_values!4015 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) e!1739802))))

(declare-fun b!2759336 () Bool)

(declare-fun res!1155659 () Bool)

(declare-fun e!1739803 () Bool)

(assert (=> b!2759336 (=> (not res!1155659) (not e!1739803))))

(assert (=> b!2759336 (= res!1155659 (valid!2904 (_3!2820 lt!979254)))))

(declare-fun bm!179064 () Bool)

(declare-fun call!179059 () Unit!45821)

(declare-fun lemmaIsPrefixRefl!1664 (List!32009 List!32009) Unit!45821)

(assert (=> bm!179064 (= call!179059 (lemmaIsPrefixRefl!1664 lt!979234 lt!979234))))

(declare-fun bm!179065 () Bool)

(assert (=> bm!179065 (= call!179074 (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 Nil!31909 lt!979234))))

(declare-fun bm!179066 () Bool)

(assert (=> bm!179066 (= call!179071 (lemmaIsPrefixRefl!1664 lt!979234 lt!979234))))

(declare-fun b!2759337 () Bool)

(declare-fun res!1155660 () Bool)

(declare-fun e!1739815 () Bool)

(assert (=> b!2759337 (=> (not res!1155660) (not e!1739815))))

(declare-fun lt!979201 () tuple3!4700)

(assert (=> b!2759337 (= res!1155660 (valid!2904 (_3!2820 lt!979201)))))

(declare-fun b!2759338 () Bool)

(declare-fun lt!979210 () Bool)

(assert (=> b!2759338 (= lt!979210 call!179055)))

(assert (=> b!2759338 (= lt!979234 Nil!31909)))

(declare-fun lt!979198 () Unit!45821)

(assert (=> b!2759338 (= lt!979198 call!179056)))

(assert (=> b!2759338 call!179066))

(declare-fun lt!979248 () Unit!45821)

(assert (=> b!2759338 (= lt!979248 call!179059)))

(assert (=> b!2759338 (= e!1739806 0)))

(declare-fun b!2759339 () Bool)

(declare-fun e!1739794 () Bool)

(declare-fun lt!979208 () tuple2!31958)

(assert (=> b!2759339 (= e!1739794 (= lt!979208 (tuple2!31959 Nil!31909 lt!979234)))))

(declare-fun b!2759340 () Bool)

(declare-fun e!1739818 () tuple2!31958)

(assert (=> b!2759340 (= e!1739818 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun tp!872071 () Bool)

(declare-fun e!1739798 () Bool)

(declare-fun tp!872069 () Bool)

(declare-fun e!1739799 () Bool)

(declare-fun array_inv!4241 (array!13295) Bool)

(assert (=> b!2759341 (= e!1739799 (and tp!872077 tp!872069 tp!872071 (array_inv!4239 (_keys!4035 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) (array_inv!4241 (_values!4016 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) e!1739798))))

(declare-fun b!2759342 () Bool)

(declare-fun c!447016 () Bool)

(assert (=> b!2759342 (= c!447016 call!179057)))

(assert (=> b!2759342 (= (++!7898 lt!979207 lt!979204) lt!979234)))

(declare-fun lt!979235 () Unit!45821)

(assert (=> b!2759342 (= lt!979235 (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979260 lt!979204 lt!979234))))

(assert (=> b!2759342 (= lt!979204 (tail!4371 lt!979234))))

(assert (=> b!2759342 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)) lt!979234)))

(declare-fun lt!979218 () Unit!45821)

(assert (=> b!2759342 (= lt!979218 (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979234))))

(assert (=> b!2759342 (= lt!979207 (++!7898 Nil!31909 (Cons!31909 lt!979260 Nil!31909)))))

(assert (=> b!2759342 (= lt!979260 (head!6133 lt!979234))))

(declare-fun lt!979241 () Unit!45821)

(assert (=> b!2759342 (= lt!979241 e!1739788)))

(declare-fun c!447024 () Bool)

(declare-fun lt!979259 () Int)

(declare-fun lt!979209 () Int)

(assert (=> b!2759342 (= c!447024 (= lt!979259 lt!979209))))

(assert (=> b!2759342 (<= lt!979259 lt!979209)))

(assert (=> b!2759342 (= lt!979209 (size!24675 lt!979234))))

(assert (=> b!2759342 (= lt!979259 (size!24675 Nil!31909))))

(declare-fun lt!979250 () Unit!45821)

(assert (=> b!2759342 (= lt!979250 (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979234))))

(declare-fun e!1739811 () tuple2!31958)

(declare-fun e!1739809 () tuple2!31958)

(assert (=> b!2759342 (= e!1739811 e!1739809)))

(declare-fun b!2759343 () Bool)

(declare-fun tp!872079 () Bool)

(assert (=> b!2759343 (= e!1739798 (and tp!872079 mapRes!17004))))

(declare-fun condMapEmpty!17003 () Bool)

(declare-fun mapDefault!17003 () List!32008)

(assert (=> b!2759343 (= condMapEmpty!17003 (= (arr!5932 (_values!4016 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32008)) mapDefault!17003)))))

(declare-fun b!2759344 () Bool)

(assert (=> b!2759344 (= e!1739819 (tuple3!4699 (ite (= (_1!18799 lt!979221) 0) 0 (_1!18799 lt!979221)) (_3!2820 lt!979221) (_2!18799 lt!979221)))))

(assert (=> b!2759344 (= lt!979205 call!179058)))

(assert (=> b!2759344 (= lt!979221 call!179073)))

(declare-fun res!1155663 () Bool)

(assert (=> b!2759344 (= res!1155663 call!179070)))

(assert (=> b!2759344 (=> (not res!1155663) (not e!1739814))))

(assert (=> b!2759344 e!1739814))

(declare-fun b!2759345 () Bool)

(declare-fun Unit!45826 () Unit!45821)

(assert (=> b!2759345 (= e!1739795 Unit!45826)))

(declare-fun mapNonEmpty!17004 () Bool)

(declare-fun tp!872073 () Bool)

(declare-fun tp!872068 () Bool)

(assert (=> mapNonEmpty!17004 (= mapRes!17004 (and tp!872073 tp!872068))))

(declare-fun mapRest!17003 () (Array (_ BitVec 32) List!32008))

(declare-fun mapValue!17003 () List!32008)

(declare-fun mapKey!17003 () (_ BitVec 32))

(assert (=> mapNonEmpty!17004 (= (arr!5932 (_values!4016 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) (store mapRest!17003 mapKey!17003 mapValue!17003))))

(declare-fun b!2759346 () Bool)

(declare-fun e!1739787 () Bool)

(assert (=> b!2759346 (= e!1739817 e!1739787)))

(declare-fun b!2759347 () Bool)

(assert (=> b!2759347 (= e!1739809 e!1739812)))

(assert (=> b!2759347 (= lt!979211 call!179061)))

(declare-fun c!447020 () Bool)

(declare-fun isEmpty!18074 (List!32009) Bool)

(assert (=> b!2759347 (= c!447020 (isEmpty!18074 (_1!18801 lt!979211)))))

(declare-fun b!2759348 () Bool)

(assert (=> b!2759348 (= e!1739791 (= lt!979263 e!1739806))))

(declare-fun c!447026 () Bool)

(assert (=> b!2759348 (= c!447026 (= 0 lt!979213))))

(declare-fun bm!179067 () Bool)

(assert (=> bm!179067 (= call!179072 (lemmaIsPrefixRefl!1664 lt!979234 lt!979234))))

(declare-fun b!2759349 () Bool)

(declare-fun c!447025 () Bool)

(assert (=> b!2759349 (= c!447025 call!179057)))

(assert (=> b!2759349 (= lt!979234 Nil!31909)))

(declare-fun lt!979203 () Unit!45821)

(assert (=> b!2759349 (= lt!979203 call!179074)))

(assert (=> b!2759349 call!179063))

(declare-fun lt!979246 () Unit!45821)

(assert (=> b!2759349 (= lt!979246 call!179071)))

(assert (=> b!2759349 (= e!1739811 e!1739818)))

(declare-fun b!2759350 () Bool)

(declare-fun e!1739805 () Bool)

(assert (=> b!2759350 (= e!1739805 e!1739785)))

(declare-fun bm!179068 () Bool)

(declare-fun lt!979212 () C!16284)

(declare-fun derivationStepZipperMem!85 ((InoxSet Context!4562) C!16284 CacheUp!2346 CacheDown!2466) tuple3!4702)

(assert (=> bm!179068 (= call!179058 (derivationStepZipperMem!85 z!3597 lt!979212 (_2!18799 lt!979254) (_3!2820 lt!979254)))))

(declare-fun b!2759351 () Bool)

(assert (=> b!2759351 (= e!1739818 (tuple2!31959 Nil!31909 Nil!31909))))

(declare-fun mapIsEmpty!17004 () Bool)

(assert (=> mapIsEmpty!17004 mapRes!17003))

(declare-fun b!2759352 () Bool)

(declare-fun e!1739808 () Bool)

(assert (=> b!2759352 (= e!1739790 e!1739808)))

(declare-fun bm!179069 () Bool)

(assert (=> bm!179069 (= call!179075 (findLongestMatchInnerZipperFast!21 call!179064 lt!979224 1 lt!979253 input!5495 lt!979213))))

(declare-fun b!2759353 () Bool)

(declare-fun lt!979232 () Bool)

(assert (=> b!2759353 (= lt!979232 call!179067)))

(assert (=> b!2759353 (= lt!979234 Nil!31909)))

(declare-fun lt!979257 () Unit!45821)

(assert (=> b!2759353 (= lt!979257 call!179060)))

(assert (=> b!2759353 call!179069))

(declare-fun lt!979229 () Unit!45821)

(assert (=> b!2759353 (= lt!979229 call!179072)))

(declare-fun e!1739813 () tuple3!4698)

(assert (=> b!2759353 (= e!1739813 (tuple3!4699 0 (_3!2820 lt!979254) (_2!18799 lt!979254)))))

(declare-fun setIsEmpty!22307 () Bool)

(assert (=> setIsEmpty!22307 setRes!22307))

(declare-fun b!2759354 () Bool)

(declare-fun tp!872065 () Bool)

(assert (=> b!2759354 (= e!1739802 (and tp!872065 mapRes!17003))))

(declare-fun condMapEmpty!17004 () Bool)

(declare-fun mapDefault!17004 () List!32007)

(assert (=> b!2759354 (= condMapEmpty!17004 (= (arr!5931 (_values!4015 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32007)) mapDefault!17004)))))

(declare-fun b!2759355 () Bool)

(assert (=> b!2759355 (= e!1739810 e!1739813)))

(declare-fun c!447022 () Bool)

(assert (=> b!2759355 (= c!447022 (= 0 lt!979213))))

(declare-fun b!2759356 () Bool)

(assert (=> b!2759356 (= c!447027 call!179067)))

(assert (=> b!2759356 (= (++!7898 lt!979236 lt!979258) lt!979234)))

(assert (=> b!2759356 (= lt!979236 (++!7898 Nil!31909 (Cons!31909 lt!979212 Nil!31909)))))

(declare-fun lt!979242 () Unit!45821)

(assert (=> b!2759356 (= lt!979242 (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979212 lt!979258 lt!979234))))

(assert (=> b!2759356 (= lt!979258 (tail!4371 lt!979234))))

(assert (=> b!2759356 (= lt!979212 (apply!7465 input!5495 0))))

(assert (=> b!2759356 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)) lt!979234)))

(declare-fun lt!979216 () Unit!45821)

(assert (=> b!2759356 (= lt!979216 (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979234))))

(declare-fun lt!979206 () Unit!45821)

(assert (=> b!2759356 (= lt!979206 e!1739795)))

(declare-fun c!447028 () Bool)

(declare-fun lt!979222 () Int)

(assert (=> b!2759356 (= c!447028 (= lt!979222 lt!979213))))

(assert (=> b!2759356 (<= lt!979222 (size!24675 lt!979234))))

(assert (=> b!2759356 (= lt!979222 (size!24675 Nil!31909))))

(declare-fun lt!979251 () Unit!45821)

(assert (=> b!2759356 (= lt!979251 (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979234))))

(assert (=> b!2759356 (= (head!6133 (drop!1691 lt!979234 0)) (apply!7466 lt!979234 0))))

(declare-fun lt!979238 () Unit!45821)

(assert (=> b!2759356 (= lt!979238 (lemmaDropApply!897 lt!979234 0))))

(declare-fun lt!979247 () List!32009)

(declare-fun lt!979225 () List!32009)

(assert (=> b!2759356 (and (= lt!979247 Nil!31909) (= lt!979225 lt!979234))))

(declare-fun lt!979226 () Unit!45821)

(assert (=> b!2759356 (= lt!979226 (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979247 lt!979225 Nil!31909 lt!979234))))

(declare-fun lt!979237 () tuple2!31960)

(assert (=> b!2759356 (= lt!979225 (list!12049 (_2!18802 lt!979237)))))

(assert (=> b!2759356 (= lt!979247 (list!12049 (_1!18802 lt!979237)))))

(assert (=> b!2759356 (= lt!979237 (splitAt!93 input!5495 0))))

(assert (=> b!2759356 (= e!1739813 e!1739819)))

(declare-fun b!2759357 () Bool)

(assert (=> b!2759357 (= e!1739794 (= lt!979208 e!1739811))))

(declare-fun c!447017 () Bool)

(assert (=> b!2759357 (= c!447017 (= 0 lt!979213))))

(declare-fun b!2759358 () Bool)

(declare-fun e!1739796 () Bool)

(declare-fun tp!872063 () Bool)

(declare-fun inv!43329 (Conc!9945) Bool)

(assert (=> b!2759358 (= e!1739796 (and (inv!43329 (c!447030 input!5495)) tp!872063))))

(declare-fun b!2759359 () Bool)

(assert (=> b!2759359 (= e!1739787 e!1739820)))

(declare-fun bm!179070 () Bool)

(assert (=> bm!179070 (= call!179055 (nullableZipper!617 z!3597))))

(declare-fun b!2759360 () Bool)

(assert (=> b!2759360 (= e!1739809 call!179061)))

(declare-fun b!2759362 () Bool)

(declare-fun Unit!45827 () Unit!45821)

(assert (=> b!2759362 (= e!1739807 Unit!45827)))

(declare-fun res!1155665 () Bool)

(assert (=> start!267334 (=> (not res!1155665) (not e!1739793))))

(assert (=> start!267334 (= res!1155665 (valid!2905 cacheUp!820))))

(assert (=> start!267334 e!1739793))

(declare-fun inv!43330 (CacheUp!2346) Bool)

(assert (=> start!267334 (and (inv!43330 cacheUp!820) e!1739789)))

(declare-fun inv!43331 (CacheDown!2466) Bool)

(assert (=> start!267334 (and (inv!43331 cacheDown!939) e!1739805)))

(declare-fun condSetEmpty!22307 () Bool)

(assert (=> start!267334 (= condSetEmpty!22307 (= z!3597 ((as const (Array Context!4562 Bool)) false)))))

(assert (=> start!267334 setRes!22307))

(declare-fun inv!43332 (BalanceConc!19504) Bool)

(assert (=> start!267334 (and (inv!43332 input!5495) e!1739796)))

(declare-fun b!2759361 () Bool)

(assert (=> b!2759361 (= e!1739815 (= (_1!18799 lt!979201) (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213)))))

(declare-fun b!2759363 () Bool)

(declare-fun isBalanced!3029 (Conc!9945) Bool)

(assert (=> b!2759363 (= e!1739793 (not (isBalanced!3029 (c!447030 input!5495))))))

(declare-fun lt!979261 () List!32009)

(assert (=> b!2759363 (= lt!979261 (list!12049 (_1!18802 (splitAt!93 input!5495 (_1!18799 lt!979254)))))))

(assert (=> b!2759363 e!1739794))

(declare-fun c!447019 () Bool)

(declare-fun lt!979256 () Bool)

(assert (=> b!2759363 (= c!447019 lt!979256)))

(assert (=> b!2759363 (= lt!979208 (findLongestMatchInnerZipper!8 z!3597 Nil!31909 0 lt!979234 lt!979234 lt!979213))))

(assert (=> b!2759363 e!1739791))

(declare-fun c!447015 () Bool)

(assert (=> b!2759363 (= c!447015 lt!979256)))

(assert (=> b!2759363 (= lt!979263 (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213))))

(declare-fun lt!979200 () tuple3!4698)

(assert (=> b!2759363 (= lt!979201 (tuple3!4701 (_1!18798 lt!979200) (_3!2819 lt!979200) (_2!18798 lt!979200)))))

(assert (=> b!2759363 (= lt!979200 e!1739810)))

(declare-fun c!447023 () Bool)

(assert (=> b!2759363 (= c!447023 lt!979256)))

(declare-fun lostCauseZipper!426 ((InoxSet Context!4562)) Bool)

(assert (=> b!2759363 (= lt!979256 (lostCauseZipper!426 z!3597))))

(assert (=> b!2759363 (and (= lt!979234 lt!979233) (= lt!979233 lt!979234))))

(declare-fun lt!979195 () Unit!45821)

(declare-fun lemmaSamePrefixThenSameSuffix!1124 (List!32009 List!32009 List!32009 List!32009 List!32009) Unit!45821)

(assert (=> b!2759363 (= lt!979195 (lemmaSamePrefixThenSameSuffix!1124 Nil!31909 lt!979234 Nil!31909 lt!979233 lt!979234))))

(declare-fun getSuffix!1222 (List!32009 List!32009) List!32009)

(assert (=> b!2759363 (= lt!979233 (getSuffix!1222 lt!979234 Nil!31909))))

(assert (=> b!2759363 (isPrefix!2537 Nil!31909 (++!7898 Nil!31909 lt!979234))))

(declare-fun lt!979245 () Unit!45821)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1650 (List!32009 List!32009) Unit!45821)

(assert (=> b!2759363 (= lt!979245 (lemmaConcatTwoListThenFirstIsPrefix!1650 Nil!31909 lt!979234))))

(assert (=> b!2759363 e!1739815))

(declare-fun res!1155668 () Bool)

(assert (=> b!2759363 (=> (not res!1155668) (not e!1739815))))

(assert (=> b!2759363 (= res!1155668 (valid!2905 (_2!18799 lt!979201)))))

(assert (=> b!2759363 (= lt!979201 (findLongestMatchInnerZipperFastMem!17 (_2!18799 lt!979254) (_3!2820 lt!979254) z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213))))

(assert (=> b!2759363 e!1739803))

(declare-fun res!1155666 () Bool)

(assert (=> b!2759363 (=> (not res!1155666) (not e!1739803))))

(assert (=> b!2759363 (= res!1155666 (valid!2905 (_2!18799 lt!979254)))))

(assert (=> b!2759363 (= lt!979254 (findLongestMatchInnerZipperFastMem!17 cacheUp!820 cacheDown!939 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213))))

(declare-fun size!24676 (BalanceConc!19504) Int)

(assert (=> b!2759363 (= lt!979213 (size!24676 input!5495))))

(assert (=> b!2759363 (= lt!979234 (list!12049 input!5495))))

(declare-fun b!2759364 () Bool)

(assert (=> b!2759364 (= e!1739814 (= (_1!18799 lt!979221) call!179068))))

(declare-fun b!2759365 () Bool)

(assert (=> b!2759365 (= e!1739786 (= (_1!18799 lt!979228) call!179068))))

(declare-fun b!2759366 () Bool)

(assert (=> b!2759366 (= e!1739803 (= (_1!18799 lt!979254) (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213)))))

(declare-fun b!2759367 () Bool)

(assert (=> b!2759367 (= e!1739808 e!1739799)))

(declare-fun b!2759368 () Bool)

(declare-fun Unit!45828 () Unit!45821)

(assert (=> b!2759368 (= e!1739807 Unit!45828)))

(declare-fun lt!979220 () Unit!45821)

(assert (=> b!2759368 (= lt!979220 call!179059)))

(assert (=> b!2759368 call!179066))

(declare-fun lt!979214 () Unit!45821)

(assert (=> b!2759368 (= lt!979214 call!179056)))

(assert (=> b!2759368 false))

(assert (= (and start!267334 res!1155665) b!2759315))

(assert (= (and b!2759315 res!1155667) b!2759363))

(assert (= (and b!2759363 res!1155666) b!2759336))

(assert (= (and b!2759336 res!1155659) b!2759366))

(assert (= (and b!2759363 res!1155668) b!2759337))

(assert (= (and b!2759337 res!1155660) b!2759361))

(assert (= (and b!2759363 c!447023) b!2759327))

(assert (= (and b!2759363 (not c!447023)) b!2759355))

(assert (= (and b!2759355 c!447022) b!2759353))

(assert (= (and b!2759355 (not c!447022)) b!2759356))

(assert (= (and b!2759356 c!447028) b!2759317))

(assert (= (and b!2759356 (not c!447028)) b!2759345))

(assert (= (and b!2759356 c!447027) b!2759344))

(assert (= (and b!2759356 (not c!447027)) b!2759316))

(assert (= (and b!2759344 res!1155663) b!2759329))

(assert (= (and b!2759329 res!1155661) b!2759364))

(assert (= (and b!2759316 res!1155664) b!2759330))

(assert (= (and b!2759330 res!1155662) b!2759365))

(assert (= (or b!2759344 b!2759316) bm!179060))

(assert (= (or b!2759329 b!2759330) bm!179053))

(assert (= (or b!2759344 b!2759316) bm!179056))

(assert (= (or b!2759344 b!2759316) bm!179068))

(assert (= (or b!2759364 b!2759365) bm!179058))

(assert (= (or b!2759353 b!2759356) bm!179057))

(assert (= (or b!2759353 b!2759317) bm!179067))

(assert (= (or b!2759353 b!2759317) bm!179063))

(assert (= (or b!2759353 b!2759317) bm!179054))

(assert (= (and b!2759363 c!447015) b!2759332))

(assert (= (and b!2759363 (not c!447015)) b!2759348))

(assert (= (and b!2759348 c!447026) b!2759338))

(assert (= (and b!2759348 (not c!447026)) b!2759325))

(assert (= (and b!2759325 c!447018) b!2759368))

(assert (= (and b!2759325 (not c!447018)) b!2759362))

(assert (= (and b!2759325 c!447021) b!2759323))

(assert (= (and b!2759325 (not c!447021)) b!2759326))

(assert (= (or b!2759323 b!2759326) bm!179061))

(assert (= (or b!2759323 b!2759326) bm!179069))

(assert (= (or b!2759338 b!2759325) bm!179070))

(assert (= (or b!2759338 b!2759368) bm!179064))

(assert (= (or b!2759338 b!2759368) bm!179059))

(assert (= (or b!2759338 b!2759368) bm!179051))

(assert (= (and b!2759363 c!447019) b!2759339))

(assert (= (and b!2759363 (not c!447019)) b!2759357))

(assert (= (and b!2759357 c!447017) b!2759349))

(assert (= (and b!2759357 (not c!447017)) b!2759342))

(assert (= (and b!2759349 c!447025) b!2759351))

(assert (= (and b!2759349 (not c!447025)) b!2759340))

(assert (= (and b!2759342 c!447024) b!2759321))

(assert (= (and b!2759342 (not c!447024)) b!2759331))

(assert (= (and b!2759342 c!447016) b!2759347))

(assert (= (and b!2759342 (not c!447016)) b!2759360))

(assert (= (and b!2759347 c!447020) b!2759322))

(assert (= (and b!2759347 (not c!447020)) b!2759320))

(assert (= (or b!2759347 b!2759360) bm!179050))

(assert (= (or b!2759347 b!2759360) bm!179052))

(assert (= (or b!2759349 b!2759342) bm!179062))

(assert (= (or b!2759349 b!2759321) bm!179066))

(assert (= (or b!2759349 b!2759321) bm!179065))

(assert (= (or b!2759349 b!2759321) bm!179055))

(assert (= (and b!2759343 condMapEmpty!17003) mapIsEmpty!17003))

(assert (= (and b!2759343 (not condMapEmpty!17003)) mapNonEmpty!17004))

(assert (= b!2759341 b!2759343))

(assert (= b!2759367 b!2759341))

(assert (= b!2759352 b!2759367))

(assert (= (and b!2759328 ((_ is LongMap!3735) (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))) b!2759352))

(assert (= b!2759319 b!2759328))

(assert (= (and b!2759318 ((_ is HashMap!3641) (cache!3784 cacheUp!820))) b!2759319))

(assert (= start!267334 b!2759318))

(assert (= (and b!2759354 condMapEmpty!17004) mapIsEmpty!17004))

(assert (= (and b!2759354 (not condMapEmpty!17004)) mapNonEmpty!17003))

(assert (= b!2759335 b!2759354))

(assert (= b!2759359 b!2759335))

(assert (= b!2759346 b!2759359))

(assert (= (and b!2759333 ((_ is LongMap!3734) (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))) b!2759346))

(assert (= b!2759324 b!2759333))

(assert (= (and b!2759350 ((_ is HashMap!3640) (cache!3783 cacheDown!939))) b!2759324))

(assert (= start!267334 b!2759350))

(assert (= (and start!267334 condSetEmpty!22307) setIsEmpty!22307))

(assert (= (and start!267334 (not condSetEmpty!22307)) setNonEmpty!22307))

(assert (= setNonEmpty!22307 b!2759334))

(assert (= start!267334 b!2759358))

(declare-fun m!3178257 () Bool)

(assert (=> bm!179065 m!3178257))

(declare-fun m!3178259 () Bool)

(assert (=> b!2759315 m!3178259))

(declare-fun m!3178261 () Bool)

(assert (=> b!2759347 m!3178261))

(declare-fun m!3178263 () Bool)

(assert (=> b!2759336 m!3178263))

(declare-fun m!3178265 () Bool)

(assert (=> b!2759358 m!3178265))

(declare-fun m!3178267 () Bool)

(assert (=> bm!179056 m!3178267))

(declare-fun m!3178269 () Bool)

(assert (=> bm!179053 m!3178269))

(declare-fun m!3178271 () Bool)

(assert (=> bm!179060 m!3178271))

(declare-fun m!3178273 () Bool)

(assert (=> b!2759335 m!3178273))

(declare-fun m!3178275 () Bool)

(assert (=> b!2759335 m!3178275))

(declare-fun m!3178277 () Bool)

(assert (=> bm!179067 m!3178277))

(declare-fun m!3178279 () Bool)

(assert (=> bm!179051 m!3178279))

(assert (=> bm!179055 m!3178279))

(declare-fun m!3178281 () Bool)

(assert (=> bm!179070 m!3178281))

(assert (=> bm!179063 m!3178257))

(assert (=> bm!179059 m!3178257))

(declare-fun m!3178283 () Bool)

(assert (=> b!2759356 m!3178283))

(declare-fun m!3178285 () Bool)

(assert (=> b!2759356 m!3178285))

(declare-fun m!3178287 () Bool)

(assert (=> b!2759356 m!3178287))

(declare-fun m!3178289 () Bool)

(assert (=> b!2759356 m!3178289))

(declare-fun m!3178291 () Bool)

(assert (=> b!2759356 m!3178291))

(declare-fun m!3178293 () Bool)

(assert (=> b!2759356 m!3178293))

(declare-fun m!3178295 () Bool)

(assert (=> b!2759356 m!3178295))

(declare-fun m!3178297 () Bool)

(assert (=> b!2759356 m!3178297))

(declare-fun m!3178299 () Bool)

(assert (=> b!2759356 m!3178299))

(declare-fun m!3178301 () Bool)

(assert (=> b!2759356 m!3178301))

(assert (=> b!2759356 m!3178285))

(declare-fun m!3178303 () Bool)

(assert (=> b!2759356 m!3178303))

(declare-fun m!3178305 () Bool)

(assert (=> b!2759356 m!3178305))

(declare-fun m!3178307 () Bool)

(assert (=> b!2759356 m!3178307))

(declare-fun m!3178309 () Bool)

(assert (=> b!2759356 m!3178309))

(declare-fun m!3178311 () Bool)

(assert (=> b!2759356 m!3178311))

(declare-fun m!3178313 () Bool)

(assert (=> b!2759356 m!3178313))

(declare-fun m!3178315 () Bool)

(assert (=> b!2759356 m!3178315))

(declare-fun m!3178317 () Bool)

(assert (=> b!2759356 m!3178317))

(declare-fun m!3178319 () Bool)

(assert (=> b!2759356 m!3178319))

(assert (=> b!2759356 m!3178303))

(declare-fun m!3178321 () Bool)

(assert (=> b!2759356 m!3178321))

(declare-fun m!3178323 () Bool)

(assert (=> b!2759361 m!3178323))

(declare-fun m!3178325 () Bool)

(assert (=> b!2759342 m!3178325))

(assert (=> b!2759342 m!3178283))

(assert (=> b!2759342 m!3178309))

(assert (=> b!2759342 m!3178285))

(assert (=> b!2759342 m!3178287))

(assert (=> b!2759342 m!3178293))

(declare-fun m!3178327 () Bool)

(assert (=> b!2759342 m!3178327))

(assert (=> b!2759342 m!3178301))

(assert (=> b!2759342 m!3178285))

(assert (=> b!2759342 m!3178291))

(declare-fun m!3178329 () Bool)

(assert (=> b!2759342 m!3178329))

(assert (=> b!2759342 m!3178317))

(declare-fun m!3178331 () Bool)

(assert (=> b!2759342 m!3178331))

(assert (=> bm!179062 m!3178281))

(declare-fun m!3178333 () Bool)

(assert (=> bm!179061 m!3178333))

(assert (=> bm!179054 m!3178279))

(declare-fun m!3178335 () Bool)

(assert (=> bm!179069 m!3178335))

(assert (=> bm!179066 m!3178277))

(declare-fun m!3178337 () Bool)

(assert (=> bm!179068 m!3178337))

(declare-fun m!3178339 () Bool)

(assert (=> mapNonEmpty!17003 m!3178339))

(declare-fun m!3178341 () Bool)

(assert (=> mapNonEmpty!17004 m!3178341))

(declare-fun m!3178343 () Bool)

(assert (=> b!2759363 m!3178343))

(declare-fun m!3178345 () Bool)

(assert (=> b!2759363 m!3178345))

(declare-fun m!3178347 () Bool)

(assert (=> b!2759363 m!3178347))

(declare-fun m!3178349 () Bool)

(assert (=> b!2759363 m!3178349))

(declare-fun m!3178351 () Bool)

(assert (=> b!2759363 m!3178351))

(declare-fun m!3178353 () Bool)

(assert (=> b!2759363 m!3178353))

(declare-fun m!3178355 () Bool)

(assert (=> b!2759363 m!3178355))

(declare-fun m!3178357 () Bool)

(assert (=> b!2759363 m!3178357))

(declare-fun m!3178359 () Bool)

(assert (=> b!2759363 m!3178359))

(declare-fun m!3178361 () Bool)

(assert (=> b!2759363 m!3178361))

(declare-fun m!3178363 () Bool)

(assert (=> b!2759363 m!3178363))

(declare-fun m!3178365 () Bool)

(assert (=> b!2759363 m!3178365))

(assert (=> b!2759363 m!3178349))

(declare-fun m!3178367 () Bool)

(assert (=> b!2759363 m!3178367))

(assert (=> b!2759363 m!3178323))

(declare-fun m!3178369 () Bool)

(assert (=> b!2759363 m!3178369))

(declare-fun m!3178371 () Bool)

(assert (=> b!2759363 m!3178371))

(declare-fun m!3178373 () Bool)

(assert (=> b!2759363 m!3178373))

(declare-fun m!3178375 () Bool)

(assert (=> bm!179058 m!3178375))

(assert (=> bm!179057 m!3178281))

(assert (=> bm!179064 m!3178277))

(declare-fun m!3178377 () Bool)

(assert (=> start!267334 m!3178377))

(declare-fun m!3178379 () Bool)

(assert (=> start!267334 m!3178379))

(declare-fun m!3178381 () Bool)

(assert (=> start!267334 m!3178381))

(declare-fun m!3178383 () Bool)

(assert (=> start!267334 m!3178383))

(assert (=> b!2759366 m!3178323))

(assert (=> b!2759325 m!3178303))

(assert (=> b!2759325 m!3178283))

(declare-fun m!3178385 () Bool)

(assert (=> b!2759325 m!3178385))

(assert (=> b!2759325 m!3178285))

(assert (=> b!2759325 m!3178287))

(assert (=> b!2759325 m!3178311))

(assert (=> b!2759325 m!3178293))

(declare-fun m!3178387 () Bool)

(assert (=> b!2759325 m!3178387))

(assert (=> b!2759325 m!3178297))

(declare-fun m!3178389 () Bool)

(assert (=> b!2759325 m!3178389))

(assert (=> b!2759325 m!3178301))

(assert (=> b!2759325 m!3178285))

(assert (=> b!2759325 m!3178307))

(assert (=> b!2759325 m!3178309))

(declare-fun m!3178391 () Bool)

(assert (=> b!2759325 m!3178391))

(assert (=> b!2759325 m!3178291))

(declare-fun m!3178393 () Bool)

(assert (=> b!2759325 m!3178393))

(assert (=> b!2759325 m!3178315))

(assert (=> b!2759325 m!3178317))

(assert (=> b!2759325 m!3178303))

(assert (=> b!2759325 m!3178321))

(declare-fun m!3178395 () Bool)

(assert (=> b!2759325 m!3178395))

(declare-fun m!3178397 () Bool)

(assert (=> bm!179052 m!3178397))

(declare-fun m!3178399 () Bool)

(assert (=> setNonEmpty!22307 m!3178399))

(declare-fun m!3178401 () Bool)

(assert (=> bm!179050 m!3178401))

(declare-fun m!3178403 () Bool)

(assert (=> b!2759341 m!3178403))

(declare-fun m!3178405 () Bool)

(assert (=> b!2759341 m!3178405))

(declare-fun m!3178407 () Bool)

(assert (=> b!2759337 m!3178407))

(check-sat (not bm!179057) b_and!202743 (not b!2759361) (not bm!179070) (not b_next!78713) (not setNonEmpty!22307) (not bm!179069) (not b_next!78709) (not start!267334) (not bm!179063) (not bm!179052) (not b!2759341) (not bm!179062) (not bm!179061) (not bm!179065) (not bm!179068) (not bm!179067) b_and!202747 (not bm!179066) (not b_next!78715) (not bm!179064) (not b!2759347) (not mapNonEmpty!17004) (not bm!179055) (not b!2759325) b_and!202745 (not b!2759315) (not bm!179054) (not b!2759358) (not b!2759354) (not b!2759363) b_and!202749 (not b_next!78711) (not b!2759356) (not b!2759343) (not mapNonEmpty!17003) (not b!2759337) (not b!2759336) (not b!2759334) (not b!2759335) (not b!2759366) (not bm!179051) (not bm!179058) (not bm!179060) (not b!2759342) (not bm!179056) (not bm!179059) (not bm!179053) (not bm!179050))
(check-sat b_and!202743 b_and!202747 (not b_next!78715) (not b_next!78713) (not b_next!78709) b_and!202745 b_and!202749 (not b_next!78711))
(get-model)

(declare-fun d!799884 () Bool)

(declare-fun validCacheMapDown!387 (MutableMap!3640) Bool)

(assert (=> d!799884 (= (valid!2904 cacheDown!939) (validCacheMapDown!387 (cache!3783 cacheDown!939)))))

(declare-fun bs!495389 () Bool)

(assert (= bs!495389 d!799884))

(declare-fun m!3178409 () Bool)

(assert (=> bs!495389 m!3178409))

(assert (=> b!2759315 d!799884))

(declare-fun d!799886 () Bool)

(assert (=> d!799886 true))

(declare-fun lambda!101234 () Int)

(declare-fun flatMap!179 ((InoxSet Context!4562) Int) (InoxSet Context!4562))

(assert (=> d!799886 (= (derivationStepZipper!353 z!3597 lt!979260) (flatMap!179 z!3597 lambda!101234))))

(declare-fun bs!495390 () Bool)

(assert (= bs!495390 d!799886))

(declare-fun m!3178411 () Bool)

(assert (=> bs!495390 m!3178411))

(assert (=> bm!179050 d!799886))

(declare-fun d!799888 () Bool)

(assert (=> d!799888 (= (array_inv!4239 (_keys!4035 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) (bvsge (size!24672 (_keys!4035 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2759341 d!799888))

(declare-fun d!799890 () Bool)

(assert (=> d!799890 (= (array_inv!4241 (_values!4016 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) (bvsge (size!24674 (_values!4016 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2759341 d!799890))

(declare-fun d!799892 () Bool)

(declare-fun list!12050 (Conc!9945) List!32009)

(assert (=> d!799892 (= (list!12049 (_1!18802 lt!979237)) (list!12050 (c!447030 (_1!18802 lt!979237))))))

(declare-fun bs!495391 () Bool)

(assert (= bs!495391 d!799892))

(declare-fun m!3178413 () Bool)

(assert (=> bs!495391 m!3178413))

(assert (=> b!2759356 d!799892))

(declare-fun d!799894 () Bool)

(assert (=> d!799894 (= (++!7898 (++!7898 Nil!31909 (Cons!31909 lt!979212 Nil!31909)) lt!979258) lt!979234)))

(declare-fun lt!979266 () Unit!45821)

(declare-fun choose!16170 (List!32009 C!16284 List!32009 List!32009) Unit!45821)

(assert (=> d!799894 (= lt!979266 (choose!16170 Nil!31909 lt!979212 lt!979258 lt!979234))))

(assert (=> d!799894 (= (++!7898 Nil!31909 (Cons!31909 lt!979212 lt!979258)) lt!979234)))

(assert (=> d!799894 (= (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979212 lt!979258 lt!979234) lt!979266)))

(declare-fun bs!495392 () Bool)

(assert (= bs!495392 d!799894))

(assert (=> bs!495392 m!3178289))

(assert (=> bs!495392 m!3178289))

(declare-fun m!3178415 () Bool)

(assert (=> bs!495392 m!3178415))

(declare-fun m!3178417 () Bool)

(assert (=> bs!495392 m!3178417))

(declare-fun m!3178419 () Bool)

(assert (=> bs!495392 m!3178419))

(assert (=> b!2759356 d!799894))

(declare-fun d!799896 () Bool)

(assert (=> d!799896 (= (head!6133 (drop!1691 lt!979234 0)) (h!37329 (drop!1691 lt!979234 0)))))

(assert (=> b!2759356 d!799896))

(declare-fun d!799898 () Bool)

(declare-fun lt!979269 () C!16284)

(declare-fun contains!5987 (List!32009 C!16284) Bool)

(assert (=> d!799898 (contains!5987 lt!979234 lt!979269)))

(declare-fun e!1739825 () C!16284)

(assert (=> d!799898 (= lt!979269 e!1739825)))

(declare-fun c!447035 () Bool)

(assert (=> d!799898 (= c!447035 (= 0 0))))

(declare-fun e!1739826 () Bool)

(assert (=> d!799898 e!1739826))

(declare-fun res!1155671 () Bool)

(assert (=> d!799898 (=> (not res!1155671) (not e!1739826))))

(assert (=> d!799898 (= res!1155671 (<= 0 0))))

(assert (=> d!799898 (= (apply!7466 lt!979234 0) lt!979269)))

(declare-fun b!2759377 () Bool)

(assert (=> b!2759377 (= e!1739826 (< 0 (size!24675 lt!979234)))))

(declare-fun b!2759378 () Bool)

(assert (=> b!2759378 (= e!1739825 (head!6133 lt!979234))))

(declare-fun b!2759379 () Bool)

(assert (=> b!2759379 (= e!1739825 (apply!7466 (tail!4371 lt!979234) (- 0 1)))))

(assert (= (and d!799898 res!1155671) b!2759377))

(assert (= (and d!799898 c!447035) b!2759378))

(assert (= (and d!799898 (not c!447035)) b!2759379))

(declare-fun m!3178421 () Bool)

(assert (=> d!799898 m!3178421))

(assert (=> b!2759377 m!3178301))

(assert (=> b!2759378 m!3178329))

(assert (=> b!2759379 m!3178283))

(assert (=> b!2759379 m!3178283))

(declare-fun m!3178423 () Bool)

(assert (=> b!2759379 m!3178423))

(assert (=> b!2759356 d!799898))

(declare-fun b!2759388 () Bool)

(declare-fun e!1739832 () List!32009)

(assert (=> b!2759388 (= e!1739832 (Cons!31909 (head!6133 lt!979233) Nil!31909))))

(declare-fun d!799900 () Bool)

(declare-fun e!1739831 () Bool)

(assert (=> d!799900 e!1739831))

(declare-fun res!1155676 () Bool)

(assert (=> d!799900 (=> (not res!1155676) (not e!1739831))))

(declare-fun lt!979272 () List!32009)

(declare-fun content!4493 (List!32009) (InoxSet C!16284))

(assert (=> d!799900 (= res!1155676 (= (content!4493 lt!979272) ((_ map or) (content!4493 Nil!31909) (content!4493 (Cons!31909 (head!6133 lt!979233) Nil!31909)))))))

(assert (=> d!799900 (= lt!979272 e!1739832)))

(declare-fun c!447038 () Bool)

(assert (=> d!799900 (= c!447038 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799900 (= (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)) lt!979272)))

(declare-fun b!2759390 () Bool)

(declare-fun res!1155677 () Bool)

(assert (=> b!2759390 (=> (not res!1155677) (not e!1739831))))

(assert (=> b!2759390 (= res!1155677 (= (size!24675 lt!979272) (+ (size!24675 Nil!31909) (size!24675 (Cons!31909 (head!6133 lt!979233) Nil!31909)))))))

(declare-fun b!2759391 () Bool)

(assert (=> b!2759391 (= e!1739831 (or (not (= (Cons!31909 (head!6133 lt!979233) Nil!31909) Nil!31909)) (= lt!979272 Nil!31909)))))

(declare-fun b!2759389 () Bool)

(assert (=> b!2759389 (= e!1739832 (Cons!31909 (h!37329 Nil!31909) (++!7898 (t!228121 Nil!31909) (Cons!31909 (head!6133 lt!979233) Nil!31909))))))

(assert (= (and d!799900 c!447038) b!2759388))

(assert (= (and d!799900 (not c!447038)) b!2759389))

(assert (= (and d!799900 res!1155676) b!2759390))

(assert (= (and b!2759390 res!1155677) b!2759391))

(declare-fun m!3178425 () Bool)

(assert (=> d!799900 m!3178425))

(declare-fun m!3178427 () Bool)

(assert (=> d!799900 m!3178427))

(declare-fun m!3178429 () Bool)

(assert (=> d!799900 m!3178429))

(declare-fun m!3178431 () Bool)

(assert (=> b!2759390 m!3178431))

(assert (=> b!2759390 m!3178293))

(declare-fun m!3178433 () Bool)

(assert (=> b!2759390 m!3178433))

(declare-fun m!3178435 () Bool)

(assert (=> b!2759389 m!3178435))

(assert (=> b!2759356 d!799900))

(declare-fun d!799902 () Bool)

(assert (=> d!799902 (= (head!6133 (drop!1691 lt!979234 0)) (apply!7466 lt!979234 0))))

(declare-fun lt!979275 () Unit!45821)

(declare-fun choose!16171 (List!32009 Int) Unit!45821)

(assert (=> d!799902 (= lt!979275 (choose!16171 lt!979234 0))))

(declare-fun e!1739835 () Bool)

(assert (=> d!799902 e!1739835))

(declare-fun res!1155680 () Bool)

(assert (=> d!799902 (=> (not res!1155680) (not e!1739835))))

(assert (=> d!799902 (= res!1155680 (>= 0 0))))

(assert (=> d!799902 (= (lemmaDropApply!897 lt!979234 0) lt!979275)))

(declare-fun b!2759394 () Bool)

(assert (=> b!2759394 (= e!1739835 (< 0 (size!24675 lt!979234)))))

(assert (= (and d!799902 res!1155680) b!2759394))

(assert (=> d!799902 m!3178303))

(assert (=> d!799902 m!3178303))

(assert (=> d!799902 m!3178321))

(assert (=> d!799902 m!3178315))

(declare-fun m!3178437 () Bool)

(assert (=> d!799902 m!3178437))

(assert (=> b!2759394 m!3178301))

(assert (=> b!2759356 d!799902))

(declare-fun d!799904 () Bool)

(declare-fun lt!979278 () C!16284)

(assert (=> d!799904 (= lt!979278 (apply!7466 (list!12049 input!5495) 0))))

(declare-fun apply!7467 (Conc!9945 Int) C!16284)

(assert (=> d!799904 (= lt!979278 (apply!7467 (c!447030 input!5495) 0))))

(declare-fun e!1739838 () Bool)

(assert (=> d!799904 e!1739838))

(declare-fun res!1155683 () Bool)

(assert (=> d!799904 (=> (not res!1155683) (not e!1739838))))

(assert (=> d!799904 (= res!1155683 (<= 0 0))))

(assert (=> d!799904 (= (apply!7465 input!5495 0) lt!979278)))

(declare-fun b!2759397 () Bool)

(assert (=> b!2759397 (= e!1739838 (< 0 (size!24676 input!5495)))))

(assert (= (and d!799904 res!1155683) b!2759397))

(assert (=> d!799904 m!3178343))

(assert (=> d!799904 m!3178343))

(declare-fun m!3178439 () Bool)

(assert (=> d!799904 m!3178439))

(declare-fun m!3178441 () Bool)

(assert (=> d!799904 m!3178441))

(assert (=> b!2759397 m!3178351))

(assert (=> b!2759356 d!799904))

(declare-fun d!799906 () Bool)

(assert (=> d!799906 (= (list!12049 (_2!18802 lt!979237)) (list!12050 (c!447030 (_2!18802 lt!979237))))))

(declare-fun bs!495393 () Bool)

(assert (= bs!495393 d!799906))

(declare-fun m!3178443 () Bool)

(assert (=> bs!495393 m!3178443))

(assert (=> b!2759356 d!799906))

(declare-fun d!799908 () Bool)

(assert (=> d!799908 (and (= lt!979247 Nil!31909) (= lt!979225 lt!979234))))

(declare-fun lt!979281 () Unit!45821)

(declare-fun choose!16172 (List!32009 List!32009 List!32009 List!32009) Unit!45821)

(assert (=> d!799908 (= lt!979281 (choose!16172 lt!979247 lt!979225 Nil!31909 lt!979234))))

(assert (=> d!799908 (= (++!7898 lt!979247 lt!979225) (++!7898 Nil!31909 lt!979234))))

(assert (=> d!799908 (= (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979247 lt!979225 Nil!31909 lt!979234) lt!979281)))

(declare-fun bs!495394 () Bool)

(assert (= bs!495394 d!799908))

(declare-fun m!3178445 () Bool)

(assert (=> bs!495394 m!3178445))

(declare-fun m!3178447 () Bool)

(assert (=> bs!495394 m!3178447))

(assert (=> bs!495394 m!3178349))

(assert (=> b!2759356 d!799908))

(declare-fun d!799910 () Bool)

(declare-fun e!1739841 () Bool)

(assert (=> d!799910 e!1739841))

(declare-fun res!1155688 () Bool)

(assert (=> d!799910 (=> (not res!1155688) (not e!1739841))))

(declare-fun lt!979287 () tuple2!31960)

(assert (=> d!799910 (= res!1155688 (isBalanced!3029 (c!447030 (_1!18802 lt!979287))))))

(declare-datatypes ((tuple2!31962 0))(
  ( (tuple2!31963 (_1!18803 Conc!9945) (_2!18803 Conc!9945)) )
))
(declare-fun lt!979286 () tuple2!31962)

(assert (=> d!799910 (= lt!979287 (tuple2!31961 (BalanceConc!19505 (_1!18803 lt!979286)) (BalanceConc!19505 (_2!18803 lt!979286))))))

(declare-fun splitAt!94 (Conc!9945 Int) tuple2!31962)

(assert (=> d!799910 (= lt!979286 (splitAt!94 (c!447030 input!5495) 0))))

(assert (=> d!799910 (isBalanced!3029 (c!447030 input!5495))))

(assert (=> d!799910 (= (splitAt!93 input!5495 0) lt!979287)))

(declare-fun b!2759402 () Bool)

(declare-fun res!1155689 () Bool)

(assert (=> b!2759402 (=> (not res!1155689) (not e!1739841))))

(assert (=> b!2759402 (= res!1155689 (isBalanced!3029 (c!447030 (_2!18802 lt!979287))))))

(declare-fun b!2759403 () Bool)

(declare-fun splitAtIndex!45 (List!32009 Int) tuple2!31958)

(assert (=> b!2759403 (= e!1739841 (= (tuple2!31959 (list!12049 (_1!18802 lt!979287)) (list!12049 (_2!18802 lt!979287))) (splitAtIndex!45 (list!12049 input!5495) 0)))))

(assert (= (and d!799910 res!1155688) b!2759402))

(assert (= (and b!2759402 res!1155689) b!2759403))

(declare-fun m!3178449 () Bool)

(assert (=> d!799910 m!3178449))

(declare-fun m!3178451 () Bool)

(assert (=> d!799910 m!3178451))

(assert (=> d!799910 m!3178369))

(declare-fun m!3178453 () Bool)

(assert (=> b!2759402 m!3178453))

(declare-fun m!3178455 () Bool)

(assert (=> b!2759403 m!3178455))

(declare-fun m!3178457 () Bool)

(assert (=> b!2759403 m!3178457))

(assert (=> b!2759403 m!3178343))

(assert (=> b!2759403 m!3178343))

(declare-fun m!3178459 () Bool)

(assert (=> b!2759403 m!3178459))

(assert (=> b!2759356 d!799910))

(declare-fun d!799912 () Bool)

(declare-fun lt!979290 () Int)

(assert (=> d!799912 (>= lt!979290 0)))

(declare-fun e!1739844 () Int)

(assert (=> d!799912 (= lt!979290 e!1739844)))

(declare-fun c!447041 () Bool)

(assert (=> d!799912 (= c!447041 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799912 (= (size!24675 Nil!31909) lt!979290)))

(declare-fun b!2759408 () Bool)

(assert (=> b!2759408 (= e!1739844 0)))

(declare-fun b!2759409 () Bool)

(assert (=> b!2759409 (= e!1739844 (+ 1 (size!24675 (t!228121 Nil!31909))))))

(assert (= (and d!799912 c!447041) b!2759408))

(assert (= (and d!799912 (not c!447041)) b!2759409))

(declare-fun m!3178461 () Bool)

(assert (=> b!2759409 m!3178461))

(assert (=> b!2759356 d!799912))

(declare-fun b!2759410 () Bool)

(declare-fun e!1739846 () List!32009)

(assert (=> b!2759410 (= e!1739846 lt!979258)))

(declare-fun d!799914 () Bool)

(declare-fun e!1739845 () Bool)

(assert (=> d!799914 e!1739845))

(declare-fun res!1155690 () Bool)

(assert (=> d!799914 (=> (not res!1155690) (not e!1739845))))

(declare-fun lt!979291 () List!32009)

(assert (=> d!799914 (= res!1155690 (= (content!4493 lt!979291) ((_ map or) (content!4493 lt!979236) (content!4493 lt!979258))))))

(assert (=> d!799914 (= lt!979291 e!1739846)))

(declare-fun c!447042 () Bool)

(assert (=> d!799914 (= c!447042 ((_ is Nil!31909) lt!979236))))

(assert (=> d!799914 (= (++!7898 lt!979236 lt!979258) lt!979291)))

(declare-fun b!2759412 () Bool)

(declare-fun res!1155691 () Bool)

(assert (=> b!2759412 (=> (not res!1155691) (not e!1739845))))

(assert (=> b!2759412 (= res!1155691 (= (size!24675 lt!979291) (+ (size!24675 lt!979236) (size!24675 lt!979258))))))

(declare-fun b!2759413 () Bool)

(assert (=> b!2759413 (= e!1739845 (or (not (= lt!979258 Nil!31909)) (= lt!979291 lt!979236)))))

(declare-fun b!2759411 () Bool)

(assert (=> b!2759411 (= e!1739846 (Cons!31909 (h!37329 lt!979236) (++!7898 (t!228121 lt!979236) lt!979258)))))

(assert (= (and d!799914 c!447042) b!2759410))

(assert (= (and d!799914 (not c!447042)) b!2759411))

(assert (= (and d!799914 res!1155690) b!2759412))

(assert (= (and b!2759412 res!1155691) b!2759413))

(declare-fun m!3178463 () Bool)

(assert (=> d!799914 m!3178463))

(declare-fun m!3178465 () Bool)

(assert (=> d!799914 m!3178465))

(declare-fun m!3178467 () Bool)

(assert (=> d!799914 m!3178467))

(declare-fun m!3178469 () Bool)

(assert (=> b!2759412 m!3178469))

(declare-fun m!3178471 () Bool)

(assert (=> b!2759412 m!3178471))

(declare-fun m!3178473 () Bool)

(assert (=> b!2759412 m!3178473))

(declare-fun m!3178475 () Bool)

(assert (=> b!2759411 m!3178475))

(assert (=> b!2759356 d!799914))

(declare-fun b!2759422 () Bool)

(declare-fun e!1739855 () Bool)

(declare-fun e!1739853 () Bool)

(assert (=> b!2759422 (= e!1739855 e!1739853)))

(declare-fun res!1155701 () Bool)

(assert (=> b!2759422 (=> (not res!1155701) (not e!1739853))))

(assert (=> b!2759422 (= res!1155701 (not ((_ is Nil!31909) lt!979234)))))

(declare-fun b!2759425 () Bool)

(declare-fun e!1739854 () Bool)

(assert (=> b!2759425 (= e!1739854 (>= (size!24675 lt!979234) (size!24675 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)))))))

(declare-fun b!2759423 () Bool)

(declare-fun res!1155703 () Bool)

(assert (=> b!2759423 (=> (not res!1155703) (not e!1739853))))

(assert (=> b!2759423 (= res!1155703 (= (head!6133 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909))) (head!6133 lt!979234)))))

(declare-fun d!799916 () Bool)

(assert (=> d!799916 e!1739854))

(declare-fun res!1155700 () Bool)

(assert (=> d!799916 (=> res!1155700 e!1739854)))

(declare-fun lt!979294 () Bool)

(assert (=> d!799916 (= res!1155700 (not lt!979294))))

(assert (=> d!799916 (= lt!979294 e!1739855)))

(declare-fun res!1155702 () Bool)

(assert (=> d!799916 (=> res!1155702 e!1739855)))

(assert (=> d!799916 (= res!1155702 ((_ is Nil!31909) (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909))))))

(assert (=> d!799916 (= (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909)) lt!979234) lt!979294)))

(declare-fun b!2759424 () Bool)

(assert (=> b!2759424 (= e!1739853 (isPrefix!2537 (tail!4371 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979233) Nil!31909))) (tail!4371 lt!979234)))))

(assert (= (and d!799916 (not res!1155702)) b!2759422))

(assert (= (and b!2759422 res!1155701) b!2759423))

(assert (= (and b!2759423 res!1155703) b!2759424))

(assert (= (and d!799916 (not res!1155700)) b!2759425))

(assert (=> b!2759425 m!3178301))

(assert (=> b!2759425 m!3178285))

(declare-fun m!3178477 () Bool)

(assert (=> b!2759425 m!3178477))

(assert (=> b!2759423 m!3178285))

(declare-fun m!3178479 () Bool)

(assert (=> b!2759423 m!3178479))

(assert (=> b!2759423 m!3178329))

(assert (=> b!2759424 m!3178285))

(declare-fun m!3178481 () Bool)

(assert (=> b!2759424 m!3178481))

(assert (=> b!2759424 m!3178283))

(assert (=> b!2759424 m!3178481))

(assert (=> b!2759424 m!3178283))

(declare-fun m!3178483 () Bool)

(assert (=> b!2759424 m!3178483))

(assert (=> b!2759356 d!799916))

(declare-fun b!2759426 () Bool)

(declare-fun e!1739857 () List!32009)

(assert (=> b!2759426 (= e!1739857 (Cons!31909 lt!979212 Nil!31909))))

(declare-fun d!799918 () Bool)

(declare-fun e!1739856 () Bool)

(assert (=> d!799918 e!1739856))

(declare-fun res!1155704 () Bool)

(assert (=> d!799918 (=> (not res!1155704) (not e!1739856))))

(declare-fun lt!979295 () List!32009)

(assert (=> d!799918 (= res!1155704 (= (content!4493 lt!979295) ((_ map or) (content!4493 Nil!31909) (content!4493 (Cons!31909 lt!979212 Nil!31909)))))))

(assert (=> d!799918 (= lt!979295 e!1739857)))

(declare-fun c!447043 () Bool)

(assert (=> d!799918 (= c!447043 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799918 (= (++!7898 Nil!31909 (Cons!31909 lt!979212 Nil!31909)) lt!979295)))

(declare-fun b!2759428 () Bool)

(declare-fun res!1155705 () Bool)

(assert (=> b!2759428 (=> (not res!1155705) (not e!1739856))))

(assert (=> b!2759428 (= res!1155705 (= (size!24675 lt!979295) (+ (size!24675 Nil!31909) (size!24675 (Cons!31909 lt!979212 Nil!31909)))))))

(declare-fun b!2759429 () Bool)

(assert (=> b!2759429 (= e!1739856 (or (not (= (Cons!31909 lt!979212 Nil!31909) Nil!31909)) (= lt!979295 Nil!31909)))))

(declare-fun b!2759427 () Bool)

(assert (=> b!2759427 (= e!1739857 (Cons!31909 (h!37329 Nil!31909) (++!7898 (t!228121 Nil!31909) (Cons!31909 lt!979212 Nil!31909))))))

(assert (= (and d!799918 c!447043) b!2759426))

(assert (= (and d!799918 (not c!447043)) b!2759427))

(assert (= (and d!799918 res!1155704) b!2759428))

(assert (= (and b!2759428 res!1155705) b!2759429))

(declare-fun m!3178485 () Bool)

(assert (=> d!799918 m!3178485))

(assert (=> d!799918 m!3178427))

(declare-fun m!3178487 () Bool)

(assert (=> d!799918 m!3178487))

(declare-fun m!3178489 () Bool)

(assert (=> b!2759428 m!3178489))

(assert (=> b!2759428 m!3178293))

(declare-fun m!3178491 () Bool)

(assert (=> b!2759428 m!3178491))

(declare-fun m!3178493 () Bool)

(assert (=> b!2759427 m!3178493))

(assert (=> b!2759356 d!799918))

(declare-fun d!799920 () Bool)

(declare-fun lt!979296 () Int)

(assert (=> d!799920 (>= lt!979296 0)))

(declare-fun e!1739858 () Int)

(assert (=> d!799920 (= lt!979296 e!1739858)))

(declare-fun c!447044 () Bool)

(assert (=> d!799920 (= c!447044 ((_ is Nil!31909) lt!979234))))

(assert (=> d!799920 (= (size!24675 lt!979234) lt!979296)))

(declare-fun b!2759430 () Bool)

(assert (=> b!2759430 (= e!1739858 0)))

(declare-fun b!2759431 () Bool)

(assert (=> b!2759431 (= e!1739858 (+ 1 (size!24675 (t!228121 lt!979234))))))

(assert (= (and d!799920 c!447044) b!2759430))

(assert (= (and d!799920 (not c!447044)) b!2759431))

(declare-fun m!3178495 () Bool)

(assert (=> b!2759431 m!3178495))

(assert (=> b!2759356 d!799920))

(declare-fun d!799922 () Bool)

(assert (=> d!799922 (= (tail!4371 lt!979234) (t!228121 lt!979234))))

(assert (=> b!2759356 d!799922))

(declare-fun d!799924 () Bool)

(assert (=> d!799924 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 (getSuffix!1222 lt!979234 Nil!31909)) Nil!31909)) lt!979234)))

(declare-fun lt!979299 () Unit!45821)

(declare-fun choose!16173 (List!32009 List!32009) Unit!45821)

(assert (=> d!799924 (= lt!979299 (choose!16173 Nil!31909 lt!979234))))

(assert (=> d!799924 (isPrefix!2537 Nil!31909 lt!979234)))

(assert (=> d!799924 (= (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979234) lt!979299)))

(declare-fun bs!495395 () Bool)

(assert (= bs!495395 d!799924))

(declare-fun m!3178497 () Bool)

(assert (=> bs!495395 m!3178497))

(declare-fun m!3178499 () Bool)

(assert (=> bs!495395 m!3178499))

(declare-fun m!3178501 () Bool)

(assert (=> bs!495395 m!3178501))

(declare-fun m!3178503 () Bool)

(assert (=> bs!495395 m!3178503))

(assert (=> bs!495395 m!3178371))

(declare-fun m!3178505 () Bool)

(assert (=> bs!495395 m!3178505))

(assert (=> bs!495395 m!3178371))

(assert (=> bs!495395 m!3178497))

(assert (=> b!2759356 d!799924))

(declare-fun d!799926 () Bool)

(assert (=> d!799926 (<= (size!24675 Nil!31909) (size!24675 lt!979234))))

(declare-fun lt!979302 () Unit!45821)

(declare-fun choose!16174 (List!32009 List!32009) Unit!45821)

(assert (=> d!799926 (= lt!979302 (choose!16174 Nil!31909 lt!979234))))

(assert (=> d!799926 (isPrefix!2537 Nil!31909 lt!979234)))

(assert (=> d!799926 (= (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979234) lt!979302)))

(declare-fun bs!495396 () Bool)

(assert (= bs!495396 d!799926))

(assert (=> bs!495396 m!3178293))

(assert (=> bs!495396 m!3178301))

(declare-fun m!3178507 () Bool)

(assert (=> bs!495396 m!3178507))

(assert (=> bs!495396 m!3178501))

(assert (=> b!2759356 d!799926))

(declare-fun d!799928 () Bool)

(assert (=> d!799928 (= (head!6133 lt!979233) (h!37329 lt!979233))))

(assert (=> b!2759356 d!799928))

(declare-fun d!799930 () Bool)

(declare-fun e!1739873 () Bool)

(assert (=> d!799930 e!1739873))

(declare-fun res!1155708 () Bool)

(assert (=> d!799930 (=> (not res!1155708) (not e!1739873))))

(declare-fun lt!979305 () List!32009)

(assert (=> d!799930 (= res!1155708 (= ((_ map implies) (content!4493 lt!979305) (content!4493 lt!979234)) ((as const (InoxSet C!16284)) true)))))

(declare-fun e!1739872 () List!32009)

(assert (=> d!799930 (= lt!979305 e!1739872)))

(declare-fun c!447054 () Bool)

(assert (=> d!799930 (= c!447054 ((_ is Nil!31909) lt!979234))))

(assert (=> d!799930 (= (drop!1691 lt!979234 0) lt!979305)))

(declare-fun bm!179073 () Bool)

(declare-fun call!179078 () Int)

(assert (=> bm!179073 (= call!179078 (size!24675 lt!979234))))

(declare-fun b!2759450 () Bool)

(declare-fun e!1739870 () Int)

(declare-fun e!1739869 () Int)

(assert (=> b!2759450 (= e!1739870 e!1739869)))

(declare-fun c!447056 () Bool)

(assert (=> b!2759450 (= c!447056 (>= 0 call!179078))))

(declare-fun b!2759451 () Bool)

(declare-fun e!1739871 () List!32009)

(assert (=> b!2759451 (= e!1739871 (drop!1691 (t!228121 lt!979234) (- 0 1)))))

(declare-fun b!2759452 () Bool)

(assert (=> b!2759452 (= e!1739872 e!1739871)))

(declare-fun c!447055 () Bool)

(assert (=> b!2759452 (= c!447055 (<= 0 0))))

(declare-fun b!2759453 () Bool)

(assert (=> b!2759453 (= e!1739870 call!179078)))

(declare-fun b!2759454 () Bool)

(assert (=> b!2759454 (= e!1739869 0)))

(declare-fun b!2759455 () Bool)

(assert (=> b!2759455 (= e!1739869 (- call!179078 0))))

(declare-fun b!2759456 () Bool)

(assert (=> b!2759456 (= e!1739873 (= (size!24675 lt!979305) e!1739870))))

(declare-fun c!447053 () Bool)

(assert (=> b!2759456 (= c!447053 (<= 0 0))))

(declare-fun b!2759457 () Bool)

(assert (=> b!2759457 (= e!1739872 Nil!31909)))

(declare-fun b!2759458 () Bool)

(assert (=> b!2759458 (= e!1739871 lt!979234)))

(assert (= (and d!799930 c!447054) b!2759457))

(assert (= (and d!799930 (not c!447054)) b!2759452))

(assert (= (and b!2759452 c!447055) b!2759458))

(assert (= (and b!2759452 (not c!447055)) b!2759451))

(assert (= (and d!799930 res!1155708) b!2759456))

(assert (= (and b!2759456 c!447053) b!2759453))

(assert (= (and b!2759456 (not c!447053)) b!2759450))

(assert (= (and b!2759450 c!447056) b!2759454))

(assert (= (and b!2759450 (not c!447056)) b!2759455))

(assert (= (or b!2759453 b!2759450 b!2759455) bm!179073))

(declare-fun m!3178509 () Bool)

(assert (=> d!799930 m!3178509))

(declare-fun m!3178511 () Bool)

(assert (=> d!799930 m!3178511))

(assert (=> bm!179073 m!3178301))

(declare-fun m!3178513 () Bool)

(assert (=> b!2759451 m!3178513))

(declare-fun m!3178515 () Bool)

(assert (=> b!2759456 m!3178515))

(assert (=> b!2759356 d!799930))

(declare-fun b!2759459 () Bool)

(declare-fun e!1739876 () Bool)

(declare-fun e!1739874 () Bool)

(assert (=> b!2759459 (= e!1739876 e!1739874)))

(declare-fun res!1155710 () Bool)

(assert (=> b!2759459 (=> (not res!1155710) (not e!1739874))))

(assert (=> b!2759459 (= res!1155710 (not ((_ is Nil!31909) lt!979234)))))

(declare-fun b!2759462 () Bool)

(declare-fun e!1739875 () Bool)

(assert (=> b!2759462 (= e!1739875 (>= (size!24675 lt!979234) (size!24675 lt!979234)))))

(declare-fun b!2759460 () Bool)

(declare-fun res!1155712 () Bool)

(assert (=> b!2759460 (=> (not res!1155712) (not e!1739874))))

(assert (=> b!2759460 (= res!1155712 (= (head!6133 lt!979234) (head!6133 lt!979234)))))

(declare-fun d!799932 () Bool)

(assert (=> d!799932 e!1739875))

(declare-fun res!1155709 () Bool)

(assert (=> d!799932 (=> res!1155709 e!1739875)))

(declare-fun lt!979306 () Bool)

(assert (=> d!799932 (= res!1155709 (not lt!979306))))

(assert (=> d!799932 (= lt!979306 e!1739876)))

(declare-fun res!1155711 () Bool)

(assert (=> d!799932 (=> res!1155711 e!1739876)))

(assert (=> d!799932 (= res!1155711 ((_ is Nil!31909) lt!979234))))

(assert (=> d!799932 (= (isPrefix!2537 lt!979234 lt!979234) lt!979306)))

(declare-fun b!2759461 () Bool)

(assert (=> b!2759461 (= e!1739874 (isPrefix!2537 (tail!4371 lt!979234) (tail!4371 lt!979234)))))

(assert (= (and d!799932 (not res!1155711)) b!2759459))

(assert (= (and b!2759459 res!1155710) b!2759460))

(assert (= (and b!2759460 res!1155712) b!2759461))

(assert (= (and d!799932 (not res!1155709)) b!2759462))

(assert (=> b!2759462 m!3178301))

(assert (=> b!2759462 m!3178301))

(assert (=> b!2759460 m!3178329))

(assert (=> b!2759460 m!3178329))

(assert (=> b!2759461 m!3178283))

(assert (=> b!2759461 m!3178283))

(assert (=> b!2759461 m!3178283))

(assert (=> b!2759461 m!3178283))

(declare-fun m!3178517 () Bool)

(assert (=> b!2759461 m!3178517))

(assert (=> bm!179055 d!799932))

(declare-fun d!799934 () Bool)

(declare-fun lambda!101237 () Int)

(declare-fun exists!960 ((InoxSet Context!4562) Int) Bool)

(assert (=> d!799934 (= (nullableZipper!617 z!3597) (exists!960 z!3597 lambda!101237))))

(declare-fun bs!495397 () Bool)

(assert (= bs!495397 d!799934))

(declare-fun m!3178519 () Bool)

(assert (=> bs!495397 m!3178519))

(assert (=> bm!179057 d!799934))

(assert (=> b!2759342 d!799920))

(declare-fun b!2759463 () Bool)

(declare-fun e!1739878 () List!32009)

(assert (=> b!2759463 (= e!1739878 lt!979204)))

(declare-fun d!799936 () Bool)

(declare-fun e!1739877 () Bool)

(assert (=> d!799936 e!1739877))

(declare-fun res!1155713 () Bool)

(assert (=> d!799936 (=> (not res!1155713) (not e!1739877))))

(declare-fun lt!979307 () List!32009)

(assert (=> d!799936 (= res!1155713 (= (content!4493 lt!979307) ((_ map or) (content!4493 lt!979207) (content!4493 lt!979204))))))

(assert (=> d!799936 (= lt!979307 e!1739878)))

(declare-fun c!447059 () Bool)

(assert (=> d!799936 (= c!447059 ((_ is Nil!31909) lt!979207))))

(assert (=> d!799936 (= (++!7898 lt!979207 lt!979204) lt!979307)))

(declare-fun b!2759465 () Bool)

(declare-fun res!1155714 () Bool)

(assert (=> b!2759465 (=> (not res!1155714) (not e!1739877))))

(assert (=> b!2759465 (= res!1155714 (= (size!24675 lt!979307) (+ (size!24675 lt!979207) (size!24675 lt!979204))))))

(declare-fun b!2759466 () Bool)

(assert (=> b!2759466 (= e!1739877 (or (not (= lt!979204 Nil!31909)) (= lt!979307 lt!979207)))))

(declare-fun b!2759464 () Bool)

(assert (=> b!2759464 (= e!1739878 (Cons!31909 (h!37329 lt!979207) (++!7898 (t!228121 lt!979207) lt!979204)))))

(assert (= (and d!799936 c!447059) b!2759463))

(assert (= (and d!799936 (not c!447059)) b!2759464))

(assert (= (and d!799936 res!1155713) b!2759465))

(assert (= (and b!2759465 res!1155714) b!2759466))

(declare-fun m!3178521 () Bool)

(assert (=> d!799936 m!3178521))

(declare-fun m!3178523 () Bool)

(assert (=> d!799936 m!3178523))

(declare-fun m!3178525 () Bool)

(assert (=> d!799936 m!3178525))

(declare-fun m!3178527 () Bool)

(assert (=> b!2759465 m!3178527))

(declare-fun m!3178529 () Bool)

(assert (=> b!2759465 m!3178529))

(declare-fun m!3178531 () Bool)

(assert (=> b!2759465 m!3178531))

(declare-fun m!3178533 () Bool)

(assert (=> b!2759464 m!3178533))

(assert (=> b!2759342 d!799936))

(assert (=> b!2759342 d!799912))

(assert (=> b!2759342 d!799928))

(assert (=> b!2759342 d!799916))

(declare-fun d!799938 () Bool)

(assert (=> d!799938 (= (head!6133 lt!979234) (h!37329 lt!979234))))

(assert (=> b!2759342 d!799938))

(assert (=> b!2759342 d!799900))

(declare-fun b!2759467 () Bool)

(declare-fun e!1739880 () List!32009)

(assert (=> b!2759467 (= e!1739880 (Cons!31909 lt!979260 Nil!31909))))

(declare-fun d!799940 () Bool)

(declare-fun e!1739879 () Bool)

(assert (=> d!799940 e!1739879))

(declare-fun res!1155715 () Bool)

(assert (=> d!799940 (=> (not res!1155715) (not e!1739879))))

(declare-fun lt!979308 () List!32009)

(assert (=> d!799940 (= res!1155715 (= (content!4493 lt!979308) ((_ map or) (content!4493 Nil!31909) (content!4493 (Cons!31909 lt!979260 Nil!31909)))))))

(assert (=> d!799940 (= lt!979308 e!1739880)))

(declare-fun c!447060 () Bool)

(assert (=> d!799940 (= c!447060 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799940 (= (++!7898 Nil!31909 (Cons!31909 lt!979260 Nil!31909)) lt!979308)))

(declare-fun b!2759469 () Bool)

(declare-fun res!1155716 () Bool)

(assert (=> b!2759469 (=> (not res!1155716) (not e!1739879))))

(assert (=> b!2759469 (= res!1155716 (= (size!24675 lt!979308) (+ (size!24675 Nil!31909) (size!24675 (Cons!31909 lt!979260 Nil!31909)))))))

(declare-fun b!2759470 () Bool)

(assert (=> b!2759470 (= e!1739879 (or (not (= (Cons!31909 lt!979260 Nil!31909) Nil!31909)) (= lt!979308 Nil!31909)))))

(declare-fun b!2759468 () Bool)

(assert (=> b!2759468 (= e!1739880 (Cons!31909 (h!37329 Nil!31909) (++!7898 (t!228121 Nil!31909) (Cons!31909 lt!979260 Nil!31909))))))

(assert (= (and d!799940 c!447060) b!2759467))

(assert (= (and d!799940 (not c!447060)) b!2759468))

(assert (= (and d!799940 res!1155715) b!2759469))

(assert (= (and b!2759469 res!1155716) b!2759470))

(declare-fun m!3178535 () Bool)

(assert (=> d!799940 m!3178535))

(assert (=> d!799940 m!3178427))

(declare-fun m!3178537 () Bool)

(assert (=> d!799940 m!3178537))

(declare-fun m!3178539 () Bool)

(assert (=> b!2759469 m!3178539))

(assert (=> b!2759469 m!3178293))

(declare-fun m!3178541 () Bool)

(assert (=> b!2759469 m!3178541))

(declare-fun m!3178543 () Bool)

(assert (=> b!2759468 m!3178543))

(assert (=> b!2759342 d!799940))

(assert (=> b!2759342 d!799922))

(assert (=> b!2759342 d!799924))

(declare-fun d!799942 () Bool)

(assert (=> d!799942 (= (++!7898 (++!7898 Nil!31909 (Cons!31909 lt!979260 Nil!31909)) lt!979204) lt!979234)))

(declare-fun lt!979309 () Unit!45821)

(assert (=> d!799942 (= lt!979309 (choose!16170 Nil!31909 lt!979260 lt!979204 lt!979234))))

(assert (=> d!799942 (= (++!7898 Nil!31909 (Cons!31909 lt!979260 lt!979204)) lt!979234)))

(assert (=> d!799942 (= (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979260 lt!979204 lt!979234) lt!979309)))

(declare-fun bs!495398 () Bool)

(assert (= bs!495398 d!799942))

(assert (=> bs!495398 m!3178327))

(assert (=> bs!495398 m!3178327))

(declare-fun m!3178545 () Bool)

(assert (=> bs!495398 m!3178545))

(declare-fun m!3178547 () Bool)

(assert (=> bs!495398 m!3178547))

(declare-fun m!3178549 () Bool)

(assert (=> bs!495398 m!3178549))

(assert (=> b!2759342 d!799942))

(assert (=> b!2759342 d!799926))

(declare-fun d!799944 () Bool)

(declare-fun e!1739883 () Bool)

(assert (=> d!799944 e!1739883))

(declare-fun res!1155721 () Bool)

(assert (=> d!799944 (=> (not res!1155721) (not e!1739883))))

(declare-fun lt!979312 () tuple3!4700)

(assert (=> d!799944 (= res!1155721 (valid!2905 (_2!18799 lt!979312)))))

(declare-fun choose!16175 (CacheUp!2346 CacheDown!2466 (InoxSet Context!4562) List!32009 Int List!32009 BalanceConc!19504 Int) tuple3!4700)

(assert (=> d!799944 (= lt!979312 (choose!16175 (ite c!447027 (_2!18800 lt!979205) (_2!18800 lt!979215)) (ite c!447027 (_3!2821 lt!979205) (_3!2821 lt!979215)) (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213))))

(assert (=> d!799944 (= (++!7898 lt!979236 lt!979258) (list!12049 input!5495))))

(assert (=> d!799944 (= (findLongestMatchInnerZipperFastMem!17 (ite c!447027 (_2!18800 lt!979205) (_2!18800 lt!979215)) (ite c!447027 (_3!2821 lt!979205) (_3!2821 lt!979215)) (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213) lt!979312)))

(declare-fun b!2759475 () Bool)

(declare-fun res!1155722 () Bool)

(assert (=> b!2759475 (=> (not res!1155722) (not e!1739883))))

(assert (=> b!2759475 (= res!1155722 (valid!2904 (_3!2820 lt!979312)))))

(declare-fun b!2759476 () Bool)

(assert (=> b!2759476 (= e!1739883 (= (_1!18799 lt!979312) (findLongestMatchInnerZipperFast!21 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213)))))

(assert (= (and d!799944 res!1155721) b!2759475))

(assert (= (and b!2759475 res!1155722) b!2759476))

(declare-fun m!3178551 () Bool)

(assert (=> d!799944 m!3178551))

(declare-fun m!3178553 () Bool)

(assert (=> d!799944 m!3178553))

(assert (=> d!799944 m!3178305))

(assert (=> d!799944 m!3178343))

(declare-fun m!3178555 () Bool)

(assert (=> b!2759475 m!3178555))

(assert (=> b!2759476 m!3178375))

(assert (=> bm!179056 d!799944))

(declare-fun d!799946 () Bool)

(assert (=> d!799946 (= (valid!2904 (_3!2820 lt!979254)) (validCacheMapDown!387 (cache!3783 (_3!2820 lt!979254))))))

(declare-fun bs!495399 () Bool)

(assert (= bs!495399 d!799946))

(declare-fun m!3178557 () Bool)

(assert (=> bs!495399 m!3178557))

(assert (=> b!2759336 d!799946))

(assert (=> b!2759325 d!799916))

(assert (=> b!2759325 d!799920))

(declare-fun b!2759477 () Bool)

(declare-fun e!1739885 () List!32009)

(assert (=> b!2759477 (= e!1739885 (Cons!31909 lt!979262 Nil!31909))))

(declare-fun d!799948 () Bool)

(declare-fun e!1739884 () Bool)

(assert (=> d!799948 e!1739884))

(declare-fun res!1155723 () Bool)

(assert (=> d!799948 (=> (not res!1155723) (not e!1739884))))

(declare-fun lt!979313 () List!32009)

(assert (=> d!799948 (= res!1155723 (= (content!4493 lt!979313) ((_ map or) (content!4493 Nil!31909) (content!4493 (Cons!31909 lt!979262 Nil!31909)))))))

(assert (=> d!799948 (= lt!979313 e!1739885)))

(declare-fun c!447061 () Bool)

(assert (=> d!799948 (= c!447061 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799948 (= (++!7898 Nil!31909 (Cons!31909 lt!979262 Nil!31909)) lt!979313)))

(declare-fun b!2759479 () Bool)

(declare-fun res!1155724 () Bool)

(assert (=> b!2759479 (=> (not res!1155724) (not e!1739884))))

(assert (=> b!2759479 (= res!1155724 (= (size!24675 lt!979313) (+ (size!24675 Nil!31909) (size!24675 (Cons!31909 lt!979262 Nil!31909)))))))

(declare-fun b!2759480 () Bool)

(assert (=> b!2759480 (= e!1739884 (or (not (= (Cons!31909 lt!979262 Nil!31909) Nil!31909)) (= lt!979313 Nil!31909)))))

(declare-fun b!2759478 () Bool)

(assert (=> b!2759478 (= e!1739885 (Cons!31909 (h!37329 Nil!31909) (++!7898 (t!228121 Nil!31909) (Cons!31909 lt!979262 Nil!31909))))))

(assert (= (and d!799948 c!447061) b!2759477))

(assert (= (and d!799948 (not c!447061)) b!2759478))

(assert (= (and d!799948 res!1155723) b!2759479))

(assert (= (and b!2759479 res!1155724) b!2759480))

(declare-fun m!3178559 () Bool)

(assert (=> d!799948 m!3178559))

(assert (=> d!799948 m!3178427))

(declare-fun m!3178561 () Bool)

(assert (=> d!799948 m!3178561))

(declare-fun m!3178563 () Bool)

(assert (=> b!2759479 m!3178563))

(assert (=> b!2759479 m!3178293))

(declare-fun m!3178565 () Bool)

(assert (=> b!2759479 m!3178565))

(declare-fun m!3178567 () Bool)

(assert (=> b!2759478 m!3178567))

(assert (=> b!2759325 d!799948))

(declare-fun d!799950 () Bool)

(assert (=> d!799950 (= (list!12049 (_2!18802 lt!979219)) (list!12050 (c!447030 (_2!18802 lt!979219))))))

(declare-fun bs!495400 () Bool)

(assert (= bs!495400 d!799950))

(declare-fun m!3178569 () Bool)

(assert (=> bs!495400 m!3178569))

(assert (=> b!2759325 d!799950))

(assert (=> b!2759325 d!799896))

(assert (=> b!2759325 d!799898))

(assert (=> b!2759325 d!799900))

(assert (=> b!2759325 d!799904))

(assert (=> b!2759325 d!799910))

(declare-fun b!2759481 () Bool)

(declare-fun e!1739887 () List!32009)

(assert (=> b!2759481 (= e!1739887 lt!979253)))

(declare-fun d!799952 () Bool)

(declare-fun e!1739886 () Bool)

(assert (=> d!799952 e!1739886))

(declare-fun res!1155725 () Bool)

(assert (=> d!799952 (=> (not res!1155725) (not e!1739886))))

(declare-fun lt!979314 () List!32009)

(assert (=> d!799952 (= res!1155725 (= (content!4493 lt!979314) ((_ map or) (content!4493 lt!979224) (content!4493 lt!979253))))))

(assert (=> d!799952 (= lt!979314 e!1739887)))

(declare-fun c!447062 () Bool)

(assert (=> d!799952 (= c!447062 ((_ is Nil!31909) lt!979224))))

(assert (=> d!799952 (= (++!7898 lt!979224 lt!979253) lt!979314)))

(declare-fun b!2759483 () Bool)

(declare-fun res!1155726 () Bool)

(assert (=> b!2759483 (=> (not res!1155726) (not e!1739886))))

(assert (=> b!2759483 (= res!1155726 (= (size!24675 lt!979314) (+ (size!24675 lt!979224) (size!24675 lt!979253))))))

(declare-fun b!2759484 () Bool)

(assert (=> b!2759484 (= e!1739886 (or (not (= lt!979253 Nil!31909)) (= lt!979314 lt!979224)))))

(declare-fun b!2759482 () Bool)

(assert (=> b!2759482 (= e!1739887 (Cons!31909 (h!37329 lt!979224) (++!7898 (t!228121 lt!979224) lt!979253)))))

(assert (= (and d!799952 c!447062) b!2759481))

(assert (= (and d!799952 (not c!447062)) b!2759482))

(assert (= (and d!799952 res!1155725) b!2759483))

(assert (= (and b!2759483 res!1155726) b!2759484))

(declare-fun m!3178571 () Bool)

(assert (=> d!799952 m!3178571))

(declare-fun m!3178573 () Bool)

(assert (=> d!799952 m!3178573))

(declare-fun m!3178575 () Bool)

(assert (=> d!799952 m!3178575))

(declare-fun m!3178577 () Bool)

(assert (=> b!2759483 m!3178577))

(declare-fun m!3178579 () Bool)

(assert (=> b!2759483 m!3178579))

(declare-fun m!3178581 () Bool)

(assert (=> b!2759483 m!3178581))

(declare-fun m!3178583 () Bool)

(assert (=> b!2759482 m!3178583))

(assert (=> b!2759325 d!799952))

(declare-fun d!799954 () Bool)

(assert (=> d!799954 (= (list!12049 (_1!18802 lt!979219)) (list!12050 (c!447030 (_1!18802 lt!979219))))))

(declare-fun bs!495401 () Bool)

(assert (= bs!495401 d!799954))

(declare-fun m!3178585 () Bool)

(assert (=> bs!495401 m!3178585))

(assert (=> b!2759325 d!799954))

(assert (=> b!2759325 d!799902))

(declare-fun d!799956 () Bool)

(assert (=> d!799956 (and (= lt!979240 Nil!31909) (= lt!979197 lt!979234))))

(declare-fun lt!979315 () Unit!45821)

(assert (=> d!799956 (= lt!979315 (choose!16172 lt!979240 lt!979197 Nil!31909 lt!979234))))

(assert (=> d!799956 (= (++!7898 lt!979240 lt!979197) (++!7898 Nil!31909 lt!979234))))

(assert (=> d!799956 (= (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979240 lt!979197 Nil!31909 lt!979234) lt!979315)))

(declare-fun bs!495402 () Bool)

(assert (= bs!495402 d!799956))

(declare-fun m!3178587 () Bool)

(assert (=> bs!495402 m!3178587))

(declare-fun m!3178589 () Bool)

(assert (=> bs!495402 m!3178589))

(assert (=> bs!495402 m!3178349))

(assert (=> b!2759325 d!799956))

(assert (=> b!2759325 d!799922))

(assert (=> b!2759325 d!799924))

(assert (=> b!2759325 d!799926))

(assert (=> b!2759325 d!799912))

(declare-fun d!799958 () Bool)

(assert (=> d!799958 (= (++!7898 (++!7898 Nil!31909 (Cons!31909 lt!979262 Nil!31909)) lt!979253) lt!979234)))

(declare-fun lt!979316 () Unit!45821)

(assert (=> d!799958 (= lt!979316 (choose!16170 Nil!31909 lt!979262 lt!979253 lt!979234))))

(assert (=> d!799958 (= (++!7898 Nil!31909 (Cons!31909 lt!979262 lt!979253)) lt!979234)))

(assert (=> d!799958 (= (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979262 lt!979253 lt!979234) lt!979316)))

(declare-fun bs!495403 () Bool)

(assert (= bs!495403 d!799958))

(assert (=> bs!495403 m!3178387))

(assert (=> bs!495403 m!3178387))

(declare-fun m!3178591 () Bool)

(assert (=> bs!495403 m!3178591))

(declare-fun m!3178593 () Bool)

(assert (=> bs!495403 m!3178593))

(declare-fun m!3178595 () Bool)

(assert (=> bs!495403 m!3178595))

(assert (=> b!2759325 d!799958))

(assert (=> b!2759325 d!799928))

(assert (=> b!2759325 d!799930))

(declare-fun d!799960 () Bool)

(assert (=> d!799960 (= (array_inv!4239 (_keys!4034 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) (bvsge (size!24672 (_keys!4034 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2759335 d!799960))

(declare-fun d!799962 () Bool)

(assert (=> d!799962 (= (array_inv!4240 (_values!4015 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) (bvsge (size!24673 (_values!4015 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2759335 d!799962))

(declare-fun d!799964 () Bool)

(assert (=> d!799964 (isPrefix!2537 lt!979234 lt!979234)))

(declare-fun lt!979319 () Unit!45821)

(declare-fun choose!16176 (List!32009 List!32009) Unit!45821)

(assert (=> d!799964 (= lt!979319 (choose!16176 lt!979234 lt!979234))))

(assert (=> d!799964 (= (lemmaIsPrefixRefl!1664 lt!979234 lt!979234) lt!979319)))

(declare-fun bs!495404 () Bool)

(assert (= bs!495404 d!799964))

(assert (=> bs!495404 m!3178279))

(declare-fun m!3178597 () Bool)

(assert (=> bs!495404 m!3178597))

(assert (=> bm!179064 d!799964))

(declare-fun b!2759509 () Bool)

(declare-fun e!1739901 () Unit!45821)

(declare-fun Unit!45829 () Unit!45821)

(assert (=> b!2759509 (= e!1739901 Unit!45829)))

(declare-fun b!2759510 () Bool)

(declare-fun e!1739902 () Int)

(assert (=> b!2759510 (= e!1739902 0)))

(declare-fun bm!179094 () Bool)

(declare-fun call!179102 () (InoxSet Context!4562))

(declare-fun call!179107 () C!16284)

(assert (=> bm!179094 (= call!179102 (derivationStepZipper!353 call!179064 call!179107))))

(declare-fun b!2759511 () Bool)

(declare-fun e!1739900 () Int)

(declare-fun e!1739904 () Int)

(assert (=> b!2759511 (= e!1739900 e!1739904)))

(declare-fun c!447077 () Bool)

(assert (=> b!2759511 (= c!447077 (= 1 lt!979213))))

(declare-fun b!2759512 () Bool)

(declare-fun e!1739905 () List!32009)

(declare-fun call!179103 () List!32009)

(assert (=> b!2759512 (= e!1739905 call!179103)))

(declare-fun call!179101 () Bool)

(declare-fun lt!979443 () List!32009)

(declare-fun bm!179095 () Bool)

(declare-fun lt!979418 () List!32009)

(declare-fun lt!979427 () List!32009)

(declare-fun lt!979417 () List!32009)

(assert (=> bm!179095 (= call!179101 (isPrefix!2537 (ite c!447077 lt!979443 lt!979427) (ite c!447077 lt!979418 lt!979417)))))

(declare-fun bm!179096 () Bool)

(declare-fun call!179105 () List!32009)

(assert (=> bm!179096 (= call!179105 (tail!4371 lt!979253))))

(declare-fun call!179104 () Int)

(declare-fun bm!179097 () Bool)

(declare-fun call!179099 () List!32009)

(assert (=> bm!179097 (= call!179104 (findLongestMatchInnerZipperFast!21 call!179102 call!179099 (+ 1 1) call!179105 input!5495 lt!979213))))

(declare-fun bm!179098 () Bool)

(assert (=> bm!179098 (= call!179107 (apply!7465 input!5495 1))))

(declare-fun b!2759514 () Bool)

(assert (=> b!2759514 (= e!1739905 (list!12049 input!5495))))

(declare-fun b!2759515 () Bool)

(declare-fun e!1739903 () Int)

(assert (=> b!2759515 (= e!1739903 call!179104)))

(declare-fun bm!179099 () Bool)

(declare-fun call!179108 () Unit!45821)

(assert (=> bm!179099 (= call!179108 (lemmaIsPrefixRefl!1664 (ite c!447077 lt!979443 lt!979427) (ite c!447077 lt!979418 lt!979417)))))

(declare-fun b!2759516 () Bool)

(assert (=> b!2759516 (= e!1739900 0)))

(declare-fun b!2759517 () Bool)

(declare-fun lt!979419 () Int)

(assert (=> b!2759517 (= e!1739903 (ite (= lt!979419 0) 1 lt!979419))))

(assert (=> b!2759517 (= lt!979419 call!179104)))

(declare-fun bm!179100 () Bool)

(declare-fun lt!979429 () tuple2!31960)

(assert (=> bm!179100 (= call!179103 (list!12049 (ite c!447077 input!5495 (_1!18802 lt!979429))))))

(declare-fun bm!179101 () Bool)

(declare-fun call!179106 () Bool)

(assert (=> bm!179101 (= call!179106 (nullableZipper!617 call!179064))))

(declare-fun bm!179102 () Bool)

(assert (=> bm!179102 (= call!179099 (++!7898 lt!979224 (Cons!31909 call!179107 Nil!31909)))))

(declare-fun d!799966 () Bool)

(declare-fun lt!979423 () Int)

(assert (=> d!799966 (= (size!24675 (_1!18801 (findLongestMatchInnerZipper!8 call!179064 lt!979224 1 lt!979253 (list!12049 input!5495) lt!979213))) lt!979423)))

(assert (=> d!799966 (= lt!979423 e!1739900)))

(declare-fun c!447078 () Bool)

(assert (=> d!799966 (= c!447078 (lostCauseZipper!426 call!179064))))

(declare-fun lt!979414 () Unit!45821)

(declare-fun Unit!45830 () Unit!45821)

(assert (=> d!799966 (= lt!979414 Unit!45830)))

(assert (=> d!799966 (= (getSuffix!1222 (list!12049 input!5495) lt!979224) lt!979253)))

(declare-fun lt!979404 () Unit!45821)

(declare-fun lt!979425 () Unit!45821)

(assert (=> d!799966 (= lt!979404 lt!979425)))

(declare-fun lt!979421 () List!32009)

(assert (=> d!799966 (= lt!979253 lt!979421)))

(assert (=> d!799966 (= lt!979425 (lemmaSamePrefixThenSameSuffix!1124 lt!979224 lt!979253 lt!979224 lt!979421 (list!12049 input!5495)))))

(assert (=> d!799966 (= lt!979421 (getSuffix!1222 (list!12049 input!5495) lt!979224))))

(declare-fun lt!979442 () Unit!45821)

(declare-fun lt!979435 () Unit!45821)

(assert (=> d!799966 (= lt!979442 lt!979435)))

(assert (=> d!799966 (isPrefix!2537 lt!979224 (++!7898 lt!979224 lt!979253))))

(assert (=> d!799966 (= lt!979435 (lemmaConcatTwoListThenFirstIsPrefix!1650 lt!979224 lt!979253))))

(assert (=> d!799966 (= (++!7898 lt!979224 lt!979253) (list!12049 input!5495))))

(assert (=> d!799966 (= (findLongestMatchInnerZipperFast!21 call!179064 lt!979224 1 lt!979253 input!5495 lt!979213) lt!979423)))

(declare-fun b!2759513 () Bool)

(declare-fun c!447080 () Bool)

(assert (=> b!2759513 (= c!447080 call!179106)))

(declare-fun lt!979428 () Unit!45821)

(declare-fun lt!979444 () Unit!45821)

(assert (=> b!2759513 (= lt!979428 lt!979444)))

(declare-fun lt!979430 () List!32009)

(assert (=> b!2759513 (= lt!979430 lt!979224)))

(declare-fun call!179100 () Unit!45821)

(assert (=> b!2759513 (= lt!979444 call!179100)))

(assert (=> b!2759513 (= lt!979430 call!179103)))

(declare-fun lt!979438 () Unit!45821)

(declare-fun lt!979410 () Unit!45821)

(assert (=> b!2759513 (= lt!979438 lt!979410)))

(assert (=> b!2759513 call!179101))

(assert (=> b!2759513 (= lt!979410 call!179108)))

(assert (=> b!2759513 (= lt!979418 call!179103)))

(assert (=> b!2759513 (= lt!979443 call!179103)))

(assert (=> b!2759513 (= e!1739904 e!1739902)))

(declare-fun bm!179103 () Bool)

(declare-fun c!447075 () Bool)

(assert (=> bm!179103 (= c!447075 c!447077)))

(declare-fun lt!979407 () List!32009)

(assert (=> bm!179103 (= call!179100 (lemmaIsPrefixSameLengthThenSameList!445 (ite c!447077 lt!979430 lt!979407) lt!979224 e!1739905))))

(declare-fun b!2759518 () Bool)

(declare-fun Unit!45831 () Unit!45821)

(assert (=> b!2759518 (= e!1739901 Unit!45831)))

(assert (=> b!2759518 (= lt!979427 (list!12049 input!5495))))

(assert (=> b!2759518 (= lt!979417 (list!12049 input!5495))))

(declare-fun lt!979426 () Unit!45821)

(assert (=> b!2759518 (= lt!979426 call!179108)))

(assert (=> b!2759518 call!179101))

(declare-fun lt!979416 () Unit!45821)

(assert (=> b!2759518 (= lt!979416 lt!979426)))

(assert (=> b!2759518 (= lt!979407 (list!12049 input!5495))))

(declare-fun lt!979409 () Unit!45821)

(assert (=> b!2759518 (= lt!979409 call!179100)))

(assert (=> b!2759518 (= lt!979407 lt!979224)))

(declare-fun lt!979439 () Unit!45821)

(assert (=> b!2759518 (= lt!979439 lt!979409)))

(assert (=> b!2759518 false))

(declare-fun b!2759519 () Bool)

(assert (=> b!2759519 (= e!1739902 1)))

(declare-fun b!2759520 () Bool)

(declare-fun c!447079 () Bool)

(assert (=> b!2759520 (= c!447079 call!179106)))

(declare-fun lt!979411 () Unit!45821)

(declare-fun lt!979413 () Unit!45821)

(assert (=> b!2759520 (= lt!979411 lt!979413)))

(declare-fun lt!979440 () C!16284)

(declare-fun lt!979437 () List!32009)

(declare-fun lt!979420 () List!32009)

(assert (=> b!2759520 (= (++!7898 (++!7898 lt!979224 (Cons!31909 lt!979440 Nil!31909)) lt!979437) lt!979420)))

(assert (=> b!2759520 (= lt!979413 (lemmaMoveElementToOtherListKeepsConcatEq!854 lt!979224 lt!979440 lt!979437 lt!979420))))

(assert (=> b!2759520 (= lt!979420 (list!12049 input!5495))))

(assert (=> b!2759520 (= lt!979437 (tail!4371 lt!979253))))

(assert (=> b!2759520 (= lt!979440 (apply!7465 input!5495 1))))

(declare-fun lt!979433 () Unit!45821)

(declare-fun lt!979431 () Unit!45821)

(assert (=> b!2759520 (= lt!979433 lt!979431)))

(declare-fun lt!979408 () List!32009)

(assert (=> b!2759520 (isPrefix!2537 (++!7898 lt!979224 (Cons!31909 (head!6133 (getSuffix!1222 lt!979408 lt!979224)) Nil!31909)) lt!979408)))

(assert (=> b!2759520 (= lt!979431 (lemmaAddHeadSuffixToPrefixStillPrefix!442 lt!979224 lt!979408))))

(assert (=> b!2759520 (= lt!979408 (list!12049 input!5495))))

(declare-fun lt!979415 () Unit!45821)

(assert (=> b!2759520 (= lt!979415 e!1739901)))

(declare-fun c!447076 () Bool)

(assert (=> b!2759520 (= c!447076 (= (size!24675 lt!979224) (size!24676 input!5495)))))

(declare-fun lt!979412 () Unit!45821)

(declare-fun lt!979405 () Unit!45821)

(assert (=> b!2759520 (= lt!979412 lt!979405)))

(declare-fun lt!979434 () List!32009)

(assert (=> b!2759520 (<= (size!24675 lt!979224) (size!24675 lt!979434))))

(assert (=> b!2759520 (= lt!979405 (lemmaIsPrefixThenSmallerEqSize!245 lt!979224 lt!979434))))

(assert (=> b!2759520 (= lt!979434 (list!12049 input!5495))))

(declare-fun lt!979445 () Unit!45821)

(declare-fun lt!979436 () Unit!45821)

(assert (=> b!2759520 (= lt!979445 lt!979436)))

(declare-fun lt!979441 () List!32009)

(assert (=> b!2759520 (= (head!6133 (drop!1691 lt!979441 1)) (apply!7466 lt!979441 1))))

(assert (=> b!2759520 (= lt!979436 (lemmaDropApply!897 lt!979441 1))))

(assert (=> b!2759520 (= lt!979441 (list!12049 input!5495))))

(declare-fun lt!979432 () Unit!45821)

(declare-fun lt!979406 () Unit!45821)

(assert (=> b!2759520 (= lt!979432 lt!979406)))

(declare-fun lt!979422 () List!32009)

(declare-fun lt!979424 () List!32009)

(assert (=> b!2759520 (and (= lt!979422 lt!979224) (= lt!979424 lt!979253))))

(assert (=> b!2759520 (= lt!979406 (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979422 lt!979424 lt!979224 lt!979253))))

(assert (=> b!2759520 (= lt!979424 (list!12049 (_2!18802 lt!979429)))))

(assert (=> b!2759520 (= lt!979422 call!179103)))

(assert (=> b!2759520 (= lt!979429 (splitAt!93 input!5495 1))))

(assert (=> b!2759520 (= e!1739904 e!1739903)))

(assert (= (and d!799966 c!447078) b!2759516))

(assert (= (and d!799966 (not c!447078)) b!2759511))

(assert (= (and b!2759511 c!447077) b!2759513))

(assert (= (and b!2759511 (not c!447077)) b!2759520))

(assert (= (and b!2759513 c!447080) b!2759519))

(assert (= (and b!2759513 (not c!447080)) b!2759510))

(assert (= (and b!2759520 c!447076) b!2759518))

(assert (= (and b!2759520 (not c!447076)) b!2759509))

(assert (= (and b!2759520 c!447079) b!2759517))

(assert (= (and b!2759520 (not c!447079)) b!2759515))

(assert (= (or b!2759517 b!2759515) bm!179098))

(assert (= (or b!2759517 b!2759515) bm!179096))

(assert (= (or b!2759517 b!2759515) bm!179102))

(assert (= (or b!2759517 b!2759515) bm!179094))

(assert (= (or b!2759517 b!2759515) bm!179097))

(assert (= (or b!2759513 b!2759520) bm!179101))

(assert (= (or b!2759513 b!2759520) bm!179100))

(assert (= (or b!2759513 b!2759518) bm!179099))

(assert (= (or b!2759513 b!2759518) bm!179095))

(assert (= (or b!2759513 b!2759518) bm!179103))

(assert (= (and bm!179103 c!447075) b!2759512))

(assert (= (and bm!179103 (not c!447075)) b!2759514))

(declare-fun m!3178599 () Bool)

(assert (=> b!2759520 m!3178599))

(declare-fun m!3178601 () Bool)

(assert (=> b!2759520 m!3178601))

(declare-fun m!3178603 () Bool)

(assert (=> b!2759520 m!3178603))

(declare-fun m!3178605 () Bool)

(assert (=> b!2759520 m!3178605))

(assert (=> b!2759520 m!3178343))

(declare-fun m!3178607 () Bool)

(assert (=> b!2759520 m!3178607))

(declare-fun m!3178609 () Bool)

(assert (=> b!2759520 m!3178609))

(declare-fun m!3178611 () Bool)

(assert (=> b!2759520 m!3178611))

(declare-fun m!3178613 () Bool)

(assert (=> b!2759520 m!3178613))

(declare-fun m!3178615 () Bool)

(assert (=> b!2759520 m!3178615))

(assert (=> b!2759520 m!3178613))

(declare-fun m!3178617 () Bool)

(assert (=> b!2759520 m!3178617))

(declare-fun m!3178619 () Bool)

(assert (=> b!2759520 m!3178619))

(declare-fun m!3178621 () Bool)

(assert (=> b!2759520 m!3178621))

(declare-fun m!3178623 () Bool)

(assert (=> b!2759520 m!3178623))

(declare-fun m!3178625 () Bool)

(assert (=> b!2759520 m!3178625))

(assert (=> b!2759520 m!3178601))

(declare-fun m!3178627 () Bool)

(assert (=> b!2759520 m!3178627))

(declare-fun m!3178629 () Bool)

(assert (=> b!2759520 m!3178629))

(declare-fun m!3178631 () Bool)

(assert (=> b!2759520 m!3178631))

(declare-fun m!3178633 () Bool)

(assert (=> b!2759520 m!3178633))

(declare-fun m!3178635 () Bool)

(assert (=> b!2759520 m!3178635))

(assert (=> b!2759520 m!3178579))

(assert (=> b!2759520 m!3178351))

(assert (=> b!2759520 m!3178619))

(assert (=> b!2759520 m!3178607))

(declare-fun m!3178637 () Bool)

(assert (=> bm!179099 m!3178637))

(assert (=> b!2759514 m!3178343))

(declare-fun m!3178639 () Bool)

(assert (=> bm!179101 m!3178639))

(declare-fun m!3178641 () Bool)

(assert (=> bm!179094 m!3178641))

(assert (=> bm!179098 m!3178633))

(declare-fun m!3178643 () Bool)

(assert (=> bm!179095 m!3178643))

(declare-fun m!3178645 () Bool)

(assert (=> bm!179102 m!3178645))

(assert (=> bm!179096 m!3178631))

(declare-fun m!3178647 () Bool)

(assert (=> bm!179097 m!3178647))

(declare-fun m!3178649 () Bool)

(assert (=> bm!179103 m!3178649))

(declare-fun m!3178651 () Bool)

(assert (=> bm!179100 m!3178651))

(assert (=> d!799966 m!3178343))

(assert (=> d!799966 m!3178343))

(declare-fun m!3178653 () Bool)

(assert (=> d!799966 m!3178653))

(declare-fun m!3178655 () Bool)

(assert (=> d!799966 m!3178655))

(assert (=> d!799966 m!3178343))

(declare-fun m!3178657 () Bool)

(assert (=> d!799966 m!3178657))

(declare-fun m!3178659 () Bool)

(assert (=> d!799966 m!3178659))

(assert (=> d!799966 m!3178385))

(declare-fun m!3178661 () Bool)

(assert (=> d!799966 m!3178661))

(assert (=> d!799966 m!3178343))

(declare-fun m!3178663 () Bool)

(assert (=> d!799966 m!3178663))

(assert (=> d!799966 m!3178385))

(declare-fun m!3178665 () Bool)

(assert (=> d!799966 m!3178665))

(assert (=> b!2759518 m!3178343))

(assert (=> bm!179069 d!799966))

(declare-fun d!799968 () Bool)

(assert (=> d!799968 (= lt!979234 Nil!31909)))

(declare-fun lt!979448 () Unit!45821)

(declare-fun choose!16177 (List!32009 List!32009 List!32009) Unit!45821)

(assert (=> d!799968 (= lt!979448 (choose!16177 lt!979234 Nil!31909 lt!979234))))

(assert (=> d!799968 (isPrefix!2537 lt!979234 lt!979234)))

(assert (=> d!799968 (= (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 Nil!31909 lt!979234) lt!979448)))

(declare-fun bs!495405 () Bool)

(assert (= bs!495405 d!799968))

(declare-fun m!3178667 () Bool)

(assert (=> bs!495405 m!3178667))

(assert (=> bs!495405 m!3178279))

(assert (=> bm!179065 d!799968))

(declare-fun d!799970 () Bool)

(assert (=> d!799970 (= (valid!2904 (_3!2820 lt!979201)) (validCacheMapDown!387 (cache!3783 (_3!2820 lt!979201))))))

(declare-fun bs!495406 () Bool)

(assert (= bs!495406 d!799970))

(declare-fun m!3178669 () Bool)

(assert (=> bs!495406 m!3178669))

(assert (=> b!2759337 d!799970))

(assert (=> bm!179066 d!799964))

(declare-fun d!799972 () Bool)

(assert (=> d!799972 (= (valid!2904 (ite c!447027 (_3!2820 lt!979221) (_3!2820 lt!979228))) (validCacheMapDown!387 (cache!3783 (ite c!447027 (_3!2820 lt!979221) (_3!2820 lt!979228)))))))

(declare-fun bs!495407 () Bool)

(assert (= bs!495407 d!799972))

(declare-fun m!3178671 () Bool)

(assert (=> bs!495407 m!3178671))

(assert (=> bm!179053 d!799972))

(declare-fun d!799974 () Bool)

(declare-fun e!1739906 () Bool)

(assert (=> d!799974 e!1739906))

(declare-fun res!1155727 () Bool)

(assert (=> d!799974 (=> (not res!1155727) (not e!1739906))))

(declare-fun lt!979449 () tuple3!4700)

(assert (=> d!799974 (= res!1155727 (valid!2905 (_2!18799 lt!979449)))))

(assert (=> d!799974 (= lt!979449 (choose!16175 (_2!18799 lt!979254) (_3!2820 lt!979254) z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213))))

(assert (=> d!799974 (= (++!7898 Nil!31909 lt!979234) (list!12049 input!5495))))

(assert (=> d!799974 (= (findLongestMatchInnerZipperFastMem!17 (_2!18799 lt!979254) (_3!2820 lt!979254) z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213) lt!979449)))

(declare-fun b!2759521 () Bool)

(declare-fun res!1155728 () Bool)

(assert (=> b!2759521 (=> (not res!1155728) (not e!1739906))))

(assert (=> b!2759521 (= res!1155728 (valid!2904 (_3!2820 lt!979449)))))

(declare-fun b!2759522 () Bool)

(assert (=> b!2759522 (= e!1739906 (= (_1!18799 lt!979449) (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213)))))

(assert (= (and d!799974 res!1155727) b!2759521))

(assert (= (and b!2759521 res!1155728) b!2759522))

(declare-fun m!3178673 () Bool)

(assert (=> d!799974 m!3178673))

(declare-fun m!3178675 () Bool)

(assert (=> d!799974 m!3178675))

(assert (=> d!799974 m!3178349))

(assert (=> d!799974 m!3178343))

(declare-fun m!3178677 () Bool)

(assert (=> b!2759521 m!3178677))

(assert (=> b!2759522 m!3178323))

(assert (=> b!2759363 d!799974))

(declare-fun d!799976 () Bool)

(declare-fun lt!979452 () List!32009)

(assert (=> d!799976 (= (++!7898 Nil!31909 lt!979452) lt!979234)))

(declare-fun e!1739909 () List!32009)

(assert (=> d!799976 (= lt!979452 e!1739909)))

(declare-fun c!447083 () Bool)

(assert (=> d!799976 (= c!447083 ((_ is Cons!31909) Nil!31909))))

(assert (=> d!799976 (>= (size!24675 lt!979234) (size!24675 Nil!31909))))

(assert (=> d!799976 (= (getSuffix!1222 lt!979234 Nil!31909) lt!979452)))

(declare-fun b!2759527 () Bool)

(assert (=> b!2759527 (= e!1739909 (getSuffix!1222 (tail!4371 lt!979234) (t!228121 Nil!31909)))))

(declare-fun b!2759528 () Bool)

(assert (=> b!2759528 (= e!1739909 lt!979234)))

(assert (= (and d!799976 c!447083) b!2759527))

(assert (= (and d!799976 (not c!447083)) b!2759528))

(declare-fun m!3178679 () Bool)

(assert (=> d!799976 m!3178679))

(assert (=> d!799976 m!3178301))

(assert (=> d!799976 m!3178293))

(assert (=> b!2759527 m!3178283))

(assert (=> b!2759527 m!3178283))

(declare-fun m!3178681 () Bool)

(assert (=> b!2759527 m!3178681))

(assert (=> b!2759363 d!799976))

(declare-fun d!799978 () Bool)

(declare-fun validCacheMapUp!356 (MutableMap!3641) Bool)

(assert (=> d!799978 (= (valid!2905 (_2!18799 lt!979254)) (validCacheMapUp!356 (cache!3784 (_2!18799 lt!979254))))))

(declare-fun bs!495408 () Bool)

(assert (= bs!495408 d!799978))

(declare-fun m!3178683 () Bool)

(assert (=> bs!495408 m!3178683))

(assert (=> b!2759363 d!799978))

(declare-fun d!799980 () Bool)

(assert (=> d!799980 (= lt!979234 lt!979233)))

(declare-fun lt!979455 () Unit!45821)

(declare-fun choose!16178 (List!32009 List!32009 List!32009 List!32009 List!32009) Unit!45821)

(assert (=> d!799980 (= lt!979455 (choose!16178 Nil!31909 lt!979234 Nil!31909 lt!979233 lt!979234))))

(assert (=> d!799980 (isPrefix!2537 Nil!31909 lt!979234)))

(assert (=> d!799980 (= (lemmaSamePrefixThenSameSuffix!1124 Nil!31909 lt!979234 Nil!31909 lt!979233 lt!979234) lt!979455)))

(declare-fun bs!495409 () Bool)

(assert (= bs!495409 d!799980))

(declare-fun m!3178685 () Bool)

(assert (=> bs!495409 m!3178685))

(assert (=> bs!495409 m!3178501))

(assert (=> b!2759363 d!799980))

(declare-fun bs!495410 () Bool)

(declare-fun d!799982 () Bool)

(assert (= bs!495410 (and d!799982 d!799934)))

(declare-fun lambda!101250 () Int)

(assert (=> bs!495410 (not (= lambda!101250 lambda!101237))))

(declare-fun bs!495411 () Bool)

(declare-fun b!2759533 () Bool)

(assert (= bs!495411 (and b!2759533 d!799934)))

(declare-fun lambda!101251 () Int)

(assert (=> bs!495411 (not (= lambda!101251 lambda!101237))))

(declare-fun bs!495412 () Bool)

(assert (= bs!495412 (and b!2759533 d!799982)))

(assert (=> bs!495412 (not (= lambda!101251 lambda!101250))))

(declare-fun bs!495413 () Bool)

(declare-fun b!2759534 () Bool)

(assert (= bs!495413 (and b!2759534 d!799934)))

(declare-fun lambda!101252 () Int)

(assert (=> bs!495413 (not (= lambda!101252 lambda!101237))))

(declare-fun bs!495414 () Bool)

(assert (= bs!495414 (and b!2759534 d!799982)))

(assert (=> bs!495414 (not (= lambda!101252 lambda!101250))))

(declare-fun bs!495415 () Bool)

(assert (= bs!495415 (and b!2759534 b!2759533)))

(assert (=> bs!495415 (= lambda!101252 lambda!101251)))

(declare-fun lt!979478 () Bool)

(declare-datatypes ((Option!6255 0))(
  ( (None!6254) (Some!6254 (v!33519 List!32009)) )
))
(declare-fun isEmpty!18075 (Option!6255) Bool)

(declare-fun getLanguageWitness!178 ((InoxSet Context!4562)) Option!6255)

(assert (=> d!799982 (= lt!979478 (isEmpty!18075 (getLanguageWitness!178 z!3597)))))

(declare-fun forall!6603 ((InoxSet Context!4562) Int) Bool)

(assert (=> d!799982 (= lt!979478 (forall!6603 z!3597 lambda!101250))))

(declare-fun lt!979473 () Unit!45821)

(declare-fun e!1739916 () Unit!45821)

(assert (=> d!799982 (= lt!979473 e!1739916)))

(declare-fun c!447094 () Bool)

(assert (=> d!799982 (= c!447094 (not (forall!6603 z!3597 lambda!101250)))))

(assert (=> d!799982 (= (lostCauseZipper!426 z!3597) lt!979478)))

(declare-fun Unit!45832 () Unit!45821)

(assert (=> b!2759533 (= e!1739916 Unit!45832)))

(declare-datatypes ((List!32010 0))(
  ( (Nil!31910) (Cons!31910 (h!37330 Context!4562) (t!228123 List!32010)) )
))
(declare-fun lt!979476 () List!32010)

(declare-fun call!179114 () List!32010)

(assert (=> b!2759533 (= lt!979476 call!179114)))

(declare-fun lt!979475 () Unit!45821)

(declare-fun lemmaNotForallThenExists!77 (List!32010 Int) Unit!45821)

(assert (=> b!2759533 (= lt!979475 (lemmaNotForallThenExists!77 lt!979476 lambda!101250))))

(declare-fun call!179113 () Bool)

(assert (=> b!2759533 call!179113))

(declare-fun lt!979477 () Unit!45821)

(assert (=> b!2759533 (= lt!979477 lt!979475)))

(declare-fun lt!979472 () List!32010)

(declare-fun bm!179108 () Bool)

(declare-fun exists!961 (List!32010 Int) Bool)

(assert (=> bm!179108 (= call!179113 (exists!961 (ite c!447094 lt!979476 lt!979472) (ite c!447094 lambda!101251 lambda!101252)))))

(declare-fun bm!179109 () Bool)

(declare-fun toList!1826 ((InoxSet Context!4562)) List!32010)

(assert (=> bm!179109 (= call!179114 (toList!1826 z!3597))))

(declare-fun Unit!45833 () Unit!45821)

(assert (=> b!2759534 (= e!1739916 Unit!45833)))

(assert (=> b!2759534 (= lt!979472 call!179114)))

(declare-fun lt!979474 () Unit!45821)

(declare-fun lemmaForallThenNotExists!77 (List!32010 Int) Unit!45821)

(assert (=> b!2759534 (= lt!979474 (lemmaForallThenNotExists!77 lt!979472 lambda!101250))))

(assert (=> b!2759534 (not call!179113)))

(declare-fun lt!979479 () Unit!45821)

(assert (=> b!2759534 (= lt!979479 lt!979474)))

(assert (= (and d!799982 c!447094) b!2759533))

(assert (= (and d!799982 (not c!447094)) b!2759534))

(assert (= (or b!2759533 b!2759534) bm!179108))

(assert (= (or b!2759533 b!2759534) bm!179109))

(declare-fun m!3178687 () Bool)

(assert (=> bm!179109 m!3178687))

(declare-fun m!3178689 () Bool)

(assert (=> d!799982 m!3178689))

(assert (=> d!799982 m!3178689))

(declare-fun m!3178691 () Bool)

(assert (=> d!799982 m!3178691))

(declare-fun m!3178693 () Bool)

(assert (=> d!799982 m!3178693))

(assert (=> d!799982 m!3178693))

(declare-fun m!3178695 () Bool)

(assert (=> b!2759533 m!3178695))

(declare-fun m!3178697 () Bool)

(assert (=> bm!179108 m!3178697))

(declare-fun m!3178699 () Bool)

(assert (=> b!2759534 m!3178699))

(assert (=> b!2759363 d!799982))

(declare-fun d!799984 () Bool)

(assert (=> d!799984 (= (list!12049 input!5495) (list!12050 (c!447030 input!5495)))))

(declare-fun bs!495416 () Bool)

(assert (= bs!495416 d!799984))

(declare-fun m!3178701 () Bool)

(assert (=> bs!495416 m!3178701))

(assert (=> b!2759363 d!799984))

(declare-fun d!799986 () Bool)

(declare-fun e!1739917 () Bool)

(assert (=> d!799986 e!1739917))

(declare-fun res!1155729 () Bool)

(assert (=> d!799986 (=> (not res!1155729) (not e!1739917))))

(declare-fun lt!979481 () tuple2!31960)

(assert (=> d!799986 (= res!1155729 (isBalanced!3029 (c!447030 (_1!18802 lt!979481))))))

(declare-fun lt!979480 () tuple2!31962)

(assert (=> d!799986 (= lt!979481 (tuple2!31961 (BalanceConc!19505 (_1!18803 lt!979480)) (BalanceConc!19505 (_2!18803 lt!979480))))))

(assert (=> d!799986 (= lt!979480 (splitAt!94 (c!447030 input!5495) (_1!18799 lt!979254)))))

(assert (=> d!799986 (isBalanced!3029 (c!447030 input!5495))))

(assert (=> d!799986 (= (splitAt!93 input!5495 (_1!18799 lt!979254)) lt!979481)))

(declare-fun b!2759535 () Bool)

(declare-fun res!1155730 () Bool)

(assert (=> b!2759535 (=> (not res!1155730) (not e!1739917))))

(assert (=> b!2759535 (= res!1155730 (isBalanced!3029 (c!447030 (_2!18802 lt!979481))))))

(declare-fun b!2759536 () Bool)

(assert (=> b!2759536 (= e!1739917 (= (tuple2!31959 (list!12049 (_1!18802 lt!979481)) (list!12049 (_2!18802 lt!979481))) (splitAtIndex!45 (list!12049 input!5495) (_1!18799 lt!979254))))))

(assert (= (and d!799986 res!1155729) b!2759535))

(assert (= (and b!2759535 res!1155730) b!2759536))

(declare-fun m!3178703 () Bool)

(assert (=> d!799986 m!3178703))

(declare-fun m!3178705 () Bool)

(assert (=> d!799986 m!3178705))

(assert (=> d!799986 m!3178369))

(declare-fun m!3178707 () Bool)

(assert (=> b!2759535 m!3178707))

(declare-fun m!3178709 () Bool)

(assert (=> b!2759536 m!3178709))

(declare-fun m!3178711 () Bool)

(assert (=> b!2759536 m!3178711))

(assert (=> b!2759536 m!3178343))

(assert (=> b!2759536 m!3178343))

(declare-fun m!3178713 () Bool)

(assert (=> b!2759536 m!3178713))

(assert (=> b!2759363 d!799986))

(declare-fun b!2759566 () Bool)

(declare-fun e!1739939 () tuple2!31958)

(declare-fun e!1739937 () tuple2!31958)

(assert (=> b!2759566 (= e!1739939 e!1739937)))

(declare-fun lt!979558 () tuple2!31958)

(declare-fun call!179135 () tuple2!31958)

(assert (=> b!2759566 (= lt!979558 call!179135)))

(declare-fun c!447112 () Bool)

(assert (=> b!2759566 (= c!447112 (isEmpty!18074 (_1!18801 lt!979558)))))

(declare-fun bm!179126 () Bool)

(declare-fun call!179138 () Unit!45821)

(assert (=> bm!179126 (= call!179138 (lemmaIsPrefixRefl!1664 lt!979234 lt!979234))))

(declare-fun b!2759567 () Bool)

(declare-fun e!1739936 () tuple2!31958)

(declare-fun e!1739938 () tuple2!31958)

(assert (=> b!2759567 (= e!1739936 e!1739938)))

(declare-fun c!447111 () Bool)

(assert (=> b!2759567 (= c!447111 (= 0 lt!979213))))

(declare-fun b!2759568 () Bool)

(declare-fun e!1739940 () Unit!45821)

(declare-fun Unit!45834 () Unit!45821)

(assert (=> b!2759568 (= e!1739940 Unit!45834)))

(declare-fun b!2759569 () Bool)

(declare-fun e!1739934 () tuple2!31958)

(assert (=> b!2759569 (= e!1739934 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun call!179134 () (InoxSet Context!4562))

(declare-fun call!179137 () List!32009)

(declare-fun bm!179127 () Bool)

(declare-fun lt!979545 () List!32009)

(assert (=> bm!179127 (= call!179135 (findLongestMatchInnerZipper!8 call!179134 lt!979545 (+ 0 1) call!179137 lt!979234 lt!979213))))

(declare-fun b!2759570 () Bool)

(declare-fun c!447108 () Bool)

(declare-fun call!179131 () Bool)

(assert (=> b!2759570 (= c!447108 call!179131)))

(declare-fun lt!979550 () Unit!45821)

(declare-fun lt!979553 () Unit!45821)

(assert (=> b!2759570 (= lt!979550 lt!979553)))

(declare-fun lt!979534 () C!16284)

(declare-fun lt!979551 () List!32009)

(assert (=> b!2759570 (= (++!7898 (++!7898 Nil!31909 (Cons!31909 lt!979534 Nil!31909)) lt!979551) lt!979234)))

(assert (=> b!2759570 (= lt!979553 (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979534 lt!979551 lt!979234))))

(assert (=> b!2759570 (= lt!979551 (tail!4371 lt!979234))))

(assert (=> b!2759570 (= lt!979534 (head!6133 lt!979234))))

(declare-fun lt!979535 () Unit!45821)

(declare-fun lt!979541 () Unit!45821)

(assert (=> b!2759570 (= lt!979535 lt!979541)))

(assert (=> b!2759570 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 (getSuffix!1222 lt!979234 Nil!31909)) Nil!31909)) lt!979234)))

(assert (=> b!2759570 (= lt!979541 (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979234))))

(assert (=> b!2759570 (= lt!979545 (++!7898 Nil!31909 (Cons!31909 (head!6133 lt!979234) Nil!31909)))))

(declare-fun lt!979537 () Unit!45821)

(assert (=> b!2759570 (= lt!979537 e!1739940)))

(declare-fun c!447107 () Bool)

(assert (=> b!2759570 (= c!447107 (= (size!24675 Nil!31909) (size!24675 lt!979234)))))

(declare-fun lt!979549 () Unit!45821)

(declare-fun lt!979552 () Unit!45821)

(assert (=> b!2759570 (= lt!979549 lt!979552)))

(assert (=> b!2759570 (<= (size!24675 Nil!31909) (size!24675 lt!979234))))

(assert (=> b!2759570 (= lt!979552 (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979234))))

(assert (=> b!2759570 (= e!1739938 e!1739939)))

(declare-fun b!2759571 () Bool)

(declare-fun e!1739935 () Bool)

(declare-fun e!1739941 () Bool)

(assert (=> b!2759571 (= e!1739935 e!1739941)))

(declare-fun res!1155735 () Bool)

(assert (=> b!2759571 (=> res!1155735 e!1739941)))

(declare-fun lt!979559 () tuple2!31958)

(assert (=> b!2759571 (= res!1155735 (isEmpty!18074 (_1!18801 lt!979559)))))

(declare-fun b!2759565 () Bool)

(declare-fun Unit!45835 () Unit!45821)

(assert (=> b!2759565 (= e!1739940 Unit!45835)))

(declare-fun lt!979555 () Unit!45821)

(assert (=> b!2759565 (= lt!979555 call!179138)))

(declare-fun call!179133 () Bool)

(assert (=> b!2759565 call!179133))

(declare-fun lt!979540 () Unit!45821)

(assert (=> b!2759565 (= lt!979540 lt!979555)))

(declare-fun lt!979548 () Unit!45821)

(declare-fun call!179136 () Unit!45821)

(assert (=> b!2759565 (= lt!979548 call!179136)))

(assert (=> b!2759565 (= lt!979234 Nil!31909)))

(declare-fun lt!979542 () Unit!45821)

(assert (=> b!2759565 (= lt!979542 lt!979548)))

(assert (=> b!2759565 false))

(declare-fun d!799988 () Bool)

(assert (=> d!799988 e!1739935))

(declare-fun res!1155736 () Bool)

(assert (=> d!799988 (=> (not res!1155736) (not e!1739935))))

(assert (=> d!799988 (= res!1155736 (= (++!7898 (_1!18801 lt!979559) (_2!18801 lt!979559)) lt!979234))))

(assert (=> d!799988 (= lt!979559 e!1739936)))

(declare-fun c!447110 () Bool)

(assert (=> d!799988 (= c!447110 (lostCauseZipper!426 z!3597))))

(declare-fun lt!979543 () Unit!45821)

(declare-fun Unit!45836 () Unit!45821)

(assert (=> d!799988 (= lt!979543 Unit!45836)))

(assert (=> d!799988 (= (getSuffix!1222 lt!979234 Nil!31909) lt!979234)))

(declare-fun lt!979538 () Unit!45821)

(declare-fun lt!979554 () Unit!45821)

(assert (=> d!799988 (= lt!979538 lt!979554)))

(declare-fun lt!979536 () List!32009)

(assert (=> d!799988 (= lt!979234 lt!979536)))

(assert (=> d!799988 (= lt!979554 (lemmaSamePrefixThenSameSuffix!1124 Nil!31909 lt!979234 Nil!31909 lt!979536 lt!979234))))

(assert (=> d!799988 (= lt!979536 (getSuffix!1222 lt!979234 Nil!31909))))

(declare-fun lt!979547 () Unit!45821)

(declare-fun lt!979556 () Unit!45821)

(assert (=> d!799988 (= lt!979547 lt!979556)))

(assert (=> d!799988 (isPrefix!2537 Nil!31909 (++!7898 Nil!31909 lt!979234))))

(assert (=> d!799988 (= lt!979556 (lemmaConcatTwoListThenFirstIsPrefix!1650 Nil!31909 lt!979234))))

(assert (=> d!799988 (= (++!7898 Nil!31909 lt!979234) lt!979234)))

(assert (=> d!799988 (= (findLongestMatchInnerZipper!8 z!3597 Nil!31909 0 lt!979234 lt!979234 lt!979213) lt!979559)))

(declare-fun bm!179128 () Bool)

(declare-fun call!179132 () C!16284)

(assert (=> bm!179128 (= call!179134 (derivationStepZipper!353 z!3597 call!179132))))

(declare-fun b!2759572 () Bool)

(assert (=> b!2759572 (= e!1739939 call!179135)))

(declare-fun b!2759573 () Bool)

(declare-fun c!447109 () Bool)

(assert (=> b!2759573 (= c!447109 call!179131)))

(declare-fun lt!979544 () Unit!45821)

(declare-fun lt!979539 () Unit!45821)

(assert (=> b!2759573 (= lt!979544 lt!979539)))

(assert (=> b!2759573 (= lt!979234 Nil!31909)))

(assert (=> b!2759573 (= lt!979539 call!179136)))

(declare-fun lt!979557 () Unit!45821)

(declare-fun lt!979546 () Unit!45821)

(assert (=> b!2759573 (= lt!979557 lt!979546)))

(assert (=> b!2759573 call!179133))

(assert (=> b!2759573 (= lt!979546 call!179138)))

(assert (=> b!2759573 (= e!1739938 e!1739934)))

(declare-fun b!2759574 () Bool)

(assert (=> b!2759574 (= e!1739937 lt!979558)))

(declare-fun b!2759575 () Bool)

(assert (=> b!2759575 (= e!1739934 (tuple2!31959 Nil!31909 Nil!31909))))

(declare-fun bm!179129 () Bool)

(assert (=> bm!179129 (= call!179131 (nullableZipper!617 z!3597))))

(declare-fun bm!179130 () Bool)

(assert (=> bm!179130 (= call!179133 (isPrefix!2537 lt!979234 lt!979234))))

(declare-fun b!2759576 () Bool)

(assert (=> b!2759576 (= e!1739936 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun b!2759577 () Bool)

(assert (=> b!2759577 (= e!1739941 (>= (size!24675 (_1!18801 lt!979559)) (size!24675 Nil!31909)))))

(declare-fun b!2759578 () Bool)

(assert (=> b!2759578 (= e!1739937 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun bm!179131 () Bool)

(assert (=> bm!179131 (= call!179137 (tail!4371 lt!979234))))

(declare-fun bm!179132 () Bool)

(assert (=> bm!179132 (= call!179132 (head!6133 lt!979234))))

(declare-fun bm!179133 () Bool)

(assert (=> bm!179133 (= call!179136 (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 Nil!31909 lt!979234))))

(assert (= (and d!799988 c!447110) b!2759576))

(assert (= (and d!799988 (not c!447110)) b!2759567))

(assert (= (and b!2759567 c!447111) b!2759573))

(assert (= (and b!2759567 (not c!447111)) b!2759570))

(assert (= (and b!2759573 c!447109) b!2759575))

(assert (= (and b!2759573 (not c!447109)) b!2759569))

(assert (= (and b!2759570 c!447107) b!2759565))

(assert (= (and b!2759570 (not c!447107)) b!2759568))

(assert (= (and b!2759570 c!447108) b!2759566))

(assert (= (and b!2759570 (not c!447108)) b!2759572))

(assert (= (and b!2759566 c!447112) b!2759578))

(assert (= (and b!2759566 (not c!447112)) b!2759574))

(assert (= (or b!2759566 b!2759572) bm!179131))

(assert (= (or b!2759566 b!2759572) bm!179132))

(assert (= (or b!2759566 b!2759572) bm!179128))

(assert (= (or b!2759566 b!2759572) bm!179127))

(assert (= (or b!2759573 b!2759570) bm!179129))

(assert (= (or b!2759573 b!2759565) bm!179126))

(assert (= (or b!2759573 b!2759565) bm!179133))

(assert (= (or b!2759573 b!2759565) bm!179130))

(assert (= (and d!799988 res!1155736) b!2759571))

(assert (= (and b!2759571 (not res!1155735)) b!2759577))

(assert (=> b!2759570 m!3178291))

(declare-fun m!3178715 () Bool)

(assert (=> b!2759570 m!3178715))

(declare-fun m!3178717 () Bool)

(assert (=> b!2759570 m!3178717))

(assert (=> b!2759570 m!3178293))

(assert (=> b!2759570 m!3178301))

(assert (=> b!2759570 m!3178371))

(assert (=> b!2759570 m!3178497))

(assert (=> b!2759570 m!3178497))

(assert (=> b!2759570 m!3178499))

(assert (=> b!2759570 m!3178309))

(assert (=> b!2759570 m!3178329))

(declare-fun m!3178719 () Bool)

(assert (=> b!2759570 m!3178719))

(assert (=> b!2759570 m!3178371))

(assert (=> b!2759570 m!3178505))

(assert (=> b!2759570 m!3178717))

(declare-fun m!3178721 () Bool)

(assert (=> b!2759570 m!3178721))

(assert (=> b!2759570 m!3178283))

(declare-fun m!3178723 () Bool)

(assert (=> bm!179128 m!3178723))

(declare-fun m!3178725 () Bool)

(assert (=> b!2759577 m!3178725))

(assert (=> b!2759577 m!3178293))

(assert (=> bm!179129 m!3178281))

(assert (=> bm!179130 m!3178279))

(assert (=> bm!179132 m!3178329))

(assert (=> bm!179126 m!3178277))

(assert (=> bm!179131 m!3178283))

(assert (=> bm!179133 m!3178257))

(declare-fun m!3178727 () Bool)

(assert (=> d!799988 m!3178727))

(assert (=> d!799988 m!3178371))

(assert (=> d!799988 m!3178349))

(assert (=> d!799988 m!3178367))

(assert (=> d!799988 m!3178357))

(assert (=> d!799988 m!3178347))

(assert (=> d!799988 m!3178349))

(declare-fun m!3178729 () Bool)

(assert (=> d!799988 m!3178729))

(declare-fun m!3178731 () Bool)

(assert (=> bm!179127 m!3178731))

(declare-fun m!3178733 () Bool)

(assert (=> b!2759571 m!3178733))

(declare-fun m!3178735 () Bool)

(assert (=> b!2759566 m!3178735))

(assert (=> b!2759363 d!799988))

(declare-fun b!2759579 () Bool)

(declare-fun e!1739943 () List!32009)

(assert (=> b!2759579 (= e!1739943 lt!979234)))

(declare-fun d!799990 () Bool)

(declare-fun e!1739942 () Bool)

(assert (=> d!799990 e!1739942))

(declare-fun res!1155737 () Bool)

(assert (=> d!799990 (=> (not res!1155737) (not e!1739942))))

(declare-fun lt!979560 () List!32009)

(assert (=> d!799990 (= res!1155737 (= (content!4493 lt!979560) ((_ map or) (content!4493 Nil!31909) (content!4493 lt!979234))))))

(assert (=> d!799990 (= lt!979560 e!1739943)))

(declare-fun c!447113 () Bool)

(assert (=> d!799990 (= c!447113 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!799990 (= (++!7898 Nil!31909 lt!979234) lt!979560)))

(declare-fun b!2759581 () Bool)

(declare-fun res!1155738 () Bool)

(assert (=> b!2759581 (=> (not res!1155738) (not e!1739942))))

(assert (=> b!2759581 (= res!1155738 (= (size!24675 lt!979560) (+ (size!24675 Nil!31909) (size!24675 lt!979234))))))

(declare-fun b!2759582 () Bool)

(assert (=> b!2759582 (= e!1739942 (or (not (= lt!979234 Nil!31909)) (= lt!979560 Nil!31909)))))

(declare-fun b!2759580 () Bool)

(assert (=> b!2759580 (= e!1739943 (Cons!31909 (h!37329 Nil!31909) (++!7898 (t!228121 Nil!31909) lt!979234)))))

(assert (= (and d!799990 c!447113) b!2759579))

(assert (= (and d!799990 (not c!447113)) b!2759580))

(assert (= (and d!799990 res!1155737) b!2759581))

(assert (= (and b!2759581 res!1155738) b!2759582))

(declare-fun m!3178737 () Bool)

(assert (=> d!799990 m!3178737))

(assert (=> d!799990 m!3178427))

(assert (=> d!799990 m!3178511))

(declare-fun m!3178739 () Bool)

(assert (=> b!2759581 m!3178739))

(assert (=> b!2759581 m!3178293))

(assert (=> b!2759581 m!3178301))

(declare-fun m!3178741 () Bool)

(assert (=> b!2759580 m!3178741))

(assert (=> b!2759363 d!799990))

(declare-fun b!2759595 () Bool)

(declare-fun res!1155754 () Bool)

(declare-fun e!1739948 () Bool)

(assert (=> b!2759595 (=> (not res!1155754) (not e!1739948))))

(assert (=> b!2759595 (= res!1155754 (isBalanced!3029 (right!24678 (c!447030 input!5495))))))

(declare-fun b!2759596 () Bool)

(declare-fun isEmpty!18076 (Conc!9945) Bool)

(assert (=> b!2759596 (= e!1739948 (not (isEmpty!18076 (right!24678 (c!447030 input!5495)))))))

(declare-fun b!2759597 () Bool)

(declare-fun res!1155753 () Bool)

(assert (=> b!2759597 (=> (not res!1155753) (not e!1739948))))

(declare-fun height!1485 (Conc!9945) Int)

(assert (=> b!2759597 (= res!1155753 (<= (- (height!1485 (left!24348 (c!447030 input!5495))) (height!1485 (right!24678 (c!447030 input!5495)))) 1))))

(declare-fun b!2759598 () Bool)

(declare-fun res!1155755 () Bool)

(assert (=> b!2759598 (=> (not res!1155755) (not e!1739948))))

(assert (=> b!2759598 (= res!1155755 (not (isEmpty!18076 (left!24348 (c!447030 input!5495)))))))

(declare-fun b!2759599 () Bool)

(declare-fun res!1155751 () Bool)

(assert (=> b!2759599 (=> (not res!1155751) (not e!1739948))))

(assert (=> b!2759599 (= res!1155751 (isBalanced!3029 (left!24348 (c!447030 input!5495))))))

(declare-fun b!2759600 () Bool)

(declare-fun e!1739949 () Bool)

(assert (=> b!2759600 (= e!1739949 e!1739948)))

(declare-fun res!1155756 () Bool)

(assert (=> b!2759600 (=> (not res!1155756) (not e!1739948))))

(assert (=> b!2759600 (= res!1155756 (<= (- 1) (- (height!1485 (left!24348 (c!447030 input!5495))) (height!1485 (right!24678 (c!447030 input!5495))))))))

(declare-fun d!799992 () Bool)

(declare-fun res!1155752 () Bool)

(assert (=> d!799992 (=> res!1155752 e!1739949)))

(assert (=> d!799992 (= res!1155752 (not ((_ is Node!9945) (c!447030 input!5495))))))

(assert (=> d!799992 (= (isBalanced!3029 (c!447030 input!5495)) e!1739949)))

(assert (= (and d!799992 (not res!1155752)) b!2759600))

(assert (= (and b!2759600 res!1155756) b!2759597))

(assert (= (and b!2759597 res!1155753) b!2759599))

(assert (= (and b!2759599 res!1155751) b!2759595))

(assert (= (and b!2759595 res!1155754) b!2759598))

(assert (= (and b!2759598 res!1155755) b!2759596))

(declare-fun m!3178743 () Bool)

(assert (=> b!2759600 m!3178743))

(declare-fun m!3178745 () Bool)

(assert (=> b!2759600 m!3178745))

(declare-fun m!3178747 () Bool)

(assert (=> b!2759599 m!3178747))

(assert (=> b!2759597 m!3178743))

(assert (=> b!2759597 m!3178745))

(declare-fun m!3178749 () Bool)

(assert (=> b!2759595 m!3178749))

(declare-fun m!3178751 () Bool)

(assert (=> b!2759596 m!3178751))

(declare-fun m!3178753 () Bool)

(assert (=> b!2759598 m!3178753))

(assert (=> b!2759363 d!799992))

(declare-fun d!799994 () Bool)

(assert (=> d!799994 (= (list!12049 (_1!18802 (splitAt!93 input!5495 (_1!18799 lt!979254)))) (list!12050 (c!447030 (_1!18802 (splitAt!93 input!5495 (_1!18799 lt!979254))))))))

(declare-fun bs!495417 () Bool)

(assert (= bs!495417 d!799994))

(declare-fun m!3178755 () Bool)

(assert (=> bs!495417 m!3178755))

(assert (=> b!2759363 d!799994))

(declare-fun d!799996 () Bool)

(assert (=> d!799996 (isPrefix!2537 Nil!31909 (++!7898 Nil!31909 lt!979234))))

(declare-fun lt!979563 () Unit!45821)

(declare-fun choose!16179 (List!32009 List!32009) Unit!45821)

(assert (=> d!799996 (= lt!979563 (choose!16179 Nil!31909 lt!979234))))

(assert (=> d!799996 (= (lemmaConcatTwoListThenFirstIsPrefix!1650 Nil!31909 lt!979234) lt!979563)))

(declare-fun bs!495418 () Bool)

(assert (= bs!495418 d!799996))

(assert (=> bs!495418 m!3178349))

(assert (=> bs!495418 m!3178349))

(assert (=> bs!495418 m!3178367))

(declare-fun m!3178757 () Bool)

(assert (=> bs!495418 m!3178757))

(assert (=> b!2759363 d!799996))

(declare-fun d!799998 () Bool)

(assert (=> d!799998 (= (valid!2905 (_2!18799 lt!979201)) (validCacheMapUp!356 (cache!3784 (_2!18799 lt!979201))))))

(declare-fun bs!495419 () Bool)

(assert (= bs!495419 d!799998))

(declare-fun m!3178759 () Bool)

(assert (=> bs!495419 m!3178759))

(assert (=> b!2759363 d!799998))

(declare-fun d!800000 () Bool)

(declare-fun lt!979566 () Int)

(assert (=> d!800000 (= lt!979566 (size!24675 (list!12049 input!5495)))))

(declare-fun size!24677 (Conc!9945) Int)

(assert (=> d!800000 (= lt!979566 (size!24677 (c!447030 input!5495)))))

(assert (=> d!800000 (= (size!24676 input!5495) lt!979566)))

(declare-fun bs!495420 () Bool)

(assert (= bs!495420 d!800000))

(assert (=> bs!495420 m!3178343))

(assert (=> bs!495420 m!3178343))

(declare-fun m!3178761 () Bool)

(assert (=> bs!495420 m!3178761))

(declare-fun m!3178763 () Bool)

(assert (=> bs!495420 m!3178763))

(assert (=> b!2759363 d!800000))

(declare-fun d!800002 () Bool)

(declare-fun e!1739950 () Bool)

(assert (=> d!800002 e!1739950))

(declare-fun res!1155757 () Bool)

(assert (=> d!800002 (=> (not res!1155757) (not e!1739950))))

(declare-fun lt!979567 () tuple3!4700)

(assert (=> d!800002 (= res!1155757 (valid!2905 (_2!18799 lt!979567)))))

(assert (=> d!800002 (= lt!979567 (choose!16175 cacheUp!820 cacheDown!939 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213))))

(assert (=> d!800002 (= (++!7898 Nil!31909 lt!979234) (list!12049 input!5495))))

(assert (=> d!800002 (= (findLongestMatchInnerZipperFastMem!17 cacheUp!820 cacheDown!939 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213) lt!979567)))

(declare-fun b!2759601 () Bool)

(declare-fun res!1155758 () Bool)

(assert (=> b!2759601 (=> (not res!1155758) (not e!1739950))))

(assert (=> b!2759601 (= res!1155758 (valid!2904 (_3!2820 lt!979567)))))

(declare-fun b!2759602 () Bool)

(assert (=> b!2759602 (= e!1739950 (= (_1!18799 lt!979567) (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213)))))

(assert (= (and d!800002 res!1155757) b!2759601))

(assert (= (and b!2759601 res!1155758) b!2759602))

(declare-fun m!3178765 () Bool)

(assert (=> d!800002 m!3178765))

(declare-fun m!3178767 () Bool)

(assert (=> d!800002 m!3178767))

(assert (=> d!800002 m!3178349))

(assert (=> d!800002 m!3178343))

(declare-fun m!3178769 () Bool)

(assert (=> b!2759601 m!3178769))

(assert (=> b!2759602 m!3178323))

(assert (=> b!2759363 d!800002))

(declare-fun b!2759603 () Bool)

(declare-fun e!1739953 () Bool)

(declare-fun e!1739951 () Bool)

(assert (=> b!2759603 (= e!1739953 e!1739951)))

(declare-fun res!1155760 () Bool)

(assert (=> b!2759603 (=> (not res!1155760) (not e!1739951))))

(assert (=> b!2759603 (= res!1155760 (not ((_ is Nil!31909) (++!7898 Nil!31909 lt!979234))))))

(declare-fun b!2759606 () Bool)

(declare-fun e!1739952 () Bool)

(assert (=> b!2759606 (= e!1739952 (>= (size!24675 (++!7898 Nil!31909 lt!979234)) (size!24675 Nil!31909)))))

(declare-fun b!2759604 () Bool)

(declare-fun res!1155762 () Bool)

(assert (=> b!2759604 (=> (not res!1155762) (not e!1739951))))

(assert (=> b!2759604 (= res!1155762 (= (head!6133 Nil!31909) (head!6133 (++!7898 Nil!31909 lt!979234))))))

(declare-fun d!800004 () Bool)

(assert (=> d!800004 e!1739952))

(declare-fun res!1155759 () Bool)

(assert (=> d!800004 (=> res!1155759 e!1739952)))

(declare-fun lt!979568 () Bool)

(assert (=> d!800004 (= res!1155759 (not lt!979568))))

(assert (=> d!800004 (= lt!979568 e!1739953)))

(declare-fun res!1155761 () Bool)

(assert (=> d!800004 (=> res!1155761 e!1739953)))

(assert (=> d!800004 (= res!1155761 ((_ is Nil!31909) Nil!31909))))

(assert (=> d!800004 (= (isPrefix!2537 Nil!31909 (++!7898 Nil!31909 lt!979234)) lt!979568)))

(declare-fun b!2759605 () Bool)

(assert (=> b!2759605 (= e!1739951 (isPrefix!2537 (tail!4371 Nil!31909) (tail!4371 (++!7898 Nil!31909 lt!979234))))))

(assert (= (and d!800004 (not res!1155761)) b!2759603))

(assert (= (and b!2759603 res!1155760) b!2759604))

(assert (= (and b!2759604 res!1155762) b!2759605))

(assert (= (and d!800004 (not res!1155759)) b!2759606))

(assert (=> b!2759606 m!3178349))

(declare-fun m!3178771 () Bool)

(assert (=> b!2759606 m!3178771))

(assert (=> b!2759606 m!3178293))

(declare-fun m!3178773 () Bool)

(assert (=> b!2759604 m!3178773))

(assert (=> b!2759604 m!3178349))

(declare-fun m!3178775 () Bool)

(assert (=> b!2759604 m!3178775))

(declare-fun m!3178777 () Bool)

(assert (=> b!2759605 m!3178777))

(assert (=> b!2759605 m!3178349))

(declare-fun m!3178779 () Bool)

(assert (=> b!2759605 m!3178779))

(assert (=> b!2759605 m!3178777))

(assert (=> b!2759605 m!3178779))

(declare-fun m!3178781 () Bool)

(assert (=> b!2759605 m!3178781))

(assert (=> b!2759363 d!800004))

(declare-fun b!2759607 () Bool)

(declare-fun e!1739955 () Unit!45821)

(declare-fun Unit!45837 () Unit!45821)

(assert (=> b!2759607 (= e!1739955 Unit!45837)))

(declare-fun b!2759608 () Bool)

(declare-fun e!1739956 () Int)

(assert (=> b!2759608 (= e!1739956 0)))

(declare-fun bm!179134 () Bool)

(declare-fun call!179142 () (InoxSet Context!4562))

(declare-fun call!179147 () C!16284)

(assert (=> bm!179134 (= call!179142 (derivationStepZipper!353 z!3597 call!179147))))

(declare-fun b!2759609 () Bool)

(declare-fun e!1739954 () Int)

(declare-fun e!1739958 () Int)

(assert (=> b!2759609 (= e!1739954 e!1739958)))

(declare-fun c!447116 () Bool)

(assert (=> b!2759609 (= c!447116 (= 0 lt!979213))))

(declare-fun b!2759610 () Bool)

(declare-fun e!1739959 () List!32009)

(declare-fun call!179143 () List!32009)

(assert (=> b!2759610 (= e!1739959 call!179143)))

(declare-fun lt!979592 () List!32009)

(declare-fun lt!979582 () List!32009)

(declare-fun call!179141 () Bool)

(declare-fun lt!979583 () List!32009)

(declare-fun lt!979608 () List!32009)

(declare-fun bm!179135 () Bool)

(assert (=> bm!179135 (= call!179141 (isPrefix!2537 (ite c!447116 lt!979608 lt!979592) (ite c!447116 lt!979583 lt!979582)))))

(declare-fun bm!179136 () Bool)

(declare-fun call!179145 () List!32009)

(assert (=> bm!179136 (= call!179145 (tail!4371 lt!979234))))

(declare-fun call!179139 () List!32009)

(declare-fun call!179144 () Int)

(declare-fun bm!179137 () Bool)

(assert (=> bm!179137 (= call!179144 (findLongestMatchInnerZipperFast!21 call!179142 call!179139 (+ 0 1) call!179145 input!5495 lt!979213))))

(declare-fun bm!179138 () Bool)

(assert (=> bm!179138 (= call!179147 (apply!7465 input!5495 0))))

(declare-fun b!2759612 () Bool)

(assert (=> b!2759612 (= e!1739959 (list!12049 input!5495))))

(declare-fun b!2759613 () Bool)

(declare-fun e!1739957 () Int)

(assert (=> b!2759613 (= e!1739957 call!179144)))

(declare-fun call!179148 () Unit!45821)

(declare-fun bm!179139 () Bool)

(assert (=> bm!179139 (= call!179148 (lemmaIsPrefixRefl!1664 (ite c!447116 lt!979608 lt!979592) (ite c!447116 lt!979583 lt!979582)))))

(declare-fun b!2759614 () Bool)

(assert (=> b!2759614 (= e!1739954 0)))

(declare-fun b!2759615 () Bool)

(declare-fun lt!979584 () Int)

(assert (=> b!2759615 (= e!1739957 (ite (= lt!979584 0) 0 lt!979584))))

(assert (=> b!2759615 (= lt!979584 call!179144)))

(declare-fun bm!179140 () Bool)

(declare-fun lt!979594 () tuple2!31960)

(assert (=> bm!179140 (= call!179143 (list!12049 (ite c!447116 input!5495 (_1!18802 lt!979594))))))

(declare-fun bm!179141 () Bool)

(declare-fun call!179146 () Bool)

(assert (=> bm!179141 (= call!179146 (nullableZipper!617 z!3597))))

(declare-fun bm!179142 () Bool)

(assert (=> bm!179142 (= call!179139 (++!7898 Nil!31909 (Cons!31909 call!179147 Nil!31909)))))

(declare-fun d!800006 () Bool)

(declare-fun lt!979588 () Int)

(assert (=> d!800006 (= (size!24675 (_1!18801 (findLongestMatchInnerZipper!8 z!3597 Nil!31909 0 lt!979234 (list!12049 input!5495) lt!979213))) lt!979588)))

(assert (=> d!800006 (= lt!979588 e!1739954)))

(declare-fun c!447117 () Bool)

(assert (=> d!800006 (= c!447117 (lostCauseZipper!426 z!3597))))

(declare-fun lt!979579 () Unit!45821)

(declare-fun Unit!45838 () Unit!45821)

(assert (=> d!800006 (= lt!979579 Unit!45838)))

(assert (=> d!800006 (= (getSuffix!1222 (list!12049 input!5495) Nil!31909) lt!979234)))

(declare-fun lt!979569 () Unit!45821)

(declare-fun lt!979590 () Unit!45821)

(assert (=> d!800006 (= lt!979569 lt!979590)))

(declare-fun lt!979586 () List!32009)

(assert (=> d!800006 (= lt!979234 lt!979586)))

(assert (=> d!800006 (= lt!979590 (lemmaSamePrefixThenSameSuffix!1124 Nil!31909 lt!979234 Nil!31909 lt!979586 (list!12049 input!5495)))))

(assert (=> d!800006 (= lt!979586 (getSuffix!1222 (list!12049 input!5495) Nil!31909))))

(declare-fun lt!979607 () Unit!45821)

(declare-fun lt!979600 () Unit!45821)

(assert (=> d!800006 (= lt!979607 lt!979600)))

(assert (=> d!800006 (isPrefix!2537 Nil!31909 (++!7898 Nil!31909 lt!979234))))

(assert (=> d!800006 (= lt!979600 (lemmaConcatTwoListThenFirstIsPrefix!1650 Nil!31909 lt!979234))))

(assert (=> d!800006 (= (++!7898 Nil!31909 lt!979234) (list!12049 input!5495))))

(assert (=> d!800006 (= (findLongestMatchInnerZipperFast!21 z!3597 Nil!31909 0 lt!979234 input!5495 lt!979213) lt!979588)))

(declare-fun b!2759611 () Bool)

(declare-fun c!447119 () Bool)

(assert (=> b!2759611 (= c!447119 call!179146)))

(declare-fun lt!979593 () Unit!45821)

(declare-fun lt!979609 () Unit!45821)

(assert (=> b!2759611 (= lt!979593 lt!979609)))

(declare-fun lt!979595 () List!32009)

(assert (=> b!2759611 (= lt!979595 Nil!31909)))

(declare-fun call!179140 () Unit!45821)

(assert (=> b!2759611 (= lt!979609 call!179140)))

(assert (=> b!2759611 (= lt!979595 call!179143)))

(declare-fun lt!979603 () Unit!45821)

(declare-fun lt!979575 () Unit!45821)

(assert (=> b!2759611 (= lt!979603 lt!979575)))

(assert (=> b!2759611 call!179141))

(assert (=> b!2759611 (= lt!979575 call!179148)))

(assert (=> b!2759611 (= lt!979583 call!179143)))

(assert (=> b!2759611 (= lt!979608 call!179143)))

(assert (=> b!2759611 (= e!1739958 e!1739956)))

(declare-fun bm!179143 () Bool)

(declare-fun c!447114 () Bool)

(assert (=> bm!179143 (= c!447114 c!447116)))

(declare-fun lt!979572 () List!32009)

(assert (=> bm!179143 (= call!179140 (lemmaIsPrefixSameLengthThenSameList!445 (ite c!447116 lt!979595 lt!979572) Nil!31909 e!1739959))))

(declare-fun b!2759616 () Bool)

(declare-fun Unit!45839 () Unit!45821)

(assert (=> b!2759616 (= e!1739955 Unit!45839)))

(assert (=> b!2759616 (= lt!979592 (list!12049 input!5495))))

(assert (=> b!2759616 (= lt!979582 (list!12049 input!5495))))

(declare-fun lt!979591 () Unit!45821)

(assert (=> b!2759616 (= lt!979591 call!179148)))

(assert (=> b!2759616 call!179141))

(declare-fun lt!979581 () Unit!45821)

(assert (=> b!2759616 (= lt!979581 lt!979591)))

(assert (=> b!2759616 (= lt!979572 (list!12049 input!5495))))

(declare-fun lt!979574 () Unit!45821)

(assert (=> b!2759616 (= lt!979574 call!179140)))

(assert (=> b!2759616 (= lt!979572 Nil!31909)))

(declare-fun lt!979604 () Unit!45821)

(assert (=> b!2759616 (= lt!979604 lt!979574)))

(assert (=> b!2759616 false))

(declare-fun b!2759617 () Bool)

(assert (=> b!2759617 (= e!1739956 0)))

(declare-fun b!2759618 () Bool)

(declare-fun c!447118 () Bool)

(assert (=> b!2759618 (= c!447118 call!179146)))

(declare-fun lt!979576 () Unit!45821)

(declare-fun lt!979578 () Unit!45821)

(assert (=> b!2759618 (= lt!979576 lt!979578)))

(declare-fun lt!979605 () C!16284)

(declare-fun lt!979602 () List!32009)

(declare-fun lt!979585 () List!32009)

(assert (=> b!2759618 (= (++!7898 (++!7898 Nil!31909 (Cons!31909 lt!979605 Nil!31909)) lt!979602) lt!979585)))

(assert (=> b!2759618 (= lt!979578 (lemmaMoveElementToOtherListKeepsConcatEq!854 Nil!31909 lt!979605 lt!979602 lt!979585))))

(assert (=> b!2759618 (= lt!979585 (list!12049 input!5495))))

(assert (=> b!2759618 (= lt!979602 (tail!4371 lt!979234))))

(assert (=> b!2759618 (= lt!979605 (apply!7465 input!5495 0))))

(declare-fun lt!979598 () Unit!45821)

(declare-fun lt!979596 () Unit!45821)

(assert (=> b!2759618 (= lt!979598 lt!979596)))

(declare-fun lt!979573 () List!32009)

(assert (=> b!2759618 (isPrefix!2537 (++!7898 Nil!31909 (Cons!31909 (head!6133 (getSuffix!1222 lt!979573 Nil!31909)) Nil!31909)) lt!979573)))

(assert (=> b!2759618 (= lt!979596 (lemmaAddHeadSuffixToPrefixStillPrefix!442 Nil!31909 lt!979573))))

(assert (=> b!2759618 (= lt!979573 (list!12049 input!5495))))

(declare-fun lt!979580 () Unit!45821)

(assert (=> b!2759618 (= lt!979580 e!1739955)))

(declare-fun c!447115 () Bool)

(assert (=> b!2759618 (= c!447115 (= (size!24675 Nil!31909) (size!24676 input!5495)))))

(declare-fun lt!979577 () Unit!45821)

(declare-fun lt!979570 () Unit!45821)

(assert (=> b!2759618 (= lt!979577 lt!979570)))

(declare-fun lt!979599 () List!32009)

(assert (=> b!2759618 (<= (size!24675 Nil!31909) (size!24675 lt!979599))))

(assert (=> b!2759618 (= lt!979570 (lemmaIsPrefixThenSmallerEqSize!245 Nil!31909 lt!979599))))

(assert (=> b!2759618 (= lt!979599 (list!12049 input!5495))))

(declare-fun lt!979610 () Unit!45821)

(declare-fun lt!979601 () Unit!45821)

(assert (=> b!2759618 (= lt!979610 lt!979601)))

(declare-fun lt!979606 () List!32009)

(assert (=> b!2759618 (= (head!6133 (drop!1691 lt!979606 0)) (apply!7466 lt!979606 0))))

(assert (=> b!2759618 (= lt!979601 (lemmaDropApply!897 lt!979606 0))))

(assert (=> b!2759618 (= lt!979606 (list!12049 input!5495))))

(declare-fun lt!979597 () Unit!45821)

(declare-fun lt!979571 () Unit!45821)

(assert (=> b!2759618 (= lt!979597 lt!979571)))

(declare-fun lt!979587 () List!32009)

(declare-fun lt!979589 () List!32009)

(assert (=> b!2759618 (and (= lt!979587 Nil!31909) (= lt!979589 lt!979234))))

(assert (=> b!2759618 (= lt!979571 (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979587 lt!979589 Nil!31909 lt!979234))))

(assert (=> b!2759618 (= lt!979589 (list!12049 (_2!18802 lt!979594)))))

(assert (=> b!2759618 (= lt!979587 call!179143)))

(assert (=> b!2759618 (= lt!979594 (splitAt!93 input!5495 0))))

(assert (=> b!2759618 (= e!1739958 e!1739957)))

(assert (= (and d!800006 c!447117) b!2759614))

(assert (= (and d!800006 (not c!447117)) b!2759609))

(assert (= (and b!2759609 c!447116) b!2759611))

(assert (= (and b!2759609 (not c!447116)) b!2759618))

(assert (= (and b!2759611 c!447119) b!2759617))

(assert (= (and b!2759611 (not c!447119)) b!2759608))

(assert (= (and b!2759618 c!447115) b!2759616))

(assert (= (and b!2759618 (not c!447115)) b!2759607))

(assert (= (and b!2759618 c!447118) b!2759615))

(assert (= (and b!2759618 (not c!447118)) b!2759613))

(assert (= (or b!2759615 b!2759613) bm!179138))

(assert (= (or b!2759615 b!2759613) bm!179136))

(assert (= (or b!2759615 b!2759613) bm!179142))

(assert (= (or b!2759615 b!2759613) bm!179134))

(assert (= (or b!2759615 b!2759613) bm!179137))

(assert (= (or b!2759611 b!2759618) bm!179141))

(assert (= (or b!2759611 b!2759618) bm!179140))

(assert (= (or b!2759611 b!2759616) bm!179139))

(assert (= (or b!2759611 b!2759616) bm!179135))

(assert (= (or b!2759611 b!2759616) bm!179143))

(assert (= (and bm!179143 c!447114) b!2759610))

(assert (= (and bm!179143 (not c!447114)) b!2759612))

(declare-fun m!3178783 () Bool)

(assert (=> b!2759618 m!3178783))

(declare-fun m!3178785 () Bool)

(assert (=> b!2759618 m!3178785))

(declare-fun m!3178787 () Bool)

(assert (=> b!2759618 m!3178787))

(declare-fun m!3178789 () Bool)

(assert (=> b!2759618 m!3178789))

(assert (=> b!2759618 m!3178343))

(declare-fun m!3178791 () Bool)

(assert (=> b!2759618 m!3178791))

(declare-fun m!3178793 () Bool)

(assert (=> b!2759618 m!3178793))

(declare-fun m!3178795 () Bool)

(assert (=> b!2759618 m!3178795))

(declare-fun m!3178797 () Bool)

(assert (=> b!2759618 m!3178797))

(declare-fun m!3178799 () Bool)

(assert (=> b!2759618 m!3178799))

(assert (=> b!2759618 m!3178797))

(assert (=> b!2759618 m!3178307))

(declare-fun m!3178801 () Bool)

(assert (=> b!2759618 m!3178801))

(declare-fun m!3178803 () Bool)

(assert (=> b!2759618 m!3178803))

(declare-fun m!3178805 () Bool)

(assert (=> b!2759618 m!3178805))

(declare-fun m!3178807 () Bool)

(assert (=> b!2759618 m!3178807))

(assert (=> b!2759618 m!3178785))

(declare-fun m!3178809 () Bool)

(assert (=> b!2759618 m!3178809))

(declare-fun m!3178811 () Bool)

(assert (=> b!2759618 m!3178811))

(assert (=> b!2759618 m!3178283))

(assert (=> b!2759618 m!3178311))

(declare-fun m!3178813 () Bool)

(assert (=> b!2759618 m!3178813))

(assert (=> b!2759618 m!3178293))

(assert (=> b!2759618 m!3178351))

(assert (=> b!2759618 m!3178801))

(assert (=> b!2759618 m!3178791))

(declare-fun m!3178815 () Bool)

(assert (=> bm!179139 m!3178815))

(assert (=> b!2759612 m!3178343))

(assert (=> bm!179141 m!3178281))

(declare-fun m!3178817 () Bool)

(assert (=> bm!179134 m!3178817))

(assert (=> bm!179138 m!3178311))

(declare-fun m!3178819 () Bool)

(assert (=> bm!179135 m!3178819))

(declare-fun m!3178821 () Bool)

(assert (=> bm!179142 m!3178821))

(assert (=> bm!179136 m!3178283))

(declare-fun m!3178823 () Bool)

(assert (=> bm!179137 m!3178823))

(declare-fun m!3178825 () Bool)

(assert (=> bm!179143 m!3178825))

(declare-fun m!3178827 () Bool)

(assert (=> bm!179140 m!3178827))

(assert (=> d!800006 m!3178343))

(assert (=> d!800006 m!3178343))

(declare-fun m!3178829 () Bool)

(assert (=> d!800006 m!3178829))

(declare-fun m!3178831 () Bool)

(assert (=> d!800006 m!3178831))

(assert (=> d!800006 m!3178343))

(declare-fun m!3178833 () Bool)

(assert (=> d!800006 m!3178833))

(assert (=> d!800006 m!3178357))

(assert (=> d!800006 m!3178349))

(assert (=> d!800006 m!3178347))

(assert (=> d!800006 m!3178343))

(declare-fun m!3178835 () Bool)

(assert (=> d!800006 m!3178835))

(assert (=> d!800006 m!3178349))

(assert (=> d!800006 m!3178367))

(assert (=> b!2759616 m!3178343))

(assert (=> b!2759363 d!800006))

(declare-fun bs!495421 () Bool)

(declare-fun d!800008 () Bool)

(assert (= bs!495421 (and d!800008 d!799886)))

(declare-fun lambda!101253 () Int)

(assert (=> bs!495421 (= (= lt!979262 lt!979260) (= lambda!101253 lambda!101234))))

(assert (=> d!800008 true))

(assert (=> d!800008 (= (derivationStepZipper!353 z!3597 lt!979262) (flatMap!179 z!3597 lambda!101253))))

(declare-fun bs!495422 () Bool)

(assert (= bs!495422 d!800008))

(declare-fun m!3178837 () Bool)

(assert (=> bs!495422 m!3178837))

(assert (=> bm!179061 d!800008))

(declare-fun d!800010 () Bool)

(assert (=> d!800010 (= (isEmpty!18074 (_1!18801 lt!979211)) ((_ is Nil!31909) (_1!18801 lt!979211)))))

(assert (=> b!2759347 d!800010))

(declare-fun d!800012 () Bool)

(assert (=> d!800012 (= (valid!2905 cacheUp!820) (validCacheMapUp!356 (cache!3784 cacheUp!820)))))

(declare-fun bs!495423 () Bool)

(assert (= bs!495423 d!800012))

(declare-fun m!3178839 () Bool)

(assert (=> bs!495423 m!3178839))

(assert (=> start!267334 d!800012))

(declare-fun d!800014 () Bool)

(declare-fun res!1155765 () Bool)

(declare-fun e!1739962 () Bool)

(assert (=> d!800014 (=> (not res!1155765) (not e!1739962))))

(assert (=> d!800014 (= res!1155765 ((_ is HashMap!3641) (cache!3784 cacheUp!820)))))

(assert (=> d!800014 (= (inv!43330 cacheUp!820) e!1739962)))

(declare-fun b!2759621 () Bool)

(assert (=> b!2759621 (= e!1739962 (validCacheMapUp!356 (cache!3784 cacheUp!820)))))

(assert (= (and d!800014 res!1155765) b!2759621))

(assert (=> b!2759621 m!3178839))

(assert (=> start!267334 d!800014))

(declare-fun d!800016 () Bool)

(declare-fun res!1155768 () Bool)

(declare-fun e!1739965 () Bool)

(assert (=> d!800016 (=> (not res!1155768) (not e!1739965))))

(assert (=> d!800016 (= res!1155768 ((_ is HashMap!3640) (cache!3783 cacheDown!939)))))

(assert (=> d!800016 (= (inv!43331 cacheDown!939) e!1739965)))

(declare-fun b!2759624 () Bool)

(assert (=> b!2759624 (= e!1739965 (validCacheMapDown!387 (cache!3783 cacheDown!939)))))

(assert (= (and d!800016 res!1155768) b!2759624))

(assert (=> b!2759624 m!3178409))

(assert (=> start!267334 d!800016))

(declare-fun d!800018 () Bool)

(assert (=> d!800018 (= (inv!43332 input!5495) (isBalanced!3029 (c!447030 input!5495)))))

(declare-fun bs!495424 () Bool)

(assert (= bs!495424 d!800018))

(assert (=> bs!495424 m!3178369))

(assert (=> start!267334 d!800018))

(assert (=> bm!179067 d!799964))

(assert (=> bm!179054 d!799932))

(assert (=> bm!179062 d!799934))

(assert (=> b!2759366 d!800006))

(assert (=> bm!179063 d!799968))

(declare-fun d!800020 () Bool)

(declare-fun e!1739968 () Bool)

(assert (=> d!800020 e!1739968))

(declare-fun res!1155773 () Bool)

(assert (=> d!800020 (=> (not res!1155773) (not e!1739968))))

(declare-fun lt!979613 () tuple3!4702)

(assert (=> d!800020 (= res!1155773 (= (_1!18800 lt!979613) (derivationStepZipper!353 z!3597 lt!979212)))))

(declare-fun choose!16180 ((InoxSet Context!4562) C!16284 CacheUp!2346 CacheDown!2466) tuple3!4702)

(assert (=> d!800020 (= lt!979613 (choose!16180 z!3597 lt!979212 (_2!18799 lt!979254) (_3!2820 lt!979254)))))

(assert (=> d!800020 (= (derivationStepZipperMem!85 z!3597 lt!979212 (_2!18799 lt!979254) (_3!2820 lt!979254)) lt!979613)))

(declare-fun b!2759629 () Bool)

(declare-fun res!1155774 () Bool)

(assert (=> b!2759629 (=> (not res!1155774) (not e!1739968))))

(assert (=> b!2759629 (= res!1155774 (valid!2905 (_2!18800 lt!979613)))))

(declare-fun b!2759630 () Bool)

(assert (=> b!2759630 (= e!1739968 (valid!2904 (_3!2821 lt!979613)))))

(assert (= (and d!800020 res!1155773) b!2759629))

(assert (= (and b!2759629 res!1155774) b!2759630))

(declare-fun m!3178841 () Bool)

(assert (=> d!800020 m!3178841))

(declare-fun m!3178843 () Bool)

(assert (=> d!800020 m!3178843))

(declare-fun m!3178845 () Bool)

(assert (=> b!2759629 m!3178845))

(declare-fun m!3178847 () Bool)

(assert (=> b!2759630 m!3178847))

(assert (=> bm!179068 d!800020))

(assert (=> bm!179051 d!799932))

(declare-fun b!2759631 () Bool)

(declare-fun e!1739970 () Unit!45821)

(declare-fun Unit!45840 () Unit!45821)

(assert (=> b!2759631 (= e!1739970 Unit!45840)))

(declare-fun b!2759632 () Bool)

(declare-fun e!1739971 () Int)

(assert (=> b!2759632 (= e!1739971 0)))

(declare-fun call!179157 () C!16284)

(declare-fun call!179152 () (InoxSet Context!4562))

(declare-fun bm!179144 () Bool)

(assert (=> bm!179144 (= call!179152 (derivationStepZipper!353 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) call!179157))))

(declare-fun b!2759633 () Bool)

(declare-fun e!1739969 () Int)

(declare-fun e!1739973 () Int)

(assert (=> b!2759633 (= e!1739969 e!1739973)))

(declare-fun c!447122 () Bool)

(assert (=> b!2759633 (= c!447122 (= 1 lt!979213))))

(declare-fun b!2759634 () Bool)

(declare-fun e!1739974 () List!32009)

(declare-fun call!179153 () List!32009)

(assert (=> b!2759634 (= e!1739974 call!179153)))

(declare-fun lt!979628 () List!32009)

(declare-fun lt!979637 () List!32009)

(declare-fun bm!179145 () Bool)

(declare-fun lt!979627 () List!32009)

(declare-fun lt!979653 () List!32009)

(declare-fun call!179151 () Bool)

(assert (=> bm!179145 (= call!179151 (isPrefix!2537 (ite c!447122 lt!979653 lt!979637) (ite c!447122 lt!979628 lt!979627)))))

(declare-fun bm!179146 () Bool)

(declare-fun call!179155 () List!32009)

(assert (=> bm!179146 (= call!179155 (tail!4371 lt!979258))))

(declare-fun bm!179147 () Bool)

(declare-fun call!179154 () Int)

(declare-fun call!179149 () List!32009)

(assert (=> bm!179147 (= call!179154 (findLongestMatchInnerZipperFast!21 call!179152 call!179149 (+ 1 1) call!179155 input!5495 lt!979213))))

(declare-fun bm!179148 () Bool)

(assert (=> bm!179148 (= call!179157 (apply!7465 input!5495 1))))

(declare-fun b!2759636 () Bool)

(assert (=> b!2759636 (= e!1739974 (list!12049 input!5495))))

(declare-fun b!2759637 () Bool)

(declare-fun e!1739972 () Int)

(assert (=> b!2759637 (= e!1739972 call!179154)))

(declare-fun bm!179149 () Bool)

(declare-fun call!179158 () Unit!45821)

(assert (=> bm!179149 (= call!179158 (lemmaIsPrefixRefl!1664 (ite c!447122 lt!979653 lt!979637) (ite c!447122 lt!979628 lt!979627)))))

(declare-fun b!2759638 () Bool)

(assert (=> b!2759638 (= e!1739969 0)))

(declare-fun b!2759639 () Bool)

(declare-fun lt!979629 () Int)

(assert (=> b!2759639 (= e!1739972 (ite (= lt!979629 0) 1 lt!979629))))

(assert (=> b!2759639 (= lt!979629 call!179154)))

(declare-fun bm!179150 () Bool)

(declare-fun lt!979639 () tuple2!31960)

(assert (=> bm!179150 (= call!179153 (list!12049 (ite c!447122 input!5495 (_1!18802 lt!979639))))))

(declare-fun call!179156 () Bool)

(declare-fun bm!179151 () Bool)

(assert (=> bm!179151 (= call!179156 (nullableZipper!617 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215))))))

(declare-fun bm!179152 () Bool)

(assert (=> bm!179152 (= call!179149 (++!7898 lt!979236 (Cons!31909 call!179157 Nil!31909)))))

(declare-fun d!800022 () Bool)

(declare-fun lt!979633 () Int)

(assert (=> d!800022 (= (size!24675 (_1!18801 (findLongestMatchInnerZipper!8 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 (list!12049 input!5495) lt!979213))) lt!979633)))

(assert (=> d!800022 (= lt!979633 e!1739969)))

(declare-fun c!447123 () Bool)

(assert (=> d!800022 (= c!447123 (lostCauseZipper!426 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215))))))

(declare-fun lt!979624 () Unit!45821)

(declare-fun Unit!45841 () Unit!45821)

(assert (=> d!800022 (= lt!979624 Unit!45841)))

(assert (=> d!800022 (= (getSuffix!1222 (list!12049 input!5495) lt!979236) lt!979258)))

(declare-fun lt!979614 () Unit!45821)

(declare-fun lt!979635 () Unit!45821)

(assert (=> d!800022 (= lt!979614 lt!979635)))

(declare-fun lt!979631 () List!32009)

(assert (=> d!800022 (= lt!979258 lt!979631)))

(assert (=> d!800022 (= lt!979635 (lemmaSamePrefixThenSameSuffix!1124 lt!979236 lt!979258 lt!979236 lt!979631 (list!12049 input!5495)))))

(assert (=> d!800022 (= lt!979631 (getSuffix!1222 (list!12049 input!5495) lt!979236))))

(declare-fun lt!979652 () Unit!45821)

(declare-fun lt!979645 () Unit!45821)

(assert (=> d!800022 (= lt!979652 lt!979645)))

(assert (=> d!800022 (isPrefix!2537 lt!979236 (++!7898 lt!979236 lt!979258))))

(assert (=> d!800022 (= lt!979645 (lemmaConcatTwoListThenFirstIsPrefix!1650 lt!979236 lt!979258))))

(assert (=> d!800022 (= (++!7898 lt!979236 lt!979258) (list!12049 input!5495))))

(assert (=> d!800022 (= (findLongestMatchInnerZipperFast!21 (ite c!447027 (_1!18800 lt!979205) (_1!18800 lt!979215)) lt!979236 1 lt!979258 input!5495 lt!979213) lt!979633)))

(declare-fun b!2759635 () Bool)

(declare-fun c!447125 () Bool)

(assert (=> b!2759635 (= c!447125 call!179156)))

(declare-fun lt!979638 () Unit!45821)

(declare-fun lt!979654 () Unit!45821)

(assert (=> b!2759635 (= lt!979638 lt!979654)))

(declare-fun lt!979640 () List!32009)

(assert (=> b!2759635 (= lt!979640 lt!979236)))

(declare-fun call!179150 () Unit!45821)

(assert (=> b!2759635 (= lt!979654 call!179150)))

(assert (=> b!2759635 (= lt!979640 call!179153)))

(declare-fun lt!979648 () Unit!45821)

(declare-fun lt!979620 () Unit!45821)

(assert (=> b!2759635 (= lt!979648 lt!979620)))

(assert (=> b!2759635 call!179151))

(assert (=> b!2759635 (= lt!979620 call!179158)))

(assert (=> b!2759635 (= lt!979628 call!179153)))

(assert (=> b!2759635 (= lt!979653 call!179153)))

(assert (=> b!2759635 (= e!1739973 e!1739971)))

(declare-fun bm!179153 () Bool)

(declare-fun c!447120 () Bool)

(assert (=> bm!179153 (= c!447120 c!447122)))

(declare-fun lt!979617 () List!32009)

(assert (=> bm!179153 (= call!179150 (lemmaIsPrefixSameLengthThenSameList!445 (ite c!447122 lt!979640 lt!979617) lt!979236 e!1739974))))

(declare-fun b!2759640 () Bool)

(declare-fun Unit!45842 () Unit!45821)

(assert (=> b!2759640 (= e!1739970 Unit!45842)))

(assert (=> b!2759640 (= lt!979637 (list!12049 input!5495))))

(assert (=> b!2759640 (= lt!979627 (list!12049 input!5495))))

(declare-fun lt!979636 () Unit!45821)

(assert (=> b!2759640 (= lt!979636 call!179158)))

(assert (=> b!2759640 call!179151))

(declare-fun lt!979626 () Unit!45821)

(assert (=> b!2759640 (= lt!979626 lt!979636)))

(assert (=> b!2759640 (= lt!979617 (list!12049 input!5495))))

(declare-fun lt!979619 () Unit!45821)

(assert (=> b!2759640 (= lt!979619 call!179150)))

(assert (=> b!2759640 (= lt!979617 lt!979236)))

(declare-fun lt!979649 () Unit!45821)

(assert (=> b!2759640 (= lt!979649 lt!979619)))

(assert (=> b!2759640 false))

(declare-fun b!2759641 () Bool)

(assert (=> b!2759641 (= e!1739971 1)))

(declare-fun b!2759642 () Bool)

(declare-fun c!447124 () Bool)

(assert (=> b!2759642 (= c!447124 call!179156)))

(declare-fun lt!979621 () Unit!45821)

(declare-fun lt!979623 () Unit!45821)

(assert (=> b!2759642 (= lt!979621 lt!979623)))

(declare-fun lt!979630 () List!32009)

(declare-fun lt!979650 () C!16284)

(declare-fun lt!979647 () List!32009)

(assert (=> b!2759642 (= (++!7898 (++!7898 lt!979236 (Cons!31909 lt!979650 Nil!31909)) lt!979647) lt!979630)))

(assert (=> b!2759642 (= lt!979623 (lemmaMoveElementToOtherListKeepsConcatEq!854 lt!979236 lt!979650 lt!979647 lt!979630))))

(assert (=> b!2759642 (= lt!979630 (list!12049 input!5495))))

(assert (=> b!2759642 (= lt!979647 (tail!4371 lt!979258))))

(assert (=> b!2759642 (= lt!979650 (apply!7465 input!5495 1))))

(declare-fun lt!979643 () Unit!45821)

(declare-fun lt!979641 () Unit!45821)

(assert (=> b!2759642 (= lt!979643 lt!979641)))

(declare-fun lt!979618 () List!32009)

(assert (=> b!2759642 (isPrefix!2537 (++!7898 lt!979236 (Cons!31909 (head!6133 (getSuffix!1222 lt!979618 lt!979236)) Nil!31909)) lt!979618)))

(assert (=> b!2759642 (= lt!979641 (lemmaAddHeadSuffixToPrefixStillPrefix!442 lt!979236 lt!979618))))

(assert (=> b!2759642 (= lt!979618 (list!12049 input!5495))))

(declare-fun lt!979625 () Unit!45821)

(assert (=> b!2759642 (= lt!979625 e!1739970)))

(declare-fun c!447121 () Bool)

(assert (=> b!2759642 (= c!447121 (= (size!24675 lt!979236) (size!24676 input!5495)))))

(declare-fun lt!979622 () Unit!45821)

(declare-fun lt!979615 () Unit!45821)

(assert (=> b!2759642 (= lt!979622 lt!979615)))

(declare-fun lt!979644 () List!32009)

(assert (=> b!2759642 (<= (size!24675 lt!979236) (size!24675 lt!979644))))

(assert (=> b!2759642 (= lt!979615 (lemmaIsPrefixThenSmallerEqSize!245 lt!979236 lt!979644))))

(assert (=> b!2759642 (= lt!979644 (list!12049 input!5495))))

(declare-fun lt!979655 () Unit!45821)

(declare-fun lt!979646 () Unit!45821)

(assert (=> b!2759642 (= lt!979655 lt!979646)))

(declare-fun lt!979651 () List!32009)

(assert (=> b!2759642 (= (head!6133 (drop!1691 lt!979651 1)) (apply!7466 lt!979651 1))))

(assert (=> b!2759642 (= lt!979646 (lemmaDropApply!897 lt!979651 1))))

(assert (=> b!2759642 (= lt!979651 (list!12049 input!5495))))

(declare-fun lt!979642 () Unit!45821)

(declare-fun lt!979616 () Unit!45821)

(assert (=> b!2759642 (= lt!979642 lt!979616)))

(declare-fun lt!979632 () List!32009)

(declare-fun lt!979634 () List!32009)

(assert (=> b!2759642 (and (= lt!979632 lt!979236) (= lt!979634 lt!979258))))

(assert (=> b!2759642 (= lt!979616 (lemmaConcatSameAndSameSizesThenSameLists!323 lt!979632 lt!979634 lt!979236 lt!979258))))

(assert (=> b!2759642 (= lt!979634 (list!12049 (_2!18802 lt!979639)))))

(assert (=> b!2759642 (= lt!979632 call!179153)))

(assert (=> b!2759642 (= lt!979639 (splitAt!93 input!5495 1))))

(assert (=> b!2759642 (= e!1739973 e!1739972)))

(assert (= (and d!800022 c!447123) b!2759638))

(assert (= (and d!800022 (not c!447123)) b!2759633))

(assert (= (and b!2759633 c!447122) b!2759635))

(assert (= (and b!2759633 (not c!447122)) b!2759642))

(assert (= (and b!2759635 c!447125) b!2759641))

(assert (= (and b!2759635 (not c!447125)) b!2759632))

(assert (= (and b!2759642 c!447121) b!2759640))

(assert (= (and b!2759642 (not c!447121)) b!2759631))

(assert (= (and b!2759642 c!447124) b!2759639))

(assert (= (and b!2759642 (not c!447124)) b!2759637))

(assert (= (or b!2759639 b!2759637) bm!179148))

(assert (= (or b!2759639 b!2759637) bm!179146))

(assert (= (or b!2759639 b!2759637) bm!179152))

(assert (= (or b!2759639 b!2759637) bm!179144))

(assert (= (or b!2759639 b!2759637) bm!179147))

(assert (= (or b!2759635 b!2759642) bm!179151))

(assert (= (or b!2759635 b!2759642) bm!179150))

(assert (= (or b!2759635 b!2759640) bm!179149))

(assert (= (or b!2759635 b!2759640) bm!179145))

(assert (= (or b!2759635 b!2759640) bm!179153))

(assert (= (and bm!179153 c!447120) b!2759634))

(assert (= (and bm!179153 (not c!447120)) b!2759636))

(declare-fun m!3178849 () Bool)

(assert (=> b!2759642 m!3178849))

(declare-fun m!3178851 () Bool)

(assert (=> b!2759642 m!3178851))

(declare-fun m!3178853 () Bool)

(assert (=> b!2759642 m!3178853))

(declare-fun m!3178855 () Bool)

(assert (=> b!2759642 m!3178855))

(assert (=> b!2759642 m!3178343))

(declare-fun m!3178857 () Bool)

(assert (=> b!2759642 m!3178857))

(declare-fun m!3178859 () Bool)

(assert (=> b!2759642 m!3178859))

(declare-fun m!3178861 () Bool)

(assert (=> b!2759642 m!3178861))

(declare-fun m!3178863 () Bool)

(assert (=> b!2759642 m!3178863))

(declare-fun m!3178865 () Bool)

(assert (=> b!2759642 m!3178865))

(assert (=> b!2759642 m!3178863))

(assert (=> b!2759642 m!3178617))

(declare-fun m!3178867 () Bool)

(assert (=> b!2759642 m!3178867))

(declare-fun m!3178869 () Bool)

(assert (=> b!2759642 m!3178869))

(declare-fun m!3178871 () Bool)

(assert (=> b!2759642 m!3178871))

(declare-fun m!3178873 () Bool)

(assert (=> b!2759642 m!3178873))

(assert (=> b!2759642 m!3178851))

(declare-fun m!3178875 () Bool)

(assert (=> b!2759642 m!3178875))

(declare-fun m!3178877 () Bool)

(assert (=> b!2759642 m!3178877))

(declare-fun m!3178879 () Bool)

(assert (=> b!2759642 m!3178879))

(assert (=> b!2759642 m!3178633))

(declare-fun m!3178881 () Bool)

(assert (=> b!2759642 m!3178881))

(assert (=> b!2759642 m!3178471))

(assert (=> b!2759642 m!3178351))

(assert (=> b!2759642 m!3178867))

(assert (=> b!2759642 m!3178857))

(declare-fun m!3178883 () Bool)

(assert (=> bm!179149 m!3178883))

(assert (=> b!2759636 m!3178343))

(declare-fun m!3178885 () Bool)

(assert (=> bm!179151 m!3178885))

(declare-fun m!3178887 () Bool)

(assert (=> bm!179144 m!3178887))

(assert (=> bm!179148 m!3178633))

(declare-fun m!3178889 () Bool)

(assert (=> bm!179145 m!3178889))

(declare-fun m!3178891 () Bool)

(assert (=> bm!179152 m!3178891))

(assert (=> bm!179146 m!3178879))

(declare-fun m!3178893 () Bool)

(assert (=> bm!179147 m!3178893))

(declare-fun m!3178895 () Bool)

(assert (=> bm!179153 m!3178895))

(declare-fun m!3178897 () Bool)

(assert (=> bm!179150 m!3178897))

(assert (=> d!800022 m!3178343))

(assert (=> d!800022 m!3178343))

(declare-fun m!3178899 () Bool)

(assert (=> d!800022 m!3178899))

(declare-fun m!3178901 () Bool)

(assert (=> d!800022 m!3178901))

(assert (=> d!800022 m!3178343))

(declare-fun m!3178903 () Bool)

(assert (=> d!800022 m!3178903))

(declare-fun m!3178905 () Bool)

(assert (=> d!800022 m!3178905))

(assert (=> d!800022 m!3178305))

(declare-fun m!3178907 () Bool)

(assert (=> d!800022 m!3178907))

(assert (=> d!800022 m!3178343))

(declare-fun m!3178909 () Bool)

(assert (=> d!800022 m!3178909))

(assert (=> d!800022 m!3178305))

(declare-fun m!3178911 () Bool)

(assert (=> d!800022 m!3178911))

(assert (=> b!2759640 m!3178343))

(assert (=> bm!179058 d!800022))

(declare-fun d!800024 () Bool)

(declare-fun c!447128 () Bool)

(assert (=> d!800024 (= c!447128 ((_ is Node!9945) (c!447030 input!5495)))))

(declare-fun e!1739979 () Bool)

(assert (=> d!800024 (= (inv!43329 (c!447030 input!5495)) e!1739979)))

(declare-fun b!2759649 () Bool)

(declare-fun inv!43333 (Conc!9945) Bool)

(assert (=> b!2759649 (= e!1739979 (inv!43333 (c!447030 input!5495)))))

(declare-fun b!2759650 () Bool)

(declare-fun e!1739980 () Bool)

(assert (=> b!2759650 (= e!1739979 e!1739980)))

(declare-fun res!1155777 () Bool)

(assert (=> b!2759650 (= res!1155777 (not ((_ is Leaf!15145) (c!447030 input!5495))))))

(assert (=> b!2759650 (=> res!1155777 e!1739980)))

(declare-fun b!2759651 () Bool)

(declare-fun inv!43334 (Conc!9945) Bool)

(assert (=> b!2759651 (= e!1739980 (inv!43334 (c!447030 input!5495)))))

(assert (= (and d!800024 c!447128) b!2759649))

(assert (= (and d!800024 (not c!447128)) b!2759650))

(assert (= (and b!2759650 (not res!1155777)) b!2759651))

(declare-fun m!3178913 () Bool)

(assert (=> b!2759649 m!3178913))

(declare-fun m!3178915 () Bool)

(assert (=> b!2759651 m!3178915))

(assert (=> b!2759358 d!800024))

(declare-fun d!800026 () Bool)

(declare-fun lambda!101256 () Int)

(declare-fun forall!6604 (List!32006 Int) Bool)

(assert (=> d!800026 (= (inv!43328 setElem!22307) (forall!6604 (exprs!2781 setElem!22307) lambda!101256))))

(declare-fun bs!495425 () Bool)

(assert (= bs!495425 d!800026))

(declare-fun m!3178917 () Bool)

(assert (=> bs!495425 m!3178917))

(assert (=> setNonEmpty!22307 d!800026))

(assert (=> bm!179070 d!799934))

(assert (=> bm!179059 d!799968))

(declare-fun d!800028 () Bool)

(assert (=> d!800028 (= (valid!2905 (ite c!447027 (_2!18799 lt!979221) (_2!18799 lt!979228))) (validCacheMapUp!356 (cache!3784 (ite c!447027 (_2!18799 lt!979221) (_2!18799 lt!979228)))))))

(declare-fun bs!495426 () Bool)

(assert (= bs!495426 d!800028))

(declare-fun m!3178919 () Bool)

(assert (=> bs!495426 m!3178919))

(assert (=> bm!179060 d!800028))

(declare-fun b!2759653 () Bool)

(declare-fun e!1739986 () tuple2!31958)

(declare-fun e!1739984 () tuple2!31958)

(assert (=> b!2759653 (= e!1739986 e!1739984)))

(declare-fun lt!979680 () tuple2!31958)

(declare-fun call!179163 () tuple2!31958)

(assert (=> b!2759653 (= lt!979680 call!179163)))

(declare-fun c!447134 () Bool)

(assert (=> b!2759653 (= c!447134 (isEmpty!18074 (_1!18801 lt!979680)))))

(declare-fun bm!179154 () Bool)

(declare-fun call!179166 () Unit!45821)

(assert (=> bm!179154 (= call!179166 (lemmaIsPrefixRefl!1664 lt!979234 lt!979234))))

(declare-fun b!2759654 () Bool)

(declare-fun e!1739983 () tuple2!31958)

(declare-fun e!1739985 () tuple2!31958)

(assert (=> b!2759654 (= e!1739983 e!1739985)))

(declare-fun c!447133 () Bool)

(assert (=> b!2759654 (= c!447133 (= 1 lt!979213))))

(declare-fun b!2759655 () Bool)

(declare-fun e!1739987 () Unit!45821)

(declare-fun Unit!45843 () Unit!45821)

(assert (=> b!2759655 (= e!1739987 Unit!45843)))

(declare-fun b!2759656 () Bool)

(declare-fun e!1739981 () tuple2!31958)

(assert (=> b!2759656 (= e!1739981 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun call!179165 () List!32009)

(declare-fun lt!979667 () List!32009)

(declare-fun bm!179155 () Bool)

(declare-fun call!179162 () (InoxSet Context!4562))

(assert (=> bm!179155 (= call!179163 (findLongestMatchInnerZipper!8 call!179162 lt!979667 (+ 1 1) call!179165 lt!979234 lt!979213))))

(declare-fun b!2759657 () Bool)

(declare-fun c!447130 () Bool)

(declare-fun call!179159 () Bool)

(assert (=> b!2759657 (= c!447130 call!179159)))

(declare-fun lt!979672 () Unit!45821)

(declare-fun lt!979675 () Unit!45821)

(assert (=> b!2759657 (= lt!979672 lt!979675)))

(declare-fun lt!979656 () C!16284)

(declare-fun lt!979673 () List!32009)

(assert (=> b!2759657 (= (++!7898 (++!7898 lt!979207 (Cons!31909 lt!979656 Nil!31909)) lt!979673) lt!979234)))

(assert (=> b!2759657 (= lt!979675 (lemmaMoveElementToOtherListKeepsConcatEq!854 lt!979207 lt!979656 lt!979673 lt!979234))))

(assert (=> b!2759657 (= lt!979673 (tail!4371 lt!979204))))

(assert (=> b!2759657 (= lt!979656 (head!6133 lt!979204))))

(declare-fun lt!979657 () Unit!45821)

(declare-fun lt!979663 () Unit!45821)

(assert (=> b!2759657 (= lt!979657 lt!979663)))

(assert (=> b!2759657 (isPrefix!2537 (++!7898 lt!979207 (Cons!31909 (head!6133 (getSuffix!1222 lt!979234 lt!979207)) Nil!31909)) lt!979234)))

(assert (=> b!2759657 (= lt!979663 (lemmaAddHeadSuffixToPrefixStillPrefix!442 lt!979207 lt!979234))))

(assert (=> b!2759657 (= lt!979667 (++!7898 lt!979207 (Cons!31909 (head!6133 lt!979204) Nil!31909)))))

(declare-fun lt!979659 () Unit!45821)

(assert (=> b!2759657 (= lt!979659 e!1739987)))

(declare-fun c!447129 () Bool)

(assert (=> b!2759657 (= c!447129 (= (size!24675 lt!979207) (size!24675 lt!979234)))))

(declare-fun lt!979671 () Unit!45821)

(declare-fun lt!979674 () Unit!45821)

(assert (=> b!2759657 (= lt!979671 lt!979674)))

(assert (=> b!2759657 (<= (size!24675 lt!979207) (size!24675 lt!979234))))

(assert (=> b!2759657 (= lt!979674 (lemmaIsPrefixThenSmallerEqSize!245 lt!979207 lt!979234))))

(assert (=> b!2759657 (= e!1739985 e!1739986)))

(declare-fun b!2759658 () Bool)

(declare-fun e!1739982 () Bool)

(declare-fun e!1739988 () Bool)

(assert (=> b!2759658 (= e!1739982 e!1739988)))

(declare-fun res!1155778 () Bool)

(assert (=> b!2759658 (=> res!1155778 e!1739988)))

(declare-fun lt!979681 () tuple2!31958)

(assert (=> b!2759658 (= res!1155778 (isEmpty!18074 (_1!18801 lt!979681)))))

(declare-fun b!2759652 () Bool)

(declare-fun Unit!45844 () Unit!45821)

(assert (=> b!2759652 (= e!1739987 Unit!45844)))

(declare-fun lt!979677 () Unit!45821)

(assert (=> b!2759652 (= lt!979677 call!179166)))

(declare-fun call!179161 () Bool)

(assert (=> b!2759652 call!179161))

(declare-fun lt!979662 () Unit!45821)

(assert (=> b!2759652 (= lt!979662 lt!979677)))

(declare-fun lt!979670 () Unit!45821)

(declare-fun call!179164 () Unit!45821)

(assert (=> b!2759652 (= lt!979670 call!179164)))

(assert (=> b!2759652 (= lt!979234 lt!979207)))

(declare-fun lt!979664 () Unit!45821)

(assert (=> b!2759652 (= lt!979664 lt!979670)))

(assert (=> b!2759652 false))

(declare-fun d!800030 () Bool)

(assert (=> d!800030 e!1739982))

(declare-fun res!1155779 () Bool)

(assert (=> d!800030 (=> (not res!1155779) (not e!1739982))))

(assert (=> d!800030 (= res!1155779 (= (++!7898 (_1!18801 lt!979681) (_2!18801 lt!979681)) lt!979234))))

(assert (=> d!800030 (= lt!979681 e!1739983)))

(declare-fun c!447132 () Bool)

(assert (=> d!800030 (= c!447132 (lostCauseZipper!426 call!179062))))

(declare-fun lt!979665 () Unit!45821)

(declare-fun Unit!45845 () Unit!45821)

(assert (=> d!800030 (= lt!979665 Unit!45845)))

(assert (=> d!800030 (= (getSuffix!1222 lt!979234 lt!979207) lt!979204)))

(declare-fun lt!979660 () Unit!45821)

(declare-fun lt!979676 () Unit!45821)

(assert (=> d!800030 (= lt!979660 lt!979676)))

(declare-fun lt!979658 () List!32009)

(assert (=> d!800030 (= lt!979204 lt!979658)))

(assert (=> d!800030 (= lt!979676 (lemmaSamePrefixThenSameSuffix!1124 lt!979207 lt!979204 lt!979207 lt!979658 lt!979234))))

(assert (=> d!800030 (= lt!979658 (getSuffix!1222 lt!979234 lt!979207))))

(declare-fun lt!979669 () Unit!45821)

(declare-fun lt!979678 () Unit!45821)

(assert (=> d!800030 (= lt!979669 lt!979678)))

(assert (=> d!800030 (isPrefix!2537 lt!979207 (++!7898 lt!979207 lt!979204))))

(assert (=> d!800030 (= lt!979678 (lemmaConcatTwoListThenFirstIsPrefix!1650 lt!979207 lt!979204))))

(assert (=> d!800030 (= (++!7898 lt!979207 lt!979204) lt!979234)))

(assert (=> d!800030 (= (findLongestMatchInnerZipper!8 call!179062 lt!979207 1 lt!979204 lt!979234 lt!979213) lt!979681)))

(declare-fun bm!179156 () Bool)

(declare-fun call!179160 () C!16284)

(assert (=> bm!179156 (= call!179162 (derivationStepZipper!353 call!179062 call!179160))))

(declare-fun b!2759659 () Bool)

(assert (=> b!2759659 (= e!1739986 call!179163)))

(declare-fun b!2759660 () Bool)

(declare-fun c!447131 () Bool)

(assert (=> b!2759660 (= c!447131 call!179159)))

(declare-fun lt!979666 () Unit!45821)

(declare-fun lt!979661 () Unit!45821)

(assert (=> b!2759660 (= lt!979666 lt!979661)))

(assert (=> b!2759660 (= lt!979234 lt!979207)))

(assert (=> b!2759660 (= lt!979661 call!179164)))

(declare-fun lt!979679 () Unit!45821)

(declare-fun lt!979668 () Unit!45821)

(assert (=> b!2759660 (= lt!979679 lt!979668)))

(assert (=> b!2759660 call!179161))

(assert (=> b!2759660 (= lt!979668 call!179166)))

(assert (=> b!2759660 (= e!1739985 e!1739981)))

(declare-fun b!2759661 () Bool)

(assert (=> b!2759661 (= e!1739984 lt!979680)))

(declare-fun b!2759662 () Bool)

(assert (=> b!2759662 (= e!1739981 (tuple2!31959 lt!979207 Nil!31909))))

(declare-fun bm!179157 () Bool)

(assert (=> bm!179157 (= call!179159 (nullableZipper!617 call!179062))))

(declare-fun bm!179158 () Bool)

(assert (=> bm!179158 (= call!179161 (isPrefix!2537 lt!979234 lt!979234))))

(declare-fun b!2759663 () Bool)

(assert (=> b!2759663 (= e!1739983 (tuple2!31959 Nil!31909 lt!979234))))

(declare-fun b!2759664 () Bool)

(assert (=> b!2759664 (= e!1739988 (>= (size!24675 (_1!18801 lt!979681)) (size!24675 lt!979207)))))

(declare-fun b!2759665 () Bool)

(assert (=> b!2759665 (= e!1739984 (tuple2!31959 lt!979207 lt!979204))))

(declare-fun bm!179159 () Bool)

(assert (=> bm!179159 (= call!179165 (tail!4371 lt!979204))))

(declare-fun bm!179160 () Bool)

(assert (=> bm!179160 (= call!179160 (head!6133 lt!979204))))

(declare-fun bm!179161 () Bool)

(assert (=> bm!179161 (= call!179164 (lemmaIsPrefixSameLengthThenSameList!445 lt!979234 lt!979207 lt!979234))))

(assert (= (and d!800030 c!447132) b!2759663))

(assert (= (and d!800030 (not c!447132)) b!2759654))

(assert (= (and b!2759654 c!447133) b!2759660))

(assert (= (and b!2759654 (not c!447133)) b!2759657))

(assert (= (and b!2759660 c!447131) b!2759662))

(assert (= (and b!2759660 (not c!447131)) b!2759656))

(assert (= (and b!2759657 c!447129) b!2759652))

(assert (= (and b!2759657 (not c!447129)) b!2759655))

(assert (= (and b!2759657 c!447130) b!2759653))

(assert (= (and b!2759657 (not c!447130)) b!2759659))

(assert (= (and b!2759653 c!447134) b!2759665))

(assert (= (and b!2759653 (not c!447134)) b!2759661))

(assert (= (or b!2759653 b!2759659) bm!179159))

(assert (= (or b!2759653 b!2759659) bm!179160))

(assert (= (or b!2759653 b!2759659) bm!179156))

(assert (= (or b!2759653 b!2759659) bm!179155))

(assert (= (or b!2759660 b!2759657) bm!179157))

(assert (= (or b!2759660 b!2759652) bm!179154))

(assert (= (or b!2759660 b!2759652) bm!179161))

(assert (= (or b!2759660 b!2759652) bm!179158))

(assert (= (and d!800030 res!1155779) b!2759658))

(assert (= (and b!2759658 (not res!1155778)) b!2759664))

(declare-fun m!3178921 () Bool)

(assert (=> b!2759657 m!3178921))

(declare-fun m!3178923 () Bool)

(assert (=> b!2759657 m!3178923))

(declare-fun m!3178925 () Bool)

(assert (=> b!2759657 m!3178925))

(assert (=> b!2759657 m!3178529))

(assert (=> b!2759657 m!3178301))

(declare-fun m!3178927 () Bool)

(assert (=> b!2759657 m!3178927))

(declare-fun m!3178929 () Bool)

(assert (=> b!2759657 m!3178929))

(assert (=> b!2759657 m!3178929))

(declare-fun m!3178931 () Bool)

(assert (=> b!2759657 m!3178931))

(declare-fun m!3178933 () Bool)

(assert (=> b!2759657 m!3178933))

(declare-fun m!3178935 () Bool)

(assert (=> b!2759657 m!3178935))

(declare-fun m!3178937 () Bool)

(assert (=> b!2759657 m!3178937))

(assert (=> b!2759657 m!3178927))

(declare-fun m!3178939 () Bool)

(assert (=> b!2759657 m!3178939))

(assert (=> b!2759657 m!3178925))

(declare-fun m!3178941 () Bool)

(assert (=> b!2759657 m!3178941))

(declare-fun m!3178943 () Bool)

(assert (=> b!2759657 m!3178943))

(declare-fun m!3178945 () Bool)

(assert (=> bm!179156 m!3178945))

(declare-fun m!3178947 () Bool)

(assert (=> b!2759664 m!3178947))

(assert (=> b!2759664 m!3178529))

(declare-fun m!3178949 () Bool)

(assert (=> bm!179157 m!3178949))

(assert (=> bm!179158 m!3178279))

(assert (=> bm!179160 m!3178935))

(assert (=> bm!179154 m!3178277))

(assert (=> bm!179159 m!3178943))

(declare-fun m!3178951 () Bool)

(assert (=> bm!179161 m!3178951))

(declare-fun m!3178953 () Bool)

(assert (=> d!800030 m!3178953))

(assert (=> d!800030 m!3178927))

(assert (=> d!800030 m!3178331))

(declare-fun m!3178955 () Bool)

(assert (=> d!800030 m!3178955))

(declare-fun m!3178957 () Bool)

(assert (=> d!800030 m!3178957))

(declare-fun m!3178959 () Bool)

(assert (=> d!800030 m!3178959))

(assert (=> d!800030 m!3178331))

(declare-fun m!3178961 () Bool)

(assert (=> d!800030 m!3178961))

(declare-fun m!3178963 () Bool)

(assert (=> bm!179155 m!3178963))

(declare-fun m!3178965 () Bool)

(assert (=> b!2759658 m!3178965))

(declare-fun m!3178967 () Bool)

(assert (=> b!2759653 m!3178967))

(assert (=> bm!179052 d!800030))

(assert (=> b!2759361 d!800006))

(declare-fun b!2759680 () Bool)

(declare-fun e!1740003 () Bool)

(declare-fun tp!872105 () Bool)

(assert (=> b!2759680 (= e!1740003 tp!872105)))

(declare-fun b!2759681 () Bool)

(declare-fun e!1740002 () Bool)

(declare-fun tp!872103 () Bool)

(assert (=> b!2759681 (= e!1740002 tp!872103)))

(declare-fun setIsEmpty!22312 () Bool)

(declare-fun setRes!22313 () Bool)

(assert (=> setIsEmpty!22312 setRes!22313))

(declare-fun b!2759682 () Bool)

(declare-fun e!1740001 () Bool)

(declare-fun tp!872104 () Bool)

(assert (=> b!2759682 (= e!1740001 tp!872104)))

(declare-fun tp!872102 () Bool)

(declare-fun e!1740004 () Bool)

(declare-fun tp_is_empty!13997 () Bool)

(declare-fun b!2759683 () Bool)

(declare-fun tp!872107 () Bool)

(declare-fun mapDefault!17007 () List!32007)

(assert (=> b!2759683 (= e!1740004 (and tp!872102 (inv!43328 (_2!18794 (_1!18795 (h!37327 mapDefault!17007)))) e!1740001 tp_is_empty!13997 setRes!22313 tp!872107))))

(declare-fun condSetEmpty!22312 () Bool)

(assert (=> b!2759683 (= condSetEmpty!22312 (= (_2!18795 (h!37327 mapDefault!17007)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun e!1740006 () Bool)

(declare-fun setRes!22312 () Bool)

(declare-fun b!2759684 () Bool)

(declare-fun tp!872111 () Bool)

(declare-fun tp!872106 () Bool)

(declare-fun mapValue!17007 () List!32007)

(assert (=> b!2759684 (= e!1740006 (and tp!872111 (inv!43328 (_2!18794 (_1!18795 (h!37327 mapValue!17007)))) e!1740003 tp_is_empty!13997 setRes!22312 tp!872106))))

(declare-fun condSetEmpty!22313 () Bool)

(assert (=> b!2759684 (= condSetEmpty!22313 (= (_2!18795 (h!37327 mapValue!17007)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun condMapEmpty!17007 () Bool)

(assert (=> mapNonEmpty!17003 (= condMapEmpty!17007 (= mapRest!17004 ((as const (Array (_ BitVec 32) List!32007)) mapDefault!17007)))))

(declare-fun mapRes!17007 () Bool)

(assert (=> mapNonEmpty!17003 (= tp!872066 (and e!1740004 mapRes!17007))))

(declare-fun b!2759685 () Bool)

(declare-fun e!1740005 () Bool)

(declare-fun tp!872110 () Bool)

(assert (=> b!2759685 (= e!1740005 tp!872110)))

(declare-fun mapIsEmpty!17007 () Bool)

(assert (=> mapIsEmpty!17007 mapRes!17007))

(declare-fun setIsEmpty!22313 () Bool)

(assert (=> setIsEmpty!22313 setRes!22312))

(declare-fun tp!872108 () Bool)

(declare-fun setElem!22312 () Context!4562)

(declare-fun setNonEmpty!22312 () Bool)

(assert (=> setNonEmpty!22312 (= setRes!22312 (and tp!872108 (inv!43328 setElem!22312) e!1740005))))

(declare-fun setRest!22313 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22312 (= (_2!18795 (h!37327 mapValue!17007)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22312 true) setRest!22313))))

(declare-fun mapNonEmpty!17007 () Bool)

(declare-fun tp!872112 () Bool)

(assert (=> mapNonEmpty!17007 (= mapRes!17007 (and tp!872112 e!1740006))))

(declare-fun mapKey!17007 () (_ BitVec 32))

(declare-fun mapRest!17007 () (Array (_ BitVec 32) List!32007))

(assert (=> mapNonEmpty!17007 (= mapRest!17004 (store mapRest!17007 mapKey!17007 mapValue!17007))))

(declare-fun tp!872109 () Bool)

(declare-fun setNonEmpty!22313 () Bool)

(declare-fun setElem!22313 () Context!4562)

(assert (=> setNonEmpty!22313 (= setRes!22313 (and tp!872109 (inv!43328 setElem!22313) e!1740002))))

(declare-fun setRest!22312 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22313 (= (_2!18795 (h!37327 mapDefault!17007)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22313 true) setRest!22312))))

(assert (= (and mapNonEmpty!17003 condMapEmpty!17007) mapIsEmpty!17007))

(assert (= (and mapNonEmpty!17003 (not condMapEmpty!17007)) mapNonEmpty!17007))

(assert (= b!2759684 b!2759680))

(assert (= (and b!2759684 condSetEmpty!22313) setIsEmpty!22313))

(assert (= (and b!2759684 (not condSetEmpty!22313)) setNonEmpty!22312))

(assert (= setNonEmpty!22312 b!2759685))

(assert (= (and mapNonEmpty!17007 ((_ is Cons!31907) mapValue!17007)) b!2759684))

(assert (= b!2759683 b!2759682))

(assert (= (and b!2759683 condSetEmpty!22312) setIsEmpty!22312))

(assert (= (and b!2759683 (not condSetEmpty!22312)) setNonEmpty!22313))

(assert (= setNonEmpty!22313 b!2759681))

(assert (= (and mapNonEmpty!17003 ((_ is Cons!31907) mapDefault!17007)) b!2759683))

(declare-fun m!3178969 () Bool)

(assert (=> mapNonEmpty!17007 m!3178969))

(declare-fun m!3178971 () Bool)

(assert (=> b!2759683 m!3178971))

(declare-fun m!3178973 () Bool)

(assert (=> setNonEmpty!22312 m!3178973))

(declare-fun m!3178975 () Bool)

(assert (=> b!2759684 m!3178975))

(declare-fun m!3178977 () Bool)

(assert (=> setNonEmpty!22313 m!3178977))

(declare-fun b!2759694 () Bool)

(declare-fun e!1740013 () Bool)

(declare-fun tp!872126 () Bool)

(assert (=> b!2759694 (= e!1740013 tp!872126)))

(declare-fun tp!872124 () Bool)

(declare-fun setElem!22316 () Context!4562)

(declare-fun setRes!22316 () Bool)

(declare-fun setNonEmpty!22316 () Bool)

(assert (=> setNonEmpty!22316 (= setRes!22316 (and tp!872124 (inv!43328 setElem!22316) e!1740013))))

(declare-fun setRest!22316 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22316 (= (_2!18795 (h!37327 mapValue!17004)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22316 true) setRest!22316))))

(declare-fun e!1740014 () Bool)

(assert (=> mapNonEmpty!17003 (= tp!872076 e!1740014)))

(declare-fun setIsEmpty!22316 () Bool)

(assert (=> setIsEmpty!22316 setRes!22316))

(declare-fun b!2759695 () Bool)

(declare-fun tp!872125 () Bool)

(declare-fun tp!872123 () Bool)

(declare-fun e!1740015 () Bool)

(assert (=> b!2759695 (= e!1740014 (and tp!872125 (inv!43328 (_2!18794 (_1!18795 (h!37327 mapValue!17004)))) e!1740015 tp_is_empty!13997 setRes!22316 tp!872123))))

(declare-fun condSetEmpty!22316 () Bool)

(assert (=> b!2759695 (= condSetEmpty!22316 (= (_2!18795 (h!37327 mapValue!17004)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun b!2759696 () Bool)

(declare-fun tp!872127 () Bool)

(assert (=> b!2759696 (= e!1740015 tp!872127)))

(assert (= b!2759695 b!2759696))

(assert (= (and b!2759695 condSetEmpty!22316) setIsEmpty!22316))

(assert (= (and b!2759695 (not condSetEmpty!22316)) setNonEmpty!22316))

(assert (= setNonEmpty!22316 b!2759694))

(assert (= (and mapNonEmpty!17003 ((_ is Cons!31907) mapValue!17004)) b!2759695))

(declare-fun m!3178979 () Bool)

(assert (=> setNonEmpty!22316 m!3178979))

(declare-fun m!3178981 () Bool)

(assert (=> b!2759695 m!3178981))

(declare-fun b!2759697 () Bool)

(declare-fun e!1740016 () Bool)

(declare-fun tp!872131 () Bool)

(assert (=> b!2759697 (= e!1740016 tp!872131)))

(declare-fun setNonEmpty!22317 () Bool)

(declare-fun setRes!22317 () Bool)

(declare-fun tp!872129 () Bool)

(declare-fun setElem!22317 () Context!4562)

(assert (=> setNonEmpty!22317 (= setRes!22317 (and tp!872129 (inv!43328 setElem!22317) e!1740016))))

(declare-fun setRest!22317 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22317 (= (_2!18795 (h!37327 mapDefault!17004)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22317 true) setRest!22317))))

(declare-fun e!1740017 () Bool)

(assert (=> b!2759354 (= tp!872065 e!1740017)))

(declare-fun setIsEmpty!22317 () Bool)

(assert (=> setIsEmpty!22317 setRes!22317))

(declare-fun tp!872128 () Bool)

(declare-fun e!1740018 () Bool)

(declare-fun tp!872130 () Bool)

(declare-fun b!2759698 () Bool)

(assert (=> b!2759698 (= e!1740017 (and tp!872130 (inv!43328 (_2!18794 (_1!18795 (h!37327 mapDefault!17004)))) e!1740018 tp_is_empty!13997 setRes!22317 tp!872128))))

(declare-fun condSetEmpty!22317 () Bool)

(assert (=> b!2759698 (= condSetEmpty!22317 (= (_2!18795 (h!37327 mapDefault!17004)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun b!2759699 () Bool)

(declare-fun tp!872132 () Bool)

(assert (=> b!2759699 (= e!1740018 tp!872132)))

(assert (= b!2759698 b!2759699))

(assert (= (and b!2759698 condSetEmpty!22317) setIsEmpty!22317))

(assert (= (and b!2759698 (not condSetEmpty!22317)) setNonEmpty!22317))

(assert (= setNonEmpty!22317 b!2759697))

(assert (= (and b!2759354 ((_ is Cons!31907) mapDefault!17004)) b!2759698))

(declare-fun m!3178983 () Bool)

(assert (=> setNonEmpty!22317 m!3178983))

(declare-fun m!3178985 () Bool)

(assert (=> b!2759698 m!3178985))

(declare-fun tp!872142 () Bool)

(declare-fun e!1740027 () Bool)

(declare-fun b!2759708 () Bool)

(declare-fun e!1740026 () Bool)

(declare-fun setRes!22320 () Bool)

(assert (=> b!2759708 (= e!1740027 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 (zeroValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))))) e!1740026 tp_is_empty!13997 setRes!22320 tp!872142))))

(declare-fun condSetEmpty!22320 () Bool)

(assert (=> b!2759708 (= condSetEmpty!22320 (= (_2!18797 (h!37328 (zeroValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun setIsEmpty!22320 () Bool)

(assert (=> setIsEmpty!22320 setRes!22320))

(declare-fun b!2759709 () Bool)

(declare-fun tp!872143 () Bool)

(assert (=> b!2759709 (= e!1740026 tp!872143)))

(declare-fun setNonEmpty!22320 () Bool)

(declare-fun e!1740025 () Bool)

(declare-fun setElem!22320 () Context!4562)

(declare-fun tp!872141 () Bool)

(assert (=> setNonEmpty!22320 (= setRes!22320 (and tp!872141 (inv!43328 setElem!22320) e!1740025))))

(declare-fun setRest!22320 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22320 (= (_2!18797 (h!37328 (zeroValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22320 true) setRest!22320))))

(assert (=> b!2759341 (= tp!872069 e!1740027)))

(declare-fun b!2759710 () Bool)

(declare-fun tp!872144 () Bool)

(assert (=> b!2759710 (= e!1740025 tp!872144)))

(assert (= b!2759708 b!2759709))

(assert (= (and b!2759708 condSetEmpty!22320) setIsEmpty!22320))

(assert (= (and b!2759708 (not condSetEmpty!22320)) setNonEmpty!22320))

(assert (= setNonEmpty!22320 b!2759710))

(assert (= (and b!2759341 ((_ is Cons!31908) (zeroValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) b!2759708))

(declare-fun m!3178987 () Bool)

(assert (=> b!2759708 m!3178987))

(declare-fun m!3178989 () Bool)

(assert (=> setNonEmpty!22320 m!3178989))

(declare-fun tp!872146 () Bool)

(declare-fun e!1740029 () Bool)

(declare-fun b!2759711 () Bool)

(declare-fun setRes!22321 () Bool)

(declare-fun e!1740030 () Bool)

(assert (=> b!2759711 (= e!1740030 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 (minValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))))) e!1740029 tp_is_empty!13997 setRes!22321 tp!872146))))

(declare-fun condSetEmpty!22321 () Bool)

(assert (=> b!2759711 (= condSetEmpty!22321 (= (_2!18797 (h!37328 (minValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun setIsEmpty!22321 () Bool)

(assert (=> setIsEmpty!22321 setRes!22321))

(declare-fun b!2759712 () Bool)

(declare-fun tp!872147 () Bool)

(assert (=> b!2759712 (= e!1740029 tp!872147)))

(declare-fun e!1740028 () Bool)

(declare-fun setElem!22321 () Context!4562)

(declare-fun tp!872145 () Bool)

(declare-fun setNonEmpty!22321 () Bool)

(assert (=> setNonEmpty!22321 (= setRes!22321 (and tp!872145 (inv!43328 setElem!22321) e!1740028))))

(declare-fun setRest!22321 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22321 (= (_2!18797 (h!37328 (minValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22321 true) setRest!22321))))

(assert (=> b!2759341 (= tp!872071 e!1740030)))

(declare-fun b!2759713 () Bool)

(declare-fun tp!872148 () Bool)

(assert (=> b!2759713 (= e!1740028 tp!872148)))

(assert (= b!2759711 b!2759712))

(assert (= (and b!2759711 condSetEmpty!22321) setIsEmpty!22321))

(assert (= (and b!2759711 (not condSetEmpty!22321)) setNonEmpty!22321))

(assert (= setNonEmpty!22321 b!2759713))

(assert (= (and b!2759341 ((_ is Cons!31908) (minValue!3994 (v!33517 (underlying!7673 (v!33518 (underlying!7674 (cache!3784 cacheUp!820)))))))) b!2759711))

(declare-fun m!3178991 () Bool)

(assert (=> b!2759711 m!3178991))

(declare-fun m!3178993 () Bool)

(assert (=> setNonEmpty!22321 m!3178993))

(declare-fun b!2759718 () Bool)

(declare-fun e!1740033 () Bool)

(declare-fun tp!872153 () Bool)

(declare-fun tp!872154 () Bool)

(assert (=> b!2759718 (= e!1740033 (and tp!872153 tp!872154))))

(assert (=> b!2759334 (= tp!872075 e!1740033)))

(assert (= (and b!2759334 ((_ is Cons!31906) (exprs!2781 setElem!22307))) b!2759718))

(declare-fun e!1740036 () Bool)

(declare-fun b!2759719 () Bool)

(declare-fun setRes!22322 () Bool)

(declare-fun tp!872156 () Bool)

(declare-fun e!1740035 () Bool)

(assert (=> b!2759719 (= e!1740036 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 mapDefault!17003)))) e!1740035 tp_is_empty!13997 setRes!22322 tp!872156))))

(declare-fun condSetEmpty!22322 () Bool)

(assert (=> b!2759719 (= condSetEmpty!22322 (= (_2!18797 (h!37328 mapDefault!17003)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun setIsEmpty!22322 () Bool)

(assert (=> setIsEmpty!22322 setRes!22322))

(declare-fun b!2759720 () Bool)

(declare-fun tp!872157 () Bool)

(assert (=> b!2759720 (= e!1740035 tp!872157)))

(declare-fun e!1740034 () Bool)

(declare-fun tp!872155 () Bool)

(declare-fun setNonEmpty!22322 () Bool)

(declare-fun setElem!22322 () Context!4562)

(assert (=> setNonEmpty!22322 (= setRes!22322 (and tp!872155 (inv!43328 setElem!22322) e!1740034))))

(declare-fun setRest!22322 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22322 (= (_2!18797 (h!37328 mapDefault!17003)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22322 true) setRest!22322))))

(assert (=> b!2759343 (= tp!872079 e!1740036)))

(declare-fun b!2759721 () Bool)

(declare-fun tp!872158 () Bool)

(assert (=> b!2759721 (= e!1740034 tp!872158)))

(assert (= b!2759719 b!2759720))

(assert (= (and b!2759719 condSetEmpty!22322) setIsEmpty!22322))

(assert (= (and b!2759719 (not condSetEmpty!22322)) setNonEmpty!22322))

(assert (= setNonEmpty!22322 b!2759721))

(assert (= (and b!2759343 ((_ is Cons!31908) mapDefault!17003)) b!2759719))

(declare-fun m!3178995 () Bool)

(assert (=> b!2759719 m!3178995))

(declare-fun m!3178997 () Bool)

(assert (=> setNonEmpty!22322 m!3178997))

(declare-fun b!2759722 () Bool)

(declare-fun e!1740037 () Bool)

(declare-fun tp!872162 () Bool)

(assert (=> b!2759722 (= e!1740037 tp!872162)))

(declare-fun tp!872160 () Bool)

(declare-fun setElem!22323 () Context!4562)

(declare-fun setNonEmpty!22323 () Bool)

(declare-fun setRes!22323 () Bool)

(assert (=> setNonEmpty!22323 (= setRes!22323 (and tp!872160 (inv!43328 setElem!22323) e!1740037))))

(declare-fun setRest!22323 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22323 (= (_2!18795 (h!37327 (zeroValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22323 true) setRest!22323))))

(declare-fun e!1740038 () Bool)

(assert (=> b!2759335 (= tp!872067 e!1740038)))

(declare-fun setIsEmpty!22323 () Bool)

(assert (=> setIsEmpty!22323 setRes!22323))

(declare-fun tp!872161 () Bool)

(declare-fun tp!872159 () Bool)

(declare-fun b!2759723 () Bool)

(declare-fun e!1740039 () Bool)

(assert (=> b!2759723 (= e!1740038 (and tp!872161 (inv!43328 (_2!18794 (_1!18795 (h!37327 (zeroValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))))) e!1740039 tp_is_empty!13997 setRes!22323 tp!872159))))

(declare-fun condSetEmpty!22323 () Bool)

(assert (=> b!2759723 (= condSetEmpty!22323 (= (_2!18795 (h!37327 (zeroValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun b!2759724 () Bool)

(declare-fun tp!872163 () Bool)

(assert (=> b!2759724 (= e!1740039 tp!872163)))

(assert (= b!2759723 b!2759724))

(assert (= (and b!2759723 condSetEmpty!22323) setIsEmpty!22323))

(assert (= (and b!2759723 (not condSetEmpty!22323)) setNonEmpty!22323))

(assert (= setNonEmpty!22323 b!2759722))

(assert (= (and b!2759335 ((_ is Cons!31907) (zeroValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) b!2759723))

(declare-fun m!3178999 () Bool)

(assert (=> setNonEmpty!22323 m!3178999))

(declare-fun m!3179001 () Bool)

(assert (=> b!2759723 m!3179001))

(declare-fun b!2759725 () Bool)

(declare-fun e!1740040 () Bool)

(declare-fun tp!872167 () Bool)

(assert (=> b!2759725 (= e!1740040 tp!872167)))

(declare-fun setNonEmpty!22324 () Bool)

(declare-fun tp!872165 () Bool)

(declare-fun setElem!22324 () Context!4562)

(declare-fun setRes!22324 () Bool)

(assert (=> setNonEmpty!22324 (= setRes!22324 (and tp!872165 (inv!43328 setElem!22324) e!1740040))))

(declare-fun setRest!22324 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22324 (= (_2!18795 (h!37327 (minValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22324 true) setRest!22324))))

(declare-fun e!1740041 () Bool)

(assert (=> b!2759335 (= tp!872064 e!1740041)))

(declare-fun setIsEmpty!22324 () Bool)

(assert (=> setIsEmpty!22324 setRes!22324))

(declare-fun b!2759726 () Bool)

(declare-fun e!1740042 () Bool)

(declare-fun tp!872166 () Bool)

(declare-fun tp!872164 () Bool)

(assert (=> b!2759726 (= e!1740041 (and tp!872166 (inv!43328 (_2!18794 (_1!18795 (h!37327 (minValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))))) e!1740042 tp_is_empty!13997 setRes!22324 tp!872164))))

(declare-fun condSetEmpty!22324 () Bool)

(assert (=> b!2759726 (= condSetEmpty!22324 (= (_2!18795 (h!37327 (minValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun b!2759727 () Bool)

(declare-fun tp!872168 () Bool)

(assert (=> b!2759727 (= e!1740042 tp!872168)))

(assert (= b!2759726 b!2759727))

(assert (= (and b!2759726 condSetEmpty!22324) setIsEmpty!22324))

(assert (= (and b!2759726 (not condSetEmpty!22324)) setNonEmpty!22324))

(assert (= setNonEmpty!22324 b!2759725))

(assert (= (and b!2759335 ((_ is Cons!31907) (minValue!3993 (v!33515 (underlying!7671 (v!33516 (underlying!7672 (cache!3783 cacheDown!939)))))))) b!2759726))

(declare-fun m!3179003 () Bool)

(assert (=> setNonEmpty!22324 m!3179003))

(declare-fun m!3179005 () Bool)

(assert (=> b!2759726 m!3179005))

(declare-fun e!1740047 () Bool)

(declare-fun tp!872177 () Bool)

(declare-fun tp!872175 () Bool)

(declare-fun b!2759736 () Bool)

(assert (=> b!2759736 (= e!1740047 (and (inv!43329 (left!24348 (c!447030 input!5495))) tp!872177 (inv!43329 (right!24678 (c!447030 input!5495))) tp!872175))))

(declare-fun b!2759738 () Bool)

(declare-fun e!1740048 () Bool)

(declare-fun tp!872176 () Bool)

(assert (=> b!2759738 (= e!1740048 tp!872176)))

(declare-fun b!2759737 () Bool)

(declare-fun inv!43335 (IArray!19895) Bool)

(assert (=> b!2759737 (= e!1740047 (and (inv!43335 (xs!13053 (c!447030 input!5495))) e!1740048))))

(assert (=> b!2759358 (= tp!872063 (and (inv!43329 (c!447030 input!5495)) e!1740047))))

(assert (= (and b!2759358 ((_ is Node!9945) (c!447030 input!5495))) b!2759736))

(assert (= b!2759737 b!2759738))

(assert (= (and b!2759358 ((_ is Leaf!15145) (c!447030 input!5495))) b!2759737))

(declare-fun m!3179007 () Bool)

(assert (=> b!2759736 m!3179007))

(declare-fun m!3179009 () Bool)

(assert (=> b!2759736 m!3179009))

(declare-fun m!3179011 () Bool)

(assert (=> b!2759737 m!3179011))

(assert (=> b!2759358 m!3178265))

(declare-fun condSetEmpty!22327 () Bool)

(assert (=> setNonEmpty!22307 (= condSetEmpty!22327 (= setRest!22307 ((as const (Array Context!4562 Bool)) false)))))

(declare-fun setRes!22327 () Bool)

(assert (=> setNonEmpty!22307 (= tp!872074 setRes!22327)))

(declare-fun setIsEmpty!22327 () Bool)

(assert (=> setIsEmpty!22327 setRes!22327))

(declare-fun tp!872182 () Bool)

(declare-fun e!1740051 () Bool)

(declare-fun setNonEmpty!22327 () Bool)

(declare-fun setElem!22327 () Context!4562)

(assert (=> setNonEmpty!22327 (= setRes!22327 (and tp!872182 (inv!43328 setElem!22327) e!1740051))))

(declare-fun setRest!22327 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22327 (= setRest!22307 ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22327 true) setRest!22327))))

(declare-fun b!2759743 () Bool)

(declare-fun tp!872183 () Bool)

(assert (=> b!2759743 (= e!1740051 tp!872183)))

(assert (= (and setNonEmpty!22307 condSetEmpty!22327) setIsEmpty!22327))

(assert (= (and setNonEmpty!22307 (not condSetEmpty!22327)) setNonEmpty!22327))

(assert (= setNonEmpty!22327 b!2759743))

(declare-fun m!3179013 () Bool)

(assert (=> setNonEmpty!22327 m!3179013))

(declare-fun b!2759758 () Bool)

(declare-fun e!1740067 () Bool)

(declare-fun tp!872208 () Bool)

(assert (=> b!2759758 (= e!1740067 tp!872208)))

(declare-fun mapNonEmpty!17010 () Bool)

(declare-fun mapRes!17010 () Bool)

(declare-fun tp!872206 () Bool)

(declare-fun e!1740069 () Bool)

(assert (=> mapNonEmpty!17010 (= mapRes!17010 (and tp!872206 e!1740069))))

(declare-fun mapRest!17010 () (Array (_ BitVec 32) List!32008))

(declare-fun mapKey!17010 () (_ BitVec 32))

(declare-fun mapValue!17010 () List!32008)

(assert (=> mapNonEmpty!17010 (= mapRest!17003 (store mapRest!17010 mapKey!17010 mapValue!17010))))

(declare-fun setIsEmpty!22332 () Bool)

(declare-fun setRes!22332 () Bool)

(assert (=> setIsEmpty!22332 setRes!22332))

(declare-fun mapIsEmpty!17010 () Bool)

(assert (=> mapIsEmpty!17010 mapRes!17010))

(declare-fun b!2759760 () Bool)

(declare-fun e!1740064 () Bool)

(declare-fun tp!872207 () Bool)

(assert (=> b!2759760 (= e!1740064 tp!872207)))

(declare-fun setIsEmpty!22333 () Bool)

(declare-fun setRes!22333 () Bool)

(assert (=> setIsEmpty!22333 setRes!22333))

(declare-fun tp!872203 () Bool)

(declare-fun b!2759761 () Bool)

(declare-fun e!1740068 () Bool)

(declare-fun mapDefault!17010 () List!32008)

(assert (=> b!2759761 (= e!1740068 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 mapDefault!17010)))) e!1740067 tp_is_empty!13997 setRes!22333 tp!872203))))

(declare-fun condSetEmpty!22332 () Bool)

(assert (=> b!2759761 (= condSetEmpty!22332 (= (_2!18797 (h!37328 mapDefault!17010)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun b!2759762 () Bool)

(declare-fun e!1740065 () Bool)

(declare-fun tp!872210 () Bool)

(assert (=> b!2759762 (= e!1740065 tp!872210)))

(declare-fun b!2759759 () Bool)

(declare-fun e!1740066 () Bool)

(declare-fun tp!872202 () Bool)

(assert (=> b!2759759 (= e!1740066 tp!872202)))

(declare-fun condMapEmpty!17010 () Bool)

(assert (=> mapNonEmpty!17004 (= condMapEmpty!17010 (= mapRest!17003 ((as const (Array (_ BitVec 32) List!32008)) mapDefault!17010)))))

(assert (=> mapNonEmpty!17004 (= tp!872073 (and e!1740068 mapRes!17010))))

(declare-fun tp!872209 () Bool)

(declare-fun b!2759763 () Bool)

(assert (=> b!2759763 (= e!1740069 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 mapValue!17010)))) e!1740064 tp_is_empty!13997 setRes!22332 tp!872209))))

(declare-fun condSetEmpty!22333 () Bool)

(assert (=> b!2759763 (= condSetEmpty!22333 (= (_2!18797 (h!37328 mapValue!17010)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun tp!872204 () Bool)

(declare-fun setElem!22332 () Context!4562)

(declare-fun setNonEmpty!22332 () Bool)

(assert (=> setNonEmpty!22332 (= setRes!22332 (and tp!872204 (inv!43328 setElem!22332) e!1740066))))

(declare-fun setRest!22332 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22332 (= (_2!18797 (h!37328 mapValue!17010)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22332 true) setRest!22332))))

(declare-fun tp!872205 () Bool)

(declare-fun setElem!22333 () Context!4562)

(declare-fun setNonEmpty!22333 () Bool)

(assert (=> setNonEmpty!22333 (= setRes!22333 (and tp!872205 (inv!43328 setElem!22333) e!1740065))))

(declare-fun setRest!22333 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22333 (= (_2!18797 (h!37328 mapDefault!17010)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22333 true) setRest!22333))))

(assert (= (and mapNonEmpty!17004 condMapEmpty!17010) mapIsEmpty!17010))

(assert (= (and mapNonEmpty!17004 (not condMapEmpty!17010)) mapNonEmpty!17010))

(assert (= b!2759763 b!2759760))

(assert (= (and b!2759763 condSetEmpty!22333) setIsEmpty!22332))

(assert (= (and b!2759763 (not condSetEmpty!22333)) setNonEmpty!22332))

(assert (= setNonEmpty!22332 b!2759759))

(assert (= (and mapNonEmpty!17010 ((_ is Cons!31908) mapValue!17010)) b!2759763))

(assert (= b!2759761 b!2759758))

(assert (= (and b!2759761 condSetEmpty!22332) setIsEmpty!22333))

(assert (= (and b!2759761 (not condSetEmpty!22332)) setNonEmpty!22333))

(assert (= setNonEmpty!22333 b!2759762))

(assert (= (and mapNonEmpty!17004 ((_ is Cons!31908) mapDefault!17010)) b!2759761))

(declare-fun m!3179015 () Bool)

(assert (=> mapNonEmpty!17010 m!3179015))

(declare-fun m!3179017 () Bool)

(assert (=> setNonEmpty!22333 m!3179017))

(declare-fun m!3179019 () Bool)

(assert (=> setNonEmpty!22332 m!3179019))

(declare-fun m!3179021 () Bool)

(assert (=> b!2759761 m!3179021))

(declare-fun m!3179023 () Bool)

(assert (=> b!2759763 m!3179023))

(declare-fun setRes!22334 () Bool)

(declare-fun e!1740071 () Bool)

(declare-fun b!2759764 () Bool)

(declare-fun e!1740072 () Bool)

(declare-fun tp!872212 () Bool)

(assert (=> b!2759764 (= e!1740072 (and (inv!43328 (_1!18796 (_1!18797 (h!37328 mapValue!17003)))) e!1740071 tp_is_empty!13997 setRes!22334 tp!872212))))

(declare-fun condSetEmpty!22334 () Bool)

(assert (=> b!2759764 (= condSetEmpty!22334 (= (_2!18797 (h!37328 mapValue!17003)) ((as const (Array Context!4562 Bool)) false)))))

(declare-fun setIsEmpty!22334 () Bool)

(assert (=> setIsEmpty!22334 setRes!22334))

(declare-fun b!2759765 () Bool)

(declare-fun tp!872213 () Bool)

(assert (=> b!2759765 (= e!1740071 tp!872213)))

(declare-fun e!1740070 () Bool)

(declare-fun tp!872211 () Bool)

(declare-fun setElem!22334 () Context!4562)

(declare-fun setNonEmpty!22334 () Bool)

(assert (=> setNonEmpty!22334 (= setRes!22334 (and tp!872211 (inv!43328 setElem!22334) e!1740070))))

(declare-fun setRest!22334 () (InoxSet Context!4562))

(assert (=> setNonEmpty!22334 (= (_2!18797 (h!37328 mapValue!17003)) ((_ map or) (store ((as const (Array Context!4562 Bool)) false) setElem!22334 true) setRest!22334))))

(assert (=> mapNonEmpty!17004 (= tp!872068 e!1740072)))

(declare-fun b!2759766 () Bool)

(declare-fun tp!872214 () Bool)

(assert (=> b!2759766 (= e!1740070 tp!872214)))

(assert (= b!2759764 b!2759765))

(assert (= (and b!2759764 condSetEmpty!22334) setIsEmpty!22334))

(assert (= (and b!2759764 (not condSetEmpty!22334)) setNonEmpty!22334))

(assert (= setNonEmpty!22334 b!2759766))

(assert (= (and mapNonEmpty!17004 ((_ is Cons!31908) mapValue!17003)) b!2759764))

(declare-fun m!3179025 () Bool)

(assert (=> b!2759764 m!3179025))

(declare-fun m!3179027 () Bool)

(assert (=> setNonEmpty!22334 m!3179027))

(check-sat (not d!800022) (not b!2759409) (not setNonEmpty!22332) (not b!2759636) (not d!799988) (not b!2759763) (not b!2759624) (not b!2759697) (not bm!179131) (not b!2759482) (not bm!179109) (not bm!179127) (not setNonEmpty!22316) (not b!2759431) (not b!2759518) (not d!799930) (not b!2759657) (not b!2759483) (not b!2759713) (not b!2759723) (not bm!179157) (not bm!179099) (not b!2759423) (not d!799886) (not bm!179144) (not b!2759621) (not b!2759424) (not b!2759722) (not d!799984) (not d!799904) b_and!202743 (not b!2759606) (not d!799990) (not d!799906) (not b!2759640) (not b!2759475) (not b!2759377) (not b!2759653) (not bm!179142) (not d!799946) (not bm!179134) (not d!799892) (not d!800000) (not d!800018) (not bm!179141) (not b!2759743) (not b!2759521) (not b!2759758) (not b!2759720) (not b!2759736) (not b!2759712) (not b!2759694) (not bm!179108) (not d!800028) (not bm!179135) (not bm!179138) (not setNonEmpty!22320) b_and!202747 (not bm!179155) (not b!2759658) (not d!799998) (not bm!179094) (not d!800026) (not bm!179159) (not setNonEmpty!22322) (not b!2759682) (not b!2759597) (not b_next!78715) (not b!2759522) (not b!2759514) (not d!799902) (not d!799948) (not d!799934) (not d!799958) (not b!2759520) (not b!2759629) (not setNonEmpty!22324) (not b!2759601) (not b!2759599) (not b!2759651) (not b!2759618) (not d!799940) (not b!2759534) (not b_next!78713) (not b!2759719) (not b!2759428) (not bm!179103) (not b!2759685) (not b!2759695) (not b!2759390) (not d!799954) (not bm!179158) (not setNonEmpty!22313) (not d!799900) (not d!799914) (not d!799964) (not b!2759402) (not b!2759760) (not d!799974) (not d!799910) (not b!2759425) (not b!2759571) (not d!799966) (not setNonEmpty!22312) (not d!799994) (not b!2759469) (not b!2759595) (not b!2759708) (not d!799950) (not bm!179161) (not b!2759580) (not b!2759683) (not bm!179139) (not b!2759427) (not d!800020) (not d!799986) (not b!2759600) (not b_next!78709) (not d!799924) (not bm!179136) (not b!2759598) (not bm!179133) (not b!2759761) (not b!2759379) (not d!799918) (not d!799970) (not bm!179152) (not bm!179150) b_and!202745 (not b!2759696) (not bm!179156) (not bm!179137) (not b!2759397) (not b!2759604) (not d!799952) (not d!799936) (not b!2759699) (not b!2759358) (not b!2759681) (not d!800012) (not d!799898) (not d!800002) (not d!799944) (not b!2759577) (not d!799996) (not d!800030) (not bm!179143) (not b!2759403) (not b!2759649) (not b!2759710) (not bm!179154) (not setNonEmpty!22323) b_and!202749 (not bm!179132) (not b!2759535) (not bm!179101) (not b!2759738) (not b!2759711) (not b!2759764) (not b!2759536) (not b!2759596) (not bm!179126) (not b_next!78711) tp_is_empty!13997 (not b!2759456) (not b!2759605) (not b!2759461) (not b!2759389) (not bm!179146) (not b!2759460) (not b!2759684) (not b!2759762) (not b!2759465) (not bm!179145) (not setNonEmpty!22317) (not d!799978) (not b!2759718) (not b!2759566) (not b!2759721) (not setNonEmpty!22321) (not bm!179097) (not b!2759602) (not setNonEmpty!22333) (not b!2759570) (not b!2759698) (not b!2759464) (not b!2759759) (not d!799972) (not b!2759411) (not bm!179095) (not b!2759737) (not b!2759476) (not b!2759680) (not b!2759642) (not setNonEmpty!22327) (not mapNonEmpty!17007) (not d!799908) (not b!2759468) (not b!2759378) (not bm!179100) (not bm!179151) (not b!2759616) (not bm!179149) (not d!799894) (not b!2759630) (not b!2759478) (not b!2759724) (not b!2759664) (not d!799942) (not bm!179147) (not b!2759766) (not bm!179128) (not b!2759394) (not b!2759462) (not d!799956) (not bm!179096) (not bm!179140) (not b!2759412) (not b!2759727) (not bm!179148) (not bm!179160) (not bm!179153) (not b!2759765) (not b!2759709) (not d!799976) (not bm!179130) (not d!799982) (not bm!179098) (not bm!179073) (not b!2759581) (not b!2759451) (not setNonEmpty!22334) (not bm!179129) (not d!800006) (not d!799926) (not d!800008) (not b!2759479) (not b!2759533) (not d!799884) (not d!799980) (not mapNonEmpty!17010) (not b!2759725) (not b!2759527) (not b!2759726) (not d!799968) (not bm!179102) (not b!2759612))
(check-sat b_and!202743 b_and!202747 (not b_next!78715) (not b_next!78713) (not b_next!78709) b_and!202745 b_and!202749 (not b_next!78711))
