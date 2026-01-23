; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266720 () Bool)

(assert start!266720)

(declare-fun b!2751747 () Bool)

(declare-fun b_free!77861 () Bool)

(declare-fun b_next!78565 () Bool)

(assert (=> b!2751747 (= b_free!77861 (not b_next!78565))))

(declare-fun tp!869331 () Bool)

(declare-fun b_and!202599 () Bool)

(assert (=> b!2751747 (= tp!869331 b_and!202599)))

(declare-fun b!2751737 () Bool)

(declare-fun b_free!77863 () Bool)

(declare-fun b_next!78567 () Bool)

(assert (=> b!2751737 (= b_free!77863 (not b_next!78567))))

(declare-fun tp!869323 () Bool)

(declare-fun b_and!202601 () Bool)

(assert (=> b!2751737 (= tp!869323 b_and!202601)))

(declare-fun b!2751754 () Bool)

(declare-fun b_free!77865 () Bool)

(declare-fun b_next!78569 () Bool)

(assert (=> b!2751754 (= b_free!77865 (not b_next!78569))))

(declare-fun tp!869326 () Bool)

(declare-fun b_and!202603 () Bool)

(assert (=> b!2751754 (= tp!869326 b_and!202603)))

(declare-fun b!2751764 () Bool)

(declare-fun b_free!77867 () Bool)

(declare-fun b_next!78571 () Bool)

(assert (=> b!2751764 (= b_free!77867 (not b_next!78571))))

(declare-fun tp!869334 () Bool)

(declare-fun b_and!202605 () Bool)

(assert (=> b!2751764 (= tp!869334 b_and!202605)))

(declare-fun bm!177658 () Bool)

(declare-fun call!177671 () Bool)

(declare-datatypes ((C!16256 0))(
  ( (C!16257 (val!10062 Int)) )
))
(declare-datatypes ((List!31942 0))(
  ( (Nil!31842) (Cons!31842 (h!37262 C!16256) (t!228046 List!31942)) )
))
(declare-fun lt!973415 () List!31942)

(declare-fun isPrefix!2525 (List!31942 List!31942) Bool)

(assert (=> bm!177658 (= call!177671 (isPrefix!2525 lt!973415 lt!973415))))

(declare-fun c!445208 () Bool)

(declare-fun bm!177659 () Bool)

(declare-datatypes ((IArray!19867 0))(
  ( (IArray!19868 (innerList!9991 List!31942)) )
))
(declare-datatypes ((Conc!9931 0))(
  ( (Node!9931 (left!24317 Conc!9931) (right!24647 Conc!9931) (csize!20092 Int) (cheight!10142 Int)) (Leaf!15124 (xs!13038 IArray!19867) (csize!20093 Int)) (Empty!9931) )
))
(declare-datatypes ((BalanceConc!19476 0))(
  ( (BalanceConc!19477 (c!445212 Conc!9931)) )
))
(declare-fun input!5495 () BalanceConc!19476)

(declare-datatypes ((Regex!8049 0))(
  ( (ElementMatch!8049 (c!445213 C!16256)) (Concat!13137 (regOne!16610 Regex!8049) (regTwo!16610 Regex!8049)) (EmptyExpr!8049) (Star!8049 (reg!8378 Regex!8049)) (EmptyLang!8049) (Union!8049 (regOne!16611 Regex!8049) (regTwo!16611 Regex!8049)) )
))
(declare-datatypes ((List!31943 0))(
  ( (Nil!31843) (Cons!31843 (h!37263 Regex!8049) (t!228047 List!31943)) )
))
(declare-datatypes ((Context!4534 0))(
  ( (Context!4535 (exprs!2767 List!31943)) )
))
(declare-datatypes ((tuple2!31812 0))(
  ( (tuple2!31813 (_1!18668 Context!4534) (_2!18668 C!16256)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31814 0))(
  ( (tuple2!31815 (_1!18669 tuple2!31812) (_2!18669 (InoxSet Context!4534))) )
))
(declare-datatypes ((List!31944 0))(
  ( (Nil!31844) (Cons!31844 (h!37264 tuple2!31814) (t!228048 List!31944)) )
))
(declare-datatypes ((Hashable!3622 0))(
  ( (HashableExt!3621 (__x!20768 Int)) )
))
(declare-datatypes ((array!13189 0))(
  ( (array!13190 (arr!5888 (Array (_ BitVec 32) List!31944)) (size!24600 (_ BitVec 32))) )
))
(declare-datatypes ((array!13191 0))(
  ( (array!13192 (arr!5889 (Array (_ BitVec 32) (_ BitVec 64))) (size!24601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7412 0))(
  ( (LongMapFixedSize!7413 (defaultEntry!4091 Int) (mask!9467 (_ BitVec 32)) (extraKeys!3955 (_ BitVec 32)) (zeroValue!3965 List!31944) (minValue!3965 List!31944) (_size!7455 (_ BitVec 32)) (_keys!4006 array!13191) (_values!3987 array!13189) (_vacant!3767 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14633 0))(
  ( (Cell!14634 (v!33452 LongMapFixedSize!7412)) )
))
(declare-datatypes ((MutLongMap!3706 0))(
  ( (LongMap!3706 (underlying!7615 Cell!14633)) (MutLongMapExt!3705 (__x!20769 Int)) )
))
(declare-datatypes ((Cell!14635 0))(
  ( (Cell!14636 (v!33453 MutLongMap!3706)) )
))
(declare-datatypes ((MutableMap!3612 0))(
  ( (MutableMapExt!3611 (__x!20770 Int)) (HashMap!3612 (underlying!7616 Cell!14635) (hashF!5654 Hashable!3622) (_size!7456 (_ BitVec 32)) (defaultValue!3783 Int)) )
))
(declare-datatypes ((CacheUp!2318 0))(
  ( (CacheUp!2319 (cache!3755 MutableMap!3612)) )
))
(declare-datatypes ((tuple3!4584 0))(
  ( (tuple3!4585 (_1!18670 Regex!8049) (_2!18670 Context!4534) (_3!2762 C!16256)) )
))
(declare-datatypes ((tuple2!31816 0))(
  ( (tuple2!31817 (_1!18671 tuple3!4584) (_2!18671 (InoxSet Context!4534))) )
))
(declare-datatypes ((List!31945 0))(
  ( (Nil!31845) (Cons!31845 (h!37265 tuple2!31816) (t!228049 List!31945)) )
))
(declare-datatypes ((array!13193 0))(
  ( (array!13194 (arr!5890 (Array (_ BitVec 32) List!31945)) (size!24602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7414 0))(
  ( (LongMapFixedSize!7415 (defaultEntry!4092 Int) (mask!9468 (_ BitVec 32)) (extraKeys!3956 (_ BitVec 32)) (zeroValue!3966 List!31945) (minValue!3966 List!31945) (_size!7457 (_ BitVec 32)) (_keys!4007 array!13191) (_values!3988 array!13193) (_vacant!3768 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14637 0))(
  ( (Cell!14638 (v!33454 LongMapFixedSize!7414)) )
))
(declare-datatypes ((MutLongMap!3707 0))(
  ( (LongMap!3707 (underlying!7617 Cell!14637)) (MutLongMapExt!3706 (__x!20771 Int)) )
))
(declare-datatypes ((Cell!14639 0))(
  ( (Cell!14640 (v!33455 MutLongMap!3707)) )
))
(declare-datatypes ((Hashable!3623 0))(
  ( (HashableExt!3622 (__x!20772 Int)) )
))
(declare-datatypes ((MutableMap!3613 0))(
  ( (MutableMapExt!3612 (__x!20773 Int)) (HashMap!3613 (underlying!7618 Cell!14639) (hashF!5655 Hashable!3623) (_size!7458 (_ BitVec 32)) (defaultValue!3784 Int)) )
))
(declare-datatypes ((CacheDown!2438 0))(
  ( (CacheDown!2439 (cache!3756 MutableMap!3613)) )
))
(declare-datatypes ((tuple3!4586 0))(
  ( (tuple3!4587 (_1!18672 (InoxSet Context!4534)) (_2!18672 CacheUp!2318) (_3!2763 CacheDown!2438)) )
))
(declare-fun lt!973404 () tuple3!4586)

(declare-fun lt!973419 () Int)

(declare-fun lt!973411 () List!31942)

(declare-datatypes ((tuple3!4588 0))(
  ( (tuple3!4589 (_1!18673 Int) (_2!18673 CacheUp!2318) (_3!2764 CacheDown!2438)) )
))
(declare-fun call!177666 () tuple3!4588)

(declare-fun lt!973396 () List!31942)

(declare-fun lt!973416 () tuple3!4586)

(declare-fun findLongestMatchInnerZipperFastMem!5 (CacheUp!2318 CacheDown!2438 (InoxSet Context!4534) List!31942 Int List!31942 BalanceConc!19476 Int) tuple3!4588)

(assert (=> bm!177659 (= call!177666 (findLongestMatchInnerZipperFastMem!5 (ite c!445208 (_2!18672 lt!973416) (_2!18672 lt!973404)) (ite c!445208 (_3!2763 lt!973416) (_3!2763 lt!973404)) (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419))))

(declare-fun b!2751731 () Bool)

(declare-fun res!1153688 () Bool)

(declare-fun e!1734843 () Bool)

(assert (=> b!2751731 (=> (not res!1153688) (not e!1734843))))

(declare-fun lt!973399 () tuple3!4588)

(declare-fun valid!2874 (CacheDown!2438) Bool)

(assert (=> b!2751731 (= res!1153688 (valid!2874 (_3!2764 lt!973399)))))

(declare-fun b!2751732 () Bool)

(declare-fun e!1734853 () Bool)

(declare-fun e!1734848 () Bool)

(assert (=> b!2751732 (= e!1734853 e!1734848)))

(declare-fun bm!177660 () Bool)

(declare-fun call!177663 () Bool)

(declare-fun z!3597 () (InoxSet Context!4534))

(declare-fun nullableZipper!604 ((InoxSet Context!4534)) Bool)

(assert (=> bm!177660 (= call!177663 (nullableZipper!604 z!3597))))

(declare-fun b!2751733 () Bool)

(declare-datatypes ((Unit!45601 0))(
  ( (Unit!45602) )
))
(declare-fun e!1734861 () Unit!45601)

(declare-fun Unit!45603 () Unit!45601)

(assert (=> b!2751733 (= e!1734861 Unit!45603)))

(declare-fun lt!973406 () Unit!45601)

(declare-fun call!177667 () Unit!45601)

(assert (=> b!2751733 (= lt!973406 call!177667)))

(assert (=> b!2751733 call!177671))

(declare-fun lt!973413 () Unit!45601)

(declare-fun call!177670 () Unit!45601)

(assert (=> b!2751733 (= lt!973413 call!177670)))

(assert (=> b!2751733 false))

(declare-fun bm!177661 () Bool)

(declare-fun lemmaIsPrefixRefl!1652 (List!31942 List!31942) Unit!45601)

(assert (=> bm!177661 (= call!177667 (lemmaIsPrefixRefl!1652 lt!973415 lt!973415))))

(declare-fun b!2751734 () Bool)

(declare-fun e!1734866 () Bool)

(declare-fun e!1734842 () Bool)

(assert (=> b!2751734 (= e!1734866 e!1734842)))

(declare-fun bm!177662 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!433 (List!31942 List!31942 List!31942) Unit!45601)

(assert (=> bm!177662 (= call!177670 (lemmaIsPrefixSameLengthThenSameList!433 lt!973415 Nil!31842 lt!973415))))

(declare-fun b!2751735 () Bool)

(declare-datatypes ((tuple3!4590 0))(
  ( (tuple3!4591 (_1!18674 Int) (_2!18674 CacheDown!2438) (_3!2765 CacheUp!2318)) )
))
(declare-fun e!1734860 () tuple3!4590)

(declare-fun lt!973394 () tuple3!4588)

(assert (=> b!2751735 (= e!1734860 (tuple3!4591 (ite (= (_1!18673 lt!973394) 0) 0 (_1!18673 lt!973394)) (_3!2764 lt!973394) (_2!18673 lt!973394)))))

(declare-fun call!177668 () tuple3!4586)

(assert (=> b!2751735 (= lt!973416 call!177668)))

(assert (=> b!2751735 (= lt!973394 call!177666)))

(declare-fun res!1153690 () Bool)

(declare-fun call!177669 () Bool)

(assert (=> b!2751735 (= res!1153690 call!177669)))

(declare-fun e!1734865 () Bool)

(assert (=> b!2751735 (=> (not res!1153690) (not e!1734865))))

(assert (=> b!2751735 e!1734865))

(declare-fun b!2751736 () Bool)

(declare-fun e!1734856 () Bool)

(declare-fun e!1734841 () Bool)

(assert (=> b!2751736 (= e!1734856 e!1734841)))

(declare-fun tp!869335 () Bool)

(declare-fun e!1734844 () Bool)

(declare-fun tp!869332 () Bool)

(declare-fun cacheUp!820 () CacheUp!2318)

(declare-fun array_inv!4207 (array!13191) Bool)

(declare-fun array_inv!4208 (array!13189) Bool)

(assert (=> b!2751737 (= e!1734841 (and tp!869323 tp!869332 tp!869335 (array_inv!4207 (_keys!4006 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) (array_inv!4208 (_values!3987 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) e!1734844))))

(declare-fun b!2751738 () Bool)

(declare-fun lt!973393 () tuple3!4588)

(assert (=> b!2751738 (= e!1734860 (tuple3!4591 (_1!18673 lt!973393) (_3!2764 lt!973393) (_2!18673 lt!973393)))))

(assert (=> b!2751738 (= lt!973404 call!177668)))

(assert (=> b!2751738 (= lt!973393 call!177666)))

(declare-fun res!1153682 () Bool)

(assert (=> b!2751738 (= res!1153682 call!177669)))

(declare-fun e!1734855 () Bool)

(assert (=> b!2751738 (=> (not res!1153682) (not e!1734855))))

(assert (=> b!2751738 e!1734855))

(declare-fun b!2751739 () Bool)

(declare-fun e!1734857 () Bool)

(assert (=> b!2751739 (= e!1734857 e!1734856)))

(declare-fun bm!177663 () Bool)

(declare-fun lt!973407 () tuple3!4588)

(declare-fun lt!973392 () C!16256)

(declare-fun derivationStepZipperMem!72 ((InoxSet Context!4534) C!16256 CacheUp!2318 CacheDown!2438) tuple3!4586)

(assert (=> bm!177663 (= call!177668 (derivationStepZipperMem!72 z!3597 lt!973392 (_2!18673 lt!973407) (_3!2764 lt!973407)))))

(declare-fun b!2751740 () Bool)

(declare-fun e!1734862 () Bool)

(declare-fun findLongestMatchInnerZipperFast!7 ((InoxSet Context!4534) List!31942 Int List!31942 BalanceConc!19476 Int) Int)

(assert (=> b!2751740 (= e!1734862 (= (_1!18673 lt!973407) (findLongestMatchInnerZipperFast!7 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419)))))

(declare-fun b!2751741 () Bool)

(declare-fun e!1734849 () Bool)

(declare-fun tp!869336 () Bool)

(declare-fun mapRes!16855 () Bool)

(assert (=> b!2751741 (= e!1734849 (and tp!869336 mapRes!16855))))

(declare-fun condMapEmpty!16856 () Bool)

(declare-fun cacheDown!939 () CacheDown!2438)

(declare-fun mapDefault!16855 () List!31945)

(assert (=> b!2751741 (= condMapEmpty!16856 (= (arr!5890 (_values!3988 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31945)) mapDefault!16855)))))

(declare-fun b!2751742 () Bool)

(declare-fun e!1734846 () Bool)

(declare-fun size!24603 (List!31942) Int)

(assert (=> b!2751742 (= e!1734846 (= 0 (size!24603 Nil!31842)))))

(declare-fun b!2751743 () Bool)

(declare-fun e!1734864 () Bool)

(declare-fun e!1734867 () Bool)

(assert (=> b!2751743 (= e!1734864 e!1734867)))

(declare-fun b!2751744 () Bool)

(declare-fun e!1734851 () Bool)

(declare-fun lt!973400 () MutLongMap!3706)

(get-info :version)

(assert (=> b!2751744 (= e!1734851 (and e!1734857 ((_ is LongMap!3706) lt!973400)))))

(assert (=> b!2751744 (= lt!973400 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))

(declare-fun b!2751745 () Bool)

(assert (=> b!2751745 (= e!1734843 (= (_1!18673 lt!973399) (findLongestMatchInnerZipperFast!7 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419)))))

(declare-fun b!2751746 () Bool)

(assert (=> b!2751746 (= c!445208 call!177663)))

(declare-fun ++!7885 (List!31942 List!31942) List!31942)

(assert (=> b!2751746 (= (++!7885 lt!973411 lt!973396) lt!973415)))

(assert (=> b!2751746 (= lt!973411 (++!7885 Nil!31842 (Cons!31842 lt!973392 Nil!31842)))))

(declare-fun lt!973409 () Unit!45601)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!842 (List!31942 C!16256 List!31942 List!31942) Unit!45601)

(assert (=> b!2751746 (= lt!973409 (lemmaMoveElementToOtherListKeepsConcatEq!842 Nil!31842 lt!973392 lt!973396 lt!973415))))

(declare-fun tail!4359 (List!31942) List!31942)

(assert (=> b!2751746 (= lt!973396 (tail!4359 lt!973415))))

(declare-fun apply!7436 (BalanceConc!19476 Int) C!16256)

(assert (=> b!2751746 (= lt!973392 (apply!7436 input!5495 0))))

(declare-fun lt!973414 () List!31942)

(declare-fun head!6121 (List!31942) C!16256)

(assert (=> b!2751746 (isPrefix!2525 (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842)) lt!973415)))

(declare-fun lt!973390 () Unit!45601)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!430 (List!31942 List!31942) Unit!45601)

(assert (=> b!2751746 (= lt!973390 (lemmaAddHeadSuffixToPrefixStillPrefix!430 Nil!31842 lt!973415))))

(declare-fun lt!973421 () Unit!45601)

(assert (=> b!2751746 (= lt!973421 e!1734861)))

(declare-fun c!445209 () Bool)

(declare-fun lt!973417 () Int)

(assert (=> b!2751746 (= c!445209 (= lt!973417 lt!973419))))

(assert (=> b!2751746 (<= lt!973417 (size!24603 lt!973415))))

(assert (=> b!2751746 (= lt!973417 (size!24603 Nil!31842))))

(declare-fun lt!973408 () Unit!45601)

(declare-fun lemmaIsPrefixThenSmallerEqSize!233 (List!31942 List!31942) Unit!45601)

(assert (=> b!2751746 (= lt!973408 (lemmaIsPrefixThenSmallerEqSize!233 Nil!31842 lt!973415))))

(declare-fun drop!1680 (List!31942 Int) List!31942)

(declare-fun apply!7437 (List!31942 Int) C!16256)

(assert (=> b!2751746 (= (head!6121 (drop!1680 lt!973415 0)) (apply!7437 lt!973415 0))))

(declare-fun lt!973418 () Unit!45601)

(declare-fun lemmaDropApply!886 (List!31942 Int) Unit!45601)

(assert (=> b!2751746 (= lt!973418 (lemmaDropApply!886 lt!973415 0))))

(declare-fun lt!973410 () List!31942)

(declare-fun lt!973405 () List!31942)

(assert (=> b!2751746 (and (= lt!973410 Nil!31842) (= lt!973405 lt!973415))))

(declare-fun lt!973389 () Unit!45601)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!312 (List!31942 List!31942 List!31942 List!31942) Unit!45601)

(assert (=> b!2751746 (= lt!973389 (lemmaConcatSameAndSameSizesThenSameLists!312 lt!973410 lt!973405 Nil!31842 lt!973415))))

(declare-datatypes ((tuple2!31818 0))(
  ( (tuple2!31819 (_1!18675 BalanceConc!19476) (_2!18675 BalanceConc!19476)) )
))
(declare-fun lt!973391 () tuple2!31818)

(declare-fun list!12031 (BalanceConc!19476) List!31942)

(assert (=> b!2751746 (= lt!973405 (list!12031 (_2!18675 lt!973391)))))

(assert (=> b!2751746 (= lt!973410 (list!12031 (_1!18675 lt!973391)))))

(declare-fun splitAt!76 (BalanceConc!19476 Int) tuple2!31818)

(assert (=> b!2751746 (= lt!973391 (splitAt!76 input!5495 0))))

(declare-fun e!1734854 () tuple3!4590)

(assert (=> b!2751746 (= e!1734854 e!1734860)))

(assert (=> b!2751747 (= e!1734867 (and e!1734851 tp!869331))))

(declare-fun b!2751748 () Bool)

(declare-fun res!1153683 () Bool)

(declare-fun e!1734845 () Bool)

(assert (=> b!2751748 (=> (not res!1153683) (not e!1734845))))

(assert (=> b!2751748 (= res!1153683 (valid!2874 cacheDown!939))))

(declare-fun b!2751749 () Bool)

(declare-fun Unit!45604 () Unit!45601)

(assert (=> b!2751749 (= e!1734861 Unit!45604)))

(declare-fun b!2751750 () Bool)

(declare-fun res!1153691 () Bool)

(declare-fun call!177664 () Bool)

(assert (=> b!2751750 (= res!1153691 call!177664)))

(assert (=> b!2751750 (=> (not res!1153691) (not e!1734855))))

(declare-fun b!2751751 () Bool)

(declare-fun res!1153685 () Bool)

(assert (=> b!2751751 (= res!1153685 call!177664)))

(assert (=> b!2751751 (=> (not res!1153685) (not e!1734865))))

(declare-fun setIsEmpty!21969 () Bool)

(declare-fun setRes!21969 () Bool)

(assert (=> setIsEmpty!21969 setRes!21969))

(declare-fun b!2751752 () Bool)

(declare-fun e!1734859 () Bool)

(assert (=> b!2751752 (= e!1734859 e!1734853)))

(declare-fun mapNonEmpty!16855 () Bool)

(declare-fun tp!869328 () Bool)

(declare-fun tp!869333 () Bool)

(assert (=> mapNonEmpty!16855 (= mapRes!16855 (and tp!869328 tp!869333))))

(declare-fun mapRest!16855 () (Array (_ BitVec 32) List!31945))

(declare-fun mapKey!16856 () (_ BitVec 32))

(declare-fun mapValue!16855 () List!31945)

(assert (=> mapNonEmpty!16855 (= (arr!5890 (_values!3988 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) (store mapRest!16855 mapKey!16856 mapValue!16855))))

(declare-fun b!2751753 () Bool)

(declare-fun e!1734847 () Bool)

(declare-fun tp!869329 () Bool)

(declare-fun inv!43234 (Conc!9931) Bool)

(assert (=> b!2751753 (= e!1734847 (and (inv!43234 (c!445212 input!5495)) tp!869329))))

(declare-fun res!1153686 () Bool)

(assert (=> start!266720 (=> (not res!1153686) (not e!1734845))))

(declare-fun valid!2875 (CacheUp!2318) Bool)

(assert (=> start!266720 (= res!1153686 (valid!2875 cacheUp!820))))

(assert (=> start!266720 e!1734845))

(declare-fun inv!43235 (CacheUp!2318) Bool)

(assert (=> start!266720 (and (inv!43235 cacheUp!820) e!1734864)))

(declare-fun inv!43236 (CacheDown!2438) Bool)

(assert (=> start!266720 (and (inv!43236 cacheDown!939) e!1734866)))

(declare-fun condSetEmpty!21969 () Bool)

(assert (=> start!266720 (= condSetEmpty!21969 (= z!3597 ((as const (Array Context!4534 Bool)) false)))))

(assert (=> start!266720 setRes!21969))

(declare-fun inv!43237 (BalanceConc!19476) Bool)

(assert (=> start!266720 (and (inv!43237 input!5495) e!1734847)))

(declare-fun bm!177664 () Bool)

(assert (=> bm!177664 (= call!177664 (valid!2874 (ite c!445208 (_3!2764 lt!973394) (_3!2764 lt!973393))))))

(declare-fun tp!869321 () Bool)

(declare-fun tp!869324 () Bool)

(declare-fun array_inv!4209 (array!13193) Bool)

(assert (=> b!2751754 (= e!1734848 (and tp!869326 tp!869324 tp!869321 (array_inv!4207 (_keys!4007 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) (array_inv!4209 (_values!3988 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) e!1734849))))

(declare-fun mapNonEmpty!16856 () Bool)

(declare-fun mapRes!16856 () Bool)

(declare-fun tp!869322 () Bool)

(declare-fun tp!869327 () Bool)

(assert (=> mapNonEmpty!16856 (= mapRes!16856 (and tp!869322 tp!869327))))

(declare-fun mapRest!16856 () (Array (_ BitVec 32) List!31944))

(declare-fun mapValue!16856 () List!31944)

(declare-fun mapKey!16855 () (_ BitVec 32))

(assert (=> mapNonEmpty!16856 (= (arr!5888 (_values!3987 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) (store mapRest!16856 mapKey!16855 mapValue!16856))))

(declare-fun call!177665 () Int)

(declare-fun bm!177665 () Bool)

(assert (=> bm!177665 (= call!177665 (findLongestMatchInnerZipperFast!7 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419))))

(declare-fun b!2751755 () Bool)

(assert (=> b!2751755 (= e!1734855 (= (_1!18673 lt!973393) call!177665))))

(declare-fun b!2751756 () Bool)

(declare-fun lt!973395 () Bool)

(assert (=> b!2751756 (= lt!973395 call!177663)))

(assert (=> b!2751756 (= lt!973415 Nil!31842)))

(declare-fun lt!973401 () Unit!45601)

(assert (=> b!2751756 (= lt!973401 call!177670)))

(assert (=> b!2751756 call!177671))

(declare-fun lt!973412 () Unit!45601)

(assert (=> b!2751756 (= lt!973412 call!177667)))

(assert (=> b!2751756 (= e!1734854 (tuple3!4591 0 (_3!2764 lt!973407) (_2!18673 lt!973407)))))

(declare-fun b!2751757 () Bool)

(assert (=> b!2751757 (= e!1734865 (= (_1!18673 lt!973394) call!177665))))

(declare-fun mapIsEmpty!16855 () Bool)

(assert (=> mapIsEmpty!16855 mapRes!16855))

(declare-fun bm!177666 () Bool)

(assert (=> bm!177666 (= call!177669 (valid!2875 (ite c!445208 (_2!18673 lt!973394) (_2!18673 lt!973393))))))

(declare-fun b!2751758 () Bool)

(declare-fun res!1153689 () Bool)

(assert (=> b!2751758 (=> (not res!1153689) (not e!1734862))))

(assert (=> b!2751758 (= res!1153689 (valid!2874 (_3!2764 lt!973407)))))

(declare-fun b!2751759 () Bool)

(declare-fun e!1734868 () tuple3!4590)

(assert (=> b!2751759 (= e!1734868 (tuple3!4591 0 (_3!2764 lt!973407) (_2!18673 lt!973407)))))

(declare-fun b!2751760 () Bool)

(declare-fun e!1734850 () Bool)

(declare-fun lt!973420 () MutLongMap!3707)

(assert (=> b!2751760 (= e!1734850 (and e!1734859 ((_ is LongMap!3707) lt!973420)))))

(assert (=> b!2751760 (= lt!973420 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))

(declare-fun b!2751761 () Bool)

(assert (=> b!2751761 (= e!1734845 (not e!1734846))))

(declare-fun res!1153687 () Bool)

(assert (=> b!2751761 (=> res!1153687 e!1734846)))

(declare-fun lt!973402 () List!31942)

(assert (=> b!2751761 (= res!1153687 (not (= lt!973402 lt!973415)))))

(declare-fun lt!973397 () tuple3!4590)

(assert (=> b!2751761 (= lt!973399 (tuple3!4589 (_1!18674 lt!973397) (_3!2765 lt!973397) (_2!18674 lt!973397)))))

(assert (=> b!2751761 (= lt!973397 e!1734868)))

(declare-fun c!445210 () Bool)

(declare-fun lostCauseZipper!415 ((InoxSet Context!4534)) Bool)

(assert (=> b!2751761 (= c!445210 (lostCauseZipper!415 z!3597))))

(assert (=> b!2751761 (and (= lt!973415 lt!973414) (= lt!973414 lt!973415))))

(declare-fun lt!973403 () Unit!45601)

(declare-fun lemmaSamePrefixThenSameSuffix!1113 (List!31942 List!31942 List!31942 List!31942 List!31942) Unit!45601)

(assert (=> b!2751761 (= lt!973403 (lemmaSamePrefixThenSameSuffix!1113 Nil!31842 lt!973415 Nil!31842 lt!973414 lt!973415))))

(declare-fun getSuffix!1211 (List!31942 List!31942) List!31942)

(assert (=> b!2751761 (= lt!973414 (getSuffix!1211 lt!973415 Nil!31842))))

(assert (=> b!2751761 (isPrefix!2525 Nil!31842 lt!973402)))

(assert (=> b!2751761 (= lt!973402 (++!7885 Nil!31842 lt!973415))))

(declare-fun lt!973398 () Unit!45601)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1639 (List!31942 List!31942) Unit!45601)

(assert (=> b!2751761 (= lt!973398 (lemmaConcatTwoListThenFirstIsPrefix!1639 Nil!31842 lt!973415))))

(assert (=> b!2751761 e!1734843))

(declare-fun res!1153684 () Bool)

(assert (=> b!2751761 (=> (not res!1153684) (not e!1734843))))

(assert (=> b!2751761 (= res!1153684 (valid!2875 (_2!18673 lt!973399)))))

(assert (=> b!2751761 (= lt!973399 (findLongestMatchInnerZipperFastMem!5 (_2!18673 lt!973407) (_3!2764 lt!973407) z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419))))

(assert (=> b!2751761 e!1734862))

(declare-fun res!1153692 () Bool)

(assert (=> b!2751761 (=> (not res!1153692) (not e!1734862))))

(assert (=> b!2751761 (= res!1153692 (valid!2875 (_2!18673 lt!973407)))))

(assert (=> b!2751761 (= lt!973407 (findLongestMatchInnerZipperFastMem!5 cacheUp!820 cacheDown!939 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419))))

(declare-fun size!24604 (BalanceConc!19476) Int)

(assert (=> b!2751761 (= lt!973419 (size!24604 input!5495))))

(assert (=> b!2751761 (= lt!973415 (list!12031 input!5495))))

(declare-fun b!2751762 () Bool)

(assert (=> b!2751762 (= e!1734868 e!1734854)))

(declare-fun c!445211 () Bool)

(assert (=> b!2751762 (= c!445211 (= 0 lt!973419))))

(declare-fun b!2751763 () Bool)

(declare-fun e!1734852 () Bool)

(declare-fun tp!869330 () Bool)

(assert (=> b!2751763 (= e!1734852 tp!869330)))

(declare-fun setElem!21969 () Context!4534)

(declare-fun tp!869325 () Bool)

(declare-fun setNonEmpty!21969 () Bool)

(declare-fun inv!43238 (Context!4534) Bool)

(assert (=> setNonEmpty!21969 (= setRes!21969 (and tp!869325 (inv!43238 setElem!21969) e!1734852))))

(declare-fun setRest!21969 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21969 (= z!3597 ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21969 true) setRest!21969))))

(assert (=> b!2751764 (= e!1734842 (and e!1734850 tp!869334))))

(declare-fun mapIsEmpty!16856 () Bool)

(assert (=> mapIsEmpty!16856 mapRes!16856))

(declare-fun b!2751765 () Bool)

(declare-fun tp!869337 () Bool)

(assert (=> b!2751765 (= e!1734844 (and tp!869337 mapRes!16856))))

(declare-fun condMapEmpty!16855 () Bool)

(declare-fun mapDefault!16856 () List!31944)

(assert (=> b!2751765 (= condMapEmpty!16855 (= (arr!5888 (_values!3987 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31944)) mapDefault!16856)))))

(assert (= (and start!266720 res!1153686) b!2751748))

(assert (= (and b!2751748 res!1153683) b!2751761))

(assert (= (and b!2751761 res!1153692) b!2751758))

(assert (= (and b!2751758 res!1153689) b!2751740))

(assert (= (and b!2751761 res!1153684) b!2751731))

(assert (= (and b!2751731 res!1153688) b!2751745))

(assert (= (and b!2751761 c!445210) b!2751759))

(assert (= (and b!2751761 (not c!445210)) b!2751762))

(assert (= (and b!2751762 c!445211) b!2751756))

(assert (= (and b!2751762 (not c!445211)) b!2751746))

(assert (= (and b!2751746 c!445209) b!2751733))

(assert (= (and b!2751746 (not c!445209)) b!2751749))

(assert (= (and b!2751746 c!445208) b!2751735))

(assert (= (and b!2751746 (not c!445208)) b!2751738))

(assert (= (and b!2751735 res!1153690) b!2751751))

(assert (= (and b!2751751 res!1153685) b!2751757))

(assert (= (and b!2751738 res!1153682) b!2751750))

(assert (= (and b!2751750 res!1153691) b!2751755))

(assert (= (or b!2751735 b!2751738) bm!177663))

(assert (= (or b!2751757 b!2751755) bm!177665))

(assert (= (or b!2751751 b!2751750) bm!177664))

(assert (= (or b!2751735 b!2751738) bm!177659))

(assert (= (or b!2751735 b!2751738) bm!177666))

(assert (= (or b!2751756 b!2751746) bm!177660))

(assert (= (or b!2751756 b!2751733) bm!177661))

(assert (= (or b!2751756 b!2751733) bm!177662))

(assert (= (or b!2751756 b!2751733) bm!177658))

(assert (= (and b!2751761 (not res!1153687)) b!2751742))

(assert (= (and b!2751765 condMapEmpty!16855) mapIsEmpty!16856))

(assert (= (and b!2751765 (not condMapEmpty!16855)) mapNonEmpty!16856))

(assert (= b!2751737 b!2751765))

(assert (= b!2751736 b!2751737))

(assert (= b!2751739 b!2751736))

(assert (= (and b!2751744 ((_ is LongMap!3706) (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))) b!2751739))

(assert (= b!2751747 b!2751744))

(assert (= (and b!2751743 ((_ is HashMap!3612) (cache!3755 cacheUp!820))) b!2751747))

(assert (= start!266720 b!2751743))

(assert (= (and b!2751741 condMapEmpty!16856) mapIsEmpty!16855))

(assert (= (and b!2751741 (not condMapEmpty!16856)) mapNonEmpty!16855))

(assert (= b!2751754 b!2751741))

(assert (= b!2751732 b!2751754))

(assert (= b!2751752 b!2751732))

(assert (= (and b!2751760 ((_ is LongMap!3707) (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))) b!2751752))

(assert (= b!2751764 b!2751760))

(assert (= (and b!2751734 ((_ is HashMap!3613) (cache!3756 cacheDown!939))) b!2751764))

(assert (= start!266720 b!2751734))

(assert (= (and start!266720 condSetEmpty!21969) setIsEmpty!21969))

(assert (= (and start!266720 (not condSetEmpty!21969)) setNonEmpty!21969))

(assert (= setNonEmpty!21969 b!2751763))

(assert (= start!266720 b!2751753))

(declare-fun m!3166601 () Bool)

(assert (=> bm!177658 m!3166601))

(declare-fun m!3166603 () Bool)

(assert (=> b!2751742 m!3166603))

(declare-fun m!3166605 () Bool)

(assert (=> bm!177666 m!3166605))

(declare-fun m!3166607 () Bool)

(assert (=> b!2751748 m!3166607))

(declare-fun m!3166609 () Bool)

(assert (=> mapNonEmpty!16855 m!3166609))

(declare-fun m!3166611 () Bool)

(assert (=> bm!177661 m!3166611))

(declare-fun m!3166613 () Bool)

(assert (=> b!2751745 m!3166613))

(declare-fun m!3166615 () Bool)

(assert (=> b!2751737 m!3166615))

(declare-fun m!3166617 () Bool)

(assert (=> b!2751737 m!3166617))

(declare-fun m!3166619 () Bool)

(assert (=> mapNonEmpty!16856 m!3166619))

(declare-fun m!3166621 () Bool)

(assert (=> bm!177663 m!3166621))

(declare-fun m!3166623 () Bool)

(assert (=> b!2751731 m!3166623))

(declare-fun m!3166625 () Bool)

(assert (=> bm!177662 m!3166625))

(declare-fun m!3166627 () Bool)

(assert (=> bm!177660 m!3166627))

(declare-fun m!3166629 () Bool)

(assert (=> b!2751761 m!3166629))

(declare-fun m!3166631 () Bool)

(assert (=> b!2751761 m!3166631))

(declare-fun m!3166633 () Bool)

(assert (=> b!2751761 m!3166633))

(declare-fun m!3166635 () Bool)

(assert (=> b!2751761 m!3166635))

(declare-fun m!3166637 () Bool)

(assert (=> b!2751761 m!3166637))

(declare-fun m!3166639 () Bool)

(assert (=> b!2751761 m!3166639))

(declare-fun m!3166641 () Bool)

(assert (=> b!2751761 m!3166641))

(declare-fun m!3166643 () Bool)

(assert (=> b!2751761 m!3166643))

(declare-fun m!3166645 () Bool)

(assert (=> b!2751761 m!3166645))

(declare-fun m!3166647 () Bool)

(assert (=> b!2751761 m!3166647))

(declare-fun m!3166649 () Bool)

(assert (=> b!2751761 m!3166649))

(declare-fun m!3166651 () Bool)

(assert (=> b!2751761 m!3166651))

(assert (=> b!2751740 m!3166613))

(declare-fun m!3166653 () Bool)

(assert (=> bm!177664 m!3166653))

(declare-fun m!3166655 () Bool)

(assert (=> bm!177659 m!3166655))

(declare-fun m!3166657 () Bool)

(assert (=> bm!177665 m!3166657))

(declare-fun m!3166659 () Bool)

(assert (=> setNonEmpty!21969 m!3166659))

(declare-fun m!3166661 () Bool)

(assert (=> b!2751753 m!3166661))

(declare-fun m!3166663 () Bool)

(assert (=> b!2751746 m!3166663))

(declare-fun m!3166665 () Bool)

(assert (=> b!2751746 m!3166665))

(declare-fun m!3166667 () Bool)

(assert (=> b!2751746 m!3166667))

(declare-fun m!3166669 () Bool)

(assert (=> b!2751746 m!3166669))

(declare-fun m!3166671 () Bool)

(assert (=> b!2751746 m!3166671))

(declare-fun m!3166673 () Bool)

(assert (=> b!2751746 m!3166673))

(declare-fun m!3166675 () Bool)

(assert (=> b!2751746 m!3166675))

(assert (=> b!2751746 m!3166603))

(declare-fun m!3166677 () Bool)

(assert (=> b!2751746 m!3166677))

(declare-fun m!3166679 () Bool)

(assert (=> b!2751746 m!3166679))

(declare-fun m!3166681 () Bool)

(assert (=> b!2751746 m!3166681))

(declare-fun m!3166683 () Bool)

(assert (=> b!2751746 m!3166683))

(declare-fun m!3166685 () Bool)

(assert (=> b!2751746 m!3166685))

(declare-fun m!3166687 () Bool)

(assert (=> b!2751746 m!3166687))

(assert (=> b!2751746 m!3166663))

(declare-fun m!3166689 () Bool)

(assert (=> b!2751746 m!3166689))

(declare-fun m!3166691 () Bool)

(assert (=> b!2751746 m!3166691))

(declare-fun m!3166693 () Bool)

(assert (=> b!2751746 m!3166693))

(assert (=> b!2751746 m!3166675))

(declare-fun m!3166695 () Bool)

(assert (=> b!2751746 m!3166695))

(declare-fun m!3166697 () Bool)

(assert (=> b!2751746 m!3166697))

(declare-fun m!3166699 () Bool)

(assert (=> b!2751746 m!3166699))

(declare-fun m!3166701 () Bool)

(assert (=> b!2751758 m!3166701))

(declare-fun m!3166703 () Bool)

(assert (=> b!2751754 m!3166703))

(declare-fun m!3166705 () Bool)

(assert (=> b!2751754 m!3166705))

(declare-fun m!3166707 () Bool)

(assert (=> start!266720 m!3166707))

(declare-fun m!3166709 () Bool)

(assert (=> start!266720 m!3166709))

(declare-fun m!3166711 () Bool)

(assert (=> start!266720 m!3166711))

(declare-fun m!3166713 () Bool)

(assert (=> start!266720 m!3166713))

(check-sat (not bm!177664) (not setNonEmpty!21969) (not b!2751741) (not bm!177661) (not start!266720) (not bm!177663) (not b!2751753) (not bm!177665) b_and!202599 b_and!202605 (not b!2751740) (not b!2751731) (not b!2751758) (not b!2751761) (not bm!177659) (not b!2751745) (not b!2751742) (not bm!177662) b_and!202603 (not b_next!78569) b_and!202601 (not mapNonEmpty!16855) (not bm!177660) (not b_next!78565) (not b!2751737) (not b!2751765) (not b!2751754) (not bm!177666) (not b!2751748) (not b_next!78571) (not b_next!78567) (not b!2751763) (not mapNonEmpty!16856) (not b!2751746) (not bm!177658))
(check-sat b_and!202603 (not b_next!78565) b_and!202599 b_and!202605 (not b_next!78571) (not b_next!78567) (not b_next!78569) b_and!202601)
(get-model)

(declare-fun b!2751777 () Bool)

(declare-fun e!1734876 () Bool)

(assert (=> b!2751777 (= e!1734876 (>= (size!24603 lt!973415) (size!24603 lt!973415)))))

(declare-fun b!2751775 () Bool)

(declare-fun res!1153702 () Bool)

(declare-fun e!1734877 () Bool)

(assert (=> b!2751775 (=> (not res!1153702) (not e!1734877))))

(assert (=> b!2751775 (= res!1153702 (= (head!6121 lt!973415) (head!6121 lt!973415)))))

(declare-fun b!2751776 () Bool)

(assert (=> b!2751776 (= e!1734877 (isPrefix!2525 (tail!4359 lt!973415) (tail!4359 lt!973415)))))

(declare-fun d!796569 () Bool)

(assert (=> d!796569 e!1734876))

(declare-fun res!1153703 () Bool)

(assert (=> d!796569 (=> res!1153703 e!1734876)))

(declare-fun lt!973424 () Bool)

(assert (=> d!796569 (= res!1153703 (not lt!973424))))

(declare-fun e!1734875 () Bool)

(assert (=> d!796569 (= lt!973424 e!1734875)))

(declare-fun res!1153701 () Bool)

(assert (=> d!796569 (=> res!1153701 e!1734875)))

(assert (=> d!796569 (= res!1153701 ((_ is Nil!31842) lt!973415))))

(assert (=> d!796569 (= (isPrefix!2525 lt!973415 lt!973415) lt!973424)))

(declare-fun b!2751774 () Bool)

(assert (=> b!2751774 (= e!1734875 e!1734877)))

(declare-fun res!1153704 () Bool)

(assert (=> b!2751774 (=> (not res!1153704) (not e!1734877))))

(assert (=> b!2751774 (= res!1153704 (not ((_ is Nil!31842) lt!973415)))))

(assert (= (and d!796569 (not res!1153701)) b!2751774))

(assert (= (and b!2751774 res!1153704) b!2751775))

(assert (= (and b!2751775 res!1153702) b!2751776))

(assert (= (and d!796569 (not res!1153703)) b!2751777))

(assert (=> b!2751777 m!3166685))

(assert (=> b!2751777 m!3166685))

(declare-fun m!3166715 () Bool)

(assert (=> b!2751775 m!3166715))

(assert (=> b!2751775 m!3166715))

(assert (=> b!2751776 m!3166683))

(assert (=> b!2751776 m!3166683))

(assert (=> b!2751776 m!3166683))

(assert (=> b!2751776 m!3166683))

(declare-fun m!3166717 () Bool)

(assert (=> b!2751776 m!3166717))

(assert (=> bm!177658 d!796569))

(declare-fun d!796571 () Bool)

(assert (=> d!796571 (= (array_inv!4207 (_keys!4007 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) (bvsge (size!24601 (_keys!4007 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751754 d!796571))

(declare-fun d!796573 () Bool)

(assert (=> d!796573 (= (array_inv!4209 (_values!3988 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) (bvsge (size!24602 (_values!3988 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751754 d!796573))

(declare-fun d!796575 () Bool)

(assert (=> d!796575 (= (array_inv!4207 (_keys!4006 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) (bvsge (size!24601 (_keys!4006 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751737 d!796575))

(declare-fun d!796577 () Bool)

(assert (=> d!796577 (= (array_inv!4208 (_values!3987 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) (bvsge (size!24600 (_values!3987 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751737 d!796577))

(declare-fun d!796579 () Bool)

(assert (=> d!796579 (isPrefix!2525 Nil!31842 (++!7885 Nil!31842 lt!973415))))

(declare-fun lt!973427 () Unit!45601)

(declare-fun choose!16094 (List!31942 List!31942) Unit!45601)

(assert (=> d!796579 (= lt!973427 (choose!16094 Nil!31842 lt!973415))))

(assert (=> d!796579 (= (lemmaConcatTwoListThenFirstIsPrefix!1639 Nil!31842 lt!973415) lt!973427)))

(declare-fun bs!490417 () Bool)

(assert (= bs!490417 d!796579))

(assert (=> bs!490417 m!3166649))

(assert (=> bs!490417 m!3166649))

(declare-fun m!3166719 () Bool)

(assert (=> bs!490417 m!3166719))

(declare-fun m!3166721 () Bool)

(assert (=> bs!490417 m!3166721))

(assert (=> b!2751761 d!796579))

(declare-fun bs!490418 () Bool)

(declare-fun b!2751782 () Bool)

(declare-fun d!796581 () Bool)

(assert (= bs!490418 (and b!2751782 d!796581)))

(declare-fun lambda!100913 () Int)

(declare-fun lambda!100912 () Int)

(assert (=> bs!490418 (not (= lambda!100913 lambda!100912))))

(declare-fun bs!490419 () Bool)

(declare-fun b!2751783 () Bool)

(assert (= bs!490419 (and b!2751783 d!796581)))

(declare-fun lambda!100914 () Int)

(assert (=> bs!490419 (not (= lambda!100914 lambda!100912))))

(declare-fun bs!490420 () Bool)

(assert (= bs!490420 (and b!2751783 b!2751782)))

(assert (=> bs!490420 (= lambda!100914 lambda!100913)))

(declare-fun e!1734884 () Unit!45601)

(declare-fun Unit!45605 () Unit!45601)

(assert (=> b!2751782 (= e!1734884 Unit!45605)))

(declare-datatypes ((List!31946 0))(
  ( (Nil!31846) (Cons!31846 (h!37266 Context!4534) (t!228050 List!31946)) )
))
(declare-fun lt!973450 () List!31946)

(declare-fun call!177676 () List!31946)

(assert (=> b!2751782 (= lt!973450 call!177676)))

(declare-fun lt!973447 () Unit!45601)

(declare-fun lemmaNotForallThenExists!71 (List!31946 Int) Unit!45601)

(assert (=> b!2751782 (= lt!973447 (lemmaNotForallThenExists!71 lt!973450 lambda!100912))))

(declare-fun call!177677 () Bool)

(assert (=> b!2751782 call!177677))

(declare-fun lt!973446 () Unit!45601)

(assert (=> b!2751782 (= lt!973446 lt!973447)))

(declare-fun Unit!45606 () Unit!45601)

(assert (=> b!2751783 (= e!1734884 Unit!45606)))

(declare-fun lt!973451 () List!31946)

(assert (=> b!2751783 (= lt!973451 call!177676)))

(declare-fun lt!973445 () Unit!45601)

(declare-fun lemmaForallThenNotExists!71 (List!31946 Int) Unit!45601)

(assert (=> b!2751783 (= lt!973445 (lemmaForallThenNotExists!71 lt!973451 lambda!100912))))

(assert (=> b!2751783 (not call!177677)))

(declare-fun lt!973449 () Unit!45601)

(assert (=> b!2751783 (= lt!973449 lt!973445)))

(declare-fun bm!177672 () Bool)

(declare-fun toList!1816 ((InoxSet Context!4534)) List!31946)

(assert (=> bm!177672 (= call!177676 (toList!1816 z!3597))))

(declare-fun lt!973448 () Bool)

(declare-datatypes ((Option!6249 0))(
  ( (None!6248) (Some!6248 (v!33456 List!31942)) )
))
(declare-fun isEmpty!18064 (Option!6249) Bool)

(declare-fun getLanguageWitness!170 ((InoxSet Context!4534)) Option!6249)

(assert (=> d!796581 (= lt!973448 (isEmpty!18064 (getLanguageWitness!170 z!3597)))))

(declare-fun forall!6586 ((InoxSet Context!4534) Int) Bool)

(assert (=> d!796581 (= lt!973448 (forall!6586 z!3597 lambda!100912))))

(declare-fun lt!973444 () Unit!45601)

(assert (=> d!796581 (= lt!973444 e!1734884)))

(declare-fun c!445224 () Bool)

(assert (=> d!796581 (= c!445224 (not (forall!6586 z!3597 lambda!100912)))))

(assert (=> d!796581 (= (lostCauseZipper!415 z!3597) lt!973448)))

(declare-fun bm!177671 () Bool)

(declare-fun exists!947 (List!31946 Int) Bool)

(assert (=> bm!177671 (= call!177677 (exists!947 (ite c!445224 lt!973450 lt!973451) (ite c!445224 lambda!100913 lambda!100914)))))

(assert (= (and d!796581 c!445224) b!2751782))

(assert (= (and d!796581 (not c!445224)) b!2751783))

(assert (= (or b!2751782 b!2751783) bm!177671))

(assert (= (or b!2751782 b!2751783) bm!177672))

(declare-fun m!3166723 () Bool)

(assert (=> b!2751782 m!3166723))

(declare-fun m!3166725 () Bool)

(assert (=> b!2751783 m!3166725))

(declare-fun m!3166727 () Bool)

(assert (=> bm!177671 m!3166727))

(declare-fun m!3166729 () Bool)

(assert (=> bm!177672 m!3166729))

(declare-fun m!3166731 () Bool)

(assert (=> d!796581 m!3166731))

(assert (=> d!796581 m!3166731))

(declare-fun m!3166733 () Bool)

(assert (=> d!796581 m!3166733))

(declare-fun m!3166735 () Bool)

(assert (=> d!796581 m!3166735))

(assert (=> d!796581 m!3166735))

(assert (=> b!2751761 d!796581))

(declare-fun d!796583 () Bool)

(declare-fun list!12032 (Conc!9931) List!31942)

(assert (=> d!796583 (= (list!12031 input!5495) (list!12032 (c!445212 input!5495)))))

(declare-fun bs!490421 () Bool)

(assert (= bs!490421 d!796583))

(declare-fun m!3166737 () Bool)

(assert (=> bs!490421 m!3166737))

(assert (=> b!2751761 d!796583))

(declare-fun d!796585 () Bool)

(declare-fun e!1734887 () Bool)

(assert (=> d!796585 e!1734887))

(declare-fun res!1153709 () Bool)

(assert (=> d!796585 (=> (not res!1153709) (not e!1734887))))

(declare-fun lt!973454 () tuple3!4588)

(assert (=> d!796585 (= res!1153709 (valid!2875 (_2!18673 lt!973454)))))

(declare-fun choose!16095 (CacheUp!2318 CacheDown!2438 (InoxSet Context!4534) List!31942 Int List!31942 BalanceConc!19476 Int) tuple3!4588)

(assert (=> d!796585 (= lt!973454 (choose!16095 cacheUp!820 cacheDown!939 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419))))

(assert (=> d!796585 (= (++!7885 Nil!31842 lt!973415) (list!12031 input!5495))))

(assert (=> d!796585 (= (findLongestMatchInnerZipperFastMem!5 cacheUp!820 cacheDown!939 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419) lt!973454)))

(declare-fun b!2751788 () Bool)

(declare-fun res!1153710 () Bool)

(assert (=> b!2751788 (=> (not res!1153710) (not e!1734887))))

(assert (=> b!2751788 (= res!1153710 (valid!2874 (_3!2764 lt!973454)))))

(declare-fun b!2751789 () Bool)

(assert (=> b!2751789 (= e!1734887 (= (_1!18673 lt!973454) (findLongestMatchInnerZipperFast!7 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419)))))

(assert (= (and d!796585 res!1153709) b!2751788))

(assert (= (and b!2751788 res!1153710) b!2751789))

(declare-fun m!3166739 () Bool)

(assert (=> d!796585 m!3166739))

(declare-fun m!3166741 () Bool)

(assert (=> d!796585 m!3166741))

(assert (=> d!796585 m!3166649))

(assert (=> d!796585 m!3166645))

(declare-fun m!3166743 () Bool)

(assert (=> b!2751788 m!3166743))

(assert (=> b!2751789 m!3166613))

(assert (=> b!2751761 d!796585))

(declare-fun d!796587 () Bool)

(declare-fun validCacheMapUp!350 (MutableMap!3612) Bool)

(assert (=> d!796587 (= (valid!2875 (_2!18673 lt!973399)) (validCacheMapUp!350 (cache!3755 (_2!18673 lt!973399))))))

(declare-fun bs!490422 () Bool)

(assert (= bs!490422 d!796587))

(declare-fun m!3166745 () Bool)

(assert (=> bs!490422 m!3166745))

(assert (=> b!2751761 d!796587))

(declare-fun b!2751793 () Bool)

(declare-fun e!1734889 () Bool)

(assert (=> b!2751793 (= e!1734889 (>= (size!24603 lt!973402) (size!24603 Nil!31842)))))

(declare-fun b!2751791 () Bool)

(declare-fun res!1153712 () Bool)

(declare-fun e!1734890 () Bool)

(assert (=> b!2751791 (=> (not res!1153712) (not e!1734890))))

(assert (=> b!2751791 (= res!1153712 (= (head!6121 Nil!31842) (head!6121 lt!973402)))))

(declare-fun b!2751792 () Bool)

(assert (=> b!2751792 (= e!1734890 (isPrefix!2525 (tail!4359 Nil!31842) (tail!4359 lt!973402)))))

(declare-fun d!796589 () Bool)

(assert (=> d!796589 e!1734889))

(declare-fun res!1153713 () Bool)

(assert (=> d!796589 (=> res!1153713 e!1734889)))

(declare-fun lt!973455 () Bool)

(assert (=> d!796589 (= res!1153713 (not lt!973455))))

(declare-fun e!1734888 () Bool)

(assert (=> d!796589 (= lt!973455 e!1734888)))

(declare-fun res!1153711 () Bool)

(assert (=> d!796589 (=> res!1153711 e!1734888)))

(assert (=> d!796589 (= res!1153711 ((_ is Nil!31842) Nil!31842))))

(assert (=> d!796589 (= (isPrefix!2525 Nil!31842 lt!973402) lt!973455)))

(declare-fun b!2751790 () Bool)

(assert (=> b!2751790 (= e!1734888 e!1734890)))

(declare-fun res!1153714 () Bool)

(assert (=> b!2751790 (=> (not res!1153714) (not e!1734890))))

(assert (=> b!2751790 (= res!1153714 (not ((_ is Nil!31842) lt!973402)))))

(assert (= (and d!796589 (not res!1153711)) b!2751790))

(assert (= (and b!2751790 res!1153714) b!2751791))

(assert (= (and b!2751791 res!1153712) b!2751792))

(assert (= (and d!796589 (not res!1153713)) b!2751793))

(declare-fun m!3166747 () Bool)

(assert (=> b!2751793 m!3166747))

(assert (=> b!2751793 m!3166603))

(declare-fun m!3166749 () Bool)

(assert (=> b!2751791 m!3166749))

(declare-fun m!3166751 () Bool)

(assert (=> b!2751791 m!3166751))

(declare-fun m!3166753 () Bool)

(assert (=> b!2751792 m!3166753))

(declare-fun m!3166755 () Bool)

(assert (=> b!2751792 m!3166755))

(assert (=> b!2751792 m!3166753))

(assert (=> b!2751792 m!3166755))

(declare-fun m!3166757 () Bool)

(assert (=> b!2751792 m!3166757))

(assert (=> b!2751761 d!796589))

(declare-fun d!796591 () Bool)

(declare-fun e!1734895 () Bool)

(assert (=> d!796591 e!1734895))

(declare-fun res!1153720 () Bool)

(assert (=> d!796591 (=> (not res!1153720) (not e!1734895))))

(declare-fun lt!973458 () List!31942)

(declare-fun content!4486 (List!31942) (InoxSet C!16256))

(assert (=> d!796591 (= res!1153720 (= (content!4486 lt!973458) ((_ map or) (content!4486 Nil!31842) (content!4486 lt!973415))))))

(declare-fun e!1734896 () List!31942)

(assert (=> d!796591 (= lt!973458 e!1734896)))

(declare-fun c!445227 () Bool)

(assert (=> d!796591 (= c!445227 ((_ is Nil!31842) Nil!31842))))

(assert (=> d!796591 (= (++!7885 Nil!31842 lt!973415) lt!973458)))

(declare-fun b!2751802 () Bool)

(assert (=> b!2751802 (= e!1734896 lt!973415)))

(declare-fun b!2751803 () Bool)

(assert (=> b!2751803 (= e!1734896 (Cons!31842 (h!37262 Nil!31842) (++!7885 (t!228046 Nil!31842) lt!973415)))))

(declare-fun b!2751805 () Bool)

(assert (=> b!2751805 (= e!1734895 (or (not (= lt!973415 Nil!31842)) (= lt!973458 Nil!31842)))))

(declare-fun b!2751804 () Bool)

(declare-fun res!1153719 () Bool)

(assert (=> b!2751804 (=> (not res!1153719) (not e!1734895))))

(assert (=> b!2751804 (= res!1153719 (= (size!24603 lt!973458) (+ (size!24603 Nil!31842) (size!24603 lt!973415))))))

(assert (= (and d!796591 c!445227) b!2751802))

(assert (= (and d!796591 (not c!445227)) b!2751803))

(assert (= (and d!796591 res!1153720) b!2751804))

(assert (= (and b!2751804 res!1153719) b!2751805))

(declare-fun m!3166759 () Bool)

(assert (=> d!796591 m!3166759))

(declare-fun m!3166761 () Bool)

(assert (=> d!796591 m!3166761))

(declare-fun m!3166763 () Bool)

(assert (=> d!796591 m!3166763))

(declare-fun m!3166765 () Bool)

(assert (=> b!2751803 m!3166765))

(declare-fun m!3166767 () Bool)

(assert (=> b!2751804 m!3166767))

(assert (=> b!2751804 m!3166603))

(assert (=> b!2751804 m!3166685))

(assert (=> b!2751761 d!796591))

(declare-fun d!796593 () Bool)

(declare-fun e!1734897 () Bool)

(assert (=> d!796593 e!1734897))

(declare-fun res!1153721 () Bool)

(assert (=> d!796593 (=> (not res!1153721) (not e!1734897))))

(declare-fun lt!973459 () tuple3!4588)

(assert (=> d!796593 (= res!1153721 (valid!2875 (_2!18673 lt!973459)))))

(assert (=> d!796593 (= lt!973459 (choose!16095 (_2!18673 lt!973407) (_3!2764 lt!973407) z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419))))

(assert (=> d!796593 (= (++!7885 Nil!31842 lt!973415) (list!12031 input!5495))))

(assert (=> d!796593 (= (findLongestMatchInnerZipperFastMem!5 (_2!18673 lt!973407) (_3!2764 lt!973407) z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419) lt!973459)))

(declare-fun b!2751806 () Bool)

(declare-fun res!1153722 () Bool)

(assert (=> b!2751806 (=> (not res!1153722) (not e!1734897))))

(assert (=> b!2751806 (= res!1153722 (valid!2874 (_3!2764 lt!973459)))))

(declare-fun b!2751807 () Bool)

(assert (=> b!2751807 (= e!1734897 (= (_1!18673 lt!973459) (findLongestMatchInnerZipperFast!7 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419)))))

(assert (= (and d!796593 res!1153721) b!2751806))

(assert (= (and b!2751806 res!1153722) b!2751807))

(declare-fun m!3166769 () Bool)

(assert (=> d!796593 m!3166769))

(declare-fun m!3166771 () Bool)

(assert (=> d!796593 m!3166771))

(assert (=> d!796593 m!3166649))

(assert (=> d!796593 m!3166645))

(declare-fun m!3166773 () Bool)

(assert (=> b!2751806 m!3166773))

(assert (=> b!2751807 m!3166613))

(assert (=> b!2751761 d!796593))

(declare-fun d!796595 () Bool)

(declare-fun lt!973462 () List!31942)

(assert (=> d!796595 (= (++!7885 Nil!31842 lt!973462) lt!973415)))

(declare-fun e!1734900 () List!31942)

(assert (=> d!796595 (= lt!973462 e!1734900)))

(declare-fun c!445230 () Bool)

(assert (=> d!796595 (= c!445230 ((_ is Cons!31842) Nil!31842))))

(assert (=> d!796595 (>= (size!24603 lt!973415) (size!24603 Nil!31842))))

(assert (=> d!796595 (= (getSuffix!1211 lt!973415 Nil!31842) lt!973462)))

(declare-fun b!2751812 () Bool)

(assert (=> b!2751812 (= e!1734900 (getSuffix!1211 (tail!4359 lt!973415) (t!228046 Nil!31842)))))

(declare-fun b!2751813 () Bool)

(assert (=> b!2751813 (= e!1734900 lt!973415)))

(assert (= (and d!796595 c!445230) b!2751812))

(assert (= (and d!796595 (not c!445230)) b!2751813))

(declare-fun m!3166775 () Bool)

(assert (=> d!796595 m!3166775))

(assert (=> d!796595 m!3166685))

(assert (=> d!796595 m!3166603))

(assert (=> b!2751812 m!3166683))

(assert (=> b!2751812 m!3166683))

(declare-fun m!3166777 () Bool)

(assert (=> b!2751812 m!3166777))

(assert (=> b!2751761 d!796595))

(declare-fun d!796597 () Bool)

(assert (=> d!796597 (= lt!973415 lt!973414)))

(declare-fun lt!973465 () Unit!45601)

(declare-fun choose!16096 (List!31942 List!31942 List!31942 List!31942 List!31942) Unit!45601)

(assert (=> d!796597 (= lt!973465 (choose!16096 Nil!31842 lt!973415 Nil!31842 lt!973414 lt!973415))))

(assert (=> d!796597 (isPrefix!2525 Nil!31842 lt!973415)))

(assert (=> d!796597 (= (lemmaSamePrefixThenSameSuffix!1113 Nil!31842 lt!973415 Nil!31842 lt!973414 lt!973415) lt!973465)))

(declare-fun bs!490423 () Bool)

(assert (= bs!490423 d!796597))

(declare-fun m!3166779 () Bool)

(assert (=> bs!490423 m!3166779))

(declare-fun m!3166781 () Bool)

(assert (=> bs!490423 m!3166781))

(assert (=> b!2751761 d!796597))

(declare-fun d!796599 () Bool)

(assert (=> d!796599 (= (valid!2875 (_2!18673 lt!973407)) (validCacheMapUp!350 (cache!3755 (_2!18673 lt!973407))))))

(declare-fun bs!490424 () Bool)

(assert (= bs!490424 d!796599))

(declare-fun m!3166783 () Bool)

(assert (=> bs!490424 m!3166783))

(assert (=> b!2751761 d!796599))

(declare-fun d!796601 () Bool)

(declare-fun lt!973468 () Int)

(assert (=> d!796601 (= lt!973468 (size!24603 (list!12031 input!5495)))))

(declare-fun size!24605 (Conc!9931) Int)

(assert (=> d!796601 (= lt!973468 (size!24605 (c!445212 input!5495)))))

(assert (=> d!796601 (= (size!24604 input!5495) lt!973468)))

(declare-fun bs!490425 () Bool)

(assert (= bs!490425 d!796601))

(assert (=> bs!490425 m!3166645))

(assert (=> bs!490425 m!3166645))

(declare-fun m!3166785 () Bool)

(assert (=> bs!490425 m!3166785))

(declare-fun m!3166787 () Bool)

(assert (=> bs!490425 m!3166787))

(assert (=> b!2751761 d!796601))

(declare-fun d!796603 () Bool)

(declare-fun lt!973471 () Int)

(assert (=> d!796603 (>= lt!973471 0)))

(declare-fun e!1734903 () Int)

(assert (=> d!796603 (= lt!973471 e!1734903)))

(declare-fun c!445233 () Bool)

(assert (=> d!796603 (= c!445233 ((_ is Nil!31842) lt!973415))))

(assert (=> d!796603 (= (size!24603 lt!973415) lt!973471)))

(declare-fun b!2751818 () Bool)

(assert (=> b!2751818 (= e!1734903 0)))

(declare-fun b!2751819 () Bool)

(assert (=> b!2751819 (= e!1734903 (+ 1 (size!24603 (t!228046 lt!973415))))))

(assert (= (and d!796603 c!445233) b!2751818))

(assert (= (and d!796603 (not c!445233)) b!2751819))

(declare-fun m!3166789 () Bool)

(assert (=> b!2751819 m!3166789))

(assert (=> b!2751746 d!796603))

(declare-fun d!796605 () Bool)

(assert (=> d!796605 (<= (size!24603 Nil!31842) (size!24603 lt!973415))))

(declare-fun lt!973474 () Unit!45601)

(declare-fun choose!16097 (List!31942 List!31942) Unit!45601)

(assert (=> d!796605 (= lt!973474 (choose!16097 Nil!31842 lt!973415))))

(assert (=> d!796605 (isPrefix!2525 Nil!31842 lt!973415)))

(assert (=> d!796605 (= (lemmaIsPrefixThenSmallerEqSize!233 Nil!31842 lt!973415) lt!973474)))

(declare-fun bs!490426 () Bool)

(assert (= bs!490426 d!796605))

(assert (=> bs!490426 m!3166603))

(assert (=> bs!490426 m!3166685))

(declare-fun m!3166791 () Bool)

(assert (=> bs!490426 m!3166791))

(assert (=> bs!490426 m!3166781))

(assert (=> b!2751746 d!796605))

(declare-fun d!796607 () Bool)

(assert (=> d!796607 (= (head!6121 (drop!1680 lt!973415 0)) (h!37262 (drop!1680 lt!973415 0)))))

(assert (=> b!2751746 d!796607))

(declare-fun d!796609 () Bool)

(declare-fun e!1734904 () Bool)

(assert (=> d!796609 e!1734904))

(declare-fun res!1153724 () Bool)

(assert (=> d!796609 (=> (not res!1153724) (not e!1734904))))

(declare-fun lt!973475 () List!31942)

(assert (=> d!796609 (= res!1153724 (= (content!4486 lt!973475) ((_ map or) (content!4486 Nil!31842) (content!4486 (Cons!31842 (head!6121 lt!973414) Nil!31842)))))))

(declare-fun e!1734905 () List!31942)

(assert (=> d!796609 (= lt!973475 e!1734905)))

(declare-fun c!445234 () Bool)

(assert (=> d!796609 (= c!445234 ((_ is Nil!31842) Nil!31842))))

(assert (=> d!796609 (= (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842)) lt!973475)))

(declare-fun b!2751820 () Bool)

(assert (=> b!2751820 (= e!1734905 (Cons!31842 (head!6121 lt!973414) Nil!31842))))

(declare-fun b!2751821 () Bool)

(assert (=> b!2751821 (= e!1734905 (Cons!31842 (h!37262 Nil!31842) (++!7885 (t!228046 Nil!31842) (Cons!31842 (head!6121 lt!973414) Nil!31842))))))

(declare-fun b!2751823 () Bool)

(assert (=> b!2751823 (= e!1734904 (or (not (= (Cons!31842 (head!6121 lt!973414) Nil!31842) Nil!31842)) (= lt!973475 Nil!31842)))))

(declare-fun b!2751822 () Bool)

(declare-fun res!1153723 () Bool)

(assert (=> b!2751822 (=> (not res!1153723) (not e!1734904))))

(assert (=> b!2751822 (= res!1153723 (= (size!24603 lt!973475) (+ (size!24603 Nil!31842) (size!24603 (Cons!31842 (head!6121 lt!973414) Nil!31842)))))))

(assert (= (and d!796609 c!445234) b!2751820))

(assert (= (and d!796609 (not c!445234)) b!2751821))

(assert (= (and d!796609 res!1153724) b!2751822))

(assert (= (and b!2751822 res!1153723) b!2751823))

(declare-fun m!3166793 () Bool)

(assert (=> d!796609 m!3166793))

(assert (=> d!796609 m!3166761))

(declare-fun m!3166795 () Bool)

(assert (=> d!796609 m!3166795))

(declare-fun m!3166797 () Bool)

(assert (=> b!2751821 m!3166797))

(declare-fun m!3166799 () Bool)

(assert (=> b!2751822 m!3166799))

(assert (=> b!2751822 m!3166603))

(declare-fun m!3166801 () Bool)

(assert (=> b!2751822 m!3166801))

(assert (=> b!2751746 d!796609))

(declare-fun d!796611 () Bool)

(assert (=> d!796611 (= (head!6121 lt!973414) (h!37262 lt!973414))))

(assert (=> b!2751746 d!796611))

(declare-fun d!796613 () Bool)

(declare-fun lt!973478 () C!16256)

(assert (=> d!796613 (= lt!973478 (apply!7437 (list!12031 input!5495) 0))))

(declare-fun apply!7438 (Conc!9931 Int) C!16256)

(assert (=> d!796613 (= lt!973478 (apply!7438 (c!445212 input!5495) 0))))

(declare-fun e!1734908 () Bool)

(assert (=> d!796613 e!1734908))

(declare-fun res!1153727 () Bool)

(assert (=> d!796613 (=> (not res!1153727) (not e!1734908))))

(assert (=> d!796613 (= res!1153727 (<= 0 0))))

(assert (=> d!796613 (= (apply!7436 input!5495 0) lt!973478)))

(declare-fun b!2751826 () Bool)

(assert (=> b!2751826 (= e!1734908 (< 0 (size!24604 input!5495)))))

(assert (= (and d!796613 res!1153727) b!2751826))

(assert (=> d!796613 m!3166645))

(assert (=> d!796613 m!3166645))

(declare-fun m!3166803 () Bool)

(assert (=> d!796613 m!3166803))

(declare-fun m!3166805 () Bool)

(assert (=> d!796613 m!3166805))

(assert (=> b!2751826 m!3166633))

(assert (=> b!2751746 d!796613))

(declare-fun d!796615 () Bool)

(declare-fun e!1734909 () Bool)

(assert (=> d!796615 e!1734909))

(declare-fun res!1153729 () Bool)

(assert (=> d!796615 (=> (not res!1153729) (not e!1734909))))

(declare-fun lt!973479 () List!31942)

(assert (=> d!796615 (= res!1153729 (= (content!4486 lt!973479) ((_ map or) (content!4486 Nil!31842) (content!4486 (Cons!31842 lt!973392 Nil!31842)))))))

(declare-fun e!1734910 () List!31942)

(assert (=> d!796615 (= lt!973479 e!1734910)))

(declare-fun c!445235 () Bool)

(assert (=> d!796615 (= c!445235 ((_ is Nil!31842) Nil!31842))))

(assert (=> d!796615 (= (++!7885 Nil!31842 (Cons!31842 lt!973392 Nil!31842)) lt!973479)))

(declare-fun b!2751827 () Bool)

(assert (=> b!2751827 (= e!1734910 (Cons!31842 lt!973392 Nil!31842))))

(declare-fun b!2751828 () Bool)

(assert (=> b!2751828 (= e!1734910 (Cons!31842 (h!37262 Nil!31842) (++!7885 (t!228046 Nil!31842) (Cons!31842 lt!973392 Nil!31842))))))

(declare-fun b!2751830 () Bool)

(assert (=> b!2751830 (= e!1734909 (or (not (= (Cons!31842 lt!973392 Nil!31842) Nil!31842)) (= lt!973479 Nil!31842)))))

(declare-fun b!2751829 () Bool)

(declare-fun res!1153728 () Bool)

(assert (=> b!2751829 (=> (not res!1153728) (not e!1734909))))

(assert (=> b!2751829 (= res!1153728 (= (size!24603 lt!973479) (+ (size!24603 Nil!31842) (size!24603 (Cons!31842 lt!973392 Nil!31842)))))))

(assert (= (and d!796615 c!445235) b!2751827))

(assert (= (and d!796615 (not c!445235)) b!2751828))

(assert (= (and d!796615 res!1153729) b!2751829))

(assert (= (and b!2751829 res!1153728) b!2751830))

(declare-fun m!3166807 () Bool)

(assert (=> d!796615 m!3166807))

(assert (=> d!796615 m!3166761))

(declare-fun m!3166809 () Bool)

(assert (=> d!796615 m!3166809))

(declare-fun m!3166811 () Bool)

(assert (=> b!2751828 m!3166811))

(declare-fun m!3166813 () Bool)

(assert (=> b!2751829 m!3166813))

(assert (=> b!2751829 m!3166603))

(declare-fun m!3166815 () Bool)

(assert (=> b!2751829 m!3166815))

(assert (=> b!2751746 d!796615))

(declare-fun d!796617 () Bool)

(declare-fun lt!973482 () C!16256)

(declare-fun contains!5980 (List!31942 C!16256) Bool)

(assert (=> d!796617 (contains!5980 lt!973415 lt!973482)))

(declare-fun e!1734916 () C!16256)

(assert (=> d!796617 (= lt!973482 e!1734916)))

(declare-fun c!445238 () Bool)

(assert (=> d!796617 (= c!445238 (= 0 0))))

(declare-fun e!1734915 () Bool)

(assert (=> d!796617 e!1734915))

(declare-fun res!1153732 () Bool)

(assert (=> d!796617 (=> (not res!1153732) (not e!1734915))))

(assert (=> d!796617 (= res!1153732 (<= 0 0))))

(assert (=> d!796617 (= (apply!7437 lt!973415 0) lt!973482)))

(declare-fun b!2751837 () Bool)

(assert (=> b!2751837 (= e!1734915 (< 0 (size!24603 lt!973415)))))

(declare-fun b!2751838 () Bool)

(assert (=> b!2751838 (= e!1734916 (head!6121 lt!973415))))

(declare-fun b!2751839 () Bool)

(assert (=> b!2751839 (= e!1734916 (apply!7437 (tail!4359 lt!973415) (- 0 1)))))

(assert (= (and d!796617 res!1153732) b!2751837))

(assert (= (and d!796617 c!445238) b!2751838))

(assert (= (and d!796617 (not c!445238)) b!2751839))

(declare-fun m!3166817 () Bool)

(assert (=> d!796617 m!3166817))

(assert (=> b!2751837 m!3166685))

(assert (=> b!2751838 m!3166715))

(assert (=> b!2751839 m!3166683))

(assert (=> b!2751839 m!3166683))

(declare-fun m!3166819 () Bool)

(assert (=> b!2751839 m!3166819))

(assert (=> b!2751746 d!796617))

(declare-fun d!796619 () Bool)

(declare-fun e!1734919 () Bool)

(assert (=> d!796619 e!1734919))

(declare-fun res!1153737 () Bool)

(assert (=> d!796619 (=> (not res!1153737) (not e!1734919))))

(declare-fun lt!973487 () tuple2!31818)

(declare-fun isBalanced!3023 (Conc!9931) Bool)

(assert (=> d!796619 (= res!1153737 (isBalanced!3023 (c!445212 (_1!18675 lt!973487))))))

(declare-datatypes ((tuple2!31820 0))(
  ( (tuple2!31821 (_1!18676 Conc!9931) (_2!18676 Conc!9931)) )
))
(declare-fun lt!973488 () tuple2!31820)

(assert (=> d!796619 (= lt!973487 (tuple2!31819 (BalanceConc!19477 (_1!18676 lt!973488)) (BalanceConc!19477 (_2!18676 lt!973488))))))

(declare-fun splitAt!77 (Conc!9931 Int) tuple2!31820)

(assert (=> d!796619 (= lt!973488 (splitAt!77 (c!445212 input!5495) 0))))

(assert (=> d!796619 (isBalanced!3023 (c!445212 input!5495))))

(assert (=> d!796619 (= (splitAt!76 input!5495 0) lt!973487)))

(declare-fun b!2751844 () Bool)

(declare-fun res!1153738 () Bool)

(assert (=> b!2751844 (=> (not res!1153738) (not e!1734919))))

(assert (=> b!2751844 (= res!1153738 (isBalanced!3023 (c!445212 (_2!18675 lt!973487))))))

(declare-fun b!2751845 () Bool)

(declare-datatypes ((tuple2!31822 0))(
  ( (tuple2!31823 (_1!18677 List!31942) (_2!18677 List!31942)) )
))
(declare-fun splitAtIndex!39 (List!31942 Int) tuple2!31822)

(assert (=> b!2751845 (= e!1734919 (= (tuple2!31823 (list!12031 (_1!18675 lt!973487)) (list!12031 (_2!18675 lt!973487))) (splitAtIndex!39 (list!12031 input!5495) 0)))))

(assert (= (and d!796619 res!1153737) b!2751844))

(assert (= (and b!2751844 res!1153738) b!2751845))

(declare-fun m!3166821 () Bool)

(assert (=> d!796619 m!3166821))

(declare-fun m!3166823 () Bool)

(assert (=> d!796619 m!3166823))

(declare-fun m!3166825 () Bool)

(assert (=> d!796619 m!3166825))

(declare-fun m!3166827 () Bool)

(assert (=> b!2751844 m!3166827))

(declare-fun m!3166829 () Bool)

(assert (=> b!2751845 m!3166829))

(declare-fun m!3166831 () Bool)

(assert (=> b!2751845 m!3166831))

(assert (=> b!2751845 m!3166645))

(assert (=> b!2751845 m!3166645))

(declare-fun m!3166833 () Bool)

(assert (=> b!2751845 m!3166833))

(assert (=> b!2751746 d!796619))

(declare-fun d!796621 () Bool)

(declare-fun lt!973489 () Int)

(assert (=> d!796621 (>= lt!973489 0)))

(declare-fun e!1734920 () Int)

(assert (=> d!796621 (= lt!973489 e!1734920)))

(declare-fun c!445239 () Bool)

(assert (=> d!796621 (= c!445239 ((_ is Nil!31842) Nil!31842))))

(assert (=> d!796621 (= (size!24603 Nil!31842) lt!973489)))

(declare-fun b!2751846 () Bool)

(assert (=> b!2751846 (= e!1734920 0)))

(declare-fun b!2751847 () Bool)

(assert (=> b!2751847 (= e!1734920 (+ 1 (size!24603 (t!228046 Nil!31842))))))

(assert (= (and d!796621 c!445239) b!2751846))

(assert (= (and d!796621 (not c!445239)) b!2751847))

(declare-fun m!3166835 () Bool)

(assert (=> b!2751847 m!3166835))

(assert (=> b!2751746 d!796621))

(declare-fun d!796623 () Bool)

(assert (=> d!796623 (isPrefix!2525 (++!7885 Nil!31842 (Cons!31842 (head!6121 (getSuffix!1211 lt!973415 Nil!31842)) Nil!31842)) lt!973415)))

(declare-fun lt!973492 () Unit!45601)

(declare-fun choose!16098 (List!31942 List!31942) Unit!45601)

(assert (=> d!796623 (= lt!973492 (choose!16098 Nil!31842 lt!973415))))

(assert (=> d!796623 (isPrefix!2525 Nil!31842 lt!973415)))

(assert (=> d!796623 (= (lemmaAddHeadSuffixToPrefixStillPrefix!430 Nil!31842 lt!973415) lt!973492)))

(declare-fun bs!490427 () Bool)

(assert (= bs!490427 d!796623))

(declare-fun m!3166837 () Bool)

(assert (=> bs!490427 m!3166837))

(assert (=> bs!490427 m!3166639))

(declare-fun m!3166839 () Bool)

(assert (=> bs!490427 m!3166839))

(assert (=> bs!490427 m!3166639))

(assert (=> bs!490427 m!3166837))

(declare-fun m!3166841 () Bool)

(assert (=> bs!490427 m!3166841))

(assert (=> bs!490427 m!3166781))

(declare-fun m!3166843 () Bool)

(assert (=> bs!490427 m!3166843))

(assert (=> b!2751746 d!796623))

(declare-fun d!796625 () Bool)

(assert (=> d!796625 (= (tail!4359 lt!973415) (t!228046 lt!973415))))

(assert (=> b!2751746 d!796625))

(declare-fun d!796627 () Bool)

(assert (=> d!796627 (= (list!12031 (_2!18675 lt!973391)) (list!12032 (c!445212 (_2!18675 lt!973391))))))

(declare-fun bs!490428 () Bool)

(assert (= bs!490428 d!796627))

(declare-fun m!3166845 () Bool)

(assert (=> bs!490428 m!3166845))

(assert (=> b!2751746 d!796627))

(declare-fun d!796629 () Bool)

(assert (=> d!796629 (= (++!7885 (++!7885 Nil!31842 (Cons!31842 lt!973392 Nil!31842)) lt!973396) lt!973415)))

(declare-fun lt!973495 () Unit!45601)

(declare-fun choose!16099 (List!31942 C!16256 List!31942 List!31942) Unit!45601)

(assert (=> d!796629 (= lt!973495 (choose!16099 Nil!31842 lt!973392 lt!973396 lt!973415))))

(assert (=> d!796629 (= (++!7885 Nil!31842 (Cons!31842 lt!973392 lt!973396)) lt!973415)))

(assert (=> d!796629 (= (lemmaMoveElementToOtherListKeepsConcatEq!842 Nil!31842 lt!973392 lt!973396 lt!973415) lt!973495)))

(declare-fun bs!490429 () Bool)

(assert (= bs!490429 d!796629))

(assert (=> bs!490429 m!3166697))

(assert (=> bs!490429 m!3166697))

(declare-fun m!3166847 () Bool)

(assert (=> bs!490429 m!3166847))

(declare-fun m!3166849 () Bool)

(assert (=> bs!490429 m!3166849))

(declare-fun m!3166851 () Bool)

(assert (=> bs!490429 m!3166851))

(assert (=> b!2751746 d!796629))

(declare-fun d!796631 () Bool)

(assert (=> d!796631 (and (= lt!973410 Nil!31842) (= lt!973405 lt!973415))))

(declare-fun lt!973498 () Unit!45601)

(declare-fun choose!16100 (List!31942 List!31942 List!31942 List!31942) Unit!45601)

(assert (=> d!796631 (= lt!973498 (choose!16100 lt!973410 lt!973405 Nil!31842 lt!973415))))

(assert (=> d!796631 (= (++!7885 lt!973410 lt!973405) (++!7885 Nil!31842 lt!973415))))

(assert (=> d!796631 (= (lemmaConcatSameAndSameSizesThenSameLists!312 lt!973410 lt!973405 Nil!31842 lt!973415) lt!973498)))

(declare-fun bs!490430 () Bool)

(assert (= bs!490430 d!796631))

(declare-fun m!3166853 () Bool)

(assert (=> bs!490430 m!3166853))

(declare-fun m!3166855 () Bool)

(assert (=> bs!490430 m!3166855))

(assert (=> bs!490430 m!3166649))

(assert (=> b!2751746 d!796631))

(declare-fun b!2751851 () Bool)

(declare-fun e!1734922 () Bool)

(assert (=> b!2751851 (= e!1734922 (>= (size!24603 lt!973415) (size!24603 (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842)))))))

(declare-fun b!2751849 () Bool)

(declare-fun res!1153740 () Bool)

(declare-fun e!1734923 () Bool)

(assert (=> b!2751849 (=> (not res!1153740) (not e!1734923))))

(assert (=> b!2751849 (= res!1153740 (= (head!6121 (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842))) (head!6121 lt!973415)))))

(declare-fun b!2751850 () Bool)

(assert (=> b!2751850 (= e!1734923 (isPrefix!2525 (tail!4359 (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842))) (tail!4359 lt!973415)))))

(declare-fun d!796633 () Bool)

(assert (=> d!796633 e!1734922))

(declare-fun res!1153741 () Bool)

(assert (=> d!796633 (=> res!1153741 e!1734922)))

(declare-fun lt!973499 () Bool)

(assert (=> d!796633 (= res!1153741 (not lt!973499))))

(declare-fun e!1734921 () Bool)

(assert (=> d!796633 (= lt!973499 e!1734921)))

(declare-fun res!1153739 () Bool)

(assert (=> d!796633 (=> res!1153739 e!1734921)))

(assert (=> d!796633 (= res!1153739 ((_ is Nil!31842) (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842))))))

(assert (=> d!796633 (= (isPrefix!2525 (++!7885 Nil!31842 (Cons!31842 (head!6121 lt!973414) Nil!31842)) lt!973415) lt!973499)))

(declare-fun b!2751848 () Bool)

(assert (=> b!2751848 (= e!1734921 e!1734923)))

(declare-fun res!1153742 () Bool)

(assert (=> b!2751848 (=> (not res!1153742) (not e!1734923))))

(assert (=> b!2751848 (= res!1153742 (not ((_ is Nil!31842) lt!973415)))))

(assert (= (and d!796633 (not res!1153739)) b!2751848))

(assert (= (and b!2751848 res!1153742) b!2751849))

(assert (= (and b!2751849 res!1153740) b!2751850))

(assert (= (and d!796633 (not res!1153741)) b!2751851))

(assert (=> b!2751851 m!3166685))

(assert (=> b!2751851 m!3166675))

(declare-fun m!3166857 () Bool)

(assert (=> b!2751851 m!3166857))

(assert (=> b!2751849 m!3166675))

(declare-fun m!3166859 () Bool)

(assert (=> b!2751849 m!3166859))

(assert (=> b!2751849 m!3166715))

(assert (=> b!2751850 m!3166675))

(declare-fun m!3166861 () Bool)

(assert (=> b!2751850 m!3166861))

(assert (=> b!2751850 m!3166683))

(assert (=> b!2751850 m!3166861))

(assert (=> b!2751850 m!3166683))

(declare-fun m!3166863 () Bool)

(assert (=> b!2751850 m!3166863))

(assert (=> b!2751746 d!796633))

(declare-fun d!796635 () Bool)

(declare-fun e!1734924 () Bool)

(assert (=> d!796635 e!1734924))

(declare-fun res!1153744 () Bool)

(assert (=> d!796635 (=> (not res!1153744) (not e!1734924))))

(declare-fun lt!973500 () List!31942)

(assert (=> d!796635 (= res!1153744 (= (content!4486 lt!973500) ((_ map or) (content!4486 lt!973411) (content!4486 lt!973396))))))

(declare-fun e!1734925 () List!31942)

(assert (=> d!796635 (= lt!973500 e!1734925)))

(declare-fun c!445240 () Bool)

(assert (=> d!796635 (= c!445240 ((_ is Nil!31842) lt!973411))))

(assert (=> d!796635 (= (++!7885 lt!973411 lt!973396) lt!973500)))

(declare-fun b!2751852 () Bool)

(assert (=> b!2751852 (= e!1734925 lt!973396)))

(declare-fun b!2751853 () Bool)

(assert (=> b!2751853 (= e!1734925 (Cons!31842 (h!37262 lt!973411) (++!7885 (t!228046 lt!973411) lt!973396)))))

(declare-fun b!2751855 () Bool)

(assert (=> b!2751855 (= e!1734924 (or (not (= lt!973396 Nil!31842)) (= lt!973500 lt!973411)))))

(declare-fun b!2751854 () Bool)

(declare-fun res!1153743 () Bool)

(assert (=> b!2751854 (=> (not res!1153743) (not e!1734924))))

(assert (=> b!2751854 (= res!1153743 (= (size!24603 lt!973500) (+ (size!24603 lt!973411) (size!24603 lt!973396))))))

(assert (= (and d!796635 c!445240) b!2751852))

(assert (= (and d!796635 (not c!445240)) b!2751853))

(assert (= (and d!796635 res!1153744) b!2751854))

(assert (= (and b!2751854 res!1153743) b!2751855))

(declare-fun m!3166865 () Bool)

(assert (=> d!796635 m!3166865))

(declare-fun m!3166867 () Bool)

(assert (=> d!796635 m!3166867))

(declare-fun m!3166869 () Bool)

(assert (=> d!796635 m!3166869))

(declare-fun m!3166871 () Bool)

(assert (=> b!2751853 m!3166871))

(declare-fun m!3166873 () Bool)

(assert (=> b!2751854 m!3166873))

(declare-fun m!3166875 () Bool)

(assert (=> b!2751854 m!3166875))

(declare-fun m!3166877 () Bool)

(assert (=> b!2751854 m!3166877))

(assert (=> b!2751746 d!796635))

(declare-fun d!796637 () Bool)

(assert (=> d!796637 (= (head!6121 (drop!1680 lt!973415 0)) (apply!7437 lt!973415 0))))

(declare-fun lt!973503 () Unit!45601)

(declare-fun choose!16101 (List!31942 Int) Unit!45601)

(assert (=> d!796637 (= lt!973503 (choose!16101 lt!973415 0))))

(declare-fun e!1734928 () Bool)

(assert (=> d!796637 e!1734928))

(declare-fun res!1153747 () Bool)

(assert (=> d!796637 (=> (not res!1153747) (not e!1734928))))

(assert (=> d!796637 (= res!1153747 (>= 0 0))))

(assert (=> d!796637 (= (lemmaDropApply!886 lt!973415 0) lt!973503)))

(declare-fun b!2751858 () Bool)

(assert (=> b!2751858 (= e!1734928 (< 0 (size!24603 lt!973415)))))

(assert (= (and d!796637 res!1153747) b!2751858))

(assert (=> d!796637 m!3166663))

(assert (=> d!796637 m!3166663))

(assert (=> d!796637 m!3166689))

(assert (=> d!796637 m!3166691))

(declare-fun m!3166879 () Bool)

(assert (=> d!796637 m!3166879))

(assert (=> b!2751858 m!3166685))

(assert (=> b!2751746 d!796637))

(declare-fun d!796639 () Bool)

(assert (=> d!796639 (= (list!12031 (_1!18675 lt!973391)) (list!12032 (c!445212 (_1!18675 lt!973391))))))

(declare-fun bs!490431 () Bool)

(assert (= bs!490431 d!796639))

(declare-fun m!3166881 () Bool)

(assert (=> bs!490431 m!3166881))

(assert (=> b!2751746 d!796639))

(declare-fun b!2751877 () Bool)

(declare-fun e!1734940 () Int)

(assert (=> b!2751877 (= e!1734940 0)))

(declare-fun b!2751878 () Bool)

(declare-fun e!1734942 () Int)

(assert (=> b!2751878 (= e!1734942 e!1734940)))

(declare-fun c!445250 () Bool)

(declare-fun call!177680 () Int)

(assert (=> b!2751878 (= c!445250 (>= 0 call!177680))))

(declare-fun b!2751879 () Bool)

(declare-fun e!1734939 () Bool)

(declare-fun lt!973506 () List!31942)

(assert (=> b!2751879 (= e!1734939 (= (size!24603 lt!973506) e!1734942))))

(declare-fun c!445249 () Bool)

(assert (=> b!2751879 (= c!445249 (<= 0 0))))

(declare-fun b!2751880 () Bool)

(assert (=> b!2751880 (= e!1734940 (- call!177680 0))))

(declare-fun b!2751881 () Bool)

(declare-fun e!1734941 () List!31942)

(assert (=> b!2751881 (= e!1734941 (drop!1680 (t!228046 lt!973415) (- 0 1)))))

(declare-fun b!2751882 () Bool)

(assert (=> b!2751882 (= e!1734942 call!177680)))

(declare-fun b!2751883 () Bool)

(declare-fun e!1734943 () List!31942)

(assert (=> b!2751883 (= e!1734943 Nil!31842)))

(declare-fun b!2751884 () Bool)

(assert (=> b!2751884 (= e!1734941 lt!973415)))

(declare-fun bm!177675 () Bool)

(assert (=> bm!177675 (= call!177680 (size!24603 lt!973415))))

(declare-fun b!2751885 () Bool)

(assert (=> b!2751885 (= e!1734943 e!1734941)))

(declare-fun c!445251 () Bool)

(assert (=> b!2751885 (= c!445251 (<= 0 0))))

(declare-fun d!796641 () Bool)

(assert (=> d!796641 e!1734939))

(declare-fun res!1153750 () Bool)

(assert (=> d!796641 (=> (not res!1153750) (not e!1734939))))

(assert (=> d!796641 (= res!1153750 (= ((_ map implies) (content!4486 lt!973506) (content!4486 lt!973415)) ((as const (InoxSet C!16256)) true)))))

(assert (=> d!796641 (= lt!973506 e!1734943)))

(declare-fun c!445252 () Bool)

(assert (=> d!796641 (= c!445252 ((_ is Nil!31842) lt!973415))))

(assert (=> d!796641 (= (drop!1680 lt!973415 0) lt!973506)))

(assert (= (and d!796641 c!445252) b!2751883))

(assert (= (and d!796641 (not c!445252)) b!2751885))

(assert (= (and b!2751885 c!445251) b!2751884))

(assert (= (and b!2751885 (not c!445251)) b!2751881))

(assert (= (and d!796641 res!1153750) b!2751879))

(assert (= (and b!2751879 c!445249) b!2751882))

(assert (= (and b!2751879 (not c!445249)) b!2751878))

(assert (= (and b!2751878 c!445250) b!2751877))

(assert (= (and b!2751878 (not c!445250)) b!2751880))

(assert (= (or b!2751882 b!2751878 b!2751880) bm!177675))

(declare-fun m!3166883 () Bool)

(assert (=> b!2751879 m!3166883))

(declare-fun m!3166885 () Bool)

(assert (=> b!2751881 m!3166885))

(assert (=> bm!177675 m!3166685))

(declare-fun m!3166887 () Bool)

(assert (=> d!796641 m!3166887))

(assert (=> d!796641 m!3166763))

(assert (=> b!2751746 d!796641))

(declare-fun d!796643 () Bool)

(declare-fun validCacheMapDown!381 (MutableMap!3613) Bool)

(assert (=> d!796643 (= (valid!2874 cacheDown!939) (validCacheMapDown!381 (cache!3756 cacheDown!939)))))

(declare-fun bs!490432 () Bool)

(assert (= bs!490432 d!796643))

(declare-fun m!3166889 () Bool)

(assert (=> bs!490432 m!3166889))

(assert (=> b!2751748 d!796643))

(declare-fun d!796645 () Bool)

(declare-fun e!1734944 () Bool)

(assert (=> d!796645 e!1734944))

(declare-fun res!1153751 () Bool)

(assert (=> d!796645 (=> (not res!1153751) (not e!1734944))))

(declare-fun lt!973507 () tuple3!4588)

(assert (=> d!796645 (= res!1153751 (valid!2875 (_2!18673 lt!973507)))))

(assert (=> d!796645 (= lt!973507 (choose!16095 (ite c!445208 (_2!18672 lt!973416) (_2!18672 lt!973404)) (ite c!445208 (_3!2763 lt!973416) (_3!2763 lt!973404)) (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419))))

(assert (=> d!796645 (= (++!7885 lt!973411 lt!973396) (list!12031 input!5495))))

(assert (=> d!796645 (= (findLongestMatchInnerZipperFastMem!5 (ite c!445208 (_2!18672 lt!973416) (_2!18672 lt!973404)) (ite c!445208 (_3!2763 lt!973416) (_3!2763 lt!973404)) (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419) lt!973507)))

(declare-fun b!2751886 () Bool)

(declare-fun res!1153752 () Bool)

(assert (=> b!2751886 (=> (not res!1153752) (not e!1734944))))

(assert (=> b!2751886 (= res!1153752 (valid!2874 (_3!2764 lt!973507)))))

(declare-fun b!2751887 () Bool)

(assert (=> b!2751887 (= e!1734944 (= (_1!18673 lt!973507) (findLongestMatchInnerZipperFast!7 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419)))))

(assert (= (and d!796645 res!1153751) b!2751886))

(assert (= (and b!2751886 res!1153752) b!2751887))

(declare-fun m!3166891 () Bool)

(assert (=> d!796645 m!3166891))

(declare-fun m!3166893 () Bool)

(assert (=> d!796645 m!3166893))

(assert (=> d!796645 m!3166679))

(assert (=> d!796645 m!3166645))

(declare-fun m!3166895 () Bool)

(assert (=> b!2751886 m!3166895))

(assert (=> b!2751887 m!3166657))

(assert (=> bm!177659 d!796645))

(declare-fun d!796647 () Bool)

(assert (=> d!796647 (= lt!973415 Nil!31842)))

(declare-fun lt!973510 () Unit!45601)

(declare-fun choose!16102 (List!31942 List!31942 List!31942) Unit!45601)

(assert (=> d!796647 (= lt!973510 (choose!16102 lt!973415 Nil!31842 lt!973415))))

(assert (=> d!796647 (isPrefix!2525 lt!973415 lt!973415)))

(assert (=> d!796647 (= (lemmaIsPrefixSameLengthThenSameList!433 lt!973415 Nil!31842 lt!973415) lt!973510)))

(declare-fun bs!490433 () Bool)

(assert (= bs!490433 d!796647))

(declare-fun m!3166897 () Bool)

(assert (=> bs!490433 m!3166897))

(assert (=> bs!490433 m!3166601))

(assert (=> bm!177662 d!796647))

(declare-fun d!796649 () Bool)

(assert (=> d!796649 (= (valid!2874 (_3!2764 lt!973407)) (validCacheMapDown!381 (cache!3756 (_3!2764 lt!973407))))))

(declare-fun bs!490434 () Bool)

(assert (= bs!490434 d!796649))

(declare-fun m!3166899 () Bool)

(assert (=> bs!490434 m!3166899))

(assert (=> b!2751758 d!796649))

(declare-fun bm!177696 () Bool)

(declare-fun call!177701 () C!16256)

(assert (=> bm!177696 (= call!177701 (apply!7436 input!5495 0))))

(declare-fun b!2751912 () Bool)

(declare-fun e!1734962 () Unit!45601)

(declare-fun Unit!45607 () Unit!45601)

(assert (=> b!2751912 (= e!1734962 Unit!45607)))

(declare-fun lt!973613 () List!31942)

(assert (=> b!2751912 (= lt!973613 (list!12031 input!5495))))

(declare-fun lt!973597 () List!31942)

(assert (=> b!2751912 (= lt!973597 (list!12031 input!5495))))

(declare-fun lt!973605 () Unit!45601)

(declare-fun call!177703 () Unit!45601)

(assert (=> b!2751912 (= lt!973605 call!177703)))

(declare-fun call!177706 () Bool)

(assert (=> b!2751912 call!177706))

(declare-fun lt!973610 () Unit!45601)

(assert (=> b!2751912 (= lt!973610 lt!973605)))

(declare-fun lt!973634 () List!31942)

(assert (=> b!2751912 (= lt!973634 (list!12031 input!5495))))

(declare-fun lt!973619 () Unit!45601)

(declare-fun call!177705 () Unit!45601)

(assert (=> b!2751912 (= lt!973619 call!177705)))

(assert (=> b!2751912 (= lt!973634 Nil!31842)))

(declare-fun lt!973622 () Unit!45601)

(assert (=> b!2751912 (= lt!973622 lt!973619)))

(assert (=> b!2751912 false))

(declare-fun d!796651 () Bool)

(declare-fun lt!973604 () Int)

(declare-fun findLongestMatchInnerZipper!2 ((InoxSet Context!4534) List!31942 Int List!31942 List!31942 Int) tuple2!31822)

(assert (=> d!796651 (= (size!24603 (_1!18677 (findLongestMatchInnerZipper!2 z!3597 Nil!31842 0 lt!973415 (list!12031 input!5495) lt!973419))) lt!973604)))

(declare-fun e!1734959 () Int)

(assert (=> d!796651 (= lt!973604 e!1734959)))

(declare-fun c!445266 () Bool)

(assert (=> d!796651 (= c!445266 (lostCauseZipper!415 z!3597))))

(declare-fun lt!973629 () Unit!45601)

(declare-fun Unit!45608 () Unit!45601)

(assert (=> d!796651 (= lt!973629 Unit!45608)))

(assert (=> d!796651 (= (getSuffix!1211 (list!12031 input!5495) Nil!31842) lt!973415)))

(declare-fun lt!973596 () Unit!45601)

(declare-fun lt!973609 () Unit!45601)

(assert (=> d!796651 (= lt!973596 lt!973609)))

(declare-fun lt!973618 () List!31942)

(assert (=> d!796651 (= lt!973415 lt!973618)))

(assert (=> d!796651 (= lt!973609 (lemmaSamePrefixThenSameSuffix!1113 Nil!31842 lt!973415 Nil!31842 lt!973618 (list!12031 input!5495)))))

(assert (=> d!796651 (= lt!973618 (getSuffix!1211 (list!12031 input!5495) Nil!31842))))

(declare-fun lt!973621 () Unit!45601)

(declare-fun lt!973630 () Unit!45601)

(assert (=> d!796651 (= lt!973621 lt!973630)))

(assert (=> d!796651 (isPrefix!2525 Nil!31842 (++!7885 Nil!31842 lt!973415))))

(assert (=> d!796651 (= lt!973630 (lemmaConcatTwoListThenFirstIsPrefix!1639 Nil!31842 lt!973415))))

(assert (=> d!796651 (= (++!7885 Nil!31842 lt!973415) (list!12031 input!5495))))

(assert (=> d!796651 (= (findLongestMatchInnerZipperFast!7 z!3597 Nil!31842 0 lt!973415 input!5495 lt!973419) lt!973604)))

(declare-fun b!2751913 () Bool)

(declare-fun e!1734961 () Int)

(assert (=> b!2751913 (= e!1734961 0)))

(declare-fun b!2751914 () Bool)

(assert (=> b!2751914 (= e!1734961 0)))

(declare-fun b!2751915 () Bool)

(declare-fun e!1734957 () Int)

(declare-fun call!177708 () Int)

(assert (=> b!2751915 (= e!1734957 call!177708)))

(declare-fun lt!973615 () tuple2!31818)

(declare-fun call!177709 () List!31942)

(declare-fun c!445270 () Bool)

(declare-fun bm!177697 () Bool)

(assert (=> bm!177697 (= call!177709 (list!12031 (ite c!445270 input!5495 (_1!18675 lt!973615))))))

(declare-fun lt!973624 () List!31942)

(declare-fun bm!177698 () Bool)

(declare-fun lt!973623 () List!31942)

(assert (=> bm!177698 (= call!177703 (lemmaIsPrefixRefl!1652 (ite c!445270 lt!973624 lt!973613) (ite c!445270 lt!973623 lt!973597)))))

(declare-fun bm!177699 () Bool)

(declare-fun call!177707 () Bool)

(assert (=> bm!177699 (= call!177707 (nullableZipper!604 z!3597))))

(declare-fun b!2751916 () Bool)

(declare-fun e!1734958 () Int)

(assert (=> b!2751916 (= e!1734959 e!1734958)))

(assert (=> b!2751916 (= c!445270 (= 0 lt!973419))))

(declare-fun bm!177700 () Bool)

(assert (=> bm!177700 (= call!177706 (isPrefix!2525 (ite c!445270 lt!973624 lt!973613) (ite c!445270 lt!973623 lt!973597)))))

(declare-fun b!2751917 () Bool)

(declare-fun e!1734960 () List!31942)

(assert (=> b!2751917 (= e!1734960 (list!12031 input!5495))))

(declare-fun bm!177701 () Bool)

(declare-fun call!177704 () (InoxSet Context!4534))

(declare-fun derivationStepZipper!343 ((InoxSet Context!4534) C!16256) (InoxSet Context!4534))

(assert (=> bm!177701 (= call!177704 (derivationStepZipper!343 z!3597 call!177701))))

(declare-fun bm!177702 () Bool)

(declare-fun call!177702 () List!31942)

(assert (=> bm!177702 (= call!177702 (tail!4359 lt!973415))))

(declare-fun bm!177703 () Bool)

(declare-fun c!445265 () Bool)

(assert (=> bm!177703 (= c!445265 c!445270)))

(declare-fun lt!973612 () List!31942)

(assert (=> bm!177703 (= call!177705 (lemmaIsPrefixSameLengthThenSameList!433 (ite c!445270 lt!973612 lt!973634) Nil!31842 e!1734960))))

(declare-fun call!177710 () List!31942)

(declare-fun bm!177704 () Bool)

(assert (=> bm!177704 (= call!177708 (findLongestMatchInnerZipperFast!7 call!177704 call!177710 (+ 0 1) call!177702 input!5495 lt!973419))))

(declare-fun b!2751918 () Bool)

(declare-fun lt!973599 () Int)

(assert (=> b!2751918 (= e!1734957 (ite (= lt!973599 0) 0 lt!973599))))

(assert (=> b!2751918 (= lt!973599 call!177708)))

(declare-fun b!2751919 () Bool)

(declare-fun c!445269 () Bool)

(assert (=> b!2751919 (= c!445269 call!177707)))

(declare-fun lt!973633 () Unit!45601)

(declare-fun lt!973602 () Unit!45601)

(assert (=> b!2751919 (= lt!973633 lt!973602)))

(declare-fun lt!973600 () C!16256)

(declare-fun lt!973627 () List!31942)

(declare-fun lt!973606 () List!31942)

(assert (=> b!2751919 (= (++!7885 (++!7885 Nil!31842 (Cons!31842 lt!973600 Nil!31842)) lt!973627) lt!973606)))

(assert (=> b!2751919 (= lt!973602 (lemmaMoveElementToOtherListKeepsConcatEq!842 Nil!31842 lt!973600 lt!973627 lt!973606))))

(assert (=> b!2751919 (= lt!973606 (list!12031 input!5495))))

(assert (=> b!2751919 (= lt!973627 (tail!4359 lt!973415))))

(assert (=> b!2751919 (= lt!973600 (apply!7436 input!5495 0))))

(declare-fun lt!973616 () Unit!45601)

(declare-fun lt!973611 () Unit!45601)

(assert (=> b!2751919 (= lt!973616 lt!973611)))

(declare-fun lt!973631 () List!31942)

(assert (=> b!2751919 (isPrefix!2525 (++!7885 Nil!31842 (Cons!31842 (head!6121 (getSuffix!1211 lt!973631 Nil!31842)) Nil!31842)) lt!973631)))

(assert (=> b!2751919 (= lt!973611 (lemmaAddHeadSuffixToPrefixStillPrefix!430 Nil!31842 lt!973631))))

(assert (=> b!2751919 (= lt!973631 (list!12031 input!5495))))

(declare-fun lt!973608 () Unit!45601)

(assert (=> b!2751919 (= lt!973608 e!1734962)))

(declare-fun c!445268 () Bool)

(assert (=> b!2751919 (= c!445268 (= (size!24603 Nil!31842) (size!24604 input!5495)))))

(declare-fun lt!973635 () Unit!45601)

(declare-fun lt!973626 () Unit!45601)

(assert (=> b!2751919 (= lt!973635 lt!973626)))

(declare-fun lt!973595 () List!31942)

(assert (=> b!2751919 (<= (size!24603 Nil!31842) (size!24603 lt!973595))))

(assert (=> b!2751919 (= lt!973626 (lemmaIsPrefixThenSmallerEqSize!233 Nil!31842 lt!973595))))

(assert (=> b!2751919 (= lt!973595 (list!12031 input!5495))))

(declare-fun lt!973620 () Unit!45601)

(declare-fun lt!973628 () Unit!45601)

(assert (=> b!2751919 (= lt!973620 lt!973628)))

(declare-fun lt!973601 () List!31942)

(assert (=> b!2751919 (= (head!6121 (drop!1680 lt!973601 0)) (apply!7437 lt!973601 0))))

(assert (=> b!2751919 (= lt!973628 (lemmaDropApply!886 lt!973601 0))))

(assert (=> b!2751919 (= lt!973601 (list!12031 input!5495))))

(declare-fun lt!973625 () Unit!45601)

(declare-fun lt!973632 () Unit!45601)

(assert (=> b!2751919 (= lt!973625 lt!973632)))

(declare-fun lt!973607 () List!31942)

(declare-fun lt!973603 () List!31942)

(assert (=> b!2751919 (and (= lt!973607 Nil!31842) (= lt!973603 lt!973415))))

(assert (=> b!2751919 (= lt!973632 (lemmaConcatSameAndSameSizesThenSameLists!312 lt!973607 lt!973603 Nil!31842 lt!973415))))

(assert (=> b!2751919 (= lt!973603 (list!12031 (_2!18675 lt!973615)))))

(assert (=> b!2751919 (= lt!973607 call!177709)))

(assert (=> b!2751919 (= lt!973615 (splitAt!76 input!5495 0))))

(assert (=> b!2751919 (= e!1734958 e!1734957)))

(declare-fun b!2751920 () Bool)

(assert (=> b!2751920 (= e!1734960 call!177709)))

(declare-fun b!2751921 () Bool)

(declare-fun c!445267 () Bool)

(assert (=> b!2751921 (= c!445267 call!177707)))

(declare-fun lt!973614 () Unit!45601)

(declare-fun lt!973598 () Unit!45601)

(assert (=> b!2751921 (= lt!973614 lt!973598)))

(assert (=> b!2751921 (= lt!973612 Nil!31842)))

(assert (=> b!2751921 (= lt!973598 call!177705)))

(assert (=> b!2751921 (= lt!973612 call!177709)))

(declare-fun lt!973636 () Unit!45601)

(declare-fun lt!973617 () Unit!45601)

(assert (=> b!2751921 (= lt!973636 lt!973617)))

(assert (=> b!2751921 call!177706))

(assert (=> b!2751921 (= lt!973617 call!177703)))

(assert (=> b!2751921 (= lt!973623 call!177709)))

(assert (=> b!2751921 (= lt!973624 call!177709)))

(assert (=> b!2751921 (= e!1734958 e!1734961)))

(declare-fun b!2751922 () Bool)

(declare-fun Unit!45609 () Unit!45601)

(assert (=> b!2751922 (= e!1734962 Unit!45609)))

(declare-fun b!2751923 () Bool)

(assert (=> b!2751923 (= e!1734959 0)))

(declare-fun bm!177705 () Bool)

(assert (=> bm!177705 (= call!177710 (++!7885 Nil!31842 (Cons!31842 call!177701 Nil!31842)))))

(assert (= (and d!796651 c!445266) b!2751923))

(assert (= (and d!796651 (not c!445266)) b!2751916))

(assert (= (and b!2751916 c!445270) b!2751921))

(assert (= (and b!2751916 (not c!445270)) b!2751919))

(assert (= (and b!2751921 c!445267) b!2751913))

(assert (= (and b!2751921 (not c!445267)) b!2751914))

(assert (= (and b!2751919 c!445268) b!2751912))

(assert (= (and b!2751919 (not c!445268)) b!2751922))

(assert (= (and b!2751919 c!445269) b!2751918))

(assert (= (and b!2751919 (not c!445269)) b!2751915))

(assert (= (or b!2751918 b!2751915) bm!177702))

(assert (= (or b!2751918 b!2751915) bm!177696))

(assert (= (or b!2751918 b!2751915) bm!177705))

(assert (= (or b!2751918 b!2751915) bm!177701))

(assert (= (or b!2751918 b!2751915) bm!177704))

(assert (= (or b!2751921 b!2751912) bm!177700))

(assert (= (or b!2751921 b!2751919) bm!177697))

(assert (= (or b!2751921 b!2751912) bm!177698))

(assert (= (or b!2751921 b!2751919) bm!177699))

(assert (= (or b!2751921 b!2751912) bm!177703))

(assert (= (and bm!177703 c!445265) b!2751920))

(assert (= (and bm!177703 (not c!445265)) b!2751917))

(declare-fun m!3166901 () Bool)

(assert (=> bm!177703 m!3166901))

(declare-fun m!3166903 () Bool)

(assert (=> b!2751919 m!3166903))

(declare-fun m!3166905 () Bool)

(assert (=> b!2751919 m!3166905))

(assert (=> b!2751919 m!3166671))

(declare-fun m!3166907 () Bool)

(assert (=> b!2751919 m!3166907))

(assert (=> b!2751919 m!3166687))

(assert (=> b!2751919 m!3166645))

(declare-fun m!3166909 () Bool)

(assert (=> b!2751919 m!3166909))

(declare-fun m!3166911 () Bool)

(assert (=> b!2751919 m!3166911))

(declare-fun m!3166913 () Bool)

(assert (=> b!2751919 m!3166913))

(declare-fun m!3166915 () Bool)

(assert (=> b!2751919 m!3166915))

(declare-fun m!3166917 () Bool)

(assert (=> b!2751919 m!3166917))

(declare-fun m!3166919 () Bool)

(assert (=> b!2751919 m!3166919))

(declare-fun m!3166921 () Bool)

(assert (=> b!2751919 m!3166921))

(assert (=> b!2751919 m!3166633))

(declare-fun m!3166923 () Bool)

(assert (=> b!2751919 m!3166923))

(assert (=> b!2751919 m!3166913))

(assert (=> b!2751919 m!3166923))

(declare-fun m!3166925 () Bool)

(assert (=> b!2751919 m!3166925))

(assert (=> b!2751919 m!3166683))

(assert (=> b!2751919 m!3166603))

(assert (=> b!2751919 m!3166909))

(declare-fun m!3166927 () Bool)

(assert (=> b!2751919 m!3166927))

(declare-fun m!3166929 () Bool)

(assert (=> b!2751919 m!3166929))

(assert (=> b!2751919 m!3166907))

(declare-fun m!3166931 () Bool)

(assert (=> b!2751919 m!3166931))

(declare-fun m!3166933 () Bool)

(assert (=> b!2751919 m!3166933))

(declare-fun m!3166935 () Bool)

(assert (=> bm!177698 m!3166935))

(assert (=> bm!177699 m!3166627))

(declare-fun m!3166937 () Bool)

(assert (=> bm!177700 m!3166937))

(assert (=> d!796651 m!3166649))

(assert (=> d!796651 m!3166645))

(declare-fun m!3166939 () Bool)

(assert (=> d!796651 m!3166939))

(assert (=> d!796651 m!3166645))

(assert (=> d!796651 m!3166631))

(declare-fun m!3166941 () Bool)

(assert (=> d!796651 m!3166941))

(assert (=> d!796651 m!3166645))

(declare-fun m!3166943 () Bool)

(assert (=> d!796651 m!3166943))

(assert (=> d!796651 m!3166649))

(assert (=> d!796651 m!3166719))

(assert (=> d!796651 m!3166645))

(declare-fun m!3166945 () Bool)

(assert (=> d!796651 m!3166945))

(assert (=> d!796651 m!3166651))

(declare-fun m!3166947 () Bool)

(assert (=> bm!177705 m!3166947))

(assert (=> b!2751917 m!3166645))

(assert (=> b!2751912 m!3166645))

(declare-fun m!3166949 () Bool)

(assert (=> bm!177704 m!3166949))

(declare-fun m!3166951 () Bool)

(assert (=> bm!177697 m!3166951))

(assert (=> bm!177702 m!3166683))

(declare-fun m!3166953 () Bool)

(assert (=> bm!177701 m!3166953))

(assert (=> bm!177696 m!3166687))

(assert (=> b!2751745 d!796651))

(declare-fun d!796653 () Bool)

(assert (=> d!796653 (= (valid!2874 (ite c!445208 (_3!2764 lt!973394) (_3!2764 lt!973393))) (validCacheMapDown!381 (cache!3756 (ite c!445208 (_3!2764 lt!973394) (_3!2764 lt!973393)))))))

(declare-fun bs!490435 () Bool)

(assert (= bs!490435 d!796653))

(declare-fun m!3166955 () Bool)

(assert (=> bs!490435 m!3166955))

(assert (=> bm!177664 d!796653))

(declare-fun d!796655 () Bool)

(declare-fun c!445273 () Bool)

(assert (=> d!796655 (= c!445273 ((_ is Node!9931) (c!445212 input!5495)))))

(declare-fun e!1734967 () Bool)

(assert (=> d!796655 (= (inv!43234 (c!445212 input!5495)) e!1734967)))

(declare-fun b!2751930 () Bool)

(declare-fun inv!43239 (Conc!9931) Bool)

(assert (=> b!2751930 (= e!1734967 (inv!43239 (c!445212 input!5495)))))

(declare-fun b!2751931 () Bool)

(declare-fun e!1734968 () Bool)

(assert (=> b!2751931 (= e!1734967 e!1734968)))

(declare-fun res!1153755 () Bool)

(assert (=> b!2751931 (= res!1153755 (not ((_ is Leaf!15124) (c!445212 input!5495))))))

(assert (=> b!2751931 (=> res!1153755 e!1734968)))

(declare-fun b!2751932 () Bool)

(declare-fun inv!43240 (Conc!9931) Bool)

(assert (=> b!2751932 (= e!1734968 (inv!43240 (c!445212 input!5495)))))

(assert (= (and d!796655 c!445273) b!2751930))

(assert (= (and d!796655 (not c!445273)) b!2751931))

(assert (= (and b!2751931 (not res!1153755)) b!2751932))

(declare-fun m!3166957 () Bool)

(assert (=> b!2751930 m!3166957))

(declare-fun m!3166959 () Bool)

(assert (=> b!2751932 m!3166959))

(assert (=> b!2751753 d!796655))

(declare-fun d!796657 () Bool)

(assert (=> d!796657 (= (valid!2875 (ite c!445208 (_2!18673 lt!973394) (_2!18673 lt!973393))) (validCacheMapUp!350 (cache!3755 (ite c!445208 (_2!18673 lt!973394) (_2!18673 lt!973393)))))))

(declare-fun bs!490436 () Bool)

(assert (= bs!490436 d!796657))

(declare-fun m!3166961 () Bool)

(assert (=> bs!490436 m!3166961))

(assert (=> bm!177666 d!796657))

(declare-fun d!796659 () Bool)

(assert (=> d!796659 (isPrefix!2525 lt!973415 lt!973415)))

(declare-fun lt!973639 () Unit!45601)

(declare-fun choose!16103 (List!31942 List!31942) Unit!45601)

(assert (=> d!796659 (= lt!973639 (choose!16103 lt!973415 lt!973415))))

(assert (=> d!796659 (= (lemmaIsPrefixRefl!1652 lt!973415 lt!973415) lt!973639)))

(declare-fun bs!490437 () Bool)

(assert (= bs!490437 d!796659))

(assert (=> bs!490437 m!3166601))

(declare-fun m!3166963 () Bool)

(assert (=> bs!490437 m!3166963))

(assert (=> bm!177661 d!796659))

(assert (=> b!2751742 d!796621))

(declare-fun d!796661 () Bool)

(assert (=> d!796661 (= (valid!2874 (_3!2764 lt!973399)) (validCacheMapDown!381 (cache!3756 (_3!2764 lt!973399))))))

(declare-fun bs!490438 () Bool)

(assert (= bs!490438 d!796661))

(declare-fun m!3166965 () Bool)

(assert (=> bs!490438 m!3166965))

(assert (=> b!2751731 d!796661))

(declare-fun bm!177706 () Bool)

(declare-fun call!177711 () C!16256)

(assert (=> bm!177706 (= call!177711 (apply!7436 input!5495 1))))

(declare-fun b!2751933 () Bool)

(declare-fun e!1734974 () Unit!45601)

(declare-fun Unit!45610 () Unit!45601)

(assert (=> b!2751933 (= e!1734974 Unit!45610)))

(declare-fun lt!973658 () List!31942)

(assert (=> b!2751933 (= lt!973658 (list!12031 input!5495))))

(declare-fun lt!973642 () List!31942)

(assert (=> b!2751933 (= lt!973642 (list!12031 input!5495))))

(declare-fun lt!973650 () Unit!45601)

(declare-fun call!177713 () Unit!45601)

(assert (=> b!2751933 (= lt!973650 call!177713)))

(declare-fun call!177716 () Bool)

(assert (=> b!2751933 call!177716))

(declare-fun lt!973655 () Unit!45601)

(assert (=> b!2751933 (= lt!973655 lt!973650)))

(declare-fun lt!973679 () List!31942)

(assert (=> b!2751933 (= lt!973679 (list!12031 input!5495))))

(declare-fun lt!973664 () Unit!45601)

(declare-fun call!177715 () Unit!45601)

(assert (=> b!2751933 (= lt!973664 call!177715)))

(assert (=> b!2751933 (= lt!973679 lt!973411)))

(declare-fun lt!973667 () Unit!45601)

(assert (=> b!2751933 (= lt!973667 lt!973664)))

(assert (=> b!2751933 false))

(declare-fun lt!973649 () Int)

(declare-fun d!796663 () Bool)

(assert (=> d!796663 (= (size!24603 (_1!18677 (findLongestMatchInnerZipper!2 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 (list!12031 input!5495) lt!973419))) lt!973649)))

(declare-fun e!1734971 () Int)

(assert (=> d!796663 (= lt!973649 e!1734971)))

(declare-fun c!445275 () Bool)

(assert (=> d!796663 (= c!445275 (lostCauseZipper!415 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404))))))

(declare-fun lt!973674 () Unit!45601)

(declare-fun Unit!45611 () Unit!45601)

(assert (=> d!796663 (= lt!973674 Unit!45611)))

(assert (=> d!796663 (= (getSuffix!1211 (list!12031 input!5495) lt!973411) lt!973396)))

(declare-fun lt!973641 () Unit!45601)

(declare-fun lt!973654 () Unit!45601)

(assert (=> d!796663 (= lt!973641 lt!973654)))

(declare-fun lt!973663 () List!31942)

(assert (=> d!796663 (= lt!973396 lt!973663)))

(assert (=> d!796663 (= lt!973654 (lemmaSamePrefixThenSameSuffix!1113 lt!973411 lt!973396 lt!973411 lt!973663 (list!12031 input!5495)))))

(assert (=> d!796663 (= lt!973663 (getSuffix!1211 (list!12031 input!5495) lt!973411))))

(declare-fun lt!973666 () Unit!45601)

(declare-fun lt!973675 () Unit!45601)

(assert (=> d!796663 (= lt!973666 lt!973675)))

(assert (=> d!796663 (isPrefix!2525 lt!973411 (++!7885 lt!973411 lt!973396))))

(assert (=> d!796663 (= lt!973675 (lemmaConcatTwoListThenFirstIsPrefix!1639 lt!973411 lt!973396))))

(assert (=> d!796663 (= (++!7885 lt!973411 lt!973396) (list!12031 input!5495))))

(assert (=> d!796663 (= (findLongestMatchInnerZipperFast!7 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) lt!973411 1 lt!973396 input!5495 lt!973419) lt!973649)))

(declare-fun b!2751934 () Bool)

(declare-fun e!1734973 () Int)

(assert (=> b!2751934 (= e!1734973 1)))

(declare-fun b!2751935 () Bool)

(assert (=> b!2751935 (= e!1734973 0)))

(declare-fun b!2751936 () Bool)

(declare-fun e!1734969 () Int)

(declare-fun call!177718 () Int)

(assert (=> b!2751936 (= e!1734969 call!177718)))

(declare-fun bm!177707 () Bool)

(declare-fun call!177719 () List!31942)

(declare-fun lt!973660 () tuple2!31818)

(declare-fun c!445279 () Bool)

(assert (=> bm!177707 (= call!177719 (list!12031 (ite c!445279 input!5495 (_1!18675 lt!973660))))))

(declare-fun lt!973668 () List!31942)

(declare-fun bm!177708 () Bool)

(declare-fun lt!973669 () List!31942)

(assert (=> bm!177708 (= call!177713 (lemmaIsPrefixRefl!1652 (ite c!445279 lt!973669 lt!973658) (ite c!445279 lt!973668 lt!973642)))))

(declare-fun bm!177709 () Bool)

(declare-fun call!177717 () Bool)

(assert (=> bm!177709 (= call!177717 (nullableZipper!604 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404))))))

(declare-fun b!2751937 () Bool)

(declare-fun e!1734970 () Int)

(assert (=> b!2751937 (= e!1734971 e!1734970)))

(assert (=> b!2751937 (= c!445279 (= 1 lt!973419))))

(declare-fun bm!177710 () Bool)

(assert (=> bm!177710 (= call!177716 (isPrefix!2525 (ite c!445279 lt!973669 lt!973658) (ite c!445279 lt!973668 lt!973642)))))

(declare-fun b!2751938 () Bool)

(declare-fun e!1734972 () List!31942)

(assert (=> b!2751938 (= e!1734972 (list!12031 input!5495))))

(declare-fun bm!177711 () Bool)

(declare-fun call!177714 () (InoxSet Context!4534))

(assert (=> bm!177711 (= call!177714 (derivationStepZipper!343 (ite c!445208 (_1!18672 lt!973416) (_1!18672 lt!973404)) call!177711))))

(declare-fun bm!177712 () Bool)

(declare-fun call!177712 () List!31942)

(assert (=> bm!177712 (= call!177712 (tail!4359 lt!973396))))

(declare-fun bm!177713 () Bool)

(declare-fun c!445274 () Bool)

(assert (=> bm!177713 (= c!445274 c!445279)))

(declare-fun lt!973657 () List!31942)

(assert (=> bm!177713 (= call!177715 (lemmaIsPrefixSameLengthThenSameList!433 (ite c!445279 lt!973657 lt!973679) lt!973411 e!1734972))))

(declare-fun call!177720 () List!31942)

(declare-fun bm!177714 () Bool)

(assert (=> bm!177714 (= call!177718 (findLongestMatchInnerZipperFast!7 call!177714 call!177720 (+ 1 1) call!177712 input!5495 lt!973419))))

(declare-fun b!2751939 () Bool)

(declare-fun lt!973644 () Int)

(assert (=> b!2751939 (= e!1734969 (ite (= lt!973644 0) 1 lt!973644))))

(assert (=> b!2751939 (= lt!973644 call!177718)))

(declare-fun b!2751940 () Bool)

(declare-fun c!445278 () Bool)

(assert (=> b!2751940 (= c!445278 call!177717)))

(declare-fun lt!973678 () Unit!45601)

(declare-fun lt!973647 () Unit!45601)

(assert (=> b!2751940 (= lt!973678 lt!973647)))

(declare-fun lt!973651 () List!31942)

(declare-fun lt!973645 () C!16256)

(declare-fun lt!973672 () List!31942)

(assert (=> b!2751940 (= (++!7885 (++!7885 lt!973411 (Cons!31842 lt!973645 Nil!31842)) lt!973672) lt!973651)))

(assert (=> b!2751940 (= lt!973647 (lemmaMoveElementToOtherListKeepsConcatEq!842 lt!973411 lt!973645 lt!973672 lt!973651))))

(assert (=> b!2751940 (= lt!973651 (list!12031 input!5495))))

(assert (=> b!2751940 (= lt!973672 (tail!4359 lt!973396))))

(assert (=> b!2751940 (= lt!973645 (apply!7436 input!5495 1))))

(declare-fun lt!973661 () Unit!45601)

(declare-fun lt!973656 () Unit!45601)

(assert (=> b!2751940 (= lt!973661 lt!973656)))

(declare-fun lt!973676 () List!31942)

(assert (=> b!2751940 (isPrefix!2525 (++!7885 lt!973411 (Cons!31842 (head!6121 (getSuffix!1211 lt!973676 lt!973411)) Nil!31842)) lt!973676)))

(assert (=> b!2751940 (= lt!973656 (lemmaAddHeadSuffixToPrefixStillPrefix!430 lt!973411 lt!973676))))

(assert (=> b!2751940 (= lt!973676 (list!12031 input!5495))))

(declare-fun lt!973653 () Unit!45601)

(assert (=> b!2751940 (= lt!973653 e!1734974)))

(declare-fun c!445277 () Bool)

(assert (=> b!2751940 (= c!445277 (= (size!24603 lt!973411) (size!24604 input!5495)))))

(declare-fun lt!973680 () Unit!45601)

(declare-fun lt!973671 () Unit!45601)

(assert (=> b!2751940 (= lt!973680 lt!973671)))

(declare-fun lt!973640 () List!31942)

(assert (=> b!2751940 (<= (size!24603 lt!973411) (size!24603 lt!973640))))

(assert (=> b!2751940 (= lt!973671 (lemmaIsPrefixThenSmallerEqSize!233 lt!973411 lt!973640))))

(assert (=> b!2751940 (= lt!973640 (list!12031 input!5495))))

(declare-fun lt!973665 () Unit!45601)

(declare-fun lt!973673 () Unit!45601)

(assert (=> b!2751940 (= lt!973665 lt!973673)))

(declare-fun lt!973646 () List!31942)

(assert (=> b!2751940 (= (head!6121 (drop!1680 lt!973646 1)) (apply!7437 lt!973646 1))))

(assert (=> b!2751940 (= lt!973673 (lemmaDropApply!886 lt!973646 1))))

(assert (=> b!2751940 (= lt!973646 (list!12031 input!5495))))

(declare-fun lt!973670 () Unit!45601)

(declare-fun lt!973677 () Unit!45601)

(assert (=> b!2751940 (= lt!973670 lt!973677)))

(declare-fun lt!973652 () List!31942)

(declare-fun lt!973648 () List!31942)

(assert (=> b!2751940 (and (= lt!973652 lt!973411) (= lt!973648 lt!973396))))

(assert (=> b!2751940 (= lt!973677 (lemmaConcatSameAndSameSizesThenSameLists!312 lt!973652 lt!973648 lt!973411 lt!973396))))

(assert (=> b!2751940 (= lt!973648 (list!12031 (_2!18675 lt!973660)))))

(assert (=> b!2751940 (= lt!973652 call!177719)))

(assert (=> b!2751940 (= lt!973660 (splitAt!76 input!5495 1))))

(assert (=> b!2751940 (= e!1734970 e!1734969)))

(declare-fun b!2751941 () Bool)

(assert (=> b!2751941 (= e!1734972 call!177719)))

(declare-fun b!2751942 () Bool)

(declare-fun c!445276 () Bool)

(assert (=> b!2751942 (= c!445276 call!177717)))

(declare-fun lt!973659 () Unit!45601)

(declare-fun lt!973643 () Unit!45601)

(assert (=> b!2751942 (= lt!973659 lt!973643)))

(assert (=> b!2751942 (= lt!973657 lt!973411)))

(assert (=> b!2751942 (= lt!973643 call!177715)))

(assert (=> b!2751942 (= lt!973657 call!177719)))

(declare-fun lt!973681 () Unit!45601)

(declare-fun lt!973662 () Unit!45601)

(assert (=> b!2751942 (= lt!973681 lt!973662)))

(assert (=> b!2751942 call!177716))

(assert (=> b!2751942 (= lt!973662 call!177713)))

(assert (=> b!2751942 (= lt!973668 call!177719)))

(assert (=> b!2751942 (= lt!973669 call!177719)))

(assert (=> b!2751942 (= e!1734970 e!1734973)))

(declare-fun b!2751943 () Bool)

(declare-fun Unit!45612 () Unit!45601)

(assert (=> b!2751943 (= e!1734974 Unit!45612)))

(declare-fun b!2751944 () Bool)

(assert (=> b!2751944 (= e!1734971 0)))

(declare-fun bm!177715 () Bool)

(assert (=> bm!177715 (= call!177720 (++!7885 lt!973411 (Cons!31842 call!177711 Nil!31842)))))

(assert (= (and d!796663 c!445275) b!2751944))

(assert (= (and d!796663 (not c!445275)) b!2751937))

(assert (= (and b!2751937 c!445279) b!2751942))

(assert (= (and b!2751937 (not c!445279)) b!2751940))

(assert (= (and b!2751942 c!445276) b!2751934))

(assert (= (and b!2751942 (not c!445276)) b!2751935))

(assert (= (and b!2751940 c!445277) b!2751933))

(assert (= (and b!2751940 (not c!445277)) b!2751943))

(assert (= (and b!2751940 c!445278) b!2751939))

(assert (= (and b!2751940 (not c!445278)) b!2751936))

(assert (= (or b!2751939 b!2751936) bm!177712))

(assert (= (or b!2751939 b!2751936) bm!177706))

(assert (= (or b!2751939 b!2751936) bm!177715))

(assert (= (or b!2751939 b!2751936) bm!177711))

(assert (= (or b!2751939 b!2751936) bm!177714))

(assert (= (or b!2751942 b!2751933) bm!177710))

(assert (= (or b!2751942 b!2751940) bm!177707))

(assert (= (or b!2751942 b!2751933) bm!177708))

(assert (= (or b!2751942 b!2751940) bm!177709))

(assert (= (or b!2751942 b!2751933) bm!177713))

(assert (= (and bm!177713 c!445274) b!2751941))

(assert (= (and bm!177713 (not c!445274)) b!2751938))

(declare-fun m!3166967 () Bool)

(assert (=> bm!177713 m!3166967))

(declare-fun m!3166969 () Bool)

(assert (=> b!2751940 m!3166969))

(declare-fun m!3166971 () Bool)

(assert (=> b!2751940 m!3166971))

(declare-fun m!3166973 () Bool)

(assert (=> b!2751940 m!3166973))

(declare-fun m!3166975 () Bool)

(assert (=> b!2751940 m!3166975))

(declare-fun m!3166977 () Bool)

(assert (=> b!2751940 m!3166977))

(assert (=> b!2751940 m!3166645))

(declare-fun m!3166979 () Bool)

(assert (=> b!2751940 m!3166979))

(declare-fun m!3166981 () Bool)

(assert (=> b!2751940 m!3166981))

(declare-fun m!3166983 () Bool)

(assert (=> b!2751940 m!3166983))

(declare-fun m!3166985 () Bool)

(assert (=> b!2751940 m!3166985))

(declare-fun m!3166987 () Bool)

(assert (=> b!2751940 m!3166987))

(declare-fun m!3166989 () Bool)

(assert (=> b!2751940 m!3166989))

(declare-fun m!3166991 () Bool)

(assert (=> b!2751940 m!3166991))

(assert (=> b!2751940 m!3166633))

(declare-fun m!3166993 () Bool)

(assert (=> b!2751940 m!3166993))

(assert (=> b!2751940 m!3166983))

(assert (=> b!2751940 m!3166993))

(declare-fun m!3166995 () Bool)

(assert (=> b!2751940 m!3166995))

(declare-fun m!3166997 () Bool)

(assert (=> b!2751940 m!3166997))

(assert (=> b!2751940 m!3166875))

(assert (=> b!2751940 m!3166979))

(declare-fun m!3166999 () Bool)

(assert (=> b!2751940 m!3166999))

(declare-fun m!3167001 () Bool)

(assert (=> b!2751940 m!3167001))

(assert (=> b!2751940 m!3166975))

(declare-fun m!3167003 () Bool)

(assert (=> b!2751940 m!3167003))

(declare-fun m!3167005 () Bool)

(assert (=> b!2751940 m!3167005))

(declare-fun m!3167007 () Bool)

(assert (=> bm!177708 m!3167007))

(declare-fun m!3167009 () Bool)

(assert (=> bm!177709 m!3167009))

(declare-fun m!3167011 () Bool)

(assert (=> bm!177710 m!3167011))

(assert (=> d!796663 m!3166679))

(assert (=> d!796663 m!3166645))

(declare-fun m!3167013 () Bool)

(assert (=> d!796663 m!3167013))

(assert (=> d!796663 m!3166645))

(declare-fun m!3167015 () Bool)

(assert (=> d!796663 m!3167015))

(declare-fun m!3167017 () Bool)

(assert (=> d!796663 m!3167017))

(assert (=> d!796663 m!3166645))

(declare-fun m!3167019 () Bool)

(assert (=> d!796663 m!3167019))

(assert (=> d!796663 m!3166679))

(declare-fun m!3167021 () Bool)

(assert (=> d!796663 m!3167021))

(assert (=> d!796663 m!3166645))

(declare-fun m!3167023 () Bool)

(assert (=> d!796663 m!3167023))

(declare-fun m!3167025 () Bool)

(assert (=> d!796663 m!3167025))

(declare-fun m!3167027 () Bool)

(assert (=> bm!177715 m!3167027))

(assert (=> b!2751938 m!3166645))

(assert (=> b!2751933 m!3166645))

(declare-fun m!3167029 () Bool)

(assert (=> bm!177714 m!3167029))

(declare-fun m!3167031 () Bool)

(assert (=> bm!177707 m!3167031))

(assert (=> bm!177712 m!3166997))

(declare-fun m!3167033 () Bool)

(assert (=> bm!177711 m!3167033))

(assert (=> bm!177706 m!3166977))

(assert (=> bm!177665 d!796663))

(declare-fun bs!490439 () Bool)

(declare-fun d!796665 () Bool)

(assert (= bs!490439 (and d!796665 d!796581)))

(declare-fun lambda!100917 () Int)

(assert (=> bs!490439 (not (= lambda!100917 lambda!100912))))

(declare-fun bs!490440 () Bool)

(assert (= bs!490440 (and d!796665 b!2751782)))

(assert (=> bs!490440 (not (= lambda!100917 lambda!100913))))

(declare-fun bs!490441 () Bool)

(assert (= bs!490441 (and d!796665 b!2751783)))

(assert (=> bs!490441 (not (= lambda!100917 lambda!100914))))

(declare-fun exists!948 ((InoxSet Context!4534) Int) Bool)

(assert (=> d!796665 (= (nullableZipper!604 z!3597) (exists!948 z!3597 lambda!100917))))

(declare-fun bs!490442 () Bool)

(assert (= bs!490442 d!796665))

(declare-fun m!3167035 () Bool)

(assert (=> bs!490442 m!3167035))

(assert (=> bm!177660 d!796665))

(assert (=> b!2751740 d!796651))

(declare-fun d!796667 () Bool)

(assert (=> d!796667 (= (valid!2875 cacheUp!820) (validCacheMapUp!350 (cache!3755 cacheUp!820)))))

(declare-fun bs!490443 () Bool)

(assert (= bs!490443 d!796667))

(declare-fun m!3167037 () Bool)

(assert (=> bs!490443 m!3167037))

(assert (=> start!266720 d!796667))

(declare-fun d!796669 () Bool)

(declare-fun res!1153758 () Bool)

(declare-fun e!1734977 () Bool)

(assert (=> d!796669 (=> (not res!1153758) (not e!1734977))))

(assert (=> d!796669 (= res!1153758 ((_ is HashMap!3612) (cache!3755 cacheUp!820)))))

(assert (=> d!796669 (= (inv!43235 cacheUp!820) e!1734977)))

(declare-fun b!2751947 () Bool)

(assert (=> b!2751947 (= e!1734977 (validCacheMapUp!350 (cache!3755 cacheUp!820)))))

(assert (= (and d!796669 res!1153758) b!2751947))

(assert (=> b!2751947 m!3167037))

(assert (=> start!266720 d!796669))

(declare-fun d!796671 () Bool)

(declare-fun res!1153761 () Bool)

(declare-fun e!1734980 () Bool)

(assert (=> d!796671 (=> (not res!1153761) (not e!1734980))))

(assert (=> d!796671 (= res!1153761 ((_ is HashMap!3613) (cache!3756 cacheDown!939)))))

(assert (=> d!796671 (= (inv!43236 cacheDown!939) e!1734980)))

(declare-fun b!2751950 () Bool)

(assert (=> b!2751950 (= e!1734980 (validCacheMapDown!381 (cache!3756 cacheDown!939)))))

(assert (= (and d!796671 res!1153761) b!2751950))

(assert (=> b!2751950 m!3166889))

(assert (=> start!266720 d!796671))

(declare-fun d!796673 () Bool)

(assert (=> d!796673 (= (inv!43237 input!5495) (isBalanced!3023 (c!445212 input!5495)))))

(declare-fun bs!490444 () Bool)

(assert (= bs!490444 d!796673))

(assert (=> bs!490444 m!3166825))

(assert (=> start!266720 d!796673))

(declare-fun d!796675 () Bool)

(declare-fun e!1734983 () Bool)

(assert (=> d!796675 e!1734983))

(declare-fun res!1153766 () Bool)

(assert (=> d!796675 (=> (not res!1153766) (not e!1734983))))

(declare-fun lt!973684 () tuple3!4586)

(assert (=> d!796675 (= res!1153766 (= (_1!18672 lt!973684) (derivationStepZipper!343 z!3597 lt!973392)))))

(declare-fun choose!16104 ((InoxSet Context!4534) C!16256 CacheUp!2318 CacheDown!2438) tuple3!4586)

(assert (=> d!796675 (= lt!973684 (choose!16104 z!3597 lt!973392 (_2!18673 lt!973407) (_3!2764 lt!973407)))))

(assert (=> d!796675 (= (derivationStepZipperMem!72 z!3597 lt!973392 (_2!18673 lt!973407) (_3!2764 lt!973407)) lt!973684)))

(declare-fun b!2751955 () Bool)

(declare-fun res!1153767 () Bool)

(assert (=> b!2751955 (=> (not res!1153767) (not e!1734983))))

(assert (=> b!2751955 (= res!1153767 (valid!2875 (_2!18672 lt!973684)))))

(declare-fun b!2751956 () Bool)

(assert (=> b!2751956 (= e!1734983 (valid!2874 (_3!2763 lt!973684)))))

(assert (= (and d!796675 res!1153766) b!2751955))

(assert (= (and b!2751955 res!1153767) b!2751956))

(declare-fun m!3167039 () Bool)

(assert (=> d!796675 m!3167039))

(declare-fun m!3167041 () Bool)

(assert (=> d!796675 m!3167041))

(declare-fun m!3167043 () Bool)

(assert (=> b!2751955 m!3167043))

(declare-fun m!3167045 () Bool)

(assert (=> b!2751956 m!3167045))

(assert (=> bm!177663 d!796675))

(declare-fun d!796677 () Bool)

(declare-fun lambda!100920 () Int)

(declare-fun forall!6587 (List!31943 Int) Bool)

(assert (=> d!796677 (= (inv!43238 setElem!21969) (forall!6587 (exprs!2767 setElem!21969) lambda!100920))))

(declare-fun bs!490445 () Bool)

(assert (= bs!490445 d!796677))

(declare-fun m!3167047 () Bool)

(assert (=> bs!490445 m!3167047))

(assert (=> setNonEmpty!21969 d!796677))

(declare-fun tp!869352 () Bool)

(declare-fun b!2751965 () Bool)

(declare-fun tp!869349 () Bool)

(declare-fun tp_is_empty!13985 () Bool)

(declare-fun setRes!21972 () Bool)

(declare-fun e!1734992 () Bool)

(declare-fun e!1734991 () Bool)

(assert (=> b!2751965 (= e!1734992 (and tp!869352 (inv!43238 (_2!18670 (_1!18671 (h!37265 (zeroValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))))) e!1734991 tp_is_empty!13985 setRes!21972 tp!869349))))

(declare-fun condSetEmpty!21972 () Bool)

(assert (=> b!2751965 (= condSetEmpty!21972 (= (_2!18671 (h!37265 (zeroValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setElem!21972 () Context!4534)

(declare-fun e!1734990 () Bool)

(declare-fun tp!869350 () Bool)

(declare-fun setNonEmpty!21972 () Bool)

(assert (=> setNonEmpty!21972 (= setRes!21972 (and tp!869350 (inv!43238 setElem!21972) e!1734990))))

(declare-fun setRest!21972 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21972 (= (_2!18671 (h!37265 (zeroValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21972 true) setRest!21972))))

(assert (=> b!2751754 (= tp!869324 e!1734992)))

(declare-fun b!2751966 () Bool)

(declare-fun tp!869351 () Bool)

(assert (=> b!2751966 (= e!1734991 tp!869351)))

(declare-fun b!2751967 () Bool)

(declare-fun tp!869348 () Bool)

(assert (=> b!2751967 (= e!1734990 tp!869348)))

(declare-fun setIsEmpty!21972 () Bool)

(assert (=> setIsEmpty!21972 setRes!21972))

(assert (= b!2751965 b!2751966))

(assert (= (and b!2751965 condSetEmpty!21972) setIsEmpty!21972))

(assert (= (and b!2751965 (not condSetEmpty!21972)) setNonEmpty!21972))

(assert (= setNonEmpty!21972 b!2751967))

(assert (= (and b!2751754 ((_ is Cons!31845) (zeroValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) b!2751965))

(declare-fun m!3167049 () Bool)

(assert (=> b!2751965 m!3167049))

(declare-fun m!3167051 () Bool)

(assert (=> setNonEmpty!21972 m!3167051))

(declare-fun b!2751968 () Bool)

(declare-fun e!1734995 () Bool)

(declare-fun tp!869354 () Bool)

(declare-fun e!1734994 () Bool)

(declare-fun tp!869357 () Bool)

(declare-fun setRes!21973 () Bool)

(assert (=> b!2751968 (= e!1734995 (and tp!869357 (inv!43238 (_2!18670 (_1!18671 (h!37265 (minValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))))) e!1734994 tp_is_empty!13985 setRes!21973 tp!869354))))

(declare-fun condSetEmpty!21973 () Bool)

(assert (=> b!2751968 (= condSetEmpty!21973 (= (_2!18671 (h!37265 (minValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun tp!869355 () Bool)

(declare-fun setElem!21973 () Context!4534)

(declare-fun e!1734993 () Bool)

(declare-fun setNonEmpty!21973 () Bool)

(assert (=> setNonEmpty!21973 (= setRes!21973 (and tp!869355 (inv!43238 setElem!21973) e!1734993))))

(declare-fun setRest!21973 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21973 (= (_2!18671 (h!37265 (minValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21973 true) setRest!21973))))

(assert (=> b!2751754 (= tp!869321 e!1734995)))

(declare-fun b!2751969 () Bool)

(declare-fun tp!869356 () Bool)

(assert (=> b!2751969 (= e!1734994 tp!869356)))

(declare-fun b!2751970 () Bool)

(declare-fun tp!869353 () Bool)

(assert (=> b!2751970 (= e!1734993 tp!869353)))

(declare-fun setIsEmpty!21973 () Bool)

(assert (=> setIsEmpty!21973 setRes!21973))

(assert (= b!2751968 b!2751969))

(assert (= (and b!2751968 condSetEmpty!21973) setIsEmpty!21973))

(assert (= (and b!2751968 (not condSetEmpty!21973)) setNonEmpty!21973))

(assert (= setNonEmpty!21973 b!2751970))

(assert (= (and b!2751754 ((_ is Cons!31845) (minValue!3966 (v!33454 (underlying!7617 (v!33455 (underlying!7618 (cache!3756 cacheDown!939)))))))) b!2751968))

(declare-fun m!3167053 () Bool)

(assert (=> b!2751968 m!3167053))

(declare-fun m!3167055 () Bool)

(assert (=> setNonEmpty!21973 m!3167055))

(declare-fun setIsEmpty!21976 () Bool)

(declare-fun setRes!21976 () Bool)

(assert (=> setIsEmpty!21976 setRes!21976))

(declare-fun setElem!21976 () Context!4534)

(declare-fun tp!869368 () Bool)

(declare-fun setNonEmpty!21976 () Bool)

(declare-fun e!1735003 () Bool)

(assert (=> setNonEmpty!21976 (= setRes!21976 (and tp!869368 (inv!43238 setElem!21976) e!1735003))))

(declare-fun setRest!21976 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21976 (= (_2!18669 (h!37264 (zeroValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21976 true) setRest!21976))))

(declare-fun b!2751979 () Bool)

(declare-fun tp!869369 () Bool)

(assert (=> b!2751979 (= e!1735003 tp!869369)))

(declare-fun b!2751980 () Bool)

(declare-fun e!1735002 () Bool)

(declare-fun tp!869366 () Bool)

(assert (=> b!2751980 (= e!1735002 tp!869366)))

(declare-fun e!1735004 () Bool)

(declare-fun tp!869367 () Bool)

(declare-fun b!2751981 () Bool)

(assert (=> b!2751981 (= e!1735004 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 (zeroValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))))) e!1735002 tp_is_empty!13985 setRes!21976 tp!869367))))

(declare-fun condSetEmpty!21976 () Bool)

(assert (=> b!2751981 (= condSetEmpty!21976 (= (_2!18669 (h!37264 (zeroValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) ((as const (Array Context!4534 Bool)) false)))))

(assert (=> b!2751737 (= tp!869332 e!1735004)))

(assert (= b!2751981 b!2751980))

(assert (= (and b!2751981 condSetEmpty!21976) setIsEmpty!21976))

(assert (= (and b!2751981 (not condSetEmpty!21976)) setNonEmpty!21976))

(assert (= setNonEmpty!21976 b!2751979))

(assert (= (and b!2751737 ((_ is Cons!31844) (zeroValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) b!2751981))

(declare-fun m!3167057 () Bool)

(assert (=> setNonEmpty!21976 m!3167057))

(declare-fun m!3167059 () Bool)

(assert (=> b!2751981 m!3167059))

(declare-fun setIsEmpty!21977 () Bool)

(declare-fun setRes!21977 () Bool)

(assert (=> setIsEmpty!21977 setRes!21977))

(declare-fun e!1735006 () Bool)

(declare-fun setElem!21977 () Context!4534)

(declare-fun tp!869372 () Bool)

(declare-fun setNonEmpty!21977 () Bool)

(assert (=> setNonEmpty!21977 (= setRes!21977 (and tp!869372 (inv!43238 setElem!21977) e!1735006))))

(declare-fun setRest!21977 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21977 (= (_2!18669 (h!37264 (minValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21977 true) setRest!21977))))

(declare-fun b!2751982 () Bool)

(declare-fun tp!869373 () Bool)

(assert (=> b!2751982 (= e!1735006 tp!869373)))

(declare-fun b!2751983 () Bool)

(declare-fun e!1735005 () Bool)

(declare-fun tp!869370 () Bool)

(assert (=> b!2751983 (= e!1735005 tp!869370)))

(declare-fun e!1735007 () Bool)

(declare-fun b!2751984 () Bool)

(declare-fun tp!869371 () Bool)

(assert (=> b!2751984 (= e!1735007 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 (minValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))))) e!1735005 tp_is_empty!13985 setRes!21977 tp!869371))))

(declare-fun condSetEmpty!21977 () Bool)

(assert (=> b!2751984 (= condSetEmpty!21977 (= (_2!18669 (h!37264 (minValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) ((as const (Array Context!4534 Bool)) false)))))

(assert (=> b!2751737 (= tp!869335 e!1735007)))

(assert (= b!2751984 b!2751983))

(assert (= (and b!2751984 condSetEmpty!21977) setIsEmpty!21977))

(assert (= (and b!2751984 (not condSetEmpty!21977)) setNonEmpty!21977))

(assert (= setNonEmpty!21977 b!2751982))

(assert (= (and b!2751737 ((_ is Cons!31844) (minValue!3965 (v!33452 (underlying!7615 (v!33453 (underlying!7616 (cache!3755 cacheUp!820)))))))) b!2751984))

(declare-fun m!3167061 () Bool)

(assert (=> setNonEmpty!21977 m!3167061))

(declare-fun m!3167063 () Bool)

(assert (=> b!2751984 m!3167063))

(declare-fun b!2751999 () Bool)

(declare-fun e!1735025 () Bool)

(declare-fun tp!869394 () Bool)

(assert (=> b!2751999 (= e!1735025 tp!869394)))

(declare-fun b!2752000 () Bool)

(declare-fun e!1735024 () Bool)

(declare-fun tp!869396 () Bool)

(assert (=> b!2752000 (= e!1735024 tp!869396)))

(declare-fun e!1735020 () Bool)

(declare-fun e!1735021 () Bool)

(declare-fun b!2752001 () Bool)

(declare-fun tp!869395 () Bool)

(declare-fun setRes!21983 () Bool)

(declare-fun mapValue!16859 () List!31944)

(assert (=> b!2752001 (= e!1735020 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 mapValue!16859)))) e!1735021 tp_is_empty!13985 setRes!21983 tp!869395))))

(declare-fun condSetEmpty!21983 () Bool)

(assert (=> b!2752001 (= condSetEmpty!21983 (= (_2!18669 (h!37264 mapValue!16859)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setNonEmpty!21982 () Bool)

(declare-fun tp!869392 () Bool)

(declare-fun setRes!21982 () Bool)

(declare-fun setElem!21983 () Context!4534)

(assert (=> setNonEmpty!21982 (= setRes!21982 (and tp!869392 (inv!43238 setElem!21983) e!1735025))))

(declare-fun mapDefault!16859 () List!31944)

(declare-fun setRest!21982 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21982 (= (_2!18669 (h!37264 mapDefault!16859)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21983 true) setRest!21982))))

(declare-fun setIsEmpty!21982 () Bool)

(assert (=> setIsEmpty!21982 setRes!21982))

(declare-fun b!2752002 () Bool)

(declare-fun tp!869397 () Bool)

(assert (=> b!2752002 (= e!1735021 tp!869397)))

(declare-fun condMapEmpty!16859 () Bool)

(assert (=> mapNonEmpty!16856 (= condMapEmpty!16859 (= mapRest!16856 ((as const (Array (_ BitVec 32) List!31944)) mapDefault!16859)))))

(declare-fun e!1735023 () Bool)

(declare-fun mapRes!16859 () Bool)

(assert (=> mapNonEmpty!16856 (= tp!869322 (and e!1735023 mapRes!16859))))

(declare-fun tp!869393 () Bool)

(declare-fun setNonEmpty!21983 () Bool)

(declare-fun setElem!21982 () Context!4534)

(assert (=> setNonEmpty!21983 (= setRes!21983 (and tp!869393 (inv!43238 setElem!21982) e!1735024))))

(declare-fun setRest!21983 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21983 (= (_2!18669 (h!37264 mapValue!16859)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21982 true) setRest!21983))))

(declare-fun setIsEmpty!21983 () Bool)

(assert (=> setIsEmpty!21983 setRes!21983))

(declare-fun b!2752003 () Bool)

(declare-fun e!1735022 () Bool)

(declare-fun tp!869398 () Bool)

(assert (=> b!2752003 (= e!1735022 tp!869398)))

(declare-fun tp!869400 () Bool)

(declare-fun b!2752004 () Bool)

(assert (=> b!2752004 (= e!1735023 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 mapDefault!16859)))) e!1735022 tp_is_empty!13985 setRes!21982 tp!869400))))

(declare-fun condSetEmpty!21982 () Bool)

(assert (=> b!2752004 (= condSetEmpty!21982 (= (_2!18669 (h!37264 mapDefault!16859)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun mapNonEmpty!16859 () Bool)

(declare-fun tp!869399 () Bool)

(assert (=> mapNonEmpty!16859 (= mapRes!16859 (and tp!869399 e!1735020))))

(declare-fun mapRest!16859 () (Array (_ BitVec 32) List!31944))

(declare-fun mapKey!16859 () (_ BitVec 32))

(assert (=> mapNonEmpty!16859 (= mapRest!16856 (store mapRest!16859 mapKey!16859 mapValue!16859))))

(declare-fun mapIsEmpty!16859 () Bool)

(assert (=> mapIsEmpty!16859 mapRes!16859))

(assert (= (and mapNonEmpty!16856 condMapEmpty!16859) mapIsEmpty!16859))

(assert (= (and mapNonEmpty!16856 (not condMapEmpty!16859)) mapNonEmpty!16859))

(assert (= b!2752001 b!2752002))

(assert (= (and b!2752001 condSetEmpty!21983) setIsEmpty!21983))

(assert (= (and b!2752001 (not condSetEmpty!21983)) setNonEmpty!21983))

(assert (= setNonEmpty!21983 b!2752000))

(assert (= (and mapNonEmpty!16859 ((_ is Cons!31844) mapValue!16859)) b!2752001))

(assert (= b!2752004 b!2752003))

(assert (= (and b!2752004 condSetEmpty!21982) setIsEmpty!21982))

(assert (= (and b!2752004 (not condSetEmpty!21982)) setNonEmpty!21982))

(assert (= setNonEmpty!21982 b!2751999))

(assert (= (and mapNonEmpty!16856 ((_ is Cons!31844) mapDefault!16859)) b!2752004))

(declare-fun m!3167065 () Bool)

(assert (=> setNonEmpty!21982 m!3167065))

(declare-fun m!3167067 () Bool)

(assert (=> b!2752004 m!3167067))

(declare-fun m!3167069 () Bool)

(assert (=> setNonEmpty!21983 m!3167069))

(declare-fun m!3167071 () Bool)

(assert (=> mapNonEmpty!16859 m!3167071))

(declare-fun m!3167073 () Bool)

(assert (=> b!2752001 m!3167073))

(declare-fun setIsEmpty!21984 () Bool)

(declare-fun setRes!21984 () Bool)

(assert (=> setIsEmpty!21984 setRes!21984))

(declare-fun tp!869403 () Bool)

(declare-fun setElem!21984 () Context!4534)

(declare-fun setNonEmpty!21984 () Bool)

(declare-fun e!1735027 () Bool)

(assert (=> setNonEmpty!21984 (= setRes!21984 (and tp!869403 (inv!43238 setElem!21984) e!1735027))))

(declare-fun setRest!21984 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21984 (= (_2!18669 (h!37264 mapValue!16856)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21984 true) setRest!21984))))

(declare-fun b!2752005 () Bool)

(declare-fun tp!869404 () Bool)

(assert (=> b!2752005 (= e!1735027 tp!869404)))

(declare-fun b!2752006 () Bool)

(declare-fun e!1735026 () Bool)

(declare-fun tp!869401 () Bool)

(assert (=> b!2752006 (= e!1735026 tp!869401)))

(declare-fun b!2752007 () Bool)

(declare-fun e!1735028 () Bool)

(declare-fun tp!869402 () Bool)

(assert (=> b!2752007 (= e!1735028 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 mapValue!16856)))) e!1735026 tp_is_empty!13985 setRes!21984 tp!869402))))

(declare-fun condSetEmpty!21984 () Bool)

(assert (=> b!2752007 (= condSetEmpty!21984 (= (_2!18669 (h!37264 mapValue!16856)) ((as const (Array Context!4534 Bool)) false)))))

(assert (=> mapNonEmpty!16856 (= tp!869327 e!1735028)))

(assert (= b!2752007 b!2752006))

(assert (= (and b!2752007 condSetEmpty!21984) setIsEmpty!21984))

(assert (= (and b!2752007 (not condSetEmpty!21984)) setNonEmpty!21984))

(assert (= setNonEmpty!21984 b!2752005))

(assert (= (and mapNonEmpty!16856 ((_ is Cons!31844) mapValue!16856)) b!2752007))

(declare-fun m!3167075 () Bool)

(assert (=> setNonEmpty!21984 m!3167075))

(declare-fun m!3167077 () Bool)

(assert (=> b!2752007 m!3167077))

(declare-fun setIsEmpty!21989 () Bool)

(declare-fun setRes!21989 () Bool)

(assert (=> setIsEmpty!21989 setRes!21989))

(declare-fun setIsEmpty!21990 () Bool)

(declare-fun setRes!21990 () Bool)

(assert (=> setIsEmpty!21990 setRes!21990))

(declare-fun mapDefault!16862 () List!31945)

(declare-fun b!2752022 () Bool)

(declare-fun e!1735044 () Bool)

(declare-fun tp!869433 () Bool)

(declare-fun e!1735042 () Bool)

(declare-fun tp!869437 () Bool)

(assert (=> b!2752022 (= e!1735042 (and tp!869433 (inv!43238 (_2!18670 (_1!18671 (h!37265 mapDefault!16862)))) e!1735044 tp_is_empty!13985 setRes!21990 tp!869437))))

(declare-fun condSetEmpty!21989 () Bool)

(assert (=> b!2752022 (= condSetEmpty!21989 (= (_2!18671 (h!37265 mapDefault!16862)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setElem!21990 () Context!4534)

(declare-fun tp!869432 () Bool)

(declare-fun e!1735045 () Bool)

(declare-fun setNonEmpty!21989 () Bool)

(assert (=> setNonEmpty!21989 (= setRes!21990 (and tp!869432 (inv!43238 setElem!21990) e!1735045))))

(declare-fun setRest!21989 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21989 (= (_2!18671 (h!37265 mapDefault!16862)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21990 true) setRest!21989))))

(declare-fun b!2752023 () Bool)

(declare-fun tp!869430 () Bool)

(assert (=> b!2752023 (= e!1735045 tp!869430)))

(declare-fun b!2752024 () Bool)

(declare-fun tp!869429 () Bool)

(assert (=> b!2752024 (= e!1735044 tp!869429)))

(declare-fun condMapEmpty!16862 () Bool)

(assert (=> mapNonEmpty!16855 (= condMapEmpty!16862 (= mapRest!16855 ((as const (Array (_ BitVec 32) List!31945)) mapDefault!16862)))))

(declare-fun mapRes!16862 () Bool)

(assert (=> mapNonEmpty!16855 (= tp!869328 (and e!1735042 mapRes!16862))))

(declare-fun e!1735046 () Bool)

(declare-fun setElem!21989 () Context!4534)

(declare-fun tp!869428 () Bool)

(declare-fun setNonEmpty!21990 () Bool)

(assert (=> setNonEmpty!21990 (= setRes!21989 (and tp!869428 (inv!43238 setElem!21989) e!1735046))))

(declare-fun mapValue!16862 () List!31945)

(declare-fun setRest!21990 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21990 (= (_2!18671 (h!37265 mapValue!16862)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21989 true) setRest!21990))))

(declare-fun b!2752025 () Bool)

(declare-fun tp!869427 () Bool)

(assert (=> b!2752025 (= e!1735046 tp!869427)))

(declare-fun tp!869436 () Bool)

(declare-fun b!2752026 () Bool)

(declare-fun e!1735041 () Bool)

(declare-fun e!1735043 () Bool)

(declare-fun tp!869431 () Bool)

(assert (=> b!2752026 (= e!1735043 (and tp!869431 (inv!43238 (_2!18670 (_1!18671 (h!37265 mapValue!16862)))) e!1735041 tp_is_empty!13985 setRes!21989 tp!869436))))

(declare-fun condSetEmpty!21990 () Bool)

(assert (=> b!2752026 (= condSetEmpty!21990 (= (_2!18671 (h!37265 mapValue!16862)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun mapNonEmpty!16862 () Bool)

(declare-fun tp!869434 () Bool)

(assert (=> mapNonEmpty!16862 (= mapRes!16862 (and tp!869434 e!1735043))))

(declare-fun mapKey!16862 () (_ BitVec 32))

(declare-fun mapRest!16862 () (Array (_ BitVec 32) List!31945))

(assert (=> mapNonEmpty!16862 (= mapRest!16855 (store mapRest!16862 mapKey!16862 mapValue!16862))))

(declare-fun b!2752027 () Bool)

(declare-fun tp!869435 () Bool)

(assert (=> b!2752027 (= e!1735041 tp!869435)))

(declare-fun mapIsEmpty!16862 () Bool)

(assert (=> mapIsEmpty!16862 mapRes!16862))

(assert (= (and mapNonEmpty!16855 condMapEmpty!16862) mapIsEmpty!16862))

(assert (= (and mapNonEmpty!16855 (not condMapEmpty!16862)) mapNonEmpty!16862))

(assert (= b!2752026 b!2752027))

(assert (= (and b!2752026 condSetEmpty!21990) setIsEmpty!21989))

(assert (= (and b!2752026 (not condSetEmpty!21990)) setNonEmpty!21990))

(assert (= setNonEmpty!21990 b!2752025))

(assert (= (and mapNonEmpty!16862 ((_ is Cons!31845) mapValue!16862)) b!2752026))

(assert (= b!2752022 b!2752024))

(assert (= (and b!2752022 condSetEmpty!21989) setIsEmpty!21990))

(assert (= (and b!2752022 (not condSetEmpty!21989)) setNonEmpty!21989))

(assert (= setNonEmpty!21989 b!2752023))

(assert (= (and mapNonEmpty!16855 ((_ is Cons!31845) mapDefault!16862)) b!2752022))

(declare-fun m!3167079 () Bool)

(assert (=> setNonEmpty!21990 m!3167079))

(declare-fun m!3167081 () Bool)

(assert (=> setNonEmpty!21989 m!3167081))

(declare-fun m!3167083 () Bool)

(assert (=> b!2752026 m!3167083))

(declare-fun m!3167085 () Bool)

(assert (=> mapNonEmpty!16862 m!3167085))

(declare-fun m!3167087 () Bool)

(assert (=> b!2752022 m!3167087))

(declare-fun b!2752028 () Bool)

(declare-fun setRes!21991 () Bool)

(declare-fun tp!869439 () Bool)

(declare-fun tp!869442 () Bool)

(declare-fun e!1735049 () Bool)

(declare-fun e!1735048 () Bool)

(assert (=> b!2752028 (= e!1735049 (and tp!869442 (inv!43238 (_2!18670 (_1!18671 (h!37265 mapValue!16855)))) e!1735048 tp_is_empty!13985 setRes!21991 tp!869439))))

(declare-fun condSetEmpty!21991 () Bool)

(assert (=> b!2752028 (= condSetEmpty!21991 (= (_2!18671 (h!37265 mapValue!16855)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setElem!21991 () Context!4534)

(declare-fun setNonEmpty!21991 () Bool)

(declare-fun e!1735047 () Bool)

(declare-fun tp!869440 () Bool)

(assert (=> setNonEmpty!21991 (= setRes!21991 (and tp!869440 (inv!43238 setElem!21991) e!1735047))))

(declare-fun setRest!21991 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21991 (= (_2!18671 (h!37265 mapValue!16855)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21991 true) setRest!21991))))

(assert (=> mapNonEmpty!16855 (= tp!869333 e!1735049)))

(declare-fun b!2752029 () Bool)

(declare-fun tp!869441 () Bool)

(assert (=> b!2752029 (= e!1735048 tp!869441)))

(declare-fun b!2752030 () Bool)

(declare-fun tp!869438 () Bool)

(assert (=> b!2752030 (= e!1735047 tp!869438)))

(declare-fun setIsEmpty!21991 () Bool)

(assert (=> setIsEmpty!21991 setRes!21991))

(assert (= b!2752028 b!2752029))

(assert (= (and b!2752028 condSetEmpty!21991) setIsEmpty!21991))

(assert (= (and b!2752028 (not condSetEmpty!21991)) setNonEmpty!21991))

(assert (= setNonEmpty!21991 b!2752030))

(assert (= (and mapNonEmpty!16855 ((_ is Cons!31845) mapValue!16855)) b!2752028))

(declare-fun m!3167089 () Bool)

(assert (=> b!2752028 m!3167089))

(declare-fun m!3167091 () Bool)

(assert (=> setNonEmpty!21991 m!3167091))

(declare-fun e!1735055 () Bool)

(declare-fun tp!869451 () Bool)

(declare-fun tp!869449 () Bool)

(declare-fun b!2752039 () Bool)

(assert (=> b!2752039 (= e!1735055 (and (inv!43234 (left!24317 (c!445212 input!5495))) tp!869449 (inv!43234 (right!24647 (c!445212 input!5495))) tp!869451))))

(declare-fun b!2752041 () Bool)

(declare-fun e!1735054 () Bool)

(declare-fun tp!869450 () Bool)

(assert (=> b!2752041 (= e!1735054 tp!869450)))

(declare-fun b!2752040 () Bool)

(declare-fun inv!43241 (IArray!19867) Bool)

(assert (=> b!2752040 (= e!1735055 (and (inv!43241 (xs!13038 (c!445212 input!5495))) e!1735054))))

(assert (=> b!2751753 (= tp!869329 (and (inv!43234 (c!445212 input!5495)) e!1735055))))

(assert (= (and b!2751753 ((_ is Node!9931) (c!445212 input!5495))) b!2752039))

(assert (= b!2752040 b!2752041))

(assert (= (and b!2751753 ((_ is Leaf!15124) (c!445212 input!5495))) b!2752040))

(declare-fun m!3167093 () Bool)

(assert (=> b!2752039 m!3167093))

(declare-fun m!3167095 () Bool)

(assert (=> b!2752039 m!3167095))

(declare-fun m!3167097 () Bool)

(assert (=> b!2752040 m!3167097))

(assert (=> b!2751753 m!3166661))

(declare-fun setRes!21992 () Bool)

(declare-fun tp!869453 () Bool)

(declare-fun e!1735058 () Bool)

(declare-fun e!1735057 () Bool)

(declare-fun b!2752042 () Bool)

(declare-fun tp!869456 () Bool)

(assert (=> b!2752042 (= e!1735058 (and tp!869456 (inv!43238 (_2!18670 (_1!18671 (h!37265 mapDefault!16855)))) e!1735057 tp_is_empty!13985 setRes!21992 tp!869453))))

(declare-fun condSetEmpty!21992 () Bool)

(assert (=> b!2752042 (= condSetEmpty!21992 (= (_2!18671 (h!37265 mapDefault!16855)) ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setNonEmpty!21992 () Bool)

(declare-fun setElem!21992 () Context!4534)

(declare-fun tp!869454 () Bool)

(declare-fun e!1735056 () Bool)

(assert (=> setNonEmpty!21992 (= setRes!21992 (and tp!869454 (inv!43238 setElem!21992) e!1735056))))

(declare-fun setRest!21992 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21992 (= (_2!18671 (h!37265 mapDefault!16855)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21992 true) setRest!21992))))

(assert (=> b!2751741 (= tp!869336 e!1735058)))

(declare-fun b!2752043 () Bool)

(declare-fun tp!869455 () Bool)

(assert (=> b!2752043 (= e!1735057 tp!869455)))

(declare-fun b!2752044 () Bool)

(declare-fun tp!869452 () Bool)

(assert (=> b!2752044 (= e!1735056 tp!869452)))

(declare-fun setIsEmpty!21992 () Bool)

(assert (=> setIsEmpty!21992 setRes!21992))

(assert (= b!2752042 b!2752043))

(assert (= (and b!2752042 condSetEmpty!21992) setIsEmpty!21992))

(assert (= (and b!2752042 (not condSetEmpty!21992)) setNonEmpty!21992))

(assert (= setNonEmpty!21992 b!2752044))

(assert (= (and b!2751741 ((_ is Cons!31845) mapDefault!16855)) b!2752042))

(declare-fun m!3167099 () Bool)

(assert (=> b!2752042 m!3167099))

(declare-fun m!3167101 () Bool)

(assert (=> setNonEmpty!21992 m!3167101))

(declare-fun setIsEmpty!21993 () Bool)

(declare-fun setRes!21993 () Bool)

(assert (=> setIsEmpty!21993 setRes!21993))

(declare-fun tp!869459 () Bool)

(declare-fun e!1735060 () Bool)

(declare-fun setElem!21993 () Context!4534)

(declare-fun setNonEmpty!21993 () Bool)

(assert (=> setNonEmpty!21993 (= setRes!21993 (and tp!869459 (inv!43238 setElem!21993) e!1735060))))

(declare-fun setRest!21993 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21993 (= (_2!18669 (h!37264 mapDefault!16856)) ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21993 true) setRest!21993))))

(declare-fun b!2752045 () Bool)

(declare-fun tp!869460 () Bool)

(assert (=> b!2752045 (= e!1735060 tp!869460)))

(declare-fun b!2752046 () Bool)

(declare-fun e!1735059 () Bool)

(declare-fun tp!869457 () Bool)

(assert (=> b!2752046 (= e!1735059 tp!869457)))

(declare-fun tp!869458 () Bool)

(declare-fun e!1735061 () Bool)

(declare-fun b!2752047 () Bool)

(assert (=> b!2752047 (= e!1735061 (and (inv!43238 (_1!18668 (_1!18669 (h!37264 mapDefault!16856)))) e!1735059 tp_is_empty!13985 setRes!21993 tp!869458))))

(declare-fun condSetEmpty!21993 () Bool)

(assert (=> b!2752047 (= condSetEmpty!21993 (= (_2!18669 (h!37264 mapDefault!16856)) ((as const (Array Context!4534 Bool)) false)))))

(assert (=> b!2751765 (= tp!869337 e!1735061)))

(assert (= b!2752047 b!2752046))

(assert (= (and b!2752047 condSetEmpty!21993) setIsEmpty!21993))

(assert (= (and b!2752047 (not condSetEmpty!21993)) setNonEmpty!21993))

(assert (= setNonEmpty!21993 b!2752045))

(assert (= (and b!2751765 ((_ is Cons!31844) mapDefault!16856)) b!2752047))

(declare-fun m!3167103 () Bool)

(assert (=> setNonEmpty!21993 m!3167103))

(declare-fun m!3167105 () Bool)

(assert (=> b!2752047 m!3167105))

(declare-fun b!2752052 () Bool)

(declare-fun e!1735064 () Bool)

(declare-fun tp!869465 () Bool)

(declare-fun tp!869466 () Bool)

(assert (=> b!2752052 (= e!1735064 (and tp!869465 tp!869466))))

(assert (=> b!2751763 (= tp!869330 e!1735064)))

(assert (= (and b!2751763 ((_ is Cons!31843) (exprs!2767 setElem!21969))) b!2752052))

(declare-fun condSetEmpty!21996 () Bool)

(assert (=> setNonEmpty!21969 (= condSetEmpty!21996 (= setRest!21969 ((as const (Array Context!4534 Bool)) false)))))

(declare-fun setRes!21996 () Bool)

(assert (=> setNonEmpty!21969 (= tp!869325 setRes!21996)))

(declare-fun setIsEmpty!21996 () Bool)

(assert (=> setIsEmpty!21996 setRes!21996))

(declare-fun e!1735067 () Bool)

(declare-fun setElem!21996 () Context!4534)

(declare-fun setNonEmpty!21996 () Bool)

(declare-fun tp!869471 () Bool)

(assert (=> setNonEmpty!21996 (= setRes!21996 (and tp!869471 (inv!43238 setElem!21996) e!1735067))))

(declare-fun setRest!21996 () (InoxSet Context!4534))

(assert (=> setNonEmpty!21996 (= setRest!21969 ((_ map or) (store ((as const (Array Context!4534 Bool)) false) setElem!21996 true) setRest!21996))))

(declare-fun b!2752057 () Bool)

(declare-fun tp!869472 () Bool)

(assert (=> b!2752057 (= e!1735067 tp!869472)))

(assert (= (and setNonEmpty!21969 condSetEmpty!21996) setIsEmpty!21996))

(assert (= (and setNonEmpty!21969 (not condSetEmpty!21996)) setNonEmpty!21996))

(assert (= setNonEmpty!21996 b!2752057))

(declare-fun m!3167107 () Bool)

(assert (=> setNonEmpty!21996 m!3167107))

(check-sat (not b!2752007) (not d!796641) (not b!2751851) (not b!2751789) (not b!2751879) (not b!2751775) (not b!2752046) (not d!796665) (not b!2751849) (not bm!177671) (not d!796629) (not bm!177702) (not bm!177708) (not d!796637) (not b!2751847) (not b!2751979) (not b!2752004) (not b!2752027) (not b!2751881) (not b!2751930) (not mapNonEmpty!16859) (not b!2751777) (not b!2752025) (not b!2751966) (not b!2751980) (not b!2751850) (not b!2751947) (not d!796593) (not d!796677) (not d!796585) (not b!2751999) (not b!2752030) (not d!796587) (not bm!177706) (not d!796597) (not setNonEmpty!21977) (not b!2751803) (not d!796591) (not bm!177698) (not b!2751828) (not b!2751819) (not b!2752005) (not b!2751826) (not b!2751821) (not b!2751965) (not b!2751783) (not b!2751886) (not d!796619) (not d!796609) (not b!2751782) (not d!796673) (not setNonEmpty!21983) (not d!796631) (not b!2751981) (not setNonEmpty!21984) (not d!796659) (not b!2751969) (not b!2751982) (not d!796635) (not b!2751940) (not bm!177713) (not d!796643) (not setNonEmpty!21972) (not b!2751968) (not d!796667) (not setNonEmpty!21982) (not d!796615) (not b!2752039) (not b!2751967) (not b!2751933) (not bm!177697) (not d!796661) (not b!2752000) (not b!2751822) (not d!796657) (not b!2752002) b_and!202603 (not b_next!78569) (not b!2751804) b_and!202601 (not b!2751792) (not d!796649) (not setNonEmpty!21993) (not b!2751853) (not bm!177672) (not b!2751887) (not b!2751788) (not b!2752003) (not d!796623) (not d!796675) (not d!796599) (not b!2751839) (not d!796645) (not b_next!78565) (not b!2751812) (not b!2752040) (not bm!177703) (not b!2752045) (not d!796653) (not b!2751950) (not d!796581) (not b!2752029) (not d!796627) (not bm!177704) (not b!2751984) (not b!2752006) (not bm!177699) (not setNonEmpty!21996) (not b!2752042) (not bm!177710) (not b!2752026) (not d!796601) (not b!2751854) (not b!2751753) (not b!2751793) (not b!2751938) (not bm!177700) (not b!2751791) (not bm!177714) (not d!796605) (not b!2751829) (not b!2751838) (not b!2752041) (not bm!177701) (not setNonEmpty!21973) (not b!2752028) b_and!202599 (not b!2752057) (not d!796663) (not b!2751845) (not b!2751837) (not bm!177705) tp_is_empty!13985 (not b!2751970) b_and!202605 (not d!796583) (not bm!177696) (not d!796651) (not b!2752043) (not setNonEmpty!21990) (not setNonEmpty!21976) (not d!796579) (not setNonEmpty!21991) (not bm!177709) (not b!2751807) (not bm!177675) (not b!2752047) (not b!2752052) (not d!796613) (not bm!177711) (not b!2751776) (not mapNonEmpty!16862) (not b!2751956) (not b!2751932) (not d!796639) (not b!2751858) (not b!2751983) (not b_next!78571) (not b!2751844) (not d!796617) (not d!796595) (not b!2751955) (not b_next!78567) (not bm!177707) (not bm!177715) (not b!2751912) (not b!2752024) (not b!2752022) (not b!2752044) (not setNonEmpty!21989) (not bm!177712) (not b!2751917) (not b!2752023) (not setNonEmpty!21992) (not d!796647) (not b!2751919) (not b!2752001) (not b!2751806))
(check-sat b_and!202603 (not b_next!78565) b_and!202599 b_and!202605 (not b_next!78571) (not b_next!78567) (not b_next!78569) b_and!202601)
