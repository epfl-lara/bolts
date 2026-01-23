; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411982 () Bool)

(assert start!411982)

(declare-fun b!4289858 () Bool)

(declare-fun b_free!127351 () Bool)

(declare-fun b_next!128055 () Bool)

(assert (=> b!4289858 (= b_free!127351 (not b_next!128055))))

(declare-fun tp!1315269 () Bool)

(declare-fun b_and!338567 () Bool)

(assert (=> b!4289858 (= tp!1315269 b_and!338567)))

(declare-fun b!4289844 () Bool)

(declare-fun b_free!127353 () Bool)

(declare-fun b_next!128057 () Bool)

(assert (=> b!4289844 (= b_free!127353 (not b_next!128057))))

(declare-fun tp!1315258 () Bool)

(declare-fun b_and!338569 () Bool)

(assert (=> b!4289844 (= tp!1315258 b_and!338569)))

(declare-fun b!4289847 () Bool)

(declare-fun b_free!127355 () Bool)

(declare-fun b_next!128059 () Bool)

(assert (=> b!4289847 (= b_free!127355 (not b_next!128059))))

(declare-fun tp!1315251 () Bool)

(declare-fun b_and!338571 () Bool)

(assert (=> b!4289847 (= tp!1315251 b_and!338571)))

(declare-fun b!4289859 () Bool)

(declare-fun b_free!127357 () Bool)

(declare-fun b_next!128061 () Bool)

(assert (=> b!4289859 (= b_free!127357 (not b_next!128061))))

(declare-fun tp!1315274 () Bool)

(declare-fun b_and!338573 () Bool)

(assert (=> b!4289859 (= tp!1315274 b_and!338573)))

(declare-fun b!4289854 () Bool)

(declare-fun b_free!127359 () Bool)

(declare-fun b_next!128063 () Bool)

(assert (=> b!4289854 (= b_free!127359 (not b_next!128063))))

(declare-fun tp!1315267 () Bool)

(declare-fun b_and!338575 () Bool)

(assert (=> b!4289854 (= tp!1315267 b_and!338575)))

(declare-fun b!4289853 () Bool)

(declare-fun b_free!127361 () Bool)

(declare-fun b_next!128065 () Bool)

(assert (=> b!4289853 (= b_free!127361 (not b_next!128065))))

(declare-fun tp!1315254 () Bool)

(declare-fun b_and!338577 () Bool)

(assert (=> b!4289853 (= tp!1315254 b_and!338577)))

(declare-fun b!4289842 () Bool)

(declare-fun e!2664657 () Bool)

(declare-fun e!2664682 () Bool)

(assert (=> b!4289842 (= e!2664657 e!2664682)))

(declare-fun b!4289843 () Bool)

(declare-fun e!2664671 () Bool)

(declare-fun e!2664670 () Bool)

(assert (=> b!4289843 (= e!2664671 e!2664670)))

(declare-fun res!1759476 () Bool)

(declare-fun e!2664658 () Bool)

(assert (=> start!411982 (=> (not res!1759476) (not e!2664658))))

(declare-datatypes ((C!26092 0))(
  ( (C!26093 (val!15372 Int)) )
))
(declare-datatypes ((List!47779 0))(
  ( (Nil!47655) (Cons!47655 (h!53075 C!26092) (t!354380 List!47779)) )
))
(declare-datatypes ((IArray!28839 0))(
  ( (IArray!28840 (innerList!14477 List!47779)) )
))
(declare-datatypes ((Conc!14389 0))(
  ( (Node!14389 (left!35395 Conc!14389) (right!35725 Conc!14389) (csize!29008 Int) (cheight!14600 Int)) (Leaf!22264 (xs!17695 IArray!28839) (csize!29009 Int)) (Empty!14389) )
))
(declare-datatypes ((BalanceConc!28268 0))(
  ( (BalanceConc!28269 (c!730242 Conc!14389)) )
))
(declare-fun input!5500 () BalanceConc!28268)

(declare-fun totalInput!793 () BalanceConc!28268)

(declare-fun isSuffix!1034 (List!47779 List!47779) Bool)

(declare-fun list!17353 (BalanceConc!28268) List!47779)

(assert (=> start!411982 (= res!1759476 (isSuffix!1034 (list!17353 input!5500) (list!17353 totalInput!793)))))

(assert (=> start!411982 e!2664658))

(declare-fun e!2664669 () Bool)

(declare-fun inv!63141 (BalanceConc!28268) Bool)

(assert (=> start!411982 (and (inv!63141 totalInput!793) e!2664669)))

(declare-fun e!2664680 () Bool)

(assert (=> start!411982 (and (inv!63141 input!5500) e!2664680)))

(declare-datatypes ((Regex!12947 0))(
  ( (ElementMatch!12947 (c!730243 C!26092)) (Concat!21266 (regOne!26406 Regex!12947) (regTwo!26406 Regex!12947)) (EmptyExpr!12947) (Star!12947 (reg!13276 Regex!12947)) (EmptyLang!12947) (Union!12947 (regOne!26407 Regex!12947) (regTwo!26407 Regex!12947)) )
))
(declare-datatypes ((List!47780 0))(
  ( (Nil!47656) (Cons!47656 (h!53076 Regex!12947) (t!354381 List!47780)) )
))
(declare-datatypes ((Context!5674 0))(
  ( (Context!5675 (exprs!3337 List!47780)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45272 0))(
  ( (tuple2!45273 (_1!25845 (InoxSet Context!5674)) (_2!25845 Int)) )
))
(declare-datatypes ((tuple2!45274 0))(
  ( (tuple2!45275 (_1!25846 tuple2!45272) (_2!25846 Int)) )
))
(declare-datatypes ((List!47781 0))(
  ( (Nil!47657) (Cons!47657 (h!53077 tuple2!45274) (t!354382 List!47781)) )
))
(declare-datatypes ((array!15664 0))(
  ( (array!15665 (arr!6996 (Array (_ BitVec 32) List!47781)) (size!34964 (_ BitVec 32))) )
))
(declare-datatypes ((array!15666 0))(
  ( (array!15667 (arr!6997 (Array (_ BitVec 32) (_ BitVec 64))) (size!34965 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4298 0))(
  ( (HashableExt!4297 (__x!29171 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8764 0))(
  ( (LongMapFixedSize!8765 (defaultEntry!4767 Int) (mask!12825 (_ BitVec 32)) (extraKeys!4631 (_ BitVec 32)) (zeroValue!4641 List!47781) (minValue!4641 List!47781) (_size!8807 (_ BitVec 32)) (_keys!4682 array!15666) (_values!4663 array!15664) (_vacant!4443 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17337 0))(
  ( (Cell!17338 (v!41574 LongMapFixedSize!8764)) )
))
(declare-datatypes ((MutLongMap!4382 0))(
  ( (LongMap!4382 (underlying!8993 Cell!17337)) (MutLongMapExt!4381 (__x!29172 Int)) )
))
(declare-datatypes ((Cell!17339 0))(
  ( (Cell!17340 (v!41575 MutLongMap!4382)) )
))
(declare-datatypes ((MutableMap!4288 0))(
  ( (MutableMapExt!4287 (__x!29173 Int)) (HashMap!4288 (underlying!8994 Cell!17339) (hashF!6330 Hashable!4298) (_size!8808 (_ BitVec 32)) (defaultValue!4459 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!466 0))(
  ( (CacheFindLongestMatch!467 (cache!4428 MutableMap!4288) (totalInput!4347 BalanceConc!28268)) )
))
(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!466)

(declare-fun e!2664666 () Bool)

(declare-fun inv!63142 (CacheFindLongestMatch!466) Bool)

(assert (=> start!411982 (and (inv!63142 cacheFindLongestMatch!171) e!2664666)))

(declare-datatypes ((tuple2!45276 0))(
  ( (tuple2!45277 (_1!25847 Context!5674) (_2!25847 C!26092)) )
))
(declare-datatypes ((tuple2!45278 0))(
  ( (tuple2!45279 (_1!25848 tuple2!45276) (_2!25848 (InoxSet Context!5674))) )
))
(declare-datatypes ((List!47782 0))(
  ( (Nil!47658) (Cons!47658 (h!53078 tuple2!45278) (t!354383 List!47782)) )
))
(declare-datatypes ((array!15668 0))(
  ( (array!15669 (arr!6998 (Array (_ BitVec 32) List!47782)) (size!34966 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8766 0))(
  ( (LongMapFixedSize!8767 (defaultEntry!4768 Int) (mask!12826 (_ BitVec 32)) (extraKeys!4632 (_ BitVec 32)) (zeroValue!4642 List!47782) (minValue!4642 List!47782) (_size!8809 (_ BitVec 32)) (_keys!4683 array!15666) (_values!4664 array!15668) (_vacant!4444 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17341 0))(
  ( (Cell!17342 (v!41576 LongMapFixedSize!8766)) )
))
(declare-datatypes ((MutLongMap!4383 0))(
  ( (LongMap!4383 (underlying!8995 Cell!17341)) (MutLongMapExt!4382 (__x!29174 Int)) )
))
(declare-datatypes ((Hashable!4299 0))(
  ( (HashableExt!4298 (__x!29175 Int)) )
))
(declare-datatypes ((Cell!17343 0))(
  ( (Cell!17344 (v!41577 MutLongMap!4383)) )
))
(declare-datatypes ((MutableMap!4289 0))(
  ( (MutableMapExt!4288 (__x!29176 Int)) (HashMap!4289 (underlying!8996 Cell!17343) (hashF!6331 Hashable!4299) (_size!8810 (_ BitVec 32)) (defaultValue!4460 Int)) )
))
(declare-datatypes ((CacheUp!2800 0))(
  ( (CacheUp!2801 (cache!4429 MutableMap!4289)) )
))
(declare-fun cacheUp!925 () CacheUp!2800)

(declare-fun inv!63143 (CacheUp!2800) Bool)

(assert (=> start!411982 (and (inv!63143 cacheUp!925) e!2664657)))

(declare-datatypes ((tuple3!5410 0))(
  ( (tuple3!5411 (_1!25849 Regex!12947) (_2!25849 Context!5674) (_3!3209 C!26092)) )
))
(declare-datatypes ((tuple2!45280 0))(
  ( (tuple2!45281 (_1!25850 tuple3!5410) (_2!25850 (InoxSet Context!5674))) )
))
(declare-datatypes ((List!47783 0))(
  ( (Nil!47659) (Cons!47659 (h!53079 tuple2!45280) (t!354384 List!47783)) )
))
(declare-datatypes ((array!15670 0))(
  ( (array!15671 (arr!6999 (Array (_ BitVec 32) List!47783)) (size!34967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8768 0))(
  ( (LongMapFixedSize!8769 (defaultEntry!4769 Int) (mask!12827 (_ BitVec 32)) (extraKeys!4633 (_ BitVec 32)) (zeroValue!4643 List!47783) (minValue!4643 List!47783) (_size!8811 (_ BitVec 32)) (_keys!4684 array!15666) (_values!4665 array!15670) (_vacant!4445 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17345 0))(
  ( (Cell!17346 (v!41578 LongMapFixedSize!8768)) )
))
(declare-datatypes ((MutLongMap!4384 0))(
  ( (LongMap!4384 (underlying!8997 Cell!17345)) (MutLongMapExt!4383 (__x!29177 Int)) )
))
(declare-datatypes ((Cell!17347 0))(
  ( (Cell!17348 (v!41579 MutLongMap!4384)) )
))
(declare-datatypes ((Hashable!4300 0))(
  ( (HashableExt!4299 (__x!29178 Int)) )
))
(declare-datatypes ((MutableMap!4290 0))(
  ( (MutableMapExt!4289 (__x!29179 Int)) (HashMap!4290 (underlying!8998 Cell!17347) (hashF!6332 Hashable!4300) (_size!8812 (_ BitVec 32)) (defaultValue!4461 Int)) )
))
(declare-datatypes ((CacheDown!2918 0))(
  ( (CacheDown!2919 (cache!4430 MutableMap!4290)) )
))
(declare-fun cacheDown!1044 () CacheDown!2918)

(declare-fun e!2664662 () Bool)

(declare-fun inv!63144 (CacheDown!2918) Bool)

(assert (=> start!411982 (and (inv!63144 cacheDown!1044) e!2664662)))

(declare-fun condSetEmpty!26357 () Bool)

(declare-fun z!3746 () (InoxSet Context!5674))

(assert (=> start!411982 (= condSetEmpty!26357 (= z!3746 ((as const (Array Context!5674 Bool)) false)))))

(declare-fun setRes!26357 () Bool)

(assert (=> start!411982 setRes!26357))

(declare-fun mapIsEmpty!19746 () Bool)

(declare-fun mapRes!19748 () Bool)

(assert (=> mapIsEmpty!19746 mapRes!19748))

(declare-fun e!2664672 () Bool)

(assert (=> b!4289844 (= e!2664682 (and e!2664672 tp!1315258))))

(declare-fun mapNonEmpty!19746 () Bool)

(declare-fun mapRes!19747 () Bool)

(declare-fun tp!1315252 () Bool)

(declare-fun tp!1315273 () Bool)

(assert (=> mapNonEmpty!19746 (= mapRes!19747 (and tp!1315252 tp!1315273))))

(declare-fun mapRest!19747 () (Array (_ BitVec 32) List!47782))

(declare-fun mapValue!19747 () List!47782)

(declare-fun mapKey!19748 () (_ BitVec 32))

(assert (=> mapNonEmpty!19746 (= (arr!6998 (_values!4664 (v!41576 (underlying!8995 (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))))) (store mapRest!19747 mapKey!19748 mapValue!19747))))

(declare-fun b!4289845 () Bool)

(declare-fun e!2664674 () Bool)

(declare-fun lt!1516737 () MutLongMap!4383)

(get-info :version)

(assert (=> b!4289845 (= e!2664672 (and e!2664674 ((_ is LongMap!4383) lt!1516737)))))

(assert (=> b!4289845 (= lt!1516737 (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))))

(declare-fun setIsEmpty!26357 () Bool)

(assert (=> setIsEmpty!26357 setRes!26357))

(declare-fun b!4289846 () Bool)

(declare-fun res!1759473 () Bool)

(assert (=> b!4289846 (=> (not res!1759473) (not e!2664658))))

(assert (=> b!4289846 (= res!1759473 (= (totalInput!4347 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun mapNonEmpty!19747 () Bool)

(declare-fun mapRes!19746 () Bool)

(declare-fun tp!1315272 () Bool)

(declare-fun tp!1315276 () Bool)

(assert (=> mapNonEmpty!19747 (= mapRes!19746 (and tp!1315272 tp!1315276))))

(declare-fun mapRest!19748 () (Array (_ BitVec 32) List!47783))

(declare-fun mapKey!19747 () (_ BitVec 32))

(declare-fun mapValue!19746 () List!47783)

(assert (=> mapNonEmpty!19747 (= (arr!6999 (_values!4665 (v!41578 (underlying!8997 (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))))) (store mapRest!19748 mapKey!19747 mapValue!19746))))

(declare-fun e!2664679 () Bool)

(declare-fun e!2664673 () Bool)

(assert (=> b!4289847 (= e!2664679 (and e!2664673 tp!1315251))))

(declare-fun b!4289848 () Bool)

(declare-fun tp!1315255 () Bool)

(declare-fun inv!63145 (Conc!14389) Bool)

(assert (=> b!4289848 (= e!2664669 (and (inv!63145 (c!730242 totalInput!793)) tp!1315255))))

(declare-fun b!4289849 () Bool)

(declare-fun e!2664677 () Bool)

(declare-fun tp!1315262 () Bool)

(assert (=> b!4289849 (= e!2664677 tp!1315262)))

(declare-fun b!4289850 () Bool)

(declare-fun e!2664675 () Bool)

(declare-fun tp!1315275 () Bool)

(assert (=> b!4289850 (= e!2664675 (and (inv!63145 (c!730242 (totalInput!4347 cacheFindLongestMatch!171))) tp!1315275))))

(declare-fun b!4289851 () Bool)

(declare-fun res!1759474 () Bool)

(declare-fun e!2664684 () Bool)

(assert (=> b!4289851 (=> (not res!1759474) (not e!2664684))))

(declare-datatypes ((tuple4!1008 0))(
  ( (tuple4!1009 (_1!25851 Int) (_2!25851 CacheUp!2800) (_3!3210 CacheDown!2918) (_4!504 CacheFindLongestMatch!466)) )
))
(declare-fun lt!1516735 () tuple4!1008)

(declare-fun valid!3405 (CacheFindLongestMatch!466) Bool)

(assert (=> b!4289851 (= res!1759474 (valid!3405 (_4!504 lt!1516735)))))

(declare-fun b!4289852 () Bool)

(declare-fun e!2664660 () Bool)

(declare-fun tp!1315263 () Bool)

(assert (=> b!4289852 (= e!2664660 (and tp!1315263 mapRes!19746))))

(declare-fun condMapEmpty!19748 () Bool)

(declare-fun mapDefault!19746 () List!47783)

(assert (=> b!4289852 (= condMapEmpty!19748 (= (arr!6999 (_values!4665 (v!41578 (underlying!8997 (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))))) ((as const (Array (_ BitVec 32) List!47783)) mapDefault!19746)))))

(declare-fun e!2664668 () Bool)

(declare-fun tp!1315259 () Bool)

(declare-fun e!2664664 () Bool)

(declare-fun tp!1315257 () Bool)

(declare-fun array_inv!5017 (array!15666) Bool)

(declare-fun array_inv!5018 (array!15668) Bool)

(assert (=> b!4289853 (= e!2664668 (and tp!1315254 tp!1315257 tp!1315259 (array_inv!5017 (_keys!4683 (v!41576 (underlying!8995 (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))))) (array_inv!5018 (_values!4664 (v!41576 (underlying!8995 (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))))) e!2664664))))

(declare-fun tp!1315253 () Bool)

(declare-fun e!2664667 () Bool)

(declare-fun tp!1315268 () Bool)

(declare-fun e!2664678 () Bool)

(declare-fun array_inv!5019 (array!15664) Bool)

(assert (=> b!4289854 (= e!2664667 (and tp!1315267 tp!1315268 tp!1315253 (array_inv!5017 (_keys!4682 (v!41574 (underlying!8993 (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))))) (array_inv!5019 (_values!4663 (v!41574 (underlying!8993 (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))))) e!2664678))))

(declare-fun b!4289855 () Bool)

(declare-fun e!2664663 () Bool)

(assert (=> b!4289855 (= e!2664663 e!2664667)))

(declare-fun b!4289856 () Bool)

(assert (=> b!4289856 (= e!2664684 (= (totalInput!4347 (_4!504 lt!1516735)) totalInput!793))))

(declare-fun mapNonEmpty!19748 () Bool)

(declare-fun tp!1315256 () Bool)

(declare-fun tp!1315270 () Bool)

(assert (=> mapNonEmpty!19748 (= mapRes!19748 (and tp!1315256 tp!1315270))))

(declare-fun mapValue!19748 () List!47781)

(declare-fun mapKey!19746 () (_ BitVec 32))

(declare-fun mapRest!19746 () (Array (_ BitVec 32) List!47781))

(assert (=> mapNonEmpty!19748 (= (arr!6996 (_values!4663 (v!41574 (underlying!8993 (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))))) (store mapRest!19746 mapKey!19746 mapValue!19748))))

(declare-fun b!4289857 () Bool)

(assert (=> b!4289857 (= e!2664658 (not true))))

(declare-datatypes ((tuple2!45282 0))(
  ( (tuple2!45283 (_1!25852 BalanceConc!28268) (_2!25852 BalanceConc!28268)) )
))
(declare-fun lt!1516734 () tuple2!45282)

(declare-fun splitAt!221 (BalanceConc!28268 Int) tuple2!45282)

(assert (=> b!4289857 (= lt!1516734 (splitAt!221 input!5500 (_1!25851 lt!1516735)))))

(assert (=> b!4289857 e!2664684))

(declare-fun res!1759472 () Bool)

(assert (=> b!4289857 (=> (not res!1759472) (not e!2664684))))

(declare-fun lt!1516738 () Int)

(declare-fun lt!1516732 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!28 ((InoxSet Context!5674) Int BalanceConc!28268 Int) Int)

(assert (=> b!4289857 (= res!1759472 (= (_1!25851 lt!1516735) (findLongestMatchInnerZipperFastV2!28 z!3746 lt!1516732 totalInput!793 lt!1516738)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!10 ((InoxSet Context!5674) Int BalanceConc!28268 Int CacheUp!2800 CacheDown!2918 CacheFindLongestMatch!466) tuple4!1008)

(assert (=> b!4289857 (= lt!1516735 (findLongestMatchInnerZipperFastV2Mem!10 z!3746 lt!1516732 totalInput!793 lt!1516738 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(declare-fun size!34968 (BalanceConc!28268) Int)

(assert (=> b!4289857 (= lt!1516732 (- lt!1516738 (size!34968 input!5500)))))

(assert (=> b!4289857 (= lt!1516738 (size!34968 totalInput!793))))

(declare-fun mapIsEmpty!19747 () Bool)

(assert (=> mapIsEmpty!19747 mapRes!19747))

(declare-fun tp!1315265 () Bool)

(declare-fun tp!1315261 () Bool)

(declare-fun e!2664676 () Bool)

(declare-fun array_inv!5020 (array!15670) Bool)

(assert (=> b!4289858 (= e!2664676 (and tp!1315269 tp!1315261 tp!1315265 (array_inv!5017 (_keys!4684 (v!41578 (underlying!8997 (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))))) (array_inv!5020 (_values!4665 (v!41578 (underlying!8997 (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))))) e!2664660))))

(declare-fun e!2664661 () Bool)

(declare-fun e!2664683 () Bool)

(assert (=> b!4289859 (= e!2664661 (and e!2664683 tp!1315274))))

(declare-fun b!4289860 () Bool)

(declare-fun res!1759475 () Bool)

(assert (=> b!4289860 (=> (not res!1759475) (not e!2664684))))

(declare-fun valid!3406 (CacheDown!2918) Bool)

(assert (=> b!4289860 (= res!1759475 (valid!3406 (_3!3210 lt!1516735)))))

(declare-fun b!4289861 () Bool)

(declare-fun lt!1516736 () MutLongMap!4384)

(assert (=> b!4289861 (= e!2664683 (and e!2664671 ((_ is LongMap!4384) lt!1516736)))))

(assert (=> b!4289861 (= lt!1516736 (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))))

(declare-fun b!4289862 () Bool)

(declare-fun e!2664659 () Bool)

(assert (=> b!4289862 (= e!2664659 e!2664668)))

(declare-fun b!4289863 () Bool)

(declare-fun res!1759477 () Bool)

(assert (=> b!4289863 (=> (not res!1759477) (not e!2664684))))

(declare-fun valid!3407 (CacheUp!2800) Bool)

(assert (=> b!4289863 (= res!1759477 (valid!3407 (_2!25851 lt!1516735)))))

(declare-fun mapIsEmpty!19748 () Bool)

(assert (=> mapIsEmpty!19748 mapRes!19746))

(declare-fun b!4289864 () Bool)

(declare-fun e!2664665 () Bool)

(assert (=> b!4289864 (= e!2664665 e!2664663)))

(declare-fun b!4289865 () Bool)

(assert (=> b!4289865 (= e!2664670 e!2664676)))

(declare-fun b!4289866 () Bool)

(assert (=> b!4289866 (= e!2664666 (and e!2664679 (inv!63141 (totalInput!4347 cacheFindLongestMatch!171)) e!2664675))))

(declare-fun b!4289867 () Bool)

(assert (=> b!4289867 (= e!2664662 e!2664661)))

(declare-fun b!4289868 () Bool)

(declare-fun tp!1315264 () Bool)

(assert (=> b!4289868 (= e!2664680 (and (inv!63145 (c!730242 input!5500)) tp!1315264))))

(declare-fun b!4289869 () Bool)

(assert (=> b!4289869 (= e!2664674 e!2664659)))

(declare-fun b!4289870 () Bool)

(declare-fun lt!1516733 () MutLongMap!4382)

(assert (=> b!4289870 (= e!2664673 (and e!2664665 ((_ is LongMap!4382) lt!1516733)))))

(assert (=> b!4289870 (= lt!1516733 (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))))

(declare-fun tp!1315266 () Bool)

(declare-fun setElem!26357 () Context!5674)

(declare-fun setNonEmpty!26357 () Bool)

(declare-fun inv!63146 (Context!5674) Bool)

(assert (=> setNonEmpty!26357 (= setRes!26357 (and tp!1315266 (inv!63146 setElem!26357) e!2664677))))

(declare-fun setRest!26357 () (InoxSet Context!5674))

(assert (=> setNonEmpty!26357 (= z!3746 ((_ map or) (store ((as const (Array Context!5674 Bool)) false) setElem!26357 true) setRest!26357))))

(declare-fun b!4289871 () Bool)

(declare-fun tp!1315260 () Bool)

(assert (=> b!4289871 (= e!2664664 (and tp!1315260 mapRes!19747))))

(declare-fun condMapEmpty!19746 () Bool)

(declare-fun mapDefault!19748 () List!47782)

(assert (=> b!4289871 (= condMapEmpty!19746 (= (arr!6998 (_values!4664 (v!41576 (underlying!8995 (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))))) ((as const (Array (_ BitVec 32) List!47782)) mapDefault!19748)))))

(declare-fun b!4289872 () Bool)

(declare-fun tp!1315271 () Bool)

(assert (=> b!4289872 (= e!2664678 (and tp!1315271 mapRes!19748))))

(declare-fun condMapEmpty!19747 () Bool)

(declare-fun mapDefault!19747 () List!47781)

(assert (=> b!4289872 (= condMapEmpty!19747 (= (arr!6996 (_values!4663 (v!41574 (underlying!8993 (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47781)) mapDefault!19747)))))

(assert (= (and start!411982 res!1759476) b!4289846))

(assert (= (and b!4289846 res!1759473) b!4289857))

(assert (= (and b!4289857 res!1759472) b!4289863))

(assert (= (and b!4289863 res!1759477) b!4289860))

(assert (= (and b!4289860 res!1759475) b!4289851))

(assert (= (and b!4289851 res!1759474) b!4289856))

(assert (= start!411982 b!4289848))

(assert (= start!411982 b!4289868))

(assert (= (and b!4289872 condMapEmpty!19747) mapIsEmpty!19746))

(assert (= (and b!4289872 (not condMapEmpty!19747)) mapNonEmpty!19748))

(assert (= b!4289854 b!4289872))

(assert (= b!4289855 b!4289854))

(assert (= b!4289864 b!4289855))

(assert (= (and b!4289870 ((_ is LongMap!4382) (v!41575 (underlying!8994 (cache!4428 cacheFindLongestMatch!171))))) b!4289864))

(assert (= b!4289847 b!4289870))

(assert (= (and b!4289866 ((_ is HashMap!4288) (cache!4428 cacheFindLongestMatch!171))) b!4289847))

(assert (= b!4289866 b!4289850))

(assert (= start!411982 b!4289866))

(assert (= (and b!4289871 condMapEmpty!19746) mapIsEmpty!19747))

(assert (= (and b!4289871 (not condMapEmpty!19746)) mapNonEmpty!19746))

(assert (= b!4289853 b!4289871))

(assert (= b!4289862 b!4289853))

(assert (= b!4289869 b!4289862))

(assert (= (and b!4289845 ((_ is LongMap!4383) (v!41577 (underlying!8996 (cache!4429 cacheUp!925))))) b!4289869))

(assert (= b!4289844 b!4289845))

(assert (= (and b!4289842 ((_ is HashMap!4289) (cache!4429 cacheUp!925))) b!4289844))

(assert (= start!411982 b!4289842))

(assert (= (and b!4289852 condMapEmpty!19748) mapIsEmpty!19748))

(assert (= (and b!4289852 (not condMapEmpty!19748)) mapNonEmpty!19747))

(assert (= b!4289858 b!4289852))

(assert (= b!4289865 b!4289858))

(assert (= b!4289843 b!4289865))

(assert (= (and b!4289861 ((_ is LongMap!4384) (v!41579 (underlying!8998 (cache!4430 cacheDown!1044))))) b!4289843))

(assert (= b!4289859 b!4289861))

(assert (= (and b!4289867 ((_ is HashMap!4290) (cache!4430 cacheDown!1044))) b!4289859))

(assert (= start!411982 b!4289867))

(assert (= (and start!411982 condSetEmpty!26357) setIsEmpty!26357))

(assert (= (and start!411982 (not condSetEmpty!26357)) setNonEmpty!26357))

(assert (= setNonEmpty!26357 b!4289849))

(declare-fun m!4884311 () Bool)

(assert (=> start!411982 m!4884311))

(declare-fun m!4884313 () Bool)

(assert (=> start!411982 m!4884313))

(declare-fun m!4884315 () Bool)

(assert (=> start!411982 m!4884315))

(assert (=> start!411982 m!4884311))

(declare-fun m!4884317 () Bool)

(assert (=> start!411982 m!4884317))

(declare-fun m!4884319 () Bool)

(assert (=> start!411982 m!4884319))

(declare-fun m!4884321 () Bool)

(assert (=> start!411982 m!4884321))

(declare-fun m!4884323 () Bool)

(assert (=> start!411982 m!4884323))

(assert (=> start!411982 m!4884313))

(declare-fun m!4884325 () Bool)

(assert (=> start!411982 m!4884325))

(declare-fun m!4884327 () Bool)

(assert (=> b!4289866 m!4884327))

(declare-fun m!4884329 () Bool)

(assert (=> b!4289854 m!4884329))

(declare-fun m!4884331 () Bool)

(assert (=> b!4289854 m!4884331))

(declare-fun m!4884333 () Bool)

(assert (=> b!4289863 m!4884333))

(declare-fun m!4884335 () Bool)

(assert (=> b!4289851 m!4884335))

(declare-fun m!4884337 () Bool)

(assert (=> b!4289848 m!4884337))

(declare-fun m!4884339 () Bool)

(assert (=> b!4289868 m!4884339))

(declare-fun m!4884341 () Bool)

(assert (=> mapNonEmpty!19747 m!4884341))

(declare-fun m!4884343 () Bool)

(assert (=> mapNonEmpty!19746 m!4884343))

(declare-fun m!4884345 () Bool)

(assert (=> b!4289857 m!4884345))

(declare-fun m!4884347 () Bool)

(assert (=> b!4289857 m!4884347))

(declare-fun m!4884349 () Bool)

(assert (=> b!4289857 m!4884349))

(declare-fun m!4884351 () Bool)

(assert (=> b!4289857 m!4884351))

(declare-fun m!4884353 () Bool)

(assert (=> b!4289857 m!4884353))

(declare-fun m!4884355 () Bool)

(assert (=> b!4289850 m!4884355))

(declare-fun m!4884357 () Bool)

(assert (=> mapNonEmpty!19748 m!4884357))

(declare-fun m!4884359 () Bool)

(assert (=> b!4289860 m!4884359))

(declare-fun m!4884361 () Bool)

(assert (=> b!4289853 m!4884361))

(declare-fun m!4884363 () Bool)

(assert (=> b!4289853 m!4884363))

(declare-fun m!4884365 () Bool)

(assert (=> b!4289858 m!4884365))

(declare-fun m!4884367 () Bool)

(assert (=> b!4289858 m!4884367))

(declare-fun m!4884369 () Bool)

(assert (=> setNonEmpty!26357 m!4884369))

(check-sat (not b!4289868) (not b_next!128065) (not b!4289860) b_and!338569 (not mapNonEmpty!19748) b_and!338567 b_and!338573 (not mapNonEmpty!19746) (not b_next!128057) (not b!4289848) (not b!4289866) (not start!411982) (not b_next!128055) (not b_next!128063) (not b!4289853) (not b!4289849) (not b!4289850) (not b!4289857) (not b!4289852) (not mapNonEmpty!19747) (not b!4289854) (not b_next!128061) (not b!4289858) b_and!338571 (not b!4289851) (not b!4289863) b_and!338577 (not b_next!128059) (not b!4289872) (not setNonEmpty!26357) b_and!338575 (not b!4289871))
(check-sat (not b_next!128065) b_and!338569 b_and!338567 b_and!338573 b_and!338577 (not b_next!128059) (not b_next!128057) b_and!338575 (not b_next!128055) (not b_next!128063) (not b_next!128061) b_and!338571)
