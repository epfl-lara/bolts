; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267634 () Bool)

(assert start!267634)

(declare-fun b!2764628 () Bool)

(declare-fun b_free!78069 () Bool)

(declare-fun b_next!78773 () Bool)

(assert (=> b!2764628 (= b_free!78069 (not b_next!78773))))

(declare-fun tp!873758 () Bool)

(declare-fun b_and!202807 () Bool)

(assert (=> b!2764628 (= tp!873758 b_and!202807)))

(declare-fun b!2764620 () Bool)

(declare-fun b_free!78071 () Bool)

(declare-fun b_next!78775 () Bool)

(assert (=> b!2764620 (= b_free!78071 (not b_next!78775))))

(declare-fun tp!873757 () Bool)

(declare-fun b_and!202809 () Bool)

(assert (=> b!2764620 (= tp!873757 b_and!202809)))

(declare-fun b!2764654 () Bool)

(declare-fun b_free!78073 () Bool)

(declare-fun b_next!78777 () Bool)

(assert (=> b!2764654 (= b_free!78073 (not b_next!78777))))

(declare-fun tp!873761 () Bool)

(declare-fun b_and!202811 () Bool)

(assert (=> b!2764654 (= tp!873761 b_and!202811)))

(declare-fun b!2764650 () Bool)

(declare-fun b_free!78075 () Bool)

(declare-fun b_next!78779 () Bool)

(assert (=> b!2764650 (= b_free!78075 (not b_next!78779))))

(declare-fun tp!873755 () Bool)

(declare-fun b_and!202813 () Bool)

(assert (=> b!2764650 (= tp!873755 b_and!202813)))

(declare-fun b!2764608 () Bool)

(declare-datatypes ((Unit!45955 0))(
  ( (Unit!45956) )
))
(declare-fun e!1743093 () Unit!45955)

(declare-fun Unit!45957 () Unit!45955)

(assert (=> b!2764608 (= e!1743093 Unit!45957)))

(declare-fun lt!982412 () Unit!45955)

(declare-fun call!179827 () Unit!45955)

(assert (=> b!2764608 (= lt!982412 call!179827)))

(declare-fun call!179832 () Bool)

(assert (=> b!2764608 call!179832))

(declare-fun lt!982417 () Unit!45955)

(declare-fun call!179828 () Unit!45955)

(assert (=> b!2764608 (= lt!982417 call!179828)))

(assert (=> b!2764608 false))

(declare-fun b!2764609 () Bool)

(declare-fun e!1743097 () Unit!45955)

(declare-fun Unit!45958 () Unit!45955)

(assert (=> b!2764609 (= e!1743097 Unit!45958)))

(declare-fun lt!982401 () Unit!45955)

(declare-fun call!179817 () Unit!45955)

(assert (=> b!2764609 (= lt!982401 call!179817)))

(declare-fun call!179835 () Bool)

(assert (=> b!2764609 call!179835))

(declare-fun lt!982356 () Unit!45955)

(declare-fun call!179826 () Unit!45955)

(assert (=> b!2764609 (= lt!982356 call!179826)))

(assert (=> b!2764609 false))

(declare-fun bm!179810 () Bool)

(declare-fun call!179816 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!16292 0))(
  ( (C!16293 (val!10080 Int)) )
))
(declare-datatypes ((Regex!8067 0))(
  ( (ElementMatch!8067 (c!448345 C!16292)) (Concat!13155 (regOne!16646 Regex!8067) (regTwo!16646 Regex!8067)) (EmptyExpr!8067) (Star!8067 (reg!8396 Regex!8067)) (EmptyLang!8067) (Union!8067 (regOne!16647 Regex!8067) (regTwo!16647 Regex!8067)) )
))
(declare-datatypes ((List!32026 0))(
  ( (Nil!31926) (Cons!31926 (h!37346 Regex!8067) (t!228146 List!32026)) )
))
(declare-datatypes ((Context!4570 0))(
  ( (Context!4571 (exprs!2785 List!32026)) )
))
(declare-fun z!3597 () (InoxSet Context!4570))

(declare-fun nullableZipper!621 ((InoxSet Context!4570)) Bool)

(assert (=> bm!179810 (= call!179816 (nullableZipper!621 z!3597))))

(declare-fun bm!179811 () Bool)

(declare-fun call!179821 () Unit!45955)

(declare-datatypes ((List!32027 0))(
  ( (Nil!31927) (Cons!31927 (h!37347 C!16292) (t!228147 List!32027)) )
))
(declare-fun lt!982347 () List!32027)

(declare-fun lemmaIsPrefixSameLengthThenSameList!449 (List!32027 List!32027 List!32027) Unit!45955)

(assert (=> bm!179811 (= call!179821 (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 Nil!31927 lt!982347))))

(declare-fun bm!179812 () Bool)

(declare-fun call!179825 () Unit!45955)

(declare-fun lemmaIsPrefixRefl!1668 (List!32027 List!32027) Unit!45955)

(assert (=> bm!179812 (= call!179825 (lemmaIsPrefixRefl!1668 lt!982347 lt!982347))))

(declare-fun b!2764610 () Bool)

(declare-datatypes ((tuple2!32000 0))(
  ( (tuple2!32001 (_1!18834 List!32027) (_2!18834 List!32027)) )
))
(declare-fun e!1743062 () tuple2!32000)

(assert (=> b!2764610 (= e!1743062 (tuple2!32001 Nil!31927 Nil!31927))))

(declare-datatypes ((tuple2!32002 0))(
  ( (tuple2!32003 (_1!18835 Context!4570) (_2!18835 C!16292)) )
))
(declare-datatypes ((tuple2!32004 0))(
  ( (tuple2!32005 (_1!18836 tuple2!32002) (_2!18836 (InoxSet Context!4570))) )
))
(declare-datatypes ((List!32028 0))(
  ( (Nil!31928) (Cons!31928 (h!37348 tuple2!32004) (t!228148 List!32028)) )
))
(declare-datatypes ((Hashable!3658 0))(
  ( (HashableExt!3657 (__x!20876 Int)) )
))
(declare-datatypes ((array!13321 0))(
  ( (array!13322 (arr!5942 (Array (_ BitVec 32) List!32028)) (size!24694 (_ BitVec 32))) )
))
(declare-datatypes ((array!13323 0))(
  ( (array!13324 (arr!5943 (Array (_ BitVec 32) (_ BitVec 64))) (size!24695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7484 0))(
  ( (LongMapFixedSize!7485 (defaultEntry!4127 Int) (mask!9512 (_ BitVec 32)) (extraKeys!3991 (_ BitVec 32)) (zeroValue!4001 List!32028) (minValue!4001 List!32028) (_size!7527 (_ BitVec 32)) (_keys!4042 array!13323) (_values!4023 array!13321) (_vacant!3803 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14777 0))(
  ( (Cell!14778 (v!33534 LongMapFixedSize!7484)) )
))
(declare-datatypes ((MutLongMap!3742 0))(
  ( (LongMap!3742 (underlying!7687 Cell!14777)) (MutLongMapExt!3741 (__x!20877 Int)) )
))
(declare-datatypes ((Cell!14779 0))(
  ( (Cell!14780 (v!33535 MutLongMap!3742)) )
))
(declare-datatypes ((MutableMap!3648 0))(
  ( (MutableMapExt!3647 (__x!20878 Int)) (HashMap!3648 (underlying!7688 Cell!14779) (hashF!5690 Hashable!3658) (_size!7528 (_ BitVec 32)) (defaultValue!3819 Int)) )
))
(declare-datatypes ((CacheUp!2354 0))(
  ( (CacheUp!2355 (cache!3791 MutableMap!3648)) )
))
(declare-datatypes ((tuple3!4728 0))(
  ( (tuple3!4729 (_1!18837 Regex!8067) (_2!18837 Context!4570) (_3!2834 C!16292)) )
))
(declare-datatypes ((tuple2!32006 0))(
  ( (tuple2!32007 (_1!18838 tuple3!4728) (_2!18838 (InoxSet Context!4570))) )
))
(declare-datatypes ((List!32029 0))(
  ( (Nil!31929) (Cons!31929 (h!37349 tuple2!32006) (t!228149 List!32029)) )
))
(declare-datatypes ((array!13325 0))(
  ( (array!13326 (arr!5944 (Array (_ BitVec 32) List!32029)) (size!24696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7486 0))(
  ( (LongMapFixedSize!7487 (defaultEntry!4128 Int) (mask!9513 (_ BitVec 32)) (extraKeys!3992 (_ BitVec 32)) (zeroValue!4002 List!32029) (minValue!4002 List!32029) (_size!7529 (_ BitVec 32)) (_keys!4043 array!13323) (_values!4024 array!13325) (_vacant!3804 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14781 0))(
  ( (Cell!14782 (v!33536 LongMapFixedSize!7486)) )
))
(declare-datatypes ((MutLongMap!3743 0))(
  ( (LongMap!3743 (underlying!7689 Cell!14781)) (MutLongMapExt!3742 (__x!20879 Int)) )
))
(declare-datatypes ((Cell!14783 0))(
  ( (Cell!14784 (v!33537 MutLongMap!3743)) )
))
(declare-datatypes ((Hashable!3659 0))(
  ( (HashableExt!3658 (__x!20880 Int)) )
))
(declare-datatypes ((MutableMap!3649 0))(
  ( (MutableMapExt!3648 (__x!20881 Int)) (HashMap!3649 (underlying!7690 Cell!14783) (hashF!5691 Hashable!3659) (_size!7530 (_ BitVec 32)) (defaultValue!3820 Int)) )
))
(declare-datatypes ((CacheDown!2474 0))(
  ( (CacheDown!2475 (cache!3792 MutableMap!3649)) )
))
(declare-datatypes ((tuple3!4730 0))(
  ( (tuple3!4731 (_1!18839 Int) (_2!18839 CacheUp!2354) (_3!2835 CacheDown!2474)) )
))
(declare-fun lt!982377 () tuple3!4730)

(declare-fun lt!982411 () C!16292)

(declare-fun bm!179813 () Bool)

(declare-datatypes ((tuple3!4732 0))(
  ( (tuple3!4733 (_1!18840 (InoxSet Context!4570)) (_2!18840 CacheUp!2354) (_3!2836 CacheDown!2474)) )
))
(declare-fun call!179820 () tuple3!4732)

(declare-fun derivationStepZipperMem!88 ((InoxSet Context!4570) C!16292 CacheUp!2354 CacheDown!2474) tuple3!4732)

(assert (=> bm!179813 (= call!179820 (derivationStepZipperMem!88 z!3597 lt!982411 (_2!18839 lt!982377) (_3!2835 lt!982377)))))

(declare-fun b!2764611 () Bool)

(declare-datatypes ((tuple3!4734 0))(
  ( (tuple3!4735 (_1!18841 Int) (_2!18841 CacheDown!2474) (_3!2837 CacheUp!2354)) )
))
(declare-fun e!1743068 () tuple3!4734)

(declare-fun lt!982394 () tuple3!4730)

(assert (=> b!2764611 (= e!1743068 (tuple3!4735 (_1!18839 lt!982394) (_3!2835 lt!982394) (_2!18839 lt!982394)))))

(declare-fun lt!982381 () tuple3!4732)

(assert (=> b!2764611 (= lt!982381 call!179820)))

(declare-fun call!179834 () tuple3!4730)

(assert (=> b!2764611 (= lt!982394 call!179834)))

(declare-fun res!1157087 () Bool)

(declare-fun call!179815 () Bool)

(assert (=> b!2764611 (= res!1157087 call!179815)))

(declare-fun e!1743069 () Bool)

(assert (=> b!2764611 (=> (not res!1157087) (not e!1743069))))

(assert (=> b!2764611 e!1743069))

(declare-fun bm!179814 () Bool)

(declare-fun call!179819 () (InoxSet Context!4570))

(declare-fun lt!982354 () C!16292)

(declare-fun derivationStepZipper!357 ((InoxSet Context!4570) C!16292) (InoxSet Context!4570))

(assert (=> bm!179814 (= call!179819 (derivationStepZipper!357 z!3597 lt!982354))))

(declare-fun b!2764612 () Bool)

(declare-fun e!1743085 () Bool)

(declare-fun lt!982404 () Int)

(declare-fun e!1743079 () Int)

(assert (=> b!2764612 (= e!1743085 (= lt!982404 e!1743079))))

(declare-fun c!448340 () Bool)

(declare-fun lt!982358 () Int)

(assert (=> b!2764612 (= c!448340 (= 0 lt!982358))))

(declare-fun b!2764613 () Bool)

(declare-fun e!1743081 () Unit!45955)

(declare-fun Unit!45959 () Unit!45955)

(assert (=> b!2764613 (= e!1743081 Unit!45959)))

(declare-fun lt!982414 () Unit!45955)

(assert (=> b!2764613 (= lt!982414 call!179825)))

(declare-fun call!179829 () Bool)

(assert (=> b!2764613 call!179829))

(declare-fun lt!982410 () Unit!45955)

(assert (=> b!2764613 (= lt!982410 call!179821)))

(assert (=> b!2764613 false))

(declare-fun b!2764614 () Bool)

(declare-fun e!1743074 () Bool)

(declare-fun e!1743078 () Bool)

(assert (=> b!2764614 (= e!1743074 e!1743078)))

(declare-fun b!2764615 () Bool)

(declare-fun e!1743082 () tuple2!32000)

(declare-fun e!1743061 () tuple2!32000)

(assert (=> b!2764615 (= e!1743082 e!1743061)))

(declare-fun lt!982362 () tuple2!32000)

(declare-fun call!179824 () tuple2!32000)

(assert (=> b!2764615 (= lt!982362 call!179824)))

(declare-fun c!448338 () Bool)

(declare-fun isEmpty!18082 (List!32027) Bool)

(assert (=> b!2764615 (= c!448338 (isEmpty!18082 (_1!18834 lt!982362)))))

(declare-fun b!2764616 () Bool)

(declare-fun lt!982387 () Bool)

(declare-fun call!179822 () Bool)

(assert (=> b!2764616 (= lt!982387 call!179822)))

(assert (=> b!2764616 (= lt!982347 Nil!31927)))

(declare-fun lt!982357 () Unit!45955)

(assert (=> b!2764616 (= lt!982357 call!179821)))

(assert (=> b!2764616 call!179829))

(declare-fun lt!982405 () Unit!45955)

(assert (=> b!2764616 (= lt!982405 call!179825)))

(assert (=> b!2764616 (= e!1743079 0)))

(declare-fun b!2764617 () Bool)

(declare-fun e!1743072 () tuple3!4734)

(declare-fun e!1743083 () tuple3!4734)

(assert (=> b!2764617 (= e!1743072 e!1743083)))

(declare-fun c!448337 () Bool)

(assert (=> b!2764617 (= c!448337 (= 0 lt!982358))))

(declare-fun bm!179815 () Bool)

(declare-fun call!179818 () Bool)

(assert (=> bm!179815 (= call!179818 (nullableZipper!621 z!3597))))

(declare-fun mapNonEmpty!17067 () Bool)

(declare-fun mapRes!17067 () Bool)

(declare-fun tp!873769 () Bool)

(declare-fun tp!873764 () Bool)

(assert (=> mapNonEmpty!17067 (= mapRes!17067 (and tp!873769 tp!873764))))

(declare-fun mapRest!17067 () (Array (_ BitVec 32) List!32029))

(declare-fun mapKey!17067 () (_ BitVec 32))

(declare-fun cacheDown!939 () CacheDown!2474)

(declare-fun mapValue!17067 () List!32029)

(assert (=> mapNonEmpty!17067 (= (arr!5944 (_values!4024 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) (store mapRest!17067 mapKey!17067 mapValue!17067))))

(declare-fun b!2764618 () Bool)

(assert (=> b!2764618 (= e!1743085 (= lt!982404 0))))

(declare-fun b!2764619 () Bool)

(declare-fun e!1743077 () Bool)

(declare-fun lt!982386 () tuple2!32000)

(declare-fun e!1743084 () tuple2!32000)

(assert (=> b!2764619 (= e!1743077 (= lt!982386 e!1743084))))

(declare-fun c!448333 () Bool)

(assert (=> b!2764619 (= c!448333 (= 0 lt!982358))))

(declare-fun setNonEmpty!22507 () Bool)

(declare-fun setElem!22507 () Context!4570)

(declare-fun e!1743073 () Bool)

(declare-fun tp!873759 () Bool)

(declare-fun setRes!22507 () Bool)

(declare-fun inv!43354 (Context!4570) Bool)

(assert (=> setNonEmpty!22507 (= setRes!22507 (and tp!873759 (inv!43354 setElem!22507) e!1743073))))

(declare-fun setRest!22507 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22507 (= z!3597 ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22507 true) setRest!22507))))

(declare-fun call!179823 () Int)

(declare-datatypes ((IArray!19903 0))(
  ( (IArray!19904 (innerList!10009 List!32027)) )
))
(declare-datatypes ((Conc!9949 0))(
  ( (Node!9949 (left!24358 Conc!9949) (right!24688 Conc!9949) (csize!20128 Int) (cheight!10160 Int)) (Leaf!15151 (xs!13058 IArray!19903) (csize!20129 Int)) (Empty!9949) )
))
(declare-datatypes ((BalanceConc!19512 0))(
  ( (BalanceConc!19513 (c!448346 Conc!9949)) )
))
(declare-fun input!5495 () BalanceConc!19512)

(declare-fun bm!179816 () Bool)

(declare-fun lt!982367 () List!32027)

(declare-fun c!448336 () Bool)

(declare-fun lt!982391 () tuple3!4732)

(declare-fun lt!982379 () List!32027)

(declare-fun findLongestMatchInnerZipperFast!25 ((InoxSet Context!4570) List!32027 Int List!32027 BalanceConc!19512 Int) Int)

(assert (=> bm!179816 (= call!179823 (findLongestMatchInnerZipperFast!25 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358))))

(declare-fun e!1743071 () Bool)

(declare-fun e!1743088 () Bool)

(assert (=> b!2764620 (= e!1743071 (and e!1743088 tp!873757))))

(declare-fun mapIsEmpty!17067 () Bool)

(assert (=> mapIsEmpty!17067 mapRes!17067))

(declare-fun b!2764621 () Bool)

(assert (=> b!2764621 (= e!1743082 call!179824)))

(declare-fun lt!982399 () List!32027)

(declare-fun call!179833 () (InoxSet Context!4570))

(declare-fun bm!179817 () Bool)

(declare-fun lt!982383 () List!32027)

(declare-fun findLongestMatchInnerZipper!11 ((InoxSet Context!4570) List!32027 Int List!32027 List!32027 Int) tuple2!32000)

(assert (=> bm!179817 (= call!179824 (findLongestMatchInnerZipper!11 call!179833 lt!982383 1 lt!982399 lt!982347 lt!982358))))

(declare-fun b!2764622 () Bool)

(declare-fun res!1157092 () Bool)

(declare-fun e!1743064 () Bool)

(assert (=> b!2764622 (=> (not res!1157092) (not e!1743064))))

(declare-fun valid!2916 (CacheDown!2474) Bool)

(assert (=> b!2764622 (= res!1157092 (valid!2916 (_3!2835 lt!982377)))))

(declare-fun b!2764623 () Bool)

(declare-fun c!448339 () Bool)

(assert (=> b!2764623 (= c!448339 call!179816)))

(assert (=> b!2764623 (= lt!982347 Nil!31927)))

(declare-fun lt!982413 () Unit!45955)

(assert (=> b!2764623 (= lt!982413 call!179826)))

(assert (=> b!2764623 call!179835))

(declare-fun lt!982396 () Unit!45955)

(assert (=> b!2764623 (= lt!982396 call!179817)))

(assert (=> b!2764623 (= e!1743084 e!1743062)))

(declare-fun b!2764624 () Bool)

(assert (=> b!2764624 (= e!1743062 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764625 () Bool)

(declare-fun Unit!45960 () Unit!45955)

(assert (=> b!2764625 (= e!1743097 Unit!45960)))

(declare-fun b!2764626 () Bool)

(declare-fun e!1743066 () Bool)

(declare-fun lt!982416 () tuple3!4730)

(assert (=> b!2764626 (= e!1743066 (= (_1!18839 lt!982416) call!179823))))

(declare-fun bm!179818 () Bool)

(declare-fun isPrefix!2541 (List!32027 List!32027) Bool)

(assert (=> bm!179818 (= call!179832 (isPrefix!2541 lt!982347 lt!982347))))

(declare-fun b!2764627 () Bool)

(declare-fun res!1157091 () Bool)

(declare-fun e!1743065 () Bool)

(assert (=> b!2764627 (=> (not res!1157091) (not e!1743065))))

(declare-fun lt!982397 () tuple3!4730)

(assert (=> b!2764627 (= res!1157091 (valid!2916 (_3!2835 lt!982397)))))

(declare-fun cacheUp!820 () CacheUp!2354)

(declare-fun e!1743087 () Bool)

(declare-fun tp!873770 () Bool)

(declare-fun tp!873760 () Bool)

(declare-fun array_inv!4250 (array!13323) Bool)

(declare-fun array_inv!4251 (array!13321) Bool)

(assert (=> b!2764628 (= e!1743078 (and tp!873758 tp!873770 tp!873760 (array_inv!4250 (_keys!4042 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) (array_inv!4251 (_values!4023 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) e!1743087))))

(declare-fun b!2764629 () Bool)

(declare-fun tp!873771 () Bool)

(assert (=> b!2764629 (= e!1743073 tp!873771)))

(declare-fun b!2764630 () Bool)

(declare-fun e!1743075 () Int)

(declare-fun call!179831 () Int)

(assert (=> b!2764630 (= e!1743075 call!179831)))

(declare-fun b!2764631 () Bool)

(declare-fun e!1743092 () Bool)

(assert (=> b!2764631 (= e!1743092 e!1743071)))

(declare-fun b!2764632 () Bool)

(declare-fun res!1157089 () Bool)

(declare-fun call!179830 () Bool)

(assert (=> b!2764632 (= res!1157089 call!179830)))

(assert (=> b!2764632 (=> (not res!1157089) (not e!1743069))))

(declare-fun bm!179819 () Bool)

(declare-fun lt!982402 () List!32027)

(declare-fun lt!982393 () List!32027)

(assert (=> bm!179819 (= call!179831 (findLongestMatchInnerZipperFast!25 call!179819 lt!982393 1 lt!982402 input!5495 lt!982358))))

(declare-fun mapIsEmpty!17068 () Bool)

(declare-fun mapRes!17068 () Bool)

(assert (=> mapIsEmpty!17068 mapRes!17068))

(declare-fun b!2764633 () Bool)

(assert (=> b!2764633 (= c!448336 call!179818)))

(declare-fun ++!7903 (List!32027 List!32027) List!32027)

(assert (=> b!2764633 (= (++!7903 lt!982379 lt!982367) lt!982347)))

(assert (=> b!2764633 (= lt!982379 (++!7903 Nil!31927 (Cons!31927 lt!982411 Nil!31927)))))

(declare-fun lt!982350 () Unit!45955)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!858 (List!32027 C!16292 List!32027 List!32027) Unit!45955)

(assert (=> b!2764633 (= lt!982350 (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982411 lt!982367 lt!982347))))

(declare-fun tail!4375 (List!32027) List!32027)

(assert (=> b!2764633 (= lt!982367 (tail!4375 lt!982347))))

(declare-fun apply!7476 (BalanceConc!19512 Int) C!16292)

(assert (=> b!2764633 (= lt!982411 (apply!7476 input!5495 0))))

(declare-fun lt!982372 () List!32027)

(declare-fun head!6137 (List!32027) C!16292)

(assert (=> b!2764633 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)) lt!982347)))

(declare-fun lt!982363 () Unit!45955)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!446 (List!32027 List!32027) Unit!45955)

(assert (=> b!2764633 (= lt!982363 (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982347))))

(declare-fun lt!982355 () Unit!45955)

(assert (=> b!2764633 (= lt!982355 e!1743093)))

(declare-fun c!448334 () Bool)

(declare-fun lt!982392 () Int)

(assert (=> b!2764633 (= c!448334 (= lt!982392 lt!982358))))

(declare-fun size!24697 (List!32027) Int)

(assert (=> b!2764633 (<= lt!982392 (size!24697 lt!982347))))

(assert (=> b!2764633 (= lt!982392 (size!24697 Nil!31927))))

(declare-fun lt!982369 () Unit!45955)

(declare-fun lemmaIsPrefixThenSmallerEqSize!249 (List!32027 List!32027) Unit!45955)

(assert (=> b!2764633 (= lt!982369 (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982347))))

(declare-fun drop!1695 (List!32027 Int) List!32027)

(declare-fun apply!7477 (List!32027 Int) C!16292)

(assert (=> b!2764633 (= (head!6137 (drop!1695 lt!982347 0)) (apply!7477 lt!982347 0))))

(declare-fun lt!982371 () Unit!45955)

(declare-fun lemmaDropApply!901 (List!32027 Int) Unit!45955)

(assert (=> b!2764633 (= lt!982371 (lemmaDropApply!901 lt!982347 0))))

(declare-fun lt!982361 () List!32027)

(declare-fun lt!982390 () List!32027)

(assert (=> b!2764633 (and (= lt!982361 Nil!31927) (= lt!982390 lt!982347))))

(declare-fun lt!982351 () Unit!45955)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!327 (List!32027 List!32027 List!32027 List!32027) Unit!45955)

(assert (=> b!2764633 (= lt!982351 (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982361 lt!982390 Nil!31927 lt!982347))))

(declare-datatypes ((tuple2!32008 0))(
  ( (tuple2!32009 (_1!18842 BalanceConc!19512) (_2!18842 BalanceConc!19512)) )
))
(declare-fun lt!982382 () tuple2!32008)

(declare-fun list!12056 (BalanceConc!19512) List!32027)

(assert (=> b!2764633 (= lt!982390 (list!12056 (_2!18842 lt!982382)))))

(assert (=> b!2764633 (= lt!982361 (list!12056 (_1!18842 lt!982382)))))

(declare-fun splitAt!99 (BalanceConc!19512 Int) tuple2!32008)

(assert (=> b!2764633 (= lt!982382 (splitAt!99 input!5495 0))))

(assert (=> b!2764633 (= e!1743083 e!1743068)))

(declare-fun bm!179820 () Bool)

(declare-fun valid!2917 (CacheUp!2354) Bool)

(assert (=> bm!179820 (= call!179815 (valid!2917 (ite c!448336 (_2!18839 lt!982416) (_2!18839 lt!982394))))))

(declare-fun bm!179821 () Bool)

(assert (=> bm!179821 (= call!179826 (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 Nil!31927 lt!982347))))

(declare-fun mapNonEmpty!17068 () Bool)

(declare-fun tp!873762 () Bool)

(declare-fun tp!873767 () Bool)

(assert (=> mapNonEmpty!17068 (= mapRes!17068 (and tp!873762 tp!873767))))

(declare-fun mapValue!17068 () List!32028)

(declare-fun mapKey!17068 () (_ BitVec 32))

(declare-fun mapRest!17068 () (Array (_ BitVec 32) List!32028))

(assert (=> mapNonEmpty!17068 (= (arr!5942 (_values!4023 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) (store mapRest!17068 mapKey!17068 mapValue!17068))))

(declare-fun b!2764634 () Bool)

(declare-fun res!1157085 () Bool)

(assert (=> b!2764634 (= res!1157085 call!179830)))

(assert (=> b!2764634 (=> (not res!1157085) (not e!1743066))))

(declare-fun b!2764635 () Bool)

(assert (=> b!2764635 (= e!1743061 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764636 () Bool)

(declare-fun res!1157088 () Bool)

(declare-fun e!1743091 () Bool)

(assert (=> b!2764636 (=> (not res!1157088) (not e!1743091))))

(assert (=> b!2764636 (= res!1157088 (valid!2916 cacheDown!939))))

(declare-fun bm!179822 () Bool)

(assert (=> bm!179822 (= call!179830 (valid!2916 (ite c!448336 (_3!2835 lt!982416) (_3!2835 lt!982394))))))

(declare-fun b!2764637 () Bool)

(assert (=> b!2764637 (= e!1743065 (= (_1!18839 lt!982397) (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358)))))

(declare-fun bm!179823 () Bool)

(assert (=> bm!179823 (= call!179835 (isPrefix!2541 lt!982347 lt!982347))))

(declare-fun bm!179824 () Bool)

(assert (=> bm!179824 (= call!179828 (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 Nil!31927 lt!982347))))

(declare-fun bm!179825 () Bool)

(assert (=> bm!179825 (= call!179829 (isPrefix!2541 lt!982347 lt!982347))))

(declare-fun b!2764638 () Bool)

(declare-fun tp!873765 () Bool)

(assert (=> b!2764638 (= e!1743087 (and tp!873765 mapRes!17068))))

(declare-fun condMapEmpty!17068 () Bool)

(declare-fun mapDefault!17068 () List!32028)

(assert (=> b!2764638 (= condMapEmpty!17068 (= (arr!5942 (_values!4023 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32028)) mapDefault!17068)))))

(declare-fun b!2764639 () Bool)

(declare-fun lt!982409 () Bool)

(assert (=> b!2764639 (= lt!982409 call!179818)))

(assert (=> b!2764639 (= lt!982347 Nil!31927)))

(declare-fun lt!982388 () Unit!45955)

(assert (=> b!2764639 (= lt!982388 call!179828)))

(assert (=> b!2764639 call!179832))

(declare-fun lt!982400 () Unit!45955)

(assert (=> b!2764639 (= lt!982400 call!179827)))

(assert (=> b!2764639 (= e!1743083 (tuple3!4735 0 (_3!2835 lt!982377) (_2!18839 lt!982377)))))

(declare-fun b!2764640 () Bool)

(declare-fun c!448331 () Bool)

(assert (=> b!2764640 (= c!448331 call!179822)))

(assert (=> b!2764640 (= (++!7903 lt!982393 lt!982402) lt!982347)))

(assert (=> b!2764640 (= lt!982393 (++!7903 Nil!31927 (Cons!31927 lt!982354 Nil!31927)))))

(declare-fun lt!982364 () Unit!45955)

(assert (=> b!2764640 (= lt!982364 (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982354 lt!982402 lt!982347))))

(assert (=> b!2764640 (= lt!982402 (tail!4375 lt!982347))))

(assert (=> b!2764640 (= lt!982354 (apply!7476 input!5495 0))))

(assert (=> b!2764640 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)) lt!982347)))

(declare-fun lt!982403 () Unit!45955)

(assert (=> b!2764640 (= lt!982403 (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982347))))

(declare-fun lt!982384 () Unit!45955)

(assert (=> b!2764640 (= lt!982384 e!1743081)))

(declare-fun c!448335 () Bool)

(declare-fun lt!982385 () Int)

(assert (=> b!2764640 (= c!448335 (= lt!982385 lt!982358))))

(assert (=> b!2764640 (<= lt!982385 (size!24697 lt!982347))))

(assert (=> b!2764640 (= lt!982385 (size!24697 Nil!31927))))

(declare-fun lt!982389 () Unit!45955)

(assert (=> b!2764640 (= lt!982389 (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982347))))

(assert (=> b!2764640 (= (head!6137 (drop!1695 lt!982347 0)) (apply!7477 lt!982347 0))))

(declare-fun lt!982408 () Unit!45955)

(assert (=> b!2764640 (= lt!982408 (lemmaDropApply!901 lt!982347 0))))

(declare-fun lt!982359 () List!32027)

(declare-fun lt!982346 () List!32027)

(assert (=> b!2764640 (and (= lt!982359 Nil!31927) (= lt!982346 lt!982347))))

(declare-fun lt!982380 () Unit!45955)

(assert (=> b!2764640 (= lt!982380 (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982359 lt!982346 Nil!31927 lt!982347))))

(declare-fun lt!982366 () tuple2!32008)

(assert (=> b!2764640 (= lt!982346 (list!12056 (_2!18842 lt!982366)))))

(assert (=> b!2764640 (= lt!982359 (list!12056 (_1!18842 lt!982366)))))

(assert (=> b!2764640 (= lt!982366 (splitAt!99 input!5495 0))))

(assert (=> b!2764640 (= e!1743079 e!1743075)))

(declare-fun bm!179826 () Bool)

(declare-fun findLongestMatchInnerZipperFastMem!20 (CacheUp!2354 CacheDown!2474 (InoxSet Context!4570) List!32027 Int List!32027 BalanceConc!19512 Int) tuple3!4730)

(assert (=> bm!179826 (= call!179834 (findLongestMatchInnerZipperFastMem!20 (ite c!448336 (_2!18840 lt!982391) (_2!18840 lt!982381)) (ite c!448336 (_3!2836 lt!982391) (_3!2836 lt!982381)) (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358))))

(declare-fun bm!179827 () Bool)

(assert (=> bm!179827 (= call!179817 (lemmaIsPrefixRefl!1668 lt!982347 lt!982347))))

(declare-fun b!2764641 () Bool)

(declare-fun e!1743070 () Bool)

(declare-fun tp!873768 () Bool)

(declare-fun inv!43355 (Conc!9949) Bool)

(assert (=> b!2764641 (= e!1743070 (and (inv!43355 (c!448346 input!5495)) tp!873768))))

(declare-fun b!2764642 () Bool)

(declare-fun c!448343 () Bool)

(assert (=> b!2764642 (= c!448343 call!179816)))

(assert (=> b!2764642 (= (++!7903 lt!982383 lt!982399) lt!982347)))

(declare-fun lt!982406 () Unit!45955)

(declare-fun lt!982376 () C!16292)

(assert (=> b!2764642 (= lt!982406 (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982376 lt!982399 lt!982347))))

(assert (=> b!2764642 (= lt!982399 (tail!4375 lt!982347))))

(assert (=> b!2764642 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)) lt!982347)))

(declare-fun lt!982373 () Unit!45955)

(assert (=> b!2764642 (= lt!982373 (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982347))))

(assert (=> b!2764642 (= lt!982383 (++!7903 Nil!31927 (Cons!31927 lt!982376 Nil!31927)))))

(assert (=> b!2764642 (= lt!982376 (head!6137 lt!982347))))

(declare-fun lt!982360 () Unit!45955)

(assert (=> b!2764642 (= lt!982360 e!1743097)))

(declare-fun c!448342 () Bool)

(declare-fun lt!982374 () Int)

(declare-fun lt!982375 () Int)

(assert (=> b!2764642 (= c!448342 (= lt!982374 lt!982375))))

(assert (=> b!2764642 (<= lt!982374 lt!982375)))

(assert (=> b!2764642 (= lt!982375 (size!24697 lt!982347))))

(assert (=> b!2764642 (= lt!982374 (size!24697 Nil!31927))))

(declare-fun lt!982348 () Unit!45955)

(assert (=> b!2764642 (= lt!982348 (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982347))))

(assert (=> b!2764642 (= e!1743084 e!1743082)))

(declare-fun b!2764643 () Bool)

(assert (=> b!2764643 (= e!1743072 (tuple3!4735 0 (_3!2835 lt!982377) (_2!18839 lt!982377)))))

(declare-fun b!2764644 () Bool)

(declare-fun e!1743067 () Bool)

(declare-fun tp!873756 () Bool)

(assert (=> b!2764644 (= e!1743067 (and tp!873756 mapRes!17067))))

(declare-fun condMapEmpty!17067 () Bool)

(declare-fun mapDefault!17067 () List!32029)

(assert (=> b!2764644 (= condMapEmpty!17067 (= (arr!5944 (_values!4024 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32029)) mapDefault!17067)))))

(declare-fun b!2764645 () Bool)

(declare-fun e!1743090 () Bool)

(declare-fun e!1743063 () Bool)

(assert (=> b!2764645 (= e!1743090 e!1743063)))

(declare-fun b!2764646 () Bool)

(declare-fun e!1743096 () Bool)

(declare-fun e!1743089 () Bool)

(declare-fun lt!982398 () MutLongMap!3742)

(get-info :version)

(assert (=> b!2764646 (= e!1743096 (and e!1743089 ((_ is LongMap!3742) lt!982398)))))

(assert (=> b!2764646 (= lt!982398 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))

(declare-fun b!2764647 () Bool)

(assert (=> b!2764647 (= e!1743068 (tuple3!4735 (ite (= (_1!18839 lt!982416) 0) 0 (_1!18839 lt!982416)) (_3!2835 lt!982416) (_2!18839 lt!982416)))))

(assert (=> b!2764647 (= lt!982391 call!179820)))

(assert (=> b!2764647 (= lt!982416 call!179834)))

(declare-fun res!1157093 () Bool)

(assert (=> b!2764647 (= res!1157093 call!179815)))

(assert (=> b!2764647 (=> (not res!1157093) (not e!1743066))))

(assert (=> b!2764647 e!1743066))

(declare-fun b!2764648 () Bool)

(assert (=> b!2764648 (= e!1743089 e!1743074)))

(declare-fun b!2764649 () Bool)

(assert (=> b!2764649 (= e!1743069 (= (_1!18839 lt!982394) call!179823))))

(declare-fun tp!873763 () Bool)

(declare-fun e!1743094 () Bool)

(declare-fun tp!873766 () Bool)

(declare-fun array_inv!4252 (array!13325) Bool)

(assert (=> b!2764650 (= e!1743094 (and tp!873755 tp!873763 tp!873766 (array_inv!4250 (_keys!4043 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) (array_inv!4252 (_values!4024 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) e!1743067))))

(declare-fun res!1157094 () Bool)

(assert (=> start!267634 (=> (not res!1157094) (not e!1743091))))

(assert (=> start!267634 (= res!1157094 (valid!2917 cacheUp!820))))

(assert (=> start!267634 e!1743091))

(declare-fun e!1743076 () Bool)

(declare-fun inv!43356 (CacheUp!2354) Bool)

(assert (=> start!267634 (and (inv!43356 cacheUp!820) e!1743076)))

(declare-fun inv!43357 (CacheDown!2474) Bool)

(assert (=> start!267634 (and (inv!43357 cacheDown!939) e!1743092)))

(declare-fun condSetEmpty!22507 () Bool)

(assert (=> start!267634 (= condSetEmpty!22507 (= z!3597 ((as const (Array Context!4570 Bool)) false)))))

(assert (=> start!267634 setRes!22507))

(declare-fun inv!43358 (BalanceConc!19512) Bool)

(assert (=> start!267634 (and (inv!43358 input!5495) e!1743070)))

(declare-fun bm!179828 () Bool)

(assert (=> bm!179828 (= call!179822 (nullableZipper!621 z!3597))))

(declare-fun b!2764651 () Bool)

(declare-fun lt!982370 () MutLongMap!3743)

(assert (=> b!2764651 (= e!1743088 (and e!1743090 ((_ is LongMap!3743) lt!982370)))))

(assert (=> b!2764651 (= lt!982370 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))

(declare-fun b!2764652 () Bool)

(declare-fun lt!982353 () Int)

(assert (=> b!2764652 (= e!1743075 (ite (= lt!982353 0) 0 lt!982353))))

(assert (=> b!2764652 (= lt!982353 call!179831)))

(declare-fun b!2764653 () Bool)

(assert (=> b!2764653 (= e!1743064 (= (_1!18839 lt!982377) (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358)))))

(declare-fun bm!179829 () Bool)

(assert (=> bm!179829 (= call!179833 (derivationStepZipper!357 z!3597 lt!982376))))

(declare-fun e!1743080 () Bool)

(assert (=> b!2764654 (= e!1743080 (and e!1743096 tp!873761))))

(declare-fun b!2764655 () Bool)

(assert (=> b!2764655 (= e!1743063 e!1743094)))

(declare-fun b!2764656 () Bool)

(assert (=> b!2764656 (= e!1743061 lt!982362)))

(declare-fun b!2764657 () Bool)

(declare-fun Unit!45961 () Unit!45955)

(assert (=> b!2764657 (= e!1743081 Unit!45961)))

(declare-fun bm!179830 () Bool)

(assert (=> bm!179830 (= call!179827 (lemmaIsPrefixRefl!1668 lt!982347 lt!982347))))

(declare-fun b!2764658 () Bool)

(assert (=> b!2764658 (= e!1743076 e!1743080)))

(declare-fun b!2764659 () Bool)

(assert (=> b!2764659 (= e!1743077 (= lt!982386 (tuple2!32001 Nil!31927 lt!982347)))))

(declare-fun setIsEmpty!22507 () Bool)

(assert (=> setIsEmpty!22507 setRes!22507))

(declare-fun b!2764660 () Bool)

(declare-fun Unit!45962 () Unit!45955)

(assert (=> b!2764660 (= e!1743093 Unit!45962)))

(declare-fun b!2764661 () Bool)

(declare-fun lt!982395 () List!32027)

(assert (=> b!2764661 (= e!1743091 (not (= lt!982395 lt!982347)))))

(declare-fun lt!982378 () List!32027)

(declare-fun lt!982368 () tuple2!32008)

(assert (=> b!2764661 (= lt!982378 (list!12056 (_2!18842 lt!982368)))))

(declare-fun lt!982365 () List!32027)

(assert (=> b!2764661 (= lt!982365 (list!12056 (_1!18842 lt!982368)))))

(assert (=> b!2764661 (= lt!982368 (splitAt!99 input!5495 (_1!18839 lt!982377)))))

(assert (=> b!2764661 e!1743077))

(declare-fun c!448341 () Bool)

(declare-fun lt!982352 () Bool)

(assert (=> b!2764661 (= c!448341 lt!982352)))

(assert (=> b!2764661 (= lt!982386 (findLongestMatchInnerZipper!11 z!3597 Nil!31927 0 lt!982347 lt!982347 lt!982358))))

(assert (=> b!2764661 e!1743085))

(declare-fun c!448344 () Bool)

(assert (=> b!2764661 (= c!448344 lt!982352)))

(assert (=> b!2764661 (= lt!982404 (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358))))

(declare-fun lt!982415 () tuple3!4734)

(assert (=> b!2764661 (= lt!982397 (tuple3!4731 (_1!18841 lt!982415) (_3!2837 lt!982415) (_2!18841 lt!982415)))))

(assert (=> b!2764661 (= lt!982415 e!1743072)))

(declare-fun c!448332 () Bool)

(assert (=> b!2764661 (= c!448332 lt!982352)))

(declare-fun lostCauseZipper!429 ((InoxSet Context!4570)) Bool)

(assert (=> b!2764661 (= lt!982352 (lostCauseZipper!429 z!3597))))

(assert (=> b!2764661 (and (= lt!982347 lt!982372) (= lt!982372 lt!982347))))

(declare-fun lt!982407 () Unit!45955)

(declare-fun lemmaSamePrefixThenSameSuffix!1127 (List!32027 List!32027 List!32027 List!32027 List!32027) Unit!45955)

(assert (=> b!2764661 (= lt!982407 (lemmaSamePrefixThenSameSuffix!1127 Nil!31927 lt!982347 Nil!31927 lt!982372 lt!982347))))

(declare-fun getSuffix!1225 (List!32027 List!32027) List!32027)

(assert (=> b!2764661 (= lt!982372 (getSuffix!1225 lt!982347 Nil!31927))))

(assert (=> b!2764661 (isPrefix!2541 Nil!31927 lt!982395)))

(assert (=> b!2764661 (= lt!982395 (++!7903 Nil!31927 lt!982347))))

(declare-fun lt!982349 () Unit!45955)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1653 (List!32027 List!32027) Unit!45955)

(assert (=> b!2764661 (= lt!982349 (lemmaConcatTwoListThenFirstIsPrefix!1653 Nil!31927 lt!982347))))

(assert (=> b!2764661 e!1743065))

(declare-fun res!1157090 () Bool)

(assert (=> b!2764661 (=> (not res!1157090) (not e!1743065))))

(assert (=> b!2764661 (= res!1157090 (valid!2917 (_2!18839 lt!982397)))))

(assert (=> b!2764661 (= lt!982397 (findLongestMatchInnerZipperFastMem!20 (_2!18839 lt!982377) (_3!2835 lt!982377) z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358))))

(assert (=> b!2764661 e!1743064))

(declare-fun res!1157086 () Bool)

(assert (=> b!2764661 (=> (not res!1157086) (not e!1743064))))

(assert (=> b!2764661 (= res!1157086 (valid!2917 (_2!18839 lt!982377)))))

(assert (=> b!2764661 (= lt!982377 (findLongestMatchInnerZipperFastMem!20 cacheUp!820 cacheDown!939 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358))))

(declare-fun size!24698 (BalanceConc!19512) Int)

(assert (=> b!2764661 (= lt!982358 (size!24698 input!5495))))

(assert (=> b!2764661 (= lt!982347 (list!12056 input!5495))))

(assert (= (and start!267634 res!1157094) b!2764636))

(assert (= (and b!2764636 res!1157088) b!2764661))

(assert (= (and b!2764661 res!1157086) b!2764622))

(assert (= (and b!2764622 res!1157092) b!2764653))

(assert (= (and b!2764661 res!1157090) b!2764627))

(assert (= (and b!2764627 res!1157091) b!2764637))

(assert (= (and b!2764661 c!448332) b!2764643))

(assert (= (and b!2764661 (not c!448332)) b!2764617))

(assert (= (and b!2764617 c!448337) b!2764639))

(assert (= (and b!2764617 (not c!448337)) b!2764633))

(assert (= (and b!2764633 c!448334) b!2764608))

(assert (= (and b!2764633 (not c!448334)) b!2764660))

(assert (= (and b!2764633 c!448336) b!2764647))

(assert (= (and b!2764633 (not c!448336)) b!2764611))

(assert (= (and b!2764647 res!1157093) b!2764634))

(assert (= (and b!2764634 res!1157085) b!2764626))

(assert (= (and b!2764611 res!1157087) b!2764632))

(assert (= (and b!2764632 res!1157089) b!2764649))

(assert (= (or b!2764647 b!2764611) bm!179826))

(assert (= (or b!2764634 b!2764632) bm!179822))

(assert (= (or b!2764626 b!2764649) bm!179816))

(assert (= (or b!2764647 b!2764611) bm!179813))

(assert (= (or b!2764647 b!2764611) bm!179820))

(assert (= (or b!2764639 b!2764633) bm!179815))

(assert (= (or b!2764639 b!2764608) bm!179830))

(assert (= (or b!2764639 b!2764608) bm!179824))

(assert (= (or b!2764639 b!2764608) bm!179818))

(assert (= (and b!2764661 c!448344) b!2764618))

(assert (= (and b!2764661 (not c!448344)) b!2764612))

(assert (= (and b!2764612 c!448340) b!2764616))

(assert (= (and b!2764612 (not c!448340)) b!2764640))

(assert (= (and b!2764640 c!448335) b!2764613))

(assert (= (and b!2764640 (not c!448335)) b!2764657))

(assert (= (and b!2764640 c!448331) b!2764652))

(assert (= (and b!2764640 (not c!448331)) b!2764630))

(assert (= (or b!2764652 b!2764630) bm!179814))

(assert (= (or b!2764652 b!2764630) bm!179819))

(assert (= (or b!2764616 b!2764640) bm!179828))

(assert (= (or b!2764616 b!2764613) bm!179812))

(assert (= (or b!2764616 b!2764613) bm!179811))

(assert (= (or b!2764616 b!2764613) bm!179825))

(assert (= (and b!2764661 c!448341) b!2764659))

(assert (= (and b!2764661 (not c!448341)) b!2764619))

(assert (= (and b!2764619 c!448333) b!2764623))

(assert (= (and b!2764619 (not c!448333)) b!2764642))

(assert (= (and b!2764623 c!448339) b!2764610))

(assert (= (and b!2764623 (not c!448339)) b!2764624))

(assert (= (and b!2764642 c!448342) b!2764609))

(assert (= (and b!2764642 (not c!448342)) b!2764625))

(assert (= (and b!2764642 c!448343) b!2764615))

(assert (= (and b!2764642 (not c!448343)) b!2764621))

(assert (= (and b!2764615 c!448338) b!2764635))

(assert (= (and b!2764615 (not c!448338)) b!2764656))

(assert (= (or b!2764615 b!2764621) bm!179829))

(assert (= (or b!2764615 b!2764621) bm!179817))

(assert (= (or b!2764623 b!2764642) bm!179810))

(assert (= (or b!2764623 b!2764609) bm!179827))

(assert (= (or b!2764623 b!2764609) bm!179821))

(assert (= (or b!2764623 b!2764609) bm!179823))

(assert (= (and b!2764638 condMapEmpty!17068) mapIsEmpty!17068))

(assert (= (and b!2764638 (not condMapEmpty!17068)) mapNonEmpty!17068))

(assert (= b!2764628 b!2764638))

(assert (= b!2764614 b!2764628))

(assert (= b!2764648 b!2764614))

(assert (= (and b!2764646 ((_ is LongMap!3742) (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))) b!2764648))

(assert (= b!2764654 b!2764646))

(assert (= (and b!2764658 ((_ is HashMap!3648) (cache!3791 cacheUp!820))) b!2764654))

(assert (= start!267634 b!2764658))

(assert (= (and b!2764644 condMapEmpty!17067) mapIsEmpty!17067))

(assert (= (and b!2764644 (not condMapEmpty!17067)) mapNonEmpty!17067))

(assert (= b!2764650 b!2764644))

(assert (= b!2764655 b!2764650))

(assert (= b!2764645 b!2764655))

(assert (= (and b!2764651 ((_ is LongMap!3743) (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))) b!2764645))

(assert (= b!2764620 b!2764651))

(assert (= (and b!2764631 ((_ is HashMap!3649) (cache!3792 cacheDown!939))) b!2764620))

(assert (= start!267634 b!2764631))

(assert (= (and start!267634 condSetEmpty!22507) setIsEmpty!22507))

(assert (= (and start!267634 (not condSetEmpty!22507)) setNonEmpty!22507))

(assert (= setNonEmpty!22507 b!2764629))

(assert (= start!267634 b!2764641))

(declare-fun m!3187225 () Bool)

(assert (=> b!2764622 m!3187225))

(declare-fun m!3187227 () Bool)

(assert (=> b!2764642 m!3187227))

(declare-fun m!3187229 () Bool)

(assert (=> b!2764642 m!3187229))

(declare-fun m!3187231 () Bool)

(assert (=> b!2764642 m!3187231))

(declare-fun m!3187233 () Bool)

(assert (=> b!2764642 m!3187233))

(declare-fun m!3187235 () Bool)

(assert (=> b!2764642 m!3187235))

(declare-fun m!3187237 () Bool)

(assert (=> b!2764642 m!3187237))

(declare-fun m!3187239 () Bool)

(assert (=> b!2764642 m!3187239))

(declare-fun m!3187241 () Bool)

(assert (=> b!2764642 m!3187241))

(declare-fun m!3187243 () Bool)

(assert (=> b!2764642 m!3187243))

(declare-fun m!3187245 () Bool)

(assert (=> b!2764642 m!3187245))

(declare-fun m!3187247 () Bool)

(assert (=> b!2764642 m!3187247))

(assert (=> b!2764642 m!3187239))

(declare-fun m!3187249 () Bool)

(assert (=> b!2764642 m!3187249))

(declare-fun m!3187251 () Bool)

(assert (=> b!2764640 m!3187251))

(assert (=> b!2764640 m!3187229))

(declare-fun m!3187253 () Bool)

(assert (=> b!2764640 m!3187253))

(declare-fun m!3187255 () Bool)

(assert (=> b!2764640 m!3187255))

(declare-fun m!3187257 () Bool)

(assert (=> b!2764640 m!3187257))

(declare-fun m!3187259 () Bool)

(assert (=> b!2764640 m!3187259))

(assert (=> b!2764640 m!3187231))

(declare-fun m!3187261 () Bool)

(assert (=> b!2764640 m!3187261))

(declare-fun m!3187263 () Bool)

(assert (=> b!2764640 m!3187263))

(assert (=> b!2764640 m!3187239))

(assert (=> b!2764640 m!3187235))

(assert (=> b!2764640 m!3187237))

(assert (=> b!2764640 m!3187239))

(assert (=> b!2764640 m!3187241))

(assert (=> b!2764640 m!3187243))

(assert (=> b!2764640 m!3187245))

(declare-fun m!3187265 () Bool)

(assert (=> b!2764640 m!3187265))

(declare-fun m!3187267 () Bool)

(assert (=> b!2764640 m!3187267))

(assert (=> b!2764640 m!3187251))

(declare-fun m!3187269 () Bool)

(assert (=> b!2764640 m!3187269))

(declare-fun m!3187271 () Bool)

(assert (=> b!2764640 m!3187271))

(declare-fun m!3187273 () Bool)

(assert (=> b!2764640 m!3187273))

(declare-fun m!3187275 () Bool)

(assert (=> bm!179824 m!3187275))

(declare-fun m!3187277 () Bool)

(assert (=> b!2764615 m!3187277))

(assert (=> bm!179811 m!3187275))

(declare-fun m!3187279 () Bool)

(assert (=> b!2764627 m!3187279))

(declare-fun m!3187281 () Bool)

(assert (=> b!2764636 m!3187281))

(assert (=> b!2764633 m!3187251))

(declare-fun m!3187283 () Bool)

(assert (=> b!2764633 m!3187283))

(assert (=> b!2764633 m!3187229))

(assert (=> b!2764633 m!3187253))

(declare-fun m!3187285 () Bool)

(assert (=> b!2764633 m!3187285))

(declare-fun m!3187287 () Bool)

(assert (=> b!2764633 m!3187287))

(assert (=> b!2764633 m!3187265))

(assert (=> b!2764633 m!3187259))

(assert (=> b!2764633 m!3187231))

(assert (=> b!2764633 m!3187261))

(declare-fun m!3187289 () Bool)

(assert (=> b!2764633 m!3187289))

(declare-fun m!3187291 () Bool)

(assert (=> b!2764633 m!3187291))

(assert (=> b!2764633 m!3187239))

(assert (=> b!2764633 m!3187235))

(assert (=> b!2764633 m!3187237))

(assert (=> b!2764633 m!3187239))

(assert (=> b!2764633 m!3187241))

(assert (=> b!2764633 m!3187243))

(assert (=> b!2764633 m!3187245))

(assert (=> b!2764633 m!3187251))

(assert (=> b!2764633 m!3187269))

(declare-fun m!3187293 () Bool)

(assert (=> b!2764633 m!3187293))

(declare-fun m!3187295 () Bool)

(assert (=> bm!179823 m!3187295))

(declare-fun m!3187297 () Bool)

(assert (=> start!267634 m!3187297))

(declare-fun m!3187299 () Bool)

(assert (=> start!267634 m!3187299))

(declare-fun m!3187301 () Bool)

(assert (=> start!267634 m!3187301))

(declare-fun m!3187303 () Bool)

(assert (=> start!267634 m!3187303))

(declare-fun m!3187305 () Bool)

(assert (=> bm!179826 m!3187305))

(declare-fun m!3187307 () Bool)

(assert (=> bm!179814 m!3187307))

(declare-fun m!3187309 () Bool)

(assert (=> mapNonEmpty!17068 m!3187309))

(declare-fun m!3187311 () Bool)

(assert (=> mapNonEmpty!17067 m!3187311))

(declare-fun m!3187313 () Bool)

(assert (=> bm!179830 m!3187313))

(assert (=> bm!179825 m!3187295))

(declare-fun m!3187315 () Bool)

(assert (=> bm!179815 m!3187315))

(assert (=> bm!179812 m!3187313))

(declare-fun m!3187317 () Bool)

(assert (=> bm!179819 m!3187317))

(declare-fun m!3187319 () Bool)

(assert (=> b!2764650 m!3187319))

(declare-fun m!3187321 () Bool)

(assert (=> b!2764650 m!3187321))

(declare-fun m!3187323 () Bool)

(assert (=> bm!179822 m!3187323))

(assert (=> bm!179818 m!3187295))

(declare-fun m!3187325 () Bool)

(assert (=> b!2764661 m!3187325))

(declare-fun m!3187327 () Bool)

(assert (=> b!2764661 m!3187327))

(declare-fun m!3187329 () Bool)

(assert (=> b!2764661 m!3187329))

(declare-fun m!3187331 () Bool)

(assert (=> b!2764661 m!3187331))

(declare-fun m!3187333 () Bool)

(assert (=> b!2764661 m!3187333))

(declare-fun m!3187335 () Bool)

(assert (=> b!2764661 m!3187335))

(declare-fun m!3187337 () Bool)

(assert (=> b!2764661 m!3187337))

(declare-fun m!3187339 () Bool)

(assert (=> b!2764661 m!3187339))

(declare-fun m!3187341 () Bool)

(assert (=> b!2764661 m!3187341))

(declare-fun m!3187343 () Bool)

(assert (=> b!2764661 m!3187343))

(declare-fun m!3187345 () Bool)

(assert (=> b!2764661 m!3187345))

(declare-fun m!3187347 () Bool)

(assert (=> b!2764661 m!3187347))

(declare-fun m!3187349 () Bool)

(assert (=> b!2764661 m!3187349))

(declare-fun m!3187351 () Bool)

(assert (=> b!2764661 m!3187351))

(declare-fun m!3187353 () Bool)

(assert (=> b!2764661 m!3187353))

(declare-fun m!3187355 () Bool)

(assert (=> b!2764661 m!3187355))

(declare-fun m!3187357 () Bool)

(assert (=> b!2764661 m!3187357))

(assert (=> b!2764653 m!3187351))

(assert (=> bm!179828 m!3187315))

(assert (=> bm!179827 m!3187313))

(declare-fun m!3187359 () Bool)

(assert (=> bm!179817 m!3187359))

(declare-fun m!3187361 () Bool)

(assert (=> b!2764641 m!3187361))

(declare-fun m!3187363 () Bool)

(assert (=> bm!179816 m!3187363))

(declare-fun m!3187365 () Bool)

(assert (=> setNonEmpty!22507 m!3187365))

(assert (=> bm!179821 m!3187275))

(assert (=> b!2764637 m!3187351))

(declare-fun m!3187367 () Bool)

(assert (=> bm!179813 m!3187367))

(declare-fun m!3187369 () Bool)

(assert (=> b!2764628 m!3187369))

(declare-fun m!3187371 () Bool)

(assert (=> b!2764628 m!3187371))

(assert (=> bm!179810 m!3187315))

(declare-fun m!3187373 () Bool)

(assert (=> bm!179820 m!3187373))

(declare-fun m!3187375 () Bool)

(assert (=> bm!179829 m!3187375))

(check-sat (not b!2764661) (not b!2764627) (not bm!179824) (not mapNonEmpty!17068) (not b!2764628) (not start!267634) (not bm!179815) (not b_next!78777) (not b!2764633) b_and!202807 (not b!2764622) (not bm!179825) (not bm!179810) (not b!2764638) (not bm!179812) (not b!2764644) b_and!202809 b_and!202813 (not bm!179811) (not b!2764642) (not b_next!78775) (not b_next!78773) (not bm!179826) (not b!2764629) (not bm!179822) (not bm!179817) (not bm!179827) (not bm!179813) (not bm!179819) (not bm!179828) (not b!2764641) (not bm!179829) (not bm!179821) (not mapNonEmpty!17067) (not b_next!78779) (not b!2764636) (not b!2764650) (not b!2764637) (not b!2764640) (not b!2764615) (not bm!179830) b_and!202811 (not bm!179814) (not setNonEmpty!22507) (not bm!179820) (not bm!179816) (not bm!179818) (not bm!179823) (not b!2764653))
(check-sat (not b_next!78773) (not b_next!78779) b_and!202811 (not b_next!78777) b_and!202807 b_and!202809 b_and!202813 (not b_next!78775))
(get-model)

(declare-fun d!802808 () Bool)

(assert (=> d!802808 (= (head!6137 (drop!1695 lt!982347 0)) (h!37347 (drop!1695 lt!982347 0)))))

(assert (=> b!2764633 d!802808))

(declare-fun d!802810 () Bool)

(declare-fun lt!982420 () C!16292)

(declare-fun contains!5990 (List!32027 C!16292) Bool)

(assert (=> d!802810 (contains!5990 lt!982347 lt!982420)))

(declare-fun e!1743102 () C!16292)

(assert (=> d!802810 (= lt!982420 e!1743102)))

(declare-fun c!448349 () Bool)

(assert (=> d!802810 (= c!448349 (= 0 0))))

(declare-fun e!1743103 () Bool)

(assert (=> d!802810 e!1743103))

(declare-fun res!1157097 () Bool)

(assert (=> d!802810 (=> (not res!1157097) (not e!1743103))))

(assert (=> d!802810 (= res!1157097 (<= 0 0))))

(assert (=> d!802810 (= (apply!7477 lt!982347 0) lt!982420)))

(declare-fun b!2764668 () Bool)

(assert (=> b!2764668 (= e!1743103 (< 0 (size!24697 lt!982347)))))

(declare-fun b!2764669 () Bool)

(assert (=> b!2764669 (= e!1743102 (head!6137 lt!982347))))

(declare-fun b!2764670 () Bool)

(assert (=> b!2764670 (= e!1743102 (apply!7477 (tail!4375 lt!982347) (- 0 1)))))

(assert (= (and d!802810 res!1157097) b!2764668))

(assert (= (and d!802810 c!448349) b!2764669))

(assert (= (and d!802810 (not c!448349)) b!2764670))

(declare-fun m!3187377 () Bool)

(assert (=> d!802810 m!3187377))

(assert (=> b!2764668 m!3187235))

(assert (=> b!2764669 m!3187233))

(assert (=> b!2764670 m!3187229))

(assert (=> b!2764670 m!3187229))

(declare-fun m!3187379 () Bool)

(assert (=> b!2764670 m!3187379))

(assert (=> b!2764633 d!802810))

(declare-fun b!2764680 () Bool)

(declare-fun e!1743109 () List!32027)

(assert (=> b!2764680 (= e!1743109 (Cons!31927 (h!37347 Nil!31927) (++!7903 (t!228147 Nil!31927) (Cons!31927 (head!6137 lt!982372) Nil!31927))))))

(declare-fun b!2764679 () Bool)

(assert (=> b!2764679 (= e!1743109 (Cons!31927 (head!6137 lt!982372) Nil!31927))))

(declare-fun d!802812 () Bool)

(declare-fun e!1743108 () Bool)

(assert (=> d!802812 e!1743108))

(declare-fun res!1157102 () Bool)

(assert (=> d!802812 (=> (not res!1157102) (not e!1743108))))

(declare-fun lt!982423 () List!32027)

(declare-fun content!4496 (List!32027) (InoxSet C!16292))

(assert (=> d!802812 (= res!1157102 (= (content!4496 lt!982423) ((_ map or) (content!4496 Nil!31927) (content!4496 (Cons!31927 (head!6137 lt!982372) Nil!31927)))))))

(assert (=> d!802812 (= lt!982423 e!1743109)))

(declare-fun c!448352 () Bool)

(assert (=> d!802812 (= c!448352 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802812 (= (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)) lt!982423)))

(declare-fun b!2764682 () Bool)

(assert (=> b!2764682 (= e!1743108 (or (not (= (Cons!31927 (head!6137 lt!982372) Nil!31927) Nil!31927)) (= lt!982423 Nil!31927)))))

(declare-fun b!2764681 () Bool)

(declare-fun res!1157103 () Bool)

(assert (=> b!2764681 (=> (not res!1157103) (not e!1743108))))

(assert (=> b!2764681 (= res!1157103 (= (size!24697 lt!982423) (+ (size!24697 Nil!31927) (size!24697 (Cons!31927 (head!6137 lt!982372) Nil!31927)))))))

(assert (= (and d!802812 c!448352) b!2764679))

(assert (= (and d!802812 (not c!448352)) b!2764680))

(assert (= (and d!802812 res!1157102) b!2764681))

(assert (= (and b!2764681 res!1157103) b!2764682))

(declare-fun m!3187381 () Bool)

(assert (=> b!2764680 m!3187381))

(declare-fun m!3187383 () Bool)

(assert (=> d!802812 m!3187383))

(declare-fun m!3187385 () Bool)

(assert (=> d!802812 m!3187385))

(declare-fun m!3187387 () Bool)

(assert (=> d!802812 m!3187387))

(declare-fun m!3187389 () Bool)

(assert (=> b!2764681 m!3187389))

(assert (=> b!2764681 m!3187231))

(declare-fun m!3187391 () Bool)

(assert (=> b!2764681 m!3187391))

(assert (=> b!2764633 d!802812))

(declare-fun d!802814 () Bool)

(assert (=> d!802814 (and (= lt!982361 Nil!31927) (= lt!982390 lt!982347))))

(declare-fun lt!982426 () Unit!45955)

(declare-fun choose!16202 (List!32027 List!32027 List!32027 List!32027) Unit!45955)

(assert (=> d!802814 (= lt!982426 (choose!16202 lt!982361 lt!982390 Nil!31927 lt!982347))))

(assert (=> d!802814 (= (++!7903 lt!982361 lt!982390) (++!7903 Nil!31927 lt!982347))))

(assert (=> d!802814 (= (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982361 lt!982390 Nil!31927 lt!982347) lt!982426)))

(declare-fun bs!500229 () Bool)

(assert (= bs!500229 d!802814))

(declare-fun m!3187393 () Bool)

(assert (=> bs!500229 m!3187393))

(declare-fun m!3187395 () Bool)

(assert (=> bs!500229 m!3187395))

(assert (=> bs!500229 m!3187329))

(assert (=> b!2764633 d!802814))

(declare-fun b!2764684 () Bool)

(declare-fun e!1743111 () List!32027)

(assert (=> b!2764684 (= e!1743111 (Cons!31927 (h!37347 Nil!31927) (++!7903 (t!228147 Nil!31927) (Cons!31927 lt!982411 Nil!31927))))))

(declare-fun b!2764683 () Bool)

(assert (=> b!2764683 (= e!1743111 (Cons!31927 lt!982411 Nil!31927))))

(declare-fun d!802816 () Bool)

(declare-fun e!1743110 () Bool)

(assert (=> d!802816 e!1743110))

(declare-fun res!1157104 () Bool)

(assert (=> d!802816 (=> (not res!1157104) (not e!1743110))))

(declare-fun lt!982427 () List!32027)

(assert (=> d!802816 (= res!1157104 (= (content!4496 lt!982427) ((_ map or) (content!4496 Nil!31927) (content!4496 (Cons!31927 lt!982411 Nil!31927)))))))

(assert (=> d!802816 (= lt!982427 e!1743111)))

(declare-fun c!448353 () Bool)

(assert (=> d!802816 (= c!448353 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802816 (= (++!7903 Nil!31927 (Cons!31927 lt!982411 Nil!31927)) lt!982427)))

(declare-fun b!2764686 () Bool)

(assert (=> b!2764686 (= e!1743110 (or (not (= (Cons!31927 lt!982411 Nil!31927) Nil!31927)) (= lt!982427 Nil!31927)))))

(declare-fun b!2764685 () Bool)

(declare-fun res!1157105 () Bool)

(assert (=> b!2764685 (=> (not res!1157105) (not e!1743110))))

(assert (=> b!2764685 (= res!1157105 (= (size!24697 lt!982427) (+ (size!24697 Nil!31927) (size!24697 (Cons!31927 lt!982411 Nil!31927)))))))

(assert (= (and d!802816 c!448353) b!2764683))

(assert (= (and d!802816 (not c!448353)) b!2764684))

(assert (= (and d!802816 res!1157104) b!2764685))

(assert (= (and b!2764685 res!1157105) b!2764686))

(declare-fun m!3187397 () Bool)

(assert (=> b!2764684 m!3187397))

(declare-fun m!3187399 () Bool)

(assert (=> d!802816 m!3187399))

(assert (=> d!802816 m!3187385))

(declare-fun m!3187401 () Bool)

(assert (=> d!802816 m!3187401))

(declare-fun m!3187403 () Bool)

(assert (=> b!2764685 m!3187403))

(assert (=> b!2764685 m!3187231))

(declare-fun m!3187405 () Bool)

(assert (=> b!2764685 m!3187405))

(assert (=> b!2764633 d!802816))

(declare-fun b!2764705 () Bool)

(declare-fun e!1743126 () List!32027)

(assert (=> b!2764705 (= e!1743126 (drop!1695 (t!228147 lt!982347) (- 0 1)))))

(declare-fun d!802818 () Bool)

(declare-fun e!1743125 () Bool)

(assert (=> d!802818 e!1743125))

(declare-fun res!1157108 () Bool)

(assert (=> d!802818 (=> (not res!1157108) (not e!1743125))))

(declare-fun lt!982430 () List!32027)

(assert (=> d!802818 (= res!1157108 (= ((_ map implies) (content!4496 lt!982430) (content!4496 lt!982347)) ((as const (InoxSet C!16292)) true)))))

(declare-fun e!1743123 () List!32027)

(assert (=> d!802818 (= lt!982430 e!1743123)))

(declare-fun c!448362 () Bool)

(assert (=> d!802818 (= c!448362 ((_ is Nil!31927) lt!982347))))

(assert (=> d!802818 (= (drop!1695 lt!982347 0) lt!982430)))

(declare-fun b!2764706 () Bool)

(declare-fun e!1743124 () Int)

(declare-fun e!1743122 () Int)

(assert (=> b!2764706 (= e!1743124 e!1743122)))

(declare-fun c!448364 () Bool)

(declare-fun call!179838 () Int)

(assert (=> b!2764706 (= c!448364 (>= 0 call!179838))))

(declare-fun b!2764707 () Bool)

(assert (=> b!2764707 (= e!1743123 Nil!31927)))

(declare-fun b!2764708 () Bool)

(assert (=> b!2764708 (= e!1743122 (- call!179838 0))))

(declare-fun bm!179833 () Bool)

(assert (=> bm!179833 (= call!179838 (size!24697 lt!982347))))

(declare-fun b!2764709 () Bool)

(assert (=> b!2764709 (= e!1743126 lt!982347)))

(declare-fun b!2764710 () Bool)

(assert (=> b!2764710 (= e!1743123 e!1743126)))

(declare-fun c!448365 () Bool)

(assert (=> b!2764710 (= c!448365 (<= 0 0))))

(declare-fun b!2764711 () Bool)

(assert (=> b!2764711 (= e!1743124 call!179838)))

(declare-fun b!2764712 () Bool)

(assert (=> b!2764712 (= e!1743125 (= (size!24697 lt!982430) e!1743124))))

(declare-fun c!448363 () Bool)

(assert (=> b!2764712 (= c!448363 (<= 0 0))))

(declare-fun b!2764713 () Bool)

(assert (=> b!2764713 (= e!1743122 0)))

(assert (= (and d!802818 c!448362) b!2764707))

(assert (= (and d!802818 (not c!448362)) b!2764710))

(assert (= (and b!2764710 c!448365) b!2764709))

(assert (= (and b!2764710 (not c!448365)) b!2764705))

(assert (= (and d!802818 res!1157108) b!2764712))

(assert (= (and b!2764712 c!448363) b!2764711))

(assert (= (and b!2764712 (not c!448363)) b!2764706))

(assert (= (and b!2764706 c!448364) b!2764713))

(assert (= (and b!2764706 (not c!448364)) b!2764708))

(assert (= (or b!2764711 b!2764706 b!2764708) bm!179833))

(declare-fun m!3187407 () Bool)

(assert (=> b!2764705 m!3187407))

(declare-fun m!3187409 () Bool)

(assert (=> d!802818 m!3187409))

(declare-fun m!3187411 () Bool)

(assert (=> d!802818 m!3187411))

(assert (=> bm!179833 m!3187235))

(declare-fun m!3187413 () Bool)

(assert (=> b!2764712 m!3187413))

(assert (=> b!2764633 d!802818))

(declare-fun d!802820 () Bool)

(declare-fun lt!982433 () C!16292)

(assert (=> d!802820 (= lt!982433 (apply!7477 (list!12056 input!5495) 0))))

(declare-fun apply!7478 (Conc!9949 Int) C!16292)

(assert (=> d!802820 (= lt!982433 (apply!7478 (c!448346 input!5495) 0))))

(declare-fun e!1743129 () Bool)

(assert (=> d!802820 e!1743129))

(declare-fun res!1157111 () Bool)

(assert (=> d!802820 (=> (not res!1157111) (not e!1743129))))

(assert (=> d!802820 (= res!1157111 (<= 0 0))))

(assert (=> d!802820 (= (apply!7476 input!5495 0) lt!982433)))

(declare-fun b!2764716 () Bool)

(assert (=> b!2764716 (= e!1743129 (< 0 (size!24698 input!5495)))))

(assert (= (and d!802820 res!1157111) b!2764716))

(assert (=> d!802820 m!3187327))

(assert (=> d!802820 m!3187327))

(declare-fun m!3187415 () Bool)

(assert (=> d!802820 m!3187415))

(declare-fun m!3187417 () Bool)

(assert (=> d!802820 m!3187417))

(assert (=> b!2764716 m!3187331))

(assert (=> b!2764633 d!802820))

(declare-fun d!802822 () Bool)

(declare-fun list!12057 (Conc!9949) List!32027)

(assert (=> d!802822 (= (list!12056 (_2!18842 lt!982382)) (list!12057 (c!448346 (_2!18842 lt!982382))))))

(declare-fun bs!500230 () Bool)

(assert (= bs!500230 d!802822))

(declare-fun m!3187419 () Bool)

(assert (=> bs!500230 m!3187419))

(assert (=> b!2764633 d!802822))

(declare-fun d!802824 () Bool)

(assert (=> d!802824 (= (head!6137 lt!982372) (h!37347 lt!982372))))

(assert (=> b!2764633 d!802824))

(declare-fun d!802826 () Bool)

(declare-fun e!1743132 () Bool)

(assert (=> d!802826 e!1743132))

(declare-fun res!1157117 () Bool)

(assert (=> d!802826 (=> (not res!1157117) (not e!1743132))))

(declare-fun lt!982438 () tuple2!32008)

(declare-fun isBalanced!3032 (Conc!9949) Bool)

(assert (=> d!802826 (= res!1157117 (isBalanced!3032 (c!448346 (_1!18842 lt!982438))))))

(declare-datatypes ((tuple2!32010 0))(
  ( (tuple2!32011 (_1!18843 Conc!9949) (_2!18843 Conc!9949)) )
))
(declare-fun lt!982439 () tuple2!32010)

(assert (=> d!802826 (= lt!982438 (tuple2!32009 (BalanceConc!19513 (_1!18843 lt!982439)) (BalanceConc!19513 (_2!18843 lt!982439))))))

(declare-fun splitAt!100 (Conc!9949 Int) tuple2!32010)

(assert (=> d!802826 (= lt!982439 (splitAt!100 (c!448346 input!5495) 0))))

(assert (=> d!802826 (isBalanced!3032 (c!448346 input!5495))))

(assert (=> d!802826 (= (splitAt!99 input!5495 0) lt!982438)))

(declare-fun b!2764721 () Bool)

(declare-fun res!1157116 () Bool)

(assert (=> b!2764721 (=> (not res!1157116) (not e!1743132))))

(assert (=> b!2764721 (= res!1157116 (isBalanced!3032 (c!448346 (_2!18842 lt!982438))))))

(declare-fun b!2764722 () Bool)

(declare-fun splitAtIndex!47 (List!32027 Int) tuple2!32000)

(assert (=> b!2764722 (= e!1743132 (= (tuple2!32001 (list!12056 (_1!18842 lt!982438)) (list!12056 (_2!18842 lt!982438))) (splitAtIndex!47 (list!12056 input!5495) 0)))))

(assert (= (and d!802826 res!1157117) b!2764721))

(assert (= (and b!2764721 res!1157116) b!2764722))

(declare-fun m!3187421 () Bool)

(assert (=> d!802826 m!3187421))

(declare-fun m!3187423 () Bool)

(assert (=> d!802826 m!3187423))

(declare-fun m!3187425 () Bool)

(assert (=> d!802826 m!3187425))

(declare-fun m!3187427 () Bool)

(assert (=> b!2764721 m!3187427))

(declare-fun m!3187429 () Bool)

(assert (=> b!2764722 m!3187429))

(declare-fun m!3187431 () Bool)

(assert (=> b!2764722 m!3187431))

(assert (=> b!2764722 m!3187327))

(assert (=> b!2764722 m!3187327))

(declare-fun m!3187433 () Bool)

(assert (=> b!2764722 m!3187433))

(assert (=> b!2764633 d!802826))

(declare-fun d!802828 () Bool)

(declare-fun lt!982442 () Int)

(assert (=> d!802828 (>= lt!982442 0)))

(declare-fun e!1743135 () Int)

(assert (=> d!802828 (= lt!982442 e!1743135)))

(declare-fun c!448368 () Bool)

(assert (=> d!802828 (= c!448368 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802828 (= (size!24697 Nil!31927) lt!982442)))

(declare-fun b!2764727 () Bool)

(assert (=> b!2764727 (= e!1743135 0)))

(declare-fun b!2764728 () Bool)

(assert (=> b!2764728 (= e!1743135 (+ 1 (size!24697 (t!228147 Nil!31927))))))

(assert (= (and d!802828 c!448368) b!2764727))

(assert (= (and d!802828 (not c!448368)) b!2764728))

(declare-fun m!3187435 () Bool)

(assert (=> b!2764728 m!3187435))

(assert (=> b!2764633 d!802828))

(declare-fun d!802830 () Bool)

(declare-fun e!1743143 () Bool)

(assert (=> d!802830 e!1743143))

(declare-fun res!1157129 () Bool)

(assert (=> d!802830 (=> res!1157129 e!1743143)))

(declare-fun lt!982445 () Bool)

(assert (=> d!802830 (= res!1157129 (not lt!982445))))

(declare-fun e!1743144 () Bool)

(assert (=> d!802830 (= lt!982445 e!1743144)))

(declare-fun res!1157128 () Bool)

(assert (=> d!802830 (=> res!1157128 e!1743144)))

(assert (=> d!802830 (= res!1157128 ((_ is Nil!31927) (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927))))))

(assert (=> d!802830 (= (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)) lt!982347) lt!982445)))

(declare-fun b!2764737 () Bool)

(declare-fun e!1743142 () Bool)

(assert (=> b!2764737 (= e!1743144 e!1743142)))

(declare-fun res!1157127 () Bool)

(assert (=> b!2764737 (=> (not res!1157127) (not e!1743142))))

(assert (=> b!2764737 (= res!1157127 (not ((_ is Nil!31927) lt!982347)))))

(declare-fun b!2764739 () Bool)

(assert (=> b!2764739 (= e!1743142 (isPrefix!2541 (tail!4375 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927))) (tail!4375 lt!982347)))))

(declare-fun b!2764740 () Bool)

(assert (=> b!2764740 (= e!1743143 (>= (size!24697 lt!982347) (size!24697 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927)))))))

(declare-fun b!2764738 () Bool)

(declare-fun res!1157126 () Bool)

(assert (=> b!2764738 (=> (not res!1157126) (not e!1743142))))

(assert (=> b!2764738 (= res!1157126 (= (head!6137 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982372) Nil!31927))) (head!6137 lt!982347)))))

(assert (= (and d!802830 (not res!1157128)) b!2764737))

(assert (= (and b!2764737 res!1157127) b!2764738))

(assert (= (and b!2764738 res!1157126) b!2764739))

(assert (= (and d!802830 (not res!1157129)) b!2764740))

(assert (=> b!2764739 m!3187239))

(declare-fun m!3187437 () Bool)

(assert (=> b!2764739 m!3187437))

(assert (=> b!2764739 m!3187229))

(assert (=> b!2764739 m!3187437))

(assert (=> b!2764739 m!3187229))

(declare-fun m!3187439 () Bool)

(assert (=> b!2764739 m!3187439))

(assert (=> b!2764740 m!3187235))

(assert (=> b!2764740 m!3187239))

(declare-fun m!3187441 () Bool)

(assert (=> b!2764740 m!3187441))

(assert (=> b!2764738 m!3187239))

(declare-fun m!3187443 () Bool)

(assert (=> b!2764738 m!3187443))

(assert (=> b!2764738 m!3187233))

(assert (=> b!2764633 d!802830))

(declare-fun d!802832 () Bool)

(assert (=> d!802832 (= (head!6137 (drop!1695 lt!982347 0)) (apply!7477 lt!982347 0))))

(declare-fun lt!982448 () Unit!45955)

(declare-fun choose!16203 (List!32027 Int) Unit!45955)

(assert (=> d!802832 (= lt!982448 (choose!16203 lt!982347 0))))

(declare-fun e!1743147 () Bool)

(assert (=> d!802832 e!1743147))

(declare-fun res!1157132 () Bool)

(assert (=> d!802832 (=> (not res!1157132) (not e!1743147))))

(assert (=> d!802832 (= res!1157132 (>= 0 0))))

(assert (=> d!802832 (= (lemmaDropApply!901 lt!982347 0) lt!982448)))

(declare-fun b!2764743 () Bool)

(assert (=> b!2764743 (= e!1743147 (< 0 (size!24697 lt!982347)))))

(assert (= (and d!802832 res!1157132) b!2764743))

(assert (=> d!802832 m!3187251))

(assert (=> d!802832 m!3187251))

(assert (=> d!802832 m!3187269))

(assert (=> d!802832 m!3187265))

(declare-fun m!3187445 () Bool)

(assert (=> d!802832 m!3187445))

(assert (=> b!2764743 m!3187235))

(assert (=> b!2764633 d!802832))

(declare-fun d!802834 () Bool)

(assert (=> d!802834 (= (tail!4375 lt!982347) (t!228147 lt!982347))))

(assert (=> b!2764633 d!802834))

(declare-fun d!802836 () Bool)

(assert (=> d!802836 (= (++!7903 (++!7903 Nil!31927 (Cons!31927 lt!982411 Nil!31927)) lt!982367) lt!982347)))

(declare-fun lt!982451 () Unit!45955)

(declare-fun choose!16204 (List!32027 C!16292 List!32027 List!32027) Unit!45955)

(assert (=> d!802836 (= lt!982451 (choose!16204 Nil!31927 lt!982411 lt!982367 lt!982347))))

(assert (=> d!802836 (= (++!7903 Nil!31927 (Cons!31927 lt!982411 lt!982367)) lt!982347)))

(assert (=> d!802836 (= (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982411 lt!982367 lt!982347) lt!982451)))

(declare-fun bs!500231 () Bool)

(assert (= bs!500231 d!802836))

(assert (=> bs!500231 m!3187289))

(assert (=> bs!500231 m!3187289))

(declare-fun m!3187447 () Bool)

(assert (=> bs!500231 m!3187447))

(declare-fun m!3187449 () Bool)

(assert (=> bs!500231 m!3187449))

(declare-fun m!3187451 () Bool)

(assert (=> bs!500231 m!3187451))

(assert (=> b!2764633 d!802836))

(declare-fun d!802838 () Bool)

(assert (=> d!802838 (= (list!12056 (_1!18842 lt!982382)) (list!12057 (c!448346 (_1!18842 lt!982382))))))

(declare-fun bs!500232 () Bool)

(assert (= bs!500232 d!802838))

(declare-fun m!3187453 () Bool)

(assert (=> bs!500232 m!3187453))

(assert (=> b!2764633 d!802838))

(declare-fun b!2764745 () Bool)

(declare-fun e!1743149 () List!32027)

(assert (=> b!2764745 (= e!1743149 (Cons!31927 (h!37347 lt!982379) (++!7903 (t!228147 lt!982379) lt!982367)))))

(declare-fun b!2764744 () Bool)

(assert (=> b!2764744 (= e!1743149 lt!982367)))

(declare-fun d!802840 () Bool)

(declare-fun e!1743148 () Bool)

(assert (=> d!802840 e!1743148))

(declare-fun res!1157133 () Bool)

(assert (=> d!802840 (=> (not res!1157133) (not e!1743148))))

(declare-fun lt!982452 () List!32027)

(assert (=> d!802840 (= res!1157133 (= (content!4496 lt!982452) ((_ map or) (content!4496 lt!982379) (content!4496 lt!982367))))))

(assert (=> d!802840 (= lt!982452 e!1743149)))

(declare-fun c!448369 () Bool)

(assert (=> d!802840 (= c!448369 ((_ is Nil!31927) lt!982379))))

(assert (=> d!802840 (= (++!7903 lt!982379 lt!982367) lt!982452)))

(declare-fun b!2764747 () Bool)

(assert (=> b!2764747 (= e!1743148 (or (not (= lt!982367 Nil!31927)) (= lt!982452 lt!982379)))))

(declare-fun b!2764746 () Bool)

(declare-fun res!1157134 () Bool)

(assert (=> b!2764746 (=> (not res!1157134) (not e!1743148))))

(assert (=> b!2764746 (= res!1157134 (= (size!24697 lt!982452) (+ (size!24697 lt!982379) (size!24697 lt!982367))))))

(assert (= (and d!802840 c!448369) b!2764744))

(assert (= (and d!802840 (not c!448369)) b!2764745))

(assert (= (and d!802840 res!1157133) b!2764746))

(assert (= (and b!2764746 res!1157134) b!2764747))

(declare-fun m!3187455 () Bool)

(assert (=> b!2764745 m!3187455))

(declare-fun m!3187457 () Bool)

(assert (=> d!802840 m!3187457))

(declare-fun m!3187459 () Bool)

(assert (=> d!802840 m!3187459))

(declare-fun m!3187461 () Bool)

(assert (=> d!802840 m!3187461))

(declare-fun m!3187463 () Bool)

(assert (=> b!2764746 m!3187463))

(declare-fun m!3187465 () Bool)

(assert (=> b!2764746 m!3187465))

(declare-fun m!3187467 () Bool)

(assert (=> b!2764746 m!3187467))

(assert (=> b!2764633 d!802840))

(declare-fun d!802842 () Bool)

(declare-fun lt!982453 () Int)

(assert (=> d!802842 (>= lt!982453 0)))

(declare-fun e!1743150 () Int)

(assert (=> d!802842 (= lt!982453 e!1743150)))

(declare-fun c!448370 () Bool)

(assert (=> d!802842 (= c!448370 ((_ is Nil!31927) lt!982347))))

(assert (=> d!802842 (= (size!24697 lt!982347) lt!982453)))

(declare-fun b!2764748 () Bool)

(assert (=> b!2764748 (= e!1743150 0)))

(declare-fun b!2764749 () Bool)

(assert (=> b!2764749 (= e!1743150 (+ 1 (size!24697 (t!228147 lt!982347))))))

(assert (= (and d!802842 c!448370) b!2764748))

(assert (= (and d!802842 (not c!448370)) b!2764749))

(declare-fun m!3187469 () Bool)

(assert (=> b!2764749 m!3187469))

(assert (=> b!2764633 d!802842))

(declare-fun d!802844 () Bool)

(assert (=> d!802844 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 (getSuffix!1225 lt!982347 Nil!31927)) Nil!31927)) lt!982347)))

(declare-fun lt!982456 () Unit!45955)

(declare-fun choose!16205 (List!32027 List!32027) Unit!45955)

(assert (=> d!802844 (= lt!982456 (choose!16205 Nil!31927 lt!982347))))

(assert (=> d!802844 (isPrefix!2541 Nil!31927 lt!982347)))

(assert (=> d!802844 (= (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982347) lt!982456)))

(declare-fun bs!500233 () Bool)

(assert (= bs!500233 d!802844))

(assert (=> bs!500233 m!3187343))

(declare-fun m!3187471 () Bool)

(assert (=> bs!500233 m!3187471))

(declare-fun m!3187473 () Bool)

(assert (=> bs!500233 m!3187473))

(assert (=> bs!500233 m!3187343))

(declare-fun m!3187475 () Bool)

(assert (=> bs!500233 m!3187475))

(declare-fun m!3187477 () Bool)

(assert (=> bs!500233 m!3187477))

(assert (=> bs!500233 m!3187473))

(declare-fun m!3187479 () Bool)

(assert (=> bs!500233 m!3187479))

(assert (=> b!2764633 d!802844))

(declare-fun d!802846 () Bool)

(assert (=> d!802846 (<= (size!24697 Nil!31927) (size!24697 lt!982347))))

(declare-fun lt!982459 () Unit!45955)

(declare-fun choose!16206 (List!32027 List!32027) Unit!45955)

(assert (=> d!802846 (= lt!982459 (choose!16206 Nil!31927 lt!982347))))

(assert (=> d!802846 (isPrefix!2541 Nil!31927 lt!982347)))

(assert (=> d!802846 (= (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982347) lt!982459)))

(declare-fun bs!500234 () Bool)

(assert (= bs!500234 d!802846))

(assert (=> bs!500234 m!3187231))

(assert (=> bs!500234 m!3187235))

(declare-fun m!3187481 () Bool)

(assert (=> bs!500234 m!3187481))

(assert (=> bs!500234 m!3187471))

(assert (=> b!2764633 d!802846))

(declare-fun d!802848 () Bool)

(declare-fun validCacheMapUp!358 (MutableMap!3648) Bool)

(assert (=> d!802848 (= (valid!2917 (_2!18839 lt!982397)) (validCacheMapUp!358 (cache!3791 (_2!18839 lt!982397))))))

(declare-fun bs!500235 () Bool)

(assert (= bs!500235 d!802848))

(declare-fun m!3187483 () Bool)

(assert (=> bs!500235 m!3187483))

(assert (=> b!2764661 d!802848))

(declare-fun d!802850 () Bool)

(assert (=> d!802850 (isPrefix!2541 Nil!31927 (++!7903 Nil!31927 lt!982347))))

(declare-fun lt!982462 () Unit!45955)

(declare-fun choose!16207 (List!32027 List!32027) Unit!45955)

(assert (=> d!802850 (= lt!982462 (choose!16207 Nil!31927 lt!982347))))

(assert (=> d!802850 (= (lemmaConcatTwoListThenFirstIsPrefix!1653 Nil!31927 lt!982347) lt!982462)))

(declare-fun bs!500236 () Bool)

(assert (= bs!500236 d!802850))

(assert (=> bs!500236 m!3187329))

(assert (=> bs!500236 m!3187329))

(declare-fun m!3187485 () Bool)

(assert (=> bs!500236 m!3187485))

(declare-fun m!3187487 () Bool)

(assert (=> bs!500236 m!3187487))

(assert (=> b!2764661 d!802850))

(declare-fun d!802852 () Bool)

(declare-fun e!1743153 () Bool)

(assert (=> d!802852 e!1743153))

(declare-fun res!1157139 () Bool)

(assert (=> d!802852 (=> (not res!1157139) (not e!1743153))))

(declare-fun lt!982465 () tuple3!4730)

(assert (=> d!802852 (= res!1157139 (valid!2917 (_2!18839 lt!982465)))))

(declare-fun choose!16208 (CacheUp!2354 CacheDown!2474 (InoxSet Context!4570) List!32027 Int List!32027 BalanceConc!19512 Int) tuple3!4730)

(assert (=> d!802852 (= lt!982465 (choose!16208 (_2!18839 lt!982377) (_3!2835 lt!982377) z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358))))

(assert (=> d!802852 (= (++!7903 Nil!31927 lt!982347) (list!12056 input!5495))))

(assert (=> d!802852 (= (findLongestMatchInnerZipperFastMem!20 (_2!18839 lt!982377) (_3!2835 lt!982377) z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358) lt!982465)))

(declare-fun b!2764754 () Bool)

(declare-fun res!1157140 () Bool)

(assert (=> b!2764754 (=> (not res!1157140) (not e!1743153))))

(assert (=> b!2764754 (= res!1157140 (valid!2916 (_3!2835 lt!982465)))))

(declare-fun b!2764755 () Bool)

(assert (=> b!2764755 (= e!1743153 (= (_1!18839 lt!982465) (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358)))))

(assert (= (and d!802852 res!1157139) b!2764754))

(assert (= (and b!2764754 res!1157140) b!2764755))

(declare-fun m!3187489 () Bool)

(assert (=> d!802852 m!3187489))

(declare-fun m!3187491 () Bool)

(assert (=> d!802852 m!3187491))

(assert (=> d!802852 m!3187329))

(assert (=> d!802852 m!3187327))

(declare-fun m!3187493 () Bool)

(assert (=> b!2764754 m!3187493))

(assert (=> b!2764755 m!3187351))

(assert (=> b!2764661 d!802852))

(declare-fun bm!179854 () Bool)

(declare-fun call!179865 () C!16292)

(assert (=> bm!179854 (= call!179865 (apply!7476 input!5495 0))))

(declare-fun b!2764776 () Bool)

(declare-fun e!1743166 () Int)

(declare-fun lt!982575 () Int)

(assert (=> b!2764776 (= e!1743166 (ite (= lt!982575 0) 0 lt!982575))))

(declare-fun call!179867 () Int)

(assert (=> b!2764776 (= lt!982575 call!179867)))

(declare-fun b!2764777 () Bool)

(declare-fun e!1743168 () Int)

(assert (=> b!2764777 (= e!1743168 0)))

(declare-fun call!179863 () (InoxSet Context!4570))

(declare-fun call!179861 () List!32027)

(declare-fun bm!179856 () Bool)

(declare-fun call!179860 () List!32027)

(assert (=> bm!179856 (= call!179867 (findLongestMatchInnerZipperFast!25 call!179863 call!179861 (+ 0 1) call!179860 input!5495 lt!982358))))

(declare-fun bm!179857 () Bool)

(assert (=> bm!179857 (= call!179863 (derivationStepZipper!357 z!3597 call!179865))))

(declare-fun b!2764778 () Bool)

(declare-fun c!448385 () Bool)

(declare-fun call!179862 () Bool)

(assert (=> b!2764778 (= c!448385 call!179862)))

(declare-fun lt!982587 () Unit!45955)

(declare-fun lt!982591 () Unit!45955)

(assert (=> b!2764778 (= lt!982587 lt!982591)))

(declare-fun lt!982559 () C!16292)

(declare-fun lt!982568 () List!32027)

(declare-fun lt!982564 () List!32027)

(assert (=> b!2764778 (= (++!7903 (++!7903 Nil!31927 (Cons!31927 lt!982559 Nil!31927)) lt!982568) lt!982564)))

(assert (=> b!2764778 (= lt!982591 (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982559 lt!982568 lt!982564))))

(declare-fun call!179868 () List!32027)

(assert (=> b!2764778 (= lt!982564 call!179868)))

(assert (=> b!2764778 (= lt!982568 (tail!4375 lt!982347))))

(assert (=> b!2764778 (= lt!982559 (apply!7476 input!5495 0))))

(declare-fun lt!982557 () Unit!45955)

(declare-fun lt!982551 () Unit!45955)

(assert (=> b!2764778 (= lt!982557 lt!982551)))

(declare-fun lt!982561 () List!32027)

(assert (=> b!2764778 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 (getSuffix!1225 lt!982561 Nil!31927)) Nil!31927)) lt!982561)))

(assert (=> b!2764778 (= lt!982551 (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982561))))

(assert (=> b!2764778 (= lt!982561 call!179868)))

(declare-fun lt!982552 () Unit!45955)

(declare-fun e!1743167 () Unit!45955)

(assert (=> b!2764778 (= lt!982552 e!1743167)))

(declare-fun c!448381 () Bool)

(assert (=> b!2764778 (= c!448381 (= (size!24697 Nil!31927) (size!24698 input!5495)))))

(declare-fun lt!982578 () Unit!45955)

(declare-fun lt!982566 () Unit!45955)

(assert (=> b!2764778 (= lt!982578 lt!982566)))

(declare-fun lt!982570 () List!32027)

(assert (=> b!2764778 (<= (size!24697 Nil!31927) (size!24697 lt!982570))))

(assert (=> b!2764778 (= lt!982566 (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982570))))

(assert (=> b!2764778 (= lt!982570 call!179868)))

(declare-fun lt!982555 () Unit!45955)

(declare-fun lt!982579 () Unit!45955)

(assert (=> b!2764778 (= lt!982555 lt!982579)))

(declare-fun lt!982574 () List!32027)

(assert (=> b!2764778 (= (head!6137 (drop!1695 lt!982574 0)) (apply!7477 lt!982574 0))))

(assert (=> b!2764778 (= lt!982579 (lemmaDropApply!901 lt!982574 0))))

(assert (=> b!2764778 (= lt!982574 call!179868)))

(declare-fun lt!982585 () Unit!45955)

(declare-fun lt!982553 () Unit!45955)

(assert (=> b!2764778 (= lt!982585 lt!982553)))

(declare-fun lt!982572 () List!32027)

(declare-fun lt!982558 () List!32027)

(assert (=> b!2764778 (and (= lt!982572 Nil!31927) (= lt!982558 lt!982347))))

(assert (=> b!2764778 (= lt!982553 (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982572 lt!982558 Nil!31927 lt!982347))))

(declare-fun lt!982565 () tuple2!32008)

(assert (=> b!2764778 (= lt!982558 (list!12056 (_2!18842 lt!982565)))))

(assert (=> b!2764778 (= lt!982572 (list!12056 (_1!18842 lt!982565)))))

(assert (=> b!2764778 (= lt!982565 (splitAt!99 input!5495 0))))

(declare-fun e!1743164 () Int)

(assert (=> b!2764778 (= e!1743164 e!1743166)))

(declare-fun b!2764779 () Bool)

(declare-fun e!1743165 () Int)

(assert (=> b!2764779 (= e!1743165 0)))

(declare-fun b!2764780 () Bool)

(assert (=> b!2764780 (= e!1743168 0)))

(declare-fun bm!179858 () Bool)

(assert (=> bm!179858 (= call!179861 (++!7903 Nil!31927 (Cons!31927 call!179865 Nil!31927)))))

(declare-fun b!2764781 () Bool)

(assert (=> b!2764781 (= e!1743165 e!1743164)))

(declare-fun c!448384 () Bool)

(assert (=> b!2764781 (= c!448384 (= 0 lt!982358))))

(declare-fun b!2764782 () Bool)

(declare-fun Unit!45963 () Unit!45955)

(assert (=> b!2764782 (= e!1743167 Unit!45963)))

(declare-fun lt!982582 () List!32027)

(assert (=> b!2764782 (= lt!982582 call!179868)))

(declare-fun lt!982581 () List!32027)

(assert (=> b!2764782 (= lt!982581 call!179868)))

(declare-fun lt!982576 () Unit!45955)

(declare-fun call!179859 () Unit!45955)

(assert (=> b!2764782 (= lt!982576 call!179859)))

(declare-fun call!179866 () Bool)

(assert (=> b!2764782 call!179866))

(declare-fun lt!982584 () Unit!45955)

(assert (=> b!2764782 (= lt!982584 lt!982576)))

(declare-fun lt!982589 () List!32027)

(assert (=> b!2764782 (= lt!982589 call!179868)))

(declare-fun lt!982569 () Unit!45955)

(declare-fun call!179864 () Unit!45955)

(assert (=> b!2764782 (= lt!982569 call!179864)))

(assert (=> b!2764782 (= lt!982589 Nil!31927)))

(declare-fun lt!982580 () Unit!45955)

(assert (=> b!2764782 (= lt!982580 lt!982569)))

(assert (=> b!2764782 false))

(declare-fun bm!179859 () Bool)

(declare-fun lt!982577 () List!32027)

(declare-fun lt!982560 () List!32027)

(assert (=> bm!179859 (= call!179866 (isPrefix!2541 (ite c!448384 lt!982560 lt!982582) (ite c!448384 lt!982577 lt!982581)))))

(declare-fun bm!179855 () Bool)

(assert (=> bm!179855 (= call!179859 (lemmaIsPrefixRefl!1668 (ite c!448384 lt!982560 lt!982582) (ite c!448384 lt!982577 lt!982581)))))

(declare-fun d!802854 () Bool)

(declare-fun lt!982590 () Int)

(assert (=> d!802854 (= (size!24697 (_1!18834 (findLongestMatchInnerZipper!11 z!3597 Nil!31927 0 lt!982347 (list!12056 input!5495) lt!982358))) lt!982590)))

(assert (=> d!802854 (= lt!982590 e!1743165)))

(declare-fun c!448383 () Bool)

(assert (=> d!802854 (= c!448383 (lostCauseZipper!429 z!3597))))

(declare-fun lt!982567 () Unit!45955)

(declare-fun Unit!45964 () Unit!45955)

(assert (=> d!802854 (= lt!982567 Unit!45964)))

(assert (=> d!802854 (= (getSuffix!1225 (list!12056 input!5495) Nil!31927) lt!982347)))

(declare-fun lt!982573 () Unit!45955)

(declare-fun lt!982588 () Unit!45955)

(assert (=> d!802854 (= lt!982573 lt!982588)))

(declare-fun lt!982562 () List!32027)

(assert (=> d!802854 (= lt!982347 lt!982562)))

(assert (=> d!802854 (= lt!982588 (lemmaSamePrefixThenSameSuffix!1127 Nil!31927 lt!982347 Nil!31927 lt!982562 (list!12056 input!5495)))))

(assert (=> d!802854 (= lt!982562 (getSuffix!1225 (list!12056 input!5495) Nil!31927))))

(declare-fun lt!982586 () Unit!45955)

(declare-fun lt!982563 () Unit!45955)

(assert (=> d!802854 (= lt!982586 lt!982563)))

(assert (=> d!802854 (isPrefix!2541 Nil!31927 (++!7903 Nil!31927 lt!982347))))

(assert (=> d!802854 (= lt!982563 (lemmaConcatTwoListThenFirstIsPrefix!1653 Nil!31927 lt!982347))))

(assert (=> d!802854 (= (++!7903 Nil!31927 lt!982347) (list!12056 input!5495))))

(assert (=> d!802854 (= (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358) lt!982590)))

(declare-fun bm!179860 () Bool)

(assert (=> bm!179860 (= call!179868 (list!12056 input!5495))))

(declare-fun b!2764783 () Bool)

(assert (=> b!2764783 (= e!1743166 call!179867)))

(declare-fun lt!982571 () List!32027)

(declare-fun bm!179861 () Bool)

(assert (=> bm!179861 (= call!179864 (lemmaIsPrefixSameLengthThenSameList!449 (ite c!448384 lt!982571 lt!982589) Nil!31927 call!179868))))

(declare-fun b!2764784 () Bool)

(declare-fun Unit!45965 () Unit!45955)

(assert (=> b!2764784 (= e!1743167 Unit!45965)))

(declare-fun b!2764785 () Bool)

(declare-fun c!448382 () Bool)

(assert (=> b!2764785 (= c!448382 call!179862)))

(declare-fun lt!982556 () Unit!45955)

(declare-fun lt!982550 () Unit!45955)

(assert (=> b!2764785 (= lt!982556 lt!982550)))

(assert (=> b!2764785 (= lt!982571 Nil!31927)))

(assert (=> b!2764785 (= lt!982550 call!179864)))

(assert (=> b!2764785 (= lt!982571 call!179868)))

(declare-fun lt!982583 () Unit!45955)

(declare-fun lt!982554 () Unit!45955)

(assert (=> b!2764785 (= lt!982583 lt!982554)))

(assert (=> b!2764785 call!179866))

(assert (=> b!2764785 (= lt!982554 call!179859)))

(assert (=> b!2764785 (= lt!982577 call!179868)))

(assert (=> b!2764785 (= lt!982560 call!179868)))

(assert (=> b!2764785 (= e!1743164 e!1743168)))

(declare-fun bm!179862 () Bool)

(assert (=> bm!179862 (= call!179860 (tail!4375 lt!982347))))

(declare-fun bm!179863 () Bool)

(assert (=> bm!179863 (= call!179862 (nullableZipper!621 z!3597))))

(assert (= (and d!802854 c!448383) b!2764779))

(assert (= (and d!802854 (not c!448383)) b!2764781))

(assert (= (and b!2764781 c!448384) b!2764785))

(assert (= (and b!2764781 (not c!448384)) b!2764778))

(assert (= (and b!2764785 c!448382) b!2764780))

(assert (= (and b!2764785 (not c!448382)) b!2764777))

(assert (= (and b!2764778 c!448381) b!2764782))

(assert (= (and b!2764778 (not c!448381)) b!2764784))

(assert (= (and b!2764778 c!448385) b!2764776))

(assert (= (and b!2764778 (not c!448385)) b!2764783))

(assert (= (or b!2764776 b!2764783) bm!179862))

(assert (= (or b!2764776 b!2764783) bm!179854))

(assert (= (or b!2764776 b!2764783) bm!179857))

(assert (= (or b!2764776 b!2764783) bm!179858))

(assert (= (or b!2764776 b!2764783) bm!179856))

(assert (= (or b!2764785 b!2764782) bm!179859))

(assert (= (or b!2764785 b!2764782 b!2764778) bm!179860))

(assert (= (or b!2764785 b!2764782) bm!179855))

(assert (= (or b!2764785 b!2764778) bm!179863))

(assert (= (or b!2764785 b!2764782) bm!179861))

(declare-fun m!3187495 () Bool)

(assert (=> bm!179856 m!3187495))

(declare-fun m!3187497 () Bool)

(assert (=> bm!179857 m!3187497))

(declare-fun m!3187499 () Bool)

(assert (=> bm!179859 m!3187499))

(assert (=> d!802854 m!3187327))

(declare-fun m!3187501 () Bool)

(assert (=> d!802854 m!3187501))

(assert (=> d!802854 m!3187333))

(declare-fun m!3187503 () Bool)

(assert (=> d!802854 m!3187503))

(assert (=> d!802854 m!3187327))

(declare-fun m!3187505 () Bool)

(assert (=> d!802854 m!3187505))

(assert (=> d!802854 m!3187329))

(assert (=> d!802854 m!3187485))

(assert (=> d!802854 m!3187353))

(assert (=> d!802854 m!3187327))

(assert (=> d!802854 m!3187329))

(assert (=> d!802854 m!3187327))

(declare-fun m!3187507 () Bool)

(assert (=> d!802854 m!3187507))

(assert (=> bm!179863 m!3187315))

(assert (=> bm!179854 m!3187259))

(declare-fun m!3187509 () Bool)

(assert (=> bm!179861 m!3187509))

(assert (=> bm!179862 m!3187229))

(declare-fun m!3187511 () Bool)

(assert (=> bm!179858 m!3187511))

(declare-fun m!3187513 () Bool)

(assert (=> b!2764778 m!3187513))

(declare-fun m!3187515 () Bool)

(assert (=> b!2764778 m!3187515))

(assert (=> b!2764778 m!3187259))

(declare-fun m!3187517 () Bool)

(assert (=> b!2764778 m!3187517))

(declare-fun m!3187519 () Bool)

(assert (=> b!2764778 m!3187519))

(declare-fun m!3187521 () Bool)

(assert (=> b!2764778 m!3187521))

(declare-fun m!3187523 () Bool)

(assert (=> b!2764778 m!3187523))

(assert (=> b!2764778 m!3187253))

(declare-fun m!3187525 () Bool)

(assert (=> b!2764778 m!3187525))

(declare-fun m!3187527 () Bool)

(assert (=> b!2764778 m!3187527))

(assert (=> b!2764778 m!3187521))

(declare-fun m!3187529 () Bool)

(assert (=> b!2764778 m!3187529))

(declare-fun m!3187531 () Bool)

(assert (=> b!2764778 m!3187531))

(declare-fun m!3187533 () Bool)

(assert (=> b!2764778 m!3187533))

(assert (=> b!2764778 m!3187525))

(declare-fun m!3187535 () Bool)

(assert (=> b!2764778 m!3187535))

(assert (=> b!2764778 m!3187231))

(declare-fun m!3187537 () Bool)

(assert (=> b!2764778 m!3187537))

(assert (=> b!2764778 m!3187531))

(assert (=> b!2764778 m!3187229))

(declare-fun m!3187539 () Bool)

(assert (=> b!2764778 m!3187539))

(assert (=> b!2764778 m!3187517))

(declare-fun m!3187541 () Bool)

(assert (=> b!2764778 m!3187541))

(declare-fun m!3187543 () Bool)

(assert (=> b!2764778 m!3187543))

(assert (=> b!2764778 m!3187331))

(declare-fun m!3187545 () Bool)

(assert (=> b!2764778 m!3187545))

(declare-fun m!3187547 () Bool)

(assert (=> bm!179855 m!3187547))

(assert (=> bm!179860 m!3187327))

(assert (=> b!2764661 d!802854))

(declare-fun bs!500237 () Bool)

(declare-fun b!2764790 () Bool)

(declare-fun d!802856 () Bool)

(assert (= bs!500237 (and b!2764790 d!802856)))

(declare-fun lambda!101484 () Int)

(declare-fun lambda!101483 () Int)

(assert (=> bs!500237 (not (= lambda!101484 lambda!101483))))

(declare-fun bs!500238 () Bool)

(declare-fun b!2764791 () Bool)

(assert (= bs!500238 (and b!2764791 d!802856)))

(declare-fun lambda!101485 () Int)

(assert (=> bs!500238 (not (= lambda!101485 lambda!101483))))

(declare-fun bs!500239 () Bool)

(assert (= bs!500239 (and b!2764791 b!2764790)))

(assert (=> bs!500239 (= lambda!101485 lambda!101484)))

(declare-fun c!448396 () Bool)

(declare-datatypes ((List!32030 0))(
  ( (Nil!31930) (Cons!31930 (h!37350 Context!4570) (t!228150 List!32030)) )
))
(declare-fun lt!982614 () List!32030)

(declare-fun call!179873 () Bool)

(declare-fun bm!179868 () Bool)

(declare-fun lt!982608 () List!32030)

(declare-fun exists!965 (List!32030 Int) Bool)

(assert (=> bm!179868 (= call!179873 (exists!965 (ite c!448396 lt!982614 lt!982608) (ite c!448396 lambda!101484 lambda!101485)))))

(declare-fun e!1743175 () Unit!45955)

(declare-fun Unit!45966 () Unit!45955)

(assert (=> b!2764790 (= e!1743175 Unit!45966)))

(declare-fun call!179874 () List!32030)

(assert (=> b!2764790 (= lt!982614 call!179874)))

(declare-fun lt!982613 () Unit!45955)

(declare-fun lemmaNotForallThenExists!79 (List!32030 Int) Unit!45955)

(assert (=> b!2764790 (= lt!982613 (lemmaNotForallThenExists!79 lt!982614 lambda!101483))))

(assert (=> b!2764790 call!179873))

(declare-fun lt!982611 () Unit!45955)

(assert (=> b!2764790 (= lt!982611 lt!982613)))

(declare-fun lt!982609 () Bool)

(declare-datatypes ((Option!6257 0))(
  ( (None!6256) (Some!6256 (v!33538 List!32027)) )
))
(declare-fun isEmpty!18083 (Option!6257) Bool)

(declare-fun getLanguageWitness!182 ((InoxSet Context!4570)) Option!6257)

(assert (=> d!802856 (= lt!982609 (isEmpty!18083 (getLanguageWitness!182 z!3597)))))

(declare-fun forall!6612 ((InoxSet Context!4570) Int) Bool)

(assert (=> d!802856 (= lt!982609 (forall!6612 z!3597 lambda!101483))))

(declare-fun lt!982612 () Unit!45955)

(assert (=> d!802856 (= lt!982612 e!1743175)))

(assert (=> d!802856 (= c!448396 (not (forall!6612 z!3597 lambda!101483)))))

(assert (=> d!802856 (= (lostCauseZipper!429 z!3597) lt!982609)))

(declare-fun Unit!45967 () Unit!45955)

(assert (=> b!2764791 (= e!1743175 Unit!45967)))

(assert (=> b!2764791 (= lt!982608 call!179874)))

(declare-fun lt!982610 () Unit!45955)

(declare-fun lemmaForallThenNotExists!79 (List!32030 Int) Unit!45955)

(assert (=> b!2764791 (= lt!982610 (lemmaForallThenNotExists!79 lt!982608 lambda!101483))))

(assert (=> b!2764791 (not call!179873)))

(declare-fun lt!982615 () Unit!45955)

(assert (=> b!2764791 (= lt!982615 lt!982610)))

(declare-fun bm!179869 () Bool)

(declare-fun toList!1832 ((InoxSet Context!4570)) List!32030)

(assert (=> bm!179869 (= call!179874 (toList!1832 z!3597))))

(assert (= (and d!802856 c!448396) b!2764790))

(assert (= (and d!802856 (not c!448396)) b!2764791))

(assert (= (or b!2764790 b!2764791) bm!179868))

(assert (= (or b!2764790 b!2764791) bm!179869))

(declare-fun m!3187549 () Bool)

(assert (=> bm!179869 m!3187549))

(declare-fun m!3187551 () Bool)

(assert (=> b!2764790 m!3187551))

(declare-fun m!3187553 () Bool)

(assert (=> b!2764791 m!3187553))

(declare-fun m!3187555 () Bool)

(assert (=> d!802856 m!3187555))

(assert (=> d!802856 m!3187555))

(declare-fun m!3187557 () Bool)

(assert (=> d!802856 m!3187557))

(declare-fun m!3187559 () Bool)

(assert (=> d!802856 m!3187559))

(assert (=> d!802856 m!3187559))

(declare-fun m!3187561 () Bool)

(assert (=> bm!179868 m!3187561))

(assert (=> b!2764661 d!802856))

(declare-fun d!802858 () Bool)

(assert (=> d!802858 (= (list!12056 input!5495) (list!12057 (c!448346 input!5495)))))

(declare-fun bs!500240 () Bool)

(assert (= bs!500240 d!802858))

(declare-fun m!3187563 () Bool)

(assert (=> bs!500240 m!3187563))

(assert (=> b!2764661 d!802858))

(declare-fun d!802860 () Bool)

(declare-fun lt!982618 () Int)

(assert (=> d!802860 (= lt!982618 (size!24697 (list!12056 input!5495)))))

(declare-fun size!24699 (Conc!9949) Int)

(assert (=> d!802860 (= lt!982618 (size!24699 (c!448346 input!5495)))))

(assert (=> d!802860 (= (size!24698 input!5495) lt!982618)))

(declare-fun bs!500241 () Bool)

(assert (= bs!500241 d!802860))

(assert (=> bs!500241 m!3187327))

(assert (=> bs!500241 m!3187327))

(declare-fun m!3187565 () Bool)

(assert (=> bs!500241 m!3187565))

(declare-fun m!3187567 () Bool)

(assert (=> bs!500241 m!3187567))

(assert (=> b!2764661 d!802860))

(declare-fun b!2764793 () Bool)

(declare-fun e!1743177 () List!32027)

(assert (=> b!2764793 (= e!1743177 (Cons!31927 (h!37347 Nil!31927) (++!7903 (t!228147 Nil!31927) lt!982347)))))

(declare-fun b!2764792 () Bool)

(assert (=> b!2764792 (= e!1743177 lt!982347)))

(declare-fun d!802862 () Bool)

(declare-fun e!1743176 () Bool)

(assert (=> d!802862 e!1743176))

(declare-fun res!1157141 () Bool)

(assert (=> d!802862 (=> (not res!1157141) (not e!1743176))))

(declare-fun lt!982619 () List!32027)

(assert (=> d!802862 (= res!1157141 (= (content!4496 lt!982619) ((_ map or) (content!4496 Nil!31927) (content!4496 lt!982347))))))

(assert (=> d!802862 (= lt!982619 e!1743177)))

(declare-fun c!448397 () Bool)

(assert (=> d!802862 (= c!448397 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802862 (= (++!7903 Nil!31927 lt!982347) lt!982619)))

(declare-fun b!2764795 () Bool)

(assert (=> b!2764795 (= e!1743176 (or (not (= lt!982347 Nil!31927)) (= lt!982619 Nil!31927)))))

(declare-fun b!2764794 () Bool)

(declare-fun res!1157142 () Bool)

(assert (=> b!2764794 (=> (not res!1157142) (not e!1743176))))

(assert (=> b!2764794 (= res!1157142 (= (size!24697 lt!982619) (+ (size!24697 Nil!31927) (size!24697 lt!982347))))))

(assert (= (and d!802862 c!448397) b!2764792))

(assert (= (and d!802862 (not c!448397)) b!2764793))

(assert (= (and d!802862 res!1157141) b!2764794))

(assert (= (and b!2764794 res!1157142) b!2764795))

(declare-fun m!3187569 () Bool)

(assert (=> b!2764793 m!3187569))

(declare-fun m!3187571 () Bool)

(assert (=> d!802862 m!3187571))

(assert (=> d!802862 m!3187385))

(assert (=> d!802862 m!3187411))

(declare-fun m!3187573 () Bool)

(assert (=> b!2764794 m!3187573))

(assert (=> b!2764794 m!3187231))

(assert (=> b!2764794 m!3187235))

(assert (=> b!2764661 d!802862))

(declare-fun d!802864 () Bool)

(assert (=> d!802864 (= (list!12056 (_2!18842 lt!982368)) (list!12057 (c!448346 (_2!18842 lt!982368))))))

(declare-fun bs!500242 () Bool)

(assert (= bs!500242 d!802864))

(declare-fun m!3187575 () Bool)

(assert (=> bs!500242 m!3187575))

(assert (=> b!2764661 d!802864))

(declare-fun d!802866 () Bool)

(declare-fun e!1743198 () Bool)

(assert (=> d!802866 e!1743198))

(declare-fun res!1157148 () Bool)

(assert (=> d!802866 (=> (not res!1157148) (not e!1743198))))

(declare-fun lt!982688 () tuple2!32000)

(assert (=> d!802866 (= res!1157148 (= (++!7903 (_1!18834 lt!982688) (_2!18834 lt!982688)) lt!982347))))

(declare-fun e!1743199 () tuple2!32000)

(assert (=> d!802866 (= lt!982688 e!1743199)))

(declare-fun c!448410 () Bool)

(assert (=> d!802866 (= c!448410 (lostCauseZipper!429 z!3597))))

(declare-fun lt!982690 () Unit!45955)

(declare-fun Unit!45968 () Unit!45955)

(assert (=> d!802866 (= lt!982690 Unit!45968)))

(assert (=> d!802866 (= (getSuffix!1225 lt!982347 Nil!31927) lt!982347)))

(declare-fun lt!982691 () Unit!45955)

(declare-fun lt!982678 () Unit!45955)

(assert (=> d!802866 (= lt!982691 lt!982678)))

(declare-fun lt!982687 () List!32027)

(assert (=> d!802866 (= lt!982347 lt!982687)))

(assert (=> d!802866 (= lt!982678 (lemmaSamePrefixThenSameSuffix!1127 Nil!31927 lt!982347 Nil!31927 lt!982687 lt!982347))))

(assert (=> d!802866 (= lt!982687 (getSuffix!1225 lt!982347 Nil!31927))))

(declare-fun lt!982674 () Unit!45955)

(declare-fun lt!982682 () Unit!45955)

(assert (=> d!802866 (= lt!982674 lt!982682)))

(assert (=> d!802866 (isPrefix!2541 Nil!31927 (++!7903 Nil!31927 lt!982347))))

(assert (=> d!802866 (= lt!982682 (lemmaConcatTwoListThenFirstIsPrefix!1653 Nil!31927 lt!982347))))

(assert (=> d!802866 (= (++!7903 Nil!31927 lt!982347) lt!982347)))

(assert (=> d!802866 (= (findLongestMatchInnerZipper!11 z!3597 Nil!31927 0 lt!982347 lt!982347 lt!982358) lt!982688)))

(declare-fun b!2764824 () Bool)

(declare-fun e!1743194 () tuple2!32000)

(declare-fun lt!982685 () tuple2!32000)

(assert (=> b!2764824 (= e!1743194 lt!982685)))

(declare-fun b!2764825 () Bool)

(declare-fun c!448411 () Bool)

(declare-fun call!179896 () Bool)

(assert (=> b!2764825 (= c!448411 call!179896)))

(declare-fun lt!982676 () Unit!45955)

(declare-fun lt!982683 () Unit!45955)

(assert (=> b!2764825 (= lt!982676 lt!982683)))

(declare-fun lt!982697 () C!16292)

(declare-fun lt!982686 () List!32027)

(assert (=> b!2764825 (= (++!7903 (++!7903 Nil!31927 (Cons!31927 lt!982697 Nil!31927)) lt!982686) lt!982347)))

(assert (=> b!2764825 (= lt!982683 (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982697 lt!982686 lt!982347))))

(assert (=> b!2764825 (= lt!982686 (tail!4375 lt!982347))))

(assert (=> b!2764825 (= lt!982697 (head!6137 lt!982347))))

(declare-fun lt!982696 () Unit!45955)

(declare-fun lt!982680 () Unit!45955)

(assert (=> b!2764825 (= lt!982696 lt!982680)))

(assert (=> b!2764825 (isPrefix!2541 (++!7903 Nil!31927 (Cons!31927 (head!6137 (getSuffix!1225 lt!982347 Nil!31927)) Nil!31927)) lt!982347)))

(assert (=> b!2764825 (= lt!982680 (lemmaAddHeadSuffixToPrefixStillPrefix!446 Nil!31927 lt!982347))))

(declare-fun lt!982693 () List!32027)

(assert (=> b!2764825 (= lt!982693 (++!7903 Nil!31927 (Cons!31927 (head!6137 lt!982347) Nil!31927)))))

(declare-fun lt!982672 () Unit!45955)

(declare-fun e!1743195 () Unit!45955)

(assert (=> b!2764825 (= lt!982672 e!1743195)))

(declare-fun c!448415 () Bool)

(assert (=> b!2764825 (= c!448415 (= (size!24697 Nil!31927) (size!24697 lt!982347)))))

(declare-fun lt!982675 () Unit!45955)

(declare-fun lt!982692 () Unit!45955)

(assert (=> b!2764825 (= lt!982675 lt!982692)))

(assert (=> b!2764825 (<= (size!24697 Nil!31927) (size!24697 lt!982347))))

(assert (=> b!2764825 (= lt!982692 (lemmaIsPrefixThenSmallerEqSize!249 Nil!31927 lt!982347))))

(declare-fun e!1743200 () tuple2!32000)

(declare-fun e!1743196 () tuple2!32000)

(assert (=> b!2764825 (= e!1743200 e!1743196)))

(declare-fun b!2764826 () Bool)

(assert (=> b!2764826 (= e!1743194 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764827 () Bool)

(declare-fun call!179897 () tuple2!32000)

(assert (=> b!2764827 (= e!1743196 call!179897)))

(declare-fun b!2764828 () Bool)

(declare-fun Unit!45969 () Unit!45955)

(assert (=> b!2764828 (= e!1743195 Unit!45969)))

(declare-fun lt!982684 () Unit!45955)

(declare-fun call!179891 () Unit!45955)

(assert (=> b!2764828 (= lt!982684 call!179891)))

(declare-fun call!179893 () Bool)

(assert (=> b!2764828 call!179893))

(declare-fun lt!982694 () Unit!45955)

(assert (=> b!2764828 (= lt!982694 lt!982684)))

(declare-fun lt!982673 () Unit!45955)

(declare-fun call!179895 () Unit!45955)

(assert (=> b!2764828 (= lt!982673 call!179895)))

(assert (=> b!2764828 (= lt!982347 Nil!31927)))

(declare-fun lt!982695 () Unit!45955)

(assert (=> b!2764828 (= lt!982695 lt!982673)))

(assert (=> b!2764828 false))

(declare-fun b!2764829 () Bool)

(assert (=> b!2764829 (= e!1743196 e!1743194)))

(assert (=> b!2764829 (= lt!982685 call!179897)))

(declare-fun c!448412 () Bool)

(assert (=> b!2764829 (= c!448412 (isEmpty!18082 (_1!18834 lt!982685)))))

(declare-fun bm!179886 () Bool)

(assert (=> bm!179886 (= call!179891 (lemmaIsPrefixRefl!1668 lt!982347 lt!982347))))

(declare-fun bm!179887 () Bool)

(declare-fun call!179898 () List!32027)

(assert (=> bm!179887 (= call!179898 (tail!4375 lt!982347))))

(declare-fun bm!179888 () Bool)

(assert (=> bm!179888 (= call!179896 (nullableZipper!621 z!3597))))

(declare-fun b!2764830 () Bool)

(declare-fun c!448414 () Bool)

(assert (=> b!2764830 (= c!448414 call!179896)))

(declare-fun lt!982681 () Unit!45955)

(declare-fun lt!982677 () Unit!45955)

(assert (=> b!2764830 (= lt!982681 lt!982677)))

(assert (=> b!2764830 (= lt!982347 Nil!31927)))

(assert (=> b!2764830 (= lt!982677 call!179895)))

(declare-fun lt!982689 () Unit!45955)

(declare-fun lt!982679 () Unit!45955)

(assert (=> b!2764830 (= lt!982689 lt!982679)))

(assert (=> b!2764830 call!179893))

(assert (=> b!2764830 (= lt!982679 call!179891)))

(declare-fun e!1743197 () tuple2!32000)

(assert (=> b!2764830 (= e!1743200 e!1743197)))

(declare-fun b!2764831 () Bool)

(assert (=> b!2764831 (= e!1743197 (tuple2!32001 Nil!31927 Nil!31927))))

(declare-fun b!2764832 () Bool)

(assert (=> b!2764832 (= e!1743199 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764833 () Bool)

(assert (=> b!2764833 (= e!1743199 e!1743200)))

(declare-fun c!448413 () Bool)

(assert (=> b!2764833 (= c!448413 (= 0 lt!982358))))

(declare-fun bm!179889 () Bool)

(declare-fun call!179892 () C!16292)

(assert (=> bm!179889 (= call!179892 (head!6137 lt!982347))))

(declare-fun b!2764834 () Bool)

(declare-fun Unit!45970 () Unit!45955)

(assert (=> b!2764834 (= e!1743195 Unit!45970)))

(declare-fun bm!179890 () Bool)

(assert (=> bm!179890 (= call!179893 (isPrefix!2541 lt!982347 lt!982347))))

(declare-fun b!2764835 () Bool)

(assert (=> b!2764835 (= e!1743197 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764836 () Bool)

(declare-fun e!1743201 () Bool)

(assert (=> b!2764836 (= e!1743201 (>= (size!24697 (_1!18834 lt!982688)) (size!24697 Nil!31927)))))

(declare-fun b!2764837 () Bool)

(assert (=> b!2764837 (= e!1743198 e!1743201)))

(declare-fun res!1157147 () Bool)

(assert (=> b!2764837 (=> res!1157147 e!1743201)))

(assert (=> b!2764837 (= res!1157147 (isEmpty!18082 (_1!18834 lt!982688)))))

(declare-fun bm!179891 () Bool)

(assert (=> bm!179891 (= call!179895 (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 Nil!31927 lt!982347))))

(declare-fun call!179894 () (InoxSet Context!4570))

(declare-fun bm!179892 () Bool)

(assert (=> bm!179892 (= call!179897 (findLongestMatchInnerZipper!11 call!179894 lt!982693 (+ 0 1) call!179898 lt!982347 lt!982358))))

(declare-fun bm!179893 () Bool)

(assert (=> bm!179893 (= call!179894 (derivationStepZipper!357 z!3597 call!179892))))

(assert (= (and d!802866 c!448410) b!2764832))

(assert (= (and d!802866 (not c!448410)) b!2764833))

(assert (= (and b!2764833 c!448413) b!2764830))

(assert (= (and b!2764833 (not c!448413)) b!2764825))

(assert (= (and b!2764830 c!448414) b!2764831))

(assert (= (and b!2764830 (not c!448414)) b!2764835))

(assert (= (and b!2764825 c!448415) b!2764828))

(assert (= (and b!2764825 (not c!448415)) b!2764834))

(assert (= (and b!2764825 c!448411) b!2764829))

(assert (= (and b!2764825 (not c!448411)) b!2764827))

(assert (= (and b!2764829 c!448412) b!2764826))

(assert (= (and b!2764829 (not c!448412)) b!2764824))

(assert (= (or b!2764829 b!2764827) bm!179887))

(assert (= (or b!2764829 b!2764827) bm!179889))

(assert (= (or b!2764829 b!2764827) bm!179893))

(assert (= (or b!2764829 b!2764827) bm!179892))

(assert (= (or b!2764830 b!2764825) bm!179888))

(assert (= (or b!2764830 b!2764828) bm!179886))

(assert (= (or b!2764830 b!2764828) bm!179891))

(assert (= (or b!2764830 b!2764828) bm!179890))

(assert (= (and d!802866 res!1157148) b!2764837))

(assert (= (and b!2764837 (not res!1157147)) b!2764836))

(declare-fun m!3187577 () Bool)

(assert (=> b!2764837 m!3187577))

(declare-fun m!3187579 () Bool)

(assert (=> d!802866 m!3187579))

(assert (=> d!802866 m!3187329))

(assert (=> d!802866 m!3187485))

(assert (=> d!802866 m!3187353))

(assert (=> d!802866 m!3187329))

(assert (=> d!802866 m!3187333))

(assert (=> d!802866 m!3187343))

(declare-fun m!3187581 () Bool)

(assert (=> d!802866 m!3187581))

(assert (=> bm!179890 m!3187295))

(declare-fun m!3187583 () Bool)

(assert (=> bm!179893 m!3187583))

(declare-fun m!3187585 () Bool)

(assert (=> bm!179892 m!3187585))

(assert (=> bm!179886 m!3187313))

(assert (=> bm!179887 m!3187229))

(declare-fun m!3187587 () Bool)

(assert (=> b!2764829 m!3187587))

(assert (=> bm!179891 m!3187275))

(assert (=> bm!179889 m!3187233))

(assert (=> b!2764825 m!3187343))

(assert (=> b!2764825 m!3187475))

(declare-fun m!3187589 () Bool)

(assert (=> b!2764825 m!3187589))

(declare-fun m!3187591 () Bool)

(assert (=> b!2764825 m!3187591))

(declare-fun m!3187593 () Bool)

(assert (=> b!2764825 m!3187593))

(assert (=> b!2764825 m!3187589))

(declare-fun m!3187595 () Bool)

(assert (=> b!2764825 m!3187595))

(assert (=> b!2764825 m!3187473))

(assert (=> b!2764825 m!3187235))

(assert (=> b!2764825 m!3187243))

(assert (=> b!2764825 m!3187231))

(assert (=> b!2764825 m!3187237))

(assert (=> b!2764825 m!3187343))

(assert (=> b!2764825 m!3187233))

(assert (=> b!2764825 m!3187473))

(assert (=> b!2764825 m!3187479))

(assert (=> b!2764825 m!3187229))

(declare-fun m!3187597 () Bool)

(assert (=> b!2764836 m!3187597))

(assert (=> b!2764836 m!3187231))

(assert (=> bm!179888 m!3187315))

(assert (=> b!2764661 d!802866))

(declare-fun d!802868 () Bool)

(assert (=> d!802868 (= (valid!2917 (_2!18839 lt!982377)) (validCacheMapUp!358 (cache!3791 (_2!18839 lt!982377))))))

(declare-fun bs!500243 () Bool)

(assert (= bs!500243 d!802868))

(declare-fun m!3187599 () Bool)

(assert (=> bs!500243 m!3187599))

(assert (=> b!2764661 d!802868))

(declare-fun d!802870 () Bool)

(declare-fun e!1743202 () Bool)

(assert (=> d!802870 e!1743202))

(declare-fun res!1157149 () Bool)

(assert (=> d!802870 (=> (not res!1157149) (not e!1743202))))

(declare-fun lt!982698 () tuple3!4730)

(assert (=> d!802870 (= res!1157149 (valid!2917 (_2!18839 lt!982698)))))

(assert (=> d!802870 (= lt!982698 (choose!16208 cacheUp!820 cacheDown!939 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358))))

(assert (=> d!802870 (= (++!7903 Nil!31927 lt!982347) (list!12056 input!5495))))

(assert (=> d!802870 (= (findLongestMatchInnerZipperFastMem!20 cacheUp!820 cacheDown!939 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358) lt!982698)))

(declare-fun b!2764838 () Bool)

(declare-fun res!1157150 () Bool)

(assert (=> b!2764838 (=> (not res!1157150) (not e!1743202))))

(assert (=> b!2764838 (= res!1157150 (valid!2916 (_3!2835 lt!982698)))))

(declare-fun b!2764839 () Bool)

(assert (=> b!2764839 (= e!1743202 (= (_1!18839 lt!982698) (findLongestMatchInnerZipperFast!25 z!3597 Nil!31927 0 lt!982347 input!5495 lt!982358)))))

(assert (= (and d!802870 res!1157149) b!2764838))

(assert (= (and b!2764838 res!1157150) b!2764839))

(declare-fun m!3187601 () Bool)

(assert (=> d!802870 m!3187601))

(declare-fun m!3187603 () Bool)

(assert (=> d!802870 m!3187603))

(assert (=> d!802870 m!3187329))

(assert (=> d!802870 m!3187327))

(declare-fun m!3187605 () Bool)

(assert (=> b!2764838 m!3187605))

(assert (=> b!2764839 m!3187351))

(assert (=> b!2764661 d!802870))

(declare-fun d!802872 () Bool)

(assert (=> d!802872 (= (list!12056 (_1!18842 lt!982368)) (list!12057 (c!448346 (_1!18842 lt!982368))))))

(declare-fun bs!500244 () Bool)

(assert (= bs!500244 d!802872))

(declare-fun m!3187607 () Bool)

(assert (=> bs!500244 m!3187607))

(assert (=> b!2764661 d!802872))

(declare-fun d!802874 () Bool)

(declare-fun e!1743203 () Bool)

(assert (=> d!802874 e!1743203))

(declare-fun res!1157152 () Bool)

(assert (=> d!802874 (=> (not res!1157152) (not e!1743203))))

(declare-fun lt!982699 () tuple2!32008)

(assert (=> d!802874 (= res!1157152 (isBalanced!3032 (c!448346 (_1!18842 lt!982699))))))

(declare-fun lt!982700 () tuple2!32010)

(assert (=> d!802874 (= lt!982699 (tuple2!32009 (BalanceConc!19513 (_1!18843 lt!982700)) (BalanceConc!19513 (_2!18843 lt!982700))))))

(assert (=> d!802874 (= lt!982700 (splitAt!100 (c!448346 input!5495) (_1!18839 lt!982377)))))

(assert (=> d!802874 (isBalanced!3032 (c!448346 input!5495))))

(assert (=> d!802874 (= (splitAt!99 input!5495 (_1!18839 lt!982377)) lt!982699)))

(declare-fun b!2764840 () Bool)

(declare-fun res!1157151 () Bool)

(assert (=> b!2764840 (=> (not res!1157151) (not e!1743203))))

(assert (=> b!2764840 (= res!1157151 (isBalanced!3032 (c!448346 (_2!18842 lt!982699))))))

(declare-fun b!2764841 () Bool)

(assert (=> b!2764841 (= e!1743203 (= (tuple2!32001 (list!12056 (_1!18842 lt!982699)) (list!12056 (_2!18842 lt!982699))) (splitAtIndex!47 (list!12056 input!5495) (_1!18839 lt!982377))))))

(assert (= (and d!802874 res!1157152) b!2764840))

(assert (= (and b!2764840 res!1157151) b!2764841))

(declare-fun m!3187609 () Bool)

(assert (=> d!802874 m!3187609))

(declare-fun m!3187611 () Bool)

(assert (=> d!802874 m!3187611))

(assert (=> d!802874 m!3187425))

(declare-fun m!3187613 () Bool)

(assert (=> b!2764840 m!3187613))

(declare-fun m!3187615 () Bool)

(assert (=> b!2764841 m!3187615))

(declare-fun m!3187617 () Bool)

(assert (=> b!2764841 m!3187617))

(assert (=> b!2764841 m!3187327))

(assert (=> b!2764841 m!3187327))

(declare-fun m!3187619 () Bool)

(assert (=> b!2764841 m!3187619))

(assert (=> b!2764661 d!802874))

(declare-fun d!802876 () Bool)

(assert (=> d!802876 (= lt!982347 lt!982372)))

(declare-fun lt!982703 () Unit!45955)

(declare-fun choose!16209 (List!32027 List!32027 List!32027 List!32027 List!32027) Unit!45955)

(assert (=> d!802876 (= lt!982703 (choose!16209 Nil!31927 lt!982347 Nil!31927 lt!982372 lt!982347))))

(assert (=> d!802876 (isPrefix!2541 Nil!31927 lt!982347)))

(assert (=> d!802876 (= (lemmaSamePrefixThenSameSuffix!1127 Nil!31927 lt!982347 Nil!31927 lt!982372 lt!982347) lt!982703)))

(declare-fun bs!500245 () Bool)

(assert (= bs!500245 d!802876))

(declare-fun m!3187621 () Bool)

(assert (=> bs!500245 m!3187621))

(assert (=> bs!500245 m!3187471))

(assert (=> b!2764661 d!802876))

(declare-fun d!802878 () Bool)

(declare-fun lt!982706 () List!32027)

(assert (=> d!802878 (= (++!7903 Nil!31927 lt!982706) lt!982347)))

(declare-fun e!1743206 () List!32027)

(assert (=> d!802878 (= lt!982706 e!1743206)))

(declare-fun c!448418 () Bool)

(assert (=> d!802878 (= c!448418 ((_ is Cons!31927) Nil!31927))))

(assert (=> d!802878 (>= (size!24697 lt!982347) (size!24697 Nil!31927))))

(assert (=> d!802878 (= (getSuffix!1225 lt!982347 Nil!31927) lt!982706)))

(declare-fun b!2764846 () Bool)

(assert (=> b!2764846 (= e!1743206 (getSuffix!1225 (tail!4375 lt!982347) (t!228147 Nil!31927)))))

(declare-fun b!2764847 () Bool)

(assert (=> b!2764847 (= e!1743206 lt!982347)))

(assert (= (and d!802878 c!448418) b!2764846))

(assert (= (and d!802878 (not c!448418)) b!2764847))

(declare-fun m!3187623 () Bool)

(assert (=> d!802878 m!3187623))

(assert (=> d!802878 m!3187235))

(assert (=> d!802878 m!3187231))

(assert (=> b!2764846 m!3187229))

(assert (=> b!2764846 m!3187229))

(declare-fun m!3187625 () Bool)

(assert (=> b!2764846 m!3187625))

(assert (=> b!2764661 d!802878))

(declare-fun d!802880 () Bool)

(declare-fun e!1743208 () Bool)

(assert (=> d!802880 e!1743208))

(declare-fun res!1157156 () Bool)

(assert (=> d!802880 (=> res!1157156 e!1743208)))

(declare-fun lt!982707 () Bool)

(assert (=> d!802880 (= res!1157156 (not lt!982707))))

(declare-fun e!1743209 () Bool)

(assert (=> d!802880 (= lt!982707 e!1743209)))

(declare-fun res!1157155 () Bool)

(assert (=> d!802880 (=> res!1157155 e!1743209)))

(assert (=> d!802880 (= res!1157155 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802880 (= (isPrefix!2541 Nil!31927 lt!982395) lt!982707)))

(declare-fun b!2764848 () Bool)

(declare-fun e!1743207 () Bool)

(assert (=> b!2764848 (= e!1743209 e!1743207)))

(declare-fun res!1157154 () Bool)

(assert (=> b!2764848 (=> (not res!1157154) (not e!1743207))))

(assert (=> b!2764848 (= res!1157154 (not ((_ is Nil!31927) lt!982395)))))

(declare-fun b!2764850 () Bool)

(assert (=> b!2764850 (= e!1743207 (isPrefix!2541 (tail!4375 Nil!31927) (tail!4375 lt!982395)))))

(declare-fun b!2764851 () Bool)

(assert (=> b!2764851 (= e!1743208 (>= (size!24697 lt!982395) (size!24697 Nil!31927)))))

(declare-fun b!2764849 () Bool)

(declare-fun res!1157153 () Bool)

(assert (=> b!2764849 (=> (not res!1157153) (not e!1743207))))

(assert (=> b!2764849 (= res!1157153 (= (head!6137 Nil!31927) (head!6137 lt!982395)))))

(assert (= (and d!802880 (not res!1157155)) b!2764848))

(assert (= (and b!2764848 res!1157154) b!2764849))

(assert (= (and b!2764849 res!1157153) b!2764850))

(assert (= (and d!802880 (not res!1157156)) b!2764851))

(declare-fun m!3187627 () Bool)

(assert (=> b!2764850 m!3187627))

(declare-fun m!3187629 () Bool)

(assert (=> b!2764850 m!3187629))

(assert (=> b!2764850 m!3187627))

(assert (=> b!2764850 m!3187629))

(declare-fun m!3187631 () Bool)

(assert (=> b!2764850 m!3187631))

(declare-fun m!3187633 () Bool)

(assert (=> b!2764851 m!3187633))

(assert (=> b!2764851 m!3187231))

(declare-fun m!3187635 () Bool)

(assert (=> b!2764849 m!3187635))

(declare-fun m!3187637 () Bool)

(assert (=> b!2764849 m!3187637))

(assert (=> b!2764661 d!802880))

(declare-fun bm!179894 () Bool)

(declare-fun call!179905 () C!16292)

(assert (=> bm!179894 (= call!179905 (apply!7476 input!5495 1))))

(declare-fun b!2764852 () Bool)

(declare-fun e!1743212 () Int)

(declare-fun lt!982733 () Int)

(assert (=> b!2764852 (= e!1743212 (ite (= lt!982733 0) 1 lt!982733))))

(declare-fun call!179907 () Int)

(assert (=> b!2764852 (= lt!982733 call!179907)))

(declare-fun b!2764853 () Bool)

(declare-fun e!1743214 () Int)

(assert (=> b!2764853 (= e!1743214 0)))

(declare-fun bm!179896 () Bool)

(declare-fun call!179903 () (InoxSet Context!4570))

(declare-fun call!179900 () List!32027)

(declare-fun call!179901 () List!32027)

(assert (=> bm!179896 (= call!179907 (findLongestMatchInnerZipperFast!25 call!179903 call!179901 (+ 1 1) call!179900 input!5495 lt!982358))))

(declare-fun bm!179897 () Bool)

(assert (=> bm!179897 (= call!179903 (derivationStepZipper!357 call!179819 call!179905))))

(declare-fun b!2764854 () Bool)

(declare-fun c!448423 () Bool)

(declare-fun call!179902 () Bool)

(assert (=> b!2764854 (= c!448423 call!179902)))

(declare-fun lt!982745 () Unit!45955)

(declare-fun lt!982749 () Unit!45955)

(assert (=> b!2764854 (= lt!982745 lt!982749)))

(declare-fun lt!982717 () C!16292)

(declare-fun lt!982722 () List!32027)

(declare-fun lt!982726 () List!32027)

(assert (=> b!2764854 (= (++!7903 (++!7903 lt!982393 (Cons!31927 lt!982717 Nil!31927)) lt!982726) lt!982722)))

(assert (=> b!2764854 (= lt!982749 (lemmaMoveElementToOtherListKeepsConcatEq!858 lt!982393 lt!982717 lt!982726 lt!982722))))

(declare-fun call!179908 () List!32027)

(assert (=> b!2764854 (= lt!982722 call!179908)))

(assert (=> b!2764854 (= lt!982726 (tail!4375 lt!982402))))

(assert (=> b!2764854 (= lt!982717 (apply!7476 input!5495 1))))

(declare-fun lt!982715 () Unit!45955)

(declare-fun lt!982709 () Unit!45955)

(assert (=> b!2764854 (= lt!982715 lt!982709)))

(declare-fun lt!982719 () List!32027)

(assert (=> b!2764854 (isPrefix!2541 (++!7903 lt!982393 (Cons!31927 (head!6137 (getSuffix!1225 lt!982719 lt!982393)) Nil!31927)) lt!982719)))

(assert (=> b!2764854 (= lt!982709 (lemmaAddHeadSuffixToPrefixStillPrefix!446 lt!982393 lt!982719))))

(assert (=> b!2764854 (= lt!982719 call!179908)))

(declare-fun lt!982710 () Unit!45955)

(declare-fun e!1743213 () Unit!45955)

(assert (=> b!2764854 (= lt!982710 e!1743213)))

(declare-fun c!448419 () Bool)

(assert (=> b!2764854 (= c!448419 (= (size!24697 lt!982393) (size!24698 input!5495)))))

(declare-fun lt!982736 () Unit!45955)

(declare-fun lt!982724 () Unit!45955)

(assert (=> b!2764854 (= lt!982736 lt!982724)))

(declare-fun lt!982728 () List!32027)

(assert (=> b!2764854 (<= (size!24697 lt!982393) (size!24697 lt!982728))))

(assert (=> b!2764854 (= lt!982724 (lemmaIsPrefixThenSmallerEqSize!249 lt!982393 lt!982728))))

(assert (=> b!2764854 (= lt!982728 call!179908)))

(declare-fun lt!982713 () Unit!45955)

(declare-fun lt!982737 () Unit!45955)

(assert (=> b!2764854 (= lt!982713 lt!982737)))

(declare-fun lt!982732 () List!32027)

(assert (=> b!2764854 (= (head!6137 (drop!1695 lt!982732 1)) (apply!7477 lt!982732 1))))

(assert (=> b!2764854 (= lt!982737 (lemmaDropApply!901 lt!982732 1))))

(assert (=> b!2764854 (= lt!982732 call!179908)))

(declare-fun lt!982743 () Unit!45955)

(declare-fun lt!982711 () Unit!45955)

(assert (=> b!2764854 (= lt!982743 lt!982711)))

(declare-fun lt!982716 () List!32027)

(declare-fun lt!982730 () List!32027)

(assert (=> b!2764854 (and (= lt!982730 lt!982393) (= lt!982716 lt!982402))))

(assert (=> b!2764854 (= lt!982711 (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982730 lt!982716 lt!982393 lt!982402))))

(declare-fun lt!982723 () tuple2!32008)

(assert (=> b!2764854 (= lt!982716 (list!12056 (_2!18842 lt!982723)))))

(assert (=> b!2764854 (= lt!982730 (list!12056 (_1!18842 lt!982723)))))

(assert (=> b!2764854 (= lt!982723 (splitAt!99 input!5495 1))))

(declare-fun e!1743210 () Int)

(assert (=> b!2764854 (= e!1743210 e!1743212)))

(declare-fun b!2764855 () Bool)

(declare-fun e!1743211 () Int)

(assert (=> b!2764855 (= e!1743211 0)))

(declare-fun b!2764856 () Bool)

(assert (=> b!2764856 (= e!1743214 1)))

(declare-fun bm!179898 () Bool)

(assert (=> bm!179898 (= call!179901 (++!7903 lt!982393 (Cons!31927 call!179905 Nil!31927)))))

(declare-fun b!2764857 () Bool)

(assert (=> b!2764857 (= e!1743211 e!1743210)))

(declare-fun c!448422 () Bool)

(assert (=> b!2764857 (= c!448422 (= 1 lt!982358))))

(declare-fun b!2764858 () Bool)

(declare-fun Unit!45971 () Unit!45955)

(assert (=> b!2764858 (= e!1743213 Unit!45971)))

(declare-fun lt!982740 () List!32027)

(assert (=> b!2764858 (= lt!982740 call!179908)))

(declare-fun lt!982739 () List!32027)

(assert (=> b!2764858 (= lt!982739 call!179908)))

(declare-fun lt!982734 () Unit!45955)

(declare-fun call!179899 () Unit!45955)

(assert (=> b!2764858 (= lt!982734 call!179899)))

(declare-fun call!179906 () Bool)

(assert (=> b!2764858 call!179906))

(declare-fun lt!982742 () Unit!45955)

(assert (=> b!2764858 (= lt!982742 lt!982734)))

(declare-fun lt!982747 () List!32027)

(assert (=> b!2764858 (= lt!982747 call!179908)))

(declare-fun lt!982727 () Unit!45955)

(declare-fun call!179904 () Unit!45955)

(assert (=> b!2764858 (= lt!982727 call!179904)))

(assert (=> b!2764858 (= lt!982747 lt!982393)))

(declare-fun lt!982738 () Unit!45955)

(assert (=> b!2764858 (= lt!982738 lt!982727)))

(assert (=> b!2764858 false))

(declare-fun lt!982735 () List!32027)

(declare-fun lt!982718 () List!32027)

(declare-fun bm!179899 () Bool)

(assert (=> bm!179899 (= call!179906 (isPrefix!2541 (ite c!448422 lt!982718 lt!982740) (ite c!448422 lt!982735 lt!982739)))))

(declare-fun bm!179895 () Bool)

(assert (=> bm!179895 (= call!179899 (lemmaIsPrefixRefl!1668 (ite c!448422 lt!982718 lt!982740) (ite c!448422 lt!982735 lt!982739)))))

(declare-fun lt!982748 () Int)

(declare-fun d!802882 () Bool)

(assert (=> d!802882 (= (size!24697 (_1!18834 (findLongestMatchInnerZipper!11 call!179819 lt!982393 1 lt!982402 (list!12056 input!5495) lt!982358))) lt!982748)))

(assert (=> d!802882 (= lt!982748 e!1743211)))

(declare-fun c!448421 () Bool)

(assert (=> d!802882 (= c!448421 (lostCauseZipper!429 call!179819))))

(declare-fun lt!982725 () Unit!45955)

(declare-fun Unit!45972 () Unit!45955)

(assert (=> d!802882 (= lt!982725 Unit!45972)))

(assert (=> d!802882 (= (getSuffix!1225 (list!12056 input!5495) lt!982393) lt!982402)))

(declare-fun lt!982731 () Unit!45955)

(declare-fun lt!982746 () Unit!45955)

(assert (=> d!802882 (= lt!982731 lt!982746)))

(declare-fun lt!982720 () List!32027)

(assert (=> d!802882 (= lt!982402 lt!982720)))

(assert (=> d!802882 (= lt!982746 (lemmaSamePrefixThenSameSuffix!1127 lt!982393 lt!982402 lt!982393 lt!982720 (list!12056 input!5495)))))

(assert (=> d!802882 (= lt!982720 (getSuffix!1225 (list!12056 input!5495) lt!982393))))

(declare-fun lt!982744 () Unit!45955)

(declare-fun lt!982721 () Unit!45955)

(assert (=> d!802882 (= lt!982744 lt!982721)))

(assert (=> d!802882 (isPrefix!2541 lt!982393 (++!7903 lt!982393 lt!982402))))

(assert (=> d!802882 (= lt!982721 (lemmaConcatTwoListThenFirstIsPrefix!1653 lt!982393 lt!982402))))

(assert (=> d!802882 (= (++!7903 lt!982393 lt!982402) (list!12056 input!5495))))

(assert (=> d!802882 (= (findLongestMatchInnerZipperFast!25 call!179819 lt!982393 1 lt!982402 input!5495 lt!982358) lt!982748)))

(declare-fun bm!179900 () Bool)

(assert (=> bm!179900 (= call!179908 (list!12056 input!5495))))

(declare-fun b!2764859 () Bool)

(assert (=> b!2764859 (= e!1743212 call!179907)))

(declare-fun bm!179901 () Bool)

(declare-fun lt!982729 () List!32027)

(assert (=> bm!179901 (= call!179904 (lemmaIsPrefixSameLengthThenSameList!449 (ite c!448422 lt!982729 lt!982747) lt!982393 call!179908))))

(declare-fun b!2764860 () Bool)

(declare-fun Unit!45973 () Unit!45955)

(assert (=> b!2764860 (= e!1743213 Unit!45973)))

(declare-fun b!2764861 () Bool)

(declare-fun c!448420 () Bool)

(assert (=> b!2764861 (= c!448420 call!179902)))

(declare-fun lt!982714 () Unit!45955)

(declare-fun lt!982708 () Unit!45955)

(assert (=> b!2764861 (= lt!982714 lt!982708)))

(assert (=> b!2764861 (= lt!982729 lt!982393)))

(assert (=> b!2764861 (= lt!982708 call!179904)))

(assert (=> b!2764861 (= lt!982729 call!179908)))

(declare-fun lt!982741 () Unit!45955)

(declare-fun lt!982712 () Unit!45955)

(assert (=> b!2764861 (= lt!982741 lt!982712)))

(assert (=> b!2764861 call!179906))

(assert (=> b!2764861 (= lt!982712 call!179899)))

(assert (=> b!2764861 (= lt!982735 call!179908)))

(assert (=> b!2764861 (= lt!982718 call!179908)))

(assert (=> b!2764861 (= e!1743210 e!1743214)))

(declare-fun bm!179902 () Bool)

(assert (=> bm!179902 (= call!179900 (tail!4375 lt!982402))))

(declare-fun bm!179903 () Bool)

(assert (=> bm!179903 (= call!179902 (nullableZipper!621 call!179819))))

(assert (= (and d!802882 c!448421) b!2764855))

(assert (= (and d!802882 (not c!448421)) b!2764857))

(assert (= (and b!2764857 c!448422) b!2764861))

(assert (= (and b!2764857 (not c!448422)) b!2764854))

(assert (= (and b!2764861 c!448420) b!2764856))

(assert (= (and b!2764861 (not c!448420)) b!2764853))

(assert (= (and b!2764854 c!448419) b!2764858))

(assert (= (and b!2764854 (not c!448419)) b!2764860))

(assert (= (and b!2764854 c!448423) b!2764852))

(assert (= (and b!2764854 (not c!448423)) b!2764859))

(assert (= (or b!2764852 b!2764859) bm!179902))

(assert (= (or b!2764852 b!2764859) bm!179894))

(assert (= (or b!2764852 b!2764859) bm!179897))

(assert (= (or b!2764852 b!2764859) bm!179898))

(assert (= (or b!2764852 b!2764859) bm!179896))

(assert (= (or b!2764861 b!2764858) bm!179899))

(assert (= (or b!2764861 b!2764858 b!2764854) bm!179900))

(assert (= (or b!2764861 b!2764858) bm!179895))

(assert (= (or b!2764861 b!2764854) bm!179903))

(assert (= (or b!2764861 b!2764858) bm!179901))

(declare-fun m!3187639 () Bool)

(assert (=> bm!179896 m!3187639))

(declare-fun m!3187641 () Bool)

(assert (=> bm!179897 m!3187641))

(declare-fun m!3187643 () Bool)

(assert (=> bm!179899 m!3187643))

(assert (=> d!802882 m!3187327))

(declare-fun m!3187645 () Bool)

(assert (=> d!802882 m!3187645))

(declare-fun m!3187647 () Bool)

(assert (=> d!802882 m!3187647))

(declare-fun m!3187649 () Bool)

(assert (=> d!802882 m!3187649))

(assert (=> d!802882 m!3187327))

(declare-fun m!3187651 () Bool)

(assert (=> d!802882 m!3187651))

(assert (=> d!802882 m!3187267))

(declare-fun m!3187653 () Bool)

(assert (=> d!802882 m!3187653))

(declare-fun m!3187655 () Bool)

(assert (=> d!802882 m!3187655))

(assert (=> d!802882 m!3187327))

(assert (=> d!802882 m!3187267))

(assert (=> d!802882 m!3187327))

(declare-fun m!3187657 () Bool)

(assert (=> d!802882 m!3187657))

(declare-fun m!3187659 () Bool)

(assert (=> bm!179903 m!3187659))

(declare-fun m!3187661 () Bool)

(assert (=> bm!179894 m!3187661))

(declare-fun m!3187663 () Bool)

(assert (=> bm!179901 m!3187663))

(declare-fun m!3187665 () Bool)

(assert (=> bm!179902 m!3187665))

(declare-fun m!3187667 () Bool)

(assert (=> bm!179898 m!3187667))

(declare-fun m!3187669 () Bool)

(assert (=> b!2764854 m!3187669))

(declare-fun m!3187671 () Bool)

(assert (=> b!2764854 m!3187671))

(assert (=> b!2764854 m!3187661))

(declare-fun m!3187673 () Bool)

(assert (=> b!2764854 m!3187673))

(declare-fun m!3187675 () Bool)

(assert (=> b!2764854 m!3187675))

(declare-fun m!3187677 () Bool)

(assert (=> b!2764854 m!3187677))

(declare-fun m!3187679 () Bool)

(assert (=> b!2764854 m!3187679))

(declare-fun m!3187681 () Bool)

(assert (=> b!2764854 m!3187681))

(declare-fun m!3187683 () Bool)

(assert (=> b!2764854 m!3187683))

(declare-fun m!3187685 () Bool)

(assert (=> b!2764854 m!3187685))

(assert (=> b!2764854 m!3187677))

(declare-fun m!3187687 () Bool)

(assert (=> b!2764854 m!3187687))

(declare-fun m!3187689 () Bool)

(assert (=> b!2764854 m!3187689))

(declare-fun m!3187691 () Bool)

(assert (=> b!2764854 m!3187691))

(assert (=> b!2764854 m!3187683))

(declare-fun m!3187693 () Bool)

(assert (=> b!2764854 m!3187693))

(declare-fun m!3187695 () Bool)

(assert (=> b!2764854 m!3187695))

(declare-fun m!3187697 () Bool)

(assert (=> b!2764854 m!3187697))

(assert (=> b!2764854 m!3187689))

(assert (=> b!2764854 m!3187665))

(declare-fun m!3187699 () Bool)

(assert (=> b!2764854 m!3187699))

(assert (=> b!2764854 m!3187673))

(declare-fun m!3187701 () Bool)

(assert (=> b!2764854 m!3187701))

(declare-fun m!3187703 () Bool)

(assert (=> b!2764854 m!3187703))

(assert (=> b!2764854 m!3187331))

(declare-fun m!3187705 () Bool)

(assert (=> b!2764854 m!3187705))

(declare-fun m!3187707 () Bool)

(assert (=> bm!179895 m!3187707))

(assert (=> bm!179900 m!3187327))

(assert (=> bm!179819 d!802882))

(declare-fun bs!500246 () Bool)

(declare-fun d!802884 () Bool)

(assert (= bs!500246 (and d!802884 d!802856)))

(declare-fun lambda!101488 () Int)

(assert (=> bs!500246 (not (= lambda!101488 lambda!101483))))

(declare-fun bs!500247 () Bool)

(assert (= bs!500247 (and d!802884 b!2764790)))

(assert (=> bs!500247 (not (= lambda!101488 lambda!101484))))

(declare-fun bs!500248 () Bool)

(assert (= bs!500248 (and d!802884 b!2764791)))

(assert (=> bs!500248 (not (= lambda!101488 lambda!101485))))

(declare-fun exists!966 ((InoxSet Context!4570) Int) Bool)

(assert (=> d!802884 (= (nullableZipper!621 z!3597) (exists!966 z!3597 lambda!101488))))

(declare-fun bs!500249 () Bool)

(assert (= bs!500249 d!802884))

(declare-fun m!3187709 () Bool)

(assert (=> bs!500249 m!3187709))

(assert (=> bm!179815 d!802884))

(declare-fun d!802886 () Bool)

(assert (=> d!802886 (= (++!7903 (++!7903 Nil!31927 (Cons!31927 lt!982376 Nil!31927)) lt!982399) lt!982347)))

(declare-fun lt!982750 () Unit!45955)

(assert (=> d!802886 (= lt!982750 (choose!16204 Nil!31927 lt!982376 lt!982399 lt!982347))))

(assert (=> d!802886 (= (++!7903 Nil!31927 (Cons!31927 lt!982376 lt!982399)) lt!982347)))

(assert (=> d!802886 (= (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982376 lt!982399 lt!982347) lt!982750)))

(declare-fun bs!500250 () Bool)

(assert (= bs!500250 d!802886))

(assert (=> bs!500250 m!3187247))

(assert (=> bs!500250 m!3187247))

(declare-fun m!3187711 () Bool)

(assert (=> bs!500250 m!3187711))

(declare-fun m!3187713 () Bool)

(assert (=> bs!500250 m!3187713))

(declare-fun m!3187715 () Bool)

(assert (=> bs!500250 m!3187715))

(assert (=> b!2764642 d!802886))

(assert (=> b!2764642 d!802834))

(assert (=> b!2764642 d!802812))

(declare-fun d!802888 () Bool)

(assert (=> d!802888 (= (head!6137 lt!982347) (h!37347 lt!982347))))

(assert (=> b!2764642 d!802888))

(assert (=> b!2764642 d!802824))

(assert (=> b!2764642 d!802828))

(declare-fun b!2764863 () Bool)

(declare-fun e!1743216 () List!32027)

(assert (=> b!2764863 (= e!1743216 (Cons!31927 (h!37347 lt!982383) (++!7903 (t!228147 lt!982383) lt!982399)))))

(declare-fun b!2764862 () Bool)

(assert (=> b!2764862 (= e!1743216 lt!982399)))

(declare-fun d!802890 () Bool)

(declare-fun e!1743215 () Bool)

(assert (=> d!802890 e!1743215))

(declare-fun res!1157157 () Bool)

(assert (=> d!802890 (=> (not res!1157157) (not e!1743215))))

(declare-fun lt!982751 () List!32027)

(assert (=> d!802890 (= res!1157157 (= (content!4496 lt!982751) ((_ map or) (content!4496 lt!982383) (content!4496 lt!982399))))))

(assert (=> d!802890 (= lt!982751 e!1743216)))

(declare-fun c!448426 () Bool)

(assert (=> d!802890 (= c!448426 ((_ is Nil!31927) lt!982383))))

(assert (=> d!802890 (= (++!7903 lt!982383 lt!982399) lt!982751)))

(declare-fun b!2764865 () Bool)

(assert (=> b!2764865 (= e!1743215 (or (not (= lt!982399 Nil!31927)) (= lt!982751 lt!982383)))))

(declare-fun b!2764864 () Bool)

(declare-fun res!1157158 () Bool)

(assert (=> b!2764864 (=> (not res!1157158) (not e!1743215))))

(assert (=> b!2764864 (= res!1157158 (= (size!24697 lt!982751) (+ (size!24697 lt!982383) (size!24697 lt!982399))))))

(assert (= (and d!802890 c!448426) b!2764862))

(assert (= (and d!802890 (not c!448426)) b!2764863))

(assert (= (and d!802890 res!1157157) b!2764864))

(assert (= (and b!2764864 res!1157158) b!2764865))

(declare-fun m!3187717 () Bool)

(assert (=> b!2764863 m!3187717))

(declare-fun m!3187719 () Bool)

(assert (=> d!802890 m!3187719))

(declare-fun m!3187721 () Bool)

(assert (=> d!802890 m!3187721))

(declare-fun m!3187723 () Bool)

(assert (=> d!802890 m!3187723))

(declare-fun m!3187725 () Bool)

(assert (=> b!2764864 m!3187725))

(declare-fun m!3187727 () Bool)

(assert (=> b!2764864 m!3187727))

(declare-fun m!3187729 () Bool)

(assert (=> b!2764864 m!3187729))

(assert (=> b!2764642 d!802890))

(assert (=> b!2764642 d!802830))

(declare-fun b!2764867 () Bool)

(declare-fun e!1743218 () List!32027)

(assert (=> b!2764867 (= e!1743218 (Cons!31927 (h!37347 Nil!31927) (++!7903 (t!228147 Nil!31927) (Cons!31927 lt!982376 Nil!31927))))))

(declare-fun b!2764866 () Bool)

(assert (=> b!2764866 (= e!1743218 (Cons!31927 lt!982376 Nil!31927))))

(declare-fun d!802892 () Bool)

(declare-fun e!1743217 () Bool)

(assert (=> d!802892 e!1743217))

(declare-fun res!1157159 () Bool)

(assert (=> d!802892 (=> (not res!1157159) (not e!1743217))))

(declare-fun lt!982752 () List!32027)

(assert (=> d!802892 (= res!1157159 (= (content!4496 lt!982752) ((_ map or) (content!4496 Nil!31927) (content!4496 (Cons!31927 lt!982376 Nil!31927)))))))

(assert (=> d!802892 (= lt!982752 e!1743218)))

(declare-fun c!448427 () Bool)

(assert (=> d!802892 (= c!448427 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802892 (= (++!7903 Nil!31927 (Cons!31927 lt!982376 Nil!31927)) lt!982752)))

(declare-fun b!2764869 () Bool)

(assert (=> b!2764869 (= e!1743217 (or (not (= (Cons!31927 lt!982376 Nil!31927) Nil!31927)) (= lt!982752 Nil!31927)))))

(declare-fun b!2764868 () Bool)

(declare-fun res!1157160 () Bool)

(assert (=> b!2764868 (=> (not res!1157160) (not e!1743217))))

(assert (=> b!2764868 (= res!1157160 (= (size!24697 lt!982752) (+ (size!24697 Nil!31927) (size!24697 (Cons!31927 lt!982376 Nil!31927)))))))

(assert (= (and d!802892 c!448427) b!2764866))

(assert (= (and d!802892 (not c!448427)) b!2764867))

(assert (= (and d!802892 res!1157159) b!2764868))

(assert (= (and b!2764868 res!1157160) b!2764869))

(declare-fun m!3187731 () Bool)

(assert (=> b!2764867 m!3187731))

(declare-fun m!3187733 () Bool)

(assert (=> d!802892 m!3187733))

(assert (=> d!802892 m!3187385))

(declare-fun m!3187735 () Bool)

(assert (=> d!802892 m!3187735))

(declare-fun m!3187737 () Bool)

(assert (=> b!2764868 m!3187737))

(assert (=> b!2764868 m!3187231))

(declare-fun m!3187739 () Bool)

(assert (=> b!2764868 m!3187739))

(assert (=> b!2764642 d!802892))

(assert (=> b!2764642 d!802842))

(assert (=> b!2764642 d!802844))

(assert (=> b!2764642 d!802846))

(declare-fun d!802894 () Bool)

(declare-fun c!448430 () Bool)

(assert (=> d!802894 (= c!448430 ((_ is Node!9949) (c!448346 input!5495)))))

(declare-fun e!1743223 () Bool)

(assert (=> d!802894 (= (inv!43355 (c!448346 input!5495)) e!1743223)))

(declare-fun b!2764876 () Bool)

(declare-fun inv!43359 (Conc!9949) Bool)

(assert (=> b!2764876 (= e!1743223 (inv!43359 (c!448346 input!5495)))))

(declare-fun b!2764877 () Bool)

(declare-fun e!1743224 () Bool)

(assert (=> b!2764877 (= e!1743223 e!1743224)))

(declare-fun res!1157163 () Bool)

(assert (=> b!2764877 (= res!1157163 (not ((_ is Leaf!15151) (c!448346 input!5495))))))

(assert (=> b!2764877 (=> res!1157163 e!1743224)))

(declare-fun b!2764878 () Bool)

(declare-fun inv!43360 (Conc!9949) Bool)

(assert (=> b!2764878 (= e!1743224 (inv!43360 (c!448346 input!5495)))))

(assert (= (and d!802894 c!448430) b!2764876))

(assert (= (and d!802894 (not c!448430)) b!2764877))

(assert (= (and b!2764877 (not res!1157163)) b!2764878))

(declare-fun m!3187741 () Bool)

(assert (=> b!2764876 m!3187741))

(declare-fun m!3187743 () Bool)

(assert (=> b!2764878 m!3187743))

(assert (=> b!2764641 d!802894))

(assert (=> bm!179810 d!802884))

(assert (=> bm!179828 d!802884))

(declare-fun d!802896 () Bool)

(declare-fun validCacheMapDown!389 (MutableMap!3649) Bool)

(assert (=> d!802896 (= (valid!2916 cacheDown!939) (validCacheMapDown!389 (cache!3792 cacheDown!939)))))

(declare-fun bs!500251 () Bool)

(assert (= bs!500251 d!802896))

(declare-fun m!3187745 () Bool)

(assert (=> bs!500251 m!3187745))

(assert (=> b!2764636 d!802896))

(declare-fun d!802898 () Bool)

(assert (=> d!802898 (= (valid!2917 cacheUp!820) (validCacheMapUp!358 (cache!3791 cacheUp!820)))))

(declare-fun bs!500252 () Bool)

(assert (= bs!500252 d!802898))

(declare-fun m!3187747 () Bool)

(assert (=> bs!500252 m!3187747))

(assert (=> start!267634 d!802898))

(declare-fun d!802900 () Bool)

(declare-fun res!1157166 () Bool)

(declare-fun e!1743227 () Bool)

(assert (=> d!802900 (=> (not res!1157166) (not e!1743227))))

(assert (=> d!802900 (= res!1157166 ((_ is HashMap!3648) (cache!3791 cacheUp!820)))))

(assert (=> d!802900 (= (inv!43356 cacheUp!820) e!1743227)))

(declare-fun b!2764881 () Bool)

(assert (=> b!2764881 (= e!1743227 (validCacheMapUp!358 (cache!3791 cacheUp!820)))))

(assert (= (and d!802900 res!1157166) b!2764881))

(assert (=> b!2764881 m!3187747))

(assert (=> start!267634 d!802900))

(declare-fun d!802902 () Bool)

(declare-fun res!1157169 () Bool)

(declare-fun e!1743230 () Bool)

(assert (=> d!802902 (=> (not res!1157169) (not e!1743230))))

(assert (=> d!802902 (= res!1157169 ((_ is HashMap!3649) (cache!3792 cacheDown!939)))))

(assert (=> d!802902 (= (inv!43357 cacheDown!939) e!1743230)))

(declare-fun b!2764884 () Bool)

(assert (=> b!2764884 (= e!1743230 (validCacheMapDown!389 (cache!3792 cacheDown!939)))))

(assert (= (and d!802902 res!1157169) b!2764884))

(assert (=> b!2764884 m!3187745))

(assert (=> start!267634 d!802902))

(declare-fun d!802904 () Bool)

(assert (=> d!802904 (= (inv!43358 input!5495) (isBalanced!3032 (c!448346 input!5495)))))

(declare-fun bs!500253 () Bool)

(assert (= bs!500253 d!802904))

(assert (=> bs!500253 m!3187425))

(assert (=> start!267634 d!802904))

(declare-fun d!802906 () Bool)

(assert (=> d!802906 (= (array_inv!4250 (_keys!4043 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) (bvsge (size!24695 (_keys!4043 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2764650 d!802906))

(declare-fun d!802908 () Bool)

(assert (=> d!802908 (= (array_inv!4252 (_values!4024 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) (bvsge (size!24696 (_values!4024 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2764650 d!802908))

(declare-fun bm!179904 () Bool)

(declare-fun call!179915 () C!16292)

(assert (=> bm!179904 (= call!179915 (apply!7476 input!5495 1))))

(declare-fun b!2764885 () Bool)

(declare-fun e!1743233 () Int)

(declare-fun lt!982778 () Int)

(assert (=> b!2764885 (= e!1743233 (ite (= lt!982778 0) 1 lt!982778))))

(declare-fun call!179917 () Int)

(assert (=> b!2764885 (= lt!982778 call!179917)))

(declare-fun b!2764886 () Bool)

(declare-fun e!1743235 () Int)

(assert (=> b!2764886 (= e!1743235 0)))

(declare-fun call!179913 () (InoxSet Context!4570))

(declare-fun call!179910 () List!32027)

(declare-fun bm!179906 () Bool)

(declare-fun call!179911 () List!32027)

(assert (=> bm!179906 (= call!179917 (findLongestMatchInnerZipperFast!25 call!179913 call!179911 (+ 1 1) call!179910 input!5495 lt!982358))))

(declare-fun bm!179907 () Bool)

(assert (=> bm!179907 (= call!179913 (derivationStepZipper!357 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) call!179915))))

(declare-fun b!2764887 () Bool)

(declare-fun c!448435 () Bool)

(declare-fun call!179912 () Bool)

(assert (=> b!2764887 (= c!448435 call!179912)))

(declare-fun lt!982790 () Unit!45955)

(declare-fun lt!982794 () Unit!45955)

(assert (=> b!2764887 (= lt!982790 lt!982794)))

(declare-fun lt!982762 () C!16292)

(declare-fun lt!982771 () List!32027)

(declare-fun lt!982767 () List!32027)

(assert (=> b!2764887 (= (++!7903 (++!7903 lt!982379 (Cons!31927 lt!982762 Nil!31927)) lt!982771) lt!982767)))

(assert (=> b!2764887 (= lt!982794 (lemmaMoveElementToOtherListKeepsConcatEq!858 lt!982379 lt!982762 lt!982771 lt!982767))))

(declare-fun call!179918 () List!32027)

(assert (=> b!2764887 (= lt!982767 call!179918)))

(assert (=> b!2764887 (= lt!982771 (tail!4375 lt!982367))))

(assert (=> b!2764887 (= lt!982762 (apply!7476 input!5495 1))))

(declare-fun lt!982760 () Unit!45955)

(declare-fun lt!982754 () Unit!45955)

(assert (=> b!2764887 (= lt!982760 lt!982754)))

(declare-fun lt!982764 () List!32027)

(assert (=> b!2764887 (isPrefix!2541 (++!7903 lt!982379 (Cons!31927 (head!6137 (getSuffix!1225 lt!982764 lt!982379)) Nil!31927)) lt!982764)))

(assert (=> b!2764887 (= lt!982754 (lemmaAddHeadSuffixToPrefixStillPrefix!446 lt!982379 lt!982764))))

(assert (=> b!2764887 (= lt!982764 call!179918)))

(declare-fun lt!982755 () Unit!45955)

(declare-fun e!1743234 () Unit!45955)

(assert (=> b!2764887 (= lt!982755 e!1743234)))

(declare-fun c!448431 () Bool)

(assert (=> b!2764887 (= c!448431 (= (size!24697 lt!982379) (size!24698 input!5495)))))

(declare-fun lt!982781 () Unit!45955)

(declare-fun lt!982769 () Unit!45955)

(assert (=> b!2764887 (= lt!982781 lt!982769)))

(declare-fun lt!982773 () List!32027)

(assert (=> b!2764887 (<= (size!24697 lt!982379) (size!24697 lt!982773))))

(assert (=> b!2764887 (= lt!982769 (lemmaIsPrefixThenSmallerEqSize!249 lt!982379 lt!982773))))

(assert (=> b!2764887 (= lt!982773 call!179918)))

(declare-fun lt!982758 () Unit!45955)

(declare-fun lt!982782 () Unit!45955)

(assert (=> b!2764887 (= lt!982758 lt!982782)))

(declare-fun lt!982777 () List!32027)

(assert (=> b!2764887 (= (head!6137 (drop!1695 lt!982777 1)) (apply!7477 lt!982777 1))))

(assert (=> b!2764887 (= lt!982782 (lemmaDropApply!901 lt!982777 1))))

(assert (=> b!2764887 (= lt!982777 call!179918)))

(declare-fun lt!982788 () Unit!45955)

(declare-fun lt!982756 () Unit!45955)

(assert (=> b!2764887 (= lt!982788 lt!982756)))

(declare-fun lt!982761 () List!32027)

(declare-fun lt!982775 () List!32027)

(assert (=> b!2764887 (and (= lt!982775 lt!982379) (= lt!982761 lt!982367))))

(assert (=> b!2764887 (= lt!982756 (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982775 lt!982761 lt!982379 lt!982367))))

(declare-fun lt!982768 () tuple2!32008)

(assert (=> b!2764887 (= lt!982761 (list!12056 (_2!18842 lt!982768)))))

(assert (=> b!2764887 (= lt!982775 (list!12056 (_1!18842 lt!982768)))))

(assert (=> b!2764887 (= lt!982768 (splitAt!99 input!5495 1))))

(declare-fun e!1743231 () Int)

(assert (=> b!2764887 (= e!1743231 e!1743233)))

(declare-fun b!2764888 () Bool)

(declare-fun e!1743232 () Int)

(assert (=> b!2764888 (= e!1743232 0)))

(declare-fun b!2764889 () Bool)

(assert (=> b!2764889 (= e!1743235 1)))

(declare-fun bm!179908 () Bool)

(assert (=> bm!179908 (= call!179911 (++!7903 lt!982379 (Cons!31927 call!179915 Nil!31927)))))

(declare-fun b!2764890 () Bool)

(assert (=> b!2764890 (= e!1743232 e!1743231)))

(declare-fun c!448434 () Bool)

(assert (=> b!2764890 (= c!448434 (= 1 lt!982358))))

(declare-fun b!2764891 () Bool)

(declare-fun Unit!45974 () Unit!45955)

(assert (=> b!2764891 (= e!1743234 Unit!45974)))

(declare-fun lt!982785 () List!32027)

(assert (=> b!2764891 (= lt!982785 call!179918)))

(declare-fun lt!982784 () List!32027)

(assert (=> b!2764891 (= lt!982784 call!179918)))

(declare-fun lt!982779 () Unit!45955)

(declare-fun call!179909 () Unit!45955)

(assert (=> b!2764891 (= lt!982779 call!179909)))

(declare-fun call!179916 () Bool)

(assert (=> b!2764891 call!179916))

(declare-fun lt!982787 () Unit!45955)

(assert (=> b!2764891 (= lt!982787 lt!982779)))

(declare-fun lt!982792 () List!32027)

(assert (=> b!2764891 (= lt!982792 call!179918)))

(declare-fun lt!982772 () Unit!45955)

(declare-fun call!179914 () Unit!45955)

(assert (=> b!2764891 (= lt!982772 call!179914)))

(assert (=> b!2764891 (= lt!982792 lt!982379)))

(declare-fun lt!982783 () Unit!45955)

(assert (=> b!2764891 (= lt!982783 lt!982772)))

(assert (=> b!2764891 false))

(declare-fun lt!982763 () List!32027)

(declare-fun bm!179909 () Bool)

(declare-fun lt!982780 () List!32027)

(assert (=> bm!179909 (= call!179916 (isPrefix!2541 (ite c!448434 lt!982763 lt!982785) (ite c!448434 lt!982780 lt!982784)))))

(declare-fun bm!179905 () Bool)

(assert (=> bm!179905 (= call!179909 (lemmaIsPrefixRefl!1668 (ite c!448434 lt!982763 lt!982785) (ite c!448434 lt!982780 lt!982784)))))

(declare-fun lt!982793 () Int)

(declare-fun d!802910 () Bool)

(assert (=> d!802910 (= (size!24697 (_1!18834 (findLongestMatchInnerZipper!11 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 (list!12056 input!5495) lt!982358))) lt!982793)))

(assert (=> d!802910 (= lt!982793 e!1743232)))

(declare-fun c!448433 () Bool)

(assert (=> d!802910 (= c!448433 (lostCauseZipper!429 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381))))))

(declare-fun lt!982770 () Unit!45955)

(declare-fun Unit!45975 () Unit!45955)

(assert (=> d!802910 (= lt!982770 Unit!45975)))

(assert (=> d!802910 (= (getSuffix!1225 (list!12056 input!5495) lt!982379) lt!982367)))

(declare-fun lt!982776 () Unit!45955)

(declare-fun lt!982791 () Unit!45955)

(assert (=> d!802910 (= lt!982776 lt!982791)))

(declare-fun lt!982765 () List!32027)

(assert (=> d!802910 (= lt!982367 lt!982765)))

(assert (=> d!802910 (= lt!982791 (lemmaSamePrefixThenSameSuffix!1127 lt!982379 lt!982367 lt!982379 lt!982765 (list!12056 input!5495)))))

(assert (=> d!802910 (= lt!982765 (getSuffix!1225 (list!12056 input!5495) lt!982379))))

(declare-fun lt!982789 () Unit!45955)

(declare-fun lt!982766 () Unit!45955)

(assert (=> d!802910 (= lt!982789 lt!982766)))

(assert (=> d!802910 (isPrefix!2541 lt!982379 (++!7903 lt!982379 lt!982367))))

(assert (=> d!802910 (= lt!982766 (lemmaConcatTwoListThenFirstIsPrefix!1653 lt!982379 lt!982367))))

(assert (=> d!802910 (= (++!7903 lt!982379 lt!982367) (list!12056 input!5495))))

(assert (=> d!802910 (= (findLongestMatchInnerZipperFast!25 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358) lt!982793)))

(declare-fun bm!179910 () Bool)

(assert (=> bm!179910 (= call!179918 (list!12056 input!5495))))

(declare-fun b!2764892 () Bool)

(assert (=> b!2764892 (= e!1743233 call!179917)))

(declare-fun lt!982774 () List!32027)

(declare-fun bm!179911 () Bool)

(assert (=> bm!179911 (= call!179914 (lemmaIsPrefixSameLengthThenSameList!449 (ite c!448434 lt!982774 lt!982792) lt!982379 call!179918))))

(declare-fun b!2764893 () Bool)

(declare-fun Unit!45976 () Unit!45955)

(assert (=> b!2764893 (= e!1743234 Unit!45976)))

(declare-fun b!2764894 () Bool)

(declare-fun c!448432 () Bool)

(assert (=> b!2764894 (= c!448432 call!179912)))

(declare-fun lt!982759 () Unit!45955)

(declare-fun lt!982753 () Unit!45955)

(assert (=> b!2764894 (= lt!982759 lt!982753)))

(assert (=> b!2764894 (= lt!982774 lt!982379)))

(assert (=> b!2764894 (= lt!982753 call!179914)))

(assert (=> b!2764894 (= lt!982774 call!179918)))

(declare-fun lt!982786 () Unit!45955)

(declare-fun lt!982757 () Unit!45955)

(assert (=> b!2764894 (= lt!982786 lt!982757)))

(assert (=> b!2764894 call!179916))

(assert (=> b!2764894 (= lt!982757 call!179909)))

(assert (=> b!2764894 (= lt!982780 call!179918)))

(assert (=> b!2764894 (= lt!982763 call!179918)))

(assert (=> b!2764894 (= e!1743231 e!1743235)))

(declare-fun bm!179912 () Bool)

(assert (=> bm!179912 (= call!179910 (tail!4375 lt!982367))))

(declare-fun bm!179913 () Bool)

(assert (=> bm!179913 (= call!179912 (nullableZipper!621 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381))))))

(assert (= (and d!802910 c!448433) b!2764888))

(assert (= (and d!802910 (not c!448433)) b!2764890))

(assert (= (and b!2764890 c!448434) b!2764894))

(assert (= (and b!2764890 (not c!448434)) b!2764887))

(assert (= (and b!2764894 c!448432) b!2764889))

(assert (= (and b!2764894 (not c!448432)) b!2764886))

(assert (= (and b!2764887 c!448431) b!2764891))

(assert (= (and b!2764887 (not c!448431)) b!2764893))

(assert (= (and b!2764887 c!448435) b!2764885))

(assert (= (and b!2764887 (not c!448435)) b!2764892))

(assert (= (or b!2764885 b!2764892) bm!179912))

(assert (= (or b!2764885 b!2764892) bm!179904))

(assert (= (or b!2764885 b!2764892) bm!179907))

(assert (= (or b!2764885 b!2764892) bm!179908))

(assert (= (or b!2764885 b!2764892) bm!179906))

(assert (= (or b!2764894 b!2764891) bm!179909))

(assert (= (or b!2764894 b!2764891 b!2764887) bm!179910))

(assert (= (or b!2764894 b!2764891) bm!179905))

(assert (= (or b!2764894 b!2764887) bm!179913))

(assert (= (or b!2764894 b!2764891) bm!179911))

(declare-fun m!3187749 () Bool)

(assert (=> bm!179906 m!3187749))

(declare-fun m!3187751 () Bool)

(assert (=> bm!179907 m!3187751))

(declare-fun m!3187753 () Bool)

(assert (=> bm!179909 m!3187753))

(assert (=> d!802910 m!3187327))

(declare-fun m!3187755 () Bool)

(assert (=> d!802910 m!3187755))

(declare-fun m!3187757 () Bool)

(assert (=> d!802910 m!3187757))

(declare-fun m!3187759 () Bool)

(assert (=> d!802910 m!3187759))

(assert (=> d!802910 m!3187327))

(declare-fun m!3187761 () Bool)

(assert (=> d!802910 m!3187761))

(assert (=> d!802910 m!3187291))

(declare-fun m!3187763 () Bool)

(assert (=> d!802910 m!3187763))

(declare-fun m!3187765 () Bool)

(assert (=> d!802910 m!3187765))

(assert (=> d!802910 m!3187327))

(assert (=> d!802910 m!3187291))

(assert (=> d!802910 m!3187327))

(declare-fun m!3187767 () Bool)

(assert (=> d!802910 m!3187767))

(declare-fun m!3187769 () Bool)

(assert (=> bm!179913 m!3187769))

(assert (=> bm!179904 m!3187661))

(declare-fun m!3187771 () Bool)

(assert (=> bm!179911 m!3187771))

(declare-fun m!3187773 () Bool)

(assert (=> bm!179912 m!3187773))

(declare-fun m!3187775 () Bool)

(assert (=> bm!179908 m!3187775))

(declare-fun m!3187777 () Bool)

(assert (=> b!2764887 m!3187777))

(declare-fun m!3187779 () Bool)

(assert (=> b!2764887 m!3187779))

(assert (=> b!2764887 m!3187661))

(declare-fun m!3187781 () Bool)

(assert (=> b!2764887 m!3187781))

(declare-fun m!3187783 () Bool)

(assert (=> b!2764887 m!3187783))

(declare-fun m!3187785 () Bool)

(assert (=> b!2764887 m!3187785))

(declare-fun m!3187787 () Bool)

(assert (=> b!2764887 m!3187787))

(assert (=> b!2764887 m!3187681))

(declare-fun m!3187789 () Bool)

(assert (=> b!2764887 m!3187789))

(declare-fun m!3187791 () Bool)

(assert (=> b!2764887 m!3187791))

(assert (=> b!2764887 m!3187785))

(declare-fun m!3187793 () Bool)

(assert (=> b!2764887 m!3187793))

(declare-fun m!3187795 () Bool)

(assert (=> b!2764887 m!3187795))

(declare-fun m!3187797 () Bool)

(assert (=> b!2764887 m!3187797))

(assert (=> b!2764887 m!3187789))

(declare-fun m!3187799 () Bool)

(assert (=> b!2764887 m!3187799))

(assert (=> b!2764887 m!3187465))

(declare-fun m!3187801 () Bool)

(assert (=> b!2764887 m!3187801))

(assert (=> b!2764887 m!3187795))

(assert (=> b!2764887 m!3187773))

(declare-fun m!3187803 () Bool)

(assert (=> b!2764887 m!3187803))

(assert (=> b!2764887 m!3187781))

(declare-fun m!3187805 () Bool)

(assert (=> b!2764887 m!3187805))

(declare-fun m!3187807 () Bool)

(assert (=> b!2764887 m!3187807))

(assert (=> b!2764887 m!3187331))

(declare-fun m!3187809 () Bool)

(assert (=> b!2764887 m!3187809))

(declare-fun m!3187811 () Bool)

(assert (=> bm!179905 m!3187811))

(assert (=> bm!179910 m!3187327))

(assert (=> bm!179816 d!802910))

(declare-fun d!802912 () Bool)

(assert (=> d!802912 (= lt!982347 Nil!31927)))

(declare-fun lt!982797 () Unit!45955)

(declare-fun choose!16210 (List!32027 List!32027 List!32027) Unit!45955)

(assert (=> d!802912 (= lt!982797 (choose!16210 lt!982347 Nil!31927 lt!982347))))

(assert (=> d!802912 (isPrefix!2541 lt!982347 lt!982347)))

(assert (=> d!802912 (= (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 Nil!31927 lt!982347) lt!982797)))

(declare-fun bs!500254 () Bool)

(assert (= bs!500254 d!802912))

(declare-fun m!3187813 () Bool)

(assert (=> bs!500254 m!3187813))

(assert (=> bs!500254 m!3187295))

(assert (=> bm!179821 d!802912))

(declare-fun d!802914 () Bool)

(assert (=> d!802914 (= (valid!2917 (ite c!448336 (_2!18839 lt!982416) (_2!18839 lt!982394))) (validCacheMapUp!358 (cache!3791 (ite c!448336 (_2!18839 lt!982416) (_2!18839 lt!982394)))))))

(declare-fun bs!500255 () Bool)

(assert (= bs!500255 d!802914))

(declare-fun m!3187815 () Bool)

(assert (=> bs!500255 m!3187815))

(assert (=> bm!179820 d!802914))

(declare-fun d!802916 () Bool)

(declare-fun lambda!101491 () Int)

(declare-fun forall!6613 (List!32026 Int) Bool)

(assert (=> d!802916 (= (inv!43354 setElem!22507) (forall!6613 (exprs!2785 setElem!22507) lambda!101491))))

(declare-fun bs!500256 () Bool)

(assert (= bs!500256 d!802916))

(declare-fun m!3187817 () Bool)

(assert (=> bs!500256 m!3187817))

(assert (=> setNonEmpty!22507 d!802916))

(declare-fun d!802918 () Bool)

(declare-fun e!1743237 () Bool)

(assert (=> d!802918 e!1743237))

(declare-fun res!1157173 () Bool)

(assert (=> d!802918 (=> res!1157173 e!1743237)))

(declare-fun lt!982798 () Bool)

(assert (=> d!802918 (= res!1157173 (not lt!982798))))

(declare-fun e!1743238 () Bool)

(assert (=> d!802918 (= lt!982798 e!1743238)))

(declare-fun res!1157172 () Bool)

(assert (=> d!802918 (=> res!1157172 e!1743238)))

(assert (=> d!802918 (= res!1157172 ((_ is Nil!31927) lt!982347))))

(assert (=> d!802918 (= (isPrefix!2541 lt!982347 lt!982347) lt!982798)))

(declare-fun b!2764895 () Bool)

(declare-fun e!1743236 () Bool)

(assert (=> b!2764895 (= e!1743238 e!1743236)))

(declare-fun res!1157171 () Bool)

(assert (=> b!2764895 (=> (not res!1157171) (not e!1743236))))

(assert (=> b!2764895 (= res!1157171 (not ((_ is Nil!31927) lt!982347)))))

(declare-fun b!2764897 () Bool)

(assert (=> b!2764897 (= e!1743236 (isPrefix!2541 (tail!4375 lt!982347) (tail!4375 lt!982347)))))

(declare-fun b!2764898 () Bool)

(assert (=> b!2764898 (= e!1743237 (>= (size!24697 lt!982347) (size!24697 lt!982347)))))

(declare-fun b!2764896 () Bool)

(declare-fun res!1157170 () Bool)

(assert (=> b!2764896 (=> (not res!1157170) (not e!1743236))))

(assert (=> b!2764896 (= res!1157170 (= (head!6137 lt!982347) (head!6137 lt!982347)))))

(assert (= (and d!802918 (not res!1157172)) b!2764895))

(assert (= (and b!2764895 res!1157171) b!2764896))

(assert (= (and b!2764896 res!1157170) b!2764897))

(assert (= (and d!802918 (not res!1157173)) b!2764898))

(assert (=> b!2764897 m!3187229))

(assert (=> b!2764897 m!3187229))

(assert (=> b!2764897 m!3187229))

(assert (=> b!2764897 m!3187229))

(declare-fun m!3187819 () Bool)

(assert (=> b!2764897 m!3187819))

(assert (=> b!2764898 m!3187235))

(assert (=> b!2764898 m!3187235))

(assert (=> b!2764896 m!3187233))

(assert (=> b!2764896 m!3187233))

(assert (=> bm!179825 d!802918))

(declare-fun d!802920 () Bool)

(declare-fun e!1743241 () Bool)

(assert (=> d!802920 e!1743241))

(declare-fun res!1157178 () Bool)

(assert (=> d!802920 (=> (not res!1157178) (not e!1743241))))

(declare-fun lt!982801 () tuple3!4732)

(assert (=> d!802920 (= res!1157178 (= (_1!18840 lt!982801) (derivationStepZipper!357 z!3597 lt!982411)))))

(declare-fun choose!16211 ((InoxSet Context!4570) C!16292 CacheUp!2354 CacheDown!2474) tuple3!4732)

(assert (=> d!802920 (= lt!982801 (choose!16211 z!3597 lt!982411 (_2!18839 lt!982377) (_3!2835 lt!982377)))))

(assert (=> d!802920 (= (derivationStepZipperMem!88 z!3597 lt!982411 (_2!18839 lt!982377) (_3!2835 lt!982377)) lt!982801)))

(declare-fun b!2764903 () Bool)

(declare-fun res!1157179 () Bool)

(assert (=> b!2764903 (=> (not res!1157179) (not e!1743241))))

(assert (=> b!2764903 (= res!1157179 (valid!2917 (_2!18840 lt!982801)))))

(declare-fun b!2764904 () Bool)

(assert (=> b!2764904 (= e!1743241 (valid!2916 (_3!2836 lt!982801)))))

(assert (= (and d!802920 res!1157178) b!2764903))

(assert (= (and b!2764903 res!1157179) b!2764904))

(declare-fun m!3187821 () Bool)

(assert (=> d!802920 m!3187821))

(declare-fun m!3187823 () Bool)

(assert (=> d!802920 m!3187823))

(declare-fun m!3187825 () Bool)

(assert (=> b!2764903 m!3187825))

(declare-fun m!3187827 () Bool)

(assert (=> b!2764904 m!3187827))

(assert (=> bm!179813 d!802920))

(declare-fun d!802922 () Bool)

(assert (=> d!802922 true))

(declare-fun lambda!101494 () Int)

(declare-fun flatMap!181 ((InoxSet Context!4570) Int) (InoxSet Context!4570))

(assert (=> d!802922 (= (derivationStepZipper!357 z!3597 lt!982376) (flatMap!181 z!3597 lambda!101494))))

(declare-fun bs!500257 () Bool)

(assert (= bs!500257 d!802922))

(declare-fun m!3187829 () Bool)

(assert (=> bs!500257 m!3187829))

(assert (=> bm!179829 d!802922))

(assert (=> bm!179824 d!802912))

(assert (=> bm!179823 d!802918))

(assert (=> b!2764653 d!802854))

(declare-fun d!802924 () Bool)

(assert (=> d!802924 (isPrefix!2541 lt!982347 lt!982347)))

(declare-fun lt!982804 () Unit!45955)

(declare-fun choose!16212 (List!32027 List!32027) Unit!45955)

(assert (=> d!802924 (= lt!982804 (choose!16212 lt!982347 lt!982347))))

(assert (=> d!802924 (= (lemmaIsPrefixRefl!1668 lt!982347 lt!982347) lt!982804)))

(declare-fun bs!500258 () Bool)

(assert (= bs!500258 d!802924))

(assert (=> bs!500258 m!3187295))

(declare-fun m!3187831 () Bool)

(assert (=> bs!500258 m!3187831))

(assert (=> bm!179812 d!802924))

(assert (=> b!2764637 d!802854))

(declare-fun d!802926 () Bool)

(assert (=> d!802926 (= (valid!2916 (ite c!448336 (_3!2835 lt!982416) (_3!2835 lt!982394))) (validCacheMapDown!389 (cache!3792 (ite c!448336 (_3!2835 lt!982416) (_3!2835 lt!982394)))))))

(declare-fun bs!500259 () Bool)

(assert (= bs!500259 d!802926))

(declare-fun m!3187833 () Bool)

(assert (=> bs!500259 m!3187833))

(assert (=> bm!179822 d!802926))

(declare-fun d!802928 () Bool)

(assert (=> d!802928 (= (valid!2916 (_3!2835 lt!982377)) (validCacheMapDown!389 (cache!3792 (_3!2835 lt!982377))))))

(declare-fun bs!500260 () Bool)

(assert (= bs!500260 d!802928))

(declare-fun m!3187835 () Bool)

(assert (=> bs!500260 m!3187835))

(assert (=> b!2764622 d!802928))

(declare-fun d!802930 () Bool)

(declare-fun e!1743246 () Bool)

(assert (=> d!802930 e!1743246))

(declare-fun res!1157181 () Bool)

(assert (=> d!802930 (=> (not res!1157181) (not e!1743246))))

(declare-fun lt!982821 () tuple2!32000)

(assert (=> d!802930 (= res!1157181 (= (++!7903 (_1!18834 lt!982821) (_2!18834 lt!982821)) lt!982347))))

(declare-fun e!1743247 () tuple2!32000)

(assert (=> d!802930 (= lt!982821 e!1743247)))

(declare-fun c!448438 () Bool)

(assert (=> d!802930 (= c!448438 (lostCauseZipper!429 call!179833))))

(declare-fun lt!982823 () Unit!45955)

(declare-fun Unit!45977 () Unit!45955)

(assert (=> d!802930 (= lt!982823 Unit!45977)))

(assert (=> d!802930 (= (getSuffix!1225 lt!982347 lt!982383) lt!982399)))

(declare-fun lt!982824 () Unit!45955)

(declare-fun lt!982811 () Unit!45955)

(assert (=> d!802930 (= lt!982824 lt!982811)))

(declare-fun lt!982820 () List!32027)

(assert (=> d!802930 (= lt!982399 lt!982820)))

(assert (=> d!802930 (= lt!982811 (lemmaSamePrefixThenSameSuffix!1127 lt!982383 lt!982399 lt!982383 lt!982820 lt!982347))))

(assert (=> d!802930 (= lt!982820 (getSuffix!1225 lt!982347 lt!982383))))

(declare-fun lt!982807 () Unit!45955)

(declare-fun lt!982815 () Unit!45955)

(assert (=> d!802930 (= lt!982807 lt!982815)))

(assert (=> d!802930 (isPrefix!2541 lt!982383 (++!7903 lt!982383 lt!982399))))

(assert (=> d!802930 (= lt!982815 (lemmaConcatTwoListThenFirstIsPrefix!1653 lt!982383 lt!982399))))

(assert (=> d!802930 (= (++!7903 lt!982383 lt!982399) lt!982347)))

(assert (=> d!802930 (= (findLongestMatchInnerZipper!11 call!179833 lt!982383 1 lt!982399 lt!982347 lt!982358) lt!982821)))

(declare-fun b!2764907 () Bool)

(declare-fun e!1743242 () tuple2!32000)

(declare-fun lt!982818 () tuple2!32000)

(assert (=> b!2764907 (= e!1743242 lt!982818)))

(declare-fun b!2764908 () Bool)

(declare-fun c!448439 () Bool)

(declare-fun call!179924 () Bool)

(assert (=> b!2764908 (= c!448439 call!179924)))

(declare-fun lt!982809 () Unit!45955)

(declare-fun lt!982816 () Unit!45955)

(assert (=> b!2764908 (= lt!982809 lt!982816)))

(declare-fun lt!982830 () C!16292)

(declare-fun lt!982819 () List!32027)

(assert (=> b!2764908 (= (++!7903 (++!7903 lt!982383 (Cons!31927 lt!982830 Nil!31927)) lt!982819) lt!982347)))

(assert (=> b!2764908 (= lt!982816 (lemmaMoveElementToOtherListKeepsConcatEq!858 lt!982383 lt!982830 lt!982819 lt!982347))))

(assert (=> b!2764908 (= lt!982819 (tail!4375 lt!982399))))

(assert (=> b!2764908 (= lt!982830 (head!6137 lt!982399))))

(declare-fun lt!982829 () Unit!45955)

(declare-fun lt!982813 () Unit!45955)

(assert (=> b!2764908 (= lt!982829 lt!982813)))

(assert (=> b!2764908 (isPrefix!2541 (++!7903 lt!982383 (Cons!31927 (head!6137 (getSuffix!1225 lt!982347 lt!982383)) Nil!31927)) lt!982347)))

(assert (=> b!2764908 (= lt!982813 (lemmaAddHeadSuffixToPrefixStillPrefix!446 lt!982383 lt!982347))))

(declare-fun lt!982826 () List!32027)

(assert (=> b!2764908 (= lt!982826 (++!7903 lt!982383 (Cons!31927 (head!6137 lt!982399) Nil!31927)))))

(declare-fun lt!982805 () Unit!45955)

(declare-fun e!1743243 () Unit!45955)

(assert (=> b!2764908 (= lt!982805 e!1743243)))

(declare-fun c!448443 () Bool)

(assert (=> b!2764908 (= c!448443 (= (size!24697 lt!982383) (size!24697 lt!982347)))))

(declare-fun lt!982808 () Unit!45955)

(declare-fun lt!982825 () Unit!45955)

(assert (=> b!2764908 (= lt!982808 lt!982825)))

(assert (=> b!2764908 (<= (size!24697 lt!982383) (size!24697 lt!982347))))

(assert (=> b!2764908 (= lt!982825 (lemmaIsPrefixThenSmallerEqSize!249 lt!982383 lt!982347))))

(declare-fun e!1743248 () tuple2!32000)

(declare-fun e!1743244 () tuple2!32000)

(assert (=> b!2764908 (= e!1743248 e!1743244)))

(declare-fun b!2764909 () Bool)

(assert (=> b!2764909 (= e!1743242 (tuple2!32001 lt!982383 lt!982399))))

(declare-fun b!2764910 () Bool)

(declare-fun call!179925 () tuple2!32000)

(assert (=> b!2764910 (= e!1743244 call!179925)))

(declare-fun b!2764911 () Bool)

(declare-fun Unit!45978 () Unit!45955)

(assert (=> b!2764911 (= e!1743243 Unit!45978)))

(declare-fun lt!982817 () Unit!45955)

(declare-fun call!179919 () Unit!45955)

(assert (=> b!2764911 (= lt!982817 call!179919)))

(declare-fun call!179921 () Bool)

(assert (=> b!2764911 call!179921))

(declare-fun lt!982827 () Unit!45955)

(assert (=> b!2764911 (= lt!982827 lt!982817)))

(declare-fun lt!982806 () Unit!45955)

(declare-fun call!179923 () Unit!45955)

(assert (=> b!2764911 (= lt!982806 call!179923)))

(assert (=> b!2764911 (= lt!982347 lt!982383)))

(declare-fun lt!982828 () Unit!45955)

(assert (=> b!2764911 (= lt!982828 lt!982806)))

(assert (=> b!2764911 false))

(declare-fun b!2764912 () Bool)

(assert (=> b!2764912 (= e!1743244 e!1743242)))

(assert (=> b!2764912 (= lt!982818 call!179925)))

(declare-fun c!448440 () Bool)

(assert (=> b!2764912 (= c!448440 (isEmpty!18082 (_1!18834 lt!982818)))))

(declare-fun bm!179914 () Bool)

(assert (=> bm!179914 (= call!179919 (lemmaIsPrefixRefl!1668 lt!982347 lt!982347))))

(declare-fun bm!179915 () Bool)

(declare-fun call!179926 () List!32027)

(assert (=> bm!179915 (= call!179926 (tail!4375 lt!982399))))

(declare-fun bm!179916 () Bool)

(assert (=> bm!179916 (= call!179924 (nullableZipper!621 call!179833))))

(declare-fun b!2764913 () Bool)

(declare-fun c!448442 () Bool)

(assert (=> b!2764913 (= c!448442 call!179924)))

(declare-fun lt!982814 () Unit!45955)

(declare-fun lt!982810 () Unit!45955)

(assert (=> b!2764913 (= lt!982814 lt!982810)))

(assert (=> b!2764913 (= lt!982347 lt!982383)))

(assert (=> b!2764913 (= lt!982810 call!179923)))

(declare-fun lt!982822 () Unit!45955)

(declare-fun lt!982812 () Unit!45955)

(assert (=> b!2764913 (= lt!982822 lt!982812)))

(assert (=> b!2764913 call!179921))

(assert (=> b!2764913 (= lt!982812 call!179919)))

(declare-fun e!1743245 () tuple2!32000)

(assert (=> b!2764913 (= e!1743248 e!1743245)))

(declare-fun b!2764914 () Bool)

(assert (=> b!2764914 (= e!1743245 (tuple2!32001 lt!982383 Nil!31927))))

(declare-fun b!2764915 () Bool)

(assert (=> b!2764915 (= e!1743247 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764916 () Bool)

(assert (=> b!2764916 (= e!1743247 e!1743248)))

(declare-fun c!448441 () Bool)

(assert (=> b!2764916 (= c!448441 (= 1 lt!982358))))

(declare-fun bm!179917 () Bool)

(declare-fun call!179920 () C!16292)

(assert (=> bm!179917 (= call!179920 (head!6137 lt!982399))))

(declare-fun b!2764917 () Bool)

(declare-fun Unit!45979 () Unit!45955)

(assert (=> b!2764917 (= e!1743243 Unit!45979)))

(declare-fun bm!179918 () Bool)

(assert (=> bm!179918 (= call!179921 (isPrefix!2541 lt!982347 lt!982347))))

(declare-fun b!2764918 () Bool)

(assert (=> b!2764918 (= e!1743245 (tuple2!32001 Nil!31927 lt!982347))))

(declare-fun b!2764919 () Bool)

(declare-fun e!1743249 () Bool)

(assert (=> b!2764919 (= e!1743249 (>= (size!24697 (_1!18834 lt!982821)) (size!24697 lt!982383)))))

(declare-fun b!2764920 () Bool)

(assert (=> b!2764920 (= e!1743246 e!1743249)))

(declare-fun res!1157180 () Bool)

(assert (=> b!2764920 (=> res!1157180 e!1743249)))

(assert (=> b!2764920 (= res!1157180 (isEmpty!18082 (_1!18834 lt!982821)))))

(declare-fun bm!179919 () Bool)

(assert (=> bm!179919 (= call!179923 (lemmaIsPrefixSameLengthThenSameList!449 lt!982347 lt!982383 lt!982347))))

(declare-fun bm!179920 () Bool)

(declare-fun call!179922 () (InoxSet Context!4570))

(assert (=> bm!179920 (= call!179925 (findLongestMatchInnerZipper!11 call!179922 lt!982826 (+ 1 1) call!179926 lt!982347 lt!982358))))

(declare-fun bm!179921 () Bool)

(assert (=> bm!179921 (= call!179922 (derivationStepZipper!357 call!179833 call!179920))))

(assert (= (and d!802930 c!448438) b!2764915))

(assert (= (and d!802930 (not c!448438)) b!2764916))

(assert (= (and b!2764916 c!448441) b!2764913))

(assert (= (and b!2764916 (not c!448441)) b!2764908))

(assert (= (and b!2764913 c!448442) b!2764914))

(assert (= (and b!2764913 (not c!448442)) b!2764918))

(assert (= (and b!2764908 c!448443) b!2764911))

(assert (= (and b!2764908 (not c!448443)) b!2764917))

(assert (= (and b!2764908 c!448439) b!2764912))

(assert (= (and b!2764908 (not c!448439)) b!2764910))

(assert (= (and b!2764912 c!448440) b!2764909))

(assert (= (and b!2764912 (not c!448440)) b!2764907))

(assert (= (or b!2764912 b!2764910) bm!179915))

(assert (= (or b!2764912 b!2764910) bm!179917))

(assert (= (or b!2764912 b!2764910) bm!179921))

(assert (= (or b!2764912 b!2764910) bm!179920))

(assert (= (or b!2764913 b!2764908) bm!179916))

(assert (= (or b!2764913 b!2764911) bm!179914))

(assert (= (or b!2764913 b!2764911) bm!179919))

(assert (= (or b!2764913 b!2764911) bm!179918))

(assert (= (and d!802930 res!1157181) b!2764920))

(assert (= (and b!2764920 (not res!1157180)) b!2764919))

(declare-fun m!3187837 () Bool)

(assert (=> b!2764920 m!3187837))

(declare-fun m!3187839 () Bool)

(assert (=> d!802930 m!3187839))

(assert (=> d!802930 m!3187227))

(declare-fun m!3187841 () Bool)

(assert (=> d!802930 m!3187841))

(declare-fun m!3187843 () Bool)

(assert (=> d!802930 m!3187843))

(assert (=> d!802930 m!3187227))

(declare-fun m!3187845 () Bool)

(assert (=> d!802930 m!3187845))

(declare-fun m!3187847 () Bool)

(assert (=> d!802930 m!3187847))

(declare-fun m!3187849 () Bool)

(assert (=> d!802930 m!3187849))

(assert (=> bm!179918 m!3187295))

(declare-fun m!3187851 () Bool)

(assert (=> bm!179921 m!3187851))

(declare-fun m!3187853 () Bool)

(assert (=> bm!179920 m!3187853))

(assert (=> bm!179914 m!3187313))

(declare-fun m!3187855 () Bool)

(assert (=> bm!179915 m!3187855))

(declare-fun m!3187857 () Bool)

(assert (=> b!2764912 m!3187857))

(declare-fun m!3187859 () Bool)

(assert (=> bm!179919 m!3187859))

(declare-fun m!3187861 () Bool)

(assert (=> bm!179917 m!3187861))

(assert (=> b!2764908 m!3187847))

(declare-fun m!3187863 () Bool)

(assert (=> b!2764908 m!3187863))

(declare-fun m!3187865 () Bool)

(assert (=> b!2764908 m!3187865))

(declare-fun m!3187867 () Bool)

(assert (=> b!2764908 m!3187867))

(declare-fun m!3187869 () Bool)

(assert (=> b!2764908 m!3187869))

(assert (=> b!2764908 m!3187865))

(declare-fun m!3187871 () Bool)

(assert (=> b!2764908 m!3187871))

(declare-fun m!3187873 () Bool)

(assert (=> b!2764908 m!3187873))

(assert (=> b!2764908 m!3187235))

(declare-fun m!3187875 () Bool)

(assert (=> b!2764908 m!3187875))

(assert (=> b!2764908 m!3187727))

(declare-fun m!3187877 () Bool)

(assert (=> b!2764908 m!3187877))

(assert (=> b!2764908 m!3187847))

(assert (=> b!2764908 m!3187861))

(assert (=> b!2764908 m!3187873))

(declare-fun m!3187879 () Bool)

(assert (=> b!2764908 m!3187879))

(assert (=> b!2764908 m!3187855))

(declare-fun m!3187881 () Bool)

(assert (=> b!2764919 m!3187881))

(assert (=> b!2764919 m!3187727))

(declare-fun m!3187883 () Bool)

(assert (=> bm!179916 m!3187883))

(assert (=> bm!179817 d!802930))

(assert (=> bm!179811 d!802912))

(declare-fun d!802932 () Bool)

(assert (=> d!802932 (= (isEmpty!18082 (_1!18834 lt!982362)) ((_ is Nil!31927) (_1!18834 lt!982362)))))

(assert (=> b!2764615 d!802932))

(assert (=> bm!179827 d!802924))

(declare-fun d!802934 () Bool)

(declare-fun e!1743250 () Bool)

(assert (=> d!802934 e!1743250))

(declare-fun res!1157182 () Bool)

(assert (=> d!802934 (=> (not res!1157182) (not e!1743250))))

(declare-fun lt!982831 () tuple3!4730)

(assert (=> d!802934 (= res!1157182 (valid!2917 (_2!18839 lt!982831)))))

(assert (=> d!802934 (= lt!982831 (choose!16208 (ite c!448336 (_2!18840 lt!982391) (_2!18840 lt!982381)) (ite c!448336 (_3!2836 lt!982391) (_3!2836 lt!982381)) (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358))))

(assert (=> d!802934 (= (++!7903 lt!982379 lt!982367) (list!12056 input!5495))))

(assert (=> d!802934 (= (findLongestMatchInnerZipperFastMem!20 (ite c!448336 (_2!18840 lt!982391) (_2!18840 lt!982381)) (ite c!448336 (_3!2836 lt!982391) (_3!2836 lt!982381)) (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358) lt!982831)))

(declare-fun b!2764921 () Bool)

(declare-fun res!1157183 () Bool)

(assert (=> b!2764921 (=> (not res!1157183) (not e!1743250))))

(assert (=> b!2764921 (= res!1157183 (valid!2916 (_3!2835 lt!982831)))))

(declare-fun b!2764922 () Bool)

(assert (=> b!2764922 (= e!1743250 (= (_1!18839 lt!982831) (findLongestMatchInnerZipperFast!25 (ite c!448336 (_1!18840 lt!982391) (_1!18840 lt!982381)) lt!982379 1 lt!982367 input!5495 lt!982358)))))

(assert (= (and d!802934 res!1157182) b!2764921))

(assert (= (and b!2764921 res!1157183) b!2764922))

(declare-fun m!3187885 () Bool)

(assert (=> d!802934 m!3187885))

(declare-fun m!3187887 () Bool)

(assert (=> d!802934 m!3187887))

(assert (=> d!802934 m!3187291))

(assert (=> d!802934 m!3187327))

(declare-fun m!3187889 () Bool)

(assert (=> b!2764921 m!3187889))

(assert (=> b!2764922 m!3187363))

(assert (=> bm!179826 d!802934))

(declare-fun d!802936 () Bool)

(assert (=> d!802936 (= (array_inv!4250 (_keys!4042 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) (bvsge (size!24695 (_keys!4042 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2764628 d!802936))

(declare-fun d!802938 () Bool)

(assert (=> d!802938 (= (array_inv!4251 (_values!4023 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) (bvsge (size!24694 (_values!4023 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2764628 d!802938))

(assert (=> bm!179830 d!802924))

(declare-fun d!802940 () Bool)

(assert (=> d!802940 (= (list!12056 (_2!18842 lt!982366)) (list!12057 (c!448346 (_2!18842 lt!982366))))))

(declare-fun bs!500261 () Bool)

(assert (= bs!500261 d!802940))

(declare-fun m!3187891 () Bool)

(assert (=> bs!500261 m!3187891))

(assert (=> b!2764640 d!802940))

(assert (=> b!2764640 d!802808))

(assert (=> b!2764640 d!802810))

(assert (=> b!2764640 d!802812))

(assert (=> b!2764640 d!802842))

(declare-fun b!2764924 () Bool)

(declare-fun e!1743252 () List!32027)

(assert (=> b!2764924 (= e!1743252 (Cons!31927 (h!37347 Nil!31927) (++!7903 (t!228147 Nil!31927) (Cons!31927 lt!982354 Nil!31927))))))

(declare-fun b!2764923 () Bool)

(assert (=> b!2764923 (= e!1743252 (Cons!31927 lt!982354 Nil!31927))))

(declare-fun d!802942 () Bool)

(declare-fun e!1743251 () Bool)

(assert (=> d!802942 e!1743251))

(declare-fun res!1157184 () Bool)

(assert (=> d!802942 (=> (not res!1157184) (not e!1743251))))

(declare-fun lt!982832 () List!32027)

(assert (=> d!802942 (= res!1157184 (= (content!4496 lt!982832) ((_ map or) (content!4496 Nil!31927) (content!4496 (Cons!31927 lt!982354 Nil!31927)))))))

(assert (=> d!802942 (= lt!982832 e!1743252)))

(declare-fun c!448444 () Bool)

(assert (=> d!802942 (= c!448444 ((_ is Nil!31927) Nil!31927))))

(assert (=> d!802942 (= (++!7903 Nil!31927 (Cons!31927 lt!982354 Nil!31927)) lt!982832)))

(declare-fun b!2764926 () Bool)

(assert (=> b!2764926 (= e!1743251 (or (not (= (Cons!31927 lt!982354 Nil!31927) Nil!31927)) (= lt!982832 Nil!31927)))))

(declare-fun b!2764925 () Bool)

(declare-fun res!1157185 () Bool)

(assert (=> b!2764925 (=> (not res!1157185) (not e!1743251))))

(assert (=> b!2764925 (= res!1157185 (= (size!24697 lt!982832) (+ (size!24697 Nil!31927) (size!24697 (Cons!31927 lt!982354 Nil!31927)))))))

(assert (= (and d!802942 c!448444) b!2764923))

(assert (= (and d!802942 (not c!448444)) b!2764924))

(assert (= (and d!802942 res!1157184) b!2764925))

(assert (= (and b!2764925 res!1157185) b!2764926))

(declare-fun m!3187893 () Bool)

(assert (=> b!2764924 m!3187893))

(declare-fun m!3187895 () Bool)

(assert (=> d!802942 m!3187895))

(assert (=> d!802942 m!3187385))

(declare-fun m!3187897 () Bool)

(assert (=> d!802942 m!3187897))

(declare-fun m!3187899 () Bool)

(assert (=> b!2764925 m!3187899))

(assert (=> b!2764925 m!3187231))

(declare-fun m!3187901 () Bool)

(assert (=> b!2764925 m!3187901))

(assert (=> b!2764640 d!802942))

(declare-fun b!2764928 () Bool)

(declare-fun e!1743254 () List!32027)

(assert (=> b!2764928 (= e!1743254 (Cons!31927 (h!37347 lt!982393) (++!7903 (t!228147 lt!982393) lt!982402)))))

(declare-fun b!2764927 () Bool)

(assert (=> b!2764927 (= e!1743254 lt!982402)))

(declare-fun d!802944 () Bool)

(declare-fun e!1743253 () Bool)

(assert (=> d!802944 e!1743253))

(declare-fun res!1157186 () Bool)

(assert (=> d!802944 (=> (not res!1157186) (not e!1743253))))

(declare-fun lt!982833 () List!32027)

(assert (=> d!802944 (= res!1157186 (= (content!4496 lt!982833) ((_ map or) (content!4496 lt!982393) (content!4496 lt!982402))))))

(assert (=> d!802944 (= lt!982833 e!1743254)))

(declare-fun c!448445 () Bool)

(assert (=> d!802944 (= c!448445 ((_ is Nil!31927) lt!982393))))

(assert (=> d!802944 (= (++!7903 lt!982393 lt!982402) lt!982833)))

(declare-fun b!2764930 () Bool)

(assert (=> b!2764930 (= e!1743253 (or (not (= lt!982402 Nil!31927)) (= lt!982833 lt!982393)))))

(declare-fun b!2764929 () Bool)

(declare-fun res!1157187 () Bool)

(assert (=> b!2764929 (=> (not res!1157187) (not e!1743253))))

(assert (=> b!2764929 (= res!1157187 (= (size!24697 lt!982833) (+ (size!24697 lt!982393) (size!24697 lt!982402))))))

(assert (= (and d!802944 c!448445) b!2764927))

(assert (= (and d!802944 (not c!448445)) b!2764928))

(assert (= (and d!802944 res!1157186) b!2764929))

(assert (= (and b!2764929 res!1157187) b!2764930))

(declare-fun m!3187903 () Bool)

(assert (=> b!2764928 m!3187903))

(declare-fun m!3187905 () Bool)

(assert (=> d!802944 m!3187905))

(declare-fun m!3187907 () Bool)

(assert (=> d!802944 m!3187907))

(declare-fun m!3187909 () Bool)

(assert (=> d!802944 m!3187909))

(declare-fun m!3187911 () Bool)

(assert (=> b!2764929 m!3187911))

(assert (=> b!2764929 m!3187695))

(declare-fun m!3187913 () Bool)

(assert (=> b!2764929 m!3187913))

(assert (=> b!2764640 d!802944))

(assert (=> b!2764640 d!802818))

(assert (=> b!2764640 d!802820))

(assert (=> b!2764640 d!802824))

(declare-fun d!802946 () Bool)

(assert (=> d!802946 (= (list!12056 (_1!18842 lt!982366)) (list!12057 (c!448346 (_1!18842 lt!982366))))))

(declare-fun bs!500262 () Bool)

(assert (= bs!500262 d!802946))

(declare-fun m!3187915 () Bool)

(assert (=> bs!500262 m!3187915))

(assert (=> b!2764640 d!802946))

(assert (=> b!2764640 d!802826))

(declare-fun d!802948 () Bool)

(assert (=> d!802948 (= (++!7903 (++!7903 Nil!31927 (Cons!31927 lt!982354 Nil!31927)) lt!982402) lt!982347)))

(declare-fun lt!982834 () Unit!45955)

(assert (=> d!802948 (= lt!982834 (choose!16204 Nil!31927 lt!982354 lt!982402 lt!982347))))

(assert (=> d!802948 (= (++!7903 Nil!31927 (Cons!31927 lt!982354 lt!982402)) lt!982347)))

(assert (=> d!802948 (= (lemmaMoveElementToOtherListKeepsConcatEq!858 Nil!31927 lt!982354 lt!982402 lt!982347) lt!982834)))

(declare-fun bs!500263 () Bool)

(assert (= bs!500263 d!802948))

(assert (=> bs!500263 m!3187255))

(assert (=> bs!500263 m!3187255))

(declare-fun m!3187917 () Bool)

(assert (=> bs!500263 m!3187917))

(declare-fun m!3187919 () Bool)

(assert (=> bs!500263 m!3187919))

(declare-fun m!3187921 () Bool)

(assert (=> bs!500263 m!3187921))

(assert (=> b!2764640 d!802948))

(assert (=> b!2764640 d!802830))

(assert (=> b!2764640 d!802832))

(assert (=> b!2764640 d!802834))

(declare-fun d!802950 () Bool)

(assert (=> d!802950 (and (= lt!982359 Nil!31927) (= lt!982346 lt!982347))))

(declare-fun lt!982835 () Unit!45955)

(assert (=> d!802950 (= lt!982835 (choose!16202 lt!982359 lt!982346 Nil!31927 lt!982347))))

(assert (=> d!802950 (= (++!7903 lt!982359 lt!982346) (++!7903 Nil!31927 lt!982347))))

(assert (=> d!802950 (= (lemmaConcatSameAndSameSizesThenSameLists!327 lt!982359 lt!982346 Nil!31927 lt!982347) lt!982835)))

(declare-fun bs!500264 () Bool)

(assert (= bs!500264 d!802950))

(declare-fun m!3187923 () Bool)

(assert (=> bs!500264 m!3187923))

(declare-fun m!3187925 () Bool)

(assert (=> bs!500264 m!3187925))

(assert (=> bs!500264 m!3187329))

(assert (=> b!2764640 d!802950))

(assert (=> b!2764640 d!802828))

(assert (=> b!2764640 d!802844))

(assert (=> b!2764640 d!802846))

(declare-fun d!802952 () Bool)

(assert (=> d!802952 (= (valid!2916 (_3!2835 lt!982397)) (validCacheMapDown!389 (cache!3792 (_3!2835 lt!982397))))))

(declare-fun bs!500265 () Bool)

(assert (= bs!500265 d!802952))

(declare-fun m!3187927 () Bool)

(assert (=> bs!500265 m!3187927))

(assert (=> b!2764627 d!802952))

(assert (=> bm!179818 d!802918))

(declare-fun bs!500266 () Bool)

(declare-fun d!802954 () Bool)

(assert (= bs!500266 (and d!802954 d!802922)))

(declare-fun lambda!101495 () Int)

(assert (=> bs!500266 (= (= lt!982354 lt!982376) (= lambda!101495 lambda!101494))))

(assert (=> d!802954 true))

(assert (=> d!802954 (= (derivationStepZipper!357 z!3597 lt!982354) (flatMap!181 z!3597 lambda!101495))))

(declare-fun bs!500267 () Bool)

(assert (= bs!500267 d!802954))

(declare-fun m!3187929 () Bool)

(assert (=> bs!500267 m!3187929))

(assert (=> bm!179814 d!802954))

(declare-fun b!2764945 () Bool)

(declare-fun e!1743270 () Bool)

(declare-fun tp!873794 () Bool)

(assert (=> b!2764945 (= e!1743270 tp!873794)))

(declare-fun b!2764946 () Bool)

(declare-fun e!1743269 () Bool)

(declare-fun tp!873802 () Bool)

(assert (=> b!2764946 (= e!1743269 tp!873802)))

(declare-fun mapIsEmpty!17071 () Bool)

(declare-fun mapRes!17071 () Bool)

(assert (=> mapIsEmpty!17071 mapRes!17071))

(declare-fun setElem!22512 () Context!4570)

(declare-fun setNonEmpty!22512 () Bool)

(declare-fun setRes!22513 () Bool)

(declare-fun tp!873804 () Bool)

(assert (=> setNonEmpty!22512 (= setRes!22513 (and tp!873804 (inv!43354 setElem!22512) e!1743269))))

(declare-fun mapDefault!17071 () List!32029)

(declare-fun setRest!22513 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22512 (= (_2!18838 (h!37349 mapDefault!17071)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22512 true) setRest!22513))))

(declare-fun condMapEmpty!17071 () Bool)

(assert (=> mapNonEmpty!17067 (= condMapEmpty!17071 (= mapRest!17067 ((as const (Array (_ BitVec 32) List!32029)) mapDefault!17071)))))

(declare-fun e!1743271 () Bool)

(assert (=> mapNonEmpty!17067 (= tp!873769 (and e!1743271 mapRes!17071))))

(declare-fun b!2764947 () Bool)

(declare-fun e!1743267 () Bool)

(declare-fun tp!873800 () Bool)

(assert (=> b!2764947 (= e!1743267 tp!873800)))

(declare-fun tp!873795 () Bool)

(declare-fun tp_is_empty!14001 () Bool)

(declare-fun b!2764948 () Bool)

(declare-fun tp!873801 () Bool)

(assert (=> b!2764948 (= e!1743271 (and tp!873801 (inv!43354 (_2!18837 (_1!18838 (h!37349 mapDefault!17071)))) e!1743267 tp_is_empty!14001 setRes!22513 tp!873795))))

(declare-fun condSetEmpty!22513 () Bool)

(assert (=> b!2764948 (= condSetEmpty!22513 (= (_2!18838 (h!37349 mapDefault!17071)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun setIsEmpty!22512 () Bool)

(declare-fun setRes!22512 () Bool)

(assert (=> setIsEmpty!22512 setRes!22512))

(declare-fun mapNonEmpty!17071 () Bool)

(declare-fun tp!873798 () Bool)

(declare-fun e!1743272 () Bool)

(assert (=> mapNonEmpty!17071 (= mapRes!17071 (and tp!873798 e!1743272))))

(declare-fun mapRest!17071 () (Array (_ BitVec 32) List!32029))

(declare-fun mapKey!17071 () (_ BitVec 32))

(declare-fun mapValue!17071 () List!32029)

(assert (=> mapNonEmpty!17071 (= mapRest!17067 (store mapRest!17071 mapKey!17071 mapValue!17071))))

(declare-fun tp!873803 () Bool)

(declare-fun setElem!22513 () Context!4570)

(declare-fun e!1743268 () Bool)

(declare-fun setNonEmpty!22513 () Bool)

(assert (=> setNonEmpty!22513 (= setRes!22512 (and tp!873803 (inv!43354 setElem!22513) e!1743268))))

(declare-fun setRest!22512 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22513 (= (_2!18838 (h!37349 mapValue!17071)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22513 true) setRest!22512))))

(declare-fun b!2764949 () Bool)

(declare-fun tp!873796 () Bool)

(assert (=> b!2764949 (= e!1743268 tp!873796)))

(declare-fun tp!873799 () Bool)

(declare-fun tp!873797 () Bool)

(declare-fun b!2764950 () Bool)

(assert (=> b!2764950 (= e!1743272 (and tp!873799 (inv!43354 (_2!18837 (_1!18838 (h!37349 mapValue!17071)))) e!1743270 tp_is_empty!14001 setRes!22512 tp!873797))))

(declare-fun condSetEmpty!22512 () Bool)

(assert (=> b!2764950 (= condSetEmpty!22512 (= (_2!18838 (h!37349 mapValue!17071)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun setIsEmpty!22513 () Bool)

(assert (=> setIsEmpty!22513 setRes!22513))

(assert (= (and mapNonEmpty!17067 condMapEmpty!17071) mapIsEmpty!17071))

(assert (= (and mapNonEmpty!17067 (not condMapEmpty!17071)) mapNonEmpty!17071))

(assert (= b!2764950 b!2764945))

(assert (= (and b!2764950 condSetEmpty!22512) setIsEmpty!22512))

(assert (= (and b!2764950 (not condSetEmpty!22512)) setNonEmpty!22513))

(assert (= setNonEmpty!22513 b!2764949))

(assert (= (and mapNonEmpty!17071 ((_ is Cons!31929) mapValue!17071)) b!2764950))

(assert (= b!2764948 b!2764947))

(assert (= (and b!2764948 condSetEmpty!22513) setIsEmpty!22513))

(assert (= (and b!2764948 (not condSetEmpty!22513)) setNonEmpty!22512))

(assert (= setNonEmpty!22512 b!2764946))

(assert (= (and mapNonEmpty!17067 ((_ is Cons!31929) mapDefault!17071)) b!2764948))

(declare-fun m!3187931 () Bool)

(assert (=> b!2764950 m!3187931))

(declare-fun m!3187933 () Bool)

(assert (=> setNonEmpty!22513 m!3187933))

(declare-fun m!3187935 () Bool)

(assert (=> mapNonEmpty!17071 m!3187935))

(declare-fun m!3187937 () Bool)

(assert (=> setNonEmpty!22512 m!3187937))

(declare-fun m!3187939 () Bool)

(assert (=> b!2764948 m!3187939))

(declare-fun setRes!22516 () Bool)

(declare-fun e!1743279 () Bool)

(declare-fun setElem!22516 () Context!4570)

(declare-fun setNonEmpty!22516 () Bool)

(declare-fun tp!873817 () Bool)

(assert (=> setNonEmpty!22516 (= setRes!22516 (and tp!873817 (inv!43354 setElem!22516) e!1743279))))

(declare-fun setRest!22516 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22516 (= (_2!18838 (h!37349 mapValue!17067)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22516 true) setRest!22516))))

(declare-fun setIsEmpty!22516 () Bool)

(assert (=> setIsEmpty!22516 setRes!22516))

(declare-fun tp!873818 () Bool)

(declare-fun e!1743281 () Bool)

(declare-fun e!1743280 () Bool)

(declare-fun b!2764959 () Bool)

(declare-fun tp!873815 () Bool)

(assert (=> b!2764959 (= e!1743281 (and tp!873815 (inv!43354 (_2!18837 (_1!18838 (h!37349 mapValue!17067)))) e!1743280 tp_is_empty!14001 setRes!22516 tp!873818))))

(declare-fun condSetEmpty!22516 () Bool)

(assert (=> b!2764959 (= condSetEmpty!22516 (= (_2!18838 (h!37349 mapValue!17067)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2764960 () Bool)

(declare-fun tp!873819 () Bool)

(assert (=> b!2764960 (= e!1743279 tp!873819)))

(declare-fun b!2764961 () Bool)

(declare-fun tp!873816 () Bool)

(assert (=> b!2764961 (= e!1743280 tp!873816)))

(assert (=> mapNonEmpty!17067 (= tp!873764 e!1743281)))

(assert (= b!2764959 b!2764961))

(assert (= (and b!2764959 condSetEmpty!22516) setIsEmpty!22516))

(assert (= (and b!2764959 (not condSetEmpty!22516)) setNonEmpty!22516))

(assert (= setNonEmpty!22516 b!2764960))

(assert (= (and mapNonEmpty!17067 ((_ is Cons!31929) mapValue!17067)) b!2764959))

(declare-fun m!3187941 () Bool)

(assert (=> setNonEmpty!22516 m!3187941))

(declare-fun m!3187943 () Bool)

(assert (=> b!2764959 m!3187943))

(declare-fun setNonEmpty!22517 () Bool)

(declare-fun setRes!22517 () Bool)

(declare-fun tp!873822 () Bool)

(declare-fun setElem!22517 () Context!4570)

(declare-fun e!1743282 () Bool)

(assert (=> setNonEmpty!22517 (= setRes!22517 (and tp!873822 (inv!43354 setElem!22517) e!1743282))))

(declare-fun setRest!22517 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22517 (= (_2!18838 (h!37349 mapDefault!17067)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22517 true) setRest!22517))))

(declare-fun setIsEmpty!22517 () Bool)

(assert (=> setIsEmpty!22517 setRes!22517))

(declare-fun e!1743284 () Bool)

(declare-fun b!2764962 () Bool)

(declare-fun tp!873820 () Bool)

(declare-fun e!1743283 () Bool)

(declare-fun tp!873823 () Bool)

(assert (=> b!2764962 (= e!1743284 (and tp!873820 (inv!43354 (_2!18837 (_1!18838 (h!37349 mapDefault!17067)))) e!1743283 tp_is_empty!14001 setRes!22517 tp!873823))))

(declare-fun condSetEmpty!22517 () Bool)

(assert (=> b!2764962 (= condSetEmpty!22517 (= (_2!18838 (h!37349 mapDefault!17067)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2764963 () Bool)

(declare-fun tp!873824 () Bool)

(assert (=> b!2764963 (= e!1743282 tp!873824)))

(declare-fun b!2764964 () Bool)

(declare-fun tp!873821 () Bool)

(assert (=> b!2764964 (= e!1743283 tp!873821)))

(assert (=> b!2764644 (= tp!873756 e!1743284)))

(assert (= b!2764962 b!2764964))

(assert (= (and b!2764962 condSetEmpty!22517) setIsEmpty!22517))

(assert (= (and b!2764962 (not condSetEmpty!22517)) setNonEmpty!22517))

(assert (= setNonEmpty!22517 b!2764963))

(assert (= (and b!2764644 ((_ is Cons!31929) mapDefault!17067)) b!2764962))

(declare-fun m!3187945 () Bool)

(assert (=> setNonEmpty!22517 m!3187945))

(declare-fun m!3187947 () Bool)

(assert (=> b!2764962 m!3187947))

(declare-fun b!2764973 () Bool)

(declare-fun e!1743289 () Bool)

(declare-fun tp!873832 () Bool)

(declare-fun tp!873831 () Bool)

(assert (=> b!2764973 (= e!1743289 (and (inv!43355 (left!24358 (c!448346 input!5495))) tp!873832 (inv!43355 (right!24688 (c!448346 input!5495))) tp!873831))))

(declare-fun b!2764975 () Bool)

(declare-fun e!1743290 () Bool)

(declare-fun tp!873833 () Bool)

(assert (=> b!2764975 (= e!1743290 tp!873833)))

(declare-fun b!2764974 () Bool)

(declare-fun inv!43361 (IArray!19903) Bool)

(assert (=> b!2764974 (= e!1743289 (and (inv!43361 (xs!13058 (c!448346 input!5495))) e!1743290))))

(assert (=> b!2764641 (= tp!873768 (and (inv!43355 (c!448346 input!5495)) e!1743289))))

(assert (= (and b!2764641 ((_ is Node!9949) (c!448346 input!5495))) b!2764973))

(assert (= b!2764974 b!2764975))

(assert (= (and b!2764641 ((_ is Leaf!15151) (c!448346 input!5495))) b!2764974))

(declare-fun m!3187949 () Bool)

(assert (=> b!2764973 m!3187949))

(declare-fun m!3187951 () Bool)

(assert (=> b!2764973 m!3187951))

(declare-fun m!3187953 () Bool)

(assert (=> b!2764974 m!3187953))

(assert (=> b!2764641 m!3187361))

(declare-fun b!2764980 () Bool)

(declare-fun e!1743293 () Bool)

(declare-fun tp!873838 () Bool)

(declare-fun tp!873839 () Bool)

(assert (=> b!2764980 (= e!1743293 (and tp!873838 tp!873839))))

(assert (=> b!2764629 (= tp!873771 e!1743293)))

(assert (= (and b!2764629 ((_ is Cons!31926) (exprs!2785 setElem!22507))) b!2764980))

(declare-fun setElem!22518 () Context!4570)

(declare-fun e!1743294 () Bool)

(declare-fun setNonEmpty!22518 () Bool)

(declare-fun tp!873842 () Bool)

(declare-fun setRes!22518 () Bool)

(assert (=> setNonEmpty!22518 (= setRes!22518 (and tp!873842 (inv!43354 setElem!22518) e!1743294))))

(declare-fun setRest!22518 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22518 (= (_2!18838 (h!37349 (zeroValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22518 true) setRest!22518))))

(declare-fun setIsEmpty!22518 () Bool)

(assert (=> setIsEmpty!22518 setRes!22518))

(declare-fun tp!873840 () Bool)

(declare-fun b!2764981 () Bool)

(declare-fun e!1743296 () Bool)

(declare-fun tp!873843 () Bool)

(declare-fun e!1743295 () Bool)

(assert (=> b!2764981 (= e!1743296 (and tp!873840 (inv!43354 (_2!18837 (_1!18838 (h!37349 (zeroValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))))) e!1743295 tp_is_empty!14001 setRes!22518 tp!873843))))

(declare-fun condSetEmpty!22518 () Bool)

(assert (=> b!2764981 (= condSetEmpty!22518 (= (_2!18838 (h!37349 (zeroValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2764982 () Bool)

(declare-fun tp!873844 () Bool)

(assert (=> b!2764982 (= e!1743294 tp!873844)))

(declare-fun b!2764983 () Bool)

(declare-fun tp!873841 () Bool)

(assert (=> b!2764983 (= e!1743295 tp!873841)))

(assert (=> b!2764650 (= tp!873763 e!1743296)))

(assert (= b!2764981 b!2764983))

(assert (= (and b!2764981 condSetEmpty!22518) setIsEmpty!22518))

(assert (= (and b!2764981 (not condSetEmpty!22518)) setNonEmpty!22518))

(assert (= setNonEmpty!22518 b!2764982))

(assert (= (and b!2764650 ((_ is Cons!31929) (zeroValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) b!2764981))

(declare-fun m!3187955 () Bool)

(assert (=> setNonEmpty!22518 m!3187955))

(declare-fun m!3187957 () Bool)

(assert (=> b!2764981 m!3187957))

(declare-fun setRes!22519 () Bool)

(declare-fun tp!873847 () Bool)

(declare-fun setElem!22519 () Context!4570)

(declare-fun e!1743297 () Bool)

(declare-fun setNonEmpty!22519 () Bool)

(assert (=> setNonEmpty!22519 (= setRes!22519 (and tp!873847 (inv!43354 setElem!22519) e!1743297))))

(declare-fun setRest!22519 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22519 (= (_2!18838 (h!37349 (minValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22519 true) setRest!22519))))

(declare-fun setIsEmpty!22519 () Bool)

(assert (=> setIsEmpty!22519 setRes!22519))

(declare-fun e!1743298 () Bool)

(declare-fun tp!873845 () Bool)

(declare-fun e!1743299 () Bool)

(declare-fun tp!873848 () Bool)

(declare-fun b!2764984 () Bool)

(assert (=> b!2764984 (= e!1743299 (and tp!873845 (inv!43354 (_2!18837 (_1!18838 (h!37349 (minValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))))) e!1743298 tp_is_empty!14001 setRes!22519 tp!873848))))

(declare-fun condSetEmpty!22519 () Bool)

(assert (=> b!2764984 (= condSetEmpty!22519 (= (_2!18838 (h!37349 (minValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2764985 () Bool)

(declare-fun tp!873849 () Bool)

(assert (=> b!2764985 (= e!1743297 tp!873849)))

(declare-fun b!2764986 () Bool)

(declare-fun tp!873846 () Bool)

(assert (=> b!2764986 (= e!1743298 tp!873846)))

(assert (=> b!2764650 (= tp!873766 e!1743299)))

(assert (= b!2764984 b!2764986))

(assert (= (and b!2764984 condSetEmpty!22519) setIsEmpty!22519))

(assert (= (and b!2764984 (not condSetEmpty!22519)) setNonEmpty!22519))

(assert (= setNonEmpty!22519 b!2764985))

(assert (= (and b!2764650 ((_ is Cons!31929) (minValue!4002 (v!33536 (underlying!7689 (v!33537 (underlying!7690 (cache!3792 cacheDown!939)))))))) b!2764984))

(declare-fun m!3187959 () Bool)

(assert (=> setNonEmpty!22519 m!3187959))

(declare-fun m!3187961 () Bool)

(assert (=> b!2764984 m!3187961))

(declare-fun b!2764995 () Bool)

(declare-fun e!1743307 () Bool)

(declare-fun tp!873861 () Bool)

(assert (=> b!2764995 (= e!1743307 tp!873861)))

(declare-fun tp!873860 () Bool)

(declare-fun b!2764996 () Bool)

(declare-fun e!1743308 () Bool)

(declare-fun setRes!22522 () Bool)

(assert (=> b!2764996 (= e!1743308 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 (zeroValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))))) e!1743307 tp_is_empty!14001 setRes!22522 tp!873860))))

(declare-fun condSetEmpty!22522 () Bool)

(assert (=> b!2764996 (= condSetEmpty!22522 (= (_2!18836 (h!37348 (zeroValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2764997 () Bool)

(declare-fun e!1743306 () Bool)

(declare-fun tp!873858 () Bool)

(assert (=> b!2764997 (= e!1743306 tp!873858)))

(declare-fun tp!873859 () Bool)

(declare-fun setElem!22522 () Context!4570)

(declare-fun setNonEmpty!22522 () Bool)

(assert (=> setNonEmpty!22522 (= setRes!22522 (and tp!873859 (inv!43354 setElem!22522) e!1743306))))

(declare-fun setRest!22522 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22522 (= (_2!18836 (h!37348 (zeroValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22522 true) setRest!22522))))

(declare-fun setIsEmpty!22522 () Bool)

(assert (=> setIsEmpty!22522 setRes!22522))

(assert (=> b!2764628 (= tp!873770 e!1743308)))

(assert (= b!2764996 b!2764995))

(assert (= (and b!2764996 condSetEmpty!22522) setIsEmpty!22522))

(assert (= (and b!2764996 (not condSetEmpty!22522)) setNonEmpty!22522))

(assert (= setNonEmpty!22522 b!2764997))

(assert (= (and b!2764628 ((_ is Cons!31928) (zeroValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) b!2764996))

(declare-fun m!3187963 () Bool)

(assert (=> b!2764996 m!3187963))

(declare-fun m!3187965 () Bool)

(assert (=> setNonEmpty!22522 m!3187965))

(declare-fun b!2764998 () Bool)

(declare-fun e!1743310 () Bool)

(declare-fun tp!873865 () Bool)

(assert (=> b!2764998 (= e!1743310 tp!873865)))

(declare-fun e!1743311 () Bool)

(declare-fun tp!873864 () Bool)

(declare-fun b!2764999 () Bool)

(declare-fun setRes!22523 () Bool)

(assert (=> b!2764999 (= e!1743311 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 (minValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))))) e!1743310 tp_is_empty!14001 setRes!22523 tp!873864))))

(declare-fun condSetEmpty!22523 () Bool)

(assert (=> b!2764999 (= condSetEmpty!22523 (= (_2!18836 (h!37348 (minValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2765000 () Bool)

(declare-fun e!1743309 () Bool)

(declare-fun tp!873862 () Bool)

(assert (=> b!2765000 (= e!1743309 tp!873862)))

(declare-fun tp!873863 () Bool)

(declare-fun setElem!22523 () Context!4570)

(declare-fun setNonEmpty!22523 () Bool)

(assert (=> setNonEmpty!22523 (= setRes!22523 (and tp!873863 (inv!43354 setElem!22523) e!1743309))))

(declare-fun setRest!22523 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22523 (= (_2!18836 (h!37348 (minValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22523 true) setRest!22523))))

(declare-fun setIsEmpty!22523 () Bool)

(assert (=> setIsEmpty!22523 setRes!22523))

(assert (=> b!2764628 (= tp!873760 e!1743311)))

(assert (= b!2764999 b!2764998))

(assert (= (and b!2764999 condSetEmpty!22523) setIsEmpty!22523))

(assert (= (and b!2764999 (not condSetEmpty!22523)) setNonEmpty!22523))

(assert (= setNonEmpty!22523 b!2765000))

(assert (= (and b!2764628 ((_ is Cons!31928) (minValue!4001 (v!33534 (underlying!7687 (v!33535 (underlying!7688 (cache!3791 cacheUp!820)))))))) b!2764999))

(declare-fun m!3187967 () Bool)

(assert (=> b!2764999 m!3187967))

(declare-fun m!3187969 () Bool)

(assert (=> setNonEmpty!22523 m!3187969))

(declare-fun b!2765015 () Bool)

(declare-fun e!1743324 () Bool)

(declare-fun tp!873891 () Bool)

(assert (=> b!2765015 (= e!1743324 tp!873891)))

(declare-fun setIsEmpty!22528 () Bool)

(declare-fun setRes!22528 () Bool)

(assert (=> setIsEmpty!22528 setRes!22528))

(declare-fun setElem!22529 () Context!4570)

(declare-fun tp!873889 () Bool)

(declare-fun e!1743329 () Bool)

(declare-fun setRes!22529 () Bool)

(declare-fun setNonEmpty!22528 () Bool)

(assert (=> setNonEmpty!22528 (= setRes!22529 (and tp!873889 (inv!43354 setElem!22529) e!1743329))))

(declare-fun mapDefault!17074 () List!32028)

(declare-fun setRest!22529 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22528 (= (_2!18836 (h!37348 mapDefault!17074)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22529 true) setRest!22529))))

(declare-fun setIsEmpty!22529 () Bool)

(assert (=> setIsEmpty!22529 setRes!22529))

(declare-fun e!1743326 () Bool)

(declare-fun e!1743327 () Bool)

(declare-fun b!2765016 () Bool)

(declare-fun tp!873890 () Bool)

(assert (=> b!2765016 (= e!1743327 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 mapDefault!17074)))) e!1743326 tp_is_empty!14001 setRes!22529 tp!873890))))

(declare-fun condSetEmpty!22528 () Bool)

(assert (=> b!2765016 (= condSetEmpty!22528 (= (_2!18836 (h!37348 mapDefault!17074)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun mapIsEmpty!17074 () Bool)

(declare-fun mapRes!17074 () Bool)

(assert (=> mapIsEmpty!17074 mapRes!17074))

(declare-fun condMapEmpty!17074 () Bool)

(assert (=> mapNonEmpty!17068 (= condMapEmpty!17074 (= mapRest!17068 ((as const (Array (_ BitVec 32) List!32028)) mapDefault!17074)))))

(assert (=> mapNonEmpty!17068 (= tp!873762 (and e!1743327 mapRes!17074))))

(declare-fun tp!873888 () Bool)

(declare-fun e!1743325 () Bool)

(declare-fun mapValue!17074 () List!32028)

(declare-fun b!2765017 () Bool)

(declare-fun e!1743328 () Bool)

(assert (=> b!2765017 (= e!1743328 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 mapValue!17074)))) e!1743325 tp_is_empty!14001 setRes!22528 tp!873888))))

(declare-fun condSetEmpty!22529 () Bool)

(assert (=> b!2765017 (= condSetEmpty!22529 (= (_2!18836 (h!37348 mapValue!17074)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2765018 () Bool)

(declare-fun tp!873885 () Bool)

(assert (=> b!2765018 (= e!1743326 tp!873885)))

(declare-fun b!2765019 () Bool)

(declare-fun tp!873887 () Bool)

(assert (=> b!2765019 (= e!1743329 tp!873887)))

(declare-fun mapNonEmpty!17074 () Bool)

(declare-fun tp!873886 () Bool)

(assert (=> mapNonEmpty!17074 (= mapRes!17074 (and tp!873886 e!1743328))))

(declare-fun mapKey!17074 () (_ BitVec 32))

(declare-fun mapRest!17074 () (Array (_ BitVec 32) List!32028))

(assert (=> mapNonEmpty!17074 (= mapRest!17068 (store mapRest!17074 mapKey!17074 mapValue!17074))))

(declare-fun b!2765020 () Bool)

(declare-fun tp!873884 () Bool)

(assert (=> b!2765020 (= e!1743325 tp!873884)))

(declare-fun setElem!22528 () Context!4570)

(declare-fun tp!873892 () Bool)

(declare-fun setNonEmpty!22529 () Bool)

(assert (=> setNonEmpty!22529 (= setRes!22528 (and tp!873892 (inv!43354 setElem!22528) e!1743324))))

(declare-fun setRest!22528 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22529 (= (_2!18836 (h!37348 mapValue!17074)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22528 true) setRest!22528))))

(assert (= (and mapNonEmpty!17068 condMapEmpty!17074) mapIsEmpty!17074))

(assert (= (and mapNonEmpty!17068 (not condMapEmpty!17074)) mapNonEmpty!17074))

(assert (= b!2765017 b!2765020))

(assert (= (and b!2765017 condSetEmpty!22529) setIsEmpty!22528))

(assert (= (and b!2765017 (not condSetEmpty!22529)) setNonEmpty!22529))

(assert (= setNonEmpty!22529 b!2765015))

(assert (= (and mapNonEmpty!17074 ((_ is Cons!31928) mapValue!17074)) b!2765017))

(assert (= b!2765016 b!2765018))

(assert (= (and b!2765016 condSetEmpty!22528) setIsEmpty!22529))

(assert (= (and b!2765016 (not condSetEmpty!22528)) setNonEmpty!22528))

(assert (= setNonEmpty!22528 b!2765019))

(assert (= (and mapNonEmpty!17068 ((_ is Cons!31928) mapDefault!17074)) b!2765016))

(declare-fun m!3187971 () Bool)

(assert (=> setNonEmpty!22528 m!3187971))

(declare-fun m!3187973 () Bool)

(assert (=> setNonEmpty!22529 m!3187973))

(declare-fun m!3187975 () Bool)

(assert (=> mapNonEmpty!17074 m!3187975))

(declare-fun m!3187977 () Bool)

(assert (=> b!2765016 m!3187977))

(declare-fun m!3187979 () Bool)

(assert (=> b!2765017 m!3187979))

(declare-fun b!2765021 () Bool)

(declare-fun e!1743331 () Bool)

(declare-fun tp!873896 () Bool)

(assert (=> b!2765021 (= e!1743331 tp!873896)))

(declare-fun tp!873895 () Bool)

(declare-fun setRes!22530 () Bool)

(declare-fun e!1743332 () Bool)

(declare-fun b!2765022 () Bool)

(assert (=> b!2765022 (= e!1743332 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 mapValue!17068)))) e!1743331 tp_is_empty!14001 setRes!22530 tp!873895))))

(declare-fun condSetEmpty!22530 () Bool)

(assert (=> b!2765022 (= condSetEmpty!22530 (= (_2!18836 (h!37348 mapValue!17068)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2765023 () Bool)

(declare-fun e!1743330 () Bool)

(declare-fun tp!873893 () Bool)

(assert (=> b!2765023 (= e!1743330 tp!873893)))

(declare-fun setNonEmpty!22530 () Bool)

(declare-fun tp!873894 () Bool)

(declare-fun setElem!22530 () Context!4570)

(assert (=> setNonEmpty!22530 (= setRes!22530 (and tp!873894 (inv!43354 setElem!22530) e!1743330))))

(declare-fun setRest!22530 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22530 (= (_2!18836 (h!37348 mapValue!17068)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22530 true) setRest!22530))))

(declare-fun setIsEmpty!22530 () Bool)

(assert (=> setIsEmpty!22530 setRes!22530))

(assert (=> mapNonEmpty!17068 (= tp!873767 e!1743332)))

(assert (= b!2765022 b!2765021))

(assert (= (and b!2765022 condSetEmpty!22530) setIsEmpty!22530))

(assert (= (and b!2765022 (not condSetEmpty!22530)) setNonEmpty!22530))

(assert (= setNonEmpty!22530 b!2765023))

(assert (= (and mapNonEmpty!17068 ((_ is Cons!31928) mapValue!17068)) b!2765022))

(declare-fun m!3187981 () Bool)

(assert (=> b!2765022 m!3187981))

(declare-fun m!3187983 () Bool)

(assert (=> setNonEmpty!22530 m!3187983))

(declare-fun condSetEmpty!22533 () Bool)

(assert (=> setNonEmpty!22507 (= condSetEmpty!22533 (= setRest!22507 ((as const (Array Context!4570 Bool)) false)))))

(declare-fun setRes!22533 () Bool)

(assert (=> setNonEmpty!22507 (= tp!873759 setRes!22533)))

(declare-fun setIsEmpty!22533 () Bool)

(assert (=> setIsEmpty!22533 setRes!22533))

(declare-fun setNonEmpty!22533 () Bool)

(declare-fun setElem!22533 () Context!4570)

(declare-fun e!1743335 () Bool)

(declare-fun tp!873901 () Bool)

(assert (=> setNonEmpty!22533 (= setRes!22533 (and tp!873901 (inv!43354 setElem!22533) e!1743335))))

(declare-fun setRest!22533 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22533 (= setRest!22507 ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22533 true) setRest!22533))))

(declare-fun b!2765028 () Bool)

(declare-fun tp!873902 () Bool)

(assert (=> b!2765028 (= e!1743335 tp!873902)))

(assert (= (and setNonEmpty!22507 condSetEmpty!22533) setIsEmpty!22533))

(assert (= (and setNonEmpty!22507 (not condSetEmpty!22533)) setNonEmpty!22533))

(assert (= setNonEmpty!22533 b!2765028))

(declare-fun m!3187985 () Bool)

(assert (=> setNonEmpty!22533 m!3187985))

(declare-fun b!2765029 () Bool)

(declare-fun e!1743337 () Bool)

(declare-fun tp!873906 () Bool)

(assert (=> b!2765029 (= e!1743337 tp!873906)))

(declare-fun b!2765030 () Bool)

(declare-fun e!1743338 () Bool)

(declare-fun setRes!22534 () Bool)

(declare-fun tp!873905 () Bool)

(assert (=> b!2765030 (= e!1743338 (and (inv!43354 (_1!18835 (_1!18836 (h!37348 mapDefault!17068)))) e!1743337 tp_is_empty!14001 setRes!22534 tp!873905))))

(declare-fun condSetEmpty!22534 () Bool)

(assert (=> b!2765030 (= condSetEmpty!22534 (= (_2!18836 (h!37348 mapDefault!17068)) ((as const (Array Context!4570 Bool)) false)))))

(declare-fun b!2765031 () Bool)

(declare-fun e!1743336 () Bool)

(declare-fun tp!873903 () Bool)

(assert (=> b!2765031 (= e!1743336 tp!873903)))

(declare-fun tp!873904 () Bool)

(declare-fun setNonEmpty!22534 () Bool)

(declare-fun setElem!22534 () Context!4570)

(assert (=> setNonEmpty!22534 (= setRes!22534 (and tp!873904 (inv!43354 setElem!22534) e!1743336))))

(declare-fun setRest!22534 () (InoxSet Context!4570))

(assert (=> setNonEmpty!22534 (= (_2!18836 (h!37348 mapDefault!17068)) ((_ map or) (store ((as const (Array Context!4570 Bool)) false) setElem!22534 true) setRest!22534))))

(declare-fun setIsEmpty!22534 () Bool)

(assert (=> setIsEmpty!22534 setRes!22534))

(assert (=> b!2764638 (= tp!873765 e!1743338)))

(assert (= b!2765030 b!2765029))

(assert (= (and b!2765030 condSetEmpty!22534) setIsEmpty!22534))

(assert (= (and b!2765030 (not condSetEmpty!22534)) setNonEmpty!22534))

(assert (= setNonEmpty!22534 b!2765031))

(assert (= (and b!2764638 ((_ is Cons!31928) mapDefault!17068)) b!2765030))

(declare-fun m!3187987 () Bool)

(assert (=> b!2765030 m!3187987))

(declare-fun m!3187989 () Bool)

(assert (=> setNonEmpty!22534 m!3187989))

(check-sat (not b!2764986) (not d!802870) (not bm!179894) (not b!2764897) (not d!802898) (not b!2764684) (not b!2764721) (not bm!179891) (not d!802934) (not bm!179888) (not b!2764887) (not b!2764668) (not bm!179857) (not bm!179908) (not b!2765031) (not d!802862) (not b!2765023) (not bm!179905) (not b!2764854) (not b!2764920) (not b!2764960) (not b!2764963) (not bm!179902) (not b!2764921) (not b!2764705) (not b!2764846) (not b!2764950) (not b_next!78777) (not bm!179919) (not b!2764924) (not d!802914) b_and!202807 (not bm!179920) (not setNonEmpty!22517) (not d!802850) (not bm!179907) (not b!2765000) (not d!802920) (not d!802832) (not d!802878) (not b!2764849) (not d!802858) (not d!802856) (not bm!179899) (not bm!179856) (not bm!179910) (not b!2764928) (not bm!179906) (not b!2764984) (not b!2764878) (not d!802854) (not b!2764947) (not bm!179868) (not d!802864) (not b!2764982) (not b!2764722) (not d!802946) (not d!802814) (not b!2764728) (not d!802892) (not d!802886) (not b!2764961) b_and!202809 (not bm!179918) (not bm!179916) (not bm!179854) (not b_next!78775) (not b!2764919) (not b!2764975) (not d!802944) (not mapNonEmpty!17074) (not b!2764670) b_and!202813 (not b!2764973) (not b!2764922) (not b_next!78773) (not b!2764995) (not d!802838) (not setNonEmpty!22516) (not b!2764876) (not b!2764959) (not b!2764685) (not setNonEmpty!22523) (not bm!179895) (not b!2764898) (not b!2764739) (not bm!179861) (not d!802876) (not d!802896) (not b!2764999) (not bm!179859) (not bm!179921) (not b!2764962) (not d!802940) (not setNonEmpty!22513) (not b!2765030) (not b!2764669) (not d!802942) (not d!802930) (not bm!179912) (not b!2765020) (not b!2764680) (not b!2764740) (not b!2764946) (not setNonEmpty!22530) (not b!2764997) (not b!2764908) (not setNonEmpty!22533) (not bm!179863) (not d!802916) (not bm!179896) tp_is_empty!14001 (not b!2764681) (not bm!179890) (not d!802890) (not b!2764903) (not d!802928) (not b!2764749) (not d!802810) (not b!2765018) (not mapNonEmpty!17071) (not bm!179909) (not b!2764881) (not b!2764839) (not b!2764896) (not b!2765015) (not b!2764851) (not b!2764850) (not d!802882) (not d!802904) (not bm!179887) (not b!2764840) (not d!802952) (not b!2764829) (not b!2764964) (not setNonEmpty!22522) (not b!2764985) (not b!2764904) (not d!802912) (not b!2764867) (not b!2765028) (not d!802844) (not b!2764980) (not bm!179901) (not d!802818) (not bm!179862) (not d!802812) (not d!802954) (not bm!179833) (not bm!179917) (not b!2764755) (not setNonEmpty!22528) (not d!802848) (not setNonEmpty!22512) (not bm!179903) (not b!2764949) (not b!2764837) (not bm!179913) (not b!2764868) (not b!2765022) (not b!2764746) (not b!2764974) (not b!2764641) (not bm!179900) (not b!2764745) (not d!802836) (not d!802884) (not d!802826) (not d!802860) (not b!2764925) (not d!802852) (not d!802948) (not b!2764836) (not bm!179911) (not b!2764998) (not b!2764983) (not b!2765017) (not bm!179869) (not d!802924) (not setNonEmpty!22519) (not bm!179898) (not b_next!78779) (not d!802822) (not b!2764996) (not b!2765016) (not d!802840) (not setNonEmpty!22534) (not b!2764841) (not b!2765021) (not b!2764790) (not bm!179860) (not bm!179892) (not d!802872) (not bm!179889) (not bm!179904) (not b!2764716) (not bm!179914) (not b!2764791) (not b!2764912) (not b!2764712) (not setNonEmpty!22518) (not b!2764948) (not d!802846) (not d!802950) (not d!802866) (not d!802816) (not b!2764743) (not d!802820) (not b!2765019) (not d!802874) (not b!2764863) (not bm!179915) (not bm!179893) b_and!202811 (not d!802868) (not bm!179858) (not b!2764793) (not b!2764838) (not b!2764825) (not setNonEmpty!22529) (not b!2764754) (not b!2764864) (not d!802910) (not b!2764929) (not b!2764778) (not d!802926) (not bm!179855) (not b!2765029) (not d!802922) (not b!2764945) (not b!2764738) (not b!2764794) (not b!2764981) (not bm!179897) (not bm!179886) (not b!2764884))
(check-sat (not b_next!78773) (not b_next!78779) b_and!202811 (not b_next!78777) b_and!202807 b_and!202809 b_and!202813 (not b_next!78775))
