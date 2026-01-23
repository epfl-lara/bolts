; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266956 () Bool)

(assert start!266956)

(declare-fun b!2753656 () Bool)

(declare-fun b_free!77925 () Bool)

(declare-fun b_next!78629 () Bool)

(assert (=> b!2753656 (= b_free!77925 (not b_next!78629))))

(declare-fun tp!870137 () Bool)

(declare-fun b_and!202663 () Bool)

(assert (=> b!2753656 (= tp!870137 b_and!202663)))

(declare-fun b!2753665 () Bool)

(declare-fun b_free!77927 () Bool)

(declare-fun b_next!78631 () Bool)

(assert (=> b!2753665 (= b_free!77927 (not b_next!78631))))

(declare-fun tp!870142 () Bool)

(declare-fun b_and!202665 () Bool)

(assert (=> b!2753665 (= tp!870142 b_and!202665)))

(declare-fun b!2753639 () Bool)

(declare-fun b_free!77929 () Bool)

(declare-fun b_next!78633 () Bool)

(assert (=> b!2753639 (= b_free!77929 (not b_next!78633))))

(declare-fun tp!870146 () Bool)

(declare-fun b_and!202667 () Bool)

(assert (=> b!2753639 (= tp!870146 b_and!202667)))

(declare-fun b!2753642 () Bool)

(declare-fun b_free!77931 () Bool)

(declare-fun b_next!78635 () Bool)

(assert (=> b!2753642 (= b_free!77931 (not b_next!78635))))

(declare-fun tp!870138 () Bool)

(declare-fun b_and!202669 () Bool)

(assert (=> b!2753642 (= tp!870138 b_and!202669)))

(declare-fun b!2753626 () Bool)

(declare-fun e!1736200 () Bool)

(declare-fun e!1736193 () Bool)

(assert (=> b!2753626 (= e!1736200 e!1736193)))

(declare-fun b!2753627 () Bool)

(declare-fun lt!975440 () Bool)

(declare-fun call!178161 () Bool)

(assert (=> b!2753627 (= lt!975440 call!178161)))

(declare-datatypes ((C!16272 0))(
  ( (C!16273 (val!10070 Int)) )
))
(declare-datatypes ((List!31977 0))(
  ( (Nil!31877) (Cons!31877 (h!37297 C!16272) (t!228081 List!31977)) )
))
(declare-fun lt!975425 () List!31977)

(assert (=> b!2753627 (= lt!975425 Nil!31877)))

(declare-datatypes ((Unit!45671 0))(
  ( (Unit!45672) )
))
(declare-fun lt!975476 () Unit!45671)

(declare-fun call!178149 () Unit!45671)

(assert (=> b!2753627 (= lt!975476 call!178149)))

(declare-fun call!178152 () Bool)

(assert (=> b!2753627 call!178152))

(declare-fun lt!975447 () Unit!45671)

(declare-fun call!178157 () Unit!45671)

(assert (=> b!2753627 (= lt!975447 call!178157)))

(declare-datatypes ((Regex!8057 0))(
  ( (ElementMatch!8057 (c!445620 C!16272)) (Concat!13145 (regOne!16626 Regex!8057) (regTwo!16626 Regex!8057)) (EmptyExpr!8057) (Star!8057 (reg!8386 Regex!8057)) (EmptyLang!8057) (Union!8057 (regOne!16627 Regex!8057) (regTwo!16627 Regex!8057)) )
))
(declare-datatypes ((List!31978 0))(
  ( (Nil!31878) (Cons!31878 (h!37298 Regex!8057) (t!228082 List!31978)) )
))
(declare-datatypes ((Context!4550 0))(
  ( (Context!4551 (exprs!2775 List!31978)) )
))
(declare-datatypes ((tuple2!31888 0))(
  ( (tuple2!31889 (_1!18738 Context!4550) (_2!18738 C!16272)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31890 0))(
  ( (tuple2!31891 (_1!18739 tuple2!31888) (_2!18739 (InoxSet Context!4550))) )
))
(declare-datatypes ((List!31979 0))(
  ( (Nil!31879) (Cons!31879 (h!37299 tuple2!31890) (t!228083 List!31979)) )
))
(declare-datatypes ((Hashable!3638 0))(
  ( (HashableExt!3637 (__x!20816 Int)) )
))
(declare-datatypes ((array!13246 0))(
  ( (array!13247 (arr!5912 (Array (_ BitVec 32) List!31979)) (size!24643 (_ BitVec 32))) )
))
(declare-datatypes ((array!13248 0))(
  ( (array!13249 (arr!5913 (Array (_ BitVec 32) (_ BitVec 64))) (size!24644 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7444 0))(
  ( (LongMapFixedSize!7445 (defaultEntry!4107 Int) (mask!9487 (_ BitVec 32)) (extraKeys!3971 (_ BitVec 32)) (zeroValue!3981 List!31979) (minValue!3981 List!31979) (_size!7487 (_ BitVec 32)) (_keys!4022 array!13248) (_values!4003 array!13246) (_vacant!3783 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14697 0))(
  ( (Cell!14698 (v!33487 LongMapFixedSize!7444)) )
))
(declare-datatypes ((MutLongMap!3722 0))(
  ( (LongMap!3722 (underlying!7647 Cell!14697)) (MutLongMapExt!3721 (__x!20817 Int)) )
))
(declare-datatypes ((Cell!14699 0))(
  ( (Cell!14700 (v!33488 MutLongMap!3722)) )
))
(declare-datatypes ((MutableMap!3628 0))(
  ( (MutableMapExt!3627 (__x!20818 Int)) (HashMap!3628 (underlying!7648 Cell!14699) (hashF!5670 Hashable!3638) (_size!7488 (_ BitVec 32)) (defaultValue!3799 Int)) )
))
(declare-datatypes ((CacheUp!2334 0))(
  ( (CacheUp!2335 (cache!3771 MutableMap!3628)) )
))
(declare-datatypes ((tuple3!4648 0))(
  ( (tuple3!4649 (_1!18740 Regex!8057) (_2!18740 Context!4550) (_3!2794 C!16272)) )
))
(declare-datatypes ((tuple2!31892 0))(
  ( (tuple2!31893 (_1!18741 tuple3!4648) (_2!18741 (InoxSet Context!4550))) )
))
(declare-datatypes ((List!31980 0))(
  ( (Nil!31880) (Cons!31880 (h!37300 tuple2!31892) (t!228084 List!31980)) )
))
(declare-datatypes ((array!13250 0))(
  ( (array!13251 (arr!5914 (Array (_ BitVec 32) List!31980)) (size!24645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7446 0))(
  ( (LongMapFixedSize!7447 (defaultEntry!4108 Int) (mask!9488 (_ BitVec 32)) (extraKeys!3972 (_ BitVec 32)) (zeroValue!3982 List!31980) (minValue!3982 List!31980) (_size!7489 (_ BitVec 32)) (_keys!4023 array!13248) (_values!4004 array!13250) (_vacant!3784 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14701 0))(
  ( (Cell!14702 (v!33489 LongMapFixedSize!7446)) )
))
(declare-datatypes ((MutLongMap!3723 0))(
  ( (LongMap!3723 (underlying!7649 Cell!14701)) (MutLongMapExt!3722 (__x!20819 Int)) )
))
(declare-datatypes ((Cell!14703 0))(
  ( (Cell!14704 (v!33490 MutLongMap!3723)) )
))
(declare-datatypes ((Hashable!3639 0))(
  ( (HashableExt!3638 (__x!20820 Int)) )
))
(declare-datatypes ((MutableMap!3629 0))(
  ( (MutableMapExt!3628 (__x!20821 Int)) (HashMap!3629 (underlying!7650 Cell!14703) (hashF!5671 Hashable!3639) (_size!7490 (_ BitVec 32)) (defaultValue!3800 Int)) )
))
(declare-datatypes ((CacheDown!2454 0))(
  ( (CacheDown!2455 (cache!3772 MutableMap!3629)) )
))
(declare-datatypes ((tuple3!4650 0))(
  ( (tuple3!4651 (_1!18742 Int) (_2!18742 CacheDown!2454) (_3!2795 CacheUp!2334)) )
))
(declare-fun e!1736216 () tuple3!4650)

(declare-datatypes ((tuple3!4652 0))(
  ( (tuple3!4653 (_1!18743 Int) (_2!18743 CacheUp!2334) (_3!2796 CacheDown!2454)) )
))
(declare-fun lt!975449 () tuple3!4652)

(assert (=> b!2753627 (= e!1736216 (tuple3!4651 0 (_3!2796 lt!975449) (_2!18743 lt!975449)))))

(declare-fun bm!178143 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!440 (List!31977 List!31977 List!31977) Unit!45671)

(assert (=> bm!178143 (= call!178149 (lemmaIsPrefixSameLengthThenSameList!440 lt!975425 Nil!31877 lt!975425))))

(declare-fun bm!178144 () Bool)

(declare-fun z!3597 () (InoxSet Context!4550))

(declare-fun nullableZipper!612 ((InoxSet Context!4550)) Bool)

(assert (=> bm!178144 (= call!178161 (nullableZipper!612 z!3597))))

(declare-fun call!178150 () tuple3!4652)

(declare-datatypes ((tuple3!4654 0))(
  ( (tuple3!4655 (_1!18744 (InoxSet Context!4550)) (_2!18744 CacheUp!2334) (_3!2797 CacheDown!2454)) )
))
(declare-fun lt!975435 () tuple3!4654)

(declare-fun c!445614 () Bool)

(declare-fun lt!975459 () List!31977)

(declare-datatypes ((IArray!19883 0))(
  ( (IArray!19884 (innerList!9999 List!31977)) )
))
(declare-datatypes ((Conc!9939 0))(
  ( (Node!9939 (left!24333 Conc!9939) (right!24663 Conc!9939) (csize!20108 Int) (cheight!10150 Int)) (Leaf!15136 (xs!13046 IArray!19883) (csize!20109 Int)) (Empty!9939) )
))
(declare-datatypes ((BalanceConc!19492 0))(
  ( (BalanceConc!19493 (c!445621 Conc!9939)) )
))
(declare-fun input!5495 () BalanceConc!19492)

(declare-fun lt!975431 () List!31977)

(declare-fun bm!178145 () Bool)

(declare-fun lt!975473 () tuple3!4654)

(declare-fun lt!975429 () Int)

(declare-fun findLongestMatchInnerZipperFastMem!13 (CacheUp!2334 CacheDown!2454 (InoxSet Context!4550) List!31977 Int List!31977 BalanceConc!19492 Int) tuple3!4652)

(assert (=> bm!178145 (= call!178150 (findLongestMatchInnerZipperFastMem!13 (ite c!445614 (_2!18744 lt!975435) (_2!18744 lt!975473)) (ite c!445614 (_3!2797 lt!975435) (_3!2797 lt!975473)) (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429))))

(declare-fun b!2753628 () Bool)

(declare-fun e!1736209 () Bool)

(declare-fun lt!975438 () Int)

(declare-fun e!1736214 () Int)

(assert (=> b!2753628 (= e!1736209 (= lt!975438 e!1736214))))

(declare-fun c!445613 () Bool)

(assert (=> b!2753628 (= c!445613 (= 0 lt!975429))))

(declare-fun b!2753629 () Bool)

(declare-fun e!1736219 () Unit!45671)

(declare-fun Unit!45673 () Unit!45671)

(assert (=> b!2753629 (= e!1736219 Unit!45673)))

(declare-fun b!2753630 () Bool)

(declare-fun e!1736196 () Bool)

(declare-fun e!1736206 () Bool)

(declare-fun lt!975446 () MutLongMap!3723)

(get-info :version)

(assert (=> b!2753630 (= e!1736196 (and e!1736206 ((_ is LongMap!3723) lt!975446)))))

(declare-fun cacheDown!939 () CacheDown!2454)

(assert (=> b!2753630 (= lt!975446 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))

(declare-fun b!2753631 () Bool)

(declare-fun Unit!45674 () Unit!45671)

(assert (=> b!2753631 (= e!1736219 Unit!45674)))

(declare-fun lt!975432 () Unit!45671)

(assert (=> b!2753631 (= lt!975432 call!178157)))

(assert (=> b!2753631 call!178152))

(declare-fun lt!975434 () Unit!45671)

(assert (=> b!2753631 (= lt!975434 call!178149)))

(assert (=> b!2753631 false))

(declare-fun bm!178146 () Bool)

(declare-fun call!178158 () Bool)

(assert (=> bm!178146 (= call!178158 (nullableZipper!612 z!3597))))

(declare-fun mapIsEmpty!16921 () Bool)

(declare-fun mapRes!16921 () Bool)

(assert (=> mapIsEmpty!16921 mapRes!16921))

(declare-fun setIsEmpty!22074 () Bool)

(declare-fun setRes!22074 () Bool)

(assert (=> setIsEmpty!22074 setRes!22074))

(declare-fun b!2753632 () Bool)

(declare-fun e!1736215 () tuple3!4650)

(assert (=> b!2753632 (= e!1736215 e!1736216)))

(declare-fun c!445618 () Bool)

(assert (=> b!2753632 (= c!445618 (= 0 lt!975429))))

(declare-fun bm!178147 () Bool)

(declare-fun call!178154 () Unit!45671)

(assert (=> bm!178147 (= call!178154 (lemmaIsPrefixSameLengthThenSameList!440 lt!975425 Nil!31877 lt!975425))))

(declare-fun b!2753633 () Bool)

(declare-fun e!1736217 () Bool)

(declare-fun lt!975455 () tuple3!4652)

(declare-fun call!178159 () Int)

(assert (=> b!2753633 (= e!1736217 (= (_1!18743 lt!975455) call!178159))))

(declare-fun b!2753634 () Bool)

(declare-fun e!1736207 () Unit!45671)

(declare-fun Unit!45675 () Unit!45671)

(assert (=> b!2753634 (= e!1736207 Unit!45675)))

(declare-fun b!2753635 () Bool)

(declare-fun e!1736210 () Bool)

(declare-fun e!1736220 () Bool)

(assert (=> b!2753635 (= e!1736210 (not e!1736220))))

(declare-fun res!1154180 () Bool)

(assert (=> b!2753635 (=> res!1154180 e!1736220)))

(declare-fun lt!975430 () List!31977)

(assert (=> b!2753635 (= res!1154180 (not (= lt!975430 lt!975425)))))

(assert (=> b!2753635 e!1736209))

(declare-fun c!445616 () Bool)

(declare-fun lt!975456 () Bool)

(assert (=> b!2753635 (= c!445616 lt!975456)))

(declare-fun findLongestMatchInnerZipperFast!15 ((InoxSet Context!4550) List!31977 Int List!31977 BalanceConc!19492 Int) Int)

(assert (=> b!2753635 (= lt!975438 (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429))))

(declare-fun lt!975452 () tuple3!4652)

(declare-fun lt!975472 () tuple3!4650)

(assert (=> b!2753635 (= lt!975452 (tuple3!4653 (_1!18742 lt!975472) (_3!2795 lt!975472) (_2!18742 lt!975472)))))

(assert (=> b!2753635 (= lt!975472 e!1736215)))

(declare-fun c!445615 () Bool)

(assert (=> b!2753635 (= c!445615 lt!975456)))

(declare-fun lostCauseZipper!423 ((InoxSet Context!4550)) Bool)

(assert (=> b!2753635 (= lt!975456 (lostCauseZipper!423 z!3597))))

(declare-fun lt!975471 () List!31977)

(assert (=> b!2753635 (and (= lt!975425 lt!975471) (= lt!975471 lt!975425))))

(declare-fun lt!975466 () Unit!45671)

(declare-fun lemmaSamePrefixThenSameSuffix!1121 (List!31977 List!31977 List!31977 List!31977 List!31977) Unit!45671)

(assert (=> b!2753635 (= lt!975466 (lemmaSamePrefixThenSameSuffix!1121 Nil!31877 lt!975425 Nil!31877 lt!975471 lt!975425))))

(declare-fun getSuffix!1219 (List!31977 List!31977) List!31977)

(assert (=> b!2753635 (= lt!975471 (getSuffix!1219 lt!975425 Nil!31877))))

(declare-fun isPrefix!2533 (List!31977 List!31977) Bool)

(assert (=> b!2753635 (isPrefix!2533 Nil!31877 lt!975430)))

(declare-fun ++!7893 (List!31977 List!31977) List!31977)

(assert (=> b!2753635 (= lt!975430 (++!7893 Nil!31877 lt!975425))))

(declare-fun lt!975458 () Unit!45671)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1647 (List!31977 List!31977) Unit!45671)

(assert (=> b!2753635 (= lt!975458 (lemmaConcatTwoListThenFirstIsPrefix!1647 Nil!31877 lt!975425))))

(declare-fun e!1736194 () Bool)

(assert (=> b!2753635 e!1736194))

(declare-fun res!1154187 () Bool)

(assert (=> b!2753635 (=> (not res!1154187) (not e!1736194))))

(declare-fun valid!2890 (CacheUp!2334) Bool)

(assert (=> b!2753635 (= res!1154187 (valid!2890 (_2!18743 lt!975452)))))

(assert (=> b!2753635 (= lt!975452 (findLongestMatchInnerZipperFastMem!13 (_2!18743 lt!975449) (_3!2796 lt!975449) z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429))))

(declare-fun e!1736204 () Bool)

(assert (=> b!2753635 e!1736204))

(declare-fun res!1154186 () Bool)

(assert (=> b!2753635 (=> (not res!1154186) (not e!1736204))))

(assert (=> b!2753635 (= res!1154186 (valid!2890 (_2!18743 lt!975449)))))

(declare-fun cacheUp!820 () CacheUp!2334)

(assert (=> b!2753635 (= lt!975449 (findLongestMatchInnerZipperFastMem!13 cacheUp!820 cacheDown!939 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429))))

(declare-fun size!24646 (BalanceConc!19492) Int)

(assert (=> b!2753635 (= lt!975429 (size!24646 input!5495))))

(declare-fun list!12042 (BalanceConc!19492) List!31977)

(assert (=> b!2753635 (= lt!975425 (list!12042 input!5495))))

(declare-fun b!2753636 () Bool)

(declare-fun e!1736212 () Bool)

(declare-fun tp!870150 () Bool)

(assert (=> b!2753636 (= e!1736212 (and tp!870150 mapRes!16921))))

(declare-fun condMapEmpty!16921 () Bool)

(declare-fun mapDefault!16921 () List!31979)

(assert (=> b!2753636 (= condMapEmpty!16921 (= (arr!5912 (_values!4003 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31979)) mapDefault!16921)))))

(declare-fun b!2753637 () Bool)

(declare-fun res!1154182 () Bool)

(assert (=> b!2753637 (=> (not res!1154182) (not e!1736194))))

(declare-fun valid!2891 (CacheDown!2454) Bool)

(assert (=> b!2753637 (= res!1154182 (valid!2891 (_3!2796 lt!975452)))))

(declare-fun bm!178148 () Bool)

(declare-fun call!178162 () Bool)

(assert (=> bm!178148 (= call!178162 (isPrefix!2533 lt!975425 lt!975425))))

(declare-fun mapIsEmpty!16922 () Bool)

(declare-fun mapRes!16922 () Bool)

(assert (=> mapIsEmpty!16922 mapRes!16922))

(declare-fun b!2753638 () Bool)

(declare-fun e!1736205 () Bool)

(declare-fun tp!870145 () Bool)

(declare-fun inv!43290 (Conc!9939) Bool)

(assert (=> b!2753638 (= e!1736205 (and (inv!43290 (c!445621 input!5495)) tp!870145))))

(declare-fun tp!870141 () Bool)

(declare-fun tp!870147 () Bool)

(declare-fun e!1736201 () Bool)

(declare-fun array_inv!4228 (array!13248) Bool)

(declare-fun array_inv!4229 (array!13250) Bool)

(assert (=> b!2753639 (= e!1736193 (and tp!870146 tp!870141 tp!870147 (array_inv!4228 (_keys!4023 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) (array_inv!4229 (_values!4004 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) e!1736201))))

(declare-fun bm!178149 () Bool)

(declare-fun call!178148 () Unit!45671)

(declare-fun lemmaIsPrefixRefl!1659 (List!31977 List!31977) Unit!45671)

(assert (=> bm!178149 (= call!178148 (lemmaIsPrefixRefl!1659 lt!975425 lt!975425))))

(declare-fun b!2753640 () Bool)

(declare-fun Unit!45676 () Unit!45671)

(assert (=> b!2753640 (= e!1736207 Unit!45676)))

(declare-fun lt!975463 () Unit!45671)

(assert (=> b!2753640 (= lt!975463 call!178148)))

(assert (=> b!2753640 call!178162))

(declare-fun lt!975443 () Unit!45671)

(assert (=> b!2753640 (= lt!975443 call!178154)))

(assert (=> b!2753640 false))

(declare-fun b!2753641 () Bool)

(declare-fun lt!975465 () Bool)

(assert (=> b!2753641 (= lt!975465 call!178158)))

(assert (=> b!2753641 (= lt!975425 Nil!31877)))

(declare-fun lt!975453 () Unit!45671)

(assert (=> b!2753641 (= lt!975453 call!178154)))

(assert (=> b!2753641 call!178162))

(declare-fun lt!975436 () Unit!45671)

(assert (=> b!2753641 (= lt!975436 call!178148)))

(assert (=> b!2753641 (= e!1736214 0)))

(declare-fun e!1736221 () Bool)

(assert (=> b!2753642 (= e!1736221 (and e!1736196 tp!870138))))

(declare-fun b!2753643 () Bool)

(declare-fun e!1736222 () Bool)

(declare-fun e!1736211 () Bool)

(assert (=> b!2753643 (= e!1736222 e!1736211)))

(declare-fun b!2753644 () Bool)

(declare-fun c!445619 () Bool)

(assert (=> b!2753644 (= c!445619 call!178158)))

(declare-fun lt!975464 () List!31977)

(declare-fun lt!975450 () List!31977)

(assert (=> b!2753644 (= (++!7893 lt!975464 lt!975450) lt!975425)))

(declare-fun lt!975437 () C!16272)

(assert (=> b!2753644 (= lt!975464 (++!7893 Nil!31877 (Cons!31877 lt!975437 Nil!31877)))))

(declare-fun lt!975467 () Unit!45671)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!850 (List!31977 C!16272 List!31977 List!31977) Unit!45671)

(assert (=> b!2753644 (= lt!975467 (lemmaMoveElementToOtherListKeepsConcatEq!850 Nil!31877 lt!975437 lt!975450 lt!975425))))

(declare-fun tail!4367 (List!31977) List!31977)

(assert (=> b!2753644 (= lt!975450 (tail!4367 lt!975425))))

(declare-fun apply!7455 (BalanceConc!19492 Int) C!16272)

(assert (=> b!2753644 (= lt!975437 (apply!7455 input!5495 0))))

(declare-fun head!6129 (List!31977) C!16272)

(assert (=> b!2753644 (isPrefix!2533 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877)) lt!975425)))

(declare-fun lt!975461 () Unit!45671)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!438 (List!31977 List!31977) Unit!45671)

(assert (=> b!2753644 (= lt!975461 (lemmaAddHeadSuffixToPrefixStillPrefix!438 Nil!31877 lt!975425))))

(declare-fun lt!975428 () Unit!45671)

(assert (=> b!2753644 (= lt!975428 e!1736207)))

(declare-fun c!445617 () Bool)

(declare-fun lt!975426 () Int)

(assert (=> b!2753644 (= c!445617 (= lt!975426 lt!975429))))

(declare-fun size!24647 (List!31977) Int)

(assert (=> b!2753644 (<= lt!975426 (size!24647 lt!975425))))

(assert (=> b!2753644 (= lt!975426 (size!24647 Nil!31877))))

(declare-fun lt!975433 () Unit!45671)

(declare-fun lemmaIsPrefixThenSmallerEqSize!241 (List!31977 List!31977) Unit!45671)

(assert (=> b!2753644 (= lt!975433 (lemmaIsPrefixThenSmallerEqSize!241 Nil!31877 lt!975425))))

(declare-fun drop!1688 (List!31977 Int) List!31977)

(declare-fun apply!7456 (List!31977 Int) C!16272)

(assert (=> b!2753644 (= (head!6129 (drop!1688 lt!975425 0)) (apply!7456 lt!975425 0))))

(declare-fun lt!975454 () Unit!45671)

(declare-fun lemmaDropApply!894 (List!31977 Int) Unit!45671)

(assert (=> b!2753644 (= lt!975454 (lemmaDropApply!894 lt!975425 0))))

(declare-fun lt!975474 () List!31977)

(declare-fun lt!975441 () List!31977)

(assert (=> b!2753644 (and (= lt!975474 Nil!31877) (= lt!975441 lt!975425))))

(declare-fun lt!975477 () Unit!45671)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!320 (List!31977 List!31977 List!31977 List!31977) Unit!45671)

(assert (=> b!2753644 (= lt!975477 (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975474 lt!975441 Nil!31877 lt!975425))))

(declare-datatypes ((tuple2!31894 0))(
  ( (tuple2!31895 (_1!18745 BalanceConc!19492) (_2!18745 BalanceConc!19492)) )
))
(declare-fun lt!975475 () tuple2!31894)

(assert (=> b!2753644 (= lt!975441 (list!12042 (_2!18745 lt!975475)))))

(assert (=> b!2753644 (= lt!975474 (list!12042 (_1!18745 lt!975475)))))

(declare-fun splitAt!87 (BalanceConc!19492 Int) tuple2!31894)

(assert (=> b!2753644 (= lt!975475 (splitAt!87 input!5495 0))))

(declare-fun e!1736195 () Int)

(assert (=> b!2753644 (= e!1736214 e!1736195)))

(declare-fun b!2753645 () Bool)

(declare-fun e!1736208 () Bool)

(declare-fun lt!975478 () MutLongMap!3722)

(assert (=> b!2753645 (= e!1736208 (and e!1736222 ((_ is LongMap!3722) lt!975478)))))

(assert (=> b!2753645 (= lt!975478 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))

(declare-fun b!2753646 () Bool)

(declare-fun tp!870149 () Bool)

(assert (=> b!2753646 (= e!1736201 (and tp!870149 mapRes!16922))))

(declare-fun condMapEmpty!16922 () Bool)

(declare-fun mapDefault!16922 () List!31980)

(assert (=> b!2753646 (= condMapEmpty!16922 (= (arr!5914 (_values!4004 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31980)) mapDefault!16922)))))

(declare-fun b!2753647 () Bool)

(declare-fun res!1154185 () Bool)

(assert (=> b!2753647 (=> (not res!1154185) (not e!1736204))))

(assert (=> b!2753647 (= res!1154185 (valid!2891 (_3!2796 lt!975449)))))

(declare-fun b!2753648 () Bool)

(declare-fun res!1154189 () Bool)

(declare-fun call!178153 () Bool)

(assert (=> b!2753648 (= res!1154189 call!178153)))

(declare-fun e!1736223 () Bool)

(assert (=> b!2753648 (=> (not res!1154189) (not e!1736223))))

(declare-fun b!2753649 () Bool)

(declare-fun e!1736218 () Bool)

(assert (=> b!2753649 (= e!1736211 e!1736218)))

(declare-fun mapNonEmpty!16921 () Bool)

(declare-fun tp!870144 () Bool)

(declare-fun tp!870143 () Bool)

(assert (=> mapNonEmpty!16921 (= mapRes!16922 (and tp!870144 tp!870143))))

(declare-fun mapValue!16921 () List!31980)

(declare-fun mapKey!16922 () (_ BitVec 32))

(declare-fun mapRest!16921 () (Array (_ BitVec 32) List!31980))

(assert (=> mapNonEmpty!16921 (= (arr!5914 (_values!4004 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) (store mapRest!16921 mapKey!16922 mapValue!16921))))

(declare-fun call!178155 () tuple3!4654)

(declare-fun bm!178150 () Bool)

(declare-fun lt!975448 () C!16272)

(declare-fun derivationStepZipperMem!80 ((InoxSet Context!4550) C!16272 CacheUp!2334 CacheDown!2454) tuple3!4654)

(assert (=> bm!178150 (= call!178155 (derivationStepZipperMem!80 z!3597 lt!975448 (_2!18743 lt!975449) (_3!2796 lt!975449)))))

(declare-fun bm!178151 () Bool)

(declare-fun call!178156 () Int)

(declare-fun call!178160 () (InoxSet Context!4550))

(assert (=> bm!178151 (= call!178156 (findLongestMatchInnerZipperFast!15 call!178160 lt!975464 1 lt!975450 input!5495 lt!975429))))

(declare-fun b!2753650 () Bool)

(assert (=> b!2753650 (= e!1736204 (= (_1!18743 lt!975449) (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429)))))

(declare-fun b!2753651 () Bool)

(assert (=> b!2753651 (= e!1736195 call!178156)))

(declare-fun b!2753652 () Bool)

(assert (=> b!2753652 (= c!445614 call!178161)))

(assert (=> b!2753652 (= (++!7893 lt!975459 lt!975431) lt!975425)))

(assert (=> b!2753652 (= lt!975459 (++!7893 Nil!31877 (Cons!31877 lt!975448 Nil!31877)))))

(declare-fun lt!975444 () Unit!45671)

(assert (=> b!2753652 (= lt!975444 (lemmaMoveElementToOtherListKeepsConcatEq!850 Nil!31877 lt!975448 lt!975431 lt!975425))))

(assert (=> b!2753652 (= lt!975431 (tail!4367 lt!975425))))

(assert (=> b!2753652 (= lt!975448 (apply!7455 input!5495 0))))

(assert (=> b!2753652 (isPrefix!2533 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877)) lt!975425)))

(declare-fun lt!975445 () Unit!45671)

(assert (=> b!2753652 (= lt!975445 (lemmaAddHeadSuffixToPrefixStillPrefix!438 Nil!31877 lt!975425))))

(declare-fun lt!975427 () Unit!45671)

(assert (=> b!2753652 (= lt!975427 e!1736219)))

(declare-fun c!445612 () Bool)

(declare-fun lt!975469 () Int)

(assert (=> b!2753652 (= c!445612 (= lt!975469 lt!975429))))

(assert (=> b!2753652 (<= lt!975469 (size!24647 lt!975425))))

(assert (=> b!2753652 (= lt!975469 (size!24647 Nil!31877))))

(declare-fun lt!975457 () Unit!45671)

(assert (=> b!2753652 (= lt!975457 (lemmaIsPrefixThenSmallerEqSize!241 Nil!31877 lt!975425))))

(assert (=> b!2753652 (= (head!6129 (drop!1688 lt!975425 0)) (apply!7456 lt!975425 0))))

(declare-fun lt!975442 () Unit!45671)

(assert (=> b!2753652 (= lt!975442 (lemmaDropApply!894 lt!975425 0))))

(declare-fun lt!975468 () List!31977)

(declare-fun lt!975451 () List!31977)

(assert (=> b!2753652 (and (= lt!975468 Nil!31877) (= lt!975451 lt!975425))))

(declare-fun lt!975462 () Unit!45671)

(assert (=> b!2753652 (= lt!975462 (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975468 lt!975451 Nil!31877 lt!975425))))

(declare-fun lt!975460 () tuple2!31894)

(assert (=> b!2753652 (= lt!975451 (list!12042 (_2!18745 lt!975460)))))

(assert (=> b!2753652 (= lt!975468 (list!12042 (_1!18745 lt!975460)))))

(assert (=> b!2753652 (= lt!975460 (splitAt!87 input!5495 0))))

(declare-fun e!1736199 () tuple3!4650)

(assert (=> b!2753652 (= e!1736216 e!1736199)))

(declare-fun setElem!22074 () Context!4550)

(declare-fun e!1736202 () Bool)

(declare-fun setNonEmpty!22074 () Bool)

(declare-fun tp!870134 () Bool)

(declare-fun inv!43291 (Context!4550) Bool)

(assert (=> setNonEmpty!22074 (= setRes!22074 (and tp!870134 (inv!43291 setElem!22074) e!1736202))))

(declare-fun setRest!22074 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22074 (= z!3597 ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22074 true) setRest!22074))))

(declare-fun bm!178152 () Bool)

(assert (=> bm!178152 (= call!178152 (isPrefix!2533 lt!975425 lt!975425))))

(declare-fun call!178151 () Bool)

(declare-fun bm!178153 () Bool)

(declare-fun lt!975470 () tuple3!4652)

(assert (=> bm!178153 (= call!178151 (valid!2890 (ite c!445614 (_2!18743 lt!975455) (_2!18743 lt!975470))))))

(declare-fun b!2753653 () Bool)

(declare-fun res!1154183 () Bool)

(assert (=> b!2753653 (= res!1154183 call!178153)))

(assert (=> b!2753653 (=> (not res!1154183) (not e!1736217))))

(declare-fun bm!178154 () Bool)

(assert (=> bm!178154 (= call!178153 (valid!2891 (ite c!445614 (_3!2796 lt!975455) (_3!2796 lt!975470))))))

(declare-fun res!1154181 () Bool)

(assert (=> start!266956 (=> (not res!1154181) (not e!1736210))))

(assert (=> start!266956 (= res!1154181 (valid!2890 cacheUp!820))))

(assert (=> start!266956 e!1736210))

(declare-fun e!1736213 () Bool)

(declare-fun inv!43292 (CacheUp!2334) Bool)

(assert (=> start!266956 (and (inv!43292 cacheUp!820) e!1736213)))

(declare-fun e!1736203 () Bool)

(declare-fun inv!43293 (CacheDown!2454) Bool)

(assert (=> start!266956 (and (inv!43293 cacheDown!939) e!1736203)))

(declare-fun condSetEmpty!22074 () Bool)

(assert (=> start!266956 (= condSetEmpty!22074 (= z!3597 ((as const (Array Context!4550 Bool)) false)))))

(assert (=> start!266956 setRes!22074))

(declare-fun inv!43294 (BalanceConc!19492) Bool)

(assert (=> start!266956 (and (inv!43294 input!5495) e!1736205)))

(declare-fun b!2753654 () Bool)

(declare-fun res!1154179 () Bool)

(assert (=> b!2753654 (=> res!1154179 e!1736220)))

(assert (=> b!2753654 (= res!1154179 (not (= 0 (size!24647 Nil!31877))))))

(declare-fun b!2753655 () Bool)

(declare-fun res!1154188 () Bool)

(assert (=> b!2753655 (=> (not res!1154188) (not e!1736210))))

(assert (=> b!2753655 (= res!1154188 (valid!2891 cacheDown!939))))

(declare-fun tp!870139 () Bool)

(declare-fun tp!870148 () Bool)

(declare-fun array_inv!4230 (array!13246) Bool)

(assert (=> b!2753656 (= e!1736218 (and tp!870137 tp!870148 tp!870139 (array_inv!4228 (_keys!4022 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) (array_inv!4230 (_values!4003 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) e!1736212))))

(declare-fun b!2753657 () Bool)

(assert (=> b!2753657 (= e!1736199 (tuple3!4651 (_1!18743 lt!975470) (_3!2796 lt!975470) (_2!18743 lt!975470)))))

(assert (=> b!2753657 (= lt!975473 call!178155)))

(assert (=> b!2753657 (= lt!975470 call!178150)))

(declare-fun res!1154178 () Bool)

(assert (=> b!2753657 (= res!1154178 call!178151)))

(assert (=> b!2753657 (=> (not res!1154178) (not e!1736223))))

(assert (=> b!2753657 e!1736223))

(declare-fun mapNonEmpty!16922 () Bool)

(declare-fun tp!870135 () Bool)

(declare-fun tp!870136 () Bool)

(assert (=> mapNonEmpty!16922 (= mapRes!16921 (and tp!870135 tp!870136))))

(declare-fun mapKey!16921 () (_ BitVec 32))

(declare-fun mapValue!16922 () List!31979)

(declare-fun mapRest!16922 () (Array (_ BitVec 32) List!31979))

(assert (=> mapNonEmpty!16922 (= (arr!5912 (_values!4003 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) (store mapRest!16922 mapKey!16921 mapValue!16922))))

(declare-fun b!2753658 () Bool)

(assert (=> b!2753658 (= e!1736203 e!1736221)))

(declare-fun bm!178155 () Bool)

(declare-fun derivationStepZipper!349 ((InoxSet Context!4550) C!16272) (InoxSet Context!4550))

(assert (=> bm!178155 (= call!178160 (derivationStepZipper!349 z!3597 lt!975437))))

(declare-fun bm!178156 () Bool)

(assert (=> bm!178156 (= call!178157 (lemmaIsPrefixRefl!1659 lt!975425 lt!975425))))

(declare-fun b!2753659 () Bool)

(assert (=> b!2753659 (= e!1736194 (= (_1!18743 lt!975452) (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429)))))

(declare-fun b!2753660 () Bool)

(declare-fun lt!975439 () Int)

(assert (=> b!2753660 (= e!1736195 (ite (= lt!975439 0) 0 lt!975439))))

(assert (=> b!2753660 (= lt!975439 call!178156)))

(declare-fun b!2753661 () Bool)

(assert (=> b!2753661 (= e!1736223 (= (_1!18743 lt!975470) call!178159))))

(declare-fun b!2753662 () Bool)

(assert (=> b!2753662 (= e!1736206 e!1736200)))

(declare-fun b!2753663 () Bool)

(declare-fun e!1736197 () Bool)

(assert (=> b!2753663 (= e!1736213 e!1736197)))

(declare-fun bm!178157 () Bool)

(assert (=> bm!178157 (= call!178159 (findLongestMatchInnerZipperFast!15 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429))))

(declare-fun b!2753664 () Bool)

(assert (=> b!2753664 (= e!1736220 (= lt!975429 (size!24647 lt!975425)))))

(assert (=> b!2753665 (= e!1736197 (and e!1736208 tp!870142))))

(declare-fun b!2753666 () Bool)

(declare-fun tp!870140 () Bool)

(assert (=> b!2753666 (= e!1736202 tp!870140)))

(declare-fun b!2753667 () Bool)

(assert (=> b!2753667 (= e!1736215 (tuple3!4651 0 (_3!2796 lt!975449) (_2!18743 lt!975449)))))

(declare-fun b!2753668 () Bool)

(assert (=> b!2753668 (= e!1736209 (= lt!975438 0))))

(declare-fun b!2753669 () Bool)

(assert (=> b!2753669 (= e!1736199 (tuple3!4651 (ite (= (_1!18743 lt!975455) 0) 0 (_1!18743 lt!975455)) (_3!2796 lt!975455) (_2!18743 lt!975455)))))

(assert (=> b!2753669 (= lt!975435 call!178155)))

(assert (=> b!2753669 (= lt!975455 call!178150)))

(declare-fun res!1154184 () Bool)

(assert (=> b!2753669 (= res!1154184 call!178151)))

(assert (=> b!2753669 (=> (not res!1154184) (not e!1736217))))

(assert (=> b!2753669 e!1736217))

(assert (= (and start!266956 res!1154181) b!2753655))

(assert (= (and b!2753655 res!1154188) b!2753635))

(assert (= (and b!2753635 res!1154186) b!2753647))

(assert (= (and b!2753647 res!1154185) b!2753650))

(assert (= (and b!2753635 res!1154187) b!2753637))

(assert (= (and b!2753637 res!1154182) b!2753659))

(assert (= (and b!2753635 c!445615) b!2753667))

(assert (= (and b!2753635 (not c!445615)) b!2753632))

(assert (= (and b!2753632 c!445618) b!2753627))

(assert (= (and b!2753632 (not c!445618)) b!2753652))

(assert (= (and b!2753652 c!445612) b!2753631))

(assert (= (and b!2753652 (not c!445612)) b!2753629))

(assert (= (and b!2753652 c!445614) b!2753669))

(assert (= (and b!2753652 (not c!445614)) b!2753657))

(assert (= (and b!2753669 res!1154184) b!2753653))

(assert (= (and b!2753653 res!1154183) b!2753633))

(assert (= (and b!2753657 res!1154178) b!2753648))

(assert (= (and b!2753648 res!1154189) b!2753661))

(assert (= (or b!2753669 b!2753657) bm!178153))

(assert (= (or b!2753669 b!2753657) bm!178145))

(assert (= (or b!2753669 b!2753657) bm!178150))

(assert (= (or b!2753653 b!2753648) bm!178154))

(assert (= (or b!2753633 b!2753661) bm!178157))

(assert (= (or b!2753627 b!2753652) bm!178144))

(assert (= (or b!2753627 b!2753631) bm!178156))

(assert (= (or b!2753627 b!2753631) bm!178143))

(assert (= (or b!2753627 b!2753631) bm!178152))

(assert (= (and b!2753635 c!445616) b!2753668))

(assert (= (and b!2753635 (not c!445616)) b!2753628))

(assert (= (and b!2753628 c!445613) b!2753641))

(assert (= (and b!2753628 (not c!445613)) b!2753644))

(assert (= (and b!2753644 c!445617) b!2753640))

(assert (= (and b!2753644 (not c!445617)) b!2753634))

(assert (= (and b!2753644 c!445619) b!2753660))

(assert (= (and b!2753644 (not c!445619)) b!2753651))

(assert (= (or b!2753660 b!2753651) bm!178155))

(assert (= (or b!2753660 b!2753651) bm!178151))

(assert (= (or b!2753641 b!2753644) bm!178146))

(assert (= (or b!2753641 b!2753640) bm!178149))

(assert (= (or b!2753641 b!2753640) bm!178147))

(assert (= (or b!2753641 b!2753640) bm!178148))

(assert (= (and b!2753635 (not res!1154180)) b!2753654))

(assert (= (and b!2753654 (not res!1154179)) b!2753664))

(assert (= (and b!2753636 condMapEmpty!16921) mapIsEmpty!16921))

(assert (= (and b!2753636 (not condMapEmpty!16921)) mapNonEmpty!16922))

(assert (= b!2753656 b!2753636))

(assert (= b!2753649 b!2753656))

(assert (= b!2753643 b!2753649))

(assert (= (and b!2753645 ((_ is LongMap!3722) (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))) b!2753643))

(assert (= b!2753665 b!2753645))

(assert (= (and b!2753663 ((_ is HashMap!3628) (cache!3771 cacheUp!820))) b!2753665))

(assert (= start!266956 b!2753663))

(assert (= (and b!2753646 condMapEmpty!16922) mapIsEmpty!16922))

(assert (= (and b!2753646 (not condMapEmpty!16922)) mapNonEmpty!16921))

(assert (= b!2753639 b!2753646))

(assert (= b!2753626 b!2753639))

(assert (= b!2753662 b!2753626))

(assert (= (and b!2753630 ((_ is LongMap!3723) (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))) b!2753662))

(assert (= b!2753642 b!2753630))

(assert (= (and b!2753658 ((_ is HashMap!3629) (cache!3772 cacheDown!939))) b!2753642))

(assert (= start!266956 b!2753658))

(assert (= (and start!266956 condSetEmpty!22074) setIsEmpty!22074))

(assert (= (and start!266956 (not condSetEmpty!22074)) setNonEmpty!22074))

(assert (= setNonEmpty!22074 b!2753666))

(assert (= start!266956 b!2753638))

(declare-fun m!3168983 () Bool)

(assert (=> b!2753652 m!3168983))

(declare-fun m!3168985 () Bool)

(assert (=> b!2753652 m!3168985))

(declare-fun m!3168987 () Bool)

(assert (=> b!2753652 m!3168987))

(declare-fun m!3168989 () Bool)

(assert (=> b!2753652 m!3168989))

(declare-fun m!3168991 () Bool)

(assert (=> b!2753652 m!3168991))

(declare-fun m!3168993 () Bool)

(assert (=> b!2753652 m!3168993))

(declare-fun m!3168995 () Bool)

(assert (=> b!2753652 m!3168995))

(declare-fun m!3168997 () Bool)

(assert (=> b!2753652 m!3168997))

(declare-fun m!3168999 () Bool)

(assert (=> b!2753652 m!3168999))

(assert (=> b!2753652 m!3168989))

(declare-fun m!3169001 () Bool)

(assert (=> b!2753652 m!3169001))

(declare-fun m!3169003 () Bool)

(assert (=> b!2753652 m!3169003))

(declare-fun m!3169005 () Bool)

(assert (=> b!2753652 m!3169005))

(declare-fun m!3169007 () Bool)

(assert (=> b!2753652 m!3169007))

(declare-fun m!3169009 () Bool)

(assert (=> b!2753652 m!3169009))

(declare-fun m!3169011 () Bool)

(assert (=> b!2753652 m!3169011))

(declare-fun m!3169013 () Bool)

(assert (=> b!2753652 m!3169013))

(declare-fun m!3169015 () Bool)

(assert (=> b!2753652 m!3169015))

(assert (=> b!2753652 m!3168985))

(declare-fun m!3169017 () Bool)

(assert (=> b!2753652 m!3169017))

(declare-fun m!3169019 () Bool)

(assert (=> b!2753652 m!3169019))

(declare-fun m!3169021 () Bool)

(assert (=> b!2753652 m!3169021))

(declare-fun m!3169023 () Bool)

(assert (=> bm!178157 m!3169023))

(declare-fun m!3169025 () Bool)

(assert (=> bm!178152 m!3169025))

(declare-fun m!3169027 () Bool)

(assert (=> b!2753655 m!3169027))

(declare-fun m!3169029 () Bool)

(assert (=> mapNonEmpty!16921 m!3169029))

(declare-fun m!3169031 () Bool)

(assert (=> setNonEmpty!22074 m!3169031))

(declare-fun m!3169033 () Bool)

(assert (=> bm!178147 m!3169033))

(declare-fun m!3169035 () Bool)

(assert (=> b!2753650 m!3169035))

(declare-fun m!3169037 () Bool)

(assert (=> bm!178149 m!3169037))

(declare-fun m!3169039 () Bool)

(assert (=> b!2753637 m!3169039))

(declare-fun m!3169041 () Bool)

(assert (=> bm!178153 m!3169041))

(declare-fun m!3169043 () Bool)

(assert (=> start!266956 m!3169043))

(declare-fun m!3169045 () Bool)

(assert (=> start!266956 m!3169045))

(declare-fun m!3169047 () Bool)

(assert (=> start!266956 m!3169047))

(declare-fun m!3169049 () Bool)

(assert (=> start!266956 m!3169049))

(assert (=> bm!178148 m!3169025))

(declare-fun m!3169051 () Bool)

(assert (=> bm!178150 m!3169051))

(assert (=> b!2753659 m!3169035))

(assert (=> b!2753664 m!3169009))

(declare-fun m!3169053 () Bool)

(assert (=> bm!178144 m!3169053))

(declare-fun m!3169055 () Bool)

(assert (=> b!2753638 m!3169055))

(declare-fun m!3169057 () Bool)

(assert (=> bm!178145 m!3169057))

(declare-fun m!3169059 () Bool)

(assert (=> b!2753644 m!3169059))

(declare-fun m!3169061 () Bool)

(assert (=> b!2753644 m!3169061))

(assert (=> b!2753644 m!3168983))

(assert (=> b!2753644 m!3168985))

(assert (=> b!2753644 m!3168987))

(declare-fun m!3169063 () Bool)

(assert (=> b!2753644 m!3169063))

(assert (=> b!2753644 m!3168989))

(assert (=> b!2753644 m!3168991))

(assert (=> b!2753644 m!3168995))

(assert (=> b!2753644 m!3168997))

(assert (=> b!2753644 m!3168989))

(assert (=> b!2753644 m!3168985))

(assert (=> b!2753644 m!3169003))

(assert (=> b!2753644 m!3169005))

(declare-fun m!3169065 () Bool)

(assert (=> b!2753644 m!3169065))

(assert (=> b!2753644 m!3169019))

(assert (=> b!2753644 m!3169009))

(assert (=> b!2753644 m!3169013))

(declare-fun m!3169067 () Bool)

(assert (=> b!2753644 m!3169067))

(assert (=> b!2753644 m!3168999))

(declare-fun m!3169069 () Bool)

(assert (=> b!2753644 m!3169069))

(assert (=> b!2753644 m!3169007))

(declare-fun m!3169071 () Bool)

(assert (=> bm!178151 m!3169071))

(assert (=> b!2753654 m!3169013))

(declare-fun m!3169073 () Bool)

(assert (=> b!2753647 m!3169073))

(declare-fun m!3169075 () Bool)

(assert (=> bm!178154 m!3169075))

(declare-fun m!3169077 () Bool)

(assert (=> b!2753656 m!3169077))

(declare-fun m!3169079 () Bool)

(assert (=> b!2753656 m!3169079))

(assert (=> bm!178146 m!3169053))

(declare-fun m!3169081 () Bool)

(assert (=> bm!178155 m!3169081))

(declare-fun m!3169083 () Bool)

(assert (=> b!2753639 m!3169083))

(declare-fun m!3169085 () Bool)

(assert (=> b!2753639 m!3169085))

(declare-fun m!3169087 () Bool)

(assert (=> b!2753635 m!3169087))

(declare-fun m!3169089 () Bool)

(assert (=> b!2753635 m!3169089))

(declare-fun m!3169091 () Bool)

(assert (=> b!2753635 m!3169091))

(declare-fun m!3169093 () Bool)

(assert (=> b!2753635 m!3169093))

(assert (=> b!2753635 m!3169035))

(declare-fun m!3169095 () Bool)

(assert (=> b!2753635 m!3169095))

(declare-fun m!3169097 () Bool)

(assert (=> b!2753635 m!3169097))

(declare-fun m!3169099 () Bool)

(assert (=> b!2753635 m!3169099))

(declare-fun m!3169101 () Bool)

(assert (=> b!2753635 m!3169101))

(declare-fun m!3169103 () Bool)

(assert (=> b!2753635 m!3169103))

(declare-fun m!3169105 () Bool)

(assert (=> b!2753635 m!3169105))

(declare-fun m!3169107 () Bool)

(assert (=> b!2753635 m!3169107))

(declare-fun m!3169109 () Bool)

(assert (=> b!2753635 m!3169109))

(assert (=> bm!178156 m!3169037))

(declare-fun m!3169111 () Bool)

(assert (=> mapNonEmpty!16922 m!3169111))

(assert (=> bm!178143 m!3169033))

(check-sat (not bm!178145) b_and!202669 (not bm!178157) (not bm!178148) b_and!202665 b_and!202663 (not bm!178150) (not b_next!78629) (not bm!178155) (not b!2753664) (not b!2753652) (not b_next!78631) (not bm!178152) (not b!2753647) (not mapNonEmpty!16921) (not bm!178147) (not bm!178156) (not b!2753636) (not b!2753659) (not b_next!78635) (not b!2753638) (not bm!178149) (not bm!178143) (not bm!178151) (not b!2753655) (not b!2753650) (not bm!178153) (not b!2753637) b_and!202667 (not b!2753666) (not b!2753644) (not b!2753635) (not bm!178146) (not setNonEmpty!22074) (not b!2753639) (not mapNonEmpty!16922) (not b_next!78633) (not start!266956) (not b!2753656) (not bm!178154) (not b!2753646) (not bm!178144) (not b!2753654))
(check-sat b_and!202669 (not b_next!78635) b_and!202665 b_and!202663 b_and!202667 (not b_next!78629) (not b_next!78631) (not b_next!78633))
(get-model)

(declare-fun d!796935 () Bool)

(declare-fun lambda!100971 () Int)

(declare-fun exists!953 ((InoxSet Context!4550) Int) Bool)

(assert (=> d!796935 (= (nullableZipper!612 z!3597) (exists!953 z!3597 lambda!100971))))

(declare-fun bs!490522 () Bool)

(assert (= bs!490522 d!796935))

(declare-fun m!3169113 () Bool)

(assert (=> bs!490522 m!3169113))

(assert (=> bm!178146 d!796935))

(declare-fun d!796937 () Bool)

(assert (=> d!796937 (isPrefix!2533 lt!975425 lt!975425)))

(declare-fun lt!975481 () Unit!45671)

(declare-fun choose!16127 (List!31977 List!31977) Unit!45671)

(assert (=> d!796937 (= lt!975481 (choose!16127 lt!975425 lt!975425))))

(assert (=> d!796937 (= (lemmaIsPrefixRefl!1659 lt!975425 lt!975425) lt!975481)))

(declare-fun bs!490523 () Bool)

(assert (= bs!490523 d!796937))

(assert (=> bs!490523 m!3169025))

(declare-fun m!3169115 () Bool)

(assert (=> bs!490523 m!3169115))

(assert (=> bm!178156 d!796937))

(declare-fun d!796939 () Bool)

(declare-fun validCacheMapDown!384 (MutableMap!3629) Bool)

(assert (=> d!796939 (= (valid!2891 (_3!2796 lt!975449)) (validCacheMapDown!384 (cache!3772 (_3!2796 lt!975449))))))

(declare-fun bs!490524 () Bool)

(assert (= bs!490524 d!796939))

(declare-fun m!3169117 () Bool)

(assert (=> bs!490524 m!3169117))

(assert (=> b!2753647 d!796939))

(declare-fun d!796941 () Bool)

(assert (=> d!796941 true))

(declare-fun lambda!100974 () Int)

(declare-fun flatMap!176 ((InoxSet Context!4550) Int) (InoxSet Context!4550))

(assert (=> d!796941 (= (derivationStepZipper!349 z!3597 lt!975437) (flatMap!176 z!3597 lambda!100974))))

(declare-fun bs!490525 () Bool)

(assert (= bs!490525 d!796941))

(declare-fun m!3169119 () Bool)

(assert (=> bs!490525 m!3169119))

(assert (=> bm!178155 d!796941))

(declare-fun b!2753683 () Bool)

(declare-fun e!1736231 () Bool)

(assert (=> b!2753683 (= e!1736231 (>= (size!24647 lt!975425) (size!24647 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877)))))))

(declare-fun b!2753680 () Bool)

(declare-fun e!1736230 () Bool)

(declare-fun e!1736232 () Bool)

(assert (=> b!2753680 (= e!1736230 e!1736232)))

(declare-fun res!1154198 () Bool)

(assert (=> b!2753680 (=> (not res!1154198) (not e!1736232))))

(assert (=> b!2753680 (= res!1154198 (not ((_ is Nil!31877) lt!975425)))))

(declare-fun d!796943 () Bool)

(assert (=> d!796943 e!1736231))

(declare-fun res!1154199 () Bool)

(assert (=> d!796943 (=> res!1154199 e!1736231)))

(declare-fun lt!975484 () Bool)

(assert (=> d!796943 (= res!1154199 (not lt!975484))))

(assert (=> d!796943 (= lt!975484 e!1736230)))

(declare-fun res!1154201 () Bool)

(assert (=> d!796943 (=> res!1154201 e!1736230)))

(assert (=> d!796943 (= res!1154201 ((_ is Nil!31877) (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877))))))

(assert (=> d!796943 (= (isPrefix!2533 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877)) lt!975425) lt!975484)))

(declare-fun b!2753682 () Bool)

(assert (=> b!2753682 (= e!1736232 (isPrefix!2533 (tail!4367 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877))) (tail!4367 lt!975425)))))

(declare-fun b!2753681 () Bool)

(declare-fun res!1154200 () Bool)

(assert (=> b!2753681 (=> (not res!1154200) (not e!1736232))))

(assert (=> b!2753681 (= res!1154200 (= (head!6129 (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877))) (head!6129 lt!975425)))))

(assert (= (and d!796943 (not res!1154201)) b!2753680))

(assert (= (and b!2753680 res!1154198) b!2753681))

(assert (= (and b!2753681 res!1154200) b!2753682))

(assert (= (and d!796943 (not res!1154199)) b!2753683))

(assert (=> b!2753683 m!3169009))

(assert (=> b!2753683 m!3168989))

(declare-fun m!3169121 () Bool)

(assert (=> b!2753683 m!3169121))

(assert (=> b!2753682 m!3168989))

(declare-fun m!3169123 () Bool)

(assert (=> b!2753682 m!3169123))

(assert (=> b!2753682 m!3169005))

(assert (=> b!2753682 m!3169123))

(assert (=> b!2753682 m!3169005))

(declare-fun m!3169125 () Bool)

(assert (=> b!2753682 m!3169125))

(assert (=> b!2753681 m!3168989))

(declare-fun m!3169127 () Bool)

(assert (=> b!2753681 m!3169127))

(declare-fun m!3169129 () Bool)

(assert (=> b!2753681 m!3169129))

(assert (=> b!2753644 d!796943))

(declare-fun d!796945 () Bool)

(declare-fun lt!975487 () Int)

(assert (=> d!796945 (>= lt!975487 0)))

(declare-fun e!1736235 () Int)

(assert (=> d!796945 (= lt!975487 e!1736235)))

(declare-fun c!445628 () Bool)

(assert (=> d!796945 (= c!445628 ((_ is Nil!31877) lt!975425))))

(assert (=> d!796945 (= (size!24647 lt!975425) lt!975487)))

(declare-fun b!2753688 () Bool)

(assert (=> b!2753688 (= e!1736235 0)))

(declare-fun b!2753689 () Bool)

(assert (=> b!2753689 (= e!1736235 (+ 1 (size!24647 (t!228081 lt!975425))))))

(assert (= (and d!796945 c!445628) b!2753688))

(assert (= (and d!796945 (not c!445628)) b!2753689))

(declare-fun m!3169131 () Bool)

(assert (=> b!2753689 m!3169131))

(assert (=> b!2753644 d!796945))

(declare-fun b!2753700 () Bool)

(declare-fun res!1154207 () Bool)

(declare-fun e!1736240 () Bool)

(assert (=> b!2753700 (=> (not res!1154207) (not e!1736240))))

(declare-fun lt!975490 () List!31977)

(assert (=> b!2753700 (= res!1154207 (= (size!24647 lt!975490) (+ (size!24647 Nil!31877) (size!24647 (Cons!31877 lt!975437 Nil!31877)))))))

(declare-fun b!2753699 () Bool)

(declare-fun e!1736241 () List!31977)

(assert (=> b!2753699 (= e!1736241 (Cons!31877 (h!37297 Nil!31877) (++!7893 (t!228081 Nil!31877) (Cons!31877 lt!975437 Nil!31877))))))

(declare-fun d!796947 () Bool)

(assert (=> d!796947 e!1736240))

(declare-fun res!1154206 () Bool)

(assert (=> d!796947 (=> (not res!1154206) (not e!1736240))))

(declare-fun content!4489 (List!31977) (InoxSet C!16272))

(assert (=> d!796947 (= res!1154206 (= (content!4489 lt!975490) ((_ map or) (content!4489 Nil!31877) (content!4489 (Cons!31877 lt!975437 Nil!31877)))))))

(assert (=> d!796947 (= lt!975490 e!1736241)))

(declare-fun c!445631 () Bool)

(assert (=> d!796947 (= c!445631 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!796947 (= (++!7893 Nil!31877 (Cons!31877 lt!975437 Nil!31877)) lt!975490)))

(declare-fun b!2753701 () Bool)

(assert (=> b!2753701 (= e!1736240 (or (not (= (Cons!31877 lt!975437 Nil!31877) Nil!31877)) (= lt!975490 Nil!31877)))))

(declare-fun b!2753698 () Bool)

(assert (=> b!2753698 (= e!1736241 (Cons!31877 lt!975437 Nil!31877))))

(assert (= (and d!796947 c!445631) b!2753698))

(assert (= (and d!796947 (not c!445631)) b!2753699))

(assert (= (and d!796947 res!1154206) b!2753700))

(assert (= (and b!2753700 res!1154207) b!2753701))

(declare-fun m!3169133 () Bool)

(assert (=> b!2753700 m!3169133))

(assert (=> b!2753700 m!3169013))

(declare-fun m!3169135 () Bool)

(assert (=> b!2753700 m!3169135))

(declare-fun m!3169137 () Bool)

(assert (=> b!2753699 m!3169137))

(declare-fun m!3169139 () Bool)

(assert (=> d!796947 m!3169139))

(declare-fun m!3169141 () Bool)

(assert (=> d!796947 m!3169141))

(declare-fun m!3169143 () Bool)

(assert (=> d!796947 m!3169143))

(assert (=> b!2753644 d!796947))

(declare-fun b!2753704 () Bool)

(declare-fun res!1154209 () Bool)

(declare-fun e!1736242 () Bool)

(assert (=> b!2753704 (=> (not res!1154209) (not e!1736242))))

(declare-fun lt!975491 () List!31977)

(assert (=> b!2753704 (= res!1154209 (= (size!24647 lt!975491) (+ (size!24647 Nil!31877) (size!24647 (Cons!31877 (head!6129 lt!975471) Nil!31877)))))))

(declare-fun b!2753703 () Bool)

(declare-fun e!1736243 () List!31977)

(assert (=> b!2753703 (= e!1736243 (Cons!31877 (h!37297 Nil!31877) (++!7893 (t!228081 Nil!31877) (Cons!31877 (head!6129 lt!975471) Nil!31877))))))

(declare-fun d!796949 () Bool)

(assert (=> d!796949 e!1736242))

(declare-fun res!1154208 () Bool)

(assert (=> d!796949 (=> (not res!1154208) (not e!1736242))))

(assert (=> d!796949 (= res!1154208 (= (content!4489 lt!975491) ((_ map or) (content!4489 Nil!31877) (content!4489 (Cons!31877 (head!6129 lt!975471) Nil!31877)))))))

(assert (=> d!796949 (= lt!975491 e!1736243)))

(declare-fun c!445632 () Bool)

(assert (=> d!796949 (= c!445632 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!796949 (= (++!7893 Nil!31877 (Cons!31877 (head!6129 lt!975471) Nil!31877)) lt!975491)))

(declare-fun b!2753705 () Bool)

(assert (=> b!2753705 (= e!1736242 (or (not (= (Cons!31877 (head!6129 lt!975471) Nil!31877) Nil!31877)) (= lt!975491 Nil!31877)))))

(declare-fun b!2753702 () Bool)

(assert (=> b!2753702 (= e!1736243 (Cons!31877 (head!6129 lt!975471) Nil!31877))))

(assert (= (and d!796949 c!445632) b!2753702))

(assert (= (and d!796949 (not c!445632)) b!2753703))

(assert (= (and d!796949 res!1154208) b!2753704))

(assert (= (and b!2753704 res!1154209) b!2753705))

(declare-fun m!3169145 () Bool)

(assert (=> b!2753704 m!3169145))

(assert (=> b!2753704 m!3169013))

(declare-fun m!3169147 () Bool)

(assert (=> b!2753704 m!3169147))

(declare-fun m!3169149 () Bool)

(assert (=> b!2753703 m!3169149))

(declare-fun m!3169151 () Bool)

(assert (=> d!796949 m!3169151))

(assert (=> d!796949 m!3169141))

(declare-fun m!3169153 () Bool)

(assert (=> d!796949 m!3169153))

(assert (=> b!2753644 d!796949))

(declare-fun d!796951 () Bool)

(assert (=> d!796951 (= (head!6129 (drop!1688 lt!975425 0)) (apply!7456 lt!975425 0))))

(declare-fun lt!975494 () Unit!45671)

(declare-fun choose!16128 (List!31977 Int) Unit!45671)

(assert (=> d!796951 (= lt!975494 (choose!16128 lt!975425 0))))

(declare-fun e!1736246 () Bool)

(assert (=> d!796951 e!1736246))

(declare-fun res!1154212 () Bool)

(assert (=> d!796951 (=> (not res!1154212) (not e!1736246))))

(assert (=> d!796951 (= res!1154212 (>= 0 0))))

(assert (=> d!796951 (= (lemmaDropApply!894 lt!975425 0) lt!975494)))

(declare-fun b!2753708 () Bool)

(assert (=> b!2753708 (= e!1736246 (< 0 (size!24647 lt!975425)))))

(assert (= (and d!796951 res!1154212) b!2753708))

(assert (=> d!796951 m!3168985))

(assert (=> d!796951 m!3168985))

(assert (=> d!796951 m!3168987))

(assert (=> d!796951 m!3169003))

(declare-fun m!3169155 () Bool)

(assert (=> d!796951 m!3169155))

(assert (=> b!2753708 m!3169009))

(assert (=> b!2753644 d!796951))

(declare-fun d!796953 () Bool)

(assert (=> d!796953 (<= (size!24647 Nil!31877) (size!24647 lt!975425))))

(declare-fun lt!975497 () Unit!45671)

(declare-fun choose!16129 (List!31977 List!31977) Unit!45671)

(assert (=> d!796953 (= lt!975497 (choose!16129 Nil!31877 lt!975425))))

(assert (=> d!796953 (isPrefix!2533 Nil!31877 lt!975425)))

(assert (=> d!796953 (= (lemmaIsPrefixThenSmallerEqSize!241 Nil!31877 lt!975425) lt!975497)))

(declare-fun bs!490526 () Bool)

(assert (= bs!490526 d!796953))

(assert (=> bs!490526 m!3169013))

(assert (=> bs!490526 m!3169009))

(declare-fun m!3169157 () Bool)

(assert (=> bs!490526 m!3169157))

(declare-fun m!3169159 () Bool)

(assert (=> bs!490526 m!3169159))

(assert (=> b!2753644 d!796953))

(declare-fun d!796955 () Bool)

(assert (=> d!796955 (= (++!7893 (++!7893 Nil!31877 (Cons!31877 lt!975437 Nil!31877)) lt!975450) lt!975425)))

(declare-fun lt!975500 () Unit!45671)

(declare-fun choose!16130 (List!31977 C!16272 List!31977 List!31977) Unit!45671)

(assert (=> d!796955 (= lt!975500 (choose!16130 Nil!31877 lt!975437 lt!975450 lt!975425))))

(assert (=> d!796955 (= (++!7893 Nil!31877 (Cons!31877 lt!975437 lt!975450)) lt!975425)))

(assert (=> d!796955 (= (lemmaMoveElementToOtherListKeepsConcatEq!850 Nil!31877 lt!975437 lt!975450 lt!975425) lt!975500)))

(declare-fun bs!490527 () Bool)

(assert (= bs!490527 d!796955))

(assert (=> bs!490527 m!3169067))

(assert (=> bs!490527 m!3169067))

(declare-fun m!3169161 () Bool)

(assert (=> bs!490527 m!3169161))

(declare-fun m!3169163 () Bool)

(assert (=> bs!490527 m!3169163))

(declare-fun m!3169165 () Bool)

(assert (=> bs!490527 m!3169165))

(assert (=> b!2753644 d!796955))

(declare-fun d!796957 () Bool)

(assert (=> d!796957 (isPrefix!2533 (++!7893 Nil!31877 (Cons!31877 (head!6129 (getSuffix!1219 lt!975425 Nil!31877)) Nil!31877)) lt!975425)))

(declare-fun lt!975503 () Unit!45671)

(declare-fun choose!16131 (List!31977 List!31977) Unit!45671)

(assert (=> d!796957 (= lt!975503 (choose!16131 Nil!31877 lt!975425))))

(assert (=> d!796957 (isPrefix!2533 Nil!31877 lt!975425)))

(assert (=> d!796957 (= (lemmaAddHeadSuffixToPrefixStillPrefix!438 Nil!31877 lt!975425) lt!975503)))

(declare-fun bs!490528 () Bool)

(assert (= bs!490528 d!796957))

(declare-fun m!3169167 () Bool)

(assert (=> bs!490528 m!3169167))

(declare-fun m!3169169 () Bool)

(assert (=> bs!490528 m!3169169))

(assert (=> bs!490528 m!3169095))

(assert (=> bs!490528 m!3169167))

(assert (=> bs!490528 m!3169095))

(declare-fun m!3169171 () Bool)

(assert (=> bs!490528 m!3169171))

(declare-fun m!3169173 () Bool)

(assert (=> bs!490528 m!3169173))

(assert (=> bs!490528 m!3169159))

(assert (=> b!2753644 d!796957))

(declare-fun d!796959 () Bool)

(assert (=> d!796959 (= (head!6129 lt!975471) (h!37297 lt!975471))))

(assert (=> b!2753644 d!796959))

(declare-fun d!796961 () Bool)

(declare-fun e!1736249 () Bool)

(assert (=> d!796961 e!1736249))

(declare-fun res!1154218 () Bool)

(assert (=> d!796961 (=> (not res!1154218) (not e!1736249))))

(declare-fun lt!975509 () tuple2!31894)

(declare-fun isBalanced!3026 (Conc!9939) Bool)

(assert (=> d!796961 (= res!1154218 (isBalanced!3026 (c!445621 (_1!18745 lt!975509))))))

(declare-datatypes ((tuple2!31896 0))(
  ( (tuple2!31897 (_1!18746 Conc!9939) (_2!18746 Conc!9939)) )
))
(declare-fun lt!975508 () tuple2!31896)

(assert (=> d!796961 (= lt!975509 (tuple2!31895 (BalanceConc!19493 (_1!18746 lt!975508)) (BalanceConc!19493 (_2!18746 lt!975508))))))

(declare-fun splitAt!88 (Conc!9939 Int) tuple2!31896)

(assert (=> d!796961 (= lt!975508 (splitAt!88 (c!445621 input!5495) 0))))

(assert (=> d!796961 (isBalanced!3026 (c!445621 input!5495))))

(assert (=> d!796961 (= (splitAt!87 input!5495 0) lt!975509)))

(declare-fun b!2753713 () Bool)

(declare-fun res!1154217 () Bool)

(assert (=> b!2753713 (=> (not res!1154217) (not e!1736249))))

(assert (=> b!2753713 (= res!1154217 (isBalanced!3026 (c!445621 (_2!18745 lt!975509))))))

(declare-fun b!2753714 () Bool)

(declare-datatypes ((tuple2!31898 0))(
  ( (tuple2!31899 (_1!18747 List!31977) (_2!18747 List!31977)) )
))
(declare-fun splitAtIndex!42 (List!31977 Int) tuple2!31898)

(assert (=> b!2753714 (= e!1736249 (= (tuple2!31899 (list!12042 (_1!18745 lt!975509)) (list!12042 (_2!18745 lt!975509))) (splitAtIndex!42 (list!12042 input!5495) 0)))))

(assert (= (and d!796961 res!1154218) b!2753713))

(assert (= (and b!2753713 res!1154217) b!2753714))

(declare-fun m!3169175 () Bool)

(assert (=> d!796961 m!3169175))

(declare-fun m!3169177 () Bool)

(assert (=> d!796961 m!3169177))

(declare-fun m!3169179 () Bool)

(assert (=> d!796961 m!3169179))

(declare-fun m!3169181 () Bool)

(assert (=> b!2753713 m!3169181))

(declare-fun m!3169183 () Bool)

(assert (=> b!2753714 m!3169183))

(declare-fun m!3169185 () Bool)

(assert (=> b!2753714 m!3169185))

(assert (=> b!2753714 m!3169089))

(assert (=> b!2753714 m!3169089))

(declare-fun m!3169187 () Bool)

(assert (=> b!2753714 m!3169187))

(assert (=> b!2753644 d!796961))

(declare-fun d!796963 () Bool)

(declare-fun lt!975510 () Int)

(assert (=> d!796963 (>= lt!975510 0)))

(declare-fun e!1736250 () Int)

(assert (=> d!796963 (= lt!975510 e!1736250)))

(declare-fun c!445633 () Bool)

(assert (=> d!796963 (= c!445633 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!796963 (= (size!24647 Nil!31877) lt!975510)))

(declare-fun b!2753715 () Bool)

(assert (=> b!2753715 (= e!1736250 0)))

(declare-fun b!2753716 () Bool)

(assert (=> b!2753716 (= e!1736250 (+ 1 (size!24647 (t!228081 Nil!31877))))))

(assert (= (and d!796963 c!445633) b!2753715))

(assert (= (and d!796963 (not c!445633)) b!2753716))

(declare-fun m!3169189 () Bool)

(assert (=> b!2753716 m!3169189))

(assert (=> b!2753644 d!796963))

(declare-fun d!796965 () Bool)

(declare-fun list!12043 (Conc!9939) List!31977)

(assert (=> d!796965 (= (list!12042 (_2!18745 lt!975475)) (list!12043 (c!445621 (_2!18745 lt!975475))))))

(declare-fun bs!490529 () Bool)

(assert (= bs!490529 d!796965))

(declare-fun m!3169191 () Bool)

(assert (=> bs!490529 m!3169191))

(assert (=> b!2753644 d!796965))

(declare-fun b!2753719 () Bool)

(declare-fun res!1154220 () Bool)

(declare-fun e!1736251 () Bool)

(assert (=> b!2753719 (=> (not res!1154220) (not e!1736251))))

(declare-fun lt!975511 () List!31977)

(assert (=> b!2753719 (= res!1154220 (= (size!24647 lt!975511) (+ (size!24647 lt!975464) (size!24647 lt!975450))))))

(declare-fun b!2753718 () Bool)

(declare-fun e!1736252 () List!31977)

(assert (=> b!2753718 (= e!1736252 (Cons!31877 (h!37297 lt!975464) (++!7893 (t!228081 lt!975464) lt!975450)))))

(declare-fun d!796967 () Bool)

(assert (=> d!796967 e!1736251))

(declare-fun res!1154219 () Bool)

(assert (=> d!796967 (=> (not res!1154219) (not e!1736251))))

(assert (=> d!796967 (= res!1154219 (= (content!4489 lt!975511) ((_ map or) (content!4489 lt!975464) (content!4489 lt!975450))))))

(assert (=> d!796967 (= lt!975511 e!1736252)))

(declare-fun c!445634 () Bool)

(assert (=> d!796967 (= c!445634 ((_ is Nil!31877) lt!975464))))

(assert (=> d!796967 (= (++!7893 lt!975464 lt!975450) lt!975511)))

(declare-fun b!2753720 () Bool)

(assert (=> b!2753720 (= e!1736251 (or (not (= lt!975450 Nil!31877)) (= lt!975511 lt!975464)))))

(declare-fun b!2753717 () Bool)

(assert (=> b!2753717 (= e!1736252 lt!975450)))

(assert (= (and d!796967 c!445634) b!2753717))

(assert (= (and d!796967 (not c!445634)) b!2753718))

(assert (= (and d!796967 res!1154219) b!2753719))

(assert (= (and b!2753719 res!1154220) b!2753720))

(declare-fun m!3169193 () Bool)

(assert (=> b!2753719 m!3169193))

(declare-fun m!3169195 () Bool)

(assert (=> b!2753719 m!3169195))

(declare-fun m!3169197 () Bool)

(assert (=> b!2753719 m!3169197))

(declare-fun m!3169199 () Bool)

(assert (=> b!2753718 m!3169199))

(declare-fun m!3169201 () Bool)

(assert (=> d!796967 m!3169201))

(declare-fun m!3169203 () Bool)

(assert (=> d!796967 m!3169203))

(declare-fun m!3169205 () Bool)

(assert (=> d!796967 m!3169205))

(assert (=> b!2753644 d!796967))

(declare-fun d!796969 () Bool)

(assert (=> d!796969 (= (head!6129 (drop!1688 lt!975425 0)) (h!37297 (drop!1688 lt!975425 0)))))

(assert (=> b!2753644 d!796969))

(declare-fun d!796971 () Bool)

(declare-fun lt!975514 () C!16272)

(declare-fun contains!5983 (List!31977 C!16272) Bool)

(assert (=> d!796971 (contains!5983 lt!975425 lt!975514)))

(declare-fun e!1736257 () C!16272)

(assert (=> d!796971 (= lt!975514 e!1736257)))

(declare-fun c!445637 () Bool)

(assert (=> d!796971 (= c!445637 (= 0 0))))

(declare-fun e!1736258 () Bool)

(assert (=> d!796971 e!1736258))

(declare-fun res!1154223 () Bool)

(assert (=> d!796971 (=> (not res!1154223) (not e!1736258))))

(assert (=> d!796971 (= res!1154223 (<= 0 0))))

(assert (=> d!796971 (= (apply!7456 lt!975425 0) lt!975514)))

(declare-fun b!2753727 () Bool)

(assert (=> b!2753727 (= e!1736258 (< 0 (size!24647 lt!975425)))))

(declare-fun b!2753728 () Bool)

(assert (=> b!2753728 (= e!1736257 (head!6129 lt!975425))))

(declare-fun b!2753729 () Bool)

(assert (=> b!2753729 (= e!1736257 (apply!7456 (tail!4367 lt!975425) (- 0 1)))))

(assert (= (and d!796971 res!1154223) b!2753727))

(assert (= (and d!796971 c!445637) b!2753728))

(assert (= (and d!796971 (not c!445637)) b!2753729))

(declare-fun m!3169207 () Bool)

(assert (=> d!796971 m!3169207))

(assert (=> b!2753727 m!3169009))

(assert (=> b!2753728 m!3169129))

(assert (=> b!2753729 m!3169005))

(assert (=> b!2753729 m!3169005))

(declare-fun m!3169209 () Bool)

(assert (=> b!2753729 m!3169209))

(assert (=> b!2753644 d!796971))

(declare-fun d!796973 () Bool)

(assert (=> d!796973 (and (= lt!975474 Nil!31877) (= lt!975441 lt!975425))))

(declare-fun lt!975517 () Unit!45671)

(declare-fun choose!16132 (List!31977 List!31977 List!31977 List!31977) Unit!45671)

(assert (=> d!796973 (= lt!975517 (choose!16132 lt!975474 lt!975441 Nil!31877 lt!975425))))

(assert (=> d!796973 (= (++!7893 lt!975474 lt!975441) (++!7893 Nil!31877 lt!975425))))

(assert (=> d!796973 (= (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975474 lt!975441 Nil!31877 lt!975425) lt!975517)))

(declare-fun bs!490530 () Bool)

(assert (= bs!490530 d!796973))

(declare-fun m!3169211 () Bool)

(assert (=> bs!490530 m!3169211))

(declare-fun m!3169213 () Bool)

(assert (=> bs!490530 m!3169213))

(assert (=> bs!490530 m!3169091))

(assert (=> b!2753644 d!796973))

(declare-fun b!2753748 () Bool)

(declare-fun e!1736271 () List!31977)

(assert (=> b!2753748 (= e!1736271 Nil!31877)))

(declare-fun b!2753749 () Bool)

(declare-fun e!1736272 () Int)

(declare-fun e!1736273 () Int)

(assert (=> b!2753749 (= e!1736272 e!1736273)))

(declare-fun c!445646 () Bool)

(declare-fun call!178165 () Int)

(assert (=> b!2753749 (= c!445646 (>= 0 call!178165))))

(declare-fun b!2753750 () Bool)

(assert (=> b!2753750 (= e!1736273 0)))

(declare-fun b!2753751 () Bool)

(declare-fun e!1736270 () List!31977)

(assert (=> b!2753751 (= e!1736270 lt!975425)))

(declare-fun b!2753753 () Bool)

(declare-fun e!1736269 () Bool)

(declare-fun lt!975520 () List!31977)

(assert (=> b!2753753 (= e!1736269 (= (size!24647 lt!975520) e!1736272))))

(declare-fun c!445648 () Bool)

(assert (=> b!2753753 (= c!445648 (<= 0 0))))

(declare-fun b!2753754 () Bool)

(assert (=> b!2753754 (= e!1736272 call!178165)))

(declare-fun bm!178160 () Bool)

(assert (=> bm!178160 (= call!178165 (size!24647 lt!975425))))

(declare-fun b!2753755 () Bool)

(assert (=> b!2753755 (= e!1736271 e!1736270)))

(declare-fun c!445649 () Bool)

(assert (=> b!2753755 (= c!445649 (<= 0 0))))

(declare-fun b!2753756 () Bool)

(assert (=> b!2753756 (= e!1736270 (drop!1688 (t!228081 lt!975425) (- 0 1)))))

(declare-fun d!796975 () Bool)

(assert (=> d!796975 e!1736269))

(declare-fun res!1154226 () Bool)

(assert (=> d!796975 (=> (not res!1154226) (not e!1736269))))

(assert (=> d!796975 (= res!1154226 (= ((_ map implies) (content!4489 lt!975520) (content!4489 lt!975425)) ((as const (InoxSet C!16272)) true)))))

(assert (=> d!796975 (= lt!975520 e!1736271)))

(declare-fun c!445647 () Bool)

(assert (=> d!796975 (= c!445647 ((_ is Nil!31877) lt!975425))))

(assert (=> d!796975 (= (drop!1688 lt!975425 0) lt!975520)))

(declare-fun b!2753752 () Bool)

(assert (=> b!2753752 (= e!1736273 (- call!178165 0))))

(assert (= (and d!796975 c!445647) b!2753748))

(assert (= (and d!796975 (not c!445647)) b!2753755))

(assert (= (and b!2753755 c!445649) b!2753751))

(assert (= (and b!2753755 (not c!445649)) b!2753756))

(assert (= (and d!796975 res!1154226) b!2753753))

(assert (= (and b!2753753 c!445648) b!2753754))

(assert (= (and b!2753753 (not c!445648)) b!2753749))

(assert (= (and b!2753749 c!445646) b!2753750))

(assert (= (and b!2753749 (not c!445646)) b!2753752))

(assert (= (or b!2753754 b!2753749 b!2753752) bm!178160))

(declare-fun m!3169215 () Bool)

(assert (=> b!2753753 m!3169215))

(assert (=> bm!178160 m!3169009))

(declare-fun m!3169217 () Bool)

(assert (=> b!2753756 m!3169217))

(declare-fun m!3169219 () Bool)

(assert (=> d!796975 m!3169219))

(declare-fun m!3169221 () Bool)

(assert (=> d!796975 m!3169221))

(assert (=> b!2753644 d!796975))

(declare-fun d!796977 () Bool)

(declare-fun lt!975523 () C!16272)

(assert (=> d!796977 (= lt!975523 (apply!7456 (list!12042 input!5495) 0))))

(declare-fun apply!7457 (Conc!9939 Int) C!16272)

(assert (=> d!796977 (= lt!975523 (apply!7457 (c!445621 input!5495) 0))))

(declare-fun e!1736276 () Bool)

(assert (=> d!796977 e!1736276))

(declare-fun res!1154229 () Bool)

(assert (=> d!796977 (=> (not res!1154229) (not e!1736276))))

(assert (=> d!796977 (= res!1154229 (<= 0 0))))

(assert (=> d!796977 (= (apply!7455 input!5495 0) lt!975523)))

(declare-fun b!2753759 () Bool)

(assert (=> b!2753759 (= e!1736276 (< 0 (size!24646 input!5495)))))

(assert (= (and d!796977 res!1154229) b!2753759))

(assert (=> d!796977 m!3169089))

(assert (=> d!796977 m!3169089))

(declare-fun m!3169223 () Bool)

(assert (=> d!796977 m!3169223))

(declare-fun m!3169225 () Bool)

(assert (=> d!796977 m!3169225))

(assert (=> b!2753759 m!3169093))

(assert (=> b!2753644 d!796977))

(declare-fun d!796979 () Bool)

(assert (=> d!796979 (= (list!12042 (_1!18745 lt!975475)) (list!12043 (c!445621 (_1!18745 lt!975475))))))

(declare-fun bs!490531 () Bool)

(assert (= bs!490531 d!796979))

(declare-fun m!3169227 () Bool)

(assert (=> bs!490531 m!3169227))

(assert (=> b!2753644 d!796979))

(declare-fun d!796981 () Bool)

(assert (=> d!796981 (= (tail!4367 lt!975425) (t!228081 lt!975425))))

(assert (=> b!2753644 d!796981))

(declare-fun d!796983 () Bool)

(declare-fun e!1736279 () Bool)

(assert (=> d!796983 e!1736279))

(declare-fun res!1154234 () Bool)

(assert (=> d!796983 (=> (not res!1154234) (not e!1736279))))

(declare-fun lt!975526 () tuple3!4652)

(assert (=> d!796983 (= res!1154234 (valid!2890 (_2!18743 lt!975526)))))

(declare-fun choose!16133 (CacheUp!2334 CacheDown!2454 (InoxSet Context!4550) List!31977 Int List!31977 BalanceConc!19492 Int) tuple3!4652)

(assert (=> d!796983 (= lt!975526 (choose!16133 (ite c!445614 (_2!18744 lt!975435) (_2!18744 lt!975473)) (ite c!445614 (_3!2797 lt!975435) (_3!2797 lt!975473)) (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429))))

(assert (=> d!796983 (= (++!7893 lt!975459 lt!975431) (list!12042 input!5495))))

(assert (=> d!796983 (= (findLongestMatchInnerZipperFastMem!13 (ite c!445614 (_2!18744 lt!975435) (_2!18744 lt!975473)) (ite c!445614 (_3!2797 lt!975435) (_3!2797 lt!975473)) (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429) lt!975526)))

(declare-fun b!2753764 () Bool)

(declare-fun res!1154235 () Bool)

(assert (=> b!2753764 (=> (not res!1154235) (not e!1736279))))

(assert (=> b!2753764 (= res!1154235 (valid!2891 (_3!2796 lt!975526)))))

(declare-fun b!2753765 () Bool)

(assert (=> b!2753765 (= e!1736279 (= (_1!18743 lt!975526) (findLongestMatchInnerZipperFast!15 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429)))))

(assert (= (and d!796983 res!1154234) b!2753764))

(assert (= (and b!2753764 res!1154235) b!2753765))

(declare-fun m!3169229 () Bool)

(assert (=> d!796983 m!3169229))

(declare-fun m!3169231 () Bool)

(assert (=> d!796983 m!3169231))

(assert (=> d!796983 m!3169021))

(assert (=> d!796983 m!3169089))

(declare-fun m!3169233 () Bool)

(assert (=> b!2753764 m!3169233))

(assert (=> b!2753765 m!3169023))

(assert (=> bm!178145 d!796983))

(declare-fun d!796985 () Bool)

(declare-fun validCacheMapUp!353 (MutableMap!3628) Bool)

(assert (=> d!796985 (= (valid!2890 cacheUp!820) (validCacheMapUp!353 (cache!3771 cacheUp!820)))))

(declare-fun bs!490532 () Bool)

(assert (= bs!490532 d!796985))

(declare-fun m!3169235 () Bool)

(assert (=> bs!490532 m!3169235))

(assert (=> start!266956 d!796985))

(declare-fun d!796987 () Bool)

(declare-fun res!1154238 () Bool)

(declare-fun e!1736282 () Bool)

(assert (=> d!796987 (=> (not res!1154238) (not e!1736282))))

(assert (=> d!796987 (= res!1154238 ((_ is HashMap!3628) (cache!3771 cacheUp!820)))))

(assert (=> d!796987 (= (inv!43292 cacheUp!820) e!1736282)))

(declare-fun b!2753768 () Bool)

(assert (=> b!2753768 (= e!1736282 (validCacheMapUp!353 (cache!3771 cacheUp!820)))))

(assert (= (and d!796987 res!1154238) b!2753768))

(assert (=> b!2753768 m!3169235))

(assert (=> start!266956 d!796987))

(declare-fun d!796989 () Bool)

(declare-fun res!1154241 () Bool)

(declare-fun e!1736285 () Bool)

(assert (=> d!796989 (=> (not res!1154241) (not e!1736285))))

(assert (=> d!796989 (= res!1154241 ((_ is HashMap!3629) (cache!3772 cacheDown!939)))))

(assert (=> d!796989 (= (inv!43293 cacheDown!939) e!1736285)))

(declare-fun b!2753771 () Bool)

(assert (=> b!2753771 (= e!1736285 (validCacheMapDown!384 (cache!3772 cacheDown!939)))))

(assert (= (and d!796989 res!1154241) b!2753771))

(declare-fun m!3169237 () Bool)

(assert (=> b!2753771 m!3169237))

(assert (=> start!266956 d!796989))

(declare-fun d!796991 () Bool)

(assert (=> d!796991 (= (inv!43294 input!5495) (isBalanced!3026 (c!445621 input!5495)))))

(declare-fun bs!490533 () Bool)

(assert (= bs!490533 d!796991))

(assert (=> bs!490533 m!3169179))

(assert (=> start!266956 d!796991))

(declare-fun d!796993 () Bool)

(assert (=> d!796993 (= (array_inv!4228 (_keys!4022 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) (bvsge (size!24644 (_keys!4022 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753656 d!796993))

(declare-fun d!796995 () Bool)

(assert (=> d!796995 (= (array_inv!4230 (_values!4003 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) (bvsge (size!24643 (_values!4003 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753656 d!796995))

(assert (=> b!2753654 d!796963))

(assert (=> bm!178144 d!796935))

(declare-fun d!796997 () Bool)

(assert (=> d!796997 (= (valid!2891 cacheDown!939) (validCacheMapDown!384 (cache!3772 cacheDown!939)))))

(declare-fun bs!490534 () Bool)

(assert (= bs!490534 d!796997))

(assert (=> bs!490534 m!3169237))

(assert (=> b!2753655 d!796997))

(declare-fun d!796999 () Bool)

(assert (=> d!796999 (= (valid!2891 (ite c!445614 (_3!2796 lt!975455) (_3!2796 lt!975470))) (validCacheMapDown!384 (cache!3772 (ite c!445614 (_3!2796 lt!975455) (_3!2796 lt!975470)))))))

(declare-fun bs!490535 () Bool)

(assert (= bs!490535 d!796999))

(declare-fun m!3169239 () Bool)

(assert (=> bs!490535 m!3169239))

(assert (=> bm!178154 d!796999))

(assert (=> bm!178149 d!796937))

(declare-fun d!797001 () Bool)

(assert (=> d!797001 (= lt!975425 Nil!31877)))

(declare-fun lt!975529 () Unit!45671)

(declare-fun choose!16134 (List!31977 List!31977 List!31977) Unit!45671)

(assert (=> d!797001 (= lt!975529 (choose!16134 lt!975425 Nil!31877 lt!975425))))

(assert (=> d!797001 (isPrefix!2533 lt!975425 lt!975425)))

(assert (=> d!797001 (= (lemmaIsPrefixSameLengthThenSameList!440 lt!975425 Nil!31877 lt!975425) lt!975529)))

(declare-fun bs!490536 () Bool)

(assert (= bs!490536 d!797001))

(declare-fun m!3169241 () Bool)

(assert (=> bs!490536 m!3169241))

(assert (=> bs!490536 m!3169025))

(assert (=> bm!178143 d!797001))

(declare-fun d!797003 () Bool)

(declare-fun c!445652 () Bool)

(assert (=> d!797003 (= c!445652 ((_ is Node!9939) (c!445621 input!5495)))))

(declare-fun e!1736290 () Bool)

(assert (=> d!797003 (= (inv!43290 (c!445621 input!5495)) e!1736290)))

(declare-fun b!2753778 () Bool)

(declare-fun inv!43295 (Conc!9939) Bool)

(assert (=> b!2753778 (= e!1736290 (inv!43295 (c!445621 input!5495)))))

(declare-fun b!2753779 () Bool)

(declare-fun e!1736291 () Bool)

(assert (=> b!2753779 (= e!1736290 e!1736291)))

(declare-fun res!1154244 () Bool)

(assert (=> b!2753779 (= res!1154244 (not ((_ is Leaf!15136) (c!445621 input!5495))))))

(assert (=> b!2753779 (=> res!1154244 e!1736291)))

(declare-fun b!2753780 () Bool)

(declare-fun inv!43296 (Conc!9939) Bool)

(assert (=> b!2753780 (= e!1736291 (inv!43296 (c!445621 input!5495)))))

(assert (= (and d!797003 c!445652) b!2753778))

(assert (= (and d!797003 (not c!445652)) b!2753779))

(assert (= (and b!2753779 (not res!1154244)) b!2753780))

(declare-fun m!3169243 () Bool)

(assert (=> b!2753778 m!3169243))

(declare-fun m!3169245 () Bool)

(assert (=> b!2753780 m!3169245))

(assert (=> b!2753638 d!797003))

(declare-fun d!797005 () Bool)

(assert (=> d!797005 (= (array_inv!4228 (_keys!4023 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) (bvsge (size!24644 (_keys!4023 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753639 d!797005))

(declare-fun d!797007 () Bool)

(assert (=> d!797007 (= (array_inv!4229 (_values!4004 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) (bvsge (size!24645 (_values!4004 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753639 d!797007))

(declare-fun b!2753784 () Bool)

(declare-fun e!1736293 () Bool)

(assert (=> b!2753784 (= e!1736293 (>= (size!24647 lt!975425) (size!24647 lt!975425)))))

(declare-fun b!2753781 () Bool)

(declare-fun e!1736292 () Bool)

(declare-fun e!1736294 () Bool)

(assert (=> b!2753781 (= e!1736292 e!1736294)))

(declare-fun res!1154245 () Bool)

(assert (=> b!2753781 (=> (not res!1154245) (not e!1736294))))

(assert (=> b!2753781 (= res!1154245 (not ((_ is Nil!31877) lt!975425)))))

(declare-fun d!797009 () Bool)

(assert (=> d!797009 e!1736293))

(declare-fun res!1154246 () Bool)

(assert (=> d!797009 (=> res!1154246 e!1736293)))

(declare-fun lt!975530 () Bool)

(assert (=> d!797009 (= res!1154246 (not lt!975530))))

(assert (=> d!797009 (= lt!975530 e!1736292)))

(declare-fun res!1154248 () Bool)

(assert (=> d!797009 (=> res!1154248 e!1736292)))

(assert (=> d!797009 (= res!1154248 ((_ is Nil!31877) lt!975425))))

(assert (=> d!797009 (= (isPrefix!2533 lt!975425 lt!975425) lt!975530)))

(declare-fun b!2753783 () Bool)

(assert (=> b!2753783 (= e!1736294 (isPrefix!2533 (tail!4367 lt!975425) (tail!4367 lt!975425)))))

(declare-fun b!2753782 () Bool)

(declare-fun res!1154247 () Bool)

(assert (=> b!2753782 (=> (not res!1154247) (not e!1736294))))

(assert (=> b!2753782 (= res!1154247 (= (head!6129 lt!975425) (head!6129 lt!975425)))))

(assert (= (and d!797009 (not res!1154248)) b!2753781))

(assert (= (and b!2753781 res!1154245) b!2753782))

(assert (= (and b!2753782 res!1154247) b!2753783))

(assert (= (and d!797009 (not res!1154246)) b!2753784))

(assert (=> b!2753784 m!3169009))

(assert (=> b!2753784 m!3169009))

(assert (=> b!2753783 m!3169005))

(assert (=> b!2753783 m!3169005))

(assert (=> b!2753783 m!3169005))

(assert (=> b!2753783 m!3169005))

(declare-fun m!3169247 () Bool)

(assert (=> b!2753783 m!3169247))

(assert (=> b!2753782 m!3169129))

(assert (=> b!2753782 m!3169129))

(assert (=> bm!178152 d!797009))

(declare-fun d!797011 () Bool)

(assert (=> d!797011 (= (valid!2890 (ite c!445614 (_2!18743 lt!975455) (_2!18743 lt!975470))) (validCacheMapUp!353 (cache!3771 (ite c!445614 (_2!18743 lt!975455) (_2!18743 lt!975470)))))))

(declare-fun bs!490537 () Bool)

(assert (= bs!490537 d!797011))

(declare-fun m!3169249 () Bool)

(assert (=> bs!490537 m!3169249))

(assert (=> bm!178153 d!797011))

(declare-fun d!797013 () Bool)

(declare-fun lambda!100977 () Int)

(declare-fun forall!6592 (List!31978 Int) Bool)

(assert (=> d!797013 (= (inv!43291 setElem!22074) (forall!6592 (exprs!2775 setElem!22074) lambda!100977))))

(declare-fun bs!490538 () Bool)

(assert (= bs!490538 d!797013))

(declare-fun m!3169251 () Bool)

(assert (=> bs!490538 m!3169251))

(assert (=> setNonEmpty!22074 d!797013))

(assert (=> bm!178148 d!797009))

(assert (=> b!2753652 d!796969))

(assert (=> b!2753652 d!796943))

(assert (=> b!2753652 d!796945))

(assert (=> b!2753652 d!796949))

(assert (=> b!2753652 d!796951))

(assert (=> b!2753652 d!796953))

(declare-fun d!797015 () Bool)

(assert (=> d!797015 (= (++!7893 (++!7893 Nil!31877 (Cons!31877 lt!975448 Nil!31877)) lt!975431) lt!975425)))

(declare-fun lt!975531 () Unit!45671)

(assert (=> d!797015 (= lt!975531 (choose!16130 Nil!31877 lt!975448 lt!975431 lt!975425))))

(assert (=> d!797015 (= (++!7893 Nil!31877 (Cons!31877 lt!975448 lt!975431)) lt!975425)))

(assert (=> d!797015 (= (lemmaMoveElementToOtherListKeepsConcatEq!850 Nil!31877 lt!975448 lt!975431 lt!975425) lt!975531)))

(declare-fun bs!490539 () Bool)

(assert (= bs!490539 d!797015))

(assert (=> bs!490539 m!3168993))

(assert (=> bs!490539 m!3168993))

(declare-fun m!3169253 () Bool)

(assert (=> bs!490539 m!3169253))

(declare-fun m!3169255 () Bool)

(assert (=> bs!490539 m!3169255))

(declare-fun m!3169257 () Bool)

(assert (=> bs!490539 m!3169257))

(assert (=> b!2753652 d!797015))

(assert (=> b!2753652 d!796957))

(assert (=> b!2753652 d!796959))

(declare-fun d!797017 () Bool)

(assert (=> d!797017 (and (= lt!975468 Nil!31877) (= lt!975451 lt!975425))))

(declare-fun lt!975532 () Unit!45671)

(assert (=> d!797017 (= lt!975532 (choose!16132 lt!975468 lt!975451 Nil!31877 lt!975425))))

(assert (=> d!797017 (= (++!7893 lt!975468 lt!975451) (++!7893 Nil!31877 lt!975425))))

(assert (=> d!797017 (= (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975468 lt!975451 Nil!31877 lt!975425) lt!975532)))

(declare-fun bs!490540 () Bool)

(assert (= bs!490540 d!797017))

(declare-fun m!3169259 () Bool)

(assert (=> bs!490540 m!3169259))

(declare-fun m!3169261 () Bool)

(assert (=> bs!490540 m!3169261))

(assert (=> bs!490540 m!3169091))

(assert (=> b!2753652 d!797017))

(declare-fun b!2753787 () Bool)

(declare-fun res!1154250 () Bool)

(declare-fun e!1736295 () Bool)

(assert (=> b!2753787 (=> (not res!1154250) (not e!1736295))))

(declare-fun lt!975533 () List!31977)

(assert (=> b!2753787 (= res!1154250 (= (size!24647 lt!975533) (+ (size!24647 Nil!31877) (size!24647 (Cons!31877 lt!975448 Nil!31877)))))))

(declare-fun b!2753786 () Bool)

(declare-fun e!1736296 () List!31977)

(assert (=> b!2753786 (= e!1736296 (Cons!31877 (h!37297 Nil!31877) (++!7893 (t!228081 Nil!31877) (Cons!31877 lt!975448 Nil!31877))))))

(declare-fun d!797019 () Bool)

(assert (=> d!797019 e!1736295))

(declare-fun res!1154249 () Bool)

(assert (=> d!797019 (=> (not res!1154249) (not e!1736295))))

(assert (=> d!797019 (= res!1154249 (= (content!4489 lt!975533) ((_ map or) (content!4489 Nil!31877) (content!4489 (Cons!31877 lt!975448 Nil!31877)))))))

(assert (=> d!797019 (= lt!975533 e!1736296)))

(declare-fun c!445653 () Bool)

(assert (=> d!797019 (= c!445653 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!797019 (= (++!7893 Nil!31877 (Cons!31877 lt!975448 Nil!31877)) lt!975533)))

(declare-fun b!2753788 () Bool)

(assert (=> b!2753788 (= e!1736295 (or (not (= (Cons!31877 lt!975448 Nil!31877) Nil!31877)) (= lt!975533 Nil!31877)))))

(declare-fun b!2753785 () Bool)

(assert (=> b!2753785 (= e!1736296 (Cons!31877 lt!975448 Nil!31877))))

(assert (= (and d!797019 c!445653) b!2753785))

(assert (= (and d!797019 (not c!445653)) b!2753786))

(assert (= (and d!797019 res!1154249) b!2753787))

(assert (= (and b!2753787 res!1154250) b!2753788))

(declare-fun m!3169263 () Bool)

(assert (=> b!2753787 m!3169263))

(assert (=> b!2753787 m!3169013))

(declare-fun m!3169265 () Bool)

(assert (=> b!2753787 m!3169265))

(declare-fun m!3169267 () Bool)

(assert (=> b!2753786 m!3169267))

(declare-fun m!3169269 () Bool)

(assert (=> d!797019 m!3169269))

(assert (=> d!797019 m!3169141))

(declare-fun m!3169271 () Bool)

(assert (=> d!797019 m!3169271))

(assert (=> b!2753652 d!797019))

(assert (=> b!2753652 d!796963))

(assert (=> b!2753652 d!796971))

(declare-fun b!2753791 () Bool)

(declare-fun res!1154252 () Bool)

(declare-fun e!1736297 () Bool)

(assert (=> b!2753791 (=> (not res!1154252) (not e!1736297))))

(declare-fun lt!975534 () List!31977)

(assert (=> b!2753791 (= res!1154252 (= (size!24647 lt!975534) (+ (size!24647 lt!975459) (size!24647 lt!975431))))))

(declare-fun b!2753790 () Bool)

(declare-fun e!1736298 () List!31977)

(assert (=> b!2753790 (= e!1736298 (Cons!31877 (h!37297 lt!975459) (++!7893 (t!228081 lt!975459) lt!975431)))))

(declare-fun d!797021 () Bool)

(assert (=> d!797021 e!1736297))

(declare-fun res!1154251 () Bool)

(assert (=> d!797021 (=> (not res!1154251) (not e!1736297))))

(assert (=> d!797021 (= res!1154251 (= (content!4489 lt!975534) ((_ map or) (content!4489 lt!975459) (content!4489 lt!975431))))))

(assert (=> d!797021 (= lt!975534 e!1736298)))

(declare-fun c!445654 () Bool)

(assert (=> d!797021 (= c!445654 ((_ is Nil!31877) lt!975459))))

(assert (=> d!797021 (= (++!7893 lt!975459 lt!975431) lt!975534)))

(declare-fun b!2753792 () Bool)

(assert (=> b!2753792 (= e!1736297 (or (not (= lt!975431 Nil!31877)) (= lt!975534 lt!975459)))))

(declare-fun b!2753789 () Bool)

(assert (=> b!2753789 (= e!1736298 lt!975431)))

(assert (= (and d!797021 c!445654) b!2753789))

(assert (= (and d!797021 (not c!445654)) b!2753790))

(assert (= (and d!797021 res!1154251) b!2753791))

(assert (= (and b!2753791 res!1154252) b!2753792))

(declare-fun m!3169273 () Bool)

(assert (=> b!2753791 m!3169273))

(declare-fun m!3169275 () Bool)

(assert (=> b!2753791 m!3169275))

(declare-fun m!3169277 () Bool)

(assert (=> b!2753791 m!3169277))

(declare-fun m!3169279 () Bool)

(assert (=> b!2753790 m!3169279))

(declare-fun m!3169281 () Bool)

(assert (=> d!797021 m!3169281))

(declare-fun m!3169283 () Bool)

(assert (=> d!797021 m!3169283))

(declare-fun m!3169285 () Bool)

(assert (=> d!797021 m!3169285))

(assert (=> b!2753652 d!797021))

(assert (=> b!2753652 d!796975))

(assert (=> b!2753652 d!796977))

(assert (=> b!2753652 d!796981))

(declare-fun d!797023 () Bool)

(assert (=> d!797023 (= (list!12042 (_2!18745 lt!975460)) (list!12043 (c!445621 (_2!18745 lt!975460))))))

(declare-fun bs!490541 () Bool)

(assert (= bs!490541 d!797023))

(declare-fun m!3169287 () Bool)

(assert (=> bs!490541 m!3169287))

(assert (=> b!2753652 d!797023))

(declare-fun d!797025 () Bool)

(assert (=> d!797025 (= (list!12042 (_1!18745 lt!975460)) (list!12043 (c!445621 (_1!18745 lt!975460))))))

(declare-fun bs!490542 () Bool)

(assert (= bs!490542 d!797025))

(declare-fun m!3169289 () Bool)

(assert (=> bs!490542 m!3169289))

(assert (=> b!2753652 d!797025))

(assert (=> b!2753652 d!796961))

(declare-fun d!797027 () Bool)

(assert (=> d!797027 (= (valid!2891 (_3!2796 lt!975452)) (validCacheMapDown!384 (cache!3772 (_3!2796 lt!975452))))))

(declare-fun bs!490543 () Bool)

(assert (= bs!490543 d!797027))

(declare-fun m!3169291 () Bool)

(assert (=> bs!490543 m!3169291))

(assert (=> b!2753637 d!797027))

(declare-fun b!2753817 () Bool)

(declare-fun e!1736316 () List!31977)

(declare-fun call!178192 () List!31977)

(assert (=> b!2753817 (= e!1736316 call!178192)))

(declare-fun b!2753818 () Bool)

(declare-fun e!1736313 () Int)

(declare-fun lt!975655 () Int)

(assert (=> b!2753818 (= e!1736313 (ite (= lt!975655 0) 0 lt!975655))))

(declare-fun call!178187 () Int)

(assert (=> b!2753818 (= lt!975655 call!178187)))

(declare-fun bm!178182 () Bool)

(declare-fun c!445668 () Bool)

(declare-fun c!445669 () Bool)

(assert (=> bm!178182 (= c!445668 c!445669)))

(declare-fun call!178193 () Unit!45671)

(declare-fun lt!975619 () List!31977)

(declare-fun lt!975643 () List!31977)

(assert (=> bm!178182 (= call!178193 (lemmaIsPrefixSameLengthThenSameList!440 (ite c!445669 lt!975619 lt!975643) Nil!31877 e!1736316))))

(declare-fun call!178188 () List!31977)

(declare-fun bm!178183 () Bool)

(declare-fun call!178191 () List!31977)

(declare-fun call!178189 () (InoxSet Context!4550))

(assert (=> bm!178183 (= call!178187 (findLongestMatchInnerZipperFast!15 call!178189 call!178188 (+ 0 1) call!178191 input!5495 lt!975429))))

(declare-fun b!2753819 () Bool)

(declare-fun e!1736312 () Int)

(declare-fun e!1736315 () Int)

(assert (=> b!2753819 (= e!1736312 e!1736315)))

(assert (=> b!2753819 (= c!445669 (= 0 lt!975429))))

(declare-fun b!2753820 () Bool)

(declare-fun e!1736314 () Unit!45671)

(declare-fun Unit!45677 () Unit!45671)

(assert (=> b!2753820 (= e!1736314 Unit!45677)))

(declare-fun lt!975659 () List!31977)

(assert (=> b!2753820 (= lt!975659 (list!12042 input!5495))))

(declare-fun lt!975641 () List!31977)

(assert (=> b!2753820 (= lt!975641 (list!12042 input!5495))))

(declare-fun lt!975652 () Unit!45671)

(declare-fun call!178194 () Unit!45671)

(assert (=> b!2753820 (= lt!975652 call!178194)))

(declare-fun call!178190 () Bool)

(assert (=> b!2753820 call!178190))

(declare-fun lt!975639 () Unit!45671)

(assert (=> b!2753820 (= lt!975639 lt!975652)))

(assert (=> b!2753820 (= lt!975643 (list!12042 input!5495))))

(declare-fun lt!975642 () Unit!45671)

(assert (=> b!2753820 (= lt!975642 call!178193)))

(assert (=> b!2753820 (= lt!975643 Nil!31877)))

(declare-fun lt!975649 () Unit!45671)

(assert (=> b!2753820 (= lt!975649 lt!975642)))

(assert (=> b!2753820 false))

(declare-fun b!2753821 () Bool)

(assert (=> b!2753821 (= e!1736313 call!178187)))

(declare-fun bm!178184 () Bool)

(declare-fun call!178195 () C!16272)

(assert (=> bm!178184 (= call!178189 (derivationStepZipper!349 z!3597 call!178195))))

(declare-fun bm!178185 () Bool)

(declare-fun lt!975633 () tuple2!31894)

(assert (=> bm!178185 (= call!178192 (list!12042 (ite c!445669 input!5495 (_1!18745 lt!975633))))))

(declare-fun bm!178186 () Bool)

(assert (=> bm!178186 (= call!178191 (tail!4367 lt!975425))))

(declare-fun lt!975650 () List!31977)

(declare-fun lt!975638 () List!31977)

(declare-fun bm!178187 () Bool)

(assert (=> bm!178187 (= call!178194 (lemmaIsPrefixRefl!1659 (ite c!445669 lt!975650 lt!975659) (ite c!445669 lt!975638 lt!975641)))))

(declare-fun b!2753822 () Bool)

(declare-fun c!445667 () Bool)

(declare-fun call!178186 () Bool)

(assert (=> b!2753822 (= c!445667 call!178186)))

(declare-fun lt!975645 () Unit!45671)

(declare-fun lt!975622 () Unit!45671)

(assert (=> b!2753822 (= lt!975645 lt!975622)))

(declare-fun lt!975629 () C!16272)

(declare-fun lt!975647 () List!31977)

(declare-fun lt!975653 () List!31977)

(assert (=> b!2753822 (= (++!7893 (++!7893 Nil!31877 (Cons!31877 lt!975629 Nil!31877)) lt!975647) lt!975653)))

(assert (=> b!2753822 (= lt!975622 (lemmaMoveElementToOtherListKeepsConcatEq!850 Nil!31877 lt!975629 lt!975647 lt!975653))))

(assert (=> b!2753822 (= lt!975653 (list!12042 input!5495))))

(assert (=> b!2753822 (= lt!975647 (tail!4367 lt!975425))))

(assert (=> b!2753822 (= lt!975629 (apply!7455 input!5495 0))))

(declare-fun lt!975635 () Unit!45671)

(declare-fun lt!975631 () Unit!45671)

(assert (=> b!2753822 (= lt!975635 lt!975631)))

(declare-fun lt!975621 () List!31977)

(assert (=> b!2753822 (isPrefix!2533 (++!7893 Nil!31877 (Cons!31877 (head!6129 (getSuffix!1219 lt!975621 Nil!31877)) Nil!31877)) lt!975621)))

(assert (=> b!2753822 (= lt!975631 (lemmaAddHeadSuffixToPrefixStillPrefix!438 Nil!31877 lt!975621))))

(assert (=> b!2753822 (= lt!975621 (list!12042 input!5495))))

(declare-fun lt!975648 () Unit!45671)

(assert (=> b!2753822 (= lt!975648 e!1736314)))

(declare-fun c!445670 () Bool)

(assert (=> b!2753822 (= c!445670 (= (size!24647 Nil!31877) (size!24646 input!5495)))))

(declare-fun lt!975625 () Unit!45671)

(declare-fun lt!975632 () Unit!45671)

(assert (=> b!2753822 (= lt!975625 lt!975632)))

(declare-fun lt!975646 () List!31977)

(assert (=> b!2753822 (<= (size!24647 Nil!31877) (size!24647 lt!975646))))

(assert (=> b!2753822 (= lt!975632 (lemmaIsPrefixThenSmallerEqSize!241 Nil!31877 lt!975646))))

(assert (=> b!2753822 (= lt!975646 (list!12042 input!5495))))

(declare-fun lt!975637 () Unit!45671)

(declare-fun lt!975657 () Unit!45671)

(assert (=> b!2753822 (= lt!975637 lt!975657)))

(declare-fun lt!975656 () List!31977)

(assert (=> b!2753822 (= (head!6129 (drop!1688 lt!975656 0)) (apply!7456 lt!975656 0))))

(assert (=> b!2753822 (= lt!975657 (lemmaDropApply!894 lt!975656 0))))

(assert (=> b!2753822 (= lt!975656 (list!12042 input!5495))))

(declare-fun lt!975630 () Unit!45671)

(declare-fun lt!975640 () Unit!45671)

(assert (=> b!2753822 (= lt!975630 lt!975640)))

(declare-fun lt!975636 () List!31977)

(declare-fun lt!975626 () List!31977)

(assert (=> b!2753822 (and (= lt!975636 Nil!31877) (= lt!975626 lt!975425))))

(assert (=> b!2753822 (= lt!975640 (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975636 lt!975626 Nil!31877 lt!975425))))

(assert (=> b!2753822 (= lt!975626 (list!12042 (_2!18745 lt!975633)))))

(assert (=> b!2753822 (= lt!975636 call!178192)))

(assert (=> b!2753822 (= lt!975633 (splitAt!87 input!5495 0))))

(assert (=> b!2753822 (= e!1736315 e!1736313)))

(declare-fun bm!178188 () Bool)

(assert (=> bm!178188 (= call!178195 (apply!7455 input!5495 0))))

(declare-fun b!2753823 () Bool)

(declare-fun c!445672 () Bool)

(assert (=> b!2753823 (= c!445672 call!178186)))

(declare-fun lt!975660 () Unit!45671)

(declare-fun lt!975620 () Unit!45671)

(assert (=> b!2753823 (= lt!975660 lt!975620)))

(assert (=> b!2753823 (= lt!975619 Nil!31877)))

(assert (=> b!2753823 (= lt!975620 call!178193)))

(assert (=> b!2753823 (= lt!975619 call!178192)))

(declare-fun lt!975634 () Unit!45671)

(declare-fun lt!975623 () Unit!45671)

(assert (=> b!2753823 (= lt!975634 lt!975623)))

(assert (=> b!2753823 call!178190))

(assert (=> b!2753823 (= lt!975623 call!178194)))

(assert (=> b!2753823 (= lt!975638 call!178192)))

(assert (=> b!2753823 (= lt!975650 call!178192)))

(declare-fun e!1736311 () Int)

(assert (=> b!2753823 (= e!1736315 e!1736311)))

(declare-fun bm!178189 () Bool)

(assert (=> bm!178189 (= call!178188 (++!7893 Nil!31877 (Cons!31877 call!178195 Nil!31877)))))

(declare-fun bm!178181 () Bool)

(assert (=> bm!178181 (= call!178190 (isPrefix!2533 (ite c!445669 lt!975650 lt!975659) (ite c!445669 lt!975638 lt!975641)))))

(declare-fun lt!975624 () Int)

(declare-fun d!797029 () Bool)

(declare-fun findLongestMatchInnerZipper!5 ((InoxSet Context!4550) List!31977 Int List!31977 List!31977 Int) tuple2!31898)

(assert (=> d!797029 (= (size!24647 (_1!18747 (findLongestMatchInnerZipper!5 z!3597 Nil!31877 0 lt!975425 (list!12042 input!5495) lt!975429))) lt!975624)))

(assert (=> d!797029 (= lt!975624 e!1736312)))

(declare-fun c!445671 () Bool)

(assert (=> d!797029 (= c!445671 (lostCauseZipper!423 z!3597))))

(declare-fun lt!975627 () Unit!45671)

(declare-fun Unit!45678 () Unit!45671)

(assert (=> d!797029 (= lt!975627 Unit!45678)))

(assert (=> d!797029 (= (getSuffix!1219 (list!12042 input!5495) Nil!31877) lt!975425)))

(declare-fun lt!975658 () Unit!45671)

(declare-fun lt!975651 () Unit!45671)

(assert (=> d!797029 (= lt!975658 lt!975651)))

(declare-fun lt!975644 () List!31977)

(assert (=> d!797029 (= lt!975425 lt!975644)))

(assert (=> d!797029 (= lt!975651 (lemmaSamePrefixThenSameSuffix!1121 Nil!31877 lt!975425 Nil!31877 lt!975644 (list!12042 input!5495)))))

(assert (=> d!797029 (= lt!975644 (getSuffix!1219 (list!12042 input!5495) Nil!31877))))

(declare-fun lt!975654 () Unit!45671)

(declare-fun lt!975628 () Unit!45671)

(assert (=> d!797029 (= lt!975654 lt!975628)))

(assert (=> d!797029 (isPrefix!2533 Nil!31877 (++!7893 Nil!31877 lt!975425))))

(assert (=> d!797029 (= lt!975628 (lemmaConcatTwoListThenFirstIsPrefix!1647 Nil!31877 lt!975425))))

(assert (=> d!797029 (= (++!7893 Nil!31877 lt!975425) (list!12042 input!5495))))

(assert (=> d!797029 (= (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429) lt!975624)))

(declare-fun b!2753824 () Bool)

(assert (=> b!2753824 (= e!1736311 0)))

(declare-fun b!2753825 () Bool)

(assert (=> b!2753825 (= e!1736312 0)))

(declare-fun b!2753826 () Bool)

(declare-fun Unit!45679 () Unit!45671)

(assert (=> b!2753826 (= e!1736314 Unit!45679)))

(declare-fun b!2753827 () Bool)

(assert (=> b!2753827 (= e!1736316 (list!12042 input!5495))))

(declare-fun b!2753828 () Bool)

(assert (=> b!2753828 (= e!1736311 0)))

(declare-fun bm!178190 () Bool)

(assert (=> bm!178190 (= call!178186 (nullableZipper!612 z!3597))))

(assert (= (and d!797029 c!445671) b!2753825))

(assert (= (and d!797029 (not c!445671)) b!2753819))

(assert (= (and b!2753819 c!445669) b!2753823))

(assert (= (and b!2753819 (not c!445669)) b!2753822))

(assert (= (and b!2753823 c!445672) b!2753824))

(assert (= (and b!2753823 (not c!445672)) b!2753828))

(assert (= (and b!2753822 c!445670) b!2753820))

(assert (= (and b!2753822 (not c!445670)) b!2753826))

(assert (= (and b!2753822 c!445667) b!2753818))

(assert (= (and b!2753822 (not c!445667)) b!2753821))

(assert (= (or b!2753818 b!2753821) bm!178186))

(assert (= (or b!2753818 b!2753821) bm!178188))

(assert (= (or b!2753818 b!2753821) bm!178189))

(assert (= (or b!2753818 b!2753821) bm!178184))

(assert (= (or b!2753818 b!2753821) bm!178183))

(assert (= (or b!2753823 b!2753820) bm!178181))

(assert (= (or b!2753823 b!2753822) bm!178190))

(assert (= (or b!2753823 b!2753820) bm!178187))

(assert (= (or b!2753823 b!2753822) bm!178185))

(assert (= (or b!2753823 b!2753820) bm!178182))

(assert (= (and bm!178182 c!445668) b!2753817))

(assert (= (and bm!178182 (not c!445668)) b!2753827))

(declare-fun m!3169293 () Bool)

(assert (=> bm!178183 m!3169293))

(assert (=> b!2753820 m!3169089))

(declare-fun m!3169295 () Bool)

(assert (=> bm!178184 m!3169295))

(assert (=> bm!178186 m!3169005))

(declare-fun m!3169297 () Bool)

(assert (=> bm!178185 m!3169297))

(assert (=> bm!178190 m!3169053))

(declare-fun m!3169299 () Bool)

(assert (=> bm!178182 m!3169299))

(declare-fun m!3169301 () Bool)

(assert (=> bm!178181 m!3169301))

(declare-fun m!3169303 () Bool)

(assert (=> b!2753822 m!3169303))

(assert (=> b!2753822 m!3168997))

(assert (=> b!2753822 m!3169093))

(declare-fun m!3169305 () Bool)

(assert (=> b!2753822 m!3169305))

(declare-fun m!3169307 () Bool)

(assert (=> b!2753822 m!3169307))

(declare-fun m!3169309 () Bool)

(assert (=> b!2753822 m!3169309))

(declare-fun m!3169311 () Bool)

(assert (=> b!2753822 m!3169311))

(declare-fun m!3169313 () Bool)

(assert (=> b!2753822 m!3169313))

(declare-fun m!3169315 () Bool)

(assert (=> b!2753822 m!3169315))

(assert (=> b!2753822 m!3169311))

(declare-fun m!3169317 () Bool)

(assert (=> b!2753822 m!3169317))

(assert (=> b!2753822 m!3169013))

(declare-fun m!3169319 () Bool)

(assert (=> b!2753822 m!3169319))

(assert (=> b!2753822 m!3169319))

(declare-fun m!3169321 () Bool)

(assert (=> b!2753822 m!3169321))

(assert (=> b!2753822 m!3169313))

(declare-fun m!3169323 () Bool)

(assert (=> b!2753822 m!3169323))

(declare-fun m!3169325 () Bool)

(assert (=> b!2753822 m!3169325))

(declare-fun m!3169327 () Bool)

(assert (=> b!2753822 m!3169327))

(assert (=> b!2753822 m!3169089))

(declare-fun m!3169329 () Bool)

(assert (=> b!2753822 m!3169329))

(assert (=> b!2753822 m!3169309))

(declare-fun m!3169331 () Bool)

(assert (=> b!2753822 m!3169331))

(assert (=> b!2753822 m!3168983))

(assert (=> b!2753822 m!3169005))

(declare-fun m!3169333 () Bool)

(assert (=> b!2753822 m!3169333))

(assert (=> d!797029 m!3169089))

(declare-fun m!3169335 () Bool)

(assert (=> d!797029 m!3169335))

(assert (=> d!797029 m!3169089))

(assert (=> d!797029 m!3169089))

(declare-fun m!3169337 () Bool)

(assert (=> d!797029 m!3169337))

(assert (=> d!797029 m!3169105))

(assert (=> d!797029 m!3169091))

(declare-fun m!3169339 () Bool)

(assert (=> d!797029 m!3169339))

(assert (=> d!797029 m!3169091))

(declare-fun m!3169341 () Bool)

(assert (=> d!797029 m!3169341))

(assert (=> d!797029 m!3169103))

(assert (=> d!797029 m!3169089))

(declare-fun m!3169343 () Bool)

(assert (=> d!797029 m!3169343))

(assert (=> bm!178188 m!3168997))

(declare-fun m!3169345 () Bool)

(assert (=> bm!178187 m!3169345))

(assert (=> b!2753827 m!3169089))

(declare-fun m!3169347 () Bool)

(assert (=> bm!178189 m!3169347))

(assert (=> b!2753650 d!797029))

(declare-fun d!797031 () Bool)

(assert (=> d!797031 (= lt!975425 lt!975471)))

(declare-fun lt!975663 () Unit!45671)

(declare-fun choose!16135 (List!31977 List!31977 List!31977 List!31977 List!31977) Unit!45671)

(assert (=> d!797031 (= lt!975663 (choose!16135 Nil!31877 lt!975425 Nil!31877 lt!975471 lt!975425))))

(assert (=> d!797031 (isPrefix!2533 Nil!31877 lt!975425)))

(assert (=> d!797031 (= (lemmaSamePrefixThenSameSuffix!1121 Nil!31877 lt!975425 Nil!31877 lt!975471 lt!975425) lt!975663)))

(declare-fun bs!490544 () Bool)

(assert (= bs!490544 d!797031))

(declare-fun m!3169349 () Bool)

(assert (=> bs!490544 m!3169349))

(assert (=> bs!490544 m!3169159))

(assert (=> b!2753635 d!797031))

(declare-fun d!797033 () Bool)

(assert (=> d!797033 (isPrefix!2533 Nil!31877 (++!7893 Nil!31877 lt!975425))))

(declare-fun lt!975666 () Unit!45671)

(declare-fun choose!16136 (List!31977 List!31977) Unit!45671)

(assert (=> d!797033 (= lt!975666 (choose!16136 Nil!31877 lt!975425))))

(assert (=> d!797033 (= (lemmaConcatTwoListThenFirstIsPrefix!1647 Nil!31877 lt!975425) lt!975666)))

(declare-fun bs!490545 () Bool)

(assert (= bs!490545 d!797033))

(assert (=> bs!490545 m!3169091))

(assert (=> bs!490545 m!3169091))

(assert (=> bs!490545 m!3169341))

(declare-fun m!3169351 () Bool)

(assert (=> bs!490545 m!3169351))

(assert (=> b!2753635 d!797033))

(declare-fun bs!490546 () Bool)

(declare-fun d!797035 () Bool)

(assert (= bs!490546 (and d!797035 d!796935)))

(declare-fun lambda!100990 () Int)

(assert (=> bs!490546 (not (= lambda!100990 lambda!100971))))

(declare-fun bs!490547 () Bool)

(declare-fun b!2753833 () Bool)

(assert (= bs!490547 (and b!2753833 d!796935)))

(declare-fun lambda!100991 () Int)

(assert (=> bs!490547 (not (= lambda!100991 lambda!100971))))

(declare-fun bs!490548 () Bool)

(assert (= bs!490548 (and b!2753833 d!797035)))

(assert (=> bs!490548 (not (= lambda!100991 lambda!100990))))

(declare-fun bs!490549 () Bool)

(declare-fun b!2753834 () Bool)

(assert (= bs!490549 (and b!2753834 d!796935)))

(declare-fun lambda!100992 () Int)

(assert (=> bs!490549 (not (= lambda!100992 lambda!100971))))

(declare-fun bs!490550 () Bool)

(assert (= bs!490550 (and b!2753834 d!797035)))

(assert (=> bs!490550 (not (= lambda!100992 lambda!100990))))

(declare-fun bs!490551 () Bool)

(assert (= bs!490551 (and b!2753834 b!2753833)))

(assert (=> bs!490551 (= lambda!100992 lambda!100991)))

(declare-fun e!1736323 () Unit!45671)

(declare-fun Unit!45680 () Unit!45671)

(assert (=> b!2753834 (= e!1736323 Unit!45680)))

(declare-datatypes ((List!31981 0))(
  ( (Nil!31881) (Cons!31881 (h!37301 Context!4550) (t!228085 List!31981)) )
))
(declare-fun lt!975690 () List!31981)

(declare-fun call!178200 () List!31981)

(assert (=> b!2753834 (= lt!975690 call!178200)))

(declare-fun lt!975686 () Unit!45671)

(declare-fun lemmaForallThenNotExists!74 (List!31981 Int) Unit!45671)

(assert (=> b!2753834 (= lt!975686 (lemmaForallThenNotExists!74 lt!975690 lambda!100990))))

(declare-fun call!178201 () Bool)

(assert (=> b!2753834 (not call!178201)))

(declare-fun lt!975683 () Unit!45671)

(assert (=> b!2753834 (= lt!975683 lt!975686)))

(declare-fun lt!975684 () List!31981)

(declare-fun bm!178195 () Bool)

(declare-fun c!445683 () Bool)

(declare-fun exists!954 (List!31981 Int) Bool)

(assert (=> bm!178195 (= call!178201 (exists!954 (ite c!445683 lt!975684 lt!975690) (ite c!445683 lambda!100991 lambda!100992)))))

(declare-fun bm!178196 () Bool)

(declare-fun toList!1819 ((InoxSet Context!4550)) List!31981)

(assert (=> bm!178196 (= call!178200 (toList!1819 z!3597))))

(declare-fun Unit!45681 () Unit!45671)

(assert (=> b!2753833 (= e!1736323 Unit!45681)))

(assert (=> b!2753833 (= lt!975684 call!178200)))

(declare-fun lt!975689 () Unit!45671)

(declare-fun lemmaNotForallThenExists!74 (List!31981 Int) Unit!45671)

(assert (=> b!2753833 (= lt!975689 (lemmaNotForallThenExists!74 lt!975684 lambda!100990))))

(assert (=> b!2753833 call!178201))

(declare-fun lt!975687 () Unit!45671)

(assert (=> b!2753833 (= lt!975687 lt!975689)))

(declare-fun lt!975688 () Bool)

(declare-datatypes ((Option!6252 0))(
  ( (None!6251) (Some!6251 (v!33491 List!31977)) )
))
(declare-fun isEmpty!18067 (Option!6252) Bool)

(declare-fun getLanguageWitness!173 ((InoxSet Context!4550)) Option!6252)

(assert (=> d!797035 (= lt!975688 (isEmpty!18067 (getLanguageWitness!173 z!3597)))))

(declare-fun forall!6593 ((InoxSet Context!4550) Int) Bool)

(assert (=> d!797035 (= lt!975688 (forall!6593 z!3597 lambda!100990))))

(declare-fun lt!975685 () Unit!45671)

(assert (=> d!797035 (= lt!975685 e!1736323)))

(assert (=> d!797035 (= c!445683 (not (forall!6593 z!3597 lambda!100990)))))

(assert (=> d!797035 (= (lostCauseZipper!423 z!3597) lt!975688)))

(assert (= (and d!797035 c!445683) b!2753833))

(assert (= (and d!797035 (not c!445683)) b!2753834))

(assert (= (or b!2753833 b!2753834) bm!178195))

(assert (= (or b!2753833 b!2753834) bm!178196))

(declare-fun m!3169353 () Bool)

(assert (=> d!797035 m!3169353))

(assert (=> d!797035 m!3169353))

(declare-fun m!3169355 () Bool)

(assert (=> d!797035 m!3169355))

(declare-fun m!3169357 () Bool)

(assert (=> d!797035 m!3169357))

(assert (=> d!797035 m!3169357))

(declare-fun m!3169359 () Bool)

(assert (=> b!2753833 m!3169359))

(declare-fun m!3169361 () Bool)

(assert (=> bm!178195 m!3169361))

(declare-fun m!3169363 () Bool)

(assert (=> bm!178196 m!3169363))

(declare-fun m!3169365 () Bool)

(assert (=> b!2753834 m!3169365))

(assert (=> b!2753635 d!797035))

(declare-fun d!797037 () Bool)

(assert (=> d!797037 (= (list!12042 input!5495) (list!12043 (c!445621 input!5495)))))

(declare-fun bs!490552 () Bool)

(assert (= bs!490552 d!797037))

(declare-fun m!3169367 () Bool)

(assert (=> bs!490552 m!3169367))

(assert (=> b!2753635 d!797037))

(declare-fun d!797039 () Bool)

(declare-fun lt!975693 () Int)

(assert (=> d!797039 (= lt!975693 (size!24647 (list!12042 input!5495)))))

(declare-fun size!24648 (Conc!9939) Int)

(assert (=> d!797039 (= lt!975693 (size!24648 (c!445621 input!5495)))))

(assert (=> d!797039 (= (size!24646 input!5495) lt!975693)))

(declare-fun bs!490553 () Bool)

(assert (= bs!490553 d!797039))

(assert (=> bs!490553 m!3169089))

(assert (=> bs!490553 m!3169089))

(declare-fun m!3169369 () Bool)

(assert (=> bs!490553 m!3169369))

(declare-fun m!3169371 () Bool)

(assert (=> bs!490553 m!3169371))

(assert (=> b!2753635 d!797039))

(declare-fun d!797041 () Bool)

(declare-fun e!1736324 () Bool)

(assert (=> d!797041 e!1736324))

(declare-fun res!1154253 () Bool)

(assert (=> d!797041 (=> (not res!1154253) (not e!1736324))))

(declare-fun lt!975694 () tuple3!4652)

(assert (=> d!797041 (= res!1154253 (valid!2890 (_2!18743 lt!975694)))))

(assert (=> d!797041 (= lt!975694 (choose!16133 cacheUp!820 cacheDown!939 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429))))

(assert (=> d!797041 (= (++!7893 Nil!31877 lt!975425) (list!12042 input!5495))))

(assert (=> d!797041 (= (findLongestMatchInnerZipperFastMem!13 cacheUp!820 cacheDown!939 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429) lt!975694)))

(declare-fun b!2753835 () Bool)

(declare-fun res!1154254 () Bool)

(assert (=> b!2753835 (=> (not res!1154254) (not e!1736324))))

(assert (=> b!2753835 (= res!1154254 (valid!2891 (_3!2796 lt!975694)))))

(declare-fun b!2753836 () Bool)

(assert (=> b!2753836 (= e!1736324 (= (_1!18743 lt!975694) (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429)))))

(assert (= (and d!797041 res!1154253) b!2753835))

(assert (= (and b!2753835 res!1154254) b!2753836))

(declare-fun m!3169373 () Bool)

(assert (=> d!797041 m!3169373))

(declare-fun m!3169375 () Bool)

(assert (=> d!797041 m!3169375))

(assert (=> d!797041 m!3169091))

(assert (=> d!797041 m!3169089))

(declare-fun m!3169377 () Bool)

(assert (=> b!2753835 m!3169377))

(assert (=> b!2753836 m!3169035))

(assert (=> b!2753635 d!797041))

(declare-fun d!797043 () Bool)

(assert (=> d!797043 (= (valid!2890 (_2!18743 lt!975449)) (validCacheMapUp!353 (cache!3771 (_2!18743 lt!975449))))))

(declare-fun bs!490554 () Bool)

(assert (= bs!490554 d!797043))

(declare-fun m!3169379 () Bool)

(assert (=> bs!490554 m!3169379))

(assert (=> b!2753635 d!797043))

(declare-fun d!797045 () Bool)

(declare-fun lt!975697 () List!31977)

(assert (=> d!797045 (= (++!7893 Nil!31877 lt!975697) lt!975425)))

(declare-fun e!1736327 () List!31977)

(assert (=> d!797045 (= lt!975697 e!1736327)))

(declare-fun c!445686 () Bool)

(assert (=> d!797045 (= c!445686 ((_ is Cons!31877) Nil!31877))))

(assert (=> d!797045 (>= (size!24647 lt!975425) (size!24647 Nil!31877))))

(assert (=> d!797045 (= (getSuffix!1219 lt!975425 Nil!31877) lt!975697)))

(declare-fun b!2753841 () Bool)

(assert (=> b!2753841 (= e!1736327 (getSuffix!1219 (tail!4367 lt!975425) (t!228081 Nil!31877)))))

(declare-fun b!2753842 () Bool)

(assert (=> b!2753842 (= e!1736327 lt!975425)))

(assert (= (and d!797045 c!445686) b!2753841))

(assert (= (and d!797045 (not c!445686)) b!2753842))

(declare-fun m!3169381 () Bool)

(assert (=> d!797045 m!3169381))

(assert (=> d!797045 m!3169009))

(assert (=> d!797045 m!3169013))

(assert (=> b!2753841 m!3169005))

(assert (=> b!2753841 m!3169005))

(declare-fun m!3169383 () Bool)

(assert (=> b!2753841 m!3169383))

(assert (=> b!2753635 d!797045))

(declare-fun b!2753845 () Bool)

(declare-fun res!1154256 () Bool)

(declare-fun e!1736328 () Bool)

(assert (=> b!2753845 (=> (not res!1154256) (not e!1736328))))

(declare-fun lt!975698 () List!31977)

(assert (=> b!2753845 (= res!1154256 (= (size!24647 lt!975698) (+ (size!24647 Nil!31877) (size!24647 lt!975425))))))

(declare-fun b!2753844 () Bool)

(declare-fun e!1736329 () List!31977)

(assert (=> b!2753844 (= e!1736329 (Cons!31877 (h!37297 Nil!31877) (++!7893 (t!228081 Nil!31877) lt!975425)))))

(declare-fun d!797047 () Bool)

(assert (=> d!797047 e!1736328))

(declare-fun res!1154255 () Bool)

(assert (=> d!797047 (=> (not res!1154255) (not e!1736328))))

(assert (=> d!797047 (= res!1154255 (= (content!4489 lt!975698) ((_ map or) (content!4489 Nil!31877) (content!4489 lt!975425))))))

(assert (=> d!797047 (= lt!975698 e!1736329)))

(declare-fun c!445687 () Bool)

(assert (=> d!797047 (= c!445687 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!797047 (= (++!7893 Nil!31877 lt!975425) lt!975698)))

(declare-fun b!2753846 () Bool)

(assert (=> b!2753846 (= e!1736328 (or (not (= lt!975425 Nil!31877)) (= lt!975698 Nil!31877)))))

(declare-fun b!2753843 () Bool)

(assert (=> b!2753843 (= e!1736329 lt!975425)))

(assert (= (and d!797047 c!445687) b!2753843))

(assert (= (and d!797047 (not c!445687)) b!2753844))

(assert (= (and d!797047 res!1154255) b!2753845))

(assert (= (and b!2753845 res!1154256) b!2753846))

(declare-fun m!3169385 () Bool)

(assert (=> b!2753845 m!3169385))

(assert (=> b!2753845 m!3169013))

(assert (=> b!2753845 m!3169009))

(declare-fun m!3169387 () Bool)

(assert (=> b!2753844 m!3169387))

(declare-fun m!3169389 () Bool)

(assert (=> d!797047 m!3169389))

(assert (=> d!797047 m!3169141))

(assert (=> d!797047 m!3169221))

(assert (=> b!2753635 d!797047))

(declare-fun b!2753850 () Bool)

(declare-fun e!1736331 () Bool)

(assert (=> b!2753850 (= e!1736331 (>= (size!24647 lt!975430) (size!24647 Nil!31877)))))

(declare-fun b!2753847 () Bool)

(declare-fun e!1736330 () Bool)

(declare-fun e!1736332 () Bool)

(assert (=> b!2753847 (= e!1736330 e!1736332)))

(declare-fun res!1154257 () Bool)

(assert (=> b!2753847 (=> (not res!1154257) (not e!1736332))))

(assert (=> b!2753847 (= res!1154257 (not ((_ is Nil!31877) lt!975430)))))

(declare-fun d!797049 () Bool)

(assert (=> d!797049 e!1736331))

(declare-fun res!1154258 () Bool)

(assert (=> d!797049 (=> res!1154258 e!1736331)))

(declare-fun lt!975699 () Bool)

(assert (=> d!797049 (= res!1154258 (not lt!975699))))

(assert (=> d!797049 (= lt!975699 e!1736330)))

(declare-fun res!1154260 () Bool)

(assert (=> d!797049 (=> res!1154260 e!1736330)))

(assert (=> d!797049 (= res!1154260 ((_ is Nil!31877) Nil!31877))))

(assert (=> d!797049 (= (isPrefix!2533 Nil!31877 lt!975430) lt!975699)))

(declare-fun b!2753849 () Bool)

(assert (=> b!2753849 (= e!1736332 (isPrefix!2533 (tail!4367 Nil!31877) (tail!4367 lt!975430)))))

(declare-fun b!2753848 () Bool)

(declare-fun res!1154259 () Bool)

(assert (=> b!2753848 (=> (not res!1154259) (not e!1736332))))

(assert (=> b!2753848 (= res!1154259 (= (head!6129 Nil!31877) (head!6129 lt!975430)))))

(assert (= (and d!797049 (not res!1154260)) b!2753847))

(assert (= (and b!2753847 res!1154257) b!2753848))

(assert (= (and b!2753848 res!1154259) b!2753849))

(assert (= (and d!797049 (not res!1154258)) b!2753850))

(declare-fun m!3169391 () Bool)

(assert (=> b!2753850 m!3169391))

(assert (=> b!2753850 m!3169013))

(declare-fun m!3169393 () Bool)

(assert (=> b!2753849 m!3169393))

(declare-fun m!3169395 () Bool)

(assert (=> b!2753849 m!3169395))

(assert (=> b!2753849 m!3169393))

(assert (=> b!2753849 m!3169395))

(declare-fun m!3169397 () Bool)

(assert (=> b!2753849 m!3169397))

(declare-fun m!3169399 () Bool)

(assert (=> b!2753848 m!3169399))

(declare-fun m!3169401 () Bool)

(assert (=> b!2753848 m!3169401))

(assert (=> b!2753635 d!797049))

(assert (=> b!2753635 d!797029))

(declare-fun d!797051 () Bool)

(declare-fun e!1736333 () Bool)

(assert (=> d!797051 e!1736333))

(declare-fun res!1154261 () Bool)

(assert (=> d!797051 (=> (not res!1154261) (not e!1736333))))

(declare-fun lt!975700 () tuple3!4652)

(assert (=> d!797051 (= res!1154261 (valid!2890 (_2!18743 lt!975700)))))

(assert (=> d!797051 (= lt!975700 (choose!16133 (_2!18743 lt!975449) (_3!2796 lt!975449) z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429))))

(assert (=> d!797051 (= (++!7893 Nil!31877 lt!975425) (list!12042 input!5495))))

(assert (=> d!797051 (= (findLongestMatchInnerZipperFastMem!13 (_2!18743 lt!975449) (_3!2796 lt!975449) z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429) lt!975700)))

(declare-fun b!2753851 () Bool)

(declare-fun res!1154262 () Bool)

(assert (=> b!2753851 (=> (not res!1154262) (not e!1736333))))

(assert (=> b!2753851 (= res!1154262 (valid!2891 (_3!2796 lt!975700)))))

(declare-fun b!2753852 () Bool)

(assert (=> b!2753852 (= e!1736333 (= (_1!18743 lt!975700) (findLongestMatchInnerZipperFast!15 z!3597 Nil!31877 0 lt!975425 input!5495 lt!975429)))))

(assert (= (and d!797051 res!1154261) b!2753851))

(assert (= (and b!2753851 res!1154262) b!2753852))

(declare-fun m!3169403 () Bool)

(assert (=> d!797051 m!3169403))

(declare-fun m!3169405 () Bool)

(assert (=> d!797051 m!3169405))

(assert (=> d!797051 m!3169091))

(assert (=> d!797051 m!3169089))

(declare-fun m!3169407 () Bool)

(assert (=> b!2753851 m!3169407))

(assert (=> b!2753852 m!3169035))

(assert (=> b!2753635 d!797051))

(declare-fun d!797053 () Bool)

(assert (=> d!797053 (= (valid!2890 (_2!18743 lt!975452)) (validCacheMapUp!353 (cache!3771 (_2!18743 lt!975452))))))

(declare-fun bs!490555 () Bool)

(assert (= bs!490555 d!797053))

(declare-fun m!3169409 () Bool)

(assert (=> bs!490555 m!3169409))

(assert (=> b!2753635 d!797053))

(assert (=> b!2753664 d!796945))

(declare-fun b!2753853 () Bool)

(declare-fun e!1736339 () List!31977)

(declare-fun call!178208 () List!31977)

(assert (=> b!2753853 (= e!1736339 call!178208)))

(declare-fun b!2753854 () Bool)

(declare-fun e!1736336 () Int)

(declare-fun lt!975737 () Int)

(assert (=> b!2753854 (= e!1736336 (ite (= lt!975737 0) 1 lt!975737))))

(declare-fun call!178203 () Int)

(assert (=> b!2753854 (= lt!975737 call!178203)))

(declare-fun bm!178198 () Bool)

(declare-fun c!445689 () Bool)

(declare-fun c!445690 () Bool)

(assert (=> bm!178198 (= c!445689 c!445690)))

(declare-fun lt!975725 () List!31977)

(declare-fun call!178209 () Unit!45671)

(declare-fun lt!975701 () List!31977)

(assert (=> bm!178198 (= call!178209 (lemmaIsPrefixSameLengthThenSameList!440 (ite c!445690 lt!975701 lt!975725) lt!975464 e!1736339))))

(declare-fun call!178207 () List!31977)

(declare-fun call!178204 () List!31977)

(declare-fun call!178205 () (InoxSet Context!4550))

(declare-fun bm!178199 () Bool)

(assert (=> bm!178199 (= call!178203 (findLongestMatchInnerZipperFast!15 call!178205 call!178204 (+ 1 1) call!178207 input!5495 lt!975429))))

(declare-fun b!2753855 () Bool)

(declare-fun e!1736335 () Int)

(declare-fun e!1736338 () Int)

(assert (=> b!2753855 (= e!1736335 e!1736338)))

(assert (=> b!2753855 (= c!445690 (= 1 lt!975429))))

(declare-fun b!2753856 () Bool)

(declare-fun e!1736337 () Unit!45671)

(declare-fun Unit!45682 () Unit!45671)

(assert (=> b!2753856 (= e!1736337 Unit!45682)))

(declare-fun lt!975741 () List!31977)

(assert (=> b!2753856 (= lt!975741 (list!12042 input!5495))))

(declare-fun lt!975723 () List!31977)

(assert (=> b!2753856 (= lt!975723 (list!12042 input!5495))))

(declare-fun lt!975734 () Unit!45671)

(declare-fun call!178210 () Unit!45671)

(assert (=> b!2753856 (= lt!975734 call!178210)))

(declare-fun call!178206 () Bool)

(assert (=> b!2753856 call!178206))

(declare-fun lt!975721 () Unit!45671)

(assert (=> b!2753856 (= lt!975721 lt!975734)))

(assert (=> b!2753856 (= lt!975725 (list!12042 input!5495))))

(declare-fun lt!975724 () Unit!45671)

(assert (=> b!2753856 (= lt!975724 call!178209)))

(assert (=> b!2753856 (= lt!975725 lt!975464)))

(declare-fun lt!975731 () Unit!45671)

(assert (=> b!2753856 (= lt!975731 lt!975724)))

(assert (=> b!2753856 false))

(declare-fun b!2753857 () Bool)

(assert (=> b!2753857 (= e!1736336 call!178203)))

(declare-fun bm!178200 () Bool)

(declare-fun call!178211 () C!16272)

(assert (=> bm!178200 (= call!178205 (derivationStepZipper!349 call!178160 call!178211))))

(declare-fun lt!975715 () tuple2!31894)

(declare-fun bm!178201 () Bool)

(assert (=> bm!178201 (= call!178208 (list!12042 (ite c!445690 input!5495 (_1!18745 lt!975715))))))

(declare-fun bm!178202 () Bool)

(assert (=> bm!178202 (= call!178207 (tail!4367 lt!975450))))

(declare-fun lt!975732 () List!31977)

(declare-fun lt!975720 () List!31977)

(declare-fun bm!178203 () Bool)

(assert (=> bm!178203 (= call!178210 (lemmaIsPrefixRefl!1659 (ite c!445690 lt!975732 lt!975741) (ite c!445690 lt!975720 lt!975723)))))

(declare-fun b!2753858 () Bool)

(declare-fun c!445688 () Bool)

(declare-fun call!178202 () Bool)

(assert (=> b!2753858 (= c!445688 call!178202)))

(declare-fun lt!975727 () Unit!45671)

(declare-fun lt!975704 () Unit!45671)

(assert (=> b!2753858 (= lt!975727 lt!975704)))

(declare-fun lt!975735 () List!31977)

(declare-fun lt!975729 () List!31977)

(declare-fun lt!975711 () C!16272)

(assert (=> b!2753858 (= (++!7893 (++!7893 lt!975464 (Cons!31877 lt!975711 Nil!31877)) lt!975729) lt!975735)))

(assert (=> b!2753858 (= lt!975704 (lemmaMoveElementToOtherListKeepsConcatEq!850 lt!975464 lt!975711 lt!975729 lt!975735))))

(assert (=> b!2753858 (= lt!975735 (list!12042 input!5495))))

(assert (=> b!2753858 (= lt!975729 (tail!4367 lt!975450))))

(assert (=> b!2753858 (= lt!975711 (apply!7455 input!5495 1))))

(declare-fun lt!975717 () Unit!45671)

(declare-fun lt!975713 () Unit!45671)

(assert (=> b!2753858 (= lt!975717 lt!975713)))

(declare-fun lt!975703 () List!31977)

(assert (=> b!2753858 (isPrefix!2533 (++!7893 lt!975464 (Cons!31877 (head!6129 (getSuffix!1219 lt!975703 lt!975464)) Nil!31877)) lt!975703)))

(assert (=> b!2753858 (= lt!975713 (lemmaAddHeadSuffixToPrefixStillPrefix!438 lt!975464 lt!975703))))

(assert (=> b!2753858 (= lt!975703 (list!12042 input!5495))))

(declare-fun lt!975730 () Unit!45671)

(assert (=> b!2753858 (= lt!975730 e!1736337)))

(declare-fun c!445691 () Bool)

(assert (=> b!2753858 (= c!445691 (= (size!24647 lt!975464) (size!24646 input!5495)))))

(declare-fun lt!975707 () Unit!45671)

(declare-fun lt!975714 () Unit!45671)

(assert (=> b!2753858 (= lt!975707 lt!975714)))

(declare-fun lt!975728 () List!31977)

(assert (=> b!2753858 (<= (size!24647 lt!975464) (size!24647 lt!975728))))

(assert (=> b!2753858 (= lt!975714 (lemmaIsPrefixThenSmallerEqSize!241 lt!975464 lt!975728))))

(assert (=> b!2753858 (= lt!975728 (list!12042 input!5495))))

(declare-fun lt!975719 () Unit!45671)

(declare-fun lt!975739 () Unit!45671)

(assert (=> b!2753858 (= lt!975719 lt!975739)))

(declare-fun lt!975738 () List!31977)

(assert (=> b!2753858 (= (head!6129 (drop!1688 lt!975738 1)) (apply!7456 lt!975738 1))))

(assert (=> b!2753858 (= lt!975739 (lemmaDropApply!894 lt!975738 1))))

(assert (=> b!2753858 (= lt!975738 (list!12042 input!5495))))

(declare-fun lt!975712 () Unit!45671)

(declare-fun lt!975722 () Unit!45671)

(assert (=> b!2753858 (= lt!975712 lt!975722)))

(declare-fun lt!975718 () List!31977)

(declare-fun lt!975708 () List!31977)

(assert (=> b!2753858 (and (= lt!975718 lt!975464) (= lt!975708 lt!975450))))

(assert (=> b!2753858 (= lt!975722 (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975718 lt!975708 lt!975464 lt!975450))))

(assert (=> b!2753858 (= lt!975708 (list!12042 (_2!18745 lt!975715)))))

(assert (=> b!2753858 (= lt!975718 call!178208)))

(assert (=> b!2753858 (= lt!975715 (splitAt!87 input!5495 1))))

(assert (=> b!2753858 (= e!1736338 e!1736336)))

(declare-fun bm!178204 () Bool)

(assert (=> bm!178204 (= call!178211 (apply!7455 input!5495 1))))

(declare-fun b!2753859 () Bool)

(declare-fun c!445693 () Bool)

(assert (=> b!2753859 (= c!445693 call!178202)))

(declare-fun lt!975742 () Unit!45671)

(declare-fun lt!975702 () Unit!45671)

(assert (=> b!2753859 (= lt!975742 lt!975702)))

(assert (=> b!2753859 (= lt!975701 lt!975464)))

(assert (=> b!2753859 (= lt!975702 call!178209)))

(assert (=> b!2753859 (= lt!975701 call!178208)))

(declare-fun lt!975716 () Unit!45671)

(declare-fun lt!975705 () Unit!45671)

(assert (=> b!2753859 (= lt!975716 lt!975705)))

(assert (=> b!2753859 call!178206))

(assert (=> b!2753859 (= lt!975705 call!178210)))

(assert (=> b!2753859 (= lt!975720 call!178208)))

(assert (=> b!2753859 (= lt!975732 call!178208)))

(declare-fun e!1736334 () Int)

(assert (=> b!2753859 (= e!1736338 e!1736334)))

(declare-fun bm!178205 () Bool)

(assert (=> bm!178205 (= call!178204 (++!7893 lt!975464 (Cons!31877 call!178211 Nil!31877)))))

(declare-fun bm!178197 () Bool)

(assert (=> bm!178197 (= call!178206 (isPrefix!2533 (ite c!445690 lt!975732 lt!975741) (ite c!445690 lt!975720 lt!975723)))))

(declare-fun lt!975706 () Int)

(declare-fun d!797055 () Bool)

(assert (=> d!797055 (= (size!24647 (_1!18747 (findLongestMatchInnerZipper!5 call!178160 lt!975464 1 lt!975450 (list!12042 input!5495) lt!975429))) lt!975706)))

(assert (=> d!797055 (= lt!975706 e!1736335)))

(declare-fun c!445692 () Bool)

(assert (=> d!797055 (= c!445692 (lostCauseZipper!423 call!178160))))

(declare-fun lt!975709 () Unit!45671)

(declare-fun Unit!45683 () Unit!45671)

(assert (=> d!797055 (= lt!975709 Unit!45683)))

(assert (=> d!797055 (= (getSuffix!1219 (list!12042 input!5495) lt!975464) lt!975450)))

(declare-fun lt!975740 () Unit!45671)

(declare-fun lt!975733 () Unit!45671)

(assert (=> d!797055 (= lt!975740 lt!975733)))

(declare-fun lt!975726 () List!31977)

(assert (=> d!797055 (= lt!975450 lt!975726)))

(assert (=> d!797055 (= lt!975733 (lemmaSamePrefixThenSameSuffix!1121 lt!975464 lt!975450 lt!975464 lt!975726 (list!12042 input!5495)))))

(assert (=> d!797055 (= lt!975726 (getSuffix!1219 (list!12042 input!5495) lt!975464))))

(declare-fun lt!975736 () Unit!45671)

(declare-fun lt!975710 () Unit!45671)

(assert (=> d!797055 (= lt!975736 lt!975710)))

(assert (=> d!797055 (isPrefix!2533 lt!975464 (++!7893 lt!975464 lt!975450))))

(assert (=> d!797055 (= lt!975710 (lemmaConcatTwoListThenFirstIsPrefix!1647 lt!975464 lt!975450))))

(assert (=> d!797055 (= (++!7893 lt!975464 lt!975450) (list!12042 input!5495))))

(assert (=> d!797055 (= (findLongestMatchInnerZipperFast!15 call!178160 lt!975464 1 lt!975450 input!5495 lt!975429) lt!975706)))

(declare-fun b!2753860 () Bool)

(assert (=> b!2753860 (= e!1736334 1)))

(declare-fun b!2753861 () Bool)

(assert (=> b!2753861 (= e!1736335 0)))

(declare-fun b!2753862 () Bool)

(declare-fun Unit!45684 () Unit!45671)

(assert (=> b!2753862 (= e!1736337 Unit!45684)))

(declare-fun b!2753863 () Bool)

(assert (=> b!2753863 (= e!1736339 (list!12042 input!5495))))

(declare-fun b!2753864 () Bool)

(assert (=> b!2753864 (= e!1736334 0)))

(declare-fun bm!178206 () Bool)

(assert (=> bm!178206 (= call!178202 (nullableZipper!612 call!178160))))

(assert (= (and d!797055 c!445692) b!2753861))

(assert (= (and d!797055 (not c!445692)) b!2753855))

(assert (= (and b!2753855 c!445690) b!2753859))

(assert (= (and b!2753855 (not c!445690)) b!2753858))

(assert (= (and b!2753859 c!445693) b!2753860))

(assert (= (and b!2753859 (not c!445693)) b!2753864))

(assert (= (and b!2753858 c!445691) b!2753856))

(assert (= (and b!2753858 (not c!445691)) b!2753862))

(assert (= (and b!2753858 c!445688) b!2753854))

(assert (= (and b!2753858 (not c!445688)) b!2753857))

(assert (= (or b!2753854 b!2753857) bm!178202))

(assert (= (or b!2753854 b!2753857) bm!178204))

(assert (= (or b!2753854 b!2753857) bm!178205))

(assert (= (or b!2753854 b!2753857) bm!178200))

(assert (= (or b!2753854 b!2753857) bm!178199))

(assert (= (or b!2753859 b!2753856) bm!178197))

(assert (= (or b!2753859 b!2753858) bm!178206))

(assert (= (or b!2753859 b!2753856) bm!178203))

(assert (= (or b!2753859 b!2753858) bm!178201))

(assert (= (or b!2753859 b!2753856) bm!178198))

(assert (= (and bm!178198 c!445689) b!2753853))

(assert (= (and bm!178198 (not c!445689)) b!2753863))

(declare-fun m!3169411 () Bool)

(assert (=> bm!178199 m!3169411))

(assert (=> b!2753856 m!3169089))

(declare-fun m!3169413 () Bool)

(assert (=> bm!178200 m!3169413))

(declare-fun m!3169415 () Bool)

(assert (=> bm!178202 m!3169415))

(declare-fun m!3169417 () Bool)

(assert (=> bm!178201 m!3169417))

(declare-fun m!3169419 () Bool)

(assert (=> bm!178206 m!3169419))

(declare-fun m!3169421 () Bool)

(assert (=> bm!178198 m!3169421))

(declare-fun m!3169423 () Bool)

(assert (=> bm!178197 m!3169423))

(declare-fun m!3169425 () Bool)

(assert (=> b!2753858 m!3169425))

(declare-fun m!3169427 () Bool)

(assert (=> b!2753858 m!3169427))

(assert (=> b!2753858 m!3169093))

(declare-fun m!3169429 () Bool)

(assert (=> b!2753858 m!3169429))

(declare-fun m!3169431 () Bool)

(assert (=> b!2753858 m!3169431))

(declare-fun m!3169433 () Bool)

(assert (=> b!2753858 m!3169433))

(declare-fun m!3169435 () Bool)

(assert (=> b!2753858 m!3169435))

(declare-fun m!3169437 () Bool)

(assert (=> b!2753858 m!3169437))

(declare-fun m!3169439 () Bool)

(assert (=> b!2753858 m!3169439))

(assert (=> b!2753858 m!3169435))

(declare-fun m!3169441 () Bool)

(assert (=> b!2753858 m!3169441))

(assert (=> b!2753858 m!3169195))

(declare-fun m!3169443 () Bool)

(assert (=> b!2753858 m!3169443))

(assert (=> b!2753858 m!3169443))

(declare-fun m!3169445 () Bool)

(assert (=> b!2753858 m!3169445))

(assert (=> b!2753858 m!3169437))

(declare-fun m!3169447 () Bool)

(assert (=> b!2753858 m!3169447))

(declare-fun m!3169449 () Bool)

(assert (=> b!2753858 m!3169449))

(declare-fun m!3169451 () Bool)

(assert (=> b!2753858 m!3169451))

(assert (=> b!2753858 m!3169089))

(declare-fun m!3169453 () Bool)

(assert (=> b!2753858 m!3169453))

(assert (=> b!2753858 m!3169433))

(declare-fun m!3169455 () Bool)

(assert (=> b!2753858 m!3169455))

(declare-fun m!3169457 () Bool)

(assert (=> b!2753858 m!3169457))

(assert (=> b!2753858 m!3169415))

(declare-fun m!3169459 () Bool)

(assert (=> b!2753858 m!3169459))

(assert (=> d!797055 m!3169089))

(declare-fun m!3169461 () Bool)

(assert (=> d!797055 m!3169461))

(assert (=> d!797055 m!3169089))

(assert (=> d!797055 m!3169089))

(declare-fun m!3169463 () Bool)

(assert (=> d!797055 m!3169463))

(declare-fun m!3169465 () Bool)

(assert (=> d!797055 m!3169465))

(assert (=> d!797055 m!3169061))

(declare-fun m!3169467 () Bool)

(assert (=> d!797055 m!3169467))

(assert (=> d!797055 m!3169061))

(declare-fun m!3169469 () Bool)

(assert (=> d!797055 m!3169469))

(declare-fun m!3169471 () Bool)

(assert (=> d!797055 m!3169471))

(assert (=> d!797055 m!3169089))

(declare-fun m!3169473 () Bool)

(assert (=> d!797055 m!3169473))

(assert (=> bm!178204 m!3169427))

(declare-fun m!3169475 () Bool)

(assert (=> bm!178203 m!3169475))

(assert (=> b!2753863 m!3169089))

(declare-fun m!3169477 () Bool)

(assert (=> bm!178205 m!3169477))

(assert (=> bm!178151 d!797055))

(declare-fun b!2753865 () Bool)

(declare-fun e!1736345 () List!31977)

(declare-fun call!178218 () List!31977)

(assert (=> b!2753865 (= e!1736345 call!178218)))

(declare-fun b!2753866 () Bool)

(declare-fun e!1736342 () Int)

(declare-fun lt!975779 () Int)

(assert (=> b!2753866 (= e!1736342 (ite (= lt!975779 0) 1 lt!975779))))

(declare-fun call!178213 () Int)

(assert (=> b!2753866 (= lt!975779 call!178213)))

(declare-fun bm!178208 () Bool)

(declare-fun c!445695 () Bool)

(declare-fun c!445696 () Bool)

(assert (=> bm!178208 (= c!445695 c!445696)))

(declare-fun lt!975743 () List!31977)

(declare-fun call!178219 () Unit!45671)

(declare-fun lt!975767 () List!31977)

(assert (=> bm!178208 (= call!178219 (lemmaIsPrefixSameLengthThenSameList!440 (ite c!445696 lt!975743 lt!975767) lt!975459 e!1736345))))

(declare-fun call!178215 () (InoxSet Context!4550))

(declare-fun call!178217 () List!31977)

(declare-fun bm!178209 () Bool)

(declare-fun call!178214 () List!31977)

(assert (=> bm!178209 (= call!178213 (findLongestMatchInnerZipperFast!15 call!178215 call!178214 (+ 1 1) call!178217 input!5495 lt!975429))))

(declare-fun b!2753867 () Bool)

(declare-fun e!1736341 () Int)

(declare-fun e!1736344 () Int)

(assert (=> b!2753867 (= e!1736341 e!1736344)))

(assert (=> b!2753867 (= c!445696 (= 1 lt!975429))))

(declare-fun b!2753868 () Bool)

(declare-fun e!1736343 () Unit!45671)

(declare-fun Unit!45685 () Unit!45671)

(assert (=> b!2753868 (= e!1736343 Unit!45685)))

(declare-fun lt!975783 () List!31977)

(assert (=> b!2753868 (= lt!975783 (list!12042 input!5495))))

(declare-fun lt!975765 () List!31977)

(assert (=> b!2753868 (= lt!975765 (list!12042 input!5495))))

(declare-fun lt!975776 () Unit!45671)

(declare-fun call!178220 () Unit!45671)

(assert (=> b!2753868 (= lt!975776 call!178220)))

(declare-fun call!178216 () Bool)

(assert (=> b!2753868 call!178216))

(declare-fun lt!975763 () Unit!45671)

(assert (=> b!2753868 (= lt!975763 lt!975776)))

(assert (=> b!2753868 (= lt!975767 (list!12042 input!5495))))

(declare-fun lt!975766 () Unit!45671)

(assert (=> b!2753868 (= lt!975766 call!178219)))

(assert (=> b!2753868 (= lt!975767 lt!975459)))

(declare-fun lt!975773 () Unit!45671)

(assert (=> b!2753868 (= lt!975773 lt!975766)))

(assert (=> b!2753868 false))

(declare-fun b!2753869 () Bool)

(assert (=> b!2753869 (= e!1736342 call!178213)))

(declare-fun bm!178210 () Bool)

(declare-fun call!178221 () C!16272)

(assert (=> bm!178210 (= call!178215 (derivationStepZipper!349 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) call!178221))))

(declare-fun bm!178211 () Bool)

(declare-fun lt!975757 () tuple2!31894)

(assert (=> bm!178211 (= call!178218 (list!12042 (ite c!445696 input!5495 (_1!18745 lt!975757))))))

(declare-fun bm!178212 () Bool)

(assert (=> bm!178212 (= call!178217 (tail!4367 lt!975431))))

(declare-fun lt!975774 () List!31977)

(declare-fun lt!975762 () List!31977)

(declare-fun bm!178213 () Bool)

(assert (=> bm!178213 (= call!178220 (lemmaIsPrefixRefl!1659 (ite c!445696 lt!975774 lt!975783) (ite c!445696 lt!975762 lt!975765)))))

(declare-fun b!2753870 () Bool)

(declare-fun c!445694 () Bool)

(declare-fun call!178212 () Bool)

(assert (=> b!2753870 (= c!445694 call!178212)))

(declare-fun lt!975769 () Unit!45671)

(declare-fun lt!975746 () Unit!45671)

(assert (=> b!2753870 (= lt!975769 lt!975746)))

(declare-fun lt!975771 () List!31977)

(declare-fun lt!975777 () List!31977)

(declare-fun lt!975753 () C!16272)

(assert (=> b!2753870 (= (++!7893 (++!7893 lt!975459 (Cons!31877 lt!975753 Nil!31877)) lt!975771) lt!975777)))

(assert (=> b!2753870 (= lt!975746 (lemmaMoveElementToOtherListKeepsConcatEq!850 lt!975459 lt!975753 lt!975771 lt!975777))))

(assert (=> b!2753870 (= lt!975777 (list!12042 input!5495))))

(assert (=> b!2753870 (= lt!975771 (tail!4367 lt!975431))))

(assert (=> b!2753870 (= lt!975753 (apply!7455 input!5495 1))))

(declare-fun lt!975759 () Unit!45671)

(declare-fun lt!975755 () Unit!45671)

(assert (=> b!2753870 (= lt!975759 lt!975755)))

(declare-fun lt!975745 () List!31977)

(assert (=> b!2753870 (isPrefix!2533 (++!7893 lt!975459 (Cons!31877 (head!6129 (getSuffix!1219 lt!975745 lt!975459)) Nil!31877)) lt!975745)))

(assert (=> b!2753870 (= lt!975755 (lemmaAddHeadSuffixToPrefixStillPrefix!438 lt!975459 lt!975745))))

(assert (=> b!2753870 (= lt!975745 (list!12042 input!5495))))

(declare-fun lt!975772 () Unit!45671)

(assert (=> b!2753870 (= lt!975772 e!1736343)))

(declare-fun c!445697 () Bool)

(assert (=> b!2753870 (= c!445697 (= (size!24647 lt!975459) (size!24646 input!5495)))))

(declare-fun lt!975749 () Unit!45671)

(declare-fun lt!975756 () Unit!45671)

(assert (=> b!2753870 (= lt!975749 lt!975756)))

(declare-fun lt!975770 () List!31977)

(assert (=> b!2753870 (<= (size!24647 lt!975459) (size!24647 lt!975770))))

(assert (=> b!2753870 (= lt!975756 (lemmaIsPrefixThenSmallerEqSize!241 lt!975459 lt!975770))))

(assert (=> b!2753870 (= lt!975770 (list!12042 input!5495))))

(declare-fun lt!975761 () Unit!45671)

(declare-fun lt!975781 () Unit!45671)

(assert (=> b!2753870 (= lt!975761 lt!975781)))

(declare-fun lt!975780 () List!31977)

(assert (=> b!2753870 (= (head!6129 (drop!1688 lt!975780 1)) (apply!7456 lt!975780 1))))

(assert (=> b!2753870 (= lt!975781 (lemmaDropApply!894 lt!975780 1))))

(assert (=> b!2753870 (= lt!975780 (list!12042 input!5495))))

(declare-fun lt!975754 () Unit!45671)

(declare-fun lt!975764 () Unit!45671)

(assert (=> b!2753870 (= lt!975754 lt!975764)))

(declare-fun lt!975750 () List!31977)

(declare-fun lt!975760 () List!31977)

(assert (=> b!2753870 (and (= lt!975760 lt!975459) (= lt!975750 lt!975431))))

(assert (=> b!2753870 (= lt!975764 (lemmaConcatSameAndSameSizesThenSameLists!320 lt!975760 lt!975750 lt!975459 lt!975431))))

(assert (=> b!2753870 (= lt!975750 (list!12042 (_2!18745 lt!975757)))))

(assert (=> b!2753870 (= lt!975760 call!178218)))

(assert (=> b!2753870 (= lt!975757 (splitAt!87 input!5495 1))))

(assert (=> b!2753870 (= e!1736344 e!1736342)))

(declare-fun bm!178214 () Bool)

(assert (=> bm!178214 (= call!178221 (apply!7455 input!5495 1))))

(declare-fun b!2753871 () Bool)

(declare-fun c!445699 () Bool)

(assert (=> b!2753871 (= c!445699 call!178212)))

(declare-fun lt!975784 () Unit!45671)

(declare-fun lt!975744 () Unit!45671)

(assert (=> b!2753871 (= lt!975784 lt!975744)))

(assert (=> b!2753871 (= lt!975743 lt!975459)))

(assert (=> b!2753871 (= lt!975744 call!178219)))

(assert (=> b!2753871 (= lt!975743 call!178218)))

(declare-fun lt!975758 () Unit!45671)

(declare-fun lt!975747 () Unit!45671)

(assert (=> b!2753871 (= lt!975758 lt!975747)))

(assert (=> b!2753871 call!178216))

(assert (=> b!2753871 (= lt!975747 call!178220)))

(assert (=> b!2753871 (= lt!975762 call!178218)))

(assert (=> b!2753871 (= lt!975774 call!178218)))

(declare-fun e!1736340 () Int)

(assert (=> b!2753871 (= e!1736344 e!1736340)))

(declare-fun bm!178215 () Bool)

(assert (=> bm!178215 (= call!178214 (++!7893 lt!975459 (Cons!31877 call!178221 Nil!31877)))))

(declare-fun bm!178207 () Bool)

(assert (=> bm!178207 (= call!178216 (isPrefix!2533 (ite c!445696 lt!975774 lt!975783) (ite c!445696 lt!975762 lt!975765)))))

(declare-fun lt!975748 () Int)

(declare-fun d!797057 () Bool)

(assert (=> d!797057 (= (size!24647 (_1!18747 (findLongestMatchInnerZipper!5 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 (list!12042 input!5495) lt!975429))) lt!975748)))

(assert (=> d!797057 (= lt!975748 e!1736341)))

(declare-fun c!445698 () Bool)

(assert (=> d!797057 (= c!445698 (lostCauseZipper!423 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473))))))

(declare-fun lt!975751 () Unit!45671)

(declare-fun Unit!45686 () Unit!45671)

(assert (=> d!797057 (= lt!975751 Unit!45686)))

(assert (=> d!797057 (= (getSuffix!1219 (list!12042 input!5495) lt!975459) lt!975431)))

(declare-fun lt!975782 () Unit!45671)

(declare-fun lt!975775 () Unit!45671)

(assert (=> d!797057 (= lt!975782 lt!975775)))

(declare-fun lt!975768 () List!31977)

(assert (=> d!797057 (= lt!975431 lt!975768)))

(assert (=> d!797057 (= lt!975775 (lemmaSamePrefixThenSameSuffix!1121 lt!975459 lt!975431 lt!975459 lt!975768 (list!12042 input!5495)))))

(assert (=> d!797057 (= lt!975768 (getSuffix!1219 (list!12042 input!5495) lt!975459))))

(declare-fun lt!975778 () Unit!45671)

(declare-fun lt!975752 () Unit!45671)

(assert (=> d!797057 (= lt!975778 lt!975752)))

(assert (=> d!797057 (isPrefix!2533 lt!975459 (++!7893 lt!975459 lt!975431))))

(assert (=> d!797057 (= lt!975752 (lemmaConcatTwoListThenFirstIsPrefix!1647 lt!975459 lt!975431))))

(assert (=> d!797057 (= (++!7893 lt!975459 lt!975431) (list!12042 input!5495))))

(assert (=> d!797057 (= (findLongestMatchInnerZipperFast!15 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473)) lt!975459 1 lt!975431 input!5495 lt!975429) lt!975748)))

(declare-fun b!2753872 () Bool)

(assert (=> b!2753872 (= e!1736340 1)))

(declare-fun b!2753873 () Bool)

(assert (=> b!2753873 (= e!1736341 0)))

(declare-fun b!2753874 () Bool)

(declare-fun Unit!45687 () Unit!45671)

(assert (=> b!2753874 (= e!1736343 Unit!45687)))

(declare-fun b!2753875 () Bool)

(assert (=> b!2753875 (= e!1736345 (list!12042 input!5495))))

(declare-fun b!2753876 () Bool)

(assert (=> b!2753876 (= e!1736340 0)))

(declare-fun bm!178216 () Bool)

(assert (=> bm!178216 (= call!178212 (nullableZipper!612 (ite c!445614 (_1!18744 lt!975435) (_1!18744 lt!975473))))))

(assert (= (and d!797057 c!445698) b!2753873))

(assert (= (and d!797057 (not c!445698)) b!2753867))

(assert (= (and b!2753867 c!445696) b!2753871))

(assert (= (and b!2753867 (not c!445696)) b!2753870))

(assert (= (and b!2753871 c!445699) b!2753872))

(assert (= (and b!2753871 (not c!445699)) b!2753876))

(assert (= (and b!2753870 c!445697) b!2753868))

(assert (= (and b!2753870 (not c!445697)) b!2753874))

(assert (= (and b!2753870 c!445694) b!2753866))

(assert (= (and b!2753870 (not c!445694)) b!2753869))

(assert (= (or b!2753866 b!2753869) bm!178212))

(assert (= (or b!2753866 b!2753869) bm!178214))

(assert (= (or b!2753866 b!2753869) bm!178215))

(assert (= (or b!2753866 b!2753869) bm!178210))

(assert (= (or b!2753866 b!2753869) bm!178209))

(assert (= (or b!2753871 b!2753868) bm!178207))

(assert (= (or b!2753871 b!2753870) bm!178216))

(assert (= (or b!2753871 b!2753868) bm!178213))

(assert (= (or b!2753871 b!2753870) bm!178211))

(assert (= (or b!2753871 b!2753868) bm!178208))

(assert (= (and bm!178208 c!445695) b!2753865))

(assert (= (and bm!178208 (not c!445695)) b!2753875))

(declare-fun m!3169479 () Bool)

(assert (=> bm!178209 m!3169479))

(assert (=> b!2753868 m!3169089))

(declare-fun m!3169481 () Bool)

(assert (=> bm!178210 m!3169481))

(declare-fun m!3169483 () Bool)

(assert (=> bm!178212 m!3169483))

(declare-fun m!3169485 () Bool)

(assert (=> bm!178211 m!3169485))

(declare-fun m!3169487 () Bool)

(assert (=> bm!178216 m!3169487))

(declare-fun m!3169489 () Bool)

(assert (=> bm!178208 m!3169489))

(declare-fun m!3169491 () Bool)

(assert (=> bm!178207 m!3169491))

(declare-fun m!3169493 () Bool)

(assert (=> b!2753870 m!3169493))

(assert (=> b!2753870 m!3169427))

(assert (=> b!2753870 m!3169093))

(declare-fun m!3169495 () Bool)

(assert (=> b!2753870 m!3169495))

(declare-fun m!3169497 () Bool)

(assert (=> b!2753870 m!3169497))

(declare-fun m!3169499 () Bool)

(assert (=> b!2753870 m!3169499))

(declare-fun m!3169501 () Bool)

(assert (=> b!2753870 m!3169501))

(declare-fun m!3169503 () Bool)

(assert (=> b!2753870 m!3169503))

(declare-fun m!3169505 () Bool)

(assert (=> b!2753870 m!3169505))

(assert (=> b!2753870 m!3169501))

(declare-fun m!3169507 () Bool)

(assert (=> b!2753870 m!3169507))

(assert (=> b!2753870 m!3169275))

(declare-fun m!3169509 () Bool)

(assert (=> b!2753870 m!3169509))

(assert (=> b!2753870 m!3169509))

(declare-fun m!3169511 () Bool)

(assert (=> b!2753870 m!3169511))

(assert (=> b!2753870 m!3169503))

(declare-fun m!3169513 () Bool)

(assert (=> b!2753870 m!3169513))

(declare-fun m!3169515 () Bool)

(assert (=> b!2753870 m!3169515))

(declare-fun m!3169517 () Bool)

(assert (=> b!2753870 m!3169517))

(assert (=> b!2753870 m!3169089))

(declare-fun m!3169519 () Bool)

(assert (=> b!2753870 m!3169519))

(assert (=> b!2753870 m!3169499))

(declare-fun m!3169521 () Bool)

(assert (=> b!2753870 m!3169521))

(assert (=> b!2753870 m!3169457))

(assert (=> b!2753870 m!3169483))

(declare-fun m!3169523 () Bool)

(assert (=> b!2753870 m!3169523))

(assert (=> d!797057 m!3169089))

(declare-fun m!3169525 () Bool)

(assert (=> d!797057 m!3169525))

(assert (=> d!797057 m!3169089))

(assert (=> d!797057 m!3169089))

(declare-fun m!3169527 () Bool)

(assert (=> d!797057 m!3169527))

(declare-fun m!3169529 () Bool)

(assert (=> d!797057 m!3169529))

(assert (=> d!797057 m!3169021))

(declare-fun m!3169531 () Bool)

(assert (=> d!797057 m!3169531))

(assert (=> d!797057 m!3169021))

(declare-fun m!3169533 () Bool)

(assert (=> d!797057 m!3169533))

(declare-fun m!3169535 () Bool)

(assert (=> d!797057 m!3169535))

(assert (=> d!797057 m!3169089))

(declare-fun m!3169537 () Bool)

(assert (=> d!797057 m!3169537))

(assert (=> bm!178214 m!3169427))

(declare-fun m!3169539 () Bool)

(assert (=> bm!178213 m!3169539))

(assert (=> b!2753875 m!3169089))

(declare-fun m!3169541 () Bool)

(assert (=> bm!178215 m!3169541))

(assert (=> bm!178157 d!797057))

(assert (=> bm!178147 d!797001))

(declare-fun d!797059 () Bool)

(declare-fun e!1736348 () Bool)

(assert (=> d!797059 e!1736348))

(declare-fun res!1154267 () Bool)

(assert (=> d!797059 (=> (not res!1154267) (not e!1736348))))

(declare-fun lt!975787 () tuple3!4654)

(assert (=> d!797059 (= res!1154267 (= (_1!18744 lt!975787) (derivationStepZipper!349 z!3597 lt!975448)))))

(declare-fun choose!16137 ((InoxSet Context!4550) C!16272 CacheUp!2334 CacheDown!2454) tuple3!4654)

(assert (=> d!797059 (= lt!975787 (choose!16137 z!3597 lt!975448 (_2!18743 lt!975449) (_3!2796 lt!975449)))))

(assert (=> d!797059 (= (derivationStepZipperMem!80 z!3597 lt!975448 (_2!18743 lt!975449) (_3!2796 lt!975449)) lt!975787)))

(declare-fun b!2753881 () Bool)

(declare-fun res!1154268 () Bool)

(assert (=> b!2753881 (=> (not res!1154268) (not e!1736348))))

(assert (=> b!2753881 (= res!1154268 (valid!2890 (_2!18744 lt!975787)))))

(declare-fun b!2753882 () Bool)

(assert (=> b!2753882 (= e!1736348 (valid!2891 (_3!2797 lt!975787)))))

(assert (= (and d!797059 res!1154267) b!2753881))

(assert (= (and b!2753881 res!1154268) b!2753882))

(declare-fun m!3169543 () Bool)

(assert (=> d!797059 m!3169543))

(declare-fun m!3169545 () Bool)

(assert (=> d!797059 m!3169545))

(declare-fun m!3169547 () Bool)

(assert (=> b!2753881 m!3169547))

(declare-fun m!3169549 () Bool)

(assert (=> b!2753882 m!3169549))

(assert (=> bm!178150 d!797059))

(assert (=> b!2753659 d!797029))

(declare-fun b!2753887 () Bool)

(declare-fun e!1736351 () Bool)

(declare-fun tp!870155 () Bool)

(declare-fun tp!870156 () Bool)

(assert (=> b!2753887 (= e!1736351 (and tp!870155 tp!870156))))

(assert (=> b!2753666 (= tp!870140 e!1736351)))

(assert (= (and b!2753666 ((_ is Cons!31878) (exprs!2775 setElem!22074))) b!2753887))

(declare-fun condSetEmpty!22077 () Bool)

(assert (=> setNonEmpty!22074 (= condSetEmpty!22077 (= setRest!22074 ((as const (Array Context!4550 Bool)) false)))))

(declare-fun setRes!22077 () Bool)

(assert (=> setNonEmpty!22074 (= tp!870134 setRes!22077)))

(declare-fun setIsEmpty!22077 () Bool)

(assert (=> setIsEmpty!22077 setRes!22077))

(declare-fun tp!870162 () Bool)

(declare-fun setNonEmpty!22077 () Bool)

(declare-fun setElem!22077 () Context!4550)

(declare-fun e!1736354 () Bool)

(assert (=> setNonEmpty!22077 (= setRes!22077 (and tp!870162 (inv!43291 setElem!22077) e!1736354))))

(declare-fun setRest!22077 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22077 (= setRest!22074 ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22077 true) setRest!22077))))

(declare-fun b!2753892 () Bool)

(declare-fun tp!870161 () Bool)

(assert (=> b!2753892 (= e!1736354 tp!870161)))

(assert (= (and setNonEmpty!22074 condSetEmpty!22077) setIsEmpty!22077))

(assert (= (and setNonEmpty!22074 (not condSetEmpty!22077)) setNonEmpty!22077))

(assert (= setNonEmpty!22077 b!2753892))

(declare-fun m!3169551 () Bool)

(assert (=> setNonEmpty!22077 m!3169551))

(declare-fun setIsEmpty!22080 () Bool)

(declare-fun setRes!22080 () Bool)

(assert (=> setIsEmpty!22080 setRes!22080))

(declare-fun tp!870177 () Bool)

(declare-fun e!1736363 () Bool)

(declare-fun setNonEmpty!22080 () Bool)

(declare-fun setElem!22080 () Context!4550)

(assert (=> setNonEmpty!22080 (= setRes!22080 (and tp!870177 (inv!43291 setElem!22080) e!1736363))))

(declare-fun setRest!22080 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22080 (= (_2!18741 (h!37300 mapDefault!16922)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22080 true) setRest!22080))))

(declare-fun b!2753901 () Bool)

(declare-fun e!1736361 () Bool)

(declare-fun tp!870173 () Bool)

(assert (=> b!2753901 (= e!1736361 tp!870173)))

(declare-fun b!2753902 () Bool)

(declare-fun tp!870175 () Bool)

(assert (=> b!2753902 (= e!1736363 tp!870175)))

(declare-fun b!2753903 () Bool)

(declare-fun tp!870176 () Bool)

(declare-fun tp!870174 () Bool)

(declare-fun e!1736362 () Bool)

(declare-fun tp_is_empty!13991 () Bool)

(assert (=> b!2753903 (= e!1736362 (and tp!870176 (inv!43291 (_2!18740 (_1!18741 (h!37300 mapDefault!16922)))) e!1736361 tp_is_empty!13991 setRes!22080 tp!870174))))

(declare-fun condSetEmpty!22080 () Bool)

(assert (=> b!2753903 (= condSetEmpty!22080 (= (_2!18741 (h!37300 mapDefault!16922)) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753646 (= tp!870149 e!1736362)))

(assert (= b!2753903 b!2753901))

(assert (= (and b!2753903 condSetEmpty!22080) setIsEmpty!22080))

(assert (= (and b!2753903 (not condSetEmpty!22080)) setNonEmpty!22080))

(assert (= setNonEmpty!22080 b!2753902))

(assert (= (and b!2753646 ((_ is Cons!31880) mapDefault!16922)) b!2753903))

(declare-fun m!3169553 () Bool)

(assert (=> setNonEmpty!22080 m!3169553))

(declare-fun m!3169555 () Bool)

(assert (=> b!2753903 m!3169555))

(declare-fun tp!870203 () Bool)

(declare-fun mapValue!16925 () List!31979)

(declare-fun setRes!22086 () Bool)

(declare-fun b!2753918 () Bool)

(declare-fun e!1736381 () Bool)

(declare-fun e!1736379 () Bool)

(assert (=> b!2753918 (= e!1736379 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 mapValue!16925)))) e!1736381 tp_is_empty!13991 setRes!22086 tp!870203))))

(declare-fun condSetEmpty!22086 () Bool)

(assert (=> b!2753918 (= condSetEmpty!22086 (= (_2!18739 (h!37299 mapValue!16925)) ((as const (Array Context!4550 Bool)) false)))))

(declare-fun setElem!22086 () Context!4550)

(declare-fun setRes!22085 () Bool)

(declare-fun setNonEmpty!22085 () Bool)

(declare-fun tp!870198 () Bool)

(declare-fun e!1736378 () Bool)

(assert (=> setNonEmpty!22085 (= setRes!22085 (and tp!870198 (inv!43291 setElem!22086) e!1736378))))

(declare-fun mapDefault!16925 () List!31979)

(declare-fun setRest!22085 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22085 (= (_2!18739 (h!37299 mapDefault!16925)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22086 true) setRest!22085))))

(declare-fun setIsEmpty!22085 () Bool)

(assert (=> setIsEmpty!22085 setRes!22086))

(declare-fun b!2753919 () Bool)

(declare-fun tp!870204 () Bool)

(assert (=> b!2753919 (= e!1736381 tp!870204)))

(declare-fun b!2753920 () Bool)

(declare-fun e!1736377 () Bool)

(declare-fun tp!870201 () Bool)

(assert (=> b!2753920 (= e!1736377 tp!870201)))

(declare-fun mapIsEmpty!16925 () Bool)

(declare-fun mapRes!16925 () Bool)

(assert (=> mapIsEmpty!16925 mapRes!16925))

(declare-fun b!2753921 () Bool)

(declare-fun tp!870200 () Bool)

(assert (=> b!2753921 (= e!1736378 tp!870200)))

(declare-fun mapNonEmpty!16925 () Bool)

(declare-fun tp!870202 () Bool)

(assert (=> mapNonEmpty!16925 (= mapRes!16925 (and tp!870202 e!1736379))))

(declare-fun mapKey!16925 () (_ BitVec 32))

(declare-fun mapRest!16925 () (Array (_ BitVec 32) List!31979))

(assert (=> mapNonEmpty!16925 (= mapRest!16922 (store mapRest!16925 mapKey!16925 mapValue!16925))))

(declare-fun b!2753923 () Bool)

(declare-fun e!1736376 () Bool)

(declare-fun tp!870196 () Bool)

(assert (=> b!2753923 (= e!1736376 tp!870196)))

(declare-fun setElem!22085 () Context!4550)

(declare-fun setNonEmpty!22086 () Bool)

(declare-fun tp!870199 () Bool)

(assert (=> setNonEmpty!22086 (= setRes!22086 (and tp!870199 (inv!43291 setElem!22085) e!1736376))))

(declare-fun setRest!22086 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22086 (= (_2!18739 (h!37299 mapValue!16925)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22085 true) setRest!22086))))

(declare-fun setIsEmpty!22086 () Bool)

(assert (=> setIsEmpty!22086 setRes!22085))

(declare-fun condMapEmpty!16925 () Bool)

(assert (=> mapNonEmpty!16922 (= condMapEmpty!16925 (= mapRest!16922 ((as const (Array (_ BitVec 32) List!31979)) mapDefault!16925)))))

(declare-fun e!1736380 () Bool)

(assert (=> mapNonEmpty!16922 (= tp!870135 (and e!1736380 mapRes!16925))))

(declare-fun b!2753922 () Bool)

(declare-fun tp!870197 () Bool)

(assert (=> b!2753922 (= e!1736380 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 mapDefault!16925)))) e!1736377 tp_is_empty!13991 setRes!22085 tp!870197))))

(declare-fun condSetEmpty!22085 () Bool)

(assert (=> b!2753922 (= condSetEmpty!22085 (= (_2!18739 (h!37299 mapDefault!16925)) ((as const (Array Context!4550 Bool)) false)))))

(assert (= (and mapNonEmpty!16922 condMapEmpty!16925) mapIsEmpty!16925))

(assert (= (and mapNonEmpty!16922 (not condMapEmpty!16925)) mapNonEmpty!16925))

(assert (= b!2753918 b!2753919))

(assert (= (and b!2753918 condSetEmpty!22086) setIsEmpty!22085))

(assert (= (and b!2753918 (not condSetEmpty!22086)) setNonEmpty!22086))

(assert (= setNonEmpty!22086 b!2753923))

(assert (= (and mapNonEmpty!16925 ((_ is Cons!31879) mapValue!16925)) b!2753918))

(assert (= b!2753922 b!2753920))

(assert (= (and b!2753922 condSetEmpty!22085) setIsEmpty!22086))

(assert (= (and b!2753922 (not condSetEmpty!22085)) setNonEmpty!22085))

(assert (= setNonEmpty!22085 b!2753921))

(assert (= (and mapNonEmpty!16922 ((_ is Cons!31879) mapDefault!16925)) b!2753922))

(declare-fun m!3169557 () Bool)

(assert (=> setNonEmpty!22086 m!3169557))

(declare-fun m!3169559 () Bool)

(assert (=> setNonEmpty!22085 m!3169559))

(declare-fun m!3169561 () Bool)

(assert (=> b!2753918 m!3169561))

(declare-fun m!3169563 () Bool)

(assert (=> mapNonEmpty!16925 m!3169563))

(declare-fun m!3169565 () Bool)

(assert (=> b!2753922 m!3169565))

(declare-fun setRes!22089 () Bool)

(declare-fun e!1736388 () Bool)

(declare-fun e!1736390 () Bool)

(declare-fun tp!870215 () Bool)

(declare-fun b!2753932 () Bool)

(assert (=> b!2753932 (= e!1736388 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 mapValue!16922)))) e!1736390 tp_is_empty!13991 setRes!22089 tp!870215))))

(declare-fun condSetEmpty!22089 () Bool)

(assert (=> b!2753932 (= condSetEmpty!22089 (= (_2!18739 (h!37299 mapValue!16922)) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> mapNonEmpty!16922 (= tp!870136 e!1736388)))

(declare-fun setIsEmpty!22089 () Bool)

(assert (=> setIsEmpty!22089 setRes!22089))

(declare-fun b!2753933 () Bool)

(declare-fun tp!870213 () Bool)

(assert (=> b!2753933 (= e!1736390 tp!870213)))

(declare-fun tp!870214 () Bool)

(declare-fun setElem!22089 () Context!4550)

(declare-fun setNonEmpty!22089 () Bool)

(declare-fun e!1736389 () Bool)

(assert (=> setNonEmpty!22089 (= setRes!22089 (and tp!870214 (inv!43291 setElem!22089) e!1736389))))

(declare-fun setRest!22089 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22089 (= (_2!18739 (h!37299 mapValue!16922)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22089 true) setRest!22089))))

(declare-fun b!2753934 () Bool)

(declare-fun tp!870216 () Bool)

(assert (=> b!2753934 (= e!1736389 tp!870216)))

(assert (= b!2753932 b!2753933))

(assert (= (and b!2753932 condSetEmpty!22089) setIsEmpty!22089))

(assert (= (and b!2753932 (not condSetEmpty!22089)) setNonEmpty!22089))

(assert (= setNonEmpty!22089 b!2753934))

(assert (= (and mapNonEmpty!16922 ((_ is Cons!31879) mapValue!16922)) b!2753932))

(declare-fun m!3169567 () Bool)

(assert (=> b!2753932 m!3169567))

(declare-fun m!3169569 () Bool)

(assert (=> setNonEmpty!22089 m!3169569))

(declare-fun tp!870219 () Bool)

(declare-fun setRes!22090 () Bool)

(declare-fun b!2753935 () Bool)

(declare-fun e!1736393 () Bool)

(declare-fun e!1736391 () Bool)

(assert (=> b!2753935 (= e!1736391 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 mapDefault!16921)))) e!1736393 tp_is_empty!13991 setRes!22090 tp!870219))))

(declare-fun condSetEmpty!22090 () Bool)

(assert (=> b!2753935 (= condSetEmpty!22090 (= (_2!18739 (h!37299 mapDefault!16921)) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753636 (= tp!870150 e!1736391)))

(declare-fun setIsEmpty!22090 () Bool)

(assert (=> setIsEmpty!22090 setRes!22090))

(declare-fun b!2753936 () Bool)

(declare-fun tp!870217 () Bool)

(assert (=> b!2753936 (= e!1736393 tp!870217)))

(declare-fun e!1736392 () Bool)

(declare-fun setNonEmpty!22090 () Bool)

(declare-fun setElem!22090 () Context!4550)

(declare-fun tp!870218 () Bool)

(assert (=> setNonEmpty!22090 (= setRes!22090 (and tp!870218 (inv!43291 setElem!22090) e!1736392))))

(declare-fun setRest!22090 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22090 (= (_2!18739 (h!37299 mapDefault!16921)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22090 true) setRest!22090))))

(declare-fun b!2753937 () Bool)

(declare-fun tp!870220 () Bool)

(assert (=> b!2753937 (= e!1736392 tp!870220)))

(assert (= b!2753935 b!2753936))

(assert (= (and b!2753935 condSetEmpty!22090) setIsEmpty!22090))

(assert (= (and b!2753935 (not condSetEmpty!22090)) setNonEmpty!22090))

(assert (= setNonEmpty!22090 b!2753937))

(assert (= (and b!2753636 ((_ is Cons!31879) mapDefault!16921)) b!2753935))

(declare-fun m!3169571 () Bool)

(assert (=> b!2753935 m!3169571))

(declare-fun m!3169573 () Bool)

(assert (=> setNonEmpty!22090 m!3169573))

(declare-fun e!1736396 () Bool)

(declare-fun b!2753938 () Bool)

(declare-fun tp!870223 () Bool)

(declare-fun e!1736394 () Bool)

(declare-fun setRes!22091 () Bool)

(assert (=> b!2753938 (= e!1736394 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 (zeroValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))))) e!1736396 tp_is_empty!13991 setRes!22091 tp!870223))))

(declare-fun condSetEmpty!22091 () Bool)

(assert (=> b!2753938 (= condSetEmpty!22091 (= (_2!18739 (h!37299 (zeroValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753656 (= tp!870148 e!1736394)))

(declare-fun setIsEmpty!22091 () Bool)

(assert (=> setIsEmpty!22091 setRes!22091))

(declare-fun b!2753939 () Bool)

(declare-fun tp!870221 () Bool)

(assert (=> b!2753939 (= e!1736396 tp!870221)))

(declare-fun setElem!22091 () Context!4550)

(declare-fun tp!870222 () Bool)

(declare-fun e!1736395 () Bool)

(declare-fun setNonEmpty!22091 () Bool)

(assert (=> setNonEmpty!22091 (= setRes!22091 (and tp!870222 (inv!43291 setElem!22091) e!1736395))))

(declare-fun setRest!22091 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22091 (= (_2!18739 (h!37299 (zeroValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22091 true) setRest!22091))))

(declare-fun b!2753940 () Bool)

(declare-fun tp!870224 () Bool)

(assert (=> b!2753940 (= e!1736395 tp!870224)))

(assert (= b!2753938 b!2753939))

(assert (= (and b!2753938 condSetEmpty!22091) setIsEmpty!22091))

(assert (= (and b!2753938 (not condSetEmpty!22091)) setNonEmpty!22091))

(assert (= setNonEmpty!22091 b!2753940))

(assert (= (and b!2753656 ((_ is Cons!31879) (zeroValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) b!2753938))

(declare-fun m!3169575 () Bool)

(assert (=> b!2753938 m!3169575))

(declare-fun m!3169577 () Bool)

(assert (=> setNonEmpty!22091 m!3169577))

(declare-fun b!2753941 () Bool)

(declare-fun e!1736399 () Bool)

(declare-fun e!1736397 () Bool)

(declare-fun tp!870227 () Bool)

(declare-fun setRes!22092 () Bool)

(assert (=> b!2753941 (= e!1736397 (and (inv!43291 (_1!18738 (_1!18739 (h!37299 (minValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))))) e!1736399 tp_is_empty!13991 setRes!22092 tp!870227))))

(declare-fun condSetEmpty!22092 () Bool)

(assert (=> b!2753941 (= condSetEmpty!22092 (= (_2!18739 (h!37299 (minValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753656 (= tp!870139 e!1736397)))

(declare-fun setIsEmpty!22092 () Bool)

(assert (=> setIsEmpty!22092 setRes!22092))

(declare-fun b!2753942 () Bool)

(declare-fun tp!870225 () Bool)

(assert (=> b!2753942 (= e!1736399 tp!870225)))

(declare-fun e!1736398 () Bool)

(declare-fun setElem!22092 () Context!4550)

(declare-fun setNonEmpty!22092 () Bool)

(declare-fun tp!870226 () Bool)

(assert (=> setNonEmpty!22092 (= setRes!22092 (and tp!870226 (inv!43291 setElem!22092) e!1736398))))

(declare-fun setRest!22092 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22092 (= (_2!18739 (h!37299 (minValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22092 true) setRest!22092))))

(declare-fun b!2753943 () Bool)

(declare-fun tp!870228 () Bool)

(assert (=> b!2753943 (= e!1736398 tp!870228)))

(assert (= b!2753941 b!2753942))

(assert (= (and b!2753941 condSetEmpty!22092) setIsEmpty!22092))

(assert (= (and b!2753941 (not condSetEmpty!22092)) setNonEmpty!22092))

(assert (= setNonEmpty!22092 b!2753943))

(assert (= (and b!2753656 ((_ is Cons!31879) (minValue!3981 (v!33487 (underlying!7647 (v!33488 (underlying!7648 (cache!3771 cacheUp!820)))))))) b!2753941))

(declare-fun m!3169579 () Bool)

(assert (=> b!2753941 m!3169579))

(declare-fun m!3169581 () Bool)

(assert (=> setNonEmpty!22092 m!3169581))

(declare-fun setNonEmpty!22097 () Bool)

(declare-fun tp!870255 () Bool)

(declare-fun setRes!22097 () Bool)

(declare-fun e!1736413 () Bool)

(declare-fun setElem!22097 () Context!4550)

(assert (=> setNonEmpty!22097 (= setRes!22097 (and tp!870255 (inv!43291 setElem!22097) e!1736413))))

(declare-fun mapDefault!16928 () List!31980)

(declare-fun setRest!22098 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22097 (= (_2!18741 (h!37300 mapDefault!16928)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22097 true) setRest!22098))))

(declare-fun tp!870258 () Bool)

(declare-fun b!2753958 () Bool)

(declare-fun e!1736414 () Bool)

(declare-fun e!1736416 () Bool)

(declare-fun tp!870253 () Bool)

(assert (=> b!2753958 (= e!1736416 (and tp!870258 (inv!43291 (_2!18740 (_1!18741 (h!37300 mapDefault!16928)))) e!1736414 tp_is_empty!13991 setRes!22097 tp!870253))))

(declare-fun condSetEmpty!22097 () Bool)

(assert (=> b!2753958 (= condSetEmpty!22097 (= (_2!18741 (h!37300 mapDefault!16928)) ((as const (Array Context!4550 Bool)) false)))))

(declare-fun b!2753959 () Bool)

(declare-fun e!1736415 () Bool)

(declare-fun tp!870259 () Bool)

(assert (=> b!2753959 (= e!1736415 tp!870259)))

(declare-fun setIsEmpty!22097 () Bool)

(declare-fun setRes!22098 () Bool)

(assert (=> setIsEmpty!22097 setRes!22098))

(declare-fun b!2753960 () Bool)

(declare-fun e!1736417 () Bool)

(declare-fun tp!870260 () Bool)

(assert (=> b!2753960 (= e!1736417 tp!870260)))

(declare-fun condMapEmpty!16928 () Bool)

(assert (=> mapNonEmpty!16921 (= condMapEmpty!16928 (= mapRest!16921 ((as const (Array (_ BitVec 32) List!31980)) mapDefault!16928)))))

(declare-fun mapRes!16928 () Bool)

(assert (=> mapNonEmpty!16921 (= tp!870144 (and e!1736416 mapRes!16928))))

(declare-fun setIsEmpty!22098 () Bool)

(assert (=> setIsEmpty!22098 setRes!22097))

(declare-fun mapNonEmpty!16928 () Bool)

(declare-fun tp!870251 () Bool)

(declare-fun e!1736412 () Bool)

(assert (=> mapNonEmpty!16928 (= mapRes!16928 (and tp!870251 e!1736412))))

(declare-fun mapKey!16928 () (_ BitVec 32))

(declare-fun mapRest!16928 () (Array (_ BitVec 32) List!31980))

(declare-fun mapValue!16928 () List!31980)

(assert (=> mapNonEmpty!16928 (= mapRest!16921 (store mapRest!16928 mapKey!16928 mapValue!16928))))

(declare-fun b!2753961 () Bool)

(declare-fun tp!870261 () Bool)

(assert (=> b!2753961 (= e!1736413 tp!870261)))

(declare-fun tp!870252 () Bool)

(declare-fun tp!870254 () Bool)

(declare-fun b!2753962 () Bool)

(assert (=> b!2753962 (= e!1736412 (and tp!870252 (inv!43291 (_2!18740 (_1!18741 (h!37300 mapValue!16928)))) e!1736415 tp_is_empty!13991 setRes!22098 tp!870254))))

(declare-fun condSetEmpty!22098 () Bool)

(assert (=> b!2753962 (= condSetEmpty!22098 (= (_2!18741 (h!37300 mapValue!16928)) ((as const (Array Context!4550 Bool)) false)))))

(declare-fun setElem!22098 () Context!4550)

(declare-fun tp!870256 () Bool)

(declare-fun setNonEmpty!22098 () Bool)

(assert (=> setNonEmpty!22098 (= setRes!22098 (and tp!870256 (inv!43291 setElem!22098) e!1736417))))

(declare-fun setRest!22097 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22098 (= (_2!18741 (h!37300 mapValue!16928)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22098 true) setRest!22097))))

(declare-fun mapIsEmpty!16928 () Bool)

(assert (=> mapIsEmpty!16928 mapRes!16928))

(declare-fun b!2753963 () Bool)

(declare-fun tp!870257 () Bool)

(assert (=> b!2753963 (= e!1736414 tp!870257)))

(assert (= (and mapNonEmpty!16921 condMapEmpty!16928) mapIsEmpty!16928))

(assert (= (and mapNonEmpty!16921 (not condMapEmpty!16928)) mapNonEmpty!16928))

(assert (= b!2753962 b!2753959))

(assert (= (and b!2753962 condSetEmpty!22098) setIsEmpty!22097))

(assert (= (and b!2753962 (not condSetEmpty!22098)) setNonEmpty!22098))

(assert (= setNonEmpty!22098 b!2753960))

(assert (= (and mapNonEmpty!16928 ((_ is Cons!31880) mapValue!16928)) b!2753962))

(assert (= b!2753958 b!2753963))

(assert (= (and b!2753958 condSetEmpty!22097) setIsEmpty!22098))

(assert (= (and b!2753958 (not condSetEmpty!22097)) setNonEmpty!22097))

(assert (= setNonEmpty!22097 b!2753961))

(assert (= (and mapNonEmpty!16921 ((_ is Cons!31880) mapDefault!16928)) b!2753958))

(declare-fun m!3169583 () Bool)

(assert (=> b!2753958 m!3169583))

(declare-fun m!3169585 () Bool)

(assert (=> b!2753962 m!3169585))

(declare-fun m!3169587 () Bool)

(assert (=> setNonEmpty!22097 m!3169587))

(declare-fun m!3169589 () Bool)

(assert (=> mapNonEmpty!16928 m!3169589))

(declare-fun m!3169591 () Bool)

(assert (=> setNonEmpty!22098 m!3169591))

(declare-fun setIsEmpty!22099 () Bool)

(declare-fun setRes!22099 () Bool)

(assert (=> setIsEmpty!22099 setRes!22099))

(declare-fun e!1736420 () Bool)

(declare-fun tp!870266 () Bool)

(declare-fun setNonEmpty!22099 () Bool)

(declare-fun setElem!22099 () Context!4550)

(assert (=> setNonEmpty!22099 (= setRes!22099 (and tp!870266 (inv!43291 setElem!22099) e!1736420))))

(declare-fun setRest!22099 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22099 (= (_2!18741 (h!37300 mapValue!16921)) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22099 true) setRest!22099))))

(declare-fun b!2753964 () Bool)

(declare-fun e!1736418 () Bool)

(declare-fun tp!870262 () Bool)

(assert (=> b!2753964 (= e!1736418 tp!870262)))

(declare-fun b!2753965 () Bool)

(declare-fun tp!870264 () Bool)

(assert (=> b!2753965 (= e!1736420 tp!870264)))

(declare-fun e!1736419 () Bool)

(declare-fun tp!870265 () Bool)

(declare-fun tp!870263 () Bool)

(declare-fun b!2753966 () Bool)

(assert (=> b!2753966 (= e!1736419 (and tp!870265 (inv!43291 (_2!18740 (_1!18741 (h!37300 mapValue!16921)))) e!1736418 tp_is_empty!13991 setRes!22099 tp!870263))))

(declare-fun condSetEmpty!22099 () Bool)

(assert (=> b!2753966 (= condSetEmpty!22099 (= (_2!18741 (h!37300 mapValue!16921)) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> mapNonEmpty!16921 (= tp!870143 e!1736419)))

(assert (= b!2753966 b!2753964))

(assert (= (and b!2753966 condSetEmpty!22099) setIsEmpty!22099))

(assert (= (and b!2753966 (not condSetEmpty!22099)) setNonEmpty!22099))

(assert (= setNonEmpty!22099 b!2753965))

(assert (= (and mapNonEmpty!16921 ((_ is Cons!31880) mapValue!16921)) b!2753966))

(declare-fun m!3169593 () Bool)

(assert (=> setNonEmpty!22099 m!3169593))

(declare-fun m!3169595 () Bool)

(assert (=> b!2753966 m!3169595))

(declare-fun b!2753975 () Bool)

(declare-fun tp!870273 () Bool)

(declare-fun tp!870275 () Bool)

(declare-fun e!1736426 () Bool)

(assert (=> b!2753975 (= e!1736426 (and (inv!43290 (left!24333 (c!445621 input!5495))) tp!870275 (inv!43290 (right!24663 (c!445621 input!5495))) tp!870273))))

(declare-fun b!2753977 () Bool)

(declare-fun e!1736425 () Bool)

(declare-fun tp!870274 () Bool)

(assert (=> b!2753977 (= e!1736425 tp!870274)))

(declare-fun b!2753976 () Bool)

(declare-fun inv!43297 (IArray!19883) Bool)

(assert (=> b!2753976 (= e!1736426 (and (inv!43297 (xs!13046 (c!445621 input!5495))) e!1736425))))

(assert (=> b!2753638 (= tp!870145 (and (inv!43290 (c!445621 input!5495)) e!1736426))))

(assert (= (and b!2753638 ((_ is Node!9939) (c!445621 input!5495))) b!2753975))

(assert (= b!2753976 b!2753977))

(assert (= (and b!2753638 ((_ is Leaf!15136) (c!445621 input!5495))) b!2753976))

(declare-fun m!3169597 () Bool)

(assert (=> b!2753975 m!3169597))

(declare-fun m!3169599 () Bool)

(assert (=> b!2753975 m!3169599))

(declare-fun m!3169601 () Bool)

(assert (=> b!2753976 m!3169601))

(assert (=> b!2753638 m!3169055))

(declare-fun setIsEmpty!22100 () Bool)

(declare-fun setRes!22100 () Bool)

(assert (=> setIsEmpty!22100 setRes!22100))

(declare-fun setNonEmpty!22100 () Bool)

(declare-fun e!1736429 () Bool)

(declare-fun tp!870280 () Bool)

(declare-fun setElem!22100 () Context!4550)

(assert (=> setNonEmpty!22100 (= setRes!22100 (and tp!870280 (inv!43291 setElem!22100) e!1736429))))

(declare-fun setRest!22100 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22100 (= (_2!18741 (h!37300 (zeroValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22100 true) setRest!22100))))

(declare-fun b!2753978 () Bool)

(declare-fun e!1736427 () Bool)

(declare-fun tp!870276 () Bool)

(assert (=> b!2753978 (= e!1736427 tp!870276)))

(declare-fun b!2753979 () Bool)

(declare-fun tp!870278 () Bool)

(assert (=> b!2753979 (= e!1736429 tp!870278)))

(declare-fun b!2753980 () Bool)

(declare-fun e!1736428 () Bool)

(declare-fun tp!870277 () Bool)

(declare-fun tp!870279 () Bool)

(assert (=> b!2753980 (= e!1736428 (and tp!870279 (inv!43291 (_2!18740 (_1!18741 (h!37300 (zeroValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))))) e!1736427 tp_is_empty!13991 setRes!22100 tp!870277))))

(declare-fun condSetEmpty!22100 () Bool)

(assert (=> b!2753980 (= condSetEmpty!22100 (= (_2!18741 (h!37300 (zeroValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753639 (= tp!870141 e!1736428)))

(assert (= b!2753980 b!2753978))

(assert (= (and b!2753980 condSetEmpty!22100) setIsEmpty!22100))

(assert (= (and b!2753980 (not condSetEmpty!22100)) setNonEmpty!22100))

(assert (= setNonEmpty!22100 b!2753979))

(assert (= (and b!2753639 ((_ is Cons!31880) (zeroValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) b!2753980))

(declare-fun m!3169603 () Bool)

(assert (=> setNonEmpty!22100 m!3169603))

(declare-fun m!3169605 () Bool)

(assert (=> b!2753980 m!3169605))

(declare-fun setIsEmpty!22101 () Bool)

(declare-fun setRes!22101 () Bool)

(assert (=> setIsEmpty!22101 setRes!22101))

(declare-fun setNonEmpty!22101 () Bool)

(declare-fun tp!870285 () Bool)

(declare-fun e!1736432 () Bool)

(declare-fun setElem!22101 () Context!4550)

(assert (=> setNonEmpty!22101 (= setRes!22101 (and tp!870285 (inv!43291 setElem!22101) e!1736432))))

(declare-fun setRest!22101 () (InoxSet Context!4550))

(assert (=> setNonEmpty!22101 (= (_2!18741 (h!37300 (minValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4550 Bool)) false) setElem!22101 true) setRest!22101))))

(declare-fun b!2753981 () Bool)

(declare-fun e!1736430 () Bool)

(declare-fun tp!870281 () Bool)

(assert (=> b!2753981 (= e!1736430 tp!870281)))

(declare-fun b!2753982 () Bool)

(declare-fun tp!870283 () Bool)

(assert (=> b!2753982 (= e!1736432 tp!870283)))

(declare-fun tp!870282 () Bool)

(declare-fun tp!870284 () Bool)

(declare-fun e!1736431 () Bool)

(declare-fun b!2753983 () Bool)

(assert (=> b!2753983 (= e!1736431 (and tp!870284 (inv!43291 (_2!18740 (_1!18741 (h!37300 (minValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))))) e!1736430 tp_is_empty!13991 setRes!22101 tp!870282))))

(declare-fun condSetEmpty!22101 () Bool)

(assert (=> b!2753983 (= condSetEmpty!22101 (= (_2!18741 (h!37300 (minValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) ((as const (Array Context!4550 Bool)) false)))))

(assert (=> b!2753639 (= tp!870147 e!1736431)))

(assert (= b!2753983 b!2753981))

(assert (= (and b!2753983 condSetEmpty!22101) setIsEmpty!22101))

(assert (= (and b!2753983 (not condSetEmpty!22101)) setNonEmpty!22101))

(assert (= setNonEmpty!22101 b!2753982))

(assert (= (and b!2753639 ((_ is Cons!31880) (minValue!3982 (v!33489 (underlying!7649 (v!33490 (underlying!7650 (cache!3772 cacheDown!939)))))))) b!2753983))

(declare-fun m!3169607 () Bool)

(assert (=> setNonEmpty!22101 m!3169607))

(declare-fun m!3169609 () Bool)

(assert (=> b!2753983 m!3169609))

(check-sat (not b!2753958) (not b!2753836) (not b!2753834) (not b!2753790) (not bm!178182) (not b!2753851) (not d!797057) (not mapNonEmpty!16928) (not bm!178207) (not d!796973) (not b!2753764) (not bm!178211) (not setNonEmpty!22090) (not d!796939) (not d!796957) (not b!2753934) (not bm!178210) (not b!2753937) (not bm!178215) (not b!2753845) (not bm!178199) (not b!2753981) (not b!2753858) (not b!2753782) (not bm!178213) b_and!202669 (not b!2753835) (not b!2753713) (not b!2753920) tp_is_empty!13991 (not b!2753820) (not bm!178189) (not bm!178201) (not b_next!78635) (not bm!178198) (not b!2753638) (not b!2753689) (not b!2753942) (not d!797041) (not setNonEmpty!22098) (not d!797027) (not d!796979) (not d!796975) (not bm!178183) (not bm!178208) (not d!796965) (not b!2753940) (not setNonEmpty!22100) (not b!2753963) (not d!796941) (not b!2753941) (not d!797047) (not b!2753704) (not b!2753980) (not d!796999) (not b!2753822) (not b!2753887) (not b!2753716) (not d!797035) (not b!2753975) (not b!2753848) (not b!2753850) (not b!2753919) (not b!2753892) (not d!796961) (not b!2753979) (not d!797031) (not setNonEmpty!22077) (not d!797053) (not b!2753977) (not mapNonEmpty!16925) (not d!797011) (not b!2753719) (not b!2753827) (not b!2753771) b_and!202665 (not d!797055) b_and!202663 (not b!2753708) (not b!2753901) (not bm!178206) (not d!796985) (not d!797015) (not b!2753939) (not d!796937) (not d!797029) (not b!2753933) (not setNonEmpty!22101) (not b!2753868) (not b!2753961) (not bm!178185) (not bm!178214) (not b!2753943) (not bm!178209) (not b!2753784) (not bm!178203) (not b!2753841) (not d!796997) (not b!2753881) (not b!2753703) (not b!2753729) (not d!797043) b_and!202667 (not b!2753959) (not setNonEmpty!22080) (not d!797023) (not b!2753700) (not bm!178212) (not bm!178216) (not b!2753935) (not b!2753844) (not b!2753791) (not d!796967) (not b_next!78629) (not b!2753849) (not b!2753727) (not b!2753983) (not d!796983) (not bm!178190) (not setNonEmpty!22085) (not d!797037) (not d!796949) (not b!2753765) (not setNonEmpty!22099) (not b!2753875) (not b!2753882) (not b!2753923) (not b!2753718) (not b!2753960) (not b!2753682) (not d!796955) (not b!2753982) (not setNonEmpty!22086) (not b!2753787) (not bm!178187) (not d!797051) (not d!796977) (not bm!178195) (not b!2753786) (not bm!178197) (not b!2753780) (not d!796953) (not b!2753903) (not d!797045) (not b!2753962) (not bm!178205) (not b!2753976) (not b!2753936) (not b!2753714) (not b!2753783) (not d!796951) (not setNonEmpty!22097) (not b!2753870) (not b!2753681) (not b!2753966) (not bm!178184) (not bm!178202) (not b!2753938) (not b_next!78631) (not d!797033) (not d!797021) (not b!2753753) (not b!2753965) (not d!797019) (not d!797059) (not d!797017) (not bm!178204) (not d!797013) (not d!797039) (not b!2753964) (not b!2753833) (not bm!178160) (not bm!178186) (not b!2753863) (not d!796935) (not b!2753728) (not b_next!78633) (not d!796947) (not b!2753856) (not setNonEmpty!22091) (not b!2753759) (not d!796991) (not b!2753922) (not b!2753918) (not d!797001) (not b!2753683) (not b!2753902) (not setNonEmpty!22089) (not bm!178196) (not b!2753778) (not b!2753932) (not b!2753699) (not b!2753852) (not b!2753978) (not setNonEmpty!22092) (not bm!178181) (not bm!178200) (not d!796971) (not b!2753768) (not b!2753756) (not bm!178188) (not b!2753921) (not d!797025))
(check-sat b_and!202669 (not b_next!78635) b_and!202665 b_and!202663 b_and!202667 (not b_next!78629) (not b_next!78631) (not b_next!78633))
