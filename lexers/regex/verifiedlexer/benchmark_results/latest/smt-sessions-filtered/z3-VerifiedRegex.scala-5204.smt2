; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267880 () Bool)

(assert start!267880)

(declare-fun b!2766764 () Bool)

(declare-fun b_free!78117 () Bool)

(declare-fun b_next!78821 () Bool)

(assert (=> b!2766764 (= b_free!78117 (not b_next!78821))))

(declare-fun tp!874477 () Bool)

(declare-fun b_and!202855 () Bool)

(assert (=> b!2766764 (= tp!874477 b_and!202855)))

(declare-fun b!2766778 () Bool)

(declare-fun b_free!78119 () Bool)

(declare-fun b_next!78823 () Bool)

(assert (=> b!2766778 (= b_free!78119 (not b_next!78823))))

(declare-fun tp!874473 () Bool)

(declare-fun b_and!202857 () Bool)

(assert (=> b!2766778 (= tp!874473 b_and!202857)))

(declare-fun b!2766783 () Bool)

(declare-fun b_free!78121 () Bool)

(declare-fun b_next!78825 () Bool)

(assert (=> b!2766783 (= b_free!78121 (not b_next!78825))))

(declare-fun tp!874466 () Bool)

(declare-fun b_and!202859 () Bool)

(assert (=> b!2766783 (= tp!874466 b_and!202859)))

(declare-fun b!2766765 () Bool)

(declare-fun b_free!78123 () Bool)

(declare-fun b_next!78827 () Bool)

(assert (=> b!2766765 (= b_free!78123 (not b_next!78827))))

(declare-fun tp!874470 () Bool)

(declare-fun b_and!202861 () Bool)

(assert (=> b!2766765 (= tp!874470 b_and!202861)))

(declare-fun bm!180461 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!16304 0))(
  ( (C!16305 (val!10086 Int)) )
))
(declare-datatypes ((Regex!8073 0))(
  ( (ElementMatch!8073 (c!448916 C!16304)) (Concat!13161 (regOne!16658 Regex!8073) (regTwo!16658 Regex!8073)) (EmptyExpr!8073) (Star!8073 (reg!8402 Regex!8073)) (EmptyLang!8073) (Union!8073 (regOne!16659 Regex!8073) (regTwo!16659 Regex!8073)) )
))
(declare-datatypes ((List!32053 0))(
  ( (Nil!31953) (Cons!31953 (h!37373 Regex!8073) (t!228173 List!32053)) )
))
(declare-datatypes ((Context!4582 0))(
  ( (Context!4583 (exprs!2791 List!32053)) )
))
(declare-fun call!180475 () (InoxSet Context!4582))

(declare-fun z!3597 () (InoxSet Context!4582))

(declare-fun lt!984910 () C!16304)

(declare-fun derivationStepZipper!362 ((InoxSet Context!4582) C!16304) (InoxSet Context!4582))

(assert (=> bm!180461 (= call!180475 (derivationStepZipper!362 z!3597 lt!984910))))

(declare-fun b!2766733 () Bool)

(declare-datatypes ((Unit!46044 0))(
  ( (Unit!46045) )
))
(declare-fun e!1744504 () Unit!46044)

(declare-fun Unit!46046 () Unit!46044)

(assert (=> b!2766733 (= e!1744504 Unit!46046)))

(declare-fun lt!984934 () Unit!46044)

(declare-fun call!180469 () Unit!46044)

(assert (=> b!2766733 (= lt!984934 call!180469)))

(declare-fun call!180466 () Bool)

(assert (=> b!2766733 call!180466))

(declare-fun lt!984959 () Unit!46044)

(declare-fun call!180479 () Unit!46044)

(assert (=> b!2766733 (= lt!984959 call!180479)))

(assert (=> b!2766733 false))

(declare-fun b!2766734 () Bool)

(declare-datatypes ((tuple2!32066 0))(
  ( (tuple2!32067 (_1!18890 Context!4582) (_2!18890 C!16304)) )
))
(declare-datatypes ((tuple2!32068 0))(
  ( (tuple2!32069 (_1!18891 tuple2!32066) (_2!18891 (InoxSet Context!4582))) )
))
(declare-datatypes ((List!32054 0))(
  ( (Nil!31954) (Cons!31954 (h!37374 tuple2!32068) (t!228174 List!32054)) )
))
(declare-datatypes ((Hashable!3670 0))(
  ( (HashableExt!3669 (__x!20912 Int)) )
))
(declare-datatypes ((array!13366 0))(
  ( (array!13367 (arr!5960 (Array (_ BitVec 32) List!32054)) (size!24726 (_ BitVec 32))) )
))
(declare-datatypes ((array!13368 0))(
  ( (array!13369 (arr!5961 (Array (_ BitVec 32) (_ BitVec 64))) (size!24727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7508 0))(
  ( (LongMapFixedSize!7509 (defaultEntry!4139 Int) (mask!9527 (_ BitVec 32)) (extraKeys!4003 (_ BitVec 32)) (zeroValue!4013 List!32054) (minValue!4013 List!32054) (_size!7551 (_ BitVec 32)) (_keys!4054 array!13368) (_values!4035 array!13366) (_vacant!3815 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14825 0))(
  ( (Cell!14826 (v!33561 LongMapFixedSize!7508)) )
))
(declare-datatypes ((MutLongMap!3754 0))(
  ( (LongMap!3754 (underlying!7711 Cell!14825)) (MutLongMapExt!3753 (__x!20913 Int)) )
))
(declare-datatypes ((Cell!14827 0))(
  ( (Cell!14828 (v!33562 MutLongMap!3754)) )
))
(declare-datatypes ((MutableMap!3660 0))(
  ( (MutableMapExt!3659 (__x!20914 Int)) (HashMap!3660 (underlying!7712 Cell!14827) (hashF!5702 Hashable!3670) (_size!7552 (_ BitVec 32)) (defaultValue!3831 Int)) )
))
(declare-datatypes ((CacheUp!2366 0))(
  ( (CacheUp!2367 (cache!3803 MutableMap!3660)) )
))
(declare-datatypes ((tuple3!4774 0))(
  ( (tuple3!4775 (_1!18892 Regex!8073) (_2!18892 Context!4582) (_3!2857 C!16304)) )
))
(declare-datatypes ((tuple2!32070 0))(
  ( (tuple2!32071 (_1!18893 tuple3!4774) (_2!18893 (InoxSet Context!4582))) )
))
(declare-datatypes ((List!32055 0))(
  ( (Nil!31955) (Cons!31955 (h!37375 tuple2!32070) (t!228175 List!32055)) )
))
(declare-datatypes ((array!13370 0))(
  ( (array!13371 (arr!5962 (Array (_ BitVec 32) List!32055)) (size!24728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7510 0))(
  ( (LongMapFixedSize!7511 (defaultEntry!4140 Int) (mask!9528 (_ BitVec 32)) (extraKeys!4004 (_ BitVec 32)) (zeroValue!4014 List!32055) (minValue!4014 List!32055) (_size!7553 (_ BitVec 32)) (_keys!4055 array!13368) (_values!4036 array!13370) (_vacant!3816 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14829 0))(
  ( (Cell!14830 (v!33563 LongMapFixedSize!7510)) )
))
(declare-datatypes ((MutLongMap!3755 0))(
  ( (LongMap!3755 (underlying!7713 Cell!14829)) (MutLongMapExt!3754 (__x!20915 Int)) )
))
(declare-datatypes ((Cell!14831 0))(
  ( (Cell!14832 (v!33564 MutLongMap!3755)) )
))
(declare-datatypes ((Hashable!3671 0))(
  ( (HashableExt!3670 (__x!20916 Int)) )
))
(declare-datatypes ((MutableMap!3661 0))(
  ( (MutableMapExt!3660 (__x!20917 Int)) (HashMap!3661 (underlying!7714 Cell!14831) (hashF!5703 Hashable!3671) (_size!7554 (_ BitVec 32)) (defaultValue!3832 Int)) )
))
(declare-datatypes ((CacheDown!2486 0))(
  ( (CacheDown!2487 (cache!3804 MutableMap!3661)) )
))
(declare-datatypes ((tuple3!4776 0))(
  ( (tuple3!4777 (_1!18894 Int) (_2!18894 CacheDown!2486) (_3!2858 CacheUp!2366)) )
))
(declare-fun e!1744483 () tuple3!4776)

(declare-datatypes ((tuple3!4778 0))(
  ( (tuple3!4779 (_1!18895 Int) (_2!18895 CacheUp!2366) (_3!2859 CacheDown!2486)) )
))
(declare-fun lt!984931 () tuple3!4778)

(assert (=> b!2766734 (= e!1744483 (tuple3!4777 0 (_3!2859 lt!984931) (_2!18895 lt!984931)))))

(declare-fun b!2766735 () Bool)

(declare-fun res!1157573 () Bool)

(declare-fun e!1744481 () Bool)

(assert (=> b!2766735 (=> (not res!1157573) (not e!1744481))))

(declare-fun valid!2926 (CacheDown!2486) Bool)

(assert (=> b!2766735 (= res!1157573 (valid!2926 (_3!2859 lt!984931)))))

(declare-fun b!2766736 () Bool)

(declare-fun e!1744482 () Bool)

(declare-fun e!1744499 () Bool)

(assert (=> b!2766736 (= e!1744482 e!1744499)))

(declare-fun e!1744479 () Bool)

(declare-fun lt!984936 () Int)

(declare-fun b!2766737 () Bool)

(declare-datatypes ((List!32056 0))(
  ( (Nil!31956) (Cons!31956 (h!37376 C!16304) (t!228176 List!32056)) )
))
(declare-datatypes ((IArray!19915 0))(
  ( (IArray!19916 (innerList!10015 List!32056)) )
))
(declare-datatypes ((Conc!9955 0))(
  ( (Node!9955 (left!24373 Conc!9955) (right!24703 Conc!9955) (csize!20140 Int) (cheight!10166 Int)) (Leaf!15160 (xs!13064 IArray!19915) (csize!20141 Int)) (Empty!9955) )
))
(declare-datatypes ((BalanceConc!19524 0))(
  ( (BalanceConc!19525 (c!448917 Conc!9955)) )
))
(declare-fun input!5495 () BalanceConc!19524)

(declare-fun lt!984896 () tuple3!4778)

(declare-fun lt!984922 () List!32056)

(declare-fun findLongestMatchInnerZipperFast!31 ((InoxSet Context!4582) List!32056 Int List!32056 BalanceConc!19524 Int) Int)

(assert (=> b!2766737 (= e!1744479 (= (_1!18895 lt!984896) (findLongestMatchInnerZipperFast!31 z!3597 Nil!31956 0 lt!984922 input!5495 lt!984936)))))

(declare-fun b!2766738 () Bool)

(declare-datatypes ((tuple2!32072 0))(
  ( (tuple2!32073 (_1!18896 List!32056) (_2!18896 List!32056)) )
))
(declare-fun e!1744498 () tuple2!32072)

(assert (=> b!2766738 (= e!1744498 (tuple2!32073 Nil!31956 lt!984922))))

(declare-fun mapNonEmpty!17121 () Bool)

(declare-fun mapRes!17122 () Bool)

(declare-fun tp!874481 () Bool)

(declare-fun tp!874480 () Bool)

(assert (=> mapNonEmpty!17121 (= mapRes!17122 (and tp!874481 tp!874480))))

(declare-fun cacheUp!820 () CacheUp!2366)

(declare-fun mapValue!17122 () List!32054)

(declare-fun mapKey!17122 () (_ BitVec 32))

(declare-fun mapRest!17122 () (Array (_ BitVec 32) List!32054))

(assert (=> mapNonEmpty!17121 (= (arr!5960 (_values!4035 (v!33561 (underlying!7711 (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))))) (store mapRest!17122 mapKey!17122 mapValue!17122))))

(declare-fun b!2766739 () Bool)

(declare-fun Unit!46047 () Unit!46044)

(assert (=> b!2766739 (= e!1744504 Unit!46047)))

(declare-fun bm!180462 () Bool)

(declare-fun call!180481 () Unit!46044)

(declare-fun lemmaIsPrefixSameLengthThenSameList!455 (List!32056 List!32056 List!32056) Unit!46044)

(assert (=> bm!180462 (= call!180481 (lemmaIsPrefixSameLengthThenSameList!455 lt!984922 Nil!31956 lt!984922))))

(declare-fun bm!180463 () Bool)

(declare-fun call!180484 () Unit!46044)

(declare-fun lemmaIsPrefixRefl!1672 (List!32056 List!32056) Unit!46044)

(assert (=> bm!180463 (= call!180484 (lemmaIsPrefixRefl!1672 lt!984922 lt!984922))))

(declare-fun b!2766740 () Bool)

(declare-fun e!1744478 () Bool)

(declare-fun lt!984938 () Int)

(declare-fun e!1744502 () Int)

(assert (=> b!2766740 (= e!1744478 (= lt!984938 e!1744502))))

(declare-fun c!448911 () Bool)

(assert (=> b!2766740 (= c!448911 (= 0 lt!984936))))

(declare-fun b!2766741 () Bool)

(declare-fun res!1157568 () Bool)

(declare-fun call!180471 () Bool)

(assert (=> b!2766741 (= res!1157568 call!180471)))

(declare-fun e!1744485 () Bool)

(assert (=> b!2766741 (=> (not res!1157568) (not e!1744485))))

(declare-fun bm!180464 () Bool)

(declare-fun call!180467 () Bool)

(declare-fun nullableZipper!627 ((InoxSet Context!4582)) Bool)

(assert (=> bm!180464 (= call!180467 (nullableZipper!627 z!3597))))

(declare-fun b!2766742 () Bool)

(declare-fun e!1744495 () Bool)

(declare-fun lt!984930 () tuple2!32072)

(assert (=> b!2766742 (= e!1744495 (= lt!984930 (tuple2!32073 Nil!31956 lt!984922)))))

(declare-fun b!2766743 () Bool)

(assert (=> b!2766743 (= e!1744478 (= lt!984938 0))))

(declare-fun mapNonEmpty!17122 () Bool)

(declare-fun mapRes!17121 () Bool)

(declare-fun tp!874468 () Bool)

(declare-fun tp!874474 () Bool)

(assert (=> mapNonEmpty!17122 (= mapRes!17121 (and tp!874468 tp!874474))))

(declare-fun mapKey!17121 () (_ BitVec 32))

(declare-fun mapValue!17121 () List!32055)

(declare-fun mapRest!17121 () (Array (_ BitVec 32) List!32055))

(declare-fun cacheDown!939 () CacheDown!2486)

(assert (=> mapNonEmpty!17122 (= (arr!5962 (_values!4036 (v!33563 (underlying!7713 (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))))) (store mapRest!17121 mapKey!17121 mapValue!17121))))

(declare-fun bm!180465 () Bool)

(declare-fun call!180477 () Bool)

(declare-fun isPrefix!2547 (List!32056 List!32056) Bool)

(assert (=> bm!180465 (= call!180477 (isPrefix!2547 lt!984922 lt!984922))))

(declare-fun res!1157574 () Bool)

(declare-fun e!1744488 () Bool)

(assert (=> start!267880 (=> (not res!1157574) (not e!1744488))))

(declare-fun valid!2927 (CacheUp!2366) Bool)

(assert (=> start!267880 (= res!1157574 (valid!2927 cacheUp!820))))

(assert (=> start!267880 e!1744488))

(declare-fun e!1744514 () Bool)

(declare-fun inv!43392 (CacheUp!2366) Bool)

(assert (=> start!267880 (and (inv!43392 cacheUp!820) e!1744514)))

(declare-fun e!1744510 () Bool)

(declare-fun inv!43393 (CacheDown!2486) Bool)

(assert (=> start!267880 (and (inv!43393 cacheDown!939) e!1744510)))

(declare-fun condSetEmpty!22606 () Bool)

(assert (=> start!267880 (= condSetEmpty!22606 (= z!3597 ((as const (Array Context!4582 Bool)) false)))))

(declare-fun setRes!22606 () Bool)

(assert (=> start!267880 setRes!22606))

(declare-fun e!1744506 () Bool)

(declare-fun inv!43394 (BalanceConc!19524) Bool)

(assert (=> start!267880 (and (inv!43394 input!5495) e!1744506)))

(declare-fun b!2766744 () Bool)

(declare-fun res!1157569 () Bool)

(assert (=> b!2766744 (=> (not res!1157569) (not e!1744479))))

(assert (=> b!2766744 (= res!1157569 (valid!2926 (_3!2859 lt!984896)))))

(declare-fun bm!180466 () Bool)

(assert (=> bm!180466 (= call!180479 (lemmaIsPrefixSameLengthThenSameList!455 lt!984922 Nil!31956 lt!984922))))

(declare-fun bm!180467 () Bool)

(declare-fun call!180485 () Unit!46044)

(assert (=> bm!180467 (= call!180485 (lemmaIsPrefixRefl!1672 lt!984922 lt!984922))))

(declare-fun b!2766745 () Bool)

(declare-fun e!1744489 () Bool)

(declare-fun e!1744507 () Bool)

(assert (=> b!2766745 (= e!1744489 e!1744507)))

(declare-fun b!2766746 () Bool)

(declare-fun e!1744505 () Bool)

(assert (=> b!2766746 (= e!1744499 e!1744505)))

(declare-fun b!2766747 () Bool)

(declare-fun e!1744511 () Bool)

(declare-fun tp!874471 () Bool)

(assert (=> b!2766747 (= e!1744511 (and tp!874471 mapRes!17122))))

(declare-fun condMapEmpty!17121 () Bool)

(declare-fun mapDefault!17121 () List!32054)

(assert (=> b!2766747 (= condMapEmpty!17121 (= (arr!5960 (_values!4035 (v!33561 (underlying!7711 (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32054)) mapDefault!17121)))))

(declare-fun b!2766748 () Bool)

(declare-fun e!1744486 () tuple3!4776)

(declare-fun lt!984940 () tuple3!4778)

(assert (=> b!2766748 (= e!1744486 (tuple3!4777 (ite (= (_1!18895 lt!984940) 0) 0 (_1!18895 lt!984940)) (_3!2859 lt!984940) (_2!18895 lt!984940)))))

(declare-datatypes ((tuple3!4780 0))(
  ( (tuple3!4781 (_1!18897 (InoxSet Context!4582)) (_2!18897 CacheUp!2366) (_3!2860 CacheDown!2486)) )
))
(declare-fun lt!984918 () tuple3!4780)

(declare-fun call!180486 () tuple3!4780)

(assert (=> b!2766748 (= lt!984918 call!180486)))

(declare-fun call!180480 () tuple3!4778)

(assert (=> b!2766748 (= lt!984940 call!180480)))

(declare-fun res!1157575 () Bool)

(declare-fun call!180470 () Bool)

(assert (=> b!2766748 (= res!1157575 call!180470)))

(declare-fun e!1744500 () Bool)

(assert (=> b!2766748 (=> (not res!1157575) (not e!1744500))))

(assert (=> b!2766748 e!1744500))

(declare-fun b!2766749 () Bool)

(declare-fun c!448905 () Bool)

(declare-fun call!180483 () Bool)

(assert (=> b!2766749 (= c!448905 call!180483)))

(declare-fun lt!984901 () List!32056)

(declare-fun lt!984911 () List!32056)

(declare-fun ++!7909 (List!32056 List!32056) List!32056)

(assert (=> b!2766749 (= (++!7909 lt!984901 lt!984911) lt!984922)))

(declare-fun lt!984900 () C!16304)

(declare-fun lt!984967 () Unit!46044)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!864 (List!32056 C!16304 List!32056 List!32056) Unit!46044)

(assert (=> b!2766749 (= lt!984967 (lemmaMoveElementToOtherListKeepsConcatEq!864 Nil!31956 lt!984900 lt!984911 lt!984922))))

(declare-fun tail!4381 (List!32056) List!32056)

(assert (=> b!2766749 (= lt!984911 (tail!4381 lt!984922))))

(declare-fun lt!984957 () List!32056)

(declare-fun head!6143 (List!32056) C!16304)

(assert (=> b!2766749 (isPrefix!2547 (++!7909 Nil!31956 (Cons!31956 (head!6143 lt!984957) Nil!31956)) lt!984922)))

(declare-fun lt!984899 () Unit!46044)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!452 (List!32056 List!32056) Unit!46044)

(assert (=> b!2766749 (= lt!984899 (lemmaAddHeadSuffixToPrefixStillPrefix!452 Nil!31956 lt!984922))))

(assert (=> b!2766749 (= lt!984901 (++!7909 Nil!31956 (Cons!31956 lt!984900 Nil!31956)))))

(assert (=> b!2766749 (= lt!984900 (head!6143 lt!984922))))

(declare-fun lt!984943 () Unit!46044)

(declare-fun e!1744484 () Unit!46044)

(assert (=> b!2766749 (= lt!984943 e!1744484)))

(declare-fun c!448906 () Bool)

(declare-fun lt!984945 () Int)

(declare-fun lt!984920 () Int)

(assert (=> b!2766749 (= c!448906 (= lt!984945 lt!984920))))

(assert (=> b!2766749 (<= lt!984945 lt!984920)))

(declare-fun size!24729 (List!32056) Int)

(assert (=> b!2766749 (= lt!984920 (size!24729 lt!984922))))

(assert (=> b!2766749 (= lt!984945 (size!24729 Nil!31956))))

(declare-fun lt!984932 () Unit!46044)

(declare-fun lemmaIsPrefixThenSmallerEqSize!255 (List!32056 List!32056) Unit!46044)

(assert (=> b!2766749 (= lt!984932 (lemmaIsPrefixThenSmallerEqSize!255 Nil!31956 lt!984922))))

(declare-fun e!1744487 () tuple2!32072)

(declare-fun e!1744492 () tuple2!32072)

(assert (=> b!2766749 (= e!1744487 e!1744492)))

(declare-fun b!2766750 () Bool)

(declare-fun e!1744494 () tuple2!32072)

(assert (=> b!2766750 (= e!1744492 e!1744494)))

(declare-fun lt!984916 () tuple2!32072)

(declare-fun call!180468 () tuple2!32072)

(assert (=> b!2766750 (= lt!984916 call!180468)))

(declare-fun c!448907 () Bool)

(declare-fun isEmpty!18088 (List!32056) Bool)

(assert (=> b!2766750 (= c!448907 (isEmpty!18088 (_1!18896 lt!984916)))))

(declare-fun b!2766751 () Bool)

(declare-fun res!1157576 () Bool)

(assert (=> b!2766751 (= res!1157576 call!180471)))

(assert (=> b!2766751 (=> (not res!1157576) (not e!1744500))))

(declare-fun b!2766752 () Bool)

(declare-fun e!1744491 () Bool)

(declare-fun lt!984915 () MutLongMap!3755)

(get-info :version)

(assert (=> b!2766752 (= e!1744491 (and e!1744489 ((_ is LongMap!3755) lt!984915)))))

(assert (=> b!2766752 (= lt!984915 (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))))

(declare-fun bm!180468 () Bool)

(declare-fun call!180476 () Unit!46044)

(assert (=> bm!180468 (= call!180476 (lemmaIsPrefixSameLengthThenSameList!455 lt!984922 Nil!31956 lt!984922))))

(declare-fun bm!180469 () Bool)

(declare-fun call!180474 () (InoxSet Context!4582))

(assert (=> bm!180469 (= call!180474 (derivationStepZipper!362 z!3597 lt!984900))))

(declare-fun b!2766753 () Bool)

(declare-fun lt!984928 () Bool)

(declare-fun call!180472 () Bool)

(assert (=> b!2766753 (= lt!984928 call!180472)))

(assert (=> b!2766753 (= lt!984922 Nil!31956)))

(declare-fun lt!984909 () Unit!46044)

(assert (=> b!2766753 (= lt!984909 call!180479)))

(assert (=> b!2766753 call!180466))

(declare-fun lt!984935 () Unit!46044)

(assert (=> b!2766753 (= lt!984935 call!180469)))

(assert (=> b!2766753 (= e!1744502 0)))

(declare-fun b!2766754 () Bool)

(declare-fun lt!984902 () tuple3!4778)

(assert (=> b!2766754 (= e!1744486 (tuple3!4777 (_1!18895 lt!984902) (_3!2859 lt!984902) (_2!18895 lt!984902)))))

(declare-fun lt!984951 () tuple3!4780)

(assert (=> b!2766754 (= lt!984951 call!180486)))

(assert (=> b!2766754 (= lt!984902 call!180480)))

(declare-fun res!1157572 () Bool)

(assert (=> b!2766754 (= res!1157572 call!180470)))

(assert (=> b!2766754 (=> (not res!1157572) (not e!1744485))))

(assert (=> b!2766754 e!1744485))

(declare-fun b!2766755 () Bool)

(assert (=> b!2766755 (= e!1744494 lt!984916)))

(declare-fun bm!180470 () Bool)

(assert (=> bm!180470 (= call!180483 (nullableZipper!627 z!3597))))

(declare-fun b!2766756 () Bool)

(declare-fun e!1744508 () Bool)

(assert (=> b!2766756 (= e!1744488 (not e!1744508))))

(declare-fun res!1157567 () Bool)

(assert (=> b!2766756 (=> res!1157567 e!1744508)))

(declare-fun lt!984966 () List!32056)

(declare-datatypes ((tuple2!32074 0))(
  ( (tuple2!32075 (_1!18898 BalanceConc!19524) (_2!18898 BalanceConc!19524)) )
))
(declare-fun lt!984942 () tuple2!32074)

(declare-fun list!12065 (BalanceConc!19524) List!32056)

(assert (=> b!2766756 (= res!1157567 (not (= (++!7909 lt!984966 (list!12065 (_2!18898 lt!984942))) (++!7909 (_1!18896 lt!984930) (_2!18896 lt!984930)))))))

(assert (=> b!2766756 (= lt!984966 (list!12065 (_1!18898 lt!984942)))))

(declare-fun splitAt!108 (BalanceConc!19524 Int) tuple2!32074)

(assert (=> b!2766756 (= lt!984942 (splitAt!108 input!5495 (_1!18895 lt!984931)))))

(assert (=> b!2766756 e!1744495))

(declare-fun c!448915 () Bool)

(declare-fun lt!984905 () Bool)

(assert (=> b!2766756 (= c!448915 lt!984905)))

(declare-fun findLongestMatchInnerZipper!17 ((InoxSet Context!4582) List!32056 Int List!32056 List!32056 Int) tuple2!32072)

(assert (=> b!2766756 (= lt!984930 (findLongestMatchInnerZipper!17 z!3597 Nil!31956 0 lt!984922 lt!984922 lt!984936))))

(assert (=> b!2766756 e!1744478))

(declare-fun c!448912 () Bool)

(assert (=> b!2766756 (= c!448912 lt!984905)))

(assert (=> b!2766756 (= lt!984938 (findLongestMatchInnerZipperFast!31 z!3597 Nil!31956 0 lt!984922 input!5495 lt!984936))))

(declare-fun lt!984950 () tuple3!4776)

(assert (=> b!2766756 (= lt!984896 (tuple3!4779 (_1!18894 lt!984950) (_3!2858 lt!984950) (_2!18894 lt!984950)))))

(assert (=> b!2766756 (= lt!984950 e!1744483)))

(declare-fun c!448904 () Bool)

(assert (=> b!2766756 (= c!448904 lt!984905)))

(declare-fun lostCauseZipper!434 ((InoxSet Context!4582)) Bool)

(assert (=> b!2766756 (= lt!984905 (lostCauseZipper!434 z!3597))))

(assert (=> b!2766756 (and (= lt!984922 lt!984957) (= lt!984957 lt!984922))))

(declare-fun lt!984921 () Unit!46044)

(declare-fun lemmaSamePrefixThenSameSuffix!1132 (List!32056 List!32056 List!32056 List!32056 List!32056) Unit!46044)

(assert (=> b!2766756 (= lt!984921 (lemmaSamePrefixThenSameSuffix!1132 Nil!31956 lt!984922 Nil!31956 lt!984957 lt!984922))))

(declare-fun getSuffix!1230 (List!32056 List!32056) List!32056)

(assert (=> b!2766756 (= lt!984957 (getSuffix!1230 lt!984922 Nil!31956))))

(assert (=> b!2766756 (isPrefix!2547 Nil!31956 (++!7909 Nil!31956 lt!984922))))

(declare-fun lt!984917 () Unit!46044)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1658 (List!32056 List!32056) Unit!46044)

(assert (=> b!2766756 (= lt!984917 (lemmaConcatTwoListThenFirstIsPrefix!1658 Nil!31956 lt!984922))))

(assert (=> b!2766756 e!1744479))

(declare-fun res!1157577 () Bool)

(assert (=> b!2766756 (=> (not res!1157577) (not e!1744479))))

(assert (=> b!2766756 (= res!1157577 (valid!2927 (_2!18895 lt!984896)))))

(declare-fun findLongestMatchInnerZipperFastMem!26 (CacheUp!2366 CacheDown!2486 (InoxSet Context!4582) List!32056 Int List!32056 BalanceConc!19524 Int) tuple3!4778)

(assert (=> b!2766756 (= lt!984896 (findLongestMatchInnerZipperFastMem!26 (_2!18895 lt!984931) (_3!2859 lt!984931) z!3597 Nil!31956 0 lt!984922 input!5495 lt!984936))))

(assert (=> b!2766756 e!1744481))

(declare-fun res!1157571 () Bool)

(assert (=> b!2766756 (=> (not res!1157571) (not e!1744481))))

(assert (=> b!2766756 (= res!1157571 (valid!2927 (_2!18895 lt!984931)))))

(assert (=> b!2766756 (= lt!984931 (findLongestMatchInnerZipperFastMem!26 cacheUp!820 cacheDown!939 z!3597 Nil!31956 0 lt!984922 input!5495 lt!984936))))

(declare-fun size!24730 (BalanceConc!19524) Int)

(assert (=> b!2766756 (= lt!984936 (size!24730 input!5495))))

(assert (=> b!2766756 (= lt!984922 (list!12065 input!5495))))

(declare-fun b!2766757 () Bool)

(assert (=> b!2766757 (= e!1744495 (= lt!984930 e!1744487))))

(declare-fun c!448910 () Bool)

(assert (=> b!2766757 (= c!448910 (= 0 lt!984936))))

(declare-fun b!2766758 () Bool)

(declare-fun e!1744480 () Bool)

(assert (=> b!2766758 (= e!1744510 e!1744480)))

(declare-fun bm!180471 () Bool)

(assert (=> bm!180471 (= call!180469 (lemmaIsPrefixRefl!1672 lt!984922 lt!984922))))

(declare-fun c!448903 () Bool)

(declare-fun bm!180472 () Bool)

(assert (=> bm!180472 (= call!180470 (valid!2927 (ite c!448903 (_2!18895 lt!984940) (_2!18895 lt!984902))))))

(declare-fun bm!180473 () Bool)

(declare-fun call!180478 () Bool)

(assert (=> bm!180473 (= call!180478 (isPrefix!2547 lt!984922 lt!984922))))

(declare-fun b!2766759 () Bool)

(declare-fun e!1744503 () Unit!46044)

(declare-fun Unit!46048 () Unit!46044)

(assert (=> b!2766759 (= e!1744503 Unit!46048)))

(declare-fun lt!984952 () Unit!46044)

(assert (=> b!2766759 (= lt!984952 call!180484)))

(assert (=> b!2766759 call!180478))

(declare-fun lt!984898 () Unit!46044)

(assert (=> b!2766759 (= lt!984898 call!180476)))

(assert (=> b!2766759 false))

(declare-fun b!2766760 () Bool)

(declare-fun e!1744493 () Bool)

(assert (=> b!2766760 (= e!1744514 e!1744493)))

(declare-fun b!2766761 () Bool)

(declare-fun Unit!46049 () Unit!46044)

(assert (=> b!2766761 (= e!1744503 Unit!46049)))

(declare-fun b!2766762 () Bool)

(assert (=> b!2766762 (= e!1744498 (tuple2!32073 Nil!31956 Nil!31956))))

(declare-fun b!2766763 () Bool)

(declare-fun Unit!46050 () Unit!46044)

(assert (=> b!2766763 (= e!1744484 Unit!46050)))

(declare-fun tp!874479 () Bool)

(declare-fun tp!874469 () Bool)

(declare-fun e!1744512 () Bool)

(declare-fun e!1744477 () Bool)

(declare-fun array_inv!4263 (array!13368) Bool)

(declare-fun array_inv!4264 (array!13370) Bool)

(assert (=> b!2766764 (= e!1744477 (and tp!874477 tp!874469 tp!874479 (array_inv!4263 (_keys!4055 (v!33563 (underlying!7713 (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))))) (array_inv!4264 (_values!4036 (v!33563 (underlying!7713 (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))))) e!1744512))))

(declare-fun bm!180474 () Bool)

(assert (=> bm!180474 (= call!180468 (findLongestMatchInnerZipper!17 call!180474 lt!984901 1 lt!984911 lt!984922 lt!984936))))

(declare-fun bm!180475 () Bool)

(declare-fun lt!984946 () List!32056)

(declare-fun call!180473 () Int)

(declare-fun lt!984954 () List!32056)

(assert (=> bm!180475 (= call!180473 (findLongestMatchInnerZipperFast!31 call!180475 lt!984946 1 lt!984954 input!5495 lt!984936))))

(declare-fun bm!180476 () Bool)

(assert (=> bm!180476 (= call!180472 (nullableZipper!627 z!3597))))

(assert (=> b!2766765 (= e!1744480 (and e!1744491 tp!874470))))

(declare-fun b!2766766 () Bool)

(declare-fun call!180482 () Int)

(assert (=> b!2766766 (= e!1744485 (= (_1!18895 lt!984902) call!180482))))

(declare-fun b!2766767 () Bool)

(declare-fun e!1744501 () Bool)

(declare-fun lt!984961 () MutLongMap!3754)

(assert (=> b!2766767 (= e!1744501 (and e!1744482 ((_ is LongMap!3754) lt!984961)))))

(assert (=> b!2766767 (= lt!984961 (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))))

(declare-fun b!2766768 () Bool)

(declare-fun e!1744496 () Int)

(assert (=> b!2766768 (= e!1744496 call!180473)))

(declare-fun bm!180477 () Bool)

(assert (=> bm!180477 (= call!180471 (valid!2926 (ite c!448903 (_3!2859 lt!984940) (_3!2859 lt!984902))))))

(declare-fun b!2766769 () Bool)

(declare-fun tp!874472 () Bool)

(declare-fun inv!43395 (Conc!9955) Bool)

(assert (=> b!2766769 (= e!1744506 (and (inv!43395 (c!448917 input!5495)) tp!874472))))

(declare-fun mapIsEmpty!17121 () Bool)

(assert (=> mapIsEmpty!17121 mapRes!17121))

(declare-fun lt!984944 () C!16304)

(declare-fun bm!180478 () Bool)

(declare-fun derivationStepZipperMem!92 ((InoxSet Context!4582) C!16304 CacheUp!2366 CacheDown!2486) tuple3!4780)

(assert (=> bm!180478 (= call!180486 (derivationStepZipperMem!92 z!3597 lt!984944 (_2!18895 lt!984931) (_3!2859 lt!984931)))))

(declare-fun e!1744490 () Bool)

(declare-fun tp!874475 () Bool)

(declare-fun setNonEmpty!22606 () Bool)

(declare-fun setElem!22606 () Context!4582)

(declare-fun inv!43396 (Context!4582) Bool)

(assert (=> setNonEmpty!22606 (= setRes!22606 (and tp!874475 (inv!43396 setElem!22606) e!1744490))))

(declare-fun setRest!22606 () (InoxSet Context!4582))

(assert (=> setNonEmpty!22606 (= z!3597 ((_ map or) (store ((as const (Array Context!4582 Bool)) false) setElem!22606 true) setRest!22606))))

(declare-fun lt!984914 () List!32056)

(declare-fun bm!180479 () Bool)

(declare-fun lt!984908 () List!32056)

(assert (=> bm!180479 (= call!180480 (findLongestMatchInnerZipperFastMem!26 (ite c!448903 (_2!18897 lt!984918) (_2!18897 lt!984951)) (ite c!448903 (_3!2860 lt!984918) (_3!2860 lt!984951)) (ite c!448903 (_1!18897 lt!984918) (_1!18897 lt!984951)) lt!984914 1 lt!984908 input!5495 lt!984936))))

(declare-fun setIsEmpty!22606 () Bool)

(assert (=> setIsEmpty!22606 setRes!22606))

(declare-fun b!2766770 () Bool)

(declare-fun lt!984903 () Bool)

(assert (=> b!2766770 (= lt!984903 call!180467)))

(assert (=> b!2766770 (= lt!984922 Nil!31956)))

(declare-fun lt!984962 () Unit!46044)

(assert (=> b!2766770 (= lt!984962 call!180476)))

(assert (=> b!2766770 call!180478))

(declare-fun lt!984897 () Unit!46044)

(assert (=> b!2766770 (= lt!984897 call!180484)))

(declare-fun e!1744497 () tuple3!4776)

(assert (=> b!2766770 (= e!1744497 (tuple3!4777 0 (_3!2859 lt!984931) (_2!18895 lt!984931)))))

(declare-fun b!2766771 () Bool)

(declare-fun tp!874476 () Bool)

(assert (=> b!2766771 (= e!1744490 tp!874476)))

(declare-fun b!2766772 () Bool)

(assert (=> b!2766772 (= e!1744507 e!1744477)))

(declare-fun b!2766773 () Bool)

(assert (=> b!2766773 (= e!1744492 call!180468)))

(declare-fun bm!180480 () Bool)

(assert (=> bm!180480 (= call!180466 (isPrefix!2547 lt!984922 lt!984922))))

(declare-fun b!2766774 () Bool)

(declare-fun lt!984958 () Int)

(assert (=> b!2766774 (= e!1744496 (ite (= lt!984958 0) 0 lt!984958))))

(assert (=> b!2766774 (= lt!984958 call!180473)))

(declare-fun b!2766775 () Bool)

(declare-fun tp!874478 () Bool)

(assert (=> b!2766775 (= e!1744512 (and tp!874478 mapRes!17121))))

(declare-fun condMapEmpty!17122 () Bool)

(declare-fun mapDefault!17122 () List!32055)

(assert (=> b!2766775 (= condMapEmpty!17122 (= (arr!5962 (_values!4036 (v!33563 (underlying!7713 (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32055)) mapDefault!17122)))))

(declare-fun b!2766776 () Bool)

(declare-fun Unit!46051 () Unit!46044)

(assert (=> b!2766776 (= e!1744484 Unit!46051)))

(declare-fun lt!984925 () Unit!46044)

(assert (=> b!2766776 (= lt!984925 call!180485)))

(assert (=> b!2766776 call!180477))

(declare-fun lt!984919 () Unit!46044)

(assert (=> b!2766776 (= lt!984919 call!180481)))

(assert (=> b!2766776 false))

(declare-fun b!2766777 () Bool)

(declare-fun c!448913 () Bool)

(assert (=> b!2766777 (= c!448913 call!180483)))

(assert (=> b!2766777 (= lt!984922 Nil!31956)))

(declare-fun lt!984955 () Unit!46044)

(assert (=> b!2766777 (= lt!984955 call!180481)))

(assert (=> b!2766777 call!180477))

(declare-fun lt!984924 () Unit!46044)

(assert (=> b!2766777 (= lt!984924 call!180485)))

(assert (=> b!2766777 (= e!1744487 e!1744498)))

(declare-fun tp!874467 () Bool)

(declare-fun tp!874482 () Bool)

(declare-fun array_inv!4265 (array!13366) Bool)

(assert (=> b!2766778 (= e!1744505 (and tp!874473 tp!874467 tp!874482 (array_inv!4263 (_keys!4054 (v!33561 (underlying!7711 (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))))) (array_inv!4265 (_values!4035 (v!33561 (underlying!7711 (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))))) e!1744511))))

(declare-fun b!2766779 () Bool)

(assert (=> b!2766779 (= e!1744481 (= (_1!18895 lt!984931) (findLongestMatchInnerZipperFast!31 z!3597 Nil!31956 0 lt!984922 input!5495 lt!984936)))))

(declare-fun b!2766780 () Bool)

(assert (=> b!2766780 (= e!1744508 true)))

(declare-fun lt!984953 () Int)

(assert (=> b!2766780 (= lt!984953 (size!24729 (_1!18896 lt!984930)))))

(declare-fun lt!984941 () Int)

(assert (=> b!2766780 (= lt!984941 (size!24729 lt!984966))))

(declare-fun b!2766781 () Bool)

(assert (=> b!2766781 (= e!1744483 e!1744497)))

(declare-fun c!448914 () Bool)

(assert (=> b!2766781 (= c!448914 (= 0 lt!984936))))

(declare-fun b!2766782 () Bool)

(assert (=> b!2766782 (= e!1744494 (tuple2!32073 Nil!31956 lt!984922))))

(assert (=> b!2766783 (= e!1744493 (and e!1744501 tp!874466))))

(declare-fun b!2766784 () Bool)

(declare-fun res!1157570 () Bool)

(assert (=> b!2766784 (=> (not res!1157570) (not e!1744488))))

(assert (=> b!2766784 (= res!1157570 (valid!2926 cacheDown!939))))

(declare-fun mapIsEmpty!17122 () Bool)

(assert (=> mapIsEmpty!17122 mapRes!17122))

(declare-fun bm!180481 () Bool)

(assert (=> bm!180481 (= call!180482 (findLongestMatchInnerZipperFast!31 (ite c!448903 (_1!18897 lt!984918) (_1!18897 lt!984951)) lt!984914 1 lt!984908 input!5495 lt!984936))))

(declare-fun b!2766785 () Bool)

(assert (=> b!2766785 (= c!448903 call!180467)))

(assert (=> b!2766785 (= (++!7909 lt!984914 lt!984908) lt!984922)))

(assert (=> b!2766785 (= lt!984914 (++!7909 Nil!31956 (Cons!31956 lt!984944 Nil!31956)))))

(declare-fun lt!984956 () Unit!46044)

(assert (=> b!2766785 (= lt!984956 (lemmaMoveElementToOtherListKeepsConcatEq!864 Nil!31956 lt!984944 lt!984908 lt!984922))))

(assert (=> b!2766785 (= lt!984908 (tail!4381 lt!984922))))

(declare-fun apply!7491 (BalanceConc!19524 Int) C!16304)

(assert (=> b!2766785 (= lt!984944 (apply!7491 input!5495 0))))

(assert (=> b!2766785 (isPrefix!2547 (++!7909 Nil!31956 (Cons!31956 (head!6143 lt!984957) Nil!31956)) lt!984922)))

(declare-fun lt!984912 () Unit!46044)

(assert (=> b!2766785 (= lt!984912 (lemmaAddHeadSuffixToPrefixStillPrefix!452 Nil!31956 lt!984922))))

(declare-fun lt!984949 () Unit!46044)

(assert (=> b!2766785 (= lt!984949 e!1744503)))

(declare-fun c!448902 () Bool)

(declare-fun lt!984933 () Int)

(assert (=> b!2766785 (= c!448902 (= lt!984933 lt!984936))))

(assert (=> b!2766785 (<= lt!984933 (size!24729 lt!984922))))

(assert (=> b!2766785 (= lt!984933 (size!24729 Nil!31956))))

(declare-fun lt!984948 () Unit!46044)

(assert (=> b!2766785 (= lt!984948 (lemmaIsPrefixThenSmallerEqSize!255 Nil!31956 lt!984922))))

(declare-fun drop!1701 (List!32056 Int) List!32056)

(declare-fun apply!7492 (List!32056 Int) C!16304)

(assert (=> b!2766785 (= (head!6143 (drop!1701 lt!984922 0)) (apply!7492 lt!984922 0))))

(declare-fun lt!984907 () Unit!46044)

(declare-fun lemmaDropApply!907 (List!32056 Int) Unit!46044)

(assert (=> b!2766785 (= lt!984907 (lemmaDropApply!907 lt!984922 0))))

(declare-fun lt!984906 () List!32056)

(declare-fun lt!984904 () List!32056)

(assert (=> b!2766785 (and (= lt!984906 Nil!31956) (= lt!984904 lt!984922))))

(declare-fun lt!984929 () Unit!46044)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!333 (List!32056 List!32056 List!32056 List!32056) Unit!46044)

(assert (=> b!2766785 (= lt!984929 (lemmaConcatSameAndSameSizesThenSameLists!333 lt!984906 lt!984904 Nil!31956 lt!984922))))

(declare-fun lt!984965 () tuple2!32074)

(assert (=> b!2766785 (= lt!984904 (list!12065 (_2!18898 lt!984965)))))

(assert (=> b!2766785 (= lt!984906 (list!12065 (_1!18898 lt!984965)))))

(assert (=> b!2766785 (= lt!984965 (splitAt!108 input!5495 0))))

(assert (=> b!2766785 (= e!1744497 e!1744486)))

(declare-fun b!2766786 () Bool)

(declare-fun c!448909 () Bool)

(assert (=> b!2766786 (= c!448909 call!180472)))

(assert (=> b!2766786 (= (++!7909 lt!984946 lt!984954) lt!984922)))

(assert (=> b!2766786 (= lt!984946 (++!7909 Nil!31956 (Cons!31956 lt!984910 Nil!31956)))))

(declare-fun lt!984923 () Unit!46044)

(assert (=> b!2766786 (= lt!984923 (lemmaMoveElementToOtherListKeepsConcatEq!864 Nil!31956 lt!984910 lt!984954 lt!984922))))

(assert (=> b!2766786 (= lt!984954 (tail!4381 lt!984922))))

(assert (=> b!2766786 (= lt!984910 (apply!7491 input!5495 0))))

(assert (=> b!2766786 (isPrefix!2547 (++!7909 Nil!31956 (Cons!31956 (head!6143 lt!984957) Nil!31956)) lt!984922)))

(declare-fun lt!984926 () Unit!46044)

(assert (=> b!2766786 (= lt!984926 (lemmaAddHeadSuffixToPrefixStillPrefix!452 Nil!31956 lt!984922))))

(declare-fun lt!984964 () Unit!46044)

(assert (=> b!2766786 (= lt!984964 e!1744504)))

(declare-fun c!448908 () Bool)

(declare-fun lt!984913 () Int)

(assert (=> b!2766786 (= c!448908 (= lt!984913 lt!984936))))

(assert (=> b!2766786 (<= lt!984913 (size!24729 lt!984922))))

(assert (=> b!2766786 (= lt!984913 (size!24729 Nil!31956))))

(declare-fun lt!984937 () Unit!46044)

(assert (=> b!2766786 (= lt!984937 (lemmaIsPrefixThenSmallerEqSize!255 Nil!31956 lt!984922))))

(assert (=> b!2766786 (= (head!6143 (drop!1701 lt!984922 0)) (apply!7492 lt!984922 0))))

(declare-fun lt!984947 () Unit!46044)

(assert (=> b!2766786 (= lt!984947 (lemmaDropApply!907 lt!984922 0))))

(declare-fun lt!984960 () List!32056)

(declare-fun lt!984963 () List!32056)

(assert (=> b!2766786 (and (= lt!984960 Nil!31956) (= lt!984963 lt!984922))))

(declare-fun lt!984927 () Unit!46044)

(assert (=> b!2766786 (= lt!984927 (lemmaConcatSameAndSameSizesThenSameLists!333 lt!984960 lt!984963 Nil!31956 lt!984922))))

(declare-fun lt!984939 () tuple2!32074)

(assert (=> b!2766786 (= lt!984963 (list!12065 (_2!18898 lt!984939)))))

(assert (=> b!2766786 (= lt!984960 (list!12065 (_1!18898 lt!984939)))))

(assert (=> b!2766786 (= lt!984939 (splitAt!108 input!5495 0))))

(assert (=> b!2766786 (= e!1744502 e!1744496)))

(declare-fun b!2766787 () Bool)

(assert (=> b!2766787 (= e!1744500 (= (_1!18895 lt!984940) call!180482))))

(assert (= (and start!267880 res!1157574) b!2766784))

(assert (= (and b!2766784 res!1157570) b!2766756))

(assert (= (and b!2766756 res!1157571) b!2766735))

(assert (= (and b!2766735 res!1157573) b!2766779))

(assert (= (and b!2766756 res!1157577) b!2766744))

(assert (= (and b!2766744 res!1157569) b!2766737))

(assert (= (and b!2766756 c!448904) b!2766734))

(assert (= (and b!2766756 (not c!448904)) b!2766781))

(assert (= (and b!2766781 c!448914) b!2766770))

(assert (= (and b!2766781 (not c!448914)) b!2766785))

(assert (= (and b!2766785 c!448902) b!2766759))

(assert (= (and b!2766785 (not c!448902)) b!2766761))

(assert (= (and b!2766785 c!448903) b!2766748))

(assert (= (and b!2766785 (not c!448903)) b!2766754))

(assert (= (and b!2766748 res!1157575) b!2766751))

(assert (= (and b!2766751 res!1157576) b!2766787))

(assert (= (and b!2766754 res!1157572) b!2766741))

(assert (= (and b!2766741 res!1157568) b!2766766))

(assert (= (or b!2766748 b!2766754) bm!180479))

(assert (= (or b!2766787 b!2766766) bm!180481))

(assert (= (or b!2766748 b!2766754) bm!180478))

(assert (= (or b!2766748 b!2766754) bm!180472))

(assert (= (or b!2766751 b!2766741) bm!180477))

(assert (= (or b!2766770 b!2766785) bm!180464))

(assert (= (or b!2766770 b!2766759) bm!180463))

(assert (= (or b!2766770 b!2766759) bm!180468))

(assert (= (or b!2766770 b!2766759) bm!180473))

(assert (= (and b!2766756 c!448912) b!2766743))

(assert (= (and b!2766756 (not c!448912)) b!2766740))

(assert (= (and b!2766740 c!448911) b!2766753))

(assert (= (and b!2766740 (not c!448911)) b!2766786))

(assert (= (and b!2766786 c!448908) b!2766733))

(assert (= (and b!2766786 (not c!448908)) b!2766739))

(assert (= (and b!2766786 c!448909) b!2766774))

(assert (= (and b!2766786 (not c!448909)) b!2766768))

(assert (= (or b!2766774 b!2766768) bm!180461))

(assert (= (or b!2766774 b!2766768) bm!180475))

(assert (= (or b!2766753 b!2766786) bm!180476))

(assert (= (or b!2766753 b!2766733) bm!180471))

(assert (= (or b!2766753 b!2766733) bm!180466))

(assert (= (or b!2766753 b!2766733) bm!180480))

(assert (= (and b!2766756 c!448915) b!2766742))

(assert (= (and b!2766756 (not c!448915)) b!2766757))

(assert (= (and b!2766757 c!448910) b!2766777))

(assert (= (and b!2766757 (not c!448910)) b!2766749))

(assert (= (and b!2766777 c!448913) b!2766762))

(assert (= (and b!2766777 (not c!448913)) b!2766738))

(assert (= (and b!2766749 c!448906) b!2766776))

(assert (= (and b!2766749 (not c!448906)) b!2766763))

(assert (= (and b!2766749 c!448905) b!2766750))

(assert (= (and b!2766749 (not c!448905)) b!2766773))

(assert (= (and b!2766750 c!448907) b!2766782))

(assert (= (and b!2766750 (not c!448907)) b!2766755))

(assert (= (or b!2766750 b!2766773) bm!180469))

(assert (= (or b!2766750 b!2766773) bm!180474))

(assert (= (or b!2766777 b!2766749) bm!180470))

(assert (= (or b!2766777 b!2766776) bm!180467))

(assert (= (or b!2766777 b!2766776) bm!180462))

(assert (= (or b!2766777 b!2766776) bm!180465))

(assert (= (and b!2766756 (not res!1157567)) b!2766780))

(assert (= (and b!2766747 condMapEmpty!17121) mapIsEmpty!17122))

(assert (= (and b!2766747 (not condMapEmpty!17121)) mapNonEmpty!17121))

(assert (= b!2766778 b!2766747))

(assert (= b!2766746 b!2766778))

(assert (= b!2766736 b!2766746))

(assert (= (and b!2766767 ((_ is LongMap!3754) (v!33562 (underlying!7712 (cache!3803 cacheUp!820))))) b!2766736))

(assert (= b!2766783 b!2766767))

(assert (= (and b!2766760 ((_ is HashMap!3660) (cache!3803 cacheUp!820))) b!2766783))

(assert (= start!267880 b!2766760))

(assert (= (and b!2766775 condMapEmpty!17122) mapIsEmpty!17121))

(assert (= (and b!2766775 (not condMapEmpty!17122)) mapNonEmpty!17122))

(assert (= b!2766764 b!2766775))

(assert (= b!2766772 b!2766764))

(assert (= b!2766745 b!2766772))

(assert (= (and b!2766752 ((_ is LongMap!3755) (v!33564 (underlying!7714 (cache!3804 cacheDown!939))))) b!2766745))

(assert (= b!2766765 b!2766752))

(assert (= (and b!2766758 ((_ is HashMap!3661) (cache!3804 cacheDown!939))) b!2766765))

(assert (= start!267880 b!2766758))

(assert (= (and start!267880 condSetEmpty!22606) setIsEmpty!22606))

(assert (= (and start!267880 (not condSetEmpty!22606)) setNonEmpty!22606))

(assert (= setNonEmpty!22606 b!2766771))

(assert (= start!267880 b!2766769))

(declare-fun m!3189987 () Bool)

(assert (=> bm!180468 m!3189987))

(declare-fun m!3189989 () Bool)

(assert (=> setNonEmpty!22606 m!3189989))

(declare-fun m!3189991 () Bool)

(assert (=> b!2766735 m!3189991))

(declare-fun m!3189993 () Bool)

(assert (=> b!2766756 m!3189993))

(declare-fun m!3189995 () Bool)

(assert (=> b!2766756 m!3189995))

(declare-fun m!3189997 () Bool)

(assert (=> b!2766756 m!3189997))

(declare-fun m!3189999 () Bool)

(assert (=> b!2766756 m!3189999))

(declare-fun m!3190001 () Bool)

(assert (=> b!2766756 m!3190001))

(declare-fun m!3190003 () Bool)

(assert (=> b!2766756 m!3190003))

(declare-fun m!3190005 () Bool)

(assert (=> b!2766756 m!3190005))

(declare-fun m!3190007 () Bool)

(assert (=> b!2766756 m!3190007))

(declare-fun m!3190009 () Bool)

(assert (=> b!2766756 m!3190009))

(declare-fun m!3190011 () Bool)

(assert (=> b!2766756 m!3190011))

(declare-fun m!3190013 () Bool)

(assert (=> b!2766756 m!3190013))

(declare-fun m!3190015 () Bool)

(assert (=> b!2766756 m!3190015))

(declare-fun m!3190017 () Bool)

(assert (=> b!2766756 m!3190017))

(declare-fun m!3190019 () Bool)

(assert (=> b!2766756 m!3190019))

(assert (=> b!2766756 m!3190015))

(declare-fun m!3190021 () Bool)

(assert (=> b!2766756 m!3190021))

(declare-fun m!3190023 () Bool)

(assert (=> b!2766756 m!3190023))

(declare-fun m!3190025 () Bool)

(assert (=> b!2766756 m!3190025))

(assert (=> b!2766756 m!3189997))

(declare-fun m!3190027 () Bool)

(assert (=> b!2766756 m!3190027))

(declare-fun m!3190029 () Bool)

(assert (=> b!2766756 m!3190029))

(declare-fun m!3190031 () Bool)

(assert (=> bm!180467 m!3190031))

(declare-fun m!3190033 () Bool)

(assert (=> b!2766780 m!3190033))

(declare-fun m!3190035 () Bool)

(assert (=> b!2766780 m!3190035))

(declare-fun m!3190037 () Bool)

(assert (=> mapNonEmpty!17122 m!3190037))

(declare-fun m!3190039 () Bool)

(assert (=> b!2766786 m!3190039))

(declare-fun m!3190041 () Bool)

(assert (=> b!2766786 m!3190041))

(declare-fun m!3190043 () Bool)

(assert (=> b!2766786 m!3190043))

(declare-fun m!3190045 () Bool)

(assert (=> b!2766786 m!3190045))

(declare-fun m!3190047 () Bool)

(assert (=> b!2766786 m!3190047))

(declare-fun m!3190049 () Bool)

(assert (=> b!2766786 m!3190049))

(declare-fun m!3190051 () Bool)

(assert (=> b!2766786 m!3190051))

(declare-fun m!3190053 () Bool)

(assert (=> b!2766786 m!3190053))

(declare-fun m!3190055 () Bool)

(assert (=> b!2766786 m!3190055))

(declare-fun m!3190057 () Bool)

(assert (=> b!2766786 m!3190057))

(declare-fun m!3190059 () Bool)

(assert (=> b!2766786 m!3190059))

(declare-fun m!3190061 () Bool)

(assert (=> b!2766786 m!3190061))

(declare-fun m!3190063 () Bool)

(assert (=> b!2766786 m!3190063))

(declare-fun m!3190065 () Bool)

(assert (=> b!2766786 m!3190065))

(declare-fun m!3190067 () Bool)

(assert (=> b!2766786 m!3190067))

(declare-fun m!3190069 () Bool)

(assert (=> b!2766786 m!3190069))

(assert (=> b!2766786 m!3190061))

(declare-fun m!3190071 () Bool)

(assert (=> b!2766786 m!3190071))

(declare-fun m!3190073 () Bool)

(assert (=> b!2766786 m!3190073))

(declare-fun m!3190075 () Bool)

(assert (=> b!2766786 m!3190075))

(declare-fun m!3190077 () Bool)

(assert (=> b!2766786 m!3190077))

(assert (=> b!2766786 m!3190057))

(declare-fun m!3190079 () Bool)

(assert (=> bm!180472 m!3190079))

(assert (=> bm!180466 m!3189987))

(assert (=> b!2766749 m!3190063))

(assert (=> b!2766749 m!3190067))

(assert (=> b!2766749 m!3190039))

(declare-fun m!3190081 () Bool)

(assert (=> b!2766749 m!3190081))

(assert (=> b!2766749 m!3190057))

(declare-fun m!3190083 () Bool)

(assert (=> b!2766749 m!3190083))

(assert (=> b!2766749 m!3190047))

(declare-fun m!3190085 () Bool)

(assert (=> b!2766749 m!3190085))

(assert (=> b!2766749 m!3190055))

(assert (=> b!2766749 m!3190057))

(assert (=> b!2766749 m!3190059))

(declare-fun m!3190087 () Bool)

(assert (=> b!2766749 m!3190087))

(assert (=> b!2766749 m!3190053))

(declare-fun m!3190089 () Bool)

(assert (=> b!2766764 m!3190089))

(declare-fun m!3190091 () Bool)

(assert (=> b!2766764 m!3190091))

(declare-fun m!3190093 () Bool)

(assert (=> bm!180481 m!3190093))

(declare-fun m!3190095 () Bool)

(assert (=> bm!180469 m!3190095))

(declare-fun m!3190097 () Bool)

(assert (=> bm!180478 m!3190097))

(declare-fun m!3190099 () Bool)

(assert (=> bm!180473 m!3190099))

(assert (=> bm!180480 m!3190099))

(declare-fun m!3190101 () Bool)

(assert (=> b!2766785 m!3190101))

(assert (=> b!2766785 m!3190039))

(assert (=> b!2766785 m!3190061))

(assert (=> b!2766785 m!3190071))

(declare-fun m!3190103 () Bool)

(assert (=> b!2766785 m!3190103))

(assert (=> b!2766785 m!3190043))

(assert (=> b!2766785 m!3190045))

(assert (=> b!2766785 m!3190047))

(declare-fun m!3190105 () Bool)

(assert (=> b!2766785 m!3190105))

(assert (=> b!2766785 m!3190053))

(assert (=> b!2766785 m!3190055))

(assert (=> b!2766785 m!3190057))

(assert (=> b!2766785 m!3190059))

(assert (=> b!2766785 m!3190061))

(assert (=> b!2766785 m!3190063))

(assert (=> b!2766785 m!3190065))

(assert (=> b!2766785 m!3190067))

(declare-fun m!3190107 () Bool)

(assert (=> b!2766785 m!3190107))

(declare-fun m!3190109 () Bool)

(assert (=> b!2766785 m!3190109))

(assert (=> b!2766785 m!3190077))

(assert (=> b!2766785 m!3190057))

(declare-fun m!3190111 () Bool)

(assert (=> b!2766785 m!3190111))

(assert (=> b!2766737 m!3189999))

(assert (=> bm!180465 m!3190099))

(declare-fun m!3190113 () Bool)

(assert (=> start!267880 m!3190113))

(declare-fun m!3190115 () Bool)

(assert (=> start!267880 m!3190115))

(declare-fun m!3190117 () Bool)

(assert (=> start!267880 m!3190117))

(declare-fun m!3190119 () Bool)

(assert (=> start!267880 m!3190119))

(declare-fun m!3190121 () Bool)

(assert (=> b!2766769 m!3190121))

(assert (=> bm!180463 m!3190031))

(declare-fun m!3190123 () Bool)

(assert (=> bm!180470 m!3190123))

(declare-fun m!3190125 () Bool)

(assert (=> bm!180461 m!3190125))

(declare-fun m!3190127 () Bool)

(assert (=> bm!180477 m!3190127))

(assert (=> b!2766779 m!3189999))

(declare-fun m!3190129 () Bool)

(assert (=> b!2766744 m!3190129))

(declare-fun m!3190131 () Bool)

(assert (=> bm!180475 m!3190131))

(declare-fun m!3190133 () Bool)

(assert (=> b!2766778 m!3190133))

(declare-fun m!3190135 () Bool)

(assert (=> b!2766778 m!3190135))

(declare-fun m!3190137 () Bool)

(assert (=> b!2766784 m!3190137))

(assert (=> bm!180462 m!3189987))

(declare-fun m!3190139 () Bool)

(assert (=> mapNonEmpty!17121 m!3190139))

(declare-fun m!3190141 () Bool)

(assert (=> bm!180479 m!3190141))

(assert (=> bm!180464 m!3190123))

(assert (=> bm!180471 m!3190031))

(declare-fun m!3190143 () Bool)

(assert (=> b!2766750 m!3190143))

(assert (=> bm!180476 m!3190123))

(declare-fun m!3190145 () Bool)

(assert (=> bm!180474 m!3190145))

(check-sat (not bm!180474) (not b_next!78825) (not bm!180468) (not bm!180464) (not b!2766784) (not bm!180461) (not b!2766735) (not mapNonEmpty!17121) (not mapNonEmpty!17122) (not b!2766764) (not b!2766785) b_and!202861 (not bm!180467) (not start!267880) b_and!202855 (not b!2766756) (not b!2766779) (not b!2766786) (not bm!180469) (not b_next!78827) (not bm!180470) (not b!2766775) (not b!2766750) (not bm!180471) (not b!2766737) (not b_next!78823) (not b!2766771) (not b!2766749) (not b!2766780) (not bm!180476) (not bm!180462) (not bm!180477) (not b!2766778) (not bm!180473) (not b!2766744) (not b!2766747) (not bm!180472) (not bm!180478) (not bm!180479) (not b!2766769) (not bm!180466) (not b_next!78821) (not bm!180481) (not bm!180463) (not bm!180480) (not bm!180475) b_and!202857 b_and!202859 (not bm!180465) (not setNonEmpty!22606))
(check-sat b_and!202855 (not b_next!78825) (not b_next!78827) (not b_next!78823) b_and!202861 (not b_next!78821) b_and!202857 b_and!202859)
