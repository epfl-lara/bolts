; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267884 () Bool)

(assert start!267884)

(declare-fun b!2767103 () Bool)

(declare-fun b_free!78133 () Bool)

(declare-fun b_next!78837 () Bool)

(assert (=> b!2767103 (= b_free!78133 (not b_next!78837))))

(declare-fun tp!874583 () Bool)

(declare-fun b_and!202871 () Bool)

(assert (=> b!2767103 (= tp!874583 b_and!202871)))

(declare-fun b!2767091 () Bool)

(declare-fun b_free!78135 () Bool)

(declare-fun b_next!78839 () Bool)

(assert (=> b!2767091 (= b_free!78135 (not b_next!78839))))

(declare-fun tp!874582 () Bool)

(declare-fun b_and!202873 () Bool)

(assert (=> b!2767091 (= tp!874582 b_and!202873)))

(declare-fun b!2767065 () Bool)

(declare-fun b_free!78137 () Bool)

(declare-fun b_next!78841 () Bool)

(assert (=> b!2767065 (= b_free!78137 (not b_next!78841))))

(declare-fun tp!874577 () Bool)

(declare-fun b_and!202875 () Bool)

(assert (=> b!2767065 (= tp!874577 b_and!202875)))

(declare-fun b!2767080 () Bool)

(declare-fun b_free!78139 () Bool)

(declare-fun b_next!78843 () Bool)

(assert (=> b!2767080 (= b_free!78139 (not b_next!78843))))

(declare-fun tp!874569 () Bool)

(declare-fun b_and!202877 () Bool)

(assert (=> b!2767080 (= tp!874569 b_and!202877)))

(declare-fun b!2767058 () Bool)

(declare-fun e!1744711 () Bool)

(declare-datatypes ((C!16308 0))(
  ( (C!16309 (val!10088 Int)) )
))
(declare-datatypes ((Regex!8075 0))(
  ( (ElementMatch!8075 (c!449004 C!16308)) (Concat!13163 (regOne!16662 Regex!8075) (regTwo!16662 Regex!8075)) (EmptyExpr!8075) (Star!8075 (reg!8404 Regex!8075)) (EmptyLang!8075) (Union!8075 (regOne!16663 Regex!8075) (regTwo!16663 Regex!8075)) )
))
(declare-datatypes ((List!32061 0))(
  ( (Nil!31961) (Cons!31961 (h!37381 Regex!8075) (t!228181 List!32061)) )
))
(declare-datatypes ((Context!4586 0))(
  ( (Context!4587 (exprs!2793 List!32061)) )
))
(declare-datatypes ((tuple2!32084 0))(
  ( (tuple2!32085 (_1!18905 Context!4586) (_2!18905 C!16308)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32086 0))(
  ( (tuple2!32087 (_1!18906 tuple2!32084) (_2!18906 (InoxSet Context!4586))) )
))
(declare-datatypes ((List!32062 0))(
  ( (Nil!31962) (Cons!31962 (h!37382 tuple2!32086) (t!228182 List!32062)) )
))
(declare-datatypes ((Hashable!3674 0))(
  ( (HashableExt!3673 (__x!20924 Int)) )
))
(declare-datatypes ((array!13378 0))(
  ( (array!13379 (arr!5966 (Array (_ BitVec 32) List!32062)) (size!24734 (_ BitVec 32))) )
))
(declare-datatypes ((array!13380 0))(
  ( (array!13381 (arr!5967 (Array (_ BitVec 32) (_ BitVec 64))) (size!24735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7516 0))(
  ( (LongMapFixedSize!7517 (defaultEntry!4143 Int) (mask!9532 (_ BitVec 32)) (extraKeys!4007 (_ BitVec 32)) (zeroValue!4017 List!32062) (minValue!4017 List!32062) (_size!7559 (_ BitVec 32)) (_keys!4058 array!13380) (_values!4039 array!13378) (_vacant!3819 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14841 0))(
  ( (Cell!14842 (v!33569 LongMapFixedSize!7516)) )
))
(declare-datatypes ((MutLongMap!3758 0))(
  ( (LongMap!3758 (underlying!7719 Cell!14841)) (MutLongMapExt!3757 (__x!20925 Int)) )
))
(declare-datatypes ((Cell!14843 0))(
  ( (Cell!14844 (v!33570 MutLongMap!3758)) )
))
(declare-datatypes ((MutableMap!3664 0))(
  ( (MutableMapExt!3663 (__x!20926 Int)) (HashMap!3664 (underlying!7720 Cell!14843) (hashF!5706 Hashable!3674) (_size!7560 (_ BitVec 32)) (defaultValue!3835 Int)) )
))
(declare-datatypes ((CacheUp!2370 0))(
  ( (CacheUp!2371 (cache!3807 MutableMap!3664)) )
))
(declare-datatypes ((tuple3!4786 0))(
  ( (tuple3!4787 (_1!18907 Regex!8075) (_2!18907 Context!4586) (_3!2863 C!16308)) )
))
(declare-datatypes ((tuple2!32088 0))(
  ( (tuple2!32089 (_1!18908 tuple3!4786) (_2!18908 (InoxSet Context!4586))) )
))
(declare-datatypes ((List!32063 0))(
  ( (Nil!31963) (Cons!31963 (h!37383 tuple2!32088) (t!228183 List!32063)) )
))
(declare-datatypes ((array!13382 0))(
  ( (array!13383 (arr!5968 (Array (_ BitVec 32) List!32063)) (size!24736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7518 0))(
  ( (LongMapFixedSize!7519 (defaultEntry!4144 Int) (mask!9533 (_ BitVec 32)) (extraKeys!4008 (_ BitVec 32)) (zeroValue!4018 List!32063) (minValue!4018 List!32063) (_size!7561 (_ BitVec 32)) (_keys!4059 array!13380) (_values!4040 array!13382) (_vacant!3820 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14845 0))(
  ( (Cell!14846 (v!33571 LongMapFixedSize!7518)) )
))
(declare-datatypes ((MutLongMap!3759 0))(
  ( (LongMap!3759 (underlying!7721 Cell!14845)) (MutLongMapExt!3758 (__x!20927 Int)) )
))
(declare-datatypes ((Cell!14847 0))(
  ( (Cell!14848 (v!33572 MutLongMap!3759)) )
))
(declare-datatypes ((Hashable!3675 0))(
  ( (HashableExt!3674 (__x!20928 Int)) )
))
(declare-datatypes ((MutableMap!3665 0))(
  ( (MutableMapExt!3664 (__x!20929 Int)) (HashMap!3665 (underlying!7722 Cell!14847) (hashF!5707 Hashable!3675) (_size!7562 (_ BitVec 32)) (defaultValue!3836 Int)) )
))
(declare-datatypes ((CacheDown!2490 0))(
  ( (CacheDown!2491 (cache!3808 MutableMap!3665)) )
))
(declare-datatypes ((tuple3!4788 0))(
  ( (tuple3!4789 (_1!18909 Int) (_2!18909 CacheUp!2370) (_3!2864 CacheDown!2490)) )
))
(declare-fun lt!985328 () tuple3!4788)

(declare-fun call!180605 () Int)

(assert (=> b!2767058 (= e!1744711 (= (_1!18909 lt!985328) call!180605))))

(declare-fun lt!985397 () tuple3!4788)

(declare-fun bm!180587 () Bool)

(declare-fun c!448995 () Bool)

(declare-fun call!180601 () Bool)

(declare-fun valid!2928 (CacheDown!2490) Bool)

(assert (=> bm!180587 (= call!180601 (valid!2928 (ite c!448995 (_3!2864 lt!985328) (_3!2864 lt!985397))))))

(declare-fun setRes!22612 () Bool)

(declare-fun tp!874580 () Bool)

(declare-fun setNonEmpty!22612 () Bool)

(declare-fun e!1744721 () Bool)

(declare-fun setElem!22612 () Context!4586)

(declare-fun inv!43400 (Context!4586) Bool)

(assert (=> setNonEmpty!22612 (= setRes!22612 (and tp!874580 (inv!43400 setElem!22612) e!1744721))))

(declare-fun z!3597 () (InoxSet Context!4586))

(declare-fun setRest!22612 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22612 (= z!3597 ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22612 true) setRest!22612))))

(declare-fun b!2767059 () Bool)

(declare-fun e!1744709 () Int)

(declare-fun lt!985393 () Int)

(assert (=> b!2767059 (= e!1744709 (ite (= lt!985393 0) 0 lt!985393))))

(declare-fun call!180595 () Int)

(assert (=> b!2767059 (= lt!985393 call!180595)))

(declare-datatypes ((List!32064 0))(
  ( (Nil!31964) (Cons!31964 (h!37384 C!16308) (t!228184 List!32064)) )
))
(declare-fun lt!985361 () List!32064)

(declare-fun bm!180588 () Bool)

(declare-fun call!180594 () tuple3!4788)

(declare-fun lt!985360 () Int)

(declare-datatypes ((tuple3!4790 0))(
  ( (tuple3!4791 (_1!18910 (InoxSet Context!4586)) (_2!18910 CacheUp!2370) (_3!2865 CacheDown!2490)) )
))
(declare-fun lt!985386 () tuple3!4790)

(declare-fun lt!985352 () List!32064)

(declare-fun lt!985377 () tuple3!4790)

(declare-datatypes ((IArray!19919 0))(
  ( (IArray!19920 (innerList!10017 List!32064)) )
))
(declare-datatypes ((Conc!9957 0))(
  ( (Node!9957 (left!24376 Conc!9957) (right!24706 Conc!9957) (csize!20144 Int) (cheight!10168 Int)) (Leaf!15163 (xs!13066 IArray!19919) (csize!20145 Int)) (Empty!9957) )
))
(declare-datatypes ((BalanceConc!19528 0))(
  ( (BalanceConc!19529 (c!449005 Conc!9957)) )
))
(declare-fun input!5495 () BalanceConc!19528)

(declare-fun findLongestMatchInnerZipperFastMem!27 (CacheUp!2370 CacheDown!2490 (InoxSet Context!4586) List!32064 Int List!32064 BalanceConc!19528 Int) tuple3!4788)

(assert (=> bm!180588 (= call!180594 (findLongestMatchInnerZipperFastMem!27 (ite c!448995 (_2!18910 lt!985377) (_2!18910 lt!985386)) (ite c!448995 (_3!2865 lt!985377) (_3!2865 lt!985386)) (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360))))

(declare-fun bm!180589 () Bool)

(declare-datatypes ((Unit!46052 0))(
  ( (Unit!46053) )
))
(declare-fun call!180609 () Unit!46052)

(declare-fun lt!985390 () List!32064)

(declare-fun lemmaIsPrefixRefl!1673 (List!32064 List!32064) Unit!46052)

(assert (=> bm!180589 (= call!180609 (lemmaIsPrefixRefl!1673 lt!985390 lt!985390))))

(declare-fun b!2767060 () Bool)

(declare-datatypes ((tuple3!4792 0))(
  ( (tuple3!4793 (_1!18911 Int) (_2!18911 CacheDown!2490) (_3!2866 CacheUp!2370)) )
))
(declare-fun e!1744716 () tuple3!4792)

(assert (=> b!2767060 (= e!1744716 (tuple3!4793 (_1!18909 lt!985397) (_3!2864 lt!985397) (_2!18909 lt!985397)))))

(declare-fun call!180602 () tuple3!4790)

(assert (=> b!2767060 (= lt!985386 call!180602)))

(assert (=> b!2767060 (= lt!985397 call!180594)))

(declare-fun res!1157628 () Bool)

(declare-fun call!180596 () Bool)

(assert (=> b!2767060 (= res!1157628 call!180596)))

(declare-fun e!1744705 () Bool)

(assert (=> b!2767060 (=> (not res!1157628) (not e!1744705))))

(assert (=> b!2767060 e!1744705))

(declare-fun b!2767061 () Bool)

(declare-fun e!1744730 () Bool)

(declare-fun tp!874574 () Bool)

(declare-fun inv!43401 (Conc!9957) Bool)

(assert (=> b!2767061 (= e!1744730 (and (inv!43401 (c!449005 input!5495)) tp!874574))))

(declare-fun b!2767062 () Bool)

(declare-fun e!1744717 () Bool)

(declare-datatypes ((tuple2!32090 0))(
  ( (tuple2!32091 (_1!18912 List!32064) (_2!18912 List!32064)) )
))
(declare-fun lt!985359 () tuple2!32090)

(assert (=> b!2767062 (= e!1744717 (= lt!985359 (tuple2!32091 Nil!31964 lt!985390)))))

(declare-fun b!2767063 () Bool)

(declare-fun e!1744724 () tuple2!32090)

(assert (=> b!2767063 (= e!1744724 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun b!2767064 () Bool)

(declare-fun e!1744726 () Unit!46052)

(declare-fun Unit!46054 () Unit!46052)

(assert (=> b!2767064 (= e!1744726 Unit!46054)))

(declare-fun lt!985391 () Unit!46052)

(assert (=> b!2767064 (= lt!985391 call!180609)))

(declare-fun call!180610 () Bool)

(assert (=> b!2767064 call!180610))

(declare-fun lt!985373 () Unit!46052)

(declare-fun call!180603 () Unit!46052)

(assert (=> b!2767064 (= lt!985373 call!180603)))

(assert (=> b!2767064 false))

(declare-fun bm!180590 () Bool)

(declare-fun call!180604 () Unit!46052)

(declare-fun lemmaIsPrefixSameLengthThenSameList!456 (List!32064 List!32064 List!32064) Unit!46052)

(assert (=> bm!180590 (= call!180604 (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 Nil!31964 lt!985390))))

(declare-fun mapNonEmpty!17133 () Bool)

(declare-fun mapRes!17134 () Bool)

(declare-fun tp!874581 () Bool)

(declare-fun tp!874570 () Bool)

(assert (=> mapNonEmpty!17133 (= mapRes!17134 (and tp!874581 tp!874570))))

(declare-fun mapValue!17134 () List!32062)

(declare-fun mapKey!17134 () (_ BitVec 32))

(declare-fun cacheUp!820 () CacheUp!2370)

(declare-fun mapRest!17133 () (Array (_ BitVec 32) List!32062))

(assert (=> mapNonEmpty!17133 (= (arr!5966 (_values!4039 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) (store mapRest!17133 mapKey!17134 mapValue!17134))))

(declare-fun e!1744725 () Bool)

(declare-fun e!1744703 () Bool)

(declare-fun tp!874578 () Bool)

(declare-fun cacheDown!939 () CacheDown!2490)

(declare-fun tp!874579 () Bool)

(declare-fun array_inv!4266 (array!13380) Bool)

(declare-fun array_inv!4267 (array!13382) Bool)

(assert (=> b!2767065 (= e!1744725 (and tp!874577 tp!874578 tp!874579 (array_inv!4266 (_keys!4059 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) (array_inv!4267 (_values!4040 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) e!1744703))))

(declare-fun b!2767066 () Bool)

(declare-fun e!1744728 () Bool)

(declare-fun lt!985383 () Int)

(assert (=> b!2767066 (= e!1744728 (= lt!985383 0))))

(declare-fun b!2767067 () Bool)

(declare-fun e!1744723 () tuple3!4792)

(declare-fun lt!985334 () tuple3!4788)

(assert (=> b!2767067 (= e!1744723 (tuple3!4793 0 (_3!2864 lt!985334) (_2!18909 lt!985334)))))

(declare-fun b!2767068 () Bool)

(declare-fun e!1744706 () Unit!46052)

(declare-fun Unit!46055 () Unit!46052)

(assert (=> b!2767068 (= e!1744706 Unit!46055)))

(declare-fun b!2767069 () Bool)

(declare-fun e!1744734 () Bool)

(declare-fun tp!874575 () Bool)

(assert (=> b!2767069 (= e!1744734 (and tp!874575 mapRes!17134))))

(declare-fun condMapEmpty!17134 () Bool)

(declare-fun mapDefault!17133 () List!32062)

(assert (=> b!2767069 (= condMapEmpty!17134 (= (arr!5966 (_values!4039 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32062)) mapDefault!17133)))))

(declare-fun b!2767070 () Bool)

(declare-fun e!1744735 () tuple2!32090)

(assert (=> b!2767070 (= e!1744735 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun b!2767071 () Bool)

(declare-fun e!1744715 () Bool)

(declare-fun e!1744736 () Bool)

(assert (=> b!2767071 (= e!1744715 e!1744736)))

(declare-fun b!2767072 () Bool)

(declare-fun e!1744700 () tuple2!32090)

(declare-fun call!180606 () tuple2!32090)

(assert (=> b!2767072 (= e!1744700 call!180606)))

(declare-fun b!2767073 () Bool)

(declare-fun e!1744707 () Unit!46052)

(declare-fun Unit!46056 () Unit!46052)

(assert (=> b!2767073 (= e!1744707 Unit!46056)))

(declare-fun b!2767074 () Bool)

(assert (=> b!2767074 (= e!1744709 call!180595)))

(declare-fun b!2767075 () Bool)

(declare-fun e!1744733 () Bool)

(declare-fun e!1744710 () Bool)

(assert (=> b!2767075 (= e!1744733 e!1744710)))

(declare-fun b!2767076 () Bool)

(assert (=> b!2767076 (= e!1744724 (tuple2!32091 Nil!31964 Nil!31964))))

(declare-fun bm!180591 () Bool)

(declare-fun call!180597 () Unit!46052)

(assert (=> bm!180591 (= call!180597 (lemmaIsPrefixRefl!1673 lt!985390 lt!985390))))

(declare-fun mapIsEmpty!17133 () Bool)

(assert (=> mapIsEmpty!17133 mapRes!17134))

(declare-fun b!2767077 () Bool)

(declare-fun e!1744729 () Bool)

(assert (=> b!2767077 (= e!1744729 e!1744725)))

(declare-fun b!2767078 () Bool)

(declare-fun e!1744727 () Int)

(assert (=> b!2767078 (= e!1744728 (= lt!985383 e!1744727))))

(declare-fun c!449002 () Bool)

(assert (=> b!2767078 (= c!449002 (= 0 lt!985360))))

(declare-fun b!2767079 () Bool)

(declare-fun e!1744718 () tuple3!4792)

(assert (=> b!2767079 (= e!1744723 e!1744718)))

(declare-fun c!449000 () Bool)

(assert (=> b!2767079 (= c!449000 (= 0 lt!985360))))

(declare-fun e!1744722 () Bool)

(declare-fun e!1744712 () Bool)

(assert (=> b!2767080 (= e!1744722 (and e!1744712 tp!874569))))

(declare-fun b!2767081 () Bool)

(declare-fun Unit!46057 () Unit!46052)

(assert (=> b!2767081 (= e!1744726 Unit!46057)))

(declare-fun b!2767082 () Bool)

(declare-fun c!449003 () Bool)

(declare-fun call!180593 () Bool)

(assert (=> b!2767082 (= c!449003 call!180593)))

(declare-fun lt!985368 () List!32064)

(declare-fun lt!985387 () List!32064)

(declare-fun ++!7910 (List!32064 List!32064) List!32064)

(assert (=> b!2767082 (= (++!7910 lt!985368 lt!985387) lt!985390)))

(declare-fun lt!985363 () C!16308)

(declare-fun lt!985372 () Unit!46052)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!865 (List!32064 C!16308 List!32064 List!32064) Unit!46052)

(assert (=> b!2767082 (= lt!985372 (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985363 lt!985387 lt!985390))))

(declare-fun tail!4382 (List!32064) List!32064)

(assert (=> b!2767082 (= lt!985387 (tail!4382 lt!985390))))

(declare-fun lt!985349 () List!32064)

(declare-fun isPrefix!2549 (List!32064 List!32064) Bool)

(declare-fun head!6144 (List!32064) C!16308)

(assert (=> b!2767082 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)) lt!985390)))

(declare-fun lt!985353 () Unit!46052)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!453 (List!32064 List!32064) Unit!46052)

(assert (=> b!2767082 (= lt!985353 (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985390))))

(assert (=> b!2767082 (= lt!985368 (++!7910 Nil!31964 (Cons!31964 lt!985363 Nil!31964)))))

(assert (=> b!2767082 (= lt!985363 (head!6144 lt!985390))))

(declare-fun lt!985332 () Unit!46052)

(assert (=> b!2767082 (= lt!985332 e!1744726)))

(declare-fun c!448990 () Bool)

(declare-fun lt!985382 () Int)

(declare-fun lt!985365 () Int)

(assert (=> b!2767082 (= c!448990 (= lt!985382 lt!985365))))

(assert (=> b!2767082 (<= lt!985382 lt!985365)))

(declare-fun size!24737 (List!32064) Int)

(assert (=> b!2767082 (= lt!985365 (size!24737 lt!985390))))

(assert (=> b!2767082 (= lt!985382 (size!24737 Nil!31964))))

(declare-fun lt!985342 () Unit!46052)

(declare-fun lemmaIsPrefixThenSmallerEqSize!256 (List!32064 List!32064) Unit!46052)

(assert (=> b!2767082 (= lt!985342 (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985390))))

(declare-fun e!1744720 () tuple2!32090)

(assert (=> b!2767082 (= e!1744720 e!1744700)))

(declare-fun b!2767083 () Bool)

(declare-fun c!449001 () Bool)

(assert (=> b!2767083 (= c!449001 call!180593)))

(assert (=> b!2767083 (= lt!985390 Nil!31964)))

(declare-fun lt!985356 () Unit!46052)

(assert (=> b!2767083 (= lt!985356 call!180603)))

(assert (=> b!2767083 call!180610))

(declare-fun lt!985375 () Unit!46052)

(assert (=> b!2767083 (= lt!985375 call!180609)))

(assert (=> b!2767083 (= e!1744720 e!1744724)))

(declare-fun b!2767084 () Bool)

(declare-fun res!1157629 () Bool)

(declare-fun e!1744704 () Bool)

(assert (=> b!2767084 (=> (not res!1157629) (not e!1744704))))

(assert (=> b!2767084 (= res!1157629 (valid!2928 (_3!2864 lt!985334)))))

(declare-fun lt!985350 () List!32064)

(declare-fun call!180612 () (InoxSet Context!4586))

(declare-fun lt!985395 () List!32064)

(declare-fun bm!180592 () Bool)

(declare-fun findLongestMatchInnerZipperFast!33 ((InoxSet Context!4586) List!32064 Int List!32064 BalanceConc!19528 Int) Int)

(assert (=> bm!180592 (= call!180595 (findLongestMatchInnerZipperFast!33 call!180612 lt!985350 1 lt!985395 input!5495 lt!985360))))

(declare-fun lt!985330 () C!16308)

(declare-fun bm!180593 () Bool)

(declare-fun derivationStepZipperMem!93 ((InoxSet Context!4586) C!16308 CacheUp!2370 CacheDown!2490) tuple3!4790)

(assert (=> bm!180593 (= call!180602 (derivationStepZipperMem!93 z!3597 lt!985330 (_2!18909 lt!985334) (_3!2864 lt!985334)))))

(declare-fun b!2767085 () Bool)

(declare-fun tp!874584 () Bool)

(declare-fun mapRes!17133 () Bool)

(assert (=> b!2767085 (= e!1744703 (and tp!874584 mapRes!17133))))

(declare-fun condMapEmpty!17133 () Bool)

(declare-fun mapDefault!17134 () List!32063)

(assert (=> b!2767085 (= condMapEmpty!17133 (= (arr!5968 (_values!4040 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32063)) mapDefault!17134)))))

(declare-fun b!2767086 () Bool)

(declare-fun lt!985354 () tuple2!32090)

(assert (=> b!2767086 (= e!1744735 lt!985354)))

(declare-fun b!2767087 () Bool)

(declare-fun e!1744731 () Bool)

(assert (=> b!2767087 (= e!1744731 e!1744729)))

(declare-fun b!2767088 () Bool)

(declare-fun Unit!46058 () Unit!46052)

(assert (=> b!2767088 (= e!1744706 Unit!46058)))

(declare-fun lt!985367 () Unit!46052)

(assert (=> b!2767088 (= lt!985367 call!180597)))

(declare-fun call!180592 () Bool)

(assert (=> b!2767088 call!180592))

(declare-fun lt!985396 () Unit!46052)

(declare-fun call!180611 () Unit!46052)

(assert (=> b!2767088 (= lt!985396 call!180611)))

(assert (=> b!2767088 false))

(declare-fun b!2767089 () Bool)

(declare-fun Unit!46059 () Unit!46052)

(assert (=> b!2767089 (= e!1744707 Unit!46059)))

(declare-fun lt!985357 () Unit!46052)

(declare-fun call!180599 () Unit!46052)

(assert (=> b!2767089 (= lt!985357 call!180599)))

(declare-fun call!180600 () Bool)

(assert (=> b!2767089 call!180600))

(declare-fun lt!985399 () Unit!46052)

(assert (=> b!2767089 (= lt!985399 call!180604)))

(assert (=> b!2767089 false))

(declare-fun b!2767090 () Bool)

(declare-fun res!1157633 () Bool)

(assert (=> b!2767090 (= res!1157633 call!180601)))

(assert (=> b!2767090 (=> (not res!1157633) (not e!1744711))))

(declare-fun mapIsEmpty!17134 () Bool)

(assert (=> mapIsEmpty!17134 mapRes!17133))

(declare-fun e!1744714 () Bool)

(declare-fun tp!874576 () Bool)

(declare-fun tp!874571 () Bool)

(declare-fun array_inv!4268 (array!13378) Bool)

(assert (=> b!2767091 (= e!1744714 (and tp!874582 tp!874576 tp!874571 (array_inv!4266 (_keys!4058 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) (array_inv!4268 (_values!4039 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) e!1744734))))

(declare-fun b!2767092 () Bool)

(assert (=> b!2767092 (= e!1744717 (= lt!985359 e!1744720))))

(declare-fun c!448996 () Bool)

(assert (=> b!2767092 (= c!448996 (= 0 lt!985360))))

(declare-fun mapNonEmpty!17134 () Bool)

(declare-fun tp!874572 () Bool)

(declare-fun tp!874568 () Bool)

(assert (=> mapNonEmpty!17134 (= mapRes!17133 (and tp!874572 tp!874568))))

(declare-fun mapKey!17133 () (_ BitVec 32))

(declare-fun mapRest!17134 () (Array (_ BitVec 32) List!32063))

(declare-fun mapValue!17133 () List!32063)

(assert (=> mapNonEmpty!17134 (= (arr!5968 (_values!4040 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) (store mapRest!17134 mapKey!17133 mapValue!17133))))

(declare-fun b!2767093 () Bool)

(declare-fun call!180608 () Bool)

(assert (=> b!2767093 (= c!448995 call!180608)))

(assert (=> b!2767093 (= (++!7910 lt!985352 lt!985361) lt!985390)))

(assert (=> b!2767093 (= lt!985352 (++!7910 Nil!31964 (Cons!31964 lt!985330 Nil!31964)))))

(declare-fun lt!985348 () Unit!46052)

(assert (=> b!2767093 (= lt!985348 (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985330 lt!985361 lt!985390))))

(assert (=> b!2767093 (= lt!985361 (tail!4382 lt!985390))))

(declare-fun apply!7493 (BalanceConc!19528 Int) C!16308)

(assert (=> b!2767093 (= lt!985330 (apply!7493 input!5495 0))))

(assert (=> b!2767093 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)) lt!985390)))

(declare-fun lt!985364 () Unit!46052)

(assert (=> b!2767093 (= lt!985364 (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985390))))

(declare-fun lt!985351 () Unit!46052)

(assert (=> b!2767093 (= lt!985351 e!1744707)))

(declare-fun c!448998 () Bool)

(declare-fun lt!985355 () Int)

(assert (=> b!2767093 (= c!448998 (= lt!985355 lt!985360))))

(assert (=> b!2767093 (<= lt!985355 (size!24737 lt!985390))))

(assert (=> b!2767093 (= lt!985355 (size!24737 Nil!31964))))

(declare-fun lt!985378 () Unit!46052)

(assert (=> b!2767093 (= lt!985378 (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985390))))

(declare-fun drop!1702 (List!32064 Int) List!32064)

(declare-fun apply!7494 (List!32064 Int) C!16308)

(assert (=> b!2767093 (= (head!6144 (drop!1702 lt!985390 0)) (apply!7494 lt!985390 0))))

(declare-fun lt!985362 () Unit!46052)

(declare-fun lemmaDropApply!908 (List!32064 Int) Unit!46052)

(assert (=> b!2767093 (= lt!985362 (lemmaDropApply!908 lt!985390 0))))

(declare-fun lt!985337 () List!32064)

(declare-fun lt!985343 () List!32064)

(assert (=> b!2767093 (and (= lt!985337 Nil!31964) (= lt!985343 lt!985390))))

(declare-fun lt!985394 () Unit!46052)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!334 (List!32064 List!32064 List!32064 List!32064) Unit!46052)

(assert (=> b!2767093 (= lt!985394 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985337 lt!985343 Nil!31964 lt!985390))))

(declare-datatypes ((tuple2!32092 0))(
  ( (tuple2!32093 (_1!18913 BalanceConc!19528) (_2!18913 BalanceConc!19528)) )
))
(declare-fun lt!985369 () tuple2!32092)

(declare-fun list!12066 (BalanceConc!19528) List!32064)

(assert (=> b!2767093 (= lt!985343 (list!12066 (_2!18913 lt!985369)))))

(assert (=> b!2767093 (= lt!985337 (list!12066 (_1!18913 lt!985369)))))

(declare-fun splitAt!109 (BalanceConc!19528 Int) tuple2!32092)

(assert (=> b!2767093 (= lt!985369 (splitAt!109 input!5495 0))))

(assert (=> b!2767093 (= e!1744718 e!1744716)))

(declare-fun b!2767094 () Bool)

(assert (=> b!2767094 (= e!1744700 e!1744735)))

(assert (=> b!2767094 (= lt!985354 call!180606)))

(declare-fun c!448993 () Bool)

(declare-fun isEmpty!18090 (List!32064) Bool)

(assert (=> b!2767094 (= c!448993 (isEmpty!18090 (_1!18912 lt!985354)))))

(declare-fun setIsEmpty!22612 () Bool)

(assert (=> setIsEmpty!22612 setRes!22612))

(declare-fun b!2767095 () Bool)

(declare-fun c!448997 () Bool)

(declare-fun call!180607 () Bool)

(assert (=> b!2767095 (= c!448997 call!180607)))

(assert (=> b!2767095 (= (++!7910 lt!985350 lt!985395) lt!985390)))

(declare-fun lt!985340 () C!16308)

(assert (=> b!2767095 (= lt!985350 (++!7910 Nil!31964 (Cons!31964 lt!985340 Nil!31964)))))

(declare-fun lt!985366 () Unit!46052)

(assert (=> b!2767095 (= lt!985366 (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985340 lt!985395 lt!985390))))

(assert (=> b!2767095 (= lt!985395 (tail!4382 lt!985390))))

(assert (=> b!2767095 (= lt!985340 (apply!7493 input!5495 0))))

(assert (=> b!2767095 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)) lt!985390)))

(declare-fun lt!985381 () Unit!46052)

(assert (=> b!2767095 (= lt!985381 (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985390))))

(declare-fun lt!985335 () Unit!46052)

(assert (=> b!2767095 (= lt!985335 e!1744706)))

(declare-fun c!448999 () Bool)

(declare-fun lt!985392 () Int)

(assert (=> b!2767095 (= c!448999 (= lt!985392 lt!985360))))

(assert (=> b!2767095 (<= lt!985392 (size!24737 lt!985390))))

(assert (=> b!2767095 (= lt!985392 (size!24737 Nil!31964))))

(declare-fun lt!985384 () Unit!46052)

(assert (=> b!2767095 (= lt!985384 (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985390))))

(assert (=> b!2767095 (= (head!6144 (drop!1702 lt!985390 0)) (apply!7494 lt!985390 0))))

(declare-fun lt!985358 () Unit!46052)

(assert (=> b!2767095 (= lt!985358 (lemmaDropApply!908 lt!985390 0))))

(declare-fun lt!985398 () List!32064)

(declare-fun lt!985338 () List!32064)

(assert (=> b!2767095 (and (= lt!985398 Nil!31964) (= lt!985338 lt!985390))))

(declare-fun lt!985388 () Unit!46052)

(assert (=> b!2767095 (= lt!985388 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985398 lt!985338 Nil!31964 lt!985390))))

(declare-fun lt!985379 () tuple2!32092)

(assert (=> b!2767095 (= lt!985338 (list!12066 (_2!18913 lt!985379)))))

(assert (=> b!2767095 (= lt!985398 (list!12066 (_1!18913 lt!985379)))))

(assert (=> b!2767095 (= lt!985379 (splitAt!109 input!5495 0))))

(assert (=> b!2767095 (= e!1744727 e!1744709)))

(declare-fun bm!180594 () Bool)

(assert (=> bm!180594 (= call!180610 (isPrefix!2549 lt!985390 lt!985390))))

(declare-fun b!2767096 () Bool)

(assert (=> b!2767096 (= e!1744716 (tuple3!4793 (ite (= (_1!18909 lt!985328) 0) 0 (_1!18909 lt!985328)) (_3!2864 lt!985328) (_2!18909 lt!985328)))))

(assert (=> b!2767096 (= lt!985377 call!180602)))

(assert (=> b!2767096 (= lt!985328 call!180594)))

(declare-fun res!1157632 () Bool)

(assert (=> b!2767096 (= res!1157632 call!180596)))

(assert (=> b!2767096 (=> (not res!1157632) (not e!1744711))))

(assert (=> b!2767096 e!1744711))

(declare-fun bm!180595 () Bool)

(assert (=> bm!180595 (= call!180592 (isPrefix!2549 lt!985390 lt!985390))))

(declare-fun b!2767097 () Bool)

(declare-fun lt!985336 () tuple3!4788)

(declare-fun e!1744719 () Bool)

(assert (=> b!2767097 (= e!1744719 (= (_1!18909 lt!985336) (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360)))))

(declare-fun b!2767098 () Bool)

(declare-fun e!1744708 () Bool)

(declare-fun lt!985331 () MutLongMap!3758)

(get-info :version)

(assert (=> b!2767098 (= e!1744708 (and e!1744715 ((_ is LongMap!3758) lt!985331)))))

(assert (=> b!2767098 (= lt!985331 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))

(declare-fun b!2767099 () Bool)

(assert (=> b!2767099 (= e!1744705 (= (_1!18909 lt!985397) call!180605))))

(declare-fun b!2767100 () Bool)

(declare-fun e!1744732 () Bool)

(declare-fun isBalanced!3035 (Conc!9957) Bool)

(assert (=> b!2767100 (= e!1744732 (not (isBalanced!3035 (c!449005 input!5495))))))

(declare-fun lt!985329 () List!32064)

(declare-fun lt!985345 () List!32064)

(assert (=> b!2767100 (and (= lt!985329 (_1!18912 lt!985359)) (= lt!985345 (_2!18912 lt!985359)))))

(declare-fun lt!985339 () Unit!46052)

(assert (=> b!2767100 (= lt!985339 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985329 lt!985345 (_1!18912 lt!985359) (_2!18912 lt!985359)))))

(declare-fun lt!985333 () tuple2!32092)

(assert (=> b!2767100 (= lt!985345 (list!12066 (_2!18913 lt!985333)))))

(assert (=> b!2767100 (= lt!985329 (list!12066 (_1!18913 lt!985333)))))

(assert (=> b!2767100 (= lt!985333 (splitAt!109 input!5495 (_1!18909 lt!985334)))))

(assert (=> b!2767100 e!1744717))

(declare-fun c!448994 () Bool)

(declare-fun lt!985376 () Bool)

(assert (=> b!2767100 (= c!448994 lt!985376)))

(declare-fun findLongestMatchInnerZipper!19 ((InoxSet Context!4586) List!32064 Int List!32064 List!32064 Int) tuple2!32090)

(assert (=> b!2767100 (= lt!985359 (findLongestMatchInnerZipper!19 z!3597 Nil!31964 0 lt!985390 lt!985390 lt!985360))))

(assert (=> b!2767100 e!1744728))

(declare-fun c!448991 () Bool)

(assert (=> b!2767100 (= c!448991 lt!985376)))

(assert (=> b!2767100 (= lt!985383 (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360))))

(declare-fun lt!985370 () tuple3!4792)

(assert (=> b!2767100 (= lt!985336 (tuple3!4789 (_1!18911 lt!985370) (_3!2866 lt!985370) (_2!18911 lt!985370)))))

(assert (=> b!2767100 (= lt!985370 e!1744723)))

(declare-fun c!448992 () Bool)

(assert (=> b!2767100 (= c!448992 lt!985376)))

(declare-fun lostCauseZipper!435 ((InoxSet Context!4586)) Bool)

(assert (=> b!2767100 (= lt!985376 (lostCauseZipper!435 z!3597))))

(assert (=> b!2767100 (and (= lt!985390 lt!985349) (= lt!985349 lt!985390))))

(declare-fun lt!985346 () Unit!46052)

(declare-fun lemmaSamePrefixThenSameSuffix!1133 (List!32064 List!32064 List!32064 List!32064 List!32064) Unit!46052)

(assert (=> b!2767100 (= lt!985346 (lemmaSamePrefixThenSameSuffix!1133 Nil!31964 lt!985390 Nil!31964 lt!985349 lt!985390))))

(declare-fun getSuffix!1231 (List!32064 List!32064) List!32064)

(assert (=> b!2767100 (= lt!985349 (getSuffix!1231 lt!985390 Nil!31964))))

(assert (=> b!2767100 (isPrefix!2549 Nil!31964 (++!7910 Nil!31964 lt!985390))))

(declare-fun lt!985341 () Unit!46052)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1659 (List!32064 List!32064) Unit!46052)

(assert (=> b!2767100 (= lt!985341 (lemmaConcatTwoListThenFirstIsPrefix!1659 Nil!31964 lt!985390))))

(assert (=> b!2767100 e!1744719))

(declare-fun res!1157630 () Bool)

(assert (=> b!2767100 (=> (not res!1157630) (not e!1744719))))

(declare-fun valid!2929 (CacheUp!2370) Bool)

(assert (=> b!2767100 (= res!1157630 (valid!2929 (_2!18909 lt!985336)))))

(assert (=> b!2767100 (= lt!985336 (findLongestMatchInnerZipperFastMem!27 (_2!18909 lt!985334) (_3!2864 lt!985334) z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360))))

(assert (=> b!2767100 e!1744704))

(declare-fun res!1157636 () Bool)

(assert (=> b!2767100 (=> (not res!1157636) (not e!1744704))))

(assert (=> b!2767100 (= res!1157636 (valid!2929 (_2!18909 lt!985334)))))

(assert (=> b!2767100 (= lt!985334 (findLongestMatchInnerZipperFastMem!27 cacheUp!820 cacheDown!939 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360))))

(declare-fun size!24738 (BalanceConc!19528) Int)

(assert (=> b!2767100 (= lt!985360 (size!24738 input!5495))))

(assert (=> b!2767100 (= lt!985390 (list!12066 input!5495))))

(declare-fun bm!180596 () Bool)

(assert (=> bm!180596 (= call!180600 (isPrefix!2549 lt!985390 lt!985390))))

(declare-fun bm!180597 () Bool)

(assert (=> bm!180597 (= call!180603 (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 Nil!31964 lt!985390))))

(declare-fun bm!180598 () Bool)

(assert (=> bm!180598 (= call!180596 (valid!2929 (ite c!448995 (_2!18909 lt!985328) (_2!18909 lt!985397))))))

(declare-fun b!2767101 () Bool)

(declare-fun lt!985380 () Bool)

(assert (=> b!2767101 (= lt!985380 call!180608)))

(assert (=> b!2767101 (= lt!985390 Nil!31964)))

(declare-fun lt!985389 () Unit!46052)

(assert (=> b!2767101 (= lt!985389 call!180604)))

(assert (=> b!2767101 call!180600))

(declare-fun lt!985344 () Unit!46052)

(assert (=> b!2767101 (= lt!985344 call!180599)))

(assert (=> b!2767101 (= e!1744718 (tuple3!4793 0 (_3!2864 lt!985334) (_2!18909 lt!985334)))))

(declare-fun b!2767102 () Bool)

(declare-fun res!1157637 () Bool)

(assert (=> b!2767102 (=> (not res!1157637) (not e!1744732))))

(assert (=> b!2767102 (= res!1157637 (valid!2928 cacheDown!939))))

(declare-fun bm!180599 () Bool)

(assert (=> bm!180599 (= call!180599 (lemmaIsPrefixRefl!1673 lt!985390 lt!985390))))

(declare-fun bm!180600 () Bool)

(declare-fun nullableZipper!628 ((InoxSet Context!4586)) Bool)

(assert (=> bm!180600 (= call!180593 (nullableZipper!628 z!3597))))

(declare-fun res!1157635 () Bool)

(assert (=> start!267884 (=> (not res!1157635) (not e!1744732))))

(assert (=> start!267884 (= res!1157635 (valid!2929 cacheUp!820))))

(assert (=> start!267884 e!1744732))

(declare-fun inv!43402 (CacheUp!2370) Bool)

(assert (=> start!267884 (and (inv!43402 cacheUp!820) e!1744733)))

(declare-fun e!1744702 () Bool)

(declare-fun inv!43403 (CacheDown!2490) Bool)

(assert (=> start!267884 (and (inv!43403 cacheDown!939) e!1744702)))

(declare-fun condSetEmpty!22612 () Bool)

(assert (=> start!267884 (= condSetEmpty!22612 (= z!3597 ((as const (Array Context!4586 Bool)) false)))))

(assert (=> start!267884 setRes!22612))

(declare-fun inv!43404 (BalanceConc!19528) Bool)

(assert (=> start!267884 (and (inv!43404 input!5495) e!1744730)))

(assert (=> b!2767103 (= e!1744710 (and e!1744708 tp!874583))))

(declare-fun b!2767104 () Bool)

(declare-fun tp!874573 () Bool)

(assert (=> b!2767104 (= e!1744721 tp!874573)))

(declare-fun b!2767105 () Bool)

(assert (=> b!2767105 (= e!1744702 e!1744722)))

(declare-fun bm!180601 () Bool)

(declare-fun derivationStepZipper!363 ((InoxSet Context!4586) C!16308) (InoxSet Context!4586))

(assert (=> bm!180601 (= call!180612 (derivationStepZipper!363 z!3597 lt!985340))))

(declare-fun bm!180602 () Bool)

(declare-fun call!180598 () (InoxSet Context!4586))

(assert (=> bm!180602 (= call!180598 (derivationStepZipper!363 z!3597 lt!985363))))

(declare-fun b!2767106 () Bool)

(declare-fun lt!985347 () MutLongMap!3759)

(assert (=> b!2767106 (= e!1744712 (and e!1744731 ((_ is LongMap!3759) lt!985347)))))

(assert (=> b!2767106 (= lt!985347 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))

(declare-fun bm!180603 () Bool)

(assert (=> bm!180603 (= call!180607 (nullableZipper!628 z!3597))))

(declare-fun b!2767107 () Bool)

(declare-fun res!1157634 () Bool)

(assert (=> b!2767107 (=> (not res!1157634) (not e!1744719))))

(assert (=> b!2767107 (= res!1157634 (valid!2928 (_3!2864 lt!985336)))))

(declare-fun b!2767108 () Bool)

(assert (=> b!2767108 (= e!1744704 (= (_1!18909 lt!985334) (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360)))))

(declare-fun bm!180604 () Bool)

(assert (=> bm!180604 (= call!180611 (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 Nil!31964 lt!985390))))

(declare-fun bm!180605 () Bool)

(assert (=> bm!180605 (= call!180606 (findLongestMatchInnerZipper!19 call!180598 lt!985368 1 lt!985387 lt!985390 lt!985360))))

(declare-fun b!2767109 () Bool)

(declare-fun res!1157631 () Bool)

(assert (=> b!2767109 (= res!1157631 call!180601)))

(assert (=> b!2767109 (=> (not res!1157631) (not e!1744705))))

(declare-fun b!2767110 () Bool)

(assert (=> b!2767110 (= e!1744736 e!1744714)))

(declare-fun bm!180606 () Bool)

(assert (=> bm!180606 (= call!180605 (findLongestMatchInnerZipperFast!33 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360))))

(declare-fun bm!180607 () Bool)

(assert (=> bm!180607 (= call!180608 (nullableZipper!628 z!3597))))

(declare-fun b!2767111 () Bool)

(declare-fun lt!985374 () Bool)

(assert (=> b!2767111 (= lt!985374 call!180607)))

(assert (=> b!2767111 (= lt!985390 Nil!31964)))

(declare-fun lt!985371 () Unit!46052)

(assert (=> b!2767111 (= lt!985371 call!180611)))

(assert (=> b!2767111 call!180592))

(declare-fun lt!985385 () Unit!46052)

(assert (=> b!2767111 (= lt!985385 call!180597)))

(assert (=> b!2767111 (= e!1744727 0)))

(assert (= (and start!267884 res!1157635) b!2767102))

(assert (= (and b!2767102 res!1157637) b!2767100))

(assert (= (and b!2767100 res!1157636) b!2767084))

(assert (= (and b!2767084 res!1157629) b!2767108))

(assert (= (and b!2767100 res!1157630) b!2767107))

(assert (= (and b!2767107 res!1157634) b!2767097))

(assert (= (and b!2767100 c!448992) b!2767067))

(assert (= (and b!2767100 (not c!448992)) b!2767079))

(assert (= (and b!2767079 c!449000) b!2767101))

(assert (= (and b!2767079 (not c!449000)) b!2767093))

(assert (= (and b!2767093 c!448998) b!2767089))

(assert (= (and b!2767093 (not c!448998)) b!2767073))

(assert (= (and b!2767093 c!448995) b!2767096))

(assert (= (and b!2767093 (not c!448995)) b!2767060))

(assert (= (and b!2767096 res!1157632) b!2767090))

(assert (= (and b!2767090 res!1157633) b!2767058))

(assert (= (and b!2767060 res!1157628) b!2767109))

(assert (= (and b!2767109 res!1157631) b!2767099))

(assert (= (or b!2767096 b!2767060) bm!180598))

(assert (= (or b!2767058 b!2767099) bm!180606))

(assert (= (or b!2767096 b!2767060) bm!180593))

(assert (= (or b!2767096 b!2767060) bm!180588))

(assert (= (or b!2767090 b!2767109) bm!180587))

(assert (= (or b!2767101 b!2767093) bm!180607))

(assert (= (or b!2767101 b!2767089) bm!180599))

(assert (= (or b!2767101 b!2767089) bm!180590))

(assert (= (or b!2767101 b!2767089) bm!180596))

(assert (= (and b!2767100 c!448991) b!2767066))

(assert (= (and b!2767100 (not c!448991)) b!2767078))

(assert (= (and b!2767078 c!449002) b!2767111))

(assert (= (and b!2767078 (not c!449002)) b!2767095))

(assert (= (and b!2767095 c!448999) b!2767088))

(assert (= (and b!2767095 (not c!448999)) b!2767068))

(assert (= (and b!2767095 c!448997) b!2767059))

(assert (= (and b!2767095 (not c!448997)) b!2767074))

(assert (= (or b!2767059 b!2767074) bm!180601))

(assert (= (or b!2767059 b!2767074) bm!180592))

(assert (= (or b!2767111 b!2767095) bm!180603))

(assert (= (or b!2767111 b!2767088) bm!180591))

(assert (= (or b!2767111 b!2767088) bm!180604))

(assert (= (or b!2767111 b!2767088) bm!180595))

(assert (= (and b!2767100 c!448994) b!2767062))

(assert (= (and b!2767100 (not c!448994)) b!2767092))

(assert (= (and b!2767092 c!448996) b!2767083))

(assert (= (and b!2767092 (not c!448996)) b!2767082))

(assert (= (and b!2767083 c!449001) b!2767076))

(assert (= (and b!2767083 (not c!449001)) b!2767063))

(assert (= (and b!2767082 c!448990) b!2767064))

(assert (= (and b!2767082 (not c!448990)) b!2767081))

(assert (= (and b!2767082 c!449003) b!2767094))

(assert (= (and b!2767082 (not c!449003)) b!2767072))

(assert (= (and b!2767094 c!448993) b!2767070))

(assert (= (and b!2767094 (not c!448993)) b!2767086))

(assert (= (or b!2767094 b!2767072) bm!180602))

(assert (= (or b!2767094 b!2767072) bm!180605))

(assert (= (or b!2767083 b!2767082) bm!180600))

(assert (= (or b!2767083 b!2767064) bm!180589))

(assert (= (or b!2767083 b!2767064) bm!180597))

(assert (= (or b!2767083 b!2767064) bm!180594))

(assert (= (and b!2767069 condMapEmpty!17134) mapIsEmpty!17133))

(assert (= (and b!2767069 (not condMapEmpty!17134)) mapNonEmpty!17133))

(assert (= b!2767091 b!2767069))

(assert (= b!2767110 b!2767091))

(assert (= b!2767071 b!2767110))

(assert (= (and b!2767098 ((_ is LongMap!3758) (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))) b!2767071))

(assert (= b!2767103 b!2767098))

(assert (= (and b!2767075 ((_ is HashMap!3664) (cache!3807 cacheUp!820))) b!2767103))

(assert (= start!267884 b!2767075))

(assert (= (and b!2767085 condMapEmpty!17133) mapIsEmpty!17134))

(assert (= (and b!2767085 (not condMapEmpty!17133)) mapNonEmpty!17134))

(assert (= b!2767065 b!2767085))

(assert (= b!2767077 b!2767065))

(assert (= b!2767087 b!2767077))

(assert (= (and b!2767106 ((_ is LongMap!3759) (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))) b!2767087))

(assert (= b!2767080 b!2767106))

(assert (= (and b!2767105 ((_ is HashMap!3665) (cache!3808 cacheDown!939))) b!2767080))

(assert (= start!267884 b!2767105))

(assert (= (and start!267884 condSetEmpty!22612) setIsEmpty!22612))

(assert (= (and start!267884 (not condSetEmpty!22612)) setNonEmpty!22612))

(assert (= setNonEmpty!22612 b!2767104))

(assert (= start!267884 b!2767061))

(declare-fun m!3190303 () Bool)

(assert (=> b!2767061 m!3190303))

(declare-fun m!3190305 () Bool)

(assert (=> bm!180606 m!3190305))

(declare-fun m!3190307 () Bool)

(assert (=> bm!180588 m!3190307))

(declare-fun m!3190309 () Bool)

(assert (=> bm!180589 m!3190309))

(declare-fun m!3190311 () Bool)

(assert (=> b!2767094 m!3190311))

(declare-fun m!3190313 () Bool)

(assert (=> b!2767100 m!3190313))

(declare-fun m!3190315 () Bool)

(assert (=> b!2767100 m!3190315))

(declare-fun m!3190317 () Bool)

(assert (=> b!2767100 m!3190317))

(declare-fun m!3190319 () Bool)

(assert (=> b!2767100 m!3190319))

(declare-fun m!3190321 () Bool)

(assert (=> b!2767100 m!3190321))

(declare-fun m!3190323 () Bool)

(assert (=> b!2767100 m!3190323))

(declare-fun m!3190325 () Bool)

(assert (=> b!2767100 m!3190325))

(declare-fun m!3190327 () Bool)

(assert (=> b!2767100 m!3190327))

(declare-fun m!3190329 () Bool)

(assert (=> b!2767100 m!3190329))

(declare-fun m!3190331 () Bool)

(assert (=> b!2767100 m!3190331))

(declare-fun m!3190333 () Bool)

(assert (=> b!2767100 m!3190333))

(declare-fun m!3190335 () Bool)

(assert (=> b!2767100 m!3190335))

(declare-fun m!3190337 () Bool)

(assert (=> b!2767100 m!3190337))

(assert (=> b!2767100 m!3190313))

(declare-fun m!3190339 () Bool)

(assert (=> b!2767100 m!3190339))

(declare-fun m!3190341 () Bool)

(assert (=> b!2767100 m!3190341))

(declare-fun m!3190343 () Bool)

(assert (=> b!2767100 m!3190343))

(declare-fun m!3190345 () Bool)

(assert (=> b!2767100 m!3190345))

(declare-fun m!3190347 () Bool)

(assert (=> b!2767100 m!3190347))

(declare-fun m!3190349 () Bool)

(assert (=> b!2767100 m!3190349))

(declare-fun m!3190351 () Bool)

(assert (=> setNonEmpty!22612 m!3190351))

(assert (=> b!2767097 m!3190343))

(declare-fun m!3190353 () Bool)

(assert (=> b!2767084 m!3190353))

(declare-fun m!3190355 () Bool)

(assert (=> bm!180595 m!3190355))

(declare-fun m!3190357 () Bool)

(assert (=> mapNonEmpty!17134 m!3190357))

(declare-fun m!3190359 () Bool)

(assert (=> bm!180600 m!3190359))

(assert (=> bm!180596 m!3190355))

(declare-fun m!3190361 () Bool)

(assert (=> mapNonEmpty!17133 m!3190361))

(declare-fun m!3190363 () Bool)

(assert (=> bm!180593 m!3190363))

(declare-fun m!3190365 () Bool)

(assert (=> b!2767091 m!3190365))

(declare-fun m!3190367 () Bool)

(assert (=> b!2767091 m!3190367))

(assert (=> bm!180607 m!3190359))

(declare-fun m!3190369 () Bool)

(assert (=> bm!180592 m!3190369))

(declare-fun m!3190371 () Bool)

(assert (=> b!2767107 m!3190371))

(declare-fun m!3190373 () Bool)

(assert (=> bm!180601 m!3190373))

(declare-fun m!3190375 () Bool)

(assert (=> bm!180602 m!3190375))

(declare-fun m!3190377 () Bool)

(assert (=> b!2767102 m!3190377))

(assert (=> bm!180594 m!3190355))

(declare-fun m!3190379 () Bool)

(assert (=> b!2767093 m!3190379))

(declare-fun m!3190381 () Bool)

(assert (=> b!2767093 m!3190381))

(declare-fun m!3190383 () Bool)

(assert (=> b!2767093 m!3190383))

(declare-fun m!3190385 () Bool)

(assert (=> b!2767093 m!3190385))

(declare-fun m!3190387 () Bool)

(assert (=> b!2767093 m!3190387))

(declare-fun m!3190389 () Bool)

(assert (=> b!2767093 m!3190389))

(declare-fun m!3190391 () Bool)

(assert (=> b!2767093 m!3190391))

(declare-fun m!3190393 () Bool)

(assert (=> b!2767093 m!3190393))

(declare-fun m!3190395 () Bool)

(assert (=> b!2767093 m!3190395))

(declare-fun m!3190397 () Bool)

(assert (=> b!2767093 m!3190397))

(declare-fun m!3190399 () Bool)

(assert (=> b!2767093 m!3190399))

(assert (=> b!2767093 m!3190391))

(declare-fun m!3190401 () Bool)

(assert (=> b!2767093 m!3190401))

(declare-fun m!3190403 () Bool)

(assert (=> b!2767093 m!3190403))

(declare-fun m!3190405 () Bool)

(assert (=> b!2767093 m!3190405))

(declare-fun m!3190407 () Bool)

(assert (=> b!2767093 m!3190407))

(declare-fun m!3190409 () Bool)

(assert (=> b!2767093 m!3190409))

(declare-fun m!3190411 () Bool)

(assert (=> b!2767093 m!3190411))

(assert (=> b!2767093 m!3190399))

(declare-fun m!3190413 () Bool)

(assert (=> b!2767093 m!3190413))

(declare-fun m!3190415 () Bool)

(assert (=> b!2767093 m!3190415))

(declare-fun m!3190417 () Bool)

(assert (=> b!2767093 m!3190417))

(assert (=> b!2767108 m!3190343))

(declare-fun m!3190419 () Bool)

(assert (=> start!267884 m!3190419))

(declare-fun m!3190421 () Bool)

(assert (=> start!267884 m!3190421))

(declare-fun m!3190423 () Bool)

(assert (=> start!267884 m!3190423))

(declare-fun m!3190425 () Bool)

(assert (=> start!267884 m!3190425))

(declare-fun m!3190427 () Bool)

(assert (=> b!2767095 m!3190427))

(declare-fun m!3190429 () Bool)

(assert (=> b!2767095 m!3190429))

(assert (=> b!2767095 m!3190379))

(assert (=> b!2767095 m!3190383))

(assert (=> b!2767095 m!3190389))

(assert (=> b!2767095 m!3190393))

(assert (=> b!2767095 m!3190399))

(assert (=> b!2767095 m!3190391))

(assert (=> b!2767095 m!3190401))

(declare-fun m!3190431 () Bool)

(assert (=> b!2767095 m!3190431))

(assert (=> b!2767095 m!3190405))

(assert (=> b!2767095 m!3190381))

(declare-fun m!3190433 () Bool)

(assert (=> b!2767095 m!3190433))

(assert (=> b!2767095 m!3190407))

(assert (=> b!2767095 m!3190409))

(declare-fun m!3190435 () Bool)

(assert (=> b!2767095 m!3190435))

(assert (=> b!2767095 m!3190391))

(assert (=> b!2767095 m!3190411))

(assert (=> b!2767095 m!3190399))

(assert (=> b!2767095 m!3190413))

(declare-fun m!3190437 () Bool)

(assert (=> b!2767095 m!3190437))

(assert (=> b!2767095 m!3190397))

(assert (=> bm!180603 m!3190359))

(declare-fun m!3190439 () Bool)

(assert (=> bm!180590 m!3190439))

(assert (=> bm!180604 m!3190439))

(assert (=> bm!180599 m!3190309))

(declare-fun m!3190441 () Bool)

(assert (=> bm!180598 m!3190441))

(assert (=> b!2767082 m!3190383))

(assert (=> b!2767082 m!3190409))

(assert (=> b!2767082 m!3190391))

(assert (=> b!2767082 m!3190393))

(declare-fun m!3190443 () Bool)

(assert (=> b!2767082 m!3190443))

(assert (=> b!2767082 m!3190397))

(assert (=> b!2767082 m!3190391))

(assert (=> b!2767082 m!3190401))

(assert (=> b!2767082 m!3190405))

(assert (=> b!2767082 m!3190379))

(declare-fun m!3190445 () Bool)

(assert (=> b!2767082 m!3190445))

(declare-fun m!3190447 () Bool)

(assert (=> b!2767082 m!3190447))

(declare-fun m!3190449 () Bool)

(assert (=> b!2767082 m!3190449))

(declare-fun m!3190451 () Bool)

(assert (=> b!2767065 m!3190451))

(declare-fun m!3190453 () Bool)

(assert (=> b!2767065 m!3190453))

(assert (=> bm!180591 m!3190309))

(declare-fun m!3190455 () Bool)

(assert (=> bm!180605 m!3190455))

(declare-fun m!3190457 () Bool)

(assert (=> bm!180587 m!3190457))

(assert (=> bm!180597 m!3190439))

(check-sat (not bm!180601) (not bm!180606) (not bm!180597) (not bm!180607) (not b!2767084) (not b_next!78843) (not b!2767108) (not bm!180589) (not b_next!78839) (not b!2767061) (not bm!180599) (not b!2767082) (not b!2767097) b_and!202873 (not bm!180594) (not b!2767094) (not bm!180591) (not b!2767095) (not bm!180605) b_and!202871 (not b!2767093) (not b!2767091) (not bm!180604) b_and!202875 (not b_next!78841) (not b!2767085) (not bm!180593) (not bm!180587) (not b!2767065) (not bm!180592) (not b!2767102) (not bm!180603) (not b!2767104) (not start!267884) (not b_next!78837) (not setNonEmpty!22612) (not b!2767100) (not mapNonEmpty!17133) (not bm!180600) (not b!2767107) (not b!2767069) (not bm!180596) b_and!202877 (not bm!180590) (not bm!180598) (not mapNonEmpty!17134) (not bm!180588) (not bm!180602) (not bm!180595))
(check-sat (not b_next!78839) b_and!202873 b_and!202871 (not b_next!78843) (not b_next!78837) b_and!202877 b_and!202875 (not b_next!78841))
(get-model)

(declare-fun d!803256 () Bool)

(assert (=> d!803256 (isPrefix!2549 lt!985390 lt!985390)))

(declare-fun lt!985402 () Unit!46052)

(declare-fun choose!16235 (List!32064 List!32064) Unit!46052)

(assert (=> d!803256 (= lt!985402 (choose!16235 lt!985390 lt!985390))))

(assert (=> d!803256 (= (lemmaIsPrefixRefl!1673 lt!985390 lt!985390) lt!985402)))

(declare-fun bs!500354 () Bool)

(assert (= bs!500354 d!803256))

(assert (=> bs!500354 m!3190355))

(declare-fun m!3190459 () Bool)

(assert (=> bs!500354 m!3190459))

(assert (=> bm!180599 d!803256))

(declare-fun d!803258 () Bool)

(declare-fun validCacheMapDown!392 (MutableMap!3665) Bool)

(assert (=> d!803258 (= (valid!2928 cacheDown!939) (validCacheMapDown!392 (cache!3808 cacheDown!939)))))

(declare-fun bs!500355 () Bool)

(assert (= bs!500355 d!803258))

(declare-fun m!3190461 () Bool)

(assert (=> bs!500355 m!3190461))

(assert (=> b!2767102 d!803258))

(declare-fun d!803260 () Bool)

(declare-fun validCacheMapUp!361 (MutableMap!3664) Bool)

(assert (=> d!803260 (= (valid!2929 (ite c!448995 (_2!18909 lt!985328) (_2!18909 lt!985397))) (validCacheMapUp!361 (cache!3807 (ite c!448995 (_2!18909 lt!985328) (_2!18909 lt!985397)))))))

(declare-fun bs!500356 () Bool)

(assert (= bs!500356 d!803260))

(declare-fun m!3190463 () Bool)

(assert (=> bs!500356 m!3190463))

(assert (=> bm!180598 d!803260))

(declare-fun d!803262 () Bool)

(assert (=> d!803262 (= lt!985390 Nil!31964)))

(declare-fun lt!985405 () Unit!46052)

(declare-fun choose!16236 (List!32064 List!32064 List!32064) Unit!46052)

(assert (=> d!803262 (= lt!985405 (choose!16236 lt!985390 Nil!31964 lt!985390))))

(assert (=> d!803262 (isPrefix!2549 lt!985390 lt!985390)))

(assert (=> d!803262 (= (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 Nil!31964 lt!985390) lt!985405)))

(declare-fun bs!500357 () Bool)

(assert (= bs!500357 d!803262))

(declare-fun m!3190465 () Bool)

(assert (=> bs!500357 m!3190465))

(assert (=> bs!500357 m!3190355))

(assert (=> bm!180597 d!803262))

(declare-fun d!803264 () Bool)

(declare-fun e!1744739 () Bool)

(assert (=> d!803264 e!1744739))

(declare-fun res!1157642 () Bool)

(assert (=> d!803264 (=> (not res!1157642) (not e!1744739))))

(declare-fun lt!985408 () tuple3!4790)

(assert (=> d!803264 (= res!1157642 (= (_1!18910 lt!985408) (derivationStepZipper!363 z!3597 lt!985330)))))

(declare-fun choose!16237 ((InoxSet Context!4586) C!16308 CacheUp!2370 CacheDown!2490) tuple3!4790)

(assert (=> d!803264 (= lt!985408 (choose!16237 z!3597 lt!985330 (_2!18909 lt!985334) (_3!2864 lt!985334)))))

(assert (=> d!803264 (= (derivationStepZipperMem!93 z!3597 lt!985330 (_2!18909 lt!985334) (_3!2864 lt!985334)) lt!985408)))

(declare-fun b!2767116 () Bool)

(declare-fun res!1157643 () Bool)

(assert (=> b!2767116 (=> (not res!1157643) (not e!1744739))))

(assert (=> b!2767116 (= res!1157643 (valid!2929 (_2!18910 lt!985408)))))

(declare-fun b!2767117 () Bool)

(assert (=> b!2767117 (= e!1744739 (valid!2928 (_3!2865 lt!985408)))))

(assert (= (and d!803264 res!1157642) b!2767116))

(assert (= (and b!2767116 res!1157643) b!2767117))

(declare-fun m!3190467 () Bool)

(assert (=> d!803264 m!3190467))

(declare-fun m!3190469 () Bool)

(assert (=> d!803264 m!3190469))

(declare-fun m!3190471 () Bool)

(assert (=> b!2767116 m!3190471))

(declare-fun m!3190473 () Bool)

(assert (=> b!2767117 m!3190473))

(assert (=> bm!180593 d!803264))

(declare-fun d!803266 () Bool)

(declare-fun lambda!101548 () Int)

(declare-fun exists!971 ((InoxSet Context!4586) Int) Bool)

(assert (=> d!803266 (= (nullableZipper!628 z!3597) (exists!971 z!3597 lambda!101548))))

(declare-fun bs!500358 () Bool)

(assert (= bs!500358 d!803266))

(declare-fun m!3190475 () Bool)

(assert (=> bs!500358 m!3190475))

(assert (=> bm!180607 d!803266))

(declare-fun b!2767129 () Bool)

(declare-fun e!1744748 () Bool)

(assert (=> b!2767129 (= e!1744748 (>= (size!24737 lt!985390) (size!24737 lt!985390)))))

(declare-fun b!2767126 () Bool)

(declare-fun e!1744747 () Bool)

(declare-fun e!1744746 () Bool)

(assert (=> b!2767126 (= e!1744747 e!1744746)))

(declare-fun res!1157654 () Bool)

(assert (=> b!2767126 (=> (not res!1157654) (not e!1744746))))

(assert (=> b!2767126 (= res!1157654 (not ((_ is Nil!31964) lt!985390)))))

(declare-fun b!2767128 () Bool)

(assert (=> b!2767128 (= e!1744746 (isPrefix!2549 (tail!4382 lt!985390) (tail!4382 lt!985390)))))

(declare-fun d!803268 () Bool)

(assert (=> d!803268 e!1744748))

(declare-fun res!1157655 () Bool)

(assert (=> d!803268 (=> res!1157655 e!1744748)))

(declare-fun lt!985411 () Bool)

(assert (=> d!803268 (= res!1157655 (not lt!985411))))

(assert (=> d!803268 (= lt!985411 e!1744747)))

(declare-fun res!1157652 () Bool)

(assert (=> d!803268 (=> res!1157652 e!1744747)))

(assert (=> d!803268 (= res!1157652 ((_ is Nil!31964) lt!985390))))

(assert (=> d!803268 (= (isPrefix!2549 lt!985390 lt!985390) lt!985411)))

(declare-fun b!2767127 () Bool)

(declare-fun res!1157653 () Bool)

(assert (=> b!2767127 (=> (not res!1157653) (not e!1744746))))

(assert (=> b!2767127 (= res!1157653 (= (head!6144 lt!985390) (head!6144 lt!985390)))))

(assert (= (and d!803268 (not res!1157652)) b!2767126))

(assert (= (and b!2767126 res!1157654) b!2767127))

(assert (= (and b!2767127 res!1157653) b!2767128))

(assert (= (and d!803268 (not res!1157655)) b!2767129))

(assert (=> b!2767129 m!3190383))

(assert (=> b!2767129 m!3190383))

(assert (=> b!2767128 m!3190393))

(assert (=> b!2767128 m!3190393))

(assert (=> b!2767128 m!3190393))

(assert (=> b!2767128 m!3190393))

(declare-fun m!3190477 () Bool)

(assert (=> b!2767128 m!3190477))

(assert (=> b!2767127 m!3190447))

(assert (=> b!2767127 m!3190447))

(assert (=> bm!180596 d!803268))

(declare-fun bm!180628 () Bool)

(declare-fun call!180633 () C!16308)

(assert (=> bm!180628 (= call!180633 (apply!7493 input!5495 1))))

(declare-fun c!449018 () Bool)

(declare-fun lt!985511 () List!32064)

(declare-fun bm!180629 () Bool)

(declare-fun call!180640 () Unit!46052)

(declare-fun lt!985508 () List!32064)

(declare-fun lt!985512 () List!32064)

(declare-fun lt!985527 () List!32064)

(assert (=> bm!180629 (= call!180640 (lemmaIsPrefixRefl!1673 (ite c!449018 lt!985511 lt!985512) (ite c!449018 lt!985527 lt!985508)))))

(declare-fun b!2767150 () Bool)

(declare-fun e!1744761 () Unit!46052)

(declare-fun Unit!46060 () Unit!46052)

(assert (=> b!2767150 (= e!1744761 Unit!46060)))

(declare-fun call!180639 () List!32064)

(declare-fun call!180642 () List!32064)

(declare-fun bm!180630 () Bool)

(declare-fun call!180637 () Int)

(declare-fun call!180641 () (InoxSet Context!4586))

(assert (=> bm!180630 (= call!180637 (findLongestMatchInnerZipperFast!33 call!180641 call!180642 (+ 1 1) call!180639 input!5495 lt!985360))))

(declare-fun b!2767151 () Bool)

(declare-fun c!449020 () Bool)

(declare-fun call!180635 () Bool)

(assert (=> b!2767151 (= c!449020 call!180635)))

(declare-fun lt!985510 () Unit!46052)

(declare-fun lt!985503 () Unit!46052)

(assert (=> b!2767151 (= lt!985510 lt!985503)))

(declare-fun lt!985497 () List!32064)

(assert (=> b!2767151 (= lt!985497 lt!985350)))

(declare-fun call!180638 () Unit!46052)

(assert (=> b!2767151 (= lt!985503 call!180638)))

(declare-fun call!180634 () List!32064)

(assert (=> b!2767151 (= lt!985497 call!180634)))

(declare-fun lt!985504 () Unit!46052)

(declare-fun lt!985500 () Unit!46052)

(assert (=> b!2767151 (= lt!985504 lt!985500)))

(declare-fun call!180636 () Bool)

(assert (=> b!2767151 call!180636))

(assert (=> b!2767151 (= lt!985500 call!180640)))

(assert (=> b!2767151 (= lt!985527 call!180634)))

(assert (=> b!2767151 (= lt!985511 call!180634)))

(declare-fun e!1744763 () Int)

(declare-fun e!1744759 () Int)

(assert (=> b!2767151 (= e!1744763 e!1744759)))

(declare-fun b!2767152 () Bool)

(declare-fun c!449019 () Bool)

(assert (=> b!2767152 (= c!449019 call!180635)))

(declare-fun lt!985522 () Unit!46052)

(declare-fun lt!985536 () Unit!46052)

(assert (=> b!2767152 (= lt!985522 lt!985536)))

(declare-fun lt!985515 () List!32064)

(declare-fun lt!985533 () C!16308)

(declare-fun lt!985514 () List!32064)

(assert (=> b!2767152 (= (++!7910 (++!7910 lt!985350 (Cons!31964 lt!985533 Nil!31964)) lt!985514) lt!985515)))

(assert (=> b!2767152 (= lt!985536 (lemmaMoveElementToOtherListKeepsConcatEq!865 lt!985350 lt!985533 lt!985514 lt!985515))))

(assert (=> b!2767152 (= lt!985515 call!180634)))

(assert (=> b!2767152 (= lt!985514 (tail!4382 lt!985395))))

(assert (=> b!2767152 (= lt!985533 (apply!7493 input!5495 1))))

(declare-fun lt!985502 () Unit!46052)

(declare-fun lt!985525 () Unit!46052)

(assert (=> b!2767152 (= lt!985502 lt!985525)))

(declare-fun lt!985496 () List!32064)

(assert (=> b!2767152 (isPrefix!2549 (++!7910 lt!985350 (Cons!31964 (head!6144 (getSuffix!1231 lt!985496 lt!985350)) Nil!31964)) lt!985496)))

(assert (=> b!2767152 (= lt!985525 (lemmaAddHeadSuffixToPrefixStillPrefix!453 lt!985350 lt!985496))))

(assert (=> b!2767152 (= lt!985496 call!180634)))

(declare-fun lt!985537 () Unit!46052)

(assert (=> b!2767152 (= lt!985537 e!1744761)))

(declare-fun c!449022 () Bool)

(assert (=> b!2767152 (= c!449022 (= (size!24737 lt!985350) (size!24738 input!5495)))))

(declare-fun lt!985523 () Unit!46052)

(declare-fun lt!985498 () Unit!46052)

(assert (=> b!2767152 (= lt!985523 lt!985498)))

(declare-fun lt!985505 () List!32064)

(assert (=> b!2767152 (<= (size!24737 lt!985350) (size!24737 lt!985505))))

(assert (=> b!2767152 (= lt!985498 (lemmaIsPrefixThenSmallerEqSize!256 lt!985350 lt!985505))))

(assert (=> b!2767152 (= lt!985505 call!180634)))

(declare-fun lt!985528 () Unit!46052)

(declare-fun lt!985517 () Unit!46052)

(assert (=> b!2767152 (= lt!985528 lt!985517)))

(declare-fun lt!985531 () List!32064)

(assert (=> b!2767152 (= (head!6144 (drop!1702 lt!985531 1)) (apply!7494 lt!985531 1))))

(assert (=> b!2767152 (= lt!985517 (lemmaDropApply!908 lt!985531 1))))

(assert (=> b!2767152 (= lt!985531 call!180634)))

(declare-fun lt!985535 () Unit!46052)

(declare-fun lt!985519 () Unit!46052)

(assert (=> b!2767152 (= lt!985535 lt!985519)))

(declare-fun lt!985516 () List!32064)

(declare-fun lt!985513 () List!32064)

(assert (=> b!2767152 (and (= lt!985513 lt!985350) (= lt!985516 lt!985395))))

(assert (=> b!2767152 (= lt!985519 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985513 lt!985516 lt!985350 lt!985395))))

(declare-fun lt!985501 () tuple2!32092)

(assert (=> b!2767152 (= lt!985516 (list!12066 (_2!18913 lt!985501)))))

(assert (=> b!2767152 (= lt!985513 (list!12066 (_1!18913 lt!985501)))))

(assert (=> b!2767152 (= lt!985501 (splitAt!109 input!5495 1))))

(declare-fun e!1744760 () Int)

(assert (=> b!2767152 (= e!1744763 e!1744760)))

(declare-fun b!2767153 () Bool)

(assert (=> b!2767153 (= e!1744759 0)))

(declare-fun b!2767154 () Bool)

(declare-fun e!1744762 () Int)

(assert (=> b!2767154 (= e!1744762 e!1744763)))

(assert (=> b!2767154 (= c!449018 (= 1 lt!985360))))

(declare-fun b!2767155 () Bool)

(declare-fun lt!985524 () Int)

(assert (=> b!2767155 (= e!1744760 (ite (= lt!985524 0) 1 lt!985524))))

(assert (=> b!2767155 (= lt!985524 call!180637)))

(declare-fun bm!180631 () Bool)

(assert (=> bm!180631 (= call!180636 (isPrefix!2549 (ite c!449018 lt!985511 lt!985512) (ite c!449018 lt!985527 lt!985508)))))

(declare-fun b!2767156 () Bool)

(assert (=> b!2767156 (= e!1744760 call!180637)))

(declare-fun bm!180632 () Bool)

(assert (=> bm!180632 (= call!180642 (++!7910 lt!985350 (Cons!31964 call!180633 Nil!31964)))))

(declare-fun lt!985506 () Int)

(declare-fun d!803270 () Bool)

(assert (=> d!803270 (= (size!24737 (_1!18912 (findLongestMatchInnerZipper!19 call!180612 lt!985350 1 lt!985395 (list!12066 input!5495) lt!985360))) lt!985506)))

(assert (=> d!803270 (= lt!985506 e!1744762)))

(declare-fun c!449021 () Bool)

(assert (=> d!803270 (= c!449021 (lostCauseZipper!435 call!180612))))

(declare-fun lt!985507 () Unit!46052)

(declare-fun Unit!46061 () Unit!46052)

(assert (=> d!803270 (= lt!985507 Unit!46061)))

(assert (=> d!803270 (= (getSuffix!1231 (list!12066 input!5495) lt!985350) lt!985395)))

(declare-fun lt!985518 () Unit!46052)

(declare-fun lt!985532 () Unit!46052)

(assert (=> d!803270 (= lt!985518 lt!985532)))

(declare-fun lt!985509 () List!32064)

(assert (=> d!803270 (= lt!985395 lt!985509)))

(assert (=> d!803270 (= lt!985532 (lemmaSamePrefixThenSameSuffix!1133 lt!985350 lt!985395 lt!985350 lt!985509 (list!12066 input!5495)))))

(assert (=> d!803270 (= lt!985509 (getSuffix!1231 (list!12066 input!5495) lt!985350))))

(declare-fun lt!985534 () Unit!46052)

(declare-fun lt!985530 () Unit!46052)

(assert (=> d!803270 (= lt!985534 lt!985530)))

(assert (=> d!803270 (isPrefix!2549 lt!985350 (++!7910 lt!985350 lt!985395))))

(assert (=> d!803270 (= lt!985530 (lemmaConcatTwoListThenFirstIsPrefix!1659 lt!985350 lt!985395))))

(assert (=> d!803270 (= (++!7910 lt!985350 lt!985395) (list!12066 input!5495))))

(assert (=> d!803270 (= (findLongestMatchInnerZipperFast!33 call!180612 lt!985350 1 lt!985395 input!5495 lt!985360) lt!985506)))

(declare-fun b!2767157 () Bool)

(assert (=> b!2767157 (= e!1744762 0)))

(declare-fun b!2767158 () Bool)

(assert (=> b!2767158 (= e!1744759 1)))

(declare-fun bm!180633 () Bool)

(assert (=> bm!180633 (= call!180641 (derivationStepZipper!363 call!180612 call!180633))))

(declare-fun bm!180634 () Bool)

(assert (=> bm!180634 (= call!180635 (nullableZipper!628 call!180612))))

(declare-fun bm!180635 () Bool)

(assert (=> bm!180635 (= call!180639 (tail!4382 lt!985395))))

(declare-fun b!2767159 () Bool)

(declare-fun Unit!46062 () Unit!46052)

(assert (=> b!2767159 (= e!1744761 Unit!46062)))

(assert (=> b!2767159 (= lt!985512 call!180634)))

(assert (=> b!2767159 (= lt!985508 call!180634)))

(declare-fun lt!985529 () Unit!46052)

(assert (=> b!2767159 (= lt!985529 call!180640)))

(assert (=> b!2767159 call!180636))

(declare-fun lt!985520 () Unit!46052)

(assert (=> b!2767159 (= lt!985520 lt!985529)))

(declare-fun lt!985521 () List!32064)

(assert (=> b!2767159 (= lt!985521 call!180634)))

(declare-fun lt!985526 () Unit!46052)

(assert (=> b!2767159 (= lt!985526 call!180638)))

(assert (=> b!2767159 (= lt!985521 lt!985350)))

(declare-fun lt!985499 () Unit!46052)

(assert (=> b!2767159 (= lt!985499 lt!985526)))

(assert (=> b!2767159 false))

(declare-fun bm!180636 () Bool)

(assert (=> bm!180636 (= call!180638 (lemmaIsPrefixSameLengthThenSameList!456 (ite c!449018 lt!985497 lt!985521) lt!985350 call!180634))))

(declare-fun bm!180637 () Bool)

(assert (=> bm!180637 (= call!180634 (list!12066 input!5495))))

(assert (= (and d!803270 c!449021) b!2767157))

(assert (= (and d!803270 (not c!449021)) b!2767154))

(assert (= (and b!2767154 c!449018) b!2767151))

(assert (= (and b!2767154 (not c!449018)) b!2767152))

(assert (= (and b!2767151 c!449020) b!2767158))

(assert (= (and b!2767151 (not c!449020)) b!2767153))

(assert (= (and b!2767152 c!449022) b!2767159))

(assert (= (and b!2767152 (not c!449022)) b!2767150))

(assert (= (and b!2767152 c!449019) b!2767155))

(assert (= (and b!2767152 (not c!449019)) b!2767156))

(assert (= (or b!2767155 b!2767156) bm!180628))

(assert (= (or b!2767155 b!2767156) bm!180635))

(assert (= (or b!2767155 b!2767156) bm!180632))

(assert (= (or b!2767155 b!2767156) bm!180633))

(assert (= (or b!2767155 b!2767156) bm!180630))

(assert (= (or b!2767151 b!2767159) bm!180631))

(assert (= (or b!2767151 b!2767159) bm!180629))

(assert (= (or b!2767151 b!2767152 b!2767159) bm!180637))

(assert (= (or b!2767151 b!2767152) bm!180634))

(assert (= (or b!2767151 b!2767159) bm!180636))

(declare-fun m!3190479 () Bool)

(assert (=> b!2767152 m!3190479))

(declare-fun m!3190481 () Bool)

(assert (=> b!2767152 m!3190481))

(declare-fun m!3190483 () Bool)

(assert (=> b!2767152 m!3190483))

(assert (=> b!2767152 m!3190479))

(declare-fun m!3190485 () Bool)

(assert (=> b!2767152 m!3190485))

(declare-fun m!3190487 () Bool)

(assert (=> b!2767152 m!3190487))

(declare-fun m!3190489 () Bool)

(assert (=> b!2767152 m!3190489))

(declare-fun m!3190491 () Bool)

(assert (=> b!2767152 m!3190491))

(declare-fun m!3190493 () Bool)

(assert (=> b!2767152 m!3190493))

(declare-fun m!3190495 () Bool)

(assert (=> b!2767152 m!3190495))

(declare-fun m!3190497 () Bool)

(assert (=> b!2767152 m!3190497))

(declare-fun m!3190499 () Bool)

(assert (=> b!2767152 m!3190499))

(declare-fun m!3190501 () Bool)

(assert (=> b!2767152 m!3190501))

(assert (=> b!2767152 m!3190487))

(declare-fun m!3190503 () Bool)

(assert (=> b!2767152 m!3190503))

(declare-fun m!3190505 () Bool)

(assert (=> b!2767152 m!3190505))

(declare-fun m!3190507 () Bool)

(assert (=> b!2767152 m!3190507))

(declare-fun m!3190509 () Bool)

(assert (=> b!2767152 m!3190509))

(declare-fun m!3190511 () Bool)

(assert (=> b!2767152 m!3190511))

(declare-fun m!3190513 () Bool)

(assert (=> b!2767152 m!3190513))

(declare-fun m!3190515 () Bool)

(assert (=> b!2767152 m!3190515))

(assert (=> b!2767152 m!3190497))

(assert (=> b!2767152 m!3190503))

(declare-fun m!3190517 () Bool)

(assert (=> b!2767152 m!3190517))

(declare-fun m!3190519 () Bool)

(assert (=> b!2767152 m!3190519))

(assert (=> b!2767152 m!3190317))

(assert (=> bm!180637 m!3190315))

(declare-fun m!3190521 () Bool)

(assert (=> bm!180634 m!3190521))

(declare-fun m!3190523 () Bool)

(assert (=> bm!180631 m!3190523))

(declare-fun m!3190525 () Bool)

(assert (=> bm!180633 m!3190525))

(declare-fun m!3190527 () Bool)

(assert (=> bm!180632 m!3190527))

(declare-fun m!3190529 () Bool)

(assert (=> bm!180636 m!3190529))

(declare-fun m!3190531 () Bool)

(assert (=> bm!180630 m!3190531))

(assert (=> bm!180628 m!3190509))

(declare-fun m!3190533 () Bool)

(assert (=> bm!180629 m!3190533))

(assert (=> bm!180635 m!3190481))

(assert (=> d!803270 m!3190427))

(declare-fun m!3190535 () Bool)

(assert (=> d!803270 m!3190535))

(assert (=> d!803270 m!3190427))

(declare-fun m!3190537 () Bool)

(assert (=> d!803270 m!3190537))

(assert (=> d!803270 m!3190315))

(declare-fun m!3190539 () Bool)

(assert (=> d!803270 m!3190539))

(declare-fun m!3190541 () Bool)

(assert (=> d!803270 m!3190541))

(declare-fun m!3190543 () Bool)

(assert (=> d!803270 m!3190543))

(assert (=> d!803270 m!3190315))

(declare-fun m!3190545 () Bool)

(assert (=> d!803270 m!3190545))

(assert (=> d!803270 m!3190315))

(declare-fun m!3190547 () Bool)

(assert (=> d!803270 m!3190547))

(assert (=> d!803270 m!3190315))

(assert (=> bm!180592 d!803270))

(declare-fun bm!180638 () Bool)

(declare-fun call!180643 () C!16308)

(assert (=> bm!180638 (= call!180643 (apply!7493 input!5495 1))))

(declare-fun lt!985569 () List!32064)

(declare-fun lt!985553 () List!32064)

(declare-fun bm!180639 () Bool)

(declare-fun lt!985554 () List!32064)

(declare-fun c!449023 () Bool)

(declare-fun call!180650 () Unit!46052)

(declare-fun lt!985550 () List!32064)

(assert (=> bm!180639 (= call!180650 (lemmaIsPrefixRefl!1673 (ite c!449023 lt!985553 lt!985554) (ite c!449023 lt!985569 lt!985550)))))

(declare-fun b!2767160 () Bool)

(declare-fun e!1744766 () Unit!46052)

(declare-fun Unit!46063 () Unit!46052)

(assert (=> b!2767160 (= e!1744766 Unit!46063)))

(declare-fun call!180651 () (InoxSet Context!4586))

(declare-fun call!180649 () List!32064)

(declare-fun call!180652 () List!32064)

(declare-fun bm!180640 () Bool)

(declare-fun call!180647 () Int)

(assert (=> bm!180640 (= call!180647 (findLongestMatchInnerZipperFast!33 call!180651 call!180652 (+ 1 1) call!180649 input!5495 lt!985360))))

(declare-fun b!2767161 () Bool)

(declare-fun c!449025 () Bool)

(declare-fun call!180645 () Bool)

(assert (=> b!2767161 (= c!449025 call!180645)))

(declare-fun lt!985552 () Unit!46052)

(declare-fun lt!985545 () Unit!46052)

(assert (=> b!2767161 (= lt!985552 lt!985545)))

(declare-fun lt!985539 () List!32064)

(assert (=> b!2767161 (= lt!985539 lt!985352)))

(declare-fun call!180648 () Unit!46052)

(assert (=> b!2767161 (= lt!985545 call!180648)))

(declare-fun call!180644 () List!32064)

(assert (=> b!2767161 (= lt!985539 call!180644)))

(declare-fun lt!985546 () Unit!46052)

(declare-fun lt!985542 () Unit!46052)

(assert (=> b!2767161 (= lt!985546 lt!985542)))

(declare-fun call!180646 () Bool)

(assert (=> b!2767161 call!180646))

(assert (=> b!2767161 (= lt!985542 call!180650)))

(assert (=> b!2767161 (= lt!985569 call!180644)))

(assert (=> b!2767161 (= lt!985553 call!180644)))

(declare-fun e!1744768 () Int)

(declare-fun e!1744764 () Int)

(assert (=> b!2767161 (= e!1744768 e!1744764)))

(declare-fun b!2767162 () Bool)

(declare-fun c!449024 () Bool)

(assert (=> b!2767162 (= c!449024 call!180645)))

(declare-fun lt!985564 () Unit!46052)

(declare-fun lt!985578 () Unit!46052)

(assert (=> b!2767162 (= lt!985564 lt!985578)))

(declare-fun lt!985575 () C!16308)

(declare-fun lt!985556 () List!32064)

(declare-fun lt!985557 () List!32064)

(assert (=> b!2767162 (= (++!7910 (++!7910 lt!985352 (Cons!31964 lt!985575 Nil!31964)) lt!985556) lt!985557)))

(assert (=> b!2767162 (= lt!985578 (lemmaMoveElementToOtherListKeepsConcatEq!865 lt!985352 lt!985575 lt!985556 lt!985557))))

(assert (=> b!2767162 (= lt!985557 call!180644)))

(assert (=> b!2767162 (= lt!985556 (tail!4382 lt!985361))))

(assert (=> b!2767162 (= lt!985575 (apply!7493 input!5495 1))))

(declare-fun lt!985544 () Unit!46052)

(declare-fun lt!985567 () Unit!46052)

(assert (=> b!2767162 (= lt!985544 lt!985567)))

(declare-fun lt!985538 () List!32064)

(assert (=> b!2767162 (isPrefix!2549 (++!7910 lt!985352 (Cons!31964 (head!6144 (getSuffix!1231 lt!985538 lt!985352)) Nil!31964)) lt!985538)))

(assert (=> b!2767162 (= lt!985567 (lemmaAddHeadSuffixToPrefixStillPrefix!453 lt!985352 lt!985538))))

(assert (=> b!2767162 (= lt!985538 call!180644)))

(declare-fun lt!985579 () Unit!46052)

(assert (=> b!2767162 (= lt!985579 e!1744766)))

(declare-fun c!449027 () Bool)

(assert (=> b!2767162 (= c!449027 (= (size!24737 lt!985352) (size!24738 input!5495)))))

(declare-fun lt!985565 () Unit!46052)

(declare-fun lt!985540 () Unit!46052)

(assert (=> b!2767162 (= lt!985565 lt!985540)))

(declare-fun lt!985547 () List!32064)

(assert (=> b!2767162 (<= (size!24737 lt!985352) (size!24737 lt!985547))))

(assert (=> b!2767162 (= lt!985540 (lemmaIsPrefixThenSmallerEqSize!256 lt!985352 lt!985547))))

(assert (=> b!2767162 (= lt!985547 call!180644)))

(declare-fun lt!985570 () Unit!46052)

(declare-fun lt!985559 () Unit!46052)

(assert (=> b!2767162 (= lt!985570 lt!985559)))

(declare-fun lt!985573 () List!32064)

(assert (=> b!2767162 (= (head!6144 (drop!1702 lt!985573 1)) (apply!7494 lt!985573 1))))

(assert (=> b!2767162 (= lt!985559 (lemmaDropApply!908 lt!985573 1))))

(assert (=> b!2767162 (= lt!985573 call!180644)))

(declare-fun lt!985577 () Unit!46052)

(declare-fun lt!985561 () Unit!46052)

(assert (=> b!2767162 (= lt!985577 lt!985561)))

(declare-fun lt!985558 () List!32064)

(declare-fun lt!985555 () List!32064)

(assert (=> b!2767162 (and (= lt!985555 lt!985352) (= lt!985558 lt!985361))))

(assert (=> b!2767162 (= lt!985561 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985555 lt!985558 lt!985352 lt!985361))))

(declare-fun lt!985543 () tuple2!32092)

(assert (=> b!2767162 (= lt!985558 (list!12066 (_2!18913 lt!985543)))))

(assert (=> b!2767162 (= lt!985555 (list!12066 (_1!18913 lt!985543)))))

(assert (=> b!2767162 (= lt!985543 (splitAt!109 input!5495 1))))

(declare-fun e!1744765 () Int)

(assert (=> b!2767162 (= e!1744768 e!1744765)))

(declare-fun b!2767163 () Bool)

(assert (=> b!2767163 (= e!1744764 0)))

(declare-fun b!2767164 () Bool)

(declare-fun e!1744767 () Int)

(assert (=> b!2767164 (= e!1744767 e!1744768)))

(assert (=> b!2767164 (= c!449023 (= 1 lt!985360))))

(declare-fun b!2767165 () Bool)

(declare-fun lt!985566 () Int)

(assert (=> b!2767165 (= e!1744765 (ite (= lt!985566 0) 1 lt!985566))))

(assert (=> b!2767165 (= lt!985566 call!180647)))

(declare-fun bm!180641 () Bool)

(assert (=> bm!180641 (= call!180646 (isPrefix!2549 (ite c!449023 lt!985553 lt!985554) (ite c!449023 lt!985569 lt!985550)))))

(declare-fun b!2767166 () Bool)

(assert (=> b!2767166 (= e!1744765 call!180647)))

(declare-fun bm!180642 () Bool)

(assert (=> bm!180642 (= call!180652 (++!7910 lt!985352 (Cons!31964 call!180643 Nil!31964)))))

(declare-fun d!803272 () Bool)

(declare-fun lt!985548 () Int)

(assert (=> d!803272 (= (size!24737 (_1!18912 (findLongestMatchInnerZipper!19 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 (list!12066 input!5495) lt!985360))) lt!985548)))

(assert (=> d!803272 (= lt!985548 e!1744767)))

(declare-fun c!449026 () Bool)

(assert (=> d!803272 (= c!449026 (lostCauseZipper!435 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386))))))

(declare-fun lt!985549 () Unit!46052)

(declare-fun Unit!46064 () Unit!46052)

(assert (=> d!803272 (= lt!985549 Unit!46064)))

(assert (=> d!803272 (= (getSuffix!1231 (list!12066 input!5495) lt!985352) lt!985361)))

(declare-fun lt!985560 () Unit!46052)

(declare-fun lt!985574 () Unit!46052)

(assert (=> d!803272 (= lt!985560 lt!985574)))

(declare-fun lt!985551 () List!32064)

(assert (=> d!803272 (= lt!985361 lt!985551)))

(assert (=> d!803272 (= lt!985574 (lemmaSamePrefixThenSameSuffix!1133 lt!985352 lt!985361 lt!985352 lt!985551 (list!12066 input!5495)))))

(assert (=> d!803272 (= lt!985551 (getSuffix!1231 (list!12066 input!5495) lt!985352))))

(declare-fun lt!985576 () Unit!46052)

(declare-fun lt!985572 () Unit!46052)

(assert (=> d!803272 (= lt!985576 lt!985572)))

(assert (=> d!803272 (isPrefix!2549 lt!985352 (++!7910 lt!985352 lt!985361))))

(assert (=> d!803272 (= lt!985572 (lemmaConcatTwoListThenFirstIsPrefix!1659 lt!985352 lt!985361))))

(assert (=> d!803272 (= (++!7910 lt!985352 lt!985361) (list!12066 input!5495))))

(assert (=> d!803272 (= (findLongestMatchInnerZipperFast!33 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360) lt!985548)))

(declare-fun b!2767167 () Bool)

(assert (=> b!2767167 (= e!1744767 0)))

(declare-fun b!2767168 () Bool)

(assert (=> b!2767168 (= e!1744764 1)))

(declare-fun bm!180643 () Bool)

(assert (=> bm!180643 (= call!180651 (derivationStepZipper!363 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) call!180643))))

(declare-fun bm!180644 () Bool)

(assert (=> bm!180644 (= call!180645 (nullableZipper!628 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386))))))

(declare-fun bm!180645 () Bool)

(assert (=> bm!180645 (= call!180649 (tail!4382 lt!985361))))

(declare-fun b!2767169 () Bool)

(declare-fun Unit!46065 () Unit!46052)

(assert (=> b!2767169 (= e!1744766 Unit!46065)))

(assert (=> b!2767169 (= lt!985554 call!180644)))

(assert (=> b!2767169 (= lt!985550 call!180644)))

(declare-fun lt!985571 () Unit!46052)

(assert (=> b!2767169 (= lt!985571 call!180650)))

(assert (=> b!2767169 call!180646))

(declare-fun lt!985562 () Unit!46052)

(assert (=> b!2767169 (= lt!985562 lt!985571)))

(declare-fun lt!985563 () List!32064)

(assert (=> b!2767169 (= lt!985563 call!180644)))

(declare-fun lt!985568 () Unit!46052)

(assert (=> b!2767169 (= lt!985568 call!180648)))

(assert (=> b!2767169 (= lt!985563 lt!985352)))

(declare-fun lt!985541 () Unit!46052)

(assert (=> b!2767169 (= lt!985541 lt!985568)))

(assert (=> b!2767169 false))

(declare-fun bm!180646 () Bool)

(assert (=> bm!180646 (= call!180648 (lemmaIsPrefixSameLengthThenSameList!456 (ite c!449023 lt!985539 lt!985563) lt!985352 call!180644))))

(declare-fun bm!180647 () Bool)

(assert (=> bm!180647 (= call!180644 (list!12066 input!5495))))

(assert (= (and d!803272 c!449026) b!2767167))

(assert (= (and d!803272 (not c!449026)) b!2767164))

(assert (= (and b!2767164 c!449023) b!2767161))

(assert (= (and b!2767164 (not c!449023)) b!2767162))

(assert (= (and b!2767161 c!449025) b!2767168))

(assert (= (and b!2767161 (not c!449025)) b!2767163))

(assert (= (and b!2767162 c!449027) b!2767169))

(assert (= (and b!2767162 (not c!449027)) b!2767160))

(assert (= (and b!2767162 c!449024) b!2767165))

(assert (= (and b!2767162 (not c!449024)) b!2767166))

(assert (= (or b!2767165 b!2767166) bm!180638))

(assert (= (or b!2767165 b!2767166) bm!180645))

(assert (= (or b!2767165 b!2767166) bm!180642))

(assert (= (or b!2767165 b!2767166) bm!180643))

(assert (= (or b!2767165 b!2767166) bm!180640))

(assert (= (or b!2767161 b!2767169) bm!180641))

(assert (= (or b!2767161 b!2767169) bm!180639))

(assert (= (or b!2767161 b!2767162 b!2767169) bm!180647))

(assert (= (or b!2767161 b!2767162) bm!180644))

(assert (= (or b!2767161 b!2767169) bm!180646))

(declare-fun m!3190549 () Bool)

(assert (=> b!2767162 m!3190549))

(declare-fun m!3190551 () Bool)

(assert (=> b!2767162 m!3190551))

(declare-fun m!3190553 () Bool)

(assert (=> b!2767162 m!3190553))

(assert (=> b!2767162 m!3190549))

(declare-fun m!3190555 () Bool)

(assert (=> b!2767162 m!3190555))

(declare-fun m!3190557 () Bool)

(assert (=> b!2767162 m!3190557))

(declare-fun m!3190559 () Bool)

(assert (=> b!2767162 m!3190559))

(assert (=> b!2767162 m!3190491))

(declare-fun m!3190561 () Bool)

(assert (=> b!2767162 m!3190561))

(declare-fun m!3190563 () Bool)

(assert (=> b!2767162 m!3190563))

(declare-fun m!3190565 () Bool)

(assert (=> b!2767162 m!3190565))

(declare-fun m!3190567 () Bool)

(assert (=> b!2767162 m!3190567))

(declare-fun m!3190569 () Bool)

(assert (=> b!2767162 m!3190569))

(assert (=> b!2767162 m!3190557))

(declare-fun m!3190571 () Bool)

(assert (=> b!2767162 m!3190571))

(declare-fun m!3190573 () Bool)

(assert (=> b!2767162 m!3190573))

(declare-fun m!3190575 () Bool)

(assert (=> b!2767162 m!3190575))

(assert (=> b!2767162 m!3190509))

(declare-fun m!3190577 () Bool)

(assert (=> b!2767162 m!3190577))

(declare-fun m!3190579 () Bool)

(assert (=> b!2767162 m!3190579))

(declare-fun m!3190581 () Bool)

(assert (=> b!2767162 m!3190581))

(assert (=> b!2767162 m!3190565))

(assert (=> b!2767162 m!3190571))

(declare-fun m!3190583 () Bool)

(assert (=> b!2767162 m!3190583))

(declare-fun m!3190585 () Bool)

(assert (=> b!2767162 m!3190585))

(assert (=> b!2767162 m!3190317))

(assert (=> bm!180647 m!3190315))

(declare-fun m!3190587 () Bool)

(assert (=> bm!180644 m!3190587))

(declare-fun m!3190589 () Bool)

(assert (=> bm!180641 m!3190589))

(declare-fun m!3190591 () Bool)

(assert (=> bm!180643 m!3190591))

(declare-fun m!3190593 () Bool)

(assert (=> bm!180642 m!3190593))

(declare-fun m!3190595 () Bool)

(assert (=> bm!180646 m!3190595))

(declare-fun m!3190597 () Bool)

(assert (=> bm!180640 m!3190597))

(assert (=> bm!180638 m!3190509))

(declare-fun m!3190599 () Bool)

(assert (=> bm!180639 m!3190599))

(assert (=> bm!180645 m!3190551))

(assert (=> d!803272 m!3190385))

(declare-fun m!3190601 () Bool)

(assert (=> d!803272 m!3190601))

(assert (=> d!803272 m!3190385))

(declare-fun m!3190603 () Bool)

(assert (=> d!803272 m!3190603))

(assert (=> d!803272 m!3190315))

(declare-fun m!3190605 () Bool)

(assert (=> d!803272 m!3190605))

(declare-fun m!3190607 () Bool)

(assert (=> d!803272 m!3190607))

(declare-fun m!3190609 () Bool)

(assert (=> d!803272 m!3190609))

(assert (=> d!803272 m!3190315))

(declare-fun m!3190611 () Bool)

(assert (=> d!803272 m!3190611))

(assert (=> d!803272 m!3190315))

(declare-fun m!3190613 () Bool)

(assert (=> d!803272 m!3190613))

(assert (=> d!803272 m!3190315))

(assert (=> bm!180606 d!803272))

(declare-fun b!2767173 () Bool)

(declare-fun e!1744771 () Bool)

(assert (=> b!2767173 (= e!1744771 (>= (size!24737 (++!7910 Nil!31964 lt!985390)) (size!24737 Nil!31964)))))

(declare-fun b!2767170 () Bool)

(declare-fun e!1744770 () Bool)

(declare-fun e!1744769 () Bool)

(assert (=> b!2767170 (= e!1744770 e!1744769)))

(declare-fun res!1157658 () Bool)

(assert (=> b!2767170 (=> (not res!1157658) (not e!1744769))))

(assert (=> b!2767170 (= res!1157658 (not ((_ is Nil!31964) (++!7910 Nil!31964 lt!985390))))))

(declare-fun b!2767172 () Bool)

(assert (=> b!2767172 (= e!1744769 (isPrefix!2549 (tail!4382 Nil!31964) (tail!4382 (++!7910 Nil!31964 lt!985390))))))

(declare-fun d!803274 () Bool)

(assert (=> d!803274 e!1744771))

(declare-fun res!1157659 () Bool)

(assert (=> d!803274 (=> res!1157659 e!1744771)))

(declare-fun lt!985580 () Bool)

(assert (=> d!803274 (= res!1157659 (not lt!985580))))

(assert (=> d!803274 (= lt!985580 e!1744770)))

(declare-fun res!1157656 () Bool)

(assert (=> d!803274 (=> res!1157656 e!1744770)))

(assert (=> d!803274 (= res!1157656 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803274 (= (isPrefix!2549 Nil!31964 (++!7910 Nil!31964 lt!985390)) lt!985580)))

(declare-fun b!2767171 () Bool)

(declare-fun res!1157657 () Bool)

(assert (=> b!2767171 (=> (not res!1157657) (not e!1744769))))

(assert (=> b!2767171 (= res!1157657 (= (head!6144 Nil!31964) (head!6144 (++!7910 Nil!31964 lt!985390))))))

(assert (= (and d!803274 (not res!1157656)) b!2767170))

(assert (= (and b!2767170 res!1157658) b!2767171))

(assert (= (and b!2767171 res!1157657) b!2767172))

(assert (= (and d!803274 (not res!1157659)) b!2767173))

(assert (=> b!2767173 m!3190313))

(declare-fun m!3190615 () Bool)

(assert (=> b!2767173 m!3190615))

(assert (=> b!2767173 m!3190397))

(declare-fun m!3190617 () Bool)

(assert (=> b!2767172 m!3190617))

(assert (=> b!2767172 m!3190313))

(declare-fun m!3190619 () Bool)

(assert (=> b!2767172 m!3190619))

(assert (=> b!2767172 m!3190617))

(assert (=> b!2767172 m!3190619))

(declare-fun m!3190621 () Bool)

(assert (=> b!2767172 m!3190621))

(declare-fun m!3190623 () Bool)

(assert (=> b!2767171 m!3190623))

(assert (=> b!2767171 m!3190313))

(declare-fun m!3190625 () Bool)

(assert (=> b!2767171 m!3190625))

(assert (=> b!2767100 d!803274))

(declare-fun d!803276 () Bool)

(declare-fun list!12067 (Conc!9957) List!32064)

(assert (=> d!803276 (= (list!12066 (_2!18913 lt!985333)) (list!12067 (c!449005 (_2!18913 lt!985333))))))

(declare-fun bs!500359 () Bool)

(assert (= bs!500359 d!803276))

(declare-fun m!3190627 () Bool)

(assert (=> bs!500359 m!3190627))

(assert (=> b!2767100 d!803276))

(declare-fun d!803278 () Bool)

(declare-fun e!1744794 () Bool)

(assert (=> d!803278 e!1744794))

(declare-fun res!1157665 () Bool)

(assert (=> d!803278 (=> (not res!1157665) (not e!1744794))))

(declare-fun lt!985649 () tuple2!32090)

(assert (=> d!803278 (= res!1157665 (= (++!7910 (_1!18912 lt!985649) (_2!18912 lt!985649)) lt!985390))))

(declare-fun e!1744792 () tuple2!32090)

(assert (=> d!803278 (= lt!985649 e!1744792)))

(declare-fun c!449040 () Bool)

(assert (=> d!803278 (= c!449040 (lostCauseZipper!435 z!3597))))

(declare-fun lt!985657 () Unit!46052)

(declare-fun Unit!46066 () Unit!46052)

(assert (=> d!803278 (= lt!985657 Unit!46066)))

(assert (=> d!803278 (= (getSuffix!1231 lt!985390 Nil!31964) lt!985390)))

(declare-fun lt!985653 () Unit!46052)

(declare-fun lt!985658 () Unit!46052)

(assert (=> d!803278 (= lt!985653 lt!985658)))

(declare-fun lt!985635 () List!32064)

(assert (=> d!803278 (= lt!985390 lt!985635)))

(assert (=> d!803278 (= lt!985658 (lemmaSamePrefixThenSameSuffix!1133 Nil!31964 lt!985390 Nil!31964 lt!985635 lt!985390))))

(assert (=> d!803278 (= lt!985635 (getSuffix!1231 lt!985390 Nil!31964))))

(declare-fun lt!985638 () Unit!46052)

(declare-fun lt!985640 () Unit!46052)

(assert (=> d!803278 (= lt!985638 lt!985640)))

(assert (=> d!803278 (isPrefix!2549 Nil!31964 (++!7910 Nil!31964 lt!985390))))

(assert (=> d!803278 (= lt!985640 (lemmaConcatTwoListThenFirstIsPrefix!1659 Nil!31964 lt!985390))))

(assert (=> d!803278 (= (++!7910 Nil!31964 lt!985390) lt!985390)))

(assert (=> d!803278 (= (findLongestMatchInnerZipper!19 z!3597 Nil!31964 0 lt!985390 lt!985390 lt!985360) lt!985649)))

(declare-fun b!2767202 () Bool)

(declare-fun e!1744793 () tuple2!32090)

(assert (=> b!2767202 (= e!1744793 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun bm!180664 () Bool)

(declare-fun call!180676 () tuple2!32090)

(declare-fun call!180675 () List!32064)

(declare-fun call!180672 () (InoxSet Context!4586))

(declare-fun lt!985650 () List!32064)

(assert (=> bm!180664 (= call!180676 (findLongestMatchInnerZipper!19 call!180672 lt!985650 (+ 0 1) call!180675 lt!985390 lt!985360))))

(declare-fun bm!180665 () Bool)

(declare-fun call!180671 () Bool)

(assert (=> bm!180665 (= call!180671 (nullableZipper!628 z!3597))))

(declare-fun b!2767203 () Bool)

(declare-fun e!1744790 () tuple2!32090)

(declare-fun e!1744791 () tuple2!32090)

(assert (=> b!2767203 (= e!1744790 e!1744791)))

(declare-fun lt!985651 () tuple2!32090)

(assert (=> b!2767203 (= lt!985651 call!180676)))

(declare-fun c!449043 () Bool)

(assert (=> b!2767203 (= c!449043 (isEmpty!18090 (_1!18912 lt!985651)))))

(declare-fun b!2767204 () Bool)

(declare-fun e!1744788 () tuple2!32090)

(assert (=> b!2767204 (= e!1744792 e!1744788)))

(declare-fun c!449044 () Bool)

(assert (=> b!2767204 (= c!449044 (= 0 lt!985360))))

(declare-fun b!2767205 () Bool)

(declare-fun e!1744789 () Bool)

(assert (=> b!2767205 (= e!1744794 e!1744789)))

(declare-fun res!1157664 () Bool)

(assert (=> b!2767205 (=> res!1157664 e!1744789)))

(assert (=> b!2767205 (= res!1157664 (isEmpty!18090 (_1!18912 lt!985649)))))

(declare-fun b!2767206 () Bool)

(assert (=> b!2767206 (= e!1744791 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun b!2767207 () Bool)

(declare-fun c!449045 () Bool)

(assert (=> b!2767207 (= c!449045 call!180671)))

(declare-fun lt!985648 () Unit!46052)

(declare-fun lt!985646 () Unit!46052)

(assert (=> b!2767207 (= lt!985648 lt!985646)))

(assert (=> b!2767207 (= lt!985390 Nil!31964)))

(declare-fun call!180670 () Unit!46052)

(assert (=> b!2767207 (= lt!985646 call!180670)))

(declare-fun lt!985644 () Unit!46052)

(declare-fun lt!985656 () Unit!46052)

(assert (=> b!2767207 (= lt!985644 lt!985656)))

(declare-fun call!180669 () Bool)

(assert (=> b!2767207 call!180669))

(declare-fun call!180674 () Unit!46052)

(assert (=> b!2767207 (= lt!985656 call!180674)))

(assert (=> b!2767207 (= e!1744788 e!1744793)))

(declare-fun b!2767208 () Bool)

(assert (=> b!2767208 (= e!1744792 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun bm!180666 () Bool)

(assert (=> bm!180666 (= call!180670 (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 Nil!31964 lt!985390))))

(declare-fun b!2767209 () Bool)

(declare-fun e!1744795 () Unit!46052)

(declare-fun Unit!46067 () Unit!46052)

(assert (=> b!2767209 (= e!1744795 Unit!46067)))

(declare-fun lt!985645 () Unit!46052)

(assert (=> b!2767209 (= lt!985645 call!180674)))

(assert (=> b!2767209 call!180669))

(declare-fun lt!985634 () Unit!46052)

(assert (=> b!2767209 (= lt!985634 lt!985645)))

(declare-fun lt!985636 () Unit!46052)

(assert (=> b!2767209 (= lt!985636 call!180670)))

(assert (=> b!2767209 (= lt!985390 Nil!31964)))

(declare-fun lt!985654 () Unit!46052)

(assert (=> b!2767209 (= lt!985654 lt!985636)))

(assert (=> b!2767209 false))

(declare-fun b!2767210 () Bool)

(declare-fun c!449041 () Bool)

(assert (=> b!2767210 (= c!449041 call!180671)))

(declare-fun lt!985639 () Unit!46052)

(declare-fun lt!985641 () Unit!46052)

(assert (=> b!2767210 (= lt!985639 lt!985641)))

(declare-fun lt!985652 () C!16308)

(declare-fun lt!985633 () List!32064)

(assert (=> b!2767210 (= (++!7910 (++!7910 Nil!31964 (Cons!31964 lt!985652 Nil!31964)) lt!985633) lt!985390)))

(assert (=> b!2767210 (= lt!985641 (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985652 lt!985633 lt!985390))))

(assert (=> b!2767210 (= lt!985633 (tail!4382 lt!985390))))

(assert (=> b!2767210 (= lt!985652 (head!6144 lt!985390))))

(declare-fun lt!985637 () Unit!46052)

(declare-fun lt!985655 () Unit!46052)

(assert (=> b!2767210 (= lt!985637 lt!985655)))

(assert (=> b!2767210 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 (getSuffix!1231 lt!985390 Nil!31964)) Nil!31964)) lt!985390)))

(assert (=> b!2767210 (= lt!985655 (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985390))))

(assert (=> b!2767210 (= lt!985650 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985390) Nil!31964)))))

(declare-fun lt!985643 () Unit!46052)

(assert (=> b!2767210 (= lt!985643 e!1744795)))

(declare-fun c!449042 () Bool)

(assert (=> b!2767210 (= c!449042 (= (size!24737 Nil!31964) (size!24737 lt!985390)))))

(declare-fun lt!985647 () Unit!46052)

(declare-fun lt!985642 () Unit!46052)

(assert (=> b!2767210 (= lt!985647 lt!985642)))

(assert (=> b!2767210 (<= (size!24737 Nil!31964) (size!24737 lt!985390))))

(assert (=> b!2767210 (= lt!985642 (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985390))))

(assert (=> b!2767210 (= e!1744788 e!1744790)))

(declare-fun b!2767211 () Bool)

(assert (=> b!2767211 (= e!1744789 (>= (size!24737 (_1!18912 lt!985649)) (size!24737 Nil!31964)))))

(declare-fun bm!180667 () Bool)

(declare-fun call!180673 () C!16308)

(assert (=> bm!180667 (= call!180672 (derivationStepZipper!363 z!3597 call!180673))))

(declare-fun b!2767212 () Bool)

(assert (=> b!2767212 (= e!1744793 (tuple2!32091 Nil!31964 Nil!31964))))

(declare-fun b!2767213 () Bool)

(assert (=> b!2767213 (= e!1744791 lt!985651)))

(declare-fun b!2767214 () Bool)

(assert (=> b!2767214 (= e!1744790 call!180676)))

(declare-fun bm!180668 () Bool)

(assert (=> bm!180668 (= call!180673 (head!6144 lt!985390))))

(declare-fun bm!180669 () Bool)

(assert (=> bm!180669 (= call!180675 (tail!4382 lt!985390))))

(declare-fun b!2767215 () Bool)

(declare-fun Unit!46068 () Unit!46052)

(assert (=> b!2767215 (= e!1744795 Unit!46068)))

(declare-fun bm!180670 () Bool)

(assert (=> bm!180670 (= call!180669 (isPrefix!2549 lt!985390 lt!985390))))

(declare-fun bm!180671 () Bool)

(assert (=> bm!180671 (= call!180674 (lemmaIsPrefixRefl!1673 lt!985390 lt!985390))))

(assert (= (and d!803278 c!449040) b!2767208))

(assert (= (and d!803278 (not c!449040)) b!2767204))

(assert (= (and b!2767204 c!449044) b!2767207))

(assert (= (and b!2767204 (not c!449044)) b!2767210))

(assert (= (and b!2767207 c!449045) b!2767212))

(assert (= (and b!2767207 (not c!449045)) b!2767202))

(assert (= (and b!2767210 c!449042) b!2767209))

(assert (= (and b!2767210 (not c!449042)) b!2767215))

(assert (= (and b!2767210 c!449041) b!2767203))

(assert (= (and b!2767210 (not c!449041)) b!2767214))

(assert (= (and b!2767203 c!449043) b!2767206))

(assert (= (and b!2767203 (not c!449043)) b!2767213))

(assert (= (or b!2767203 b!2767214) bm!180669))

(assert (= (or b!2767203 b!2767214) bm!180668))

(assert (= (or b!2767203 b!2767214) bm!180667))

(assert (= (or b!2767203 b!2767214) bm!180664))

(assert (= (or b!2767207 b!2767210) bm!180665))

(assert (= (or b!2767207 b!2767209) bm!180671))

(assert (= (or b!2767207 b!2767209) bm!180666))

(assert (= (or b!2767207 b!2767209) bm!180670))

(assert (= (and d!803278 res!1157665) b!2767205))

(assert (= (and b!2767205 (not res!1157664)) b!2767211))

(declare-fun m!3190629 () Bool)

(assert (=> b!2767205 m!3190629))

(assert (=> bm!180670 m!3190355))

(assert (=> bm!180665 m!3190359))

(assert (=> d!803278 m!3190321))

(assert (=> d!803278 m!3190337))

(assert (=> d!803278 m!3190313))

(assert (=> d!803278 m!3190341))

(declare-fun m!3190631 () Bool)

(assert (=> d!803278 m!3190631))

(declare-fun m!3190633 () Bool)

(assert (=> d!803278 m!3190633))

(assert (=> d!803278 m!3190313))

(assert (=> d!803278 m!3190339))

(declare-fun m!3190635 () Bool)

(assert (=> bm!180664 m!3190635))

(assert (=> bm!180671 m!3190309))

(declare-fun m!3190637 () Bool)

(assert (=> b!2767203 m!3190637))

(assert (=> bm!180666 m!3190439))

(declare-fun m!3190639 () Bool)

(assert (=> bm!180667 m!3190639))

(assert (=> bm!180669 m!3190393))

(declare-fun m!3190641 () Bool)

(assert (=> b!2767211 m!3190641))

(assert (=> b!2767211 m!3190397))

(declare-fun m!3190643 () Bool)

(assert (=> b!2767210 m!3190643))

(declare-fun m!3190645 () Bool)

(assert (=> b!2767210 m!3190645))

(declare-fun m!3190647 () Bool)

(assert (=> b!2767210 m!3190647))

(assert (=> b!2767210 m!3190383))

(declare-fun m!3190649 () Bool)

(assert (=> b!2767210 m!3190649))

(assert (=> b!2767210 m!3190341))

(assert (=> b!2767210 m!3190447))

(declare-fun m!3190651 () Bool)

(assert (=> b!2767210 m!3190651))

(assert (=> b!2767210 m!3190393))

(assert (=> b!2767210 m!3190643))

(assert (=> b!2767210 m!3190409))

(assert (=> b!2767210 m!3190397))

(assert (=> b!2767210 m!3190341))

(declare-fun m!3190653 () Bool)

(assert (=> b!2767210 m!3190653))

(assert (=> b!2767210 m!3190651))

(declare-fun m!3190655 () Bool)

(assert (=> b!2767210 m!3190655))

(assert (=> b!2767210 m!3190379))

(assert (=> bm!180668 m!3190447))

(assert (=> b!2767100 d!803278))

(declare-fun d!803280 () Bool)

(assert (=> d!803280 (and (= lt!985329 (_1!18912 lt!985359)) (= lt!985345 (_2!18912 lt!985359)))))

(declare-fun lt!985661 () Unit!46052)

(declare-fun choose!16238 (List!32064 List!32064 List!32064 List!32064) Unit!46052)

(assert (=> d!803280 (= lt!985661 (choose!16238 lt!985329 lt!985345 (_1!18912 lt!985359) (_2!18912 lt!985359)))))

(assert (=> d!803280 (= (++!7910 lt!985329 lt!985345) (++!7910 (_1!18912 lt!985359) (_2!18912 lt!985359)))))

(assert (=> d!803280 (= (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985329 lt!985345 (_1!18912 lt!985359) (_2!18912 lt!985359)) lt!985661)))

(declare-fun bs!500360 () Bool)

(assert (= bs!500360 d!803280))

(declare-fun m!3190657 () Bool)

(assert (=> bs!500360 m!3190657))

(declare-fun m!3190659 () Bool)

(assert (=> bs!500360 m!3190659))

(declare-fun m!3190661 () Bool)

(assert (=> bs!500360 m!3190661))

(assert (=> b!2767100 d!803280))

(declare-fun d!803282 () Bool)

(declare-fun e!1744798 () Bool)

(assert (=> d!803282 e!1744798))

(declare-fun res!1157670 () Bool)

(assert (=> d!803282 (=> (not res!1157670) (not e!1744798))))

(declare-fun lt!985664 () tuple3!4788)

(assert (=> d!803282 (= res!1157670 (valid!2929 (_2!18909 lt!985664)))))

(declare-fun choose!16239 (CacheUp!2370 CacheDown!2490 (InoxSet Context!4586) List!32064 Int List!32064 BalanceConc!19528 Int) tuple3!4788)

(assert (=> d!803282 (= lt!985664 (choose!16239 cacheUp!820 cacheDown!939 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360))))

(assert (=> d!803282 (= (++!7910 Nil!31964 lt!985390) (list!12066 input!5495))))

(assert (=> d!803282 (= (findLongestMatchInnerZipperFastMem!27 cacheUp!820 cacheDown!939 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360) lt!985664)))

(declare-fun b!2767220 () Bool)

(declare-fun res!1157671 () Bool)

(assert (=> b!2767220 (=> (not res!1157671) (not e!1744798))))

(assert (=> b!2767220 (= res!1157671 (valid!2928 (_3!2864 lt!985664)))))

(declare-fun b!2767221 () Bool)

(assert (=> b!2767221 (= e!1744798 (= (_1!18909 lt!985664) (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360)))))

(assert (= (and d!803282 res!1157670) b!2767220))

(assert (= (and b!2767220 res!1157671) b!2767221))

(declare-fun m!3190663 () Bool)

(assert (=> d!803282 m!3190663))

(declare-fun m!3190665 () Bool)

(assert (=> d!803282 m!3190665))

(assert (=> d!803282 m!3190313))

(assert (=> d!803282 m!3190315))

(declare-fun m!3190667 () Bool)

(assert (=> b!2767220 m!3190667))

(assert (=> b!2767221 m!3190343))

(assert (=> b!2767100 d!803282))

(declare-fun bs!500361 () Bool)

(declare-fun d!803284 () Bool)

(assert (= bs!500361 (and d!803284 d!803266)))

(declare-fun lambda!101561 () Int)

(assert (=> bs!500361 (not (= lambda!101561 lambda!101548))))

(declare-fun bs!500362 () Bool)

(declare-fun b!2767226 () Bool)

(assert (= bs!500362 (and b!2767226 d!803266)))

(declare-fun lambda!101562 () Int)

(assert (=> bs!500362 (not (= lambda!101562 lambda!101548))))

(declare-fun bs!500363 () Bool)

(assert (= bs!500363 (and b!2767226 d!803284)))

(assert (=> bs!500363 (not (= lambda!101562 lambda!101561))))

(declare-fun bs!500364 () Bool)

(declare-fun b!2767227 () Bool)

(assert (= bs!500364 (and b!2767227 d!803266)))

(declare-fun lambda!101563 () Int)

(assert (=> bs!500364 (not (= lambda!101563 lambda!101548))))

(declare-fun bs!500365 () Bool)

(assert (= bs!500365 (and b!2767227 d!803284)))

(assert (=> bs!500365 (not (= lambda!101563 lambda!101561))))

(declare-fun bs!500366 () Bool)

(assert (= bs!500366 (and b!2767227 b!2767226)))

(assert (=> bs!500366 (= lambda!101563 lambda!101562)))

(declare-fun e!1744805 () Unit!46052)

(declare-fun Unit!46069 () Unit!46052)

(assert (=> b!2767226 (= e!1744805 Unit!46069)))

(declare-datatypes ((List!32065 0))(
  ( (Nil!31965) (Cons!31965 (h!37385 Context!4586) (t!228186 List!32065)) )
))
(declare-fun lt!985686 () List!32065)

(declare-fun call!180682 () List!32065)

(assert (=> b!2767226 (= lt!985686 call!180682)))

(declare-fun lt!985683 () Unit!46052)

(declare-fun lemmaNotForallThenExists!82 (List!32065 Int) Unit!46052)

(assert (=> b!2767226 (= lt!985683 (lemmaNotForallThenExists!82 lt!985686 lambda!101561))))

(declare-fun call!180681 () Bool)

(assert (=> b!2767226 call!180681))

(declare-fun lt!985687 () Unit!46052)

(assert (=> b!2767226 (= lt!985687 lt!985683)))

(declare-fun bm!180677 () Bool)

(declare-fun toList!1835 ((InoxSet Context!4586)) List!32065)

(assert (=> bm!180677 (= call!180682 (toList!1835 z!3597))))

(declare-fun lt!985684 () List!32065)

(declare-fun c!449056 () Bool)

(declare-fun bm!180676 () Bool)

(declare-fun exists!972 (List!32065 Int) Bool)

(assert (=> bm!180676 (= call!180681 (exists!972 (ite c!449056 lt!985686 lt!985684) (ite c!449056 lambda!101562 lambda!101563)))))

(declare-fun lt!985688 () Bool)

(declare-datatypes ((Option!6260 0))(
  ( (None!6259) (Some!6259 (v!33573 List!32064)) )
))
(declare-fun isEmpty!18091 (Option!6260) Bool)

(declare-fun getLanguageWitness!185 ((InoxSet Context!4586)) Option!6260)

(assert (=> d!803284 (= lt!985688 (isEmpty!18091 (getLanguageWitness!185 z!3597)))))

(declare-fun forall!6618 ((InoxSet Context!4586) Int) Bool)

(assert (=> d!803284 (= lt!985688 (forall!6618 z!3597 lambda!101561))))

(declare-fun lt!985685 () Unit!46052)

(assert (=> d!803284 (= lt!985685 e!1744805)))

(assert (=> d!803284 (= c!449056 (not (forall!6618 z!3597 lambda!101561)))))

(assert (=> d!803284 (= (lostCauseZipper!435 z!3597) lt!985688)))

(declare-fun Unit!46070 () Unit!46052)

(assert (=> b!2767227 (= e!1744805 Unit!46070)))

(assert (=> b!2767227 (= lt!985684 call!180682)))

(declare-fun lt!985682 () Unit!46052)

(declare-fun lemmaForallThenNotExists!82 (List!32065 Int) Unit!46052)

(assert (=> b!2767227 (= lt!985682 (lemmaForallThenNotExists!82 lt!985684 lambda!101561))))

(assert (=> b!2767227 (not call!180681)))

(declare-fun lt!985681 () Unit!46052)

(assert (=> b!2767227 (= lt!985681 lt!985682)))

(assert (= (and d!803284 c!449056) b!2767226))

(assert (= (and d!803284 (not c!449056)) b!2767227))

(assert (= (or b!2767226 b!2767227) bm!180676))

(assert (= (or b!2767226 b!2767227) bm!180677))

(declare-fun m!3190669 () Bool)

(assert (=> bm!180677 m!3190669))

(declare-fun m!3190671 () Bool)

(assert (=> b!2767226 m!3190671))

(declare-fun m!3190673 () Bool)

(assert (=> bm!180676 m!3190673))

(declare-fun m!3190675 () Bool)

(assert (=> d!803284 m!3190675))

(assert (=> d!803284 m!3190675))

(declare-fun m!3190677 () Bool)

(assert (=> d!803284 m!3190677))

(declare-fun m!3190679 () Bool)

(assert (=> d!803284 m!3190679))

(assert (=> d!803284 m!3190679))

(declare-fun m!3190681 () Bool)

(assert (=> b!2767227 m!3190681))

(assert (=> b!2767100 d!803284))

(declare-fun d!803286 () Bool)

(assert (=> d!803286 (= (list!12066 input!5495) (list!12067 (c!449005 input!5495)))))

(declare-fun bs!500367 () Bool)

(assert (= bs!500367 d!803286))

(declare-fun m!3190683 () Bool)

(assert (=> bs!500367 m!3190683))

(assert (=> b!2767100 d!803286))

(declare-fun d!803288 () Bool)

(declare-fun lt!985691 () Int)

(assert (=> d!803288 (= lt!985691 (size!24737 (list!12066 input!5495)))))

(declare-fun size!24739 (Conc!9957) Int)

(assert (=> d!803288 (= lt!985691 (size!24739 (c!449005 input!5495)))))

(assert (=> d!803288 (= (size!24738 input!5495) lt!985691)))

(declare-fun bs!500368 () Bool)

(assert (= bs!500368 d!803288))

(assert (=> bs!500368 m!3190315))

(assert (=> bs!500368 m!3190315))

(declare-fun m!3190685 () Bool)

(assert (=> bs!500368 m!3190685))

(declare-fun m!3190687 () Bool)

(assert (=> bs!500368 m!3190687))

(assert (=> b!2767100 d!803288))

(declare-fun d!803290 () Bool)

(assert (=> d!803290 (= (valid!2929 (_2!18909 lt!985334)) (validCacheMapUp!361 (cache!3807 (_2!18909 lt!985334))))))

(declare-fun bs!500369 () Bool)

(assert (= bs!500369 d!803290))

(declare-fun m!3190689 () Bool)

(assert (=> bs!500369 m!3190689))

(assert (=> b!2767100 d!803290))

(declare-fun b!2767238 () Bool)

(declare-fun res!1157677 () Bool)

(declare-fun e!1744810 () Bool)

(assert (=> b!2767238 (=> (not res!1157677) (not e!1744810))))

(declare-fun lt!985694 () List!32064)

(assert (=> b!2767238 (= res!1157677 (= (size!24737 lt!985694) (+ (size!24737 Nil!31964) (size!24737 lt!985390))))))

(declare-fun b!2767236 () Bool)

(declare-fun e!1744811 () List!32064)

(assert (=> b!2767236 (= e!1744811 lt!985390)))

(declare-fun d!803292 () Bool)

(assert (=> d!803292 e!1744810))

(declare-fun res!1157676 () Bool)

(assert (=> d!803292 (=> (not res!1157676) (not e!1744810))))

(declare-fun content!4499 (List!32064) (InoxSet C!16308))

(assert (=> d!803292 (= res!1157676 (= (content!4499 lt!985694) ((_ map or) (content!4499 Nil!31964) (content!4499 lt!985390))))))

(assert (=> d!803292 (= lt!985694 e!1744811)))

(declare-fun c!449059 () Bool)

(assert (=> d!803292 (= c!449059 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803292 (= (++!7910 Nil!31964 lt!985390) lt!985694)))

(declare-fun b!2767239 () Bool)

(assert (=> b!2767239 (= e!1744810 (or (not (= lt!985390 Nil!31964)) (= lt!985694 Nil!31964)))))

(declare-fun b!2767237 () Bool)

(assert (=> b!2767237 (= e!1744811 (Cons!31964 (h!37384 Nil!31964) (++!7910 (t!228184 Nil!31964) lt!985390)))))

(assert (= (and d!803292 c!449059) b!2767236))

(assert (= (and d!803292 (not c!449059)) b!2767237))

(assert (= (and d!803292 res!1157676) b!2767238))

(assert (= (and b!2767238 res!1157677) b!2767239))

(declare-fun m!3190691 () Bool)

(assert (=> b!2767238 m!3190691))

(assert (=> b!2767238 m!3190397))

(assert (=> b!2767238 m!3190383))

(declare-fun m!3190693 () Bool)

(assert (=> d!803292 m!3190693))

(declare-fun m!3190695 () Bool)

(assert (=> d!803292 m!3190695))

(declare-fun m!3190697 () Bool)

(assert (=> d!803292 m!3190697))

(declare-fun m!3190699 () Bool)

(assert (=> b!2767237 m!3190699))

(assert (=> b!2767100 d!803292))

(declare-fun d!803294 () Bool)

(declare-fun e!1744812 () Bool)

(assert (=> d!803294 e!1744812))

(declare-fun res!1157678 () Bool)

(assert (=> d!803294 (=> (not res!1157678) (not e!1744812))))

(declare-fun lt!985695 () tuple3!4788)

(assert (=> d!803294 (= res!1157678 (valid!2929 (_2!18909 lt!985695)))))

(assert (=> d!803294 (= lt!985695 (choose!16239 (_2!18909 lt!985334) (_3!2864 lt!985334) z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360))))

(assert (=> d!803294 (= (++!7910 Nil!31964 lt!985390) (list!12066 input!5495))))

(assert (=> d!803294 (= (findLongestMatchInnerZipperFastMem!27 (_2!18909 lt!985334) (_3!2864 lt!985334) z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360) lt!985695)))

(declare-fun b!2767240 () Bool)

(declare-fun res!1157679 () Bool)

(assert (=> b!2767240 (=> (not res!1157679) (not e!1744812))))

(assert (=> b!2767240 (= res!1157679 (valid!2928 (_3!2864 lt!985695)))))

(declare-fun b!2767241 () Bool)

(assert (=> b!2767241 (= e!1744812 (= (_1!18909 lt!985695) (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360)))))

(assert (= (and d!803294 res!1157678) b!2767240))

(assert (= (and b!2767240 res!1157679) b!2767241))

(declare-fun m!3190701 () Bool)

(assert (=> d!803294 m!3190701))

(declare-fun m!3190703 () Bool)

(assert (=> d!803294 m!3190703))

(assert (=> d!803294 m!3190313))

(assert (=> d!803294 m!3190315))

(declare-fun m!3190705 () Bool)

(assert (=> b!2767240 m!3190705))

(assert (=> b!2767241 m!3190343))

(assert (=> b!2767100 d!803294))

(declare-fun d!803296 () Bool)

(assert (=> d!803296 (= lt!985390 lt!985349)))

(declare-fun lt!985698 () Unit!46052)

(declare-fun choose!16240 (List!32064 List!32064 List!32064 List!32064 List!32064) Unit!46052)

(assert (=> d!803296 (= lt!985698 (choose!16240 Nil!31964 lt!985390 Nil!31964 lt!985349 lt!985390))))

(assert (=> d!803296 (isPrefix!2549 Nil!31964 lt!985390)))

(assert (=> d!803296 (= (lemmaSamePrefixThenSameSuffix!1133 Nil!31964 lt!985390 Nil!31964 lt!985349 lt!985390) lt!985698)))

(declare-fun bs!500370 () Bool)

(assert (= bs!500370 d!803296))

(declare-fun m!3190707 () Bool)

(assert (=> bs!500370 m!3190707))

(declare-fun m!3190709 () Bool)

(assert (=> bs!500370 m!3190709))

(assert (=> b!2767100 d!803296))

(declare-fun b!2767254 () Bool)

(declare-fun res!1157692 () Bool)

(declare-fun e!1744818 () Bool)

(assert (=> b!2767254 (=> (not res!1157692) (not e!1744818))))

(declare-fun isEmpty!18092 (Conc!9957) Bool)

(assert (=> b!2767254 (= res!1157692 (not (isEmpty!18092 (left!24376 (c!449005 input!5495)))))))

(declare-fun b!2767255 () Bool)

(declare-fun e!1744817 () Bool)

(assert (=> b!2767255 (= e!1744817 e!1744818)))

(declare-fun res!1157696 () Bool)

(assert (=> b!2767255 (=> (not res!1157696) (not e!1744818))))

(declare-fun height!1487 (Conc!9957) Int)

(assert (=> b!2767255 (= res!1157696 (<= (- 1) (- (height!1487 (left!24376 (c!449005 input!5495))) (height!1487 (right!24706 (c!449005 input!5495))))))))

(declare-fun b!2767256 () Bool)

(declare-fun res!1157695 () Bool)

(assert (=> b!2767256 (=> (not res!1157695) (not e!1744818))))

(assert (=> b!2767256 (= res!1157695 (isBalanced!3035 (left!24376 (c!449005 input!5495))))))

(declare-fun b!2767257 () Bool)

(assert (=> b!2767257 (= e!1744818 (not (isEmpty!18092 (right!24706 (c!449005 input!5495)))))))

(declare-fun b!2767259 () Bool)

(declare-fun res!1157697 () Bool)

(assert (=> b!2767259 (=> (not res!1157697) (not e!1744818))))

(assert (=> b!2767259 (= res!1157697 (<= (- (height!1487 (left!24376 (c!449005 input!5495))) (height!1487 (right!24706 (c!449005 input!5495)))) 1))))

(declare-fun d!803298 () Bool)

(declare-fun res!1157694 () Bool)

(assert (=> d!803298 (=> res!1157694 e!1744817)))

(assert (=> d!803298 (= res!1157694 (not ((_ is Node!9957) (c!449005 input!5495))))))

(assert (=> d!803298 (= (isBalanced!3035 (c!449005 input!5495)) e!1744817)))

(declare-fun b!2767258 () Bool)

(declare-fun res!1157693 () Bool)

(assert (=> b!2767258 (=> (not res!1157693) (not e!1744818))))

(assert (=> b!2767258 (= res!1157693 (isBalanced!3035 (right!24706 (c!449005 input!5495))))))

(assert (= (and d!803298 (not res!1157694)) b!2767255))

(assert (= (and b!2767255 res!1157696) b!2767259))

(assert (= (and b!2767259 res!1157697) b!2767256))

(assert (= (and b!2767256 res!1157695) b!2767258))

(assert (= (and b!2767258 res!1157693) b!2767254))

(assert (= (and b!2767254 res!1157692) b!2767257))

(declare-fun m!3190711 () Bool)

(assert (=> b!2767257 m!3190711))

(declare-fun m!3190713 () Bool)

(assert (=> b!2767256 m!3190713))

(declare-fun m!3190715 () Bool)

(assert (=> b!2767258 m!3190715))

(declare-fun m!3190717 () Bool)

(assert (=> b!2767259 m!3190717))

(declare-fun m!3190719 () Bool)

(assert (=> b!2767259 m!3190719))

(assert (=> b!2767255 m!3190717))

(assert (=> b!2767255 m!3190719))

(declare-fun m!3190721 () Bool)

(assert (=> b!2767254 m!3190721))

(assert (=> b!2767100 d!803298))

(declare-fun bm!180678 () Bool)

(declare-fun call!180683 () C!16308)

(assert (=> bm!180678 (= call!180683 (apply!7493 input!5495 0))))

(declare-fun lt!985714 () List!32064)

(declare-fun lt!985711 () List!32064)

(declare-fun call!180690 () Unit!46052)

(declare-fun c!449060 () Bool)

(declare-fun bm!180679 () Bool)

(declare-fun lt!985730 () List!32064)

(declare-fun lt!985715 () List!32064)

(assert (=> bm!180679 (= call!180690 (lemmaIsPrefixRefl!1673 (ite c!449060 lt!985714 lt!985715) (ite c!449060 lt!985730 lt!985711)))))

(declare-fun b!2767260 () Bool)

(declare-fun e!1744821 () Unit!46052)

(declare-fun Unit!46071 () Unit!46052)

(assert (=> b!2767260 (= e!1744821 Unit!46071)))

(declare-fun call!180687 () Int)

(declare-fun call!180691 () (InoxSet Context!4586))

(declare-fun bm!180680 () Bool)

(declare-fun call!180689 () List!32064)

(declare-fun call!180692 () List!32064)

(assert (=> bm!180680 (= call!180687 (findLongestMatchInnerZipperFast!33 call!180691 call!180692 (+ 0 1) call!180689 input!5495 lt!985360))))

(declare-fun b!2767261 () Bool)

(declare-fun c!449062 () Bool)

(declare-fun call!180685 () Bool)

(assert (=> b!2767261 (= c!449062 call!180685)))

(declare-fun lt!985713 () Unit!46052)

(declare-fun lt!985706 () Unit!46052)

(assert (=> b!2767261 (= lt!985713 lt!985706)))

(declare-fun lt!985700 () List!32064)

(assert (=> b!2767261 (= lt!985700 Nil!31964)))

(declare-fun call!180688 () Unit!46052)

(assert (=> b!2767261 (= lt!985706 call!180688)))

(declare-fun call!180684 () List!32064)

(assert (=> b!2767261 (= lt!985700 call!180684)))

(declare-fun lt!985707 () Unit!46052)

(declare-fun lt!985703 () Unit!46052)

(assert (=> b!2767261 (= lt!985707 lt!985703)))

(declare-fun call!180686 () Bool)

(assert (=> b!2767261 call!180686))

(assert (=> b!2767261 (= lt!985703 call!180690)))

(assert (=> b!2767261 (= lt!985730 call!180684)))

(assert (=> b!2767261 (= lt!985714 call!180684)))

(declare-fun e!1744823 () Int)

(declare-fun e!1744819 () Int)

(assert (=> b!2767261 (= e!1744823 e!1744819)))

(declare-fun b!2767262 () Bool)

(declare-fun c!449061 () Bool)

(assert (=> b!2767262 (= c!449061 call!180685)))

(declare-fun lt!985725 () Unit!46052)

(declare-fun lt!985739 () Unit!46052)

(assert (=> b!2767262 (= lt!985725 lt!985739)))

(declare-fun lt!985736 () C!16308)

(declare-fun lt!985717 () List!32064)

(declare-fun lt!985718 () List!32064)

(assert (=> b!2767262 (= (++!7910 (++!7910 Nil!31964 (Cons!31964 lt!985736 Nil!31964)) lt!985717) lt!985718)))

(assert (=> b!2767262 (= lt!985739 (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985736 lt!985717 lt!985718))))

(assert (=> b!2767262 (= lt!985718 call!180684)))

(assert (=> b!2767262 (= lt!985717 (tail!4382 lt!985390))))

(assert (=> b!2767262 (= lt!985736 (apply!7493 input!5495 0))))

(declare-fun lt!985705 () Unit!46052)

(declare-fun lt!985728 () Unit!46052)

(assert (=> b!2767262 (= lt!985705 lt!985728)))

(declare-fun lt!985699 () List!32064)

(assert (=> b!2767262 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 (getSuffix!1231 lt!985699 Nil!31964)) Nil!31964)) lt!985699)))

(assert (=> b!2767262 (= lt!985728 (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985699))))

(assert (=> b!2767262 (= lt!985699 call!180684)))

(declare-fun lt!985740 () Unit!46052)

(assert (=> b!2767262 (= lt!985740 e!1744821)))

(declare-fun c!449064 () Bool)

(assert (=> b!2767262 (= c!449064 (= (size!24737 Nil!31964) (size!24738 input!5495)))))

(declare-fun lt!985726 () Unit!46052)

(declare-fun lt!985701 () Unit!46052)

(assert (=> b!2767262 (= lt!985726 lt!985701)))

(declare-fun lt!985708 () List!32064)

(assert (=> b!2767262 (<= (size!24737 Nil!31964) (size!24737 lt!985708))))

(assert (=> b!2767262 (= lt!985701 (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985708))))

(assert (=> b!2767262 (= lt!985708 call!180684)))

(declare-fun lt!985731 () Unit!46052)

(declare-fun lt!985720 () Unit!46052)

(assert (=> b!2767262 (= lt!985731 lt!985720)))

(declare-fun lt!985734 () List!32064)

(assert (=> b!2767262 (= (head!6144 (drop!1702 lt!985734 0)) (apply!7494 lt!985734 0))))

(assert (=> b!2767262 (= lt!985720 (lemmaDropApply!908 lt!985734 0))))

(assert (=> b!2767262 (= lt!985734 call!180684)))

(declare-fun lt!985738 () Unit!46052)

(declare-fun lt!985722 () Unit!46052)

(assert (=> b!2767262 (= lt!985738 lt!985722)))

(declare-fun lt!985716 () List!32064)

(declare-fun lt!985719 () List!32064)

(assert (=> b!2767262 (and (= lt!985716 Nil!31964) (= lt!985719 lt!985390))))

(assert (=> b!2767262 (= lt!985722 (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985716 lt!985719 Nil!31964 lt!985390))))

(declare-fun lt!985704 () tuple2!32092)

(assert (=> b!2767262 (= lt!985719 (list!12066 (_2!18913 lt!985704)))))

(assert (=> b!2767262 (= lt!985716 (list!12066 (_1!18913 lt!985704)))))

(assert (=> b!2767262 (= lt!985704 (splitAt!109 input!5495 0))))

(declare-fun e!1744820 () Int)

(assert (=> b!2767262 (= e!1744823 e!1744820)))

(declare-fun b!2767263 () Bool)

(assert (=> b!2767263 (= e!1744819 0)))

(declare-fun b!2767264 () Bool)

(declare-fun e!1744822 () Int)

(assert (=> b!2767264 (= e!1744822 e!1744823)))

(assert (=> b!2767264 (= c!449060 (= 0 lt!985360))))

(declare-fun b!2767265 () Bool)

(declare-fun lt!985727 () Int)

(assert (=> b!2767265 (= e!1744820 (ite (= lt!985727 0) 0 lt!985727))))

(assert (=> b!2767265 (= lt!985727 call!180687)))

(declare-fun bm!180681 () Bool)

(assert (=> bm!180681 (= call!180686 (isPrefix!2549 (ite c!449060 lt!985714 lt!985715) (ite c!449060 lt!985730 lt!985711)))))

(declare-fun b!2767266 () Bool)

(assert (=> b!2767266 (= e!1744820 call!180687)))

(declare-fun bm!180682 () Bool)

(assert (=> bm!180682 (= call!180692 (++!7910 Nil!31964 (Cons!31964 call!180683 Nil!31964)))))

(declare-fun lt!985709 () Int)

(declare-fun d!803300 () Bool)

(assert (=> d!803300 (= (size!24737 (_1!18912 (findLongestMatchInnerZipper!19 z!3597 Nil!31964 0 lt!985390 (list!12066 input!5495) lt!985360))) lt!985709)))

(assert (=> d!803300 (= lt!985709 e!1744822)))

(declare-fun c!449063 () Bool)

(assert (=> d!803300 (= c!449063 (lostCauseZipper!435 z!3597))))

(declare-fun lt!985710 () Unit!46052)

(declare-fun Unit!46072 () Unit!46052)

(assert (=> d!803300 (= lt!985710 Unit!46072)))

(assert (=> d!803300 (= (getSuffix!1231 (list!12066 input!5495) Nil!31964) lt!985390)))

(declare-fun lt!985721 () Unit!46052)

(declare-fun lt!985735 () Unit!46052)

(assert (=> d!803300 (= lt!985721 lt!985735)))

(declare-fun lt!985712 () List!32064)

(assert (=> d!803300 (= lt!985390 lt!985712)))

(assert (=> d!803300 (= lt!985735 (lemmaSamePrefixThenSameSuffix!1133 Nil!31964 lt!985390 Nil!31964 lt!985712 (list!12066 input!5495)))))

(assert (=> d!803300 (= lt!985712 (getSuffix!1231 (list!12066 input!5495) Nil!31964))))

(declare-fun lt!985737 () Unit!46052)

(declare-fun lt!985733 () Unit!46052)

(assert (=> d!803300 (= lt!985737 lt!985733)))

(assert (=> d!803300 (isPrefix!2549 Nil!31964 (++!7910 Nil!31964 lt!985390))))

(assert (=> d!803300 (= lt!985733 (lemmaConcatTwoListThenFirstIsPrefix!1659 Nil!31964 lt!985390))))

(assert (=> d!803300 (= (++!7910 Nil!31964 lt!985390) (list!12066 input!5495))))

(assert (=> d!803300 (= (findLongestMatchInnerZipperFast!33 z!3597 Nil!31964 0 lt!985390 input!5495 lt!985360) lt!985709)))

(declare-fun b!2767267 () Bool)

(assert (=> b!2767267 (= e!1744822 0)))

(declare-fun b!2767268 () Bool)

(assert (=> b!2767268 (= e!1744819 0)))

(declare-fun bm!180683 () Bool)

(assert (=> bm!180683 (= call!180691 (derivationStepZipper!363 z!3597 call!180683))))

(declare-fun bm!180684 () Bool)

(assert (=> bm!180684 (= call!180685 (nullableZipper!628 z!3597))))

(declare-fun bm!180685 () Bool)

(assert (=> bm!180685 (= call!180689 (tail!4382 lt!985390))))

(declare-fun b!2767269 () Bool)

(declare-fun Unit!46073 () Unit!46052)

(assert (=> b!2767269 (= e!1744821 Unit!46073)))

(assert (=> b!2767269 (= lt!985715 call!180684)))

(assert (=> b!2767269 (= lt!985711 call!180684)))

(declare-fun lt!985732 () Unit!46052)

(assert (=> b!2767269 (= lt!985732 call!180690)))

(assert (=> b!2767269 call!180686))

(declare-fun lt!985723 () Unit!46052)

(assert (=> b!2767269 (= lt!985723 lt!985732)))

(declare-fun lt!985724 () List!32064)

(assert (=> b!2767269 (= lt!985724 call!180684)))

(declare-fun lt!985729 () Unit!46052)

(assert (=> b!2767269 (= lt!985729 call!180688)))

(assert (=> b!2767269 (= lt!985724 Nil!31964)))

(declare-fun lt!985702 () Unit!46052)

(assert (=> b!2767269 (= lt!985702 lt!985729)))

(assert (=> b!2767269 false))

(declare-fun bm!180686 () Bool)

(assert (=> bm!180686 (= call!180688 (lemmaIsPrefixSameLengthThenSameList!456 (ite c!449060 lt!985700 lt!985724) Nil!31964 call!180684))))

(declare-fun bm!180687 () Bool)

(assert (=> bm!180687 (= call!180684 (list!12066 input!5495))))

(assert (= (and d!803300 c!449063) b!2767267))

(assert (= (and d!803300 (not c!449063)) b!2767264))

(assert (= (and b!2767264 c!449060) b!2767261))

(assert (= (and b!2767264 (not c!449060)) b!2767262))

(assert (= (and b!2767261 c!449062) b!2767268))

(assert (= (and b!2767261 (not c!449062)) b!2767263))

(assert (= (and b!2767262 c!449064) b!2767269))

(assert (= (and b!2767262 (not c!449064)) b!2767260))

(assert (= (and b!2767262 c!449061) b!2767265))

(assert (= (and b!2767262 (not c!449061)) b!2767266))

(assert (= (or b!2767265 b!2767266) bm!180678))

(assert (= (or b!2767265 b!2767266) bm!180685))

(assert (= (or b!2767265 b!2767266) bm!180682))

(assert (= (or b!2767265 b!2767266) bm!180683))

(assert (= (or b!2767265 b!2767266) bm!180680))

(assert (= (or b!2767261 b!2767269) bm!180681))

(assert (= (or b!2767261 b!2767269) bm!180679))

(assert (= (or b!2767261 b!2767262 b!2767269) bm!180687))

(assert (= (or b!2767261 b!2767262) bm!180684))

(assert (= (or b!2767261 b!2767269) bm!180686))

(declare-fun m!3190723 () Bool)

(assert (=> b!2767262 m!3190723))

(assert (=> b!2767262 m!3190393))

(declare-fun m!3190725 () Bool)

(assert (=> b!2767262 m!3190725))

(assert (=> b!2767262 m!3190723))

(declare-fun m!3190727 () Bool)

(assert (=> b!2767262 m!3190727))

(declare-fun m!3190729 () Bool)

(assert (=> b!2767262 m!3190729))

(declare-fun m!3190731 () Bool)

(assert (=> b!2767262 m!3190731))

(assert (=> b!2767262 m!3190381))

(declare-fun m!3190733 () Bool)

(assert (=> b!2767262 m!3190733))

(declare-fun m!3190735 () Bool)

(assert (=> b!2767262 m!3190735))

(declare-fun m!3190737 () Bool)

(assert (=> b!2767262 m!3190737))

(declare-fun m!3190739 () Bool)

(assert (=> b!2767262 m!3190739))

(declare-fun m!3190741 () Bool)

(assert (=> b!2767262 m!3190741))

(assert (=> b!2767262 m!3190729))

(declare-fun m!3190743 () Bool)

(assert (=> b!2767262 m!3190743))

(declare-fun m!3190745 () Bool)

(assert (=> b!2767262 m!3190745))

(declare-fun m!3190747 () Bool)

(assert (=> b!2767262 m!3190747))

(assert (=> b!2767262 m!3190411))

(assert (=> b!2767262 m!3190397))

(declare-fun m!3190749 () Bool)

(assert (=> b!2767262 m!3190749))

(declare-fun m!3190751 () Bool)

(assert (=> b!2767262 m!3190751))

(assert (=> b!2767262 m!3190737))

(assert (=> b!2767262 m!3190743))

(declare-fun m!3190753 () Bool)

(assert (=> b!2767262 m!3190753))

(declare-fun m!3190755 () Bool)

(assert (=> b!2767262 m!3190755))

(assert (=> b!2767262 m!3190317))

(assert (=> bm!180687 m!3190315))

(assert (=> bm!180684 m!3190359))

(declare-fun m!3190757 () Bool)

(assert (=> bm!180681 m!3190757))

(declare-fun m!3190759 () Bool)

(assert (=> bm!180683 m!3190759))

(declare-fun m!3190761 () Bool)

(assert (=> bm!180682 m!3190761))

(declare-fun m!3190763 () Bool)

(assert (=> bm!180686 m!3190763))

(declare-fun m!3190765 () Bool)

(assert (=> bm!180680 m!3190765))

(assert (=> bm!180678 m!3190411))

(declare-fun m!3190767 () Bool)

(assert (=> bm!180679 m!3190767))

(assert (=> bm!180685 m!3190393))

(assert (=> d!803300 m!3190313))

(assert (=> d!803300 m!3190339))

(assert (=> d!803300 m!3190313))

(assert (=> d!803300 m!3190321))

(assert (=> d!803300 m!3190315))

(declare-fun m!3190769 () Bool)

(assert (=> d!803300 m!3190769))

(declare-fun m!3190771 () Bool)

(assert (=> d!803300 m!3190771))

(assert (=> d!803300 m!3190337))

(assert (=> d!803300 m!3190315))

(declare-fun m!3190773 () Bool)

(assert (=> d!803300 m!3190773))

(assert (=> d!803300 m!3190315))

(declare-fun m!3190775 () Bool)

(assert (=> d!803300 m!3190775))

(assert (=> d!803300 m!3190315))

(assert (=> b!2767100 d!803300))

(declare-fun d!803302 () Bool)

(declare-fun lt!985743 () List!32064)

(assert (=> d!803302 (= (++!7910 Nil!31964 lt!985743) lt!985390)))

(declare-fun e!1744826 () List!32064)

(assert (=> d!803302 (= lt!985743 e!1744826)))

(declare-fun c!449067 () Bool)

(assert (=> d!803302 (= c!449067 ((_ is Cons!31964) Nil!31964))))

(assert (=> d!803302 (>= (size!24737 lt!985390) (size!24737 Nil!31964))))

(assert (=> d!803302 (= (getSuffix!1231 lt!985390 Nil!31964) lt!985743)))

(declare-fun b!2767274 () Bool)

(assert (=> b!2767274 (= e!1744826 (getSuffix!1231 (tail!4382 lt!985390) (t!228184 Nil!31964)))))

(declare-fun b!2767275 () Bool)

(assert (=> b!2767275 (= e!1744826 lt!985390)))

(assert (= (and d!803302 c!449067) b!2767274))

(assert (= (and d!803302 (not c!449067)) b!2767275))

(declare-fun m!3190777 () Bool)

(assert (=> d!803302 m!3190777))

(assert (=> d!803302 m!3190383))

(assert (=> d!803302 m!3190397))

(assert (=> b!2767274 m!3190393))

(assert (=> b!2767274 m!3190393))

(declare-fun m!3190779 () Bool)

(assert (=> b!2767274 m!3190779))

(assert (=> b!2767100 d!803302))

(declare-fun d!803304 () Bool)

(assert (=> d!803304 (= (list!12066 (_1!18913 lt!985333)) (list!12067 (c!449005 (_1!18913 lt!985333))))))

(declare-fun bs!500371 () Bool)

(assert (= bs!500371 d!803304))

(declare-fun m!3190781 () Bool)

(assert (=> bs!500371 m!3190781))

(assert (=> b!2767100 d!803304))

(declare-fun d!803306 () Bool)

(assert (=> d!803306 (= (valid!2929 (_2!18909 lt!985336)) (validCacheMapUp!361 (cache!3807 (_2!18909 lt!985336))))))

(declare-fun bs!500372 () Bool)

(assert (= bs!500372 d!803306))

(declare-fun m!3190783 () Bool)

(assert (=> bs!500372 m!3190783))

(assert (=> b!2767100 d!803306))

(declare-fun d!803308 () Bool)

(assert (=> d!803308 (isPrefix!2549 Nil!31964 (++!7910 Nil!31964 lt!985390))))

(declare-fun lt!985746 () Unit!46052)

(declare-fun choose!16241 (List!32064 List!32064) Unit!46052)

(assert (=> d!803308 (= lt!985746 (choose!16241 Nil!31964 lt!985390))))

(assert (=> d!803308 (= (lemmaConcatTwoListThenFirstIsPrefix!1659 Nil!31964 lt!985390) lt!985746)))

(declare-fun bs!500373 () Bool)

(assert (= bs!500373 d!803308))

(assert (=> bs!500373 m!3190313))

(assert (=> bs!500373 m!3190313))

(assert (=> bs!500373 m!3190339))

(declare-fun m!3190785 () Bool)

(assert (=> bs!500373 m!3190785))

(assert (=> b!2767100 d!803308))

(declare-fun d!803310 () Bool)

(declare-fun e!1744829 () Bool)

(assert (=> d!803310 e!1744829))

(declare-fun res!1157702 () Bool)

(assert (=> d!803310 (=> (not res!1157702) (not e!1744829))))

(declare-fun lt!985751 () tuple2!32092)

(assert (=> d!803310 (= res!1157702 (isBalanced!3035 (c!449005 (_1!18913 lt!985751))))))

(declare-datatypes ((tuple2!32094 0))(
  ( (tuple2!32095 (_1!18914 Conc!9957) (_2!18914 Conc!9957)) )
))
(declare-fun lt!985752 () tuple2!32094)

(assert (=> d!803310 (= lt!985751 (tuple2!32093 (BalanceConc!19529 (_1!18914 lt!985752)) (BalanceConc!19529 (_2!18914 lt!985752))))))

(declare-fun splitAt!110 (Conc!9957 Int) tuple2!32094)

(assert (=> d!803310 (= lt!985752 (splitAt!110 (c!449005 input!5495) (_1!18909 lt!985334)))))

(assert (=> d!803310 (isBalanced!3035 (c!449005 input!5495))))

(assert (=> d!803310 (= (splitAt!109 input!5495 (_1!18909 lt!985334)) lt!985751)))

(declare-fun b!2767280 () Bool)

(declare-fun res!1157703 () Bool)

(assert (=> b!2767280 (=> (not res!1157703) (not e!1744829))))

(assert (=> b!2767280 (= res!1157703 (isBalanced!3035 (c!449005 (_2!18913 lt!985751))))))

(declare-fun b!2767281 () Bool)

(declare-fun splitAtIndex!50 (List!32064 Int) tuple2!32090)

(assert (=> b!2767281 (= e!1744829 (= (tuple2!32091 (list!12066 (_1!18913 lt!985751)) (list!12066 (_2!18913 lt!985751))) (splitAtIndex!50 (list!12066 input!5495) (_1!18909 lt!985334))))))

(assert (= (and d!803310 res!1157702) b!2767280))

(assert (= (and b!2767280 res!1157703) b!2767281))

(declare-fun m!3190787 () Bool)

(assert (=> d!803310 m!3190787))

(declare-fun m!3190789 () Bool)

(assert (=> d!803310 m!3190789))

(assert (=> d!803310 m!3190349))

(declare-fun m!3190791 () Bool)

(assert (=> b!2767280 m!3190791))

(declare-fun m!3190793 () Bool)

(assert (=> b!2767281 m!3190793))

(declare-fun m!3190795 () Bool)

(assert (=> b!2767281 m!3190795))

(assert (=> b!2767281 m!3190315))

(assert (=> b!2767281 m!3190315))

(declare-fun m!3190797 () Bool)

(assert (=> b!2767281 m!3190797))

(assert (=> b!2767100 d!803310))

(declare-fun d!803312 () Bool)

(assert (=> d!803312 (= (valid!2928 (_3!2864 lt!985334)) (validCacheMapDown!392 (cache!3808 (_3!2864 lt!985334))))))

(declare-fun bs!500374 () Bool)

(assert (= bs!500374 d!803312))

(declare-fun m!3190799 () Bool)

(assert (=> bs!500374 m!3190799))

(assert (=> b!2767084 d!803312))

(declare-fun d!803314 () Bool)

(assert (=> d!803314 (= (array_inv!4266 (_keys!4059 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) (bvsge (size!24735 (_keys!4059 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2767065 d!803314))

(declare-fun d!803316 () Bool)

(assert (=> d!803316 (= (array_inv!4267 (_values!4040 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) (bvsge (size!24736 (_values!4040 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2767065 d!803316))

(declare-fun b!2767284 () Bool)

(declare-fun res!1157705 () Bool)

(declare-fun e!1744830 () Bool)

(assert (=> b!2767284 (=> (not res!1157705) (not e!1744830))))

(declare-fun lt!985753 () List!32064)

(assert (=> b!2767284 (= res!1157705 (= (size!24737 lt!985753) (+ (size!24737 Nil!31964) (size!24737 (Cons!31964 lt!985363 Nil!31964)))))))

(declare-fun b!2767282 () Bool)

(declare-fun e!1744831 () List!32064)

(assert (=> b!2767282 (= e!1744831 (Cons!31964 lt!985363 Nil!31964))))

(declare-fun d!803318 () Bool)

(assert (=> d!803318 e!1744830))

(declare-fun res!1157704 () Bool)

(assert (=> d!803318 (=> (not res!1157704) (not e!1744830))))

(assert (=> d!803318 (= res!1157704 (= (content!4499 lt!985753) ((_ map or) (content!4499 Nil!31964) (content!4499 (Cons!31964 lt!985363 Nil!31964)))))))

(assert (=> d!803318 (= lt!985753 e!1744831)))

(declare-fun c!449068 () Bool)

(assert (=> d!803318 (= c!449068 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803318 (= (++!7910 Nil!31964 (Cons!31964 lt!985363 Nil!31964)) lt!985753)))

(declare-fun b!2767285 () Bool)

(assert (=> b!2767285 (= e!1744830 (or (not (= (Cons!31964 lt!985363 Nil!31964) Nil!31964)) (= lt!985753 Nil!31964)))))

(declare-fun b!2767283 () Bool)

(assert (=> b!2767283 (= e!1744831 (Cons!31964 (h!37384 Nil!31964) (++!7910 (t!228184 Nil!31964) (Cons!31964 lt!985363 Nil!31964))))))

(assert (= (and d!803318 c!449068) b!2767282))

(assert (= (and d!803318 (not c!449068)) b!2767283))

(assert (= (and d!803318 res!1157704) b!2767284))

(assert (= (and b!2767284 res!1157705) b!2767285))

(declare-fun m!3190801 () Bool)

(assert (=> b!2767284 m!3190801))

(assert (=> b!2767284 m!3190397))

(declare-fun m!3190803 () Bool)

(assert (=> b!2767284 m!3190803))

(declare-fun m!3190805 () Bool)

(assert (=> d!803318 m!3190805))

(assert (=> d!803318 m!3190695))

(declare-fun m!3190807 () Bool)

(assert (=> d!803318 m!3190807))

(declare-fun m!3190809 () Bool)

(assert (=> b!2767283 m!3190809))

(assert (=> b!2767082 d!803318))

(declare-fun b!2767288 () Bool)

(declare-fun res!1157707 () Bool)

(declare-fun e!1744832 () Bool)

(assert (=> b!2767288 (=> (not res!1157707) (not e!1744832))))

(declare-fun lt!985754 () List!32064)

(assert (=> b!2767288 (= res!1157707 (= (size!24737 lt!985754) (+ (size!24737 lt!985368) (size!24737 lt!985387))))))

(declare-fun b!2767286 () Bool)

(declare-fun e!1744833 () List!32064)

(assert (=> b!2767286 (= e!1744833 lt!985387)))

(declare-fun d!803320 () Bool)

(assert (=> d!803320 e!1744832))

(declare-fun res!1157706 () Bool)

(assert (=> d!803320 (=> (not res!1157706) (not e!1744832))))

(assert (=> d!803320 (= res!1157706 (= (content!4499 lt!985754) ((_ map or) (content!4499 lt!985368) (content!4499 lt!985387))))))

(assert (=> d!803320 (= lt!985754 e!1744833)))

(declare-fun c!449069 () Bool)

(assert (=> d!803320 (= c!449069 ((_ is Nil!31964) lt!985368))))

(assert (=> d!803320 (= (++!7910 lt!985368 lt!985387) lt!985754)))

(declare-fun b!2767289 () Bool)

(assert (=> b!2767289 (= e!1744832 (or (not (= lt!985387 Nil!31964)) (= lt!985754 lt!985368)))))

(declare-fun b!2767287 () Bool)

(assert (=> b!2767287 (= e!1744833 (Cons!31964 (h!37384 lt!985368) (++!7910 (t!228184 lt!985368) lt!985387)))))

(assert (= (and d!803320 c!449069) b!2767286))

(assert (= (and d!803320 (not c!449069)) b!2767287))

(assert (= (and d!803320 res!1157706) b!2767288))

(assert (= (and b!2767288 res!1157707) b!2767289))

(declare-fun m!3190811 () Bool)

(assert (=> b!2767288 m!3190811))

(declare-fun m!3190813 () Bool)

(assert (=> b!2767288 m!3190813))

(declare-fun m!3190815 () Bool)

(assert (=> b!2767288 m!3190815))

(declare-fun m!3190817 () Bool)

(assert (=> d!803320 m!3190817))

(declare-fun m!3190819 () Bool)

(assert (=> d!803320 m!3190819))

(declare-fun m!3190821 () Bool)

(assert (=> d!803320 m!3190821))

(declare-fun m!3190823 () Bool)

(assert (=> b!2767287 m!3190823))

(assert (=> b!2767082 d!803320))

(declare-fun d!803322 () Bool)

(assert (=> d!803322 (= (head!6144 lt!985390) (h!37384 lt!985390))))

(assert (=> b!2767082 d!803322))

(declare-fun d!803324 () Bool)

(assert (=> d!803324 (<= (size!24737 Nil!31964) (size!24737 lt!985390))))

(declare-fun lt!985757 () Unit!46052)

(declare-fun choose!16242 (List!32064 List!32064) Unit!46052)

(assert (=> d!803324 (= lt!985757 (choose!16242 Nil!31964 lt!985390))))

(assert (=> d!803324 (isPrefix!2549 Nil!31964 lt!985390)))

(assert (=> d!803324 (= (lemmaIsPrefixThenSmallerEqSize!256 Nil!31964 lt!985390) lt!985757)))

(declare-fun bs!500375 () Bool)

(assert (= bs!500375 d!803324))

(assert (=> bs!500375 m!3190397))

(assert (=> bs!500375 m!3190383))

(declare-fun m!3190825 () Bool)

(assert (=> bs!500375 m!3190825))

(assert (=> bs!500375 m!3190709))

(assert (=> b!2767082 d!803324))

(declare-fun b!2767293 () Bool)

(declare-fun e!1744836 () Bool)

(assert (=> b!2767293 (= e!1744836 (>= (size!24737 lt!985390) (size!24737 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)))))))

(declare-fun b!2767290 () Bool)

(declare-fun e!1744835 () Bool)

(declare-fun e!1744834 () Bool)

(assert (=> b!2767290 (= e!1744835 e!1744834)))

(declare-fun res!1157710 () Bool)

(assert (=> b!2767290 (=> (not res!1157710) (not e!1744834))))

(assert (=> b!2767290 (= res!1157710 (not ((_ is Nil!31964) lt!985390)))))

(declare-fun b!2767292 () Bool)

(assert (=> b!2767292 (= e!1744834 (isPrefix!2549 (tail!4382 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964))) (tail!4382 lt!985390)))))

(declare-fun d!803326 () Bool)

(assert (=> d!803326 e!1744836))

(declare-fun res!1157711 () Bool)

(assert (=> d!803326 (=> res!1157711 e!1744836)))

(declare-fun lt!985758 () Bool)

(assert (=> d!803326 (= res!1157711 (not lt!985758))))

(assert (=> d!803326 (= lt!985758 e!1744835)))

(declare-fun res!1157708 () Bool)

(assert (=> d!803326 (=> res!1157708 e!1744835)))

(assert (=> d!803326 (= res!1157708 ((_ is Nil!31964) (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964))))))

(assert (=> d!803326 (= (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)) lt!985390) lt!985758)))

(declare-fun b!2767291 () Bool)

(declare-fun res!1157709 () Bool)

(assert (=> b!2767291 (=> (not res!1157709) (not e!1744834))))

(assert (=> b!2767291 (= res!1157709 (= (head!6144 (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964))) (head!6144 lt!985390)))))

(assert (= (and d!803326 (not res!1157708)) b!2767290))

(assert (= (and b!2767290 res!1157710) b!2767291))

(assert (= (and b!2767291 res!1157709) b!2767292))

(assert (= (and d!803326 (not res!1157711)) b!2767293))

(assert (=> b!2767293 m!3190383))

(assert (=> b!2767293 m!3190391))

(declare-fun m!3190827 () Bool)

(assert (=> b!2767293 m!3190827))

(assert (=> b!2767292 m!3190391))

(declare-fun m!3190829 () Bool)

(assert (=> b!2767292 m!3190829))

(assert (=> b!2767292 m!3190393))

(assert (=> b!2767292 m!3190829))

(assert (=> b!2767292 m!3190393))

(declare-fun m!3190831 () Bool)

(assert (=> b!2767292 m!3190831))

(assert (=> b!2767291 m!3190391))

(declare-fun m!3190833 () Bool)

(assert (=> b!2767291 m!3190833))

(assert (=> b!2767291 m!3190447))

(assert (=> b!2767082 d!803326))

(declare-fun d!803328 () Bool)

(declare-fun lt!985761 () Int)

(assert (=> d!803328 (>= lt!985761 0)))

(declare-fun e!1744839 () Int)

(assert (=> d!803328 (= lt!985761 e!1744839)))

(declare-fun c!449072 () Bool)

(assert (=> d!803328 (= c!449072 ((_ is Nil!31964) lt!985390))))

(assert (=> d!803328 (= (size!24737 lt!985390) lt!985761)))

(declare-fun b!2767298 () Bool)

(assert (=> b!2767298 (= e!1744839 0)))

(declare-fun b!2767299 () Bool)

(assert (=> b!2767299 (= e!1744839 (+ 1 (size!24737 (t!228184 lt!985390))))))

(assert (= (and d!803328 c!449072) b!2767298))

(assert (= (and d!803328 (not c!449072)) b!2767299))

(declare-fun m!3190835 () Bool)

(assert (=> b!2767299 m!3190835))

(assert (=> b!2767082 d!803328))

(declare-fun d!803330 () Bool)

(declare-fun lt!985762 () Int)

(assert (=> d!803330 (>= lt!985762 0)))

(declare-fun e!1744840 () Int)

(assert (=> d!803330 (= lt!985762 e!1744840)))

(declare-fun c!449073 () Bool)

(assert (=> d!803330 (= c!449073 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803330 (= (size!24737 Nil!31964) lt!985762)))

(declare-fun b!2767300 () Bool)

(assert (=> b!2767300 (= e!1744840 0)))

(declare-fun b!2767301 () Bool)

(assert (=> b!2767301 (= e!1744840 (+ 1 (size!24737 (t!228184 Nil!31964))))))

(assert (= (and d!803330 c!449073) b!2767300))

(assert (= (and d!803330 (not c!449073)) b!2767301))

(declare-fun m!3190837 () Bool)

(assert (=> b!2767301 m!3190837))

(assert (=> b!2767082 d!803330))

(declare-fun d!803332 () Bool)

(assert (=> d!803332 (= (head!6144 lt!985349) (h!37384 lt!985349))))

(assert (=> b!2767082 d!803332))

(declare-fun d!803334 () Bool)

(assert (=> d!803334 (isPrefix!2549 (++!7910 Nil!31964 (Cons!31964 (head!6144 (getSuffix!1231 lt!985390 Nil!31964)) Nil!31964)) lt!985390)))

(declare-fun lt!985765 () Unit!46052)

(declare-fun choose!16243 (List!32064 List!32064) Unit!46052)

(assert (=> d!803334 (= lt!985765 (choose!16243 Nil!31964 lt!985390))))

(assert (=> d!803334 (isPrefix!2549 Nil!31964 lt!985390)))

(assert (=> d!803334 (= (lemmaAddHeadSuffixToPrefixStillPrefix!453 Nil!31964 lt!985390) lt!985765)))

(declare-fun bs!500376 () Bool)

(assert (= bs!500376 d!803334))

(assert (=> bs!500376 m!3190651))

(assert (=> bs!500376 m!3190655))

(assert (=> bs!500376 m!3190341))

(assert (=> bs!500376 m!3190653))

(assert (=> bs!500376 m!3190651))

(assert (=> bs!500376 m!3190341))

(declare-fun m!3190839 () Bool)

(assert (=> bs!500376 m!3190839))

(assert (=> bs!500376 m!3190709))

(assert (=> b!2767082 d!803334))

(declare-fun b!2767304 () Bool)

(declare-fun res!1157713 () Bool)

(declare-fun e!1744841 () Bool)

(assert (=> b!2767304 (=> (not res!1157713) (not e!1744841))))

(declare-fun lt!985766 () List!32064)

(assert (=> b!2767304 (= res!1157713 (= (size!24737 lt!985766) (+ (size!24737 Nil!31964) (size!24737 (Cons!31964 (head!6144 lt!985349) Nil!31964)))))))

(declare-fun b!2767302 () Bool)

(declare-fun e!1744842 () List!32064)

(assert (=> b!2767302 (= e!1744842 (Cons!31964 (head!6144 lt!985349) Nil!31964))))

(declare-fun d!803336 () Bool)

(assert (=> d!803336 e!1744841))

(declare-fun res!1157712 () Bool)

(assert (=> d!803336 (=> (not res!1157712) (not e!1744841))))

(assert (=> d!803336 (= res!1157712 (= (content!4499 lt!985766) ((_ map or) (content!4499 Nil!31964) (content!4499 (Cons!31964 (head!6144 lt!985349) Nil!31964)))))))

(assert (=> d!803336 (= lt!985766 e!1744842)))

(declare-fun c!449074 () Bool)

(assert (=> d!803336 (= c!449074 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803336 (= (++!7910 Nil!31964 (Cons!31964 (head!6144 lt!985349) Nil!31964)) lt!985766)))

(declare-fun b!2767305 () Bool)

(assert (=> b!2767305 (= e!1744841 (or (not (= (Cons!31964 (head!6144 lt!985349) Nil!31964) Nil!31964)) (= lt!985766 Nil!31964)))))

(declare-fun b!2767303 () Bool)

(assert (=> b!2767303 (= e!1744842 (Cons!31964 (h!37384 Nil!31964) (++!7910 (t!228184 Nil!31964) (Cons!31964 (head!6144 lt!985349) Nil!31964))))))

(assert (= (and d!803336 c!449074) b!2767302))

(assert (= (and d!803336 (not c!449074)) b!2767303))

(assert (= (and d!803336 res!1157712) b!2767304))

(assert (= (and b!2767304 res!1157713) b!2767305))

(declare-fun m!3190841 () Bool)

(assert (=> b!2767304 m!3190841))

(assert (=> b!2767304 m!3190397))

(declare-fun m!3190843 () Bool)

(assert (=> b!2767304 m!3190843))

(declare-fun m!3190845 () Bool)

(assert (=> d!803336 m!3190845))

(assert (=> d!803336 m!3190695))

(declare-fun m!3190847 () Bool)

(assert (=> d!803336 m!3190847))

(declare-fun m!3190849 () Bool)

(assert (=> b!2767303 m!3190849))

(assert (=> b!2767082 d!803336))

(declare-fun d!803338 () Bool)

(assert (=> d!803338 (= (++!7910 (++!7910 Nil!31964 (Cons!31964 lt!985363 Nil!31964)) lt!985387) lt!985390)))

(declare-fun lt!985769 () Unit!46052)

(declare-fun choose!16244 (List!32064 C!16308 List!32064 List!32064) Unit!46052)

(assert (=> d!803338 (= lt!985769 (choose!16244 Nil!31964 lt!985363 lt!985387 lt!985390))))

(assert (=> d!803338 (= (++!7910 Nil!31964 (Cons!31964 lt!985363 lt!985387)) lt!985390)))

(assert (=> d!803338 (= (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985363 lt!985387 lt!985390) lt!985769)))

(declare-fun bs!500377 () Bool)

(assert (= bs!500377 d!803338))

(assert (=> bs!500377 m!3190443))

(assert (=> bs!500377 m!3190443))

(declare-fun m!3190851 () Bool)

(assert (=> bs!500377 m!3190851))

(declare-fun m!3190853 () Bool)

(assert (=> bs!500377 m!3190853))

(declare-fun m!3190855 () Bool)

(assert (=> bs!500377 m!3190855))

(assert (=> b!2767082 d!803338))

(declare-fun d!803340 () Bool)

(assert (=> d!803340 (= (tail!4382 lt!985390) (t!228184 lt!985390))))

(assert (=> b!2767082 d!803340))

(assert (=> bm!180590 d!803262))

(declare-fun d!803342 () Bool)

(declare-fun e!1744849 () Bool)

(assert (=> d!803342 e!1744849))

(declare-fun res!1157715 () Bool)

(assert (=> d!803342 (=> (not res!1157715) (not e!1744849))))

(declare-fun lt!985786 () tuple2!32090)

(assert (=> d!803342 (= res!1157715 (= (++!7910 (_1!18912 lt!985786) (_2!18912 lt!985786)) lt!985390))))

(declare-fun e!1744847 () tuple2!32090)

(assert (=> d!803342 (= lt!985786 e!1744847)))

(declare-fun c!449075 () Bool)

(assert (=> d!803342 (= c!449075 (lostCauseZipper!435 call!180598))))

(declare-fun lt!985794 () Unit!46052)

(declare-fun Unit!46074 () Unit!46052)

(assert (=> d!803342 (= lt!985794 Unit!46074)))

(assert (=> d!803342 (= (getSuffix!1231 lt!985390 lt!985368) lt!985387)))

(declare-fun lt!985790 () Unit!46052)

(declare-fun lt!985795 () Unit!46052)

(assert (=> d!803342 (= lt!985790 lt!985795)))

(declare-fun lt!985772 () List!32064)

(assert (=> d!803342 (= lt!985387 lt!985772)))

(assert (=> d!803342 (= lt!985795 (lemmaSamePrefixThenSameSuffix!1133 lt!985368 lt!985387 lt!985368 lt!985772 lt!985390))))

(assert (=> d!803342 (= lt!985772 (getSuffix!1231 lt!985390 lt!985368))))

(declare-fun lt!985775 () Unit!46052)

(declare-fun lt!985777 () Unit!46052)

(assert (=> d!803342 (= lt!985775 lt!985777)))

(assert (=> d!803342 (isPrefix!2549 lt!985368 (++!7910 lt!985368 lt!985387))))

(assert (=> d!803342 (= lt!985777 (lemmaConcatTwoListThenFirstIsPrefix!1659 lt!985368 lt!985387))))

(assert (=> d!803342 (= (++!7910 lt!985368 lt!985387) lt!985390)))

(assert (=> d!803342 (= (findLongestMatchInnerZipper!19 call!180598 lt!985368 1 lt!985387 lt!985390 lt!985360) lt!985786)))

(declare-fun b!2767306 () Bool)

(declare-fun e!1744848 () tuple2!32090)

(assert (=> b!2767306 (= e!1744848 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun call!180700 () tuple2!32090)

(declare-fun call!180696 () (InoxSet Context!4586))

(declare-fun lt!985787 () List!32064)

(declare-fun bm!180688 () Bool)

(declare-fun call!180699 () List!32064)

(assert (=> bm!180688 (= call!180700 (findLongestMatchInnerZipper!19 call!180696 lt!985787 (+ 1 1) call!180699 lt!985390 lt!985360))))

(declare-fun bm!180689 () Bool)

(declare-fun call!180695 () Bool)

(assert (=> bm!180689 (= call!180695 (nullableZipper!628 call!180598))))

(declare-fun b!2767307 () Bool)

(declare-fun e!1744845 () tuple2!32090)

(declare-fun e!1744846 () tuple2!32090)

(assert (=> b!2767307 (= e!1744845 e!1744846)))

(declare-fun lt!985788 () tuple2!32090)

(assert (=> b!2767307 (= lt!985788 call!180700)))

(declare-fun c!449078 () Bool)

(assert (=> b!2767307 (= c!449078 (isEmpty!18090 (_1!18912 lt!985788)))))

(declare-fun b!2767308 () Bool)

(declare-fun e!1744843 () tuple2!32090)

(assert (=> b!2767308 (= e!1744847 e!1744843)))

(declare-fun c!449079 () Bool)

(assert (=> b!2767308 (= c!449079 (= 1 lt!985360))))

(declare-fun b!2767309 () Bool)

(declare-fun e!1744844 () Bool)

(assert (=> b!2767309 (= e!1744849 e!1744844)))

(declare-fun res!1157714 () Bool)

(assert (=> b!2767309 (=> res!1157714 e!1744844)))

(assert (=> b!2767309 (= res!1157714 (isEmpty!18090 (_1!18912 lt!985786)))))

(declare-fun b!2767310 () Bool)

(assert (=> b!2767310 (= e!1744846 (tuple2!32091 lt!985368 lt!985387))))

(declare-fun b!2767311 () Bool)

(declare-fun c!449080 () Bool)

(assert (=> b!2767311 (= c!449080 call!180695)))

(declare-fun lt!985785 () Unit!46052)

(declare-fun lt!985783 () Unit!46052)

(assert (=> b!2767311 (= lt!985785 lt!985783)))

(assert (=> b!2767311 (= lt!985390 lt!985368)))

(declare-fun call!180694 () Unit!46052)

(assert (=> b!2767311 (= lt!985783 call!180694)))

(declare-fun lt!985781 () Unit!46052)

(declare-fun lt!985793 () Unit!46052)

(assert (=> b!2767311 (= lt!985781 lt!985793)))

(declare-fun call!180693 () Bool)

(assert (=> b!2767311 call!180693))

(declare-fun call!180698 () Unit!46052)

(assert (=> b!2767311 (= lt!985793 call!180698)))

(assert (=> b!2767311 (= e!1744843 e!1744848)))

(declare-fun b!2767312 () Bool)

(assert (=> b!2767312 (= e!1744847 (tuple2!32091 Nil!31964 lt!985390))))

(declare-fun bm!180690 () Bool)

(assert (=> bm!180690 (= call!180694 (lemmaIsPrefixSameLengthThenSameList!456 lt!985390 lt!985368 lt!985390))))

(declare-fun b!2767313 () Bool)

(declare-fun e!1744850 () Unit!46052)

(declare-fun Unit!46075 () Unit!46052)

(assert (=> b!2767313 (= e!1744850 Unit!46075)))

(declare-fun lt!985782 () Unit!46052)

(assert (=> b!2767313 (= lt!985782 call!180698)))

(assert (=> b!2767313 call!180693))

(declare-fun lt!985771 () Unit!46052)

(assert (=> b!2767313 (= lt!985771 lt!985782)))

(declare-fun lt!985773 () Unit!46052)

(assert (=> b!2767313 (= lt!985773 call!180694)))

(assert (=> b!2767313 (= lt!985390 lt!985368)))

(declare-fun lt!985791 () Unit!46052)

(assert (=> b!2767313 (= lt!985791 lt!985773)))

(assert (=> b!2767313 false))

(declare-fun b!2767314 () Bool)

(declare-fun c!449076 () Bool)

(assert (=> b!2767314 (= c!449076 call!180695)))

(declare-fun lt!985776 () Unit!46052)

(declare-fun lt!985778 () Unit!46052)

(assert (=> b!2767314 (= lt!985776 lt!985778)))

(declare-fun lt!985770 () List!32064)

(declare-fun lt!985789 () C!16308)

(assert (=> b!2767314 (= (++!7910 (++!7910 lt!985368 (Cons!31964 lt!985789 Nil!31964)) lt!985770) lt!985390)))

(assert (=> b!2767314 (= lt!985778 (lemmaMoveElementToOtherListKeepsConcatEq!865 lt!985368 lt!985789 lt!985770 lt!985390))))

(assert (=> b!2767314 (= lt!985770 (tail!4382 lt!985387))))

(assert (=> b!2767314 (= lt!985789 (head!6144 lt!985387))))

(declare-fun lt!985774 () Unit!46052)

(declare-fun lt!985792 () Unit!46052)

(assert (=> b!2767314 (= lt!985774 lt!985792)))

(assert (=> b!2767314 (isPrefix!2549 (++!7910 lt!985368 (Cons!31964 (head!6144 (getSuffix!1231 lt!985390 lt!985368)) Nil!31964)) lt!985390)))

(assert (=> b!2767314 (= lt!985792 (lemmaAddHeadSuffixToPrefixStillPrefix!453 lt!985368 lt!985390))))

(assert (=> b!2767314 (= lt!985787 (++!7910 lt!985368 (Cons!31964 (head!6144 lt!985387) Nil!31964)))))

(declare-fun lt!985780 () Unit!46052)

(assert (=> b!2767314 (= lt!985780 e!1744850)))

(declare-fun c!449077 () Bool)

(assert (=> b!2767314 (= c!449077 (= (size!24737 lt!985368) (size!24737 lt!985390)))))

(declare-fun lt!985784 () Unit!46052)

(declare-fun lt!985779 () Unit!46052)

(assert (=> b!2767314 (= lt!985784 lt!985779)))

(assert (=> b!2767314 (<= (size!24737 lt!985368) (size!24737 lt!985390))))

(assert (=> b!2767314 (= lt!985779 (lemmaIsPrefixThenSmallerEqSize!256 lt!985368 lt!985390))))

(assert (=> b!2767314 (= e!1744843 e!1744845)))

(declare-fun b!2767315 () Bool)

(assert (=> b!2767315 (= e!1744844 (>= (size!24737 (_1!18912 lt!985786)) (size!24737 lt!985368)))))

(declare-fun bm!180691 () Bool)

(declare-fun call!180697 () C!16308)

(assert (=> bm!180691 (= call!180696 (derivationStepZipper!363 call!180598 call!180697))))

(declare-fun b!2767316 () Bool)

(assert (=> b!2767316 (= e!1744848 (tuple2!32091 lt!985368 Nil!31964))))

(declare-fun b!2767317 () Bool)

(assert (=> b!2767317 (= e!1744846 lt!985788)))

(declare-fun b!2767318 () Bool)

(assert (=> b!2767318 (= e!1744845 call!180700)))

(declare-fun bm!180692 () Bool)

(assert (=> bm!180692 (= call!180697 (head!6144 lt!985387))))

(declare-fun bm!180693 () Bool)

(assert (=> bm!180693 (= call!180699 (tail!4382 lt!985387))))

(declare-fun b!2767319 () Bool)

(declare-fun Unit!46076 () Unit!46052)

(assert (=> b!2767319 (= e!1744850 Unit!46076)))

(declare-fun bm!180694 () Bool)

(assert (=> bm!180694 (= call!180693 (isPrefix!2549 lt!985390 lt!985390))))

(declare-fun bm!180695 () Bool)

(assert (=> bm!180695 (= call!180698 (lemmaIsPrefixRefl!1673 lt!985390 lt!985390))))

(assert (= (and d!803342 c!449075) b!2767312))

(assert (= (and d!803342 (not c!449075)) b!2767308))

(assert (= (and b!2767308 c!449079) b!2767311))

(assert (= (and b!2767308 (not c!449079)) b!2767314))

(assert (= (and b!2767311 c!449080) b!2767316))

(assert (= (and b!2767311 (not c!449080)) b!2767306))

(assert (= (and b!2767314 c!449077) b!2767313))

(assert (= (and b!2767314 (not c!449077)) b!2767319))

(assert (= (and b!2767314 c!449076) b!2767307))

(assert (= (and b!2767314 (not c!449076)) b!2767318))

(assert (= (and b!2767307 c!449078) b!2767310))

(assert (= (and b!2767307 (not c!449078)) b!2767317))

(assert (= (or b!2767307 b!2767318) bm!180693))

(assert (= (or b!2767307 b!2767318) bm!180692))

(assert (= (or b!2767307 b!2767318) bm!180691))

(assert (= (or b!2767307 b!2767318) bm!180688))

(assert (= (or b!2767311 b!2767314) bm!180689))

(assert (= (or b!2767311 b!2767313) bm!180695))

(assert (= (or b!2767311 b!2767313) bm!180690))

(assert (= (or b!2767311 b!2767313) bm!180694))

(assert (= (and d!803342 res!1157715) b!2767309))

(assert (= (and b!2767309 (not res!1157714)) b!2767315))

(declare-fun m!3190857 () Bool)

(assert (=> b!2767309 m!3190857))

(assert (=> bm!180694 m!3190355))

(declare-fun m!3190859 () Bool)

(assert (=> bm!180689 m!3190859))

(declare-fun m!3190861 () Bool)

(assert (=> d!803342 m!3190861))

(declare-fun m!3190863 () Bool)

(assert (=> d!803342 m!3190863))

(assert (=> d!803342 m!3190445))

(declare-fun m!3190865 () Bool)

(assert (=> d!803342 m!3190865))

(declare-fun m!3190867 () Bool)

(assert (=> d!803342 m!3190867))

(declare-fun m!3190869 () Bool)

(assert (=> d!803342 m!3190869))

(assert (=> d!803342 m!3190445))

(declare-fun m!3190871 () Bool)

(assert (=> d!803342 m!3190871))

(declare-fun m!3190873 () Bool)

(assert (=> bm!180688 m!3190873))

(assert (=> bm!180695 m!3190309))

(declare-fun m!3190875 () Bool)

(assert (=> b!2767307 m!3190875))

(declare-fun m!3190877 () Bool)

(assert (=> bm!180690 m!3190877))

(declare-fun m!3190879 () Bool)

(assert (=> bm!180691 m!3190879))

(declare-fun m!3190881 () Bool)

(assert (=> bm!180693 m!3190881))

(declare-fun m!3190883 () Bool)

(assert (=> b!2767315 m!3190883))

(assert (=> b!2767315 m!3190813))

(declare-fun m!3190885 () Bool)

(assert (=> b!2767314 m!3190885))

(declare-fun m!3190887 () Bool)

(assert (=> b!2767314 m!3190887))

(declare-fun m!3190889 () Bool)

(assert (=> b!2767314 m!3190889))

(assert (=> b!2767314 m!3190383))

(declare-fun m!3190891 () Bool)

(assert (=> b!2767314 m!3190891))

(assert (=> b!2767314 m!3190865))

(declare-fun m!3190893 () Bool)

(assert (=> b!2767314 m!3190893))

(declare-fun m!3190895 () Bool)

(assert (=> b!2767314 m!3190895))

(assert (=> b!2767314 m!3190881))

(assert (=> b!2767314 m!3190885))

(declare-fun m!3190897 () Bool)

(assert (=> b!2767314 m!3190897))

(assert (=> b!2767314 m!3190813))

(assert (=> b!2767314 m!3190865))

(declare-fun m!3190899 () Bool)

(assert (=> b!2767314 m!3190899))

(assert (=> b!2767314 m!3190895))

(declare-fun m!3190901 () Bool)

(assert (=> b!2767314 m!3190901))

(declare-fun m!3190903 () Bool)

(assert (=> b!2767314 m!3190903))

(assert (=> bm!180692 m!3190893))

(assert (=> bm!180605 d!803342))

(assert (=> b!2767097 d!803300))

(assert (=> bm!180604 d!803262))

(assert (=> bm!180595 d!803268))

(declare-fun d!803344 () Bool)

(assert (=> d!803344 (= (valid!2928 (_3!2864 lt!985336)) (validCacheMapDown!392 (cache!3808 (_3!2864 lt!985336))))))

(declare-fun bs!500378 () Bool)

(assert (= bs!500378 d!803344))

(declare-fun m!3190905 () Bool)

(assert (=> bs!500378 m!3190905))

(assert (=> b!2767107 d!803344))

(assert (=> bm!180594 d!803268))

(assert (=> b!2767108 d!803300))

(declare-fun d!803346 () Bool)

(declare-fun c!449083 () Bool)

(assert (=> d!803346 (= c!449083 ((_ is Node!9957) (c!449005 input!5495)))))

(declare-fun e!1744855 () Bool)

(assert (=> d!803346 (= (inv!43401 (c!449005 input!5495)) e!1744855)))

(declare-fun b!2767326 () Bool)

(declare-fun inv!43405 (Conc!9957) Bool)

(assert (=> b!2767326 (= e!1744855 (inv!43405 (c!449005 input!5495)))))

(declare-fun b!2767327 () Bool)

(declare-fun e!1744856 () Bool)

(assert (=> b!2767327 (= e!1744855 e!1744856)))

(declare-fun res!1157718 () Bool)

(assert (=> b!2767327 (= res!1157718 (not ((_ is Leaf!15163) (c!449005 input!5495))))))

(assert (=> b!2767327 (=> res!1157718 e!1744856)))

(declare-fun b!2767328 () Bool)

(declare-fun inv!43406 (Conc!9957) Bool)

(assert (=> b!2767328 (= e!1744856 (inv!43406 (c!449005 input!5495)))))

(assert (= (and d!803346 c!449083) b!2767326))

(assert (= (and d!803346 (not c!449083)) b!2767327))

(assert (= (and b!2767327 (not res!1157718)) b!2767328))

(declare-fun m!3190907 () Bool)

(assert (=> b!2767326 m!3190907))

(declare-fun m!3190909 () Bool)

(assert (=> b!2767328 m!3190909))

(assert (=> b!2767061 d!803346))

(assert (=> bm!180603 d!803266))

(declare-fun b!2767331 () Bool)

(declare-fun res!1157720 () Bool)

(declare-fun e!1744857 () Bool)

(assert (=> b!2767331 (=> (not res!1157720) (not e!1744857))))

(declare-fun lt!985796 () List!32064)

(assert (=> b!2767331 (= res!1157720 (= (size!24737 lt!985796) (+ (size!24737 lt!985350) (size!24737 lt!985395))))))

(declare-fun b!2767329 () Bool)

(declare-fun e!1744858 () List!32064)

(assert (=> b!2767329 (= e!1744858 lt!985395)))

(declare-fun d!803348 () Bool)

(assert (=> d!803348 e!1744857))

(declare-fun res!1157719 () Bool)

(assert (=> d!803348 (=> (not res!1157719) (not e!1744857))))

(assert (=> d!803348 (= res!1157719 (= (content!4499 lt!985796) ((_ map or) (content!4499 lt!985350) (content!4499 lt!985395))))))

(assert (=> d!803348 (= lt!985796 e!1744858)))

(declare-fun c!449084 () Bool)

(assert (=> d!803348 (= c!449084 ((_ is Nil!31964) lt!985350))))

(assert (=> d!803348 (= (++!7910 lt!985350 lt!985395) lt!985796)))

(declare-fun b!2767332 () Bool)

(assert (=> b!2767332 (= e!1744857 (or (not (= lt!985395 Nil!31964)) (= lt!985796 lt!985350)))))

(declare-fun b!2767330 () Bool)

(assert (=> b!2767330 (= e!1744858 (Cons!31964 (h!37384 lt!985350) (++!7910 (t!228184 lt!985350) lt!985395)))))

(assert (= (and d!803348 c!449084) b!2767329))

(assert (= (and d!803348 (not c!449084)) b!2767330))

(assert (= (and d!803348 res!1157719) b!2767331))

(assert (= (and b!2767331 res!1157720) b!2767332))

(declare-fun m!3190911 () Bool)

(assert (=> b!2767331 m!3190911))

(assert (=> b!2767331 m!3190511))

(declare-fun m!3190913 () Bool)

(assert (=> b!2767331 m!3190913))

(declare-fun m!3190915 () Bool)

(assert (=> d!803348 m!3190915))

(declare-fun m!3190917 () Bool)

(assert (=> d!803348 m!3190917))

(declare-fun m!3190919 () Bool)

(assert (=> d!803348 m!3190919))

(declare-fun m!3190921 () Bool)

(assert (=> b!2767330 m!3190921))

(assert (=> b!2767095 d!803348))

(assert (=> b!2767095 d!803340))

(declare-fun b!2767351 () Bool)

(declare-fun e!1744869 () Int)

(declare-fun e!1744870 () Int)

(assert (=> b!2767351 (= e!1744869 e!1744870)))

(declare-fun c!449093 () Bool)

(declare-fun call!180703 () Int)

(assert (=> b!2767351 (= c!449093 (>= 0 call!180703))))

(declare-fun d!803350 () Bool)

(declare-fun e!1744873 () Bool)

(assert (=> d!803350 e!1744873))

(declare-fun res!1157723 () Bool)

(assert (=> d!803350 (=> (not res!1157723) (not e!1744873))))

(declare-fun lt!985799 () List!32064)

(assert (=> d!803350 (= res!1157723 (= ((_ map implies) (content!4499 lt!985799) (content!4499 lt!985390)) ((as const (InoxSet C!16308)) true)))))

(declare-fun e!1744871 () List!32064)

(assert (=> d!803350 (= lt!985799 e!1744871)))

(declare-fun c!449096 () Bool)

(assert (=> d!803350 (= c!449096 ((_ is Nil!31964) lt!985390))))

(assert (=> d!803350 (= (drop!1702 lt!985390 0) lt!985799)))

(declare-fun b!2767352 () Bool)

(assert (=> b!2767352 (= e!1744871 Nil!31964)))

(declare-fun b!2767353 () Bool)

(assert (=> b!2767353 (= e!1744870 (- call!180703 0))))

(declare-fun b!2767354 () Bool)

(declare-fun e!1744872 () List!32064)

(assert (=> b!2767354 (= e!1744872 lt!985390)))

(declare-fun b!2767355 () Bool)

(assert (=> b!2767355 (= e!1744870 0)))

(declare-fun b!2767356 () Bool)

(assert (=> b!2767356 (= e!1744869 call!180703)))

(declare-fun bm!180698 () Bool)

(assert (=> bm!180698 (= call!180703 (size!24737 lt!985390))))

(declare-fun b!2767357 () Bool)

(assert (=> b!2767357 (= e!1744871 e!1744872)))

(declare-fun c!449094 () Bool)

(assert (=> b!2767357 (= c!449094 (<= 0 0))))

(declare-fun b!2767358 () Bool)

(assert (=> b!2767358 (= e!1744873 (= (size!24737 lt!985799) e!1744869))))

(declare-fun c!449095 () Bool)

(assert (=> b!2767358 (= c!449095 (<= 0 0))))

(declare-fun b!2767359 () Bool)

(assert (=> b!2767359 (= e!1744872 (drop!1702 (t!228184 lt!985390) (- 0 1)))))

(assert (= (and d!803350 c!449096) b!2767352))

(assert (= (and d!803350 (not c!449096)) b!2767357))

(assert (= (and b!2767357 c!449094) b!2767354))

(assert (= (and b!2767357 (not c!449094)) b!2767359))

(assert (= (and d!803350 res!1157723) b!2767358))

(assert (= (and b!2767358 c!449095) b!2767356))

(assert (= (and b!2767358 (not c!449095)) b!2767351))

(assert (= (and b!2767351 c!449093) b!2767355))

(assert (= (and b!2767351 (not c!449093)) b!2767353))

(assert (= (or b!2767356 b!2767351 b!2767353) bm!180698))

(declare-fun m!3190923 () Bool)

(assert (=> d!803350 m!3190923))

(assert (=> d!803350 m!3190697))

(assert (=> bm!180698 m!3190383))

(declare-fun m!3190925 () Bool)

(assert (=> b!2767358 m!3190925))

(declare-fun m!3190927 () Bool)

(assert (=> b!2767359 m!3190927))

(assert (=> b!2767095 d!803350))

(declare-fun d!803352 () Bool)

(assert (=> d!803352 (= (list!12066 (_1!18913 lt!985379)) (list!12067 (c!449005 (_1!18913 lt!985379))))))

(declare-fun bs!500379 () Bool)

(assert (= bs!500379 d!803352))

(declare-fun m!3190929 () Bool)

(assert (=> bs!500379 m!3190929))

(assert (=> b!2767095 d!803352))

(declare-fun d!803354 () Bool)

(declare-fun lt!985802 () C!16308)

(declare-fun contains!5993 (List!32064 C!16308) Bool)

(assert (=> d!803354 (contains!5993 lt!985390 lt!985802)))

(declare-fun e!1744879 () C!16308)

(assert (=> d!803354 (= lt!985802 e!1744879)))

(declare-fun c!449099 () Bool)

(assert (=> d!803354 (= c!449099 (= 0 0))))

(declare-fun e!1744878 () Bool)

(assert (=> d!803354 e!1744878))

(declare-fun res!1157726 () Bool)

(assert (=> d!803354 (=> (not res!1157726) (not e!1744878))))

(assert (=> d!803354 (= res!1157726 (<= 0 0))))

(assert (=> d!803354 (= (apply!7494 lt!985390 0) lt!985802)))

(declare-fun b!2767366 () Bool)

(assert (=> b!2767366 (= e!1744878 (< 0 (size!24737 lt!985390)))))

(declare-fun b!2767367 () Bool)

(assert (=> b!2767367 (= e!1744879 (head!6144 lt!985390))))

(declare-fun b!2767368 () Bool)

(assert (=> b!2767368 (= e!1744879 (apply!7494 (tail!4382 lt!985390) (- 0 1)))))

(assert (= (and d!803354 res!1157726) b!2767366))

(assert (= (and d!803354 c!449099) b!2767367))

(assert (= (and d!803354 (not c!449099)) b!2767368))

(declare-fun m!3190931 () Bool)

(assert (=> d!803354 m!3190931))

(assert (=> b!2767366 m!3190383))

(assert (=> b!2767367 m!3190447))

(assert (=> b!2767368 m!3190393))

(assert (=> b!2767368 m!3190393))

(declare-fun m!3190933 () Bool)

(assert (=> b!2767368 m!3190933))

(assert (=> b!2767095 d!803354))

(assert (=> b!2767095 d!803324))

(assert (=> b!2767095 d!803326))

(declare-fun d!803356 () Bool)

(assert (=> d!803356 (= (head!6144 (drop!1702 lt!985390 0)) (apply!7494 lt!985390 0))))

(declare-fun lt!985805 () Unit!46052)

(declare-fun choose!16245 (List!32064 Int) Unit!46052)

(assert (=> d!803356 (= lt!985805 (choose!16245 lt!985390 0))))

(declare-fun e!1744882 () Bool)

(assert (=> d!803356 e!1744882))

(declare-fun res!1157729 () Bool)

(assert (=> d!803356 (=> (not res!1157729) (not e!1744882))))

(assert (=> d!803356 (= res!1157729 (>= 0 0))))

(assert (=> d!803356 (= (lemmaDropApply!908 lt!985390 0) lt!985805)))

(declare-fun b!2767371 () Bool)

(assert (=> b!2767371 (= e!1744882 (< 0 (size!24737 lt!985390)))))

(assert (= (and d!803356 res!1157729) b!2767371))

(assert (=> d!803356 m!3190399))

(assert (=> d!803356 m!3190399))

(assert (=> d!803356 m!3190413))

(assert (=> d!803356 m!3190389))

(declare-fun m!3190935 () Bool)

(assert (=> d!803356 m!3190935))

(assert (=> b!2767371 m!3190383))

(assert (=> b!2767095 d!803356))

(declare-fun d!803358 () Bool)

(declare-fun e!1744883 () Bool)

(assert (=> d!803358 e!1744883))

(declare-fun res!1157730 () Bool)

(assert (=> d!803358 (=> (not res!1157730) (not e!1744883))))

(declare-fun lt!985806 () tuple2!32092)

(assert (=> d!803358 (= res!1157730 (isBalanced!3035 (c!449005 (_1!18913 lt!985806))))))

(declare-fun lt!985807 () tuple2!32094)

(assert (=> d!803358 (= lt!985806 (tuple2!32093 (BalanceConc!19529 (_1!18914 lt!985807)) (BalanceConc!19529 (_2!18914 lt!985807))))))

(assert (=> d!803358 (= lt!985807 (splitAt!110 (c!449005 input!5495) 0))))

(assert (=> d!803358 (isBalanced!3035 (c!449005 input!5495))))

(assert (=> d!803358 (= (splitAt!109 input!5495 0) lt!985806)))

(declare-fun b!2767372 () Bool)

(declare-fun res!1157731 () Bool)

(assert (=> b!2767372 (=> (not res!1157731) (not e!1744883))))

(assert (=> b!2767372 (= res!1157731 (isBalanced!3035 (c!449005 (_2!18913 lt!985806))))))

(declare-fun b!2767373 () Bool)

(assert (=> b!2767373 (= e!1744883 (= (tuple2!32091 (list!12066 (_1!18913 lt!985806)) (list!12066 (_2!18913 lt!985806))) (splitAtIndex!50 (list!12066 input!5495) 0)))))

(assert (= (and d!803358 res!1157730) b!2767372))

(assert (= (and b!2767372 res!1157731) b!2767373))

(declare-fun m!3190937 () Bool)

(assert (=> d!803358 m!3190937))

(declare-fun m!3190939 () Bool)

(assert (=> d!803358 m!3190939))

(assert (=> d!803358 m!3190349))

(declare-fun m!3190941 () Bool)

(assert (=> b!2767372 m!3190941))

(declare-fun m!3190943 () Bool)

(assert (=> b!2767373 m!3190943))

(declare-fun m!3190945 () Bool)

(assert (=> b!2767373 m!3190945))

(assert (=> b!2767373 m!3190315))

(assert (=> b!2767373 m!3190315))

(declare-fun m!3190947 () Bool)

(assert (=> b!2767373 m!3190947))

(assert (=> b!2767095 d!803358))

(assert (=> b!2767095 d!803330))

(assert (=> b!2767095 d!803332))

(assert (=> b!2767095 d!803334))

(declare-fun b!2767376 () Bool)

(declare-fun res!1157733 () Bool)

(declare-fun e!1744884 () Bool)

(assert (=> b!2767376 (=> (not res!1157733) (not e!1744884))))

(declare-fun lt!985808 () List!32064)

(assert (=> b!2767376 (= res!1157733 (= (size!24737 lt!985808) (+ (size!24737 Nil!31964) (size!24737 (Cons!31964 lt!985340 Nil!31964)))))))

(declare-fun b!2767374 () Bool)

(declare-fun e!1744885 () List!32064)

(assert (=> b!2767374 (= e!1744885 (Cons!31964 lt!985340 Nil!31964))))

(declare-fun d!803360 () Bool)

(assert (=> d!803360 e!1744884))

(declare-fun res!1157732 () Bool)

(assert (=> d!803360 (=> (not res!1157732) (not e!1744884))))

(assert (=> d!803360 (= res!1157732 (= (content!4499 lt!985808) ((_ map or) (content!4499 Nil!31964) (content!4499 (Cons!31964 lt!985340 Nil!31964)))))))

(assert (=> d!803360 (= lt!985808 e!1744885)))

(declare-fun c!449100 () Bool)

(assert (=> d!803360 (= c!449100 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803360 (= (++!7910 Nil!31964 (Cons!31964 lt!985340 Nil!31964)) lt!985808)))

(declare-fun b!2767377 () Bool)

(assert (=> b!2767377 (= e!1744884 (or (not (= (Cons!31964 lt!985340 Nil!31964) Nil!31964)) (= lt!985808 Nil!31964)))))

(declare-fun b!2767375 () Bool)

(assert (=> b!2767375 (= e!1744885 (Cons!31964 (h!37384 Nil!31964) (++!7910 (t!228184 Nil!31964) (Cons!31964 lt!985340 Nil!31964))))))

(assert (= (and d!803360 c!449100) b!2767374))

(assert (= (and d!803360 (not c!449100)) b!2767375))

(assert (= (and d!803360 res!1157732) b!2767376))

(assert (= (and b!2767376 res!1157733) b!2767377))

(declare-fun m!3190949 () Bool)

(assert (=> b!2767376 m!3190949))

(assert (=> b!2767376 m!3190397))

(declare-fun m!3190951 () Bool)

(assert (=> b!2767376 m!3190951))

(declare-fun m!3190953 () Bool)

(assert (=> d!803360 m!3190953))

(assert (=> d!803360 m!3190695))

(declare-fun m!3190955 () Bool)

(assert (=> d!803360 m!3190955))

(declare-fun m!3190957 () Bool)

(assert (=> b!2767375 m!3190957))

(assert (=> b!2767095 d!803360))

(assert (=> b!2767095 d!803336))

(declare-fun d!803362 () Bool)

(assert (=> d!803362 (= (list!12066 (_2!18913 lt!985379)) (list!12067 (c!449005 (_2!18913 lt!985379))))))

(declare-fun bs!500380 () Bool)

(assert (= bs!500380 d!803362))

(declare-fun m!3190959 () Bool)

(assert (=> bs!500380 m!3190959))

(assert (=> b!2767095 d!803362))

(declare-fun d!803364 () Bool)

(assert (=> d!803364 (= (head!6144 (drop!1702 lt!985390 0)) (h!37384 (drop!1702 lt!985390 0)))))

(assert (=> b!2767095 d!803364))

(declare-fun d!803366 () Bool)

(assert (=> d!803366 (= (++!7910 (++!7910 Nil!31964 (Cons!31964 lt!985340 Nil!31964)) lt!985395) lt!985390)))

(declare-fun lt!985809 () Unit!46052)

(assert (=> d!803366 (= lt!985809 (choose!16244 Nil!31964 lt!985340 lt!985395 lt!985390))))

(assert (=> d!803366 (= (++!7910 Nil!31964 (Cons!31964 lt!985340 lt!985395)) lt!985390)))

(assert (=> d!803366 (= (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985340 lt!985395 lt!985390) lt!985809)))

(declare-fun bs!500381 () Bool)

(assert (= bs!500381 d!803366))

(assert (=> bs!500381 m!3190431))

(assert (=> bs!500381 m!3190431))

(declare-fun m!3190961 () Bool)

(assert (=> bs!500381 m!3190961))

(declare-fun m!3190963 () Bool)

(assert (=> bs!500381 m!3190963))

(declare-fun m!3190965 () Bool)

(assert (=> bs!500381 m!3190965))

(assert (=> b!2767095 d!803366))

(declare-fun d!803368 () Bool)

(declare-fun lt!985812 () C!16308)

(assert (=> d!803368 (= lt!985812 (apply!7494 (list!12066 input!5495) 0))))

(declare-fun apply!7495 (Conc!9957 Int) C!16308)

(assert (=> d!803368 (= lt!985812 (apply!7495 (c!449005 input!5495) 0))))

(declare-fun e!1744888 () Bool)

(assert (=> d!803368 e!1744888))

(declare-fun res!1157736 () Bool)

(assert (=> d!803368 (=> (not res!1157736) (not e!1744888))))

(assert (=> d!803368 (= res!1157736 (<= 0 0))))

(assert (=> d!803368 (= (apply!7493 input!5495 0) lt!985812)))

(declare-fun b!2767380 () Bool)

(assert (=> b!2767380 (= e!1744888 (< 0 (size!24738 input!5495)))))

(assert (= (and d!803368 res!1157736) b!2767380))

(assert (=> d!803368 m!3190315))

(assert (=> d!803368 m!3190315))

(declare-fun m!3190967 () Bool)

(assert (=> d!803368 m!3190967))

(declare-fun m!3190969 () Bool)

(assert (=> d!803368 m!3190969))

(assert (=> b!2767380 m!3190317))

(assert (=> b!2767095 d!803368))

(assert (=> b!2767095 d!803328))

(declare-fun d!803370 () Bool)

(assert (=> d!803370 (and (= lt!985398 Nil!31964) (= lt!985338 lt!985390))))

(declare-fun lt!985813 () Unit!46052)

(assert (=> d!803370 (= lt!985813 (choose!16238 lt!985398 lt!985338 Nil!31964 lt!985390))))

(assert (=> d!803370 (= (++!7910 lt!985398 lt!985338) (++!7910 Nil!31964 lt!985390))))

(assert (=> d!803370 (= (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985398 lt!985338 Nil!31964 lt!985390) lt!985813)))

(declare-fun bs!500382 () Bool)

(assert (= bs!500382 d!803370))

(declare-fun m!3190971 () Bool)

(assert (=> bs!500382 m!3190971))

(declare-fun m!3190973 () Bool)

(assert (=> bs!500382 m!3190973))

(assert (=> bs!500382 m!3190313))

(assert (=> b!2767095 d!803370))

(declare-fun d!803372 () Bool)

(assert (=> d!803372 (= (isEmpty!18090 (_1!18912 lt!985354)) ((_ is Nil!31964) (_1!18912 lt!985354)))))

(assert (=> b!2767094 d!803372))

(declare-fun d!803374 () Bool)

(declare-fun e!1744889 () Bool)

(assert (=> d!803374 e!1744889))

(declare-fun res!1157737 () Bool)

(assert (=> d!803374 (=> (not res!1157737) (not e!1744889))))

(declare-fun lt!985814 () tuple3!4788)

(assert (=> d!803374 (= res!1157737 (valid!2929 (_2!18909 lt!985814)))))

(assert (=> d!803374 (= lt!985814 (choose!16239 (ite c!448995 (_2!18910 lt!985377) (_2!18910 lt!985386)) (ite c!448995 (_3!2865 lt!985377) (_3!2865 lt!985386)) (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360))))

(assert (=> d!803374 (= (++!7910 lt!985352 lt!985361) (list!12066 input!5495))))

(assert (=> d!803374 (= (findLongestMatchInnerZipperFastMem!27 (ite c!448995 (_2!18910 lt!985377) (_2!18910 lt!985386)) (ite c!448995 (_3!2865 lt!985377) (_3!2865 lt!985386)) (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360) lt!985814)))

(declare-fun b!2767381 () Bool)

(declare-fun res!1157738 () Bool)

(assert (=> b!2767381 (=> (not res!1157738) (not e!1744889))))

(assert (=> b!2767381 (= res!1157738 (valid!2928 (_3!2864 lt!985814)))))

(declare-fun b!2767382 () Bool)

(assert (=> b!2767382 (= e!1744889 (= (_1!18909 lt!985814) (findLongestMatchInnerZipperFast!33 (ite c!448995 (_1!18910 lt!985377) (_1!18910 lt!985386)) lt!985352 1 lt!985361 input!5495 lt!985360)))))

(assert (= (and d!803374 res!1157737) b!2767381))

(assert (= (and b!2767381 res!1157738) b!2767382))

(declare-fun m!3190975 () Bool)

(assert (=> d!803374 m!3190975))

(declare-fun m!3190977 () Bool)

(assert (=> d!803374 m!3190977))

(assert (=> d!803374 m!3190385))

(assert (=> d!803374 m!3190315))

(declare-fun m!3190979 () Bool)

(assert (=> b!2767381 m!3190979))

(assert (=> b!2767382 m!3190305))

(assert (=> bm!180588 d!803374))

(declare-fun d!803376 () Bool)

(assert (=> d!803376 true))

(declare-fun lambda!101566 () Int)

(declare-fun flatMap!184 ((InoxSet Context!4586) Int) (InoxSet Context!4586))

(assert (=> d!803376 (= (derivationStepZipper!363 z!3597 lt!985340) (flatMap!184 z!3597 lambda!101566))))

(declare-fun bs!500383 () Bool)

(assert (= bs!500383 d!803376))

(declare-fun m!3190981 () Bool)

(assert (=> bs!500383 m!3190981))

(assert (=> bm!180601 d!803376))

(assert (=> b!2767093 d!803340))

(assert (=> b!2767093 d!803350))

(assert (=> b!2767093 d!803354))

(assert (=> b!2767093 d!803368))

(assert (=> b!2767093 d!803324))

(assert (=> b!2767093 d!803326))

(assert (=> b!2767093 d!803358))

(assert (=> b!2767093 d!803332))

(assert (=> b!2767093 d!803334))

(assert (=> b!2767093 d!803336))

(declare-fun d!803378 () Bool)

(assert (=> d!803378 (and (= lt!985337 Nil!31964) (= lt!985343 lt!985390))))

(declare-fun lt!985815 () Unit!46052)

(assert (=> d!803378 (= lt!985815 (choose!16238 lt!985337 lt!985343 Nil!31964 lt!985390))))

(assert (=> d!803378 (= (++!7910 lt!985337 lt!985343) (++!7910 Nil!31964 lt!985390))))

(assert (=> d!803378 (= (lemmaConcatSameAndSameSizesThenSameLists!334 lt!985337 lt!985343 Nil!31964 lt!985390) lt!985815)))

(declare-fun bs!500384 () Bool)

(assert (= bs!500384 d!803378))

(declare-fun m!3190983 () Bool)

(assert (=> bs!500384 m!3190983))

(declare-fun m!3190985 () Bool)

(assert (=> bs!500384 m!3190985))

(assert (=> bs!500384 m!3190313))

(assert (=> b!2767093 d!803378))

(declare-fun d!803380 () Bool)

(assert (=> d!803380 (= (++!7910 (++!7910 Nil!31964 (Cons!31964 lt!985330 Nil!31964)) lt!985361) lt!985390)))

(declare-fun lt!985816 () Unit!46052)

(assert (=> d!803380 (= lt!985816 (choose!16244 Nil!31964 lt!985330 lt!985361 lt!985390))))

(assert (=> d!803380 (= (++!7910 Nil!31964 (Cons!31964 lt!985330 lt!985361)) lt!985390)))

(assert (=> d!803380 (= (lemmaMoveElementToOtherListKeepsConcatEq!865 Nil!31964 lt!985330 lt!985361 lt!985390) lt!985816)))

(declare-fun bs!500385 () Bool)

(assert (= bs!500385 d!803380))

(assert (=> bs!500385 m!3190415))

(assert (=> bs!500385 m!3190415))

(declare-fun m!3190987 () Bool)

(assert (=> bs!500385 m!3190987))

(declare-fun m!3190989 () Bool)

(assert (=> bs!500385 m!3190989))

(declare-fun m!3190991 () Bool)

(assert (=> bs!500385 m!3190991))

(assert (=> b!2767093 d!803380))

(assert (=> b!2767093 d!803364))

(declare-fun b!2767387 () Bool)

(declare-fun res!1157740 () Bool)

(declare-fun e!1744890 () Bool)

(assert (=> b!2767387 (=> (not res!1157740) (not e!1744890))))

(declare-fun lt!985817 () List!32064)

(assert (=> b!2767387 (= res!1157740 (= (size!24737 lt!985817) (+ (size!24737 Nil!31964) (size!24737 (Cons!31964 lt!985330 Nil!31964)))))))

(declare-fun b!2767385 () Bool)

(declare-fun e!1744891 () List!32064)

(assert (=> b!2767385 (= e!1744891 (Cons!31964 lt!985330 Nil!31964))))

(declare-fun d!803382 () Bool)

(assert (=> d!803382 e!1744890))

(declare-fun res!1157739 () Bool)

(assert (=> d!803382 (=> (not res!1157739) (not e!1744890))))

(assert (=> d!803382 (= res!1157739 (= (content!4499 lt!985817) ((_ map or) (content!4499 Nil!31964) (content!4499 (Cons!31964 lt!985330 Nil!31964)))))))

(assert (=> d!803382 (= lt!985817 e!1744891)))

(declare-fun c!449103 () Bool)

(assert (=> d!803382 (= c!449103 ((_ is Nil!31964) Nil!31964))))

(assert (=> d!803382 (= (++!7910 Nil!31964 (Cons!31964 lt!985330 Nil!31964)) lt!985817)))

(declare-fun b!2767388 () Bool)

(assert (=> b!2767388 (= e!1744890 (or (not (= (Cons!31964 lt!985330 Nil!31964) Nil!31964)) (= lt!985817 Nil!31964)))))

(declare-fun b!2767386 () Bool)

(assert (=> b!2767386 (= e!1744891 (Cons!31964 (h!37384 Nil!31964) (++!7910 (t!228184 Nil!31964) (Cons!31964 lt!985330 Nil!31964))))))

(assert (= (and d!803382 c!449103) b!2767385))

(assert (= (and d!803382 (not c!449103)) b!2767386))

(assert (= (and d!803382 res!1157739) b!2767387))

(assert (= (and b!2767387 res!1157740) b!2767388))

(declare-fun m!3190993 () Bool)

(assert (=> b!2767387 m!3190993))

(assert (=> b!2767387 m!3190397))

(declare-fun m!3190995 () Bool)

(assert (=> b!2767387 m!3190995))

(declare-fun m!3190997 () Bool)

(assert (=> d!803382 m!3190997))

(assert (=> d!803382 m!3190695))

(declare-fun m!3190999 () Bool)

(assert (=> d!803382 m!3190999))

(declare-fun m!3191001 () Bool)

(assert (=> b!2767386 m!3191001))

(assert (=> b!2767093 d!803382))

(declare-fun b!2767391 () Bool)

(declare-fun res!1157742 () Bool)

(declare-fun e!1744892 () Bool)

(assert (=> b!2767391 (=> (not res!1157742) (not e!1744892))))

(declare-fun lt!985818 () List!32064)

(assert (=> b!2767391 (= res!1157742 (= (size!24737 lt!985818) (+ (size!24737 lt!985352) (size!24737 lt!985361))))))

(declare-fun b!2767389 () Bool)

(declare-fun e!1744893 () List!32064)

(assert (=> b!2767389 (= e!1744893 lt!985361)))

(declare-fun d!803384 () Bool)

(assert (=> d!803384 e!1744892))

(declare-fun res!1157741 () Bool)

(assert (=> d!803384 (=> (not res!1157741) (not e!1744892))))

(assert (=> d!803384 (= res!1157741 (= (content!4499 lt!985818) ((_ map or) (content!4499 lt!985352) (content!4499 lt!985361))))))

(assert (=> d!803384 (= lt!985818 e!1744893)))

(declare-fun c!449104 () Bool)

(assert (=> d!803384 (= c!449104 ((_ is Nil!31964) lt!985352))))

(assert (=> d!803384 (= (++!7910 lt!985352 lt!985361) lt!985818)))

(declare-fun b!2767392 () Bool)

(assert (=> b!2767392 (= e!1744892 (or (not (= lt!985361 Nil!31964)) (= lt!985818 lt!985352)))))

(declare-fun b!2767390 () Bool)

(assert (=> b!2767390 (= e!1744893 (Cons!31964 (h!37384 lt!985352) (++!7910 (t!228184 lt!985352) lt!985361)))))

(assert (= (and d!803384 c!449104) b!2767389))

(assert (= (and d!803384 (not c!449104)) b!2767390))

(assert (= (and d!803384 res!1157741) b!2767391))

(assert (= (and b!2767391 res!1157742) b!2767392))

(declare-fun m!3191003 () Bool)

(assert (=> b!2767391 m!3191003))

(assert (=> b!2767391 m!3190577))

(declare-fun m!3191005 () Bool)

(assert (=> b!2767391 m!3191005))

(declare-fun m!3191007 () Bool)

(assert (=> d!803384 m!3191007))

(declare-fun m!3191009 () Bool)

(assert (=> d!803384 m!3191009))

(declare-fun m!3191011 () Bool)

(assert (=> d!803384 m!3191011))

(declare-fun m!3191013 () Bool)

(assert (=> b!2767390 m!3191013))

(assert (=> b!2767093 d!803384))

(assert (=> b!2767093 d!803328))

(assert (=> b!2767093 d!803356))

(declare-fun d!803386 () Bool)

(assert (=> d!803386 (= (list!12066 (_1!18913 lt!985369)) (list!12067 (c!449005 (_1!18913 lt!985369))))))

(declare-fun bs!500386 () Bool)

(assert (= bs!500386 d!803386))

(declare-fun m!3191015 () Bool)

(assert (=> bs!500386 m!3191015))

(assert (=> b!2767093 d!803386))

(assert (=> b!2767093 d!803330))

(declare-fun d!803388 () Bool)

(assert (=> d!803388 (= (list!12066 (_2!18913 lt!985369)) (list!12067 (c!449005 (_2!18913 lt!985369))))))

(declare-fun bs!500387 () Bool)

(assert (= bs!500387 d!803388))

(declare-fun m!3191017 () Bool)

(assert (=> bs!500387 m!3191017))

(assert (=> b!2767093 d!803388))

(assert (=> bm!180589 d!803256))

(declare-fun bs!500388 () Bool)

(declare-fun d!803390 () Bool)

(assert (= bs!500388 (and d!803390 d!803376)))

(declare-fun lambda!101567 () Int)

(assert (=> bs!500388 (= (= lt!985363 lt!985340) (= lambda!101567 lambda!101566))))

(assert (=> d!803390 true))

(assert (=> d!803390 (= (derivationStepZipper!363 z!3597 lt!985363) (flatMap!184 z!3597 lambda!101567))))

(declare-fun bs!500389 () Bool)

(assert (= bs!500389 d!803390))

(declare-fun m!3191019 () Bool)

(assert (=> bs!500389 m!3191019))

(assert (=> bm!180602 d!803390))

(assert (=> bm!180591 d!803256))

(declare-fun d!803392 () Bool)

(assert (=> d!803392 (= (array_inv!4266 (_keys!4058 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) (bvsge (size!24735 (_keys!4058 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2767091 d!803392))

(declare-fun d!803394 () Bool)

(assert (=> d!803394 (= (array_inv!4268 (_values!4039 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) (bvsge (size!24734 (_values!4039 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2767091 d!803394))

(declare-fun d!803396 () Bool)

(assert (=> d!803396 (= (valid!2929 cacheUp!820) (validCacheMapUp!361 (cache!3807 cacheUp!820)))))

(declare-fun bs!500390 () Bool)

(assert (= bs!500390 d!803396))

(declare-fun m!3191021 () Bool)

(assert (=> bs!500390 m!3191021))

(assert (=> start!267884 d!803396))

(declare-fun d!803398 () Bool)

(declare-fun res!1157745 () Bool)

(declare-fun e!1744896 () Bool)

(assert (=> d!803398 (=> (not res!1157745) (not e!1744896))))

(assert (=> d!803398 (= res!1157745 ((_ is HashMap!3664) (cache!3807 cacheUp!820)))))

(assert (=> d!803398 (= (inv!43402 cacheUp!820) e!1744896)))

(declare-fun b!2767395 () Bool)

(assert (=> b!2767395 (= e!1744896 (validCacheMapUp!361 (cache!3807 cacheUp!820)))))

(assert (= (and d!803398 res!1157745) b!2767395))

(assert (=> b!2767395 m!3191021))

(assert (=> start!267884 d!803398))

(declare-fun d!803400 () Bool)

(declare-fun res!1157748 () Bool)

(declare-fun e!1744899 () Bool)

(assert (=> d!803400 (=> (not res!1157748) (not e!1744899))))

(assert (=> d!803400 (= res!1157748 ((_ is HashMap!3665) (cache!3808 cacheDown!939)))))

(assert (=> d!803400 (= (inv!43403 cacheDown!939) e!1744899)))

(declare-fun b!2767398 () Bool)

(assert (=> b!2767398 (= e!1744899 (validCacheMapDown!392 (cache!3808 cacheDown!939)))))

(assert (= (and d!803400 res!1157748) b!2767398))

(assert (=> b!2767398 m!3190461))

(assert (=> start!267884 d!803400))

(declare-fun d!803402 () Bool)

(assert (=> d!803402 (= (inv!43404 input!5495) (isBalanced!3035 (c!449005 input!5495)))))

(declare-fun bs!500391 () Bool)

(assert (= bs!500391 d!803402))

(assert (=> bs!500391 m!3190349))

(assert (=> start!267884 d!803402))

(declare-fun d!803404 () Bool)

(declare-fun lambda!101570 () Int)

(declare-fun forall!6619 (List!32061 Int) Bool)

(assert (=> d!803404 (= (inv!43400 setElem!22612) (forall!6619 (exprs!2793 setElem!22612) lambda!101570))))

(declare-fun bs!500392 () Bool)

(assert (= bs!500392 d!803404))

(declare-fun m!3191023 () Bool)

(assert (=> bs!500392 m!3191023))

(assert (=> setNonEmpty!22612 d!803404))

(assert (=> bm!180600 d!803266))

(declare-fun d!803406 () Bool)

(assert (=> d!803406 (= (valid!2928 (ite c!448995 (_3!2864 lt!985328) (_3!2864 lt!985397))) (validCacheMapDown!392 (cache!3808 (ite c!448995 (_3!2864 lt!985328) (_3!2864 lt!985397)))))))

(declare-fun bs!500393 () Bool)

(assert (= bs!500393 d!803406))

(declare-fun m!3191025 () Bool)

(assert (=> bs!500393 m!3191025))

(assert (=> bm!180587 d!803406))

(declare-fun e!1744905 () Bool)

(declare-fun b!2767407 () Bool)

(declare-fun tp!874593 () Bool)

(declare-fun tp!874592 () Bool)

(assert (=> b!2767407 (= e!1744905 (and (inv!43401 (left!24376 (c!449005 input!5495))) tp!874592 (inv!43401 (right!24706 (c!449005 input!5495))) tp!874593))))

(declare-fun b!2767409 () Bool)

(declare-fun e!1744904 () Bool)

(declare-fun tp!874591 () Bool)

(assert (=> b!2767409 (= e!1744904 tp!874591)))

(declare-fun b!2767408 () Bool)

(declare-fun inv!43407 (IArray!19919) Bool)

(assert (=> b!2767408 (= e!1744905 (and (inv!43407 (xs!13066 (c!449005 input!5495))) e!1744904))))

(assert (=> b!2767061 (= tp!874574 (and (inv!43401 (c!449005 input!5495)) e!1744905))))

(assert (= (and b!2767061 ((_ is Node!9957) (c!449005 input!5495))) b!2767407))

(assert (= b!2767408 b!2767409))

(assert (= (and b!2767061 ((_ is Leaf!15163) (c!449005 input!5495))) b!2767408))

(declare-fun m!3191027 () Bool)

(assert (=> b!2767407 m!3191027))

(declare-fun m!3191029 () Bool)

(assert (=> b!2767407 m!3191029))

(declare-fun m!3191031 () Bool)

(assert (=> b!2767408 m!3191031))

(assert (=> b!2767061 m!3190303))

(declare-fun b!2767418 () Bool)

(declare-fun e!1744913 () Bool)

(declare-fun tp!874602 () Bool)

(assert (=> b!2767418 (= e!1744913 tp!874602)))

(declare-fun e!1744914 () Bool)

(assert (=> b!2767069 (= tp!874575 e!1744914)))

(declare-fun setIsEmpty!22615 () Bool)

(declare-fun setRes!22615 () Bool)

(assert (=> setIsEmpty!22615 setRes!22615))

(declare-fun tp!874603 () Bool)

(declare-fun tp_is_empty!14007 () Bool)

(declare-fun b!2767419 () Bool)

(assert (=> b!2767419 (= e!1744914 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 mapDefault!17133)))) e!1744913 tp_is_empty!14007 setRes!22615 tp!874603))))

(declare-fun condSetEmpty!22615 () Bool)

(assert (=> b!2767419 (= condSetEmpty!22615 (= (_2!18906 (h!37382 mapDefault!17133)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767420 () Bool)

(declare-fun e!1744912 () Bool)

(declare-fun tp!874604 () Bool)

(assert (=> b!2767420 (= e!1744912 tp!874604)))

(declare-fun setNonEmpty!22615 () Bool)

(declare-fun setElem!22615 () Context!4586)

(declare-fun tp!874605 () Bool)

(assert (=> setNonEmpty!22615 (= setRes!22615 (and tp!874605 (inv!43400 setElem!22615) e!1744912))))

(declare-fun setRest!22615 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22615 (= (_2!18906 (h!37382 mapDefault!17133)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22615 true) setRest!22615))))

(assert (= b!2767419 b!2767418))

(assert (= (and b!2767419 condSetEmpty!22615) setIsEmpty!22615))

(assert (= (and b!2767419 (not condSetEmpty!22615)) setNonEmpty!22615))

(assert (= setNonEmpty!22615 b!2767420))

(assert (= (and b!2767069 ((_ is Cons!31962) mapDefault!17133)) b!2767419))

(declare-fun m!3191033 () Bool)

(assert (=> b!2767419 m!3191033))

(declare-fun m!3191035 () Bool)

(assert (=> setNonEmpty!22615 m!3191035))

(declare-fun b!2767429 () Bool)

(declare-fun e!1744922 () Bool)

(declare-fun tp!874616 () Bool)

(assert (=> b!2767429 (= e!1744922 tp!874616)))

(declare-fun e!1744921 () Bool)

(assert (=> b!2767085 (= tp!874584 e!1744921)))

(declare-fun setIsEmpty!22618 () Bool)

(declare-fun setRes!22618 () Bool)

(assert (=> setIsEmpty!22618 setRes!22618))

(declare-fun e!1744923 () Bool)

(declare-fun setElem!22618 () Context!4586)

(declare-fun tp!874617 () Bool)

(declare-fun setNonEmpty!22618 () Bool)

(assert (=> setNonEmpty!22618 (= setRes!22618 (and tp!874617 (inv!43400 setElem!22618) e!1744923))))

(declare-fun setRest!22618 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22618 (= (_2!18908 (h!37383 mapDefault!17134)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22618 true) setRest!22618))))

(declare-fun tp!874618 () Bool)

(declare-fun tp!874620 () Bool)

(declare-fun b!2767430 () Bool)

(assert (=> b!2767430 (= e!1744921 (and tp!874620 (inv!43400 (_2!18907 (_1!18908 (h!37383 mapDefault!17134)))) e!1744922 tp_is_empty!14007 setRes!22618 tp!874618))))

(declare-fun condSetEmpty!22618 () Bool)

(assert (=> b!2767430 (= condSetEmpty!22618 (= (_2!18908 (h!37383 mapDefault!17134)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767431 () Bool)

(declare-fun tp!874619 () Bool)

(assert (=> b!2767431 (= e!1744923 tp!874619)))

(assert (= b!2767430 b!2767429))

(assert (= (and b!2767430 condSetEmpty!22618) setIsEmpty!22618))

(assert (= (and b!2767430 (not condSetEmpty!22618)) setNonEmpty!22618))

(assert (= setNonEmpty!22618 b!2767431))

(assert (= (and b!2767085 ((_ is Cons!31963) mapDefault!17134)) b!2767430))

(declare-fun m!3191037 () Bool)

(assert (=> setNonEmpty!22618 m!3191037))

(declare-fun m!3191039 () Bool)

(assert (=> b!2767430 m!3191039))

(declare-fun mapNonEmpty!17137 () Bool)

(declare-fun mapRes!17137 () Bool)

(declare-fun tp!874644 () Bool)

(declare-fun e!1744941 () Bool)

(assert (=> mapNonEmpty!17137 (= mapRes!17137 (and tp!874644 e!1744941))))

(declare-fun mapKey!17137 () (_ BitVec 32))

(declare-fun mapValue!17137 () List!32063)

(declare-fun mapRest!17137 () (Array (_ BitVec 32) List!32063))

(assert (=> mapNonEmpty!17137 (= mapRest!17134 (store mapRest!17137 mapKey!17137 mapValue!17137))))

(declare-fun b!2767446 () Bool)

(declare-fun e!1744936 () Bool)

(declare-fun tp!874651 () Bool)

(assert (=> b!2767446 (= e!1744936 tp!874651)))

(declare-fun tp!874653 () Bool)

(declare-fun setRes!22624 () Bool)

(declare-fun mapDefault!17137 () List!32063)

(declare-fun e!1744939 () Bool)

(declare-fun b!2767447 () Bool)

(declare-fun tp!874647 () Bool)

(declare-fun e!1744938 () Bool)

(assert (=> b!2767447 (= e!1744938 (and tp!874647 (inv!43400 (_2!18907 (_1!18908 (h!37383 mapDefault!17137)))) e!1744939 tp_is_empty!14007 setRes!22624 tp!874653))))

(declare-fun condSetEmpty!22623 () Bool)

(assert (=> b!2767447 (= condSetEmpty!22623 (= (_2!18908 (h!37383 mapDefault!17137)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun mapIsEmpty!17137 () Bool)

(assert (=> mapIsEmpty!17137 mapRes!17137))

(declare-fun setIsEmpty!22623 () Bool)

(declare-fun setRes!22623 () Bool)

(assert (=> setIsEmpty!22623 setRes!22623))

(declare-fun tp!874643 () Bool)

(declare-fun b!2767448 () Bool)

(declare-fun tp!874652 () Bool)

(assert (=> b!2767448 (= e!1744941 (and tp!874643 (inv!43400 (_2!18907 (_1!18908 (h!37383 mapValue!17137)))) e!1744936 tp_is_empty!14007 setRes!22623 tp!874652))))

(declare-fun condSetEmpty!22624 () Bool)

(assert (=> b!2767448 (= condSetEmpty!22624 (= (_2!18908 (h!37383 mapValue!17137)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767449 () Bool)

(declare-fun e!1744937 () Bool)

(declare-fun tp!874649 () Bool)

(assert (=> b!2767449 (= e!1744937 tp!874649)))

(declare-fun b!2767450 () Bool)

(declare-fun tp!874645 () Bool)

(assert (=> b!2767450 (= e!1744939 tp!874645)))

(declare-fun condMapEmpty!17137 () Bool)

(assert (=> mapNonEmpty!17134 (= condMapEmpty!17137 (= mapRest!17134 ((as const (Array (_ BitVec 32) List!32063)) mapDefault!17137)))))

(assert (=> mapNonEmpty!17134 (= tp!874572 (and e!1744938 mapRes!17137))))

(declare-fun b!2767451 () Bool)

(declare-fun e!1744940 () Bool)

(declare-fun tp!874650 () Bool)

(assert (=> b!2767451 (= e!1744940 tp!874650)))

(declare-fun setIsEmpty!22624 () Bool)

(assert (=> setIsEmpty!22624 setRes!22624))

(declare-fun tp!874648 () Bool)

(declare-fun setElem!22623 () Context!4586)

(declare-fun setNonEmpty!22623 () Bool)

(assert (=> setNonEmpty!22623 (= setRes!22624 (and tp!874648 (inv!43400 setElem!22623) e!1744940))))

(declare-fun setRest!22623 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22623 (= (_2!18908 (h!37383 mapDefault!17137)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22623 true) setRest!22623))))

(declare-fun setElem!22624 () Context!4586)

(declare-fun tp!874646 () Bool)

(declare-fun setNonEmpty!22624 () Bool)

(assert (=> setNonEmpty!22624 (= setRes!22623 (and tp!874646 (inv!43400 setElem!22624) e!1744937))))

(declare-fun setRest!22624 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22624 (= (_2!18908 (h!37383 mapValue!17137)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22624 true) setRest!22624))))

(assert (= (and mapNonEmpty!17134 condMapEmpty!17137) mapIsEmpty!17137))

(assert (= (and mapNonEmpty!17134 (not condMapEmpty!17137)) mapNonEmpty!17137))

(assert (= b!2767448 b!2767446))

(assert (= (and b!2767448 condSetEmpty!22624) setIsEmpty!22623))

(assert (= (and b!2767448 (not condSetEmpty!22624)) setNonEmpty!22624))

(assert (= setNonEmpty!22624 b!2767449))

(assert (= (and mapNonEmpty!17137 ((_ is Cons!31963) mapValue!17137)) b!2767448))

(assert (= b!2767447 b!2767450))

(assert (= (and b!2767447 condSetEmpty!22623) setIsEmpty!22624))

(assert (= (and b!2767447 (not condSetEmpty!22623)) setNonEmpty!22623))

(assert (= setNonEmpty!22623 b!2767451))

(assert (= (and mapNonEmpty!17134 ((_ is Cons!31963) mapDefault!17137)) b!2767447))

(declare-fun m!3191041 () Bool)

(assert (=> b!2767447 m!3191041))

(declare-fun m!3191043 () Bool)

(assert (=> mapNonEmpty!17137 m!3191043))

(declare-fun m!3191045 () Bool)

(assert (=> setNonEmpty!22623 m!3191045))

(declare-fun m!3191047 () Bool)

(assert (=> setNonEmpty!22624 m!3191047))

(declare-fun m!3191049 () Bool)

(assert (=> b!2767448 m!3191049))

(declare-fun b!2767452 () Bool)

(declare-fun e!1744943 () Bool)

(declare-fun tp!874654 () Bool)

(assert (=> b!2767452 (= e!1744943 tp!874654)))

(declare-fun e!1744942 () Bool)

(assert (=> mapNonEmpty!17134 (= tp!874568 e!1744942)))

(declare-fun setIsEmpty!22625 () Bool)

(declare-fun setRes!22625 () Bool)

(assert (=> setIsEmpty!22625 setRes!22625))

(declare-fun tp!874655 () Bool)

(declare-fun e!1744944 () Bool)

(declare-fun setElem!22625 () Context!4586)

(declare-fun setNonEmpty!22625 () Bool)

(assert (=> setNonEmpty!22625 (= setRes!22625 (and tp!874655 (inv!43400 setElem!22625) e!1744944))))

(declare-fun setRest!22625 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22625 (= (_2!18908 (h!37383 mapValue!17133)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22625 true) setRest!22625))))

(declare-fun b!2767453 () Bool)

(declare-fun tp!874658 () Bool)

(declare-fun tp!874656 () Bool)

(assert (=> b!2767453 (= e!1744942 (and tp!874658 (inv!43400 (_2!18907 (_1!18908 (h!37383 mapValue!17133)))) e!1744943 tp_is_empty!14007 setRes!22625 tp!874656))))

(declare-fun condSetEmpty!22625 () Bool)

(assert (=> b!2767453 (= condSetEmpty!22625 (= (_2!18908 (h!37383 mapValue!17133)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767454 () Bool)

(declare-fun tp!874657 () Bool)

(assert (=> b!2767454 (= e!1744944 tp!874657)))

(assert (= b!2767453 b!2767452))

(assert (= (and b!2767453 condSetEmpty!22625) setIsEmpty!22625))

(assert (= (and b!2767453 (not condSetEmpty!22625)) setNonEmpty!22625))

(assert (= setNonEmpty!22625 b!2767454))

(assert (= (and mapNonEmpty!17134 ((_ is Cons!31963) mapValue!17133)) b!2767453))

(declare-fun m!3191051 () Bool)

(assert (=> setNonEmpty!22625 m!3191051))

(declare-fun m!3191053 () Bool)

(assert (=> b!2767453 m!3191053))

(declare-fun b!2767455 () Bool)

(declare-fun e!1744946 () Bool)

(declare-fun tp!874659 () Bool)

(assert (=> b!2767455 (= e!1744946 tp!874659)))

(declare-fun e!1744947 () Bool)

(assert (=> b!2767091 (= tp!874576 e!1744947)))

(declare-fun setIsEmpty!22626 () Bool)

(declare-fun setRes!22626 () Bool)

(assert (=> setIsEmpty!22626 setRes!22626))

(declare-fun tp!874660 () Bool)

(declare-fun b!2767456 () Bool)

(assert (=> b!2767456 (= e!1744947 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 (zeroValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))))) e!1744946 tp_is_empty!14007 setRes!22626 tp!874660))))

(declare-fun condSetEmpty!22626 () Bool)

(assert (=> b!2767456 (= condSetEmpty!22626 (= (_2!18906 (h!37382 (zeroValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767457 () Bool)

(declare-fun e!1744945 () Bool)

(declare-fun tp!874661 () Bool)

(assert (=> b!2767457 (= e!1744945 tp!874661)))

(declare-fun setElem!22626 () Context!4586)

(declare-fun tp!874662 () Bool)

(declare-fun setNonEmpty!22626 () Bool)

(assert (=> setNonEmpty!22626 (= setRes!22626 (and tp!874662 (inv!43400 setElem!22626) e!1744945))))

(declare-fun setRest!22626 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22626 (= (_2!18906 (h!37382 (zeroValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22626 true) setRest!22626))))

(assert (= b!2767456 b!2767455))

(assert (= (and b!2767456 condSetEmpty!22626) setIsEmpty!22626))

(assert (= (and b!2767456 (not condSetEmpty!22626)) setNonEmpty!22626))

(assert (= setNonEmpty!22626 b!2767457))

(assert (= (and b!2767091 ((_ is Cons!31962) (zeroValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) b!2767456))

(declare-fun m!3191055 () Bool)

(assert (=> b!2767456 m!3191055))

(declare-fun m!3191057 () Bool)

(assert (=> setNonEmpty!22626 m!3191057))

(declare-fun b!2767458 () Bool)

(declare-fun e!1744949 () Bool)

(declare-fun tp!874663 () Bool)

(assert (=> b!2767458 (= e!1744949 tp!874663)))

(declare-fun e!1744950 () Bool)

(assert (=> b!2767091 (= tp!874571 e!1744950)))

(declare-fun setIsEmpty!22627 () Bool)

(declare-fun setRes!22627 () Bool)

(assert (=> setIsEmpty!22627 setRes!22627))

(declare-fun b!2767459 () Bool)

(declare-fun tp!874664 () Bool)

(assert (=> b!2767459 (= e!1744950 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 (minValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))))) e!1744949 tp_is_empty!14007 setRes!22627 tp!874664))))

(declare-fun condSetEmpty!22627 () Bool)

(assert (=> b!2767459 (= condSetEmpty!22627 (= (_2!18906 (h!37382 (minValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767460 () Bool)

(declare-fun e!1744948 () Bool)

(declare-fun tp!874665 () Bool)

(assert (=> b!2767460 (= e!1744948 tp!874665)))

(declare-fun setNonEmpty!22627 () Bool)

(declare-fun setElem!22627 () Context!4586)

(declare-fun tp!874666 () Bool)

(assert (=> setNonEmpty!22627 (= setRes!22627 (and tp!874666 (inv!43400 setElem!22627) e!1744948))))

(declare-fun setRest!22627 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22627 (= (_2!18906 (h!37382 (minValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22627 true) setRest!22627))))

(assert (= b!2767459 b!2767458))

(assert (= (and b!2767459 condSetEmpty!22627) setIsEmpty!22627))

(assert (= (and b!2767459 (not condSetEmpty!22627)) setNonEmpty!22627))

(assert (= setNonEmpty!22627 b!2767460))

(assert (= (and b!2767091 ((_ is Cons!31962) (minValue!4017 (v!33569 (underlying!7719 (v!33570 (underlying!7720 (cache!3807 cacheUp!820)))))))) b!2767459))

(declare-fun m!3191059 () Bool)

(assert (=> b!2767459 m!3191059))

(declare-fun m!3191061 () Bool)

(assert (=> setNonEmpty!22627 m!3191061))

(declare-fun mapNonEmpty!17140 () Bool)

(declare-fun mapRes!17140 () Bool)

(declare-fun tp!874691 () Bool)

(declare-fun e!1744965 () Bool)

(assert (=> mapNonEmpty!17140 (= mapRes!17140 (and tp!874691 e!1744965))))

(declare-fun mapRest!17140 () (Array (_ BitVec 32) List!32062))

(declare-fun mapKey!17140 () (_ BitVec 32))

(declare-fun mapValue!17140 () List!32062)

(assert (=> mapNonEmpty!17140 (= mapRest!17133 (store mapRest!17140 mapKey!17140 mapValue!17140))))

(declare-fun b!2767475 () Bool)

(declare-fun e!1744966 () Bool)

(declare-fun tp!874690 () Bool)

(assert (=> b!2767475 (= e!1744966 tp!874690)))

(declare-fun setIsEmpty!22632 () Bool)

(declare-fun setRes!22632 () Bool)

(assert (=> setIsEmpty!22632 setRes!22632))

(declare-fun b!2767476 () Bool)

(declare-fun tp!874693 () Bool)

(declare-fun e!1744967 () Bool)

(assert (=> b!2767476 (= e!1744965 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 mapValue!17140)))) e!1744967 tp_is_empty!14007 setRes!22632 tp!874693))))

(declare-fun condSetEmpty!22632 () Bool)

(assert (=> b!2767476 (= condSetEmpty!22632 (= (_2!18906 (h!37382 mapValue!17140)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767478 () Bool)

(declare-fun e!1744968 () Bool)

(declare-fun tp!874688 () Bool)

(assert (=> b!2767478 (= e!1744968 tp!874688)))

(declare-fun mapIsEmpty!17140 () Bool)

(assert (=> mapIsEmpty!17140 mapRes!17140))

(declare-fun setIsEmpty!22633 () Bool)

(declare-fun setRes!22633 () Bool)

(assert (=> setIsEmpty!22633 setRes!22633))

(declare-fun b!2767479 () Bool)

(declare-fun mapDefault!17140 () List!32062)

(declare-fun tp!874686 () Bool)

(declare-fun e!1744964 () Bool)

(assert (=> b!2767479 (= e!1744964 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 mapDefault!17140)))) e!1744968 tp_is_empty!14007 setRes!22633 tp!874686))))

(declare-fun condSetEmpty!22633 () Bool)

(assert (=> b!2767479 (= condSetEmpty!22633 (= (_2!18906 (h!37382 mapDefault!17140)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun tp!874687 () Bool)

(declare-fun setElem!22632 () Context!4586)

(declare-fun setNonEmpty!22632 () Bool)

(assert (=> setNonEmpty!22632 (= setRes!22633 (and tp!874687 (inv!43400 setElem!22632) e!1744966))))

(declare-fun setRest!22633 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22632 (= (_2!18906 (h!37382 mapDefault!17140)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22632 true) setRest!22633))))

(declare-fun b!2767480 () Bool)

(declare-fun e!1744963 () Bool)

(declare-fun tp!874689 () Bool)

(assert (=> b!2767480 (= e!1744963 tp!874689)))

(declare-fun setElem!22633 () Context!4586)

(declare-fun tp!874685 () Bool)

(declare-fun setNonEmpty!22633 () Bool)

(assert (=> setNonEmpty!22633 (= setRes!22632 (and tp!874685 (inv!43400 setElem!22633) e!1744963))))

(declare-fun setRest!22632 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22633 (= (_2!18906 (h!37382 mapValue!17140)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22633 true) setRest!22632))))

(declare-fun condMapEmpty!17140 () Bool)

(assert (=> mapNonEmpty!17133 (= condMapEmpty!17140 (= mapRest!17133 ((as const (Array (_ BitVec 32) List!32062)) mapDefault!17140)))))

(assert (=> mapNonEmpty!17133 (= tp!874581 (and e!1744964 mapRes!17140))))

(declare-fun b!2767477 () Bool)

(declare-fun tp!874692 () Bool)

(assert (=> b!2767477 (= e!1744967 tp!874692)))

(assert (= (and mapNonEmpty!17133 condMapEmpty!17140) mapIsEmpty!17140))

(assert (= (and mapNonEmpty!17133 (not condMapEmpty!17140)) mapNonEmpty!17140))

(assert (= b!2767476 b!2767477))

(assert (= (and b!2767476 condSetEmpty!22632) setIsEmpty!22632))

(assert (= (and b!2767476 (not condSetEmpty!22632)) setNonEmpty!22633))

(assert (= setNonEmpty!22633 b!2767480))

(assert (= (and mapNonEmpty!17140 ((_ is Cons!31962) mapValue!17140)) b!2767476))

(assert (= b!2767479 b!2767478))

(assert (= (and b!2767479 condSetEmpty!22633) setIsEmpty!22633))

(assert (= (and b!2767479 (not condSetEmpty!22633)) setNonEmpty!22632))

(assert (= setNonEmpty!22632 b!2767475))

(assert (= (and mapNonEmpty!17133 ((_ is Cons!31962) mapDefault!17140)) b!2767479))

(declare-fun m!3191063 () Bool)

(assert (=> mapNonEmpty!17140 m!3191063))

(declare-fun m!3191065 () Bool)

(assert (=> setNonEmpty!22632 m!3191065))

(declare-fun m!3191067 () Bool)

(assert (=> setNonEmpty!22633 m!3191067))

(declare-fun m!3191069 () Bool)

(assert (=> b!2767476 m!3191069))

(declare-fun m!3191071 () Bool)

(assert (=> b!2767479 m!3191071))

(declare-fun b!2767481 () Bool)

(declare-fun e!1744970 () Bool)

(declare-fun tp!874694 () Bool)

(assert (=> b!2767481 (= e!1744970 tp!874694)))

(declare-fun e!1744971 () Bool)

(assert (=> mapNonEmpty!17133 (= tp!874570 e!1744971)))

(declare-fun setIsEmpty!22634 () Bool)

(declare-fun setRes!22634 () Bool)

(assert (=> setIsEmpty!22634 setRes!22634))

(declare-fun tp!874695 () Bool)

(declare-fun b!2767482 () Bool)

(assert (=> b!2767482 (= e!1744971 (and (inv!43400 (_1!18905 (_1!18906 (h!37382 mapValue!17134)))) e!1744970 tp_is_empty!14007 setRes!22634 tp!874695))))

(declare-fun condSetEmpty!22634 () Bool)

(assert (=> b!2767482 (= condSetEmpty!22634 (= (_2!18906 (h!37382 mapValue!17134)) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767483 () Bool)

(declare-fun e!1744969 () Bool)

(declare-fun tp!874696 () Bool)

(assert (=> b!2767483 (= e!1744969 tp!874696)))

(declare-fun tp!874697 () Bool)

(declare-fun setNonEmpty!22634 () Bool)

(declare-fun setElem!22634 () Context!4586)

(assert (=> setNonEmpty!22634 (= setRes!22634 (and tp!874697 (inv!43400 setElem!22634) e!1744969))))

(declare-fun setRest!22634 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22634 (= (_2!18906 (h!37382 mapValue!17134)) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22634 true) setRest!22634))))

(assert (= b!2767482 b!2767481))

(assert (= (and b!2767482 condSetEmpty!22634) setIsEmpty!22634))

(assert (= (and b!2767482 (not condSetEmpty!22634)) setNonEmpty!22634))

(assert (= setNonEmpty!22634 b!2767483))

(assert (= (and mapNonEmpty!17133 ((_ is Cons!31962) mapValue!17134)) b!2767482))

(declare-fun m!3191073 () Bool)

(assert (=> b!2767482 m!3191073))

(declare-fun m!3191075 () Bool)

(assert (=> setNonEmpty!22634 m!3191075))

(declare-fun condSetEmpty!22637 () Bool)

(assert (=> setNonEmpty!22612 (= condSetEmpty!22637 (= setRest!22612 ((as const (Array Context!4586 Bool)) false)))))

(declare-fun setRes!22637 () Bool)

(assert (=> setNonEmpty!22612 (= tp!874580 setRes!22637)))

(declare-fun setIsEmpty!22637 () Bool)

(assert (=> setIsEmpty!22637 setRes!22637))

(declare-fun tp!874703 () Bool)

(declare-fun setNonEmpty!22637 () Bool)

(declare-fun setElem!22637 () Context!4586)

(declare-fun e!1744974 () Bool)

(assert (=> setNonEmpty!22637 (= setRes!22637 (and tp!874703 (inv!43400 setElem!22637) e!1744974))))

(declare-fun setRest!22637 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22637 (= setRest!22612 ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22637 true) setRest!22637))))

(declare-fun b!2767488 () Bool)

(declare-fun tp!874702 () Bool)

(assert (=> b!2767488 (= e!1744974 tp!874702)))

(assert (= (and setNonEmpty!22612 condSetEmpty!22637) setIsEmpty!22637))

(assert (= (and setNonEmpty!22612 (not condSetEmpty!22637)) setNonEmpty!22637))

(assert (= setNonEmpty!22637 b!2767488))

(declare-fun m!3191077 () Bool)

(assert (=> setNonEmpty!22637 m!3191077))

(declare-fun b!2767493 () Bool)

(declare-fun e!1744977 () Bool)

(declare-fun tp!874708 () Bool)

(declare-fun tp!874709 () Bool)

(assert (=> b!2767493 (= e!1744977 (and tp!874708 tp!874709))))

(assert (=> b!2767104 (= tp!874573 e!1744977)))

(assert (= (and b!2767104 ((_ is Cons!31961) (exprs!2793 setElem!22612))) b!2767493))

(declare-fun b!2767494 () Bool)

(declare-fun e!1744979 () Bool)

(declare-fun tp!874710 () Bool)

(assert (=> b!2767494 (= e!1744979 tp!874710)))

(declare-fun e!1744978 () Bool)

(assert (=> b!2767065 (= tp!874578 e!1744978)))

(declare-fun setIsEmpty!22638 () Bool)

(declare-fun setRes!22638 () Bool)

(assert (=> setIsEmpty!22638 setRes!22638))

(declare-fun e!1744980 () Bool)

(declare-fun tp!874711 () Bool)

(declare-fun setElem!22638 () Context!4586)

(declare-fun setNonEmpty!22638 () Bool)

(assert (=> setNonEmpty!22638 (= setRes!22638 (and tp!874711 (inv!43400 setElem!22638) e!1744980))))

(declare-fun setRest!22638 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22638 (= (_2!18908 (h!37383 (zeroValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22638 true) setRest!22638))))

(declare-fun b!2767495 () Bool)

(declare-fun tp!874714 () Bool)

(declare-fun tp!874712 () Bool)

(assert (=> b!2767495 (= e!1744978 (and tp!874714 (inv!43400 (_2!18907 (_1!18908 (h!37383 (zeroValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))))) e!1744979 tp_is_empty!14007 setRes!22638 tp!874712))))

(declare-fun condSetEmpty!22638 () Bool)

(assert (=> b!2767495 (= condSetEmpty!22638 (= (_2!18908 (h!37383 (zeroValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767496 () Bool)

(declare-fun tp!874713 () Bool)

(assert (=> b!2767496 (= e!1744980 tp!874713)))

(assert (= b!2767495 b!2767494))

(assert (= (and b!2767495 condSetEmpty!22638) setIsEmpty!22638))

(assert (= (and b!2767495 (not condSetEmpty!22638)) setNonEmpty!22638))

(assert (= setNonEmpty!22638 b!2767496))

(assert (= (and b!2767065 ((_ is Cons!31963) (zeroValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) b!2767495))

(declare-fun m!3191079 () Bool)

(assert (=> setNonEmpty!22638 m!3191079))

(declare-fun m!3191081 () Bool)

(assert (=> b!2767495 m!3191081))

(declare-fun b!2767497 () Bool)

(declare-fun e!1744982 () Bool)

(declare-fun tp!874715 () Bool)

(assert (=> b!2767497 (= e!1744982 tp!874715)))

(declare-fun e!1744981 () Bool)

(assert (=> b!2767065 (= tp!874579 e!1744981)))

(declare-fun setIsEmpty!22639 () Bool)

(declare-fun setRes!22639 () Bool)

(assert (=> setIsEmpty!22639 setRes!22639))

(declare-fun e!1744983 () Bool)

(declare-fun tp!874716 () Bool)

(declare-fun setNonEmpty!22639 () Bool)

(declare-fun setElem!22639 () Context!4586)

(assert (=> setNonEmpty!22639 (= setRes!22639 (and tp!874716 (inv!43400 setElem!22639) e!1744983))))

(declare-fun setRest!22639 () (InoxSet Context!4586))

(assert (=> setNonEmpty!22639 (= (_2!18908 (h!37383 (minValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4586 Bool)) false) setElem!22639 true) setRest!22639))))

(declare-fun tp!874719 () Bool)

(declare-fun b!2767498 () Bool)

(declare-fun tp!874717 () Bool)

(assert (=> b!2767498 (= e!1744981 (and tp!874719 (inv!43400 (_2!18907 (_1!18908 (h!37383 (minValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))))) e!1744982 tp_is_empty!14007 setRes!22639 tp!874717))))

(declare-fun condSetEmpty!22639 () Bool)

(assert (=> b!2767498 (= condSetEmpty!22639 (= (_2!18908 (h!37383 (minValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) ((as const (Array Context!4586 Bool)) false)))))

(declare-fun b!2767499 () Bool)

(declare-fun tp!874718 () Bool)

(assert (=> b!2767499 (= e!1744983 tp!874718)))

(assert (= b!2767498 b!2767497))

(assert (= (and b!2767498 condSetEmpty!22639) setIsEmpty!22639))

(assert (= (and b!2767498 (not condSetEmpty!22639)) setNonEmpty!22639))

(assert (= setNonEmpty!22639 b!2767499))

(assert (= (and b!2767065 ((_ is Cons!31963) (minValue!4018 (v!33571 (underlying!7721 (v!33572 (underlying!7722 (cache!3808 cacheDown!939)))))))) b!2767498))

(declare-fun m!3191083 () Bool)

(assert (=> setNonEmpty!22639 m!3191083))

(declare-fun m!3191085 () Bool)

(assert (=> b!2767498 m!3191085))

(check-sat (not bm!180639) (not b!2767460) (not b!2767172) (not d!803288) (not d!803378) (not b!2767458) (not d!803296) (not bm!180665) (not b!2767304) (not d!803386) (not d!803376) (not b!2767301) (not b_next!78839) (not b!2767061) (not b!2767359) (not b!2767477) (not d!803320) (not b!2767446) (not b!2767481) (not bm!180636) (not setNonEmpty!22618) (not b!2767449) (not bm!180644) (not b!2767292) (not b!2767483) (not setNonEmpty!22626) (not d!803358) (not b!2767476) b_and!202873 (not b!2767254) (not d!803262) (not b!2767257) (not d!803290) (not b!2767430) (not setNonEmpty!22625) (not d!803292) (not setNonEmpty!22639) (not b!2767303) (not d!803382) (not b!2767497) (not b!2767372) (not b!2767237) (not b!2767496) (not setNonEmpty!22624) (not b!2767129) (not b!2767447) (not b!2767459) (not b!2767291) (not b!2767451) (not d!803384) (not b!2767453) (not bm!180647) (not d!803294) (not b!2767227) (not b!2767409) (not setNonEmpty!22638) (not b!2767380) (not d!803310) (not d!803396) (not d!803280) (not b!2767420) (not b!2767328) (not b!2767395) (not bm!180645) (not b!2767171) (not bm!180691) (not setNonEmpty!22633) (not b!2767226) (not b!2767128) (not b!2767331) (not bm!180695) (not bm!180694) (not d!803270) (not bm!180687) (not bm!180671) (not b!2767256) (not d!803260) (not b!2767211) (not b!2767373) (not d!803388) (not d!803352) (not setNonEmpty!22623) (not b!2767281) (not b!2767117) (not bm!180690) (not b!2767452) (not d!803312) (not d!803256) (not d!803402) (not d!803336) (not d!803264) (not b!2767488) (not bm!180680) (not b!2767152) (not setNonEmpty!22615) (not d!803370) (not bm!180698) (not d!803334) (not b!2767478) (not bm!180678) (not bm!180676) (not b!2767448) (not b!2767366) (not b!2767475) (not b!2767287) (not bm!180692) (not bm!180669) (not b!2767450) (not bm!180628) (not bm!180641) (not b!2767307) (not b!2767173) (not d!803406) (not d!803344) (not d!803374) (not b!2767429) (not b!2767221) b_and!202871 (not d!803342) (not b!2767498) (not bm!180668) (not bm!180664) (not b!2767391) (not bm!180681) (not bm!180670) (not b!2767220) (not b!2767309) (not d!803356) (not mapNonEmpty!17137) (not b!2767494) (not b!2767457) b_and!202875 (not b!2767299) (not bm!180640) (not b_next!78841) (not d!803258) (not b!2767456) (not d!803308) (not bm!180635) (not d!803286) (not b!2767368) (not bm!180631) (not b!2767495) (not b!2767241) (not setNonEmpty!22632) (not bm!180693) (not bm!180688) (not bm!180677) (not d!803362) (not d!803380) (not d!803306) (not b!2767288) (not b!2767274) (not d!803338) (not d!803304) (not b!2767390) (not b!2767382) (not b!2767407) (not bm!180629) (not bm!180689) (not b!2767205) (not d!803360) (not b!2767454) (not b!2767283) (not b!2767238) (not b!2767375) (not bm!180679) (not d!803324) (not b!2767240) (not d!803350) (not b!2767480) (not b!2767479) (not bm!180683) (not bm!180682) tp_is_empty!14007 (not b!2767315) (not b!2767284) (not bm!180637) (not b!2767381) (not b!2767116) (not b_next!78843) (not b!2767326) (not bm!180633) (not bm!180632) (not bm!180666) (not d!803368) (not d!803366) (not b!2767127) (not b!2767431) (not b!2767482) (not mapNonEmpty!17140) (not b!2767210) (not bm!180642) (not b_next!78837) (not b!2767387) (not b!2767293) (not d!803266) (not bm!180630) (not b!2767371) (not bm!180685) (not b!2767418) (not d!803284) (not d!803302) (not bm!180646) (not bm!180634) (not d!803354) (not b!2767358) (not b!2767499) (not b!2767398) (not d!803272) (not d!803404) (not bm!180643) (not b!2767455) (not b!2767258) (not b!2767314) (not d!803348) (not b!2767280) (not d!803278) b_and!202877 (not bm!180684) (not b!2767255) (not setNonEmpty!22637) (not b!2767376) (not d!803276) (not b!2767386) (not b!2767367) (not setNonEmpty!22634) (not b!2767330) (not d!803318) (not b!2767259) (not d!803300) (not b!2767408) (not b!2767262) (not bm!180686) (not b!2767419) (not b!2767162) (not bm!180667) (not setNonEmpty!22627) (not d!803282) (not d!803390) (not bm!180638) (not b!2767493) (not b!2767203))
(check-sat (not b_next!78839) b_and!202873 b_and!202871 (not b_next!78843) (not b_next!78837) b_and!202877 b_and!202875 (not b_next!78841))
