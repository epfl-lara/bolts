; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206914 () Bool)

(assert start!206914)

(declare-fun b!2119575 () Bool)

(declare-fun b_free!61469 () Bool)

(declare-fun b_next!62173 () Bool)

(assert (=> b!2119575 (= b_free!61469 (not b_next!62173))))

(declare-fun tp!648065 () Bool)

(declare-fun b_and!171049 () Bool)

(assert (=> b!2119575 (= tp!648065 b_and!171049)))

(declare-fun b!2119567 () Bool)

(declare-fun b_free!61471 () Bool)

(declare-fun b_next!62175 () Bool)

(assert (=> b!2119567 (= b_free!61471 (not b_next!62175))))

(declare-fun tp!648053 () Bool)

(declare-fun b_and!171051 () Bool)

(assert (=> b!2119567 (= tp!648053 b_and!171051)))

(declare-fun b!2119566 () Bool)

(declare-fun b_free!61473 () Bool)

(declare-fun b_next!62177 () Bool)

(assert (=> b!2119566 (= b_free!61473 (not b_next!62177))))

(declare-fun tp!648048 () Bool)

(declare-fun b_and!171053 () Bool)

(assert (=> b!2119566 (= tp!648048 b_and!171053)))

(declare-fun b!2119553 () Bool)

(declare-fun b_free!61475 () Bool)

(declare-fun b_next!62179 () Bool)

(assert (=> b!2119553 (= b_free!61475 (not b_next!62179))))

(declare-fun tp!648044 () Bool)

(declare-fun b_and!171055 () Bool)

(assert (=> b!2119553 (= tp!648044 b_and!171055)))

(declare-fun b!2119574 () Bool)

(declare-fun b_free!61477 () Bool)

(declare-fun b_next!62181 () Bool)

(assert (=> b!2119574 (= b_free!61477 (not b_next!62181))))

(declare-fun tp!648060 () Bool)

(declare-fun b_and!171057 () Bool)

(assert (=> b!2119574 (= tp!648060 b_and!171057)))

(declare-fun b!2119552 () Bool)

(declare-fun b_free!61479 () Bool)

(declare-fun b_next!62183 () Bool)

(assert (=> b!2119552 (= b_free!61479 (not b_next!62183))))

(declare-fun tp!648049 () Bool)

(declare-fun b_and!171059 () Bool)

(assert (=> b!2119552 (= tp!648049 b_and!171059)))

(declare-fun mapNonEmpty!11678 () Bool)

(declare-fun mapRes!11680 () Bool)

(declare-fun tp!648056 () Bool)

(declare-fun tp!648063 () Bool)

(assert (=> mapNonEmpty!11678 (= mapRes!11680 (and tp!648056 tp!648063))))

(declare-datatypes ((C!11448 0))(
  ( (C!11449 (val!6710 Int)) )
))
(declare-datatypes ((Regex!5651 0))(
  ( (ElementMatch!5651 (c!339649 C!11448)) (Concat!9953 (regOne!11814 Regex!5651) (regTwo!11814 Regex!5651)) (EmptyExpr!5651) (Star!5651 (reg!5980 Regex!5651)) (EmptyLang!5651) (Union!5651 (regOne!11815 Regex!5651) (regTwo!11815 Regex!5651)) )
))
(declare-datatypes ((List!23713 0))(
  ( (Nil!23629) (Cons!23629 (h!29030 Regex!5651) (t!196229 List!23713)) )
))
(declare-datatypes ((Context!2442 0))(
  ( (Context!2443 (exprs!1721 List!23713)) )
))
(declare-datatypes ((tuple3!2840 0))(
  ( (tuple3!2841 (_1!13484 Regex!5651) (_2!13484 Context!2442) (_3!1890 C!11448)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23188 0))(
  ( (tuple2!23189 (_1!13485 tuple3!2840) (_2!13485 (InoxSet Context!2442))) )
))
(declare-datatypes ((List!23714 0))(
  ( (Nil!23630) (Cons!23630 (h!29031 tuple2!23188) (t!196230 List!23714)) )
))
(declare-datatypes ((array!8309 0))(
  ( (array!8310 (arr!3686 (Array (_ BitVec 32) (_ BitVec 64))) (size!18461 (_ BitVec 32))) )
))
(declare-datatypes ((array!8311 0))(
  ( (array!8312 (arr!3687 (Array (_ BitVec 32) List!23714)) (size!18462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4828 0))(
  ( (LongMapFixedSize!4829 (defaultEntry!2779 Int) (mask!6555 (_ BitVec 32)) (extraKeys!2662 (_ BitVec 32)) (zeroValue!2672 List!23714) (minValue!2672 List!23714) (_size!4879 (_ BitVec 32)) (_keys!2711 array!8309) (_values!2694 array!8311) (_vacant!2475 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9481 0))(
  ( (Cell!9482 (v!28159 LongMapFixedSize!4828)) )
))
(declare-datatypes ((MutLongMap!2414 0))(
  ( (LongMap!2414 (underlying!5023 Cell!9481)) (MutLongMapExt!2413 (__x!15418 Int)) )
))
(declare-datatypes ((Cell!9483 0))(
  ( (Cell!9484 (v!28160 MutLongMap!2414)) )
))
(declare-datatypes ((Hashable!2328 0))(
  ( (HashableExt!2327 (__x!15419 Int)) )
))
(declare-datatypes ((MutableMap!2328 0))(
  ( (MutableMapExt!2327 (__x!15420 Int)) (HashMap!2328 (underlying!5024 Cell!9483) (hashF!4251 Hashable!2328) (_size!4880 (_ BitVec 32)) (defaultValue!2490 Int)) )
))
(declare-datatypes ((CacheDown!1598 0))(
  ( (CacheDown!1599 (cache!2709 MutableMap!2328)) )
))
(declare-fun cacheDown!1110 () CacheDown!1598)

(declare-fun mapRest!11678 () (Array (_ BitVec 32) List!23714))

(declare-fun mapKey!11678 () (_ BitVec 32))

(declare-fun mapValue!11679 () List!23714)

(assert (=> mapNonEmpty!11678 (= (arr!3687 (_values!2694 (v!28159 (underlying!5023 (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))))) (store mapRest!11678 mapKey!11678 mapValue!11679))))

(declare-fun tp!648067 () Bool)

(declare-fun setRes!14620 () Bool)

(declare-fun e!1349499 () Bool)

(declare-fun setElem!14620 () Context!2442)

(declare-fun setNonEmpty!14620 () Bool)

(declare-fun inv!31218 (Context!2442) Bool)

(assert (=> setNonEmpty!14620 (= setRes!14620 (and tp!648067 (inv!31218 setElem!14620) e!1349499))))

(declare-fun z!3883 () (InoxSet Context!2442))

(declare-fun setRest!14620 () (InoxSet Context!2442))

(assert (=> setNonEmpty!14620 (= z!3883 ((_ map or) (store ((as const (Array Context!2442 Bool)) false) setElem!14620 true) setRest!14620))))

(declare-fun b!2119549 () Bool)

(declare-fun e!1349478 () Bool)

(declare-fun tp!648043 () Bool)

(declare-fun mapRes!11679 () Bool)

(assert (=> b!2119549 (= e!1349478 (and tp!648043 mapRes!11679))))

(declare-fun condMapEmpty!11679 () Bool)

(declare-datatypes ((tuple2!23190 0))(
  ( (tuple2!23191 (_1!13486 Context!2442) (_2!13486 C!11448)) )
))
(declare-datatypes ((tuple2!23192 0))(
  ( (tuple2!23193 (_1!13487 tuple2!23190) (_2!13487 (InoxSet Context!2442))) )
))
(declare-datatypes ((List!23715 0))(
  ( (Nil!23631) (Cons!23631 (h!29032 tuple2!23192) (t!196231 List!23715)) )
))
(declare-datatypes ((array!8313 0))(
  ( (array!8314 (arr!3688 (Array (_ BitVec 32) List!23715)) (size!18463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4830 0))(
  ( (LongMapFixedSize!4831 (defaultEntry!2780 Int) (mask!6556 (_ BitVec 32)) (extraKeys!2663 (_ BitVec 32)) (zeroValue!2673 List!23715) (minValue!2673 List!23715) (_size!4881 (_ BitVec 32)) (_keys!2712 array!8309) (_values!2695 array!8313) (_vacant!2476 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9485 0))(
  ( (Cell!9486 (v!28161 LongMapFixedSize!4830)) )
))
(declare-datatypes ((Hashable!2329 0))(
  ( (HashableExt!2328 (__x!15421 Int)) )
))
(declare-datatypes ((MutLongMap!2415 0))(
  ( (LongMap!2415 (underlying!5025 Cell!9485)) (MutLongMapExt!2414 (__x!15422 Int)) )
))
(declare-datatypes ((Cell!9487 0))(
  ( (Cell!9488 (v!28162 MutLongMap!2415)) )
))
(declare-datatypes ((MutableMap!2329 0))(
  ( (MutableMapExt!2328 (__x!15423 Int)) (HashMap!2329 (underlying!5026 Cell!9487) (hashF!4252 Hashable!2329) (_size!4882 (_ BitVec 32)) (defaultValue!2491 Int)) )
))
(declare-datatypes ((CacheUp!1610 0))(
  ( (CacheUp!1611 (cache!2710 MutableMap!2329)) )
))
(declare-fun cacheUp!991 () CacheUp!1610)

(declare-fun mapDefault!11679 () List!23715)

(assert (=> b!2119549 (= condMapEmpty!11679 (= (arr!3688 (_values!2695 (v!28161 (underlying!5025 (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23715)) mapDefault!11679)))))

(declare-fun b!2119550 () Bool)

(declare-fun e!1349506 () Bool)

(declare-datatypes ((Hashable!2330 0))(
  ( (HashableExt!2329 (__x!15424 Int)) )
))
(declare-datatypes ((tuple3!2842 0))(
  ( (tuple3!2843 (_1!13488 (InoxSet Context!2442)) (_2!13488 Int) (_3!1891 Int)) )
))
(declare-datatypes ((tuple2!23194 0))(
  ( (tuple2!23195 (_1!13489 tuple3!2842) (_2!13489 Int)) )
))
(declare-datatypes ((List!23716 0))(
  ( (Nil!23632) (Cons!23632 (h!29033 tuple2!23194) (t!196232 List!23716)) )
))
(declare-datatypes ((array!8315 0))(
  ( (array!8316 (arr!3689 (Array (_ BitVec 32) List!23716)) (size!18464 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4832 0))(
  ( (LongMapFixedSize!4833 (defaultEntry!2781 Int) (mask!6557 (_ BitVec 32)) (extraKeys!2664 (_ BitVec 32)) (zeroValue!2674 List!23716) (minValue!2674 List!23716) (_size!4883 (_ BitVec 32)) (_keys!2713 array!8309) (_values!2696 array!8315) (_vacant!2477 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9489 0))(
  ( (Cell!9490 (v!28163 LongMapFixedSize!4832)) )
))
(declare-datatypes ((List!23717 0))(
  ( (Nil!23633) (Cons!23633 (h!29034 C!11448) (t!196233 List!23717)) )
))
(declare-datatypes ((IArray!15585 0))(
  ( (IArray!15586 (innerList!7850 List!23717)) )
))
(declare-datatypes ((MutLongMap!2416 0))(
  ( (LongMap!2416 (underlying!5027 Cell!9489)) (MutLongMapExt!2415 (__x!15425 Int)) )
))
(declare-datatypes ((Cell!9491 0))(
  ( (Cell!9492 (v!28164 MutLongMap!2416)) )
))
(declare-datatypes ((Conc!7790 0))(
  ( (Node!7790 (left!18292 Conc!7790) (right!18622 Conc!7790) (csize!15810 Int) (cheight!8001 Int)) (Leaf!11383 (xs!10732 IArray!15585) (csize!15811 Int)) (Empty!7790) )
))
(declare-datatypes ((BalanceConc!15342 0))(
  ( (BalanceConc!15343 (c!339650 Conc!7790)) )
))
(declare-datatypes ((MutableMap!2330 0))(
  ( (MutableMapExt!2329 (__x!15426 Int)) (HashMap!2330 (underlying!5028 Cell!9491) (hashF!4253 Hashable!2330) (_size!4884 (_ BitVec 32)) (defaultValue!2492 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!572 0))(
  ( (CacheFurthestNullable!573 (cache!2711 MutableMap!2330) (totalInput!2885 BalanceConc!15342)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!572)

(declare-fun tp!648058 () Bool)

(declare-fun inv!31219 (Conc!7790) Bool)

(assert (=> b!2119550 (= e!1349506 (and (inv!31219 (c!339650 (totalInput!2885 cacheFurthestNullable!130))) tp!648058))))

(declare-fun mapIsEmpty!11678 () Bool)

(assert (=> mapIsEmpty!11678 mapRes!11679))

(declare-fun b!2119551 () Bool)

(declare-fun e!1349487 () Bool)

(declare-fun e!1349493 () Bool)

(declare-fun lt!794517 () MutLongMap!2414)

(get-info :version)

(assert (=> b!2119551 (= e!1349487 (and e!1349493 ((_ is LongMap!2414) lt!794517)))))

(assert (=> b!2119551 (= lt!794517 (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))))

(declare-fun e!1349496 () Bool)

(declare-fun e!1349479 () Bool)

(assert (=> b!2119552 (= e!1349496 (and e!1349479 tp!648049))))

(declare-fun e!1349494 () Bool)

(assert (=> b!2119553 (= e!1349494 (and e!1349487 tp!648044))))

(declare-fun setIsEmpty!14620 () Bool)

(assert (=> setIsEmpty!14620 setRes!14620))

(declare-fun b!2119554 () Bool)

(declare-fun e!1349501 () Bool)

(assert (=> b!2119554 (= e!1349493 e!1349501)))

(declare-fun b!2119555 () Bool)

(declare-fun tp!648066 () Bool)

(assert (=> b!2119555 (= e!1349499 tp!648066)))

(declare-fun b!2119556 () Bool)

(declare-fun e!1349497 () Bool)

(declare-fun tp!648059 () Bool)

(assert (=> b!2119556 (= e!1349497 (and tp!648059 mapRes!11680))))

(declare-fun condMapEmpty!11678 () Bool)

(declare-fun mapDefault!11680 () List!23714)

(assert (=> b!2119556 (= condMapEmpty!11678 (= (arr!3687 (_values!2694 (v!28159 (underlying!5023 (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23714)) mapDefault!11680)))))

(declare-fun b!2119557 () Bool)

(declare-fun e!1349498 () Bool)

(declare-fun e!1349503 () Bool)

(assert (=> b!2119557 (= e!1349498 e!1349503)))

(declare-fun b!2119558 () Bool)

(declare-fun res!918732 () Bool)

(declare-fun e!1349495 () Bool)

(assert (=> b!2119558 (=> (not res!918732) (not e!1349495))))

(declare-fun valid!1904 (CacheDown!1598) Bool)

(assert (=> b!2119558 (= res!918732 (valid!1904 cacheDown!1110))))

(declare-fun b!2119559 () Bool)

(declare-fun e!1349480 () Bool)

(declare-fun input!5507 () BalanceConc!15342)

(declare-fun tp!648050 () Bool)

(assert (=> b!2119559 (= e!1349480 (and (inv!31219 (c!339650 input!5507)) tp!648050))))

(declare-fun e!1349484 () Bool)

(declare-fun b!2119560 () Bool)

(declare-fun e!1349504 () Bool)

(declare-fun inv!31220 (BalanceConc!15342) Bool)

(assert (=> b!2119560 (= e!1349504 (and e!1349484 (inv!31220 (totalInput!2885 cacheFurthestNullable!130)) e!1349506))))

(declare-fun b!2119561 () Bool)

(declare-fun e!1349489 () Bool)

(declare-fun totalInput!886 () BalanceConc!15342)

(declare-fun tp!648068 () Bool)

(assert (=> b!2119561 (= e!1349489 (and (inv!31219 (c!339650 totalInput!886)) tp!648068))))

(declare-fun b!2119562 () Bool)

(declare-fun res!918733 () Bool)

(assert (=> b!2119562 (=> (not res!918733) (not e!1349495))))

(declare-fun valid!1905 (CacheUp!1610) Bool)

(assert (=> b!2119562 (= res!918733 (valid!1905 cacheUp!991))))

(declare-fun lt!794514 () Int)

(declare-fun lt!794513 () Int)

(declare-fun b!2119563 () Bool)

(declare-fun lt!794515 () Int)

(assert (=> b!2119563 (= e!1349495 (and (>= lt!794514 0) (<= lt!794514 lt!794513) (or (< lt!794515 (- 1)) (>= lt!794515 lt!794514))))))

(declare-fun e!1349485 () Int)

(assert (=> b!2119563 (= lt!794515 e!1349485)))

(declare-fun c!339648 () Bool)

(declare-fun nullableZipper!57 ((InoxSet Context!2442)) Bool)

(assert (=> b!2119563 (= c!339648 (nullableZipper!57 z!3883))))

(declare-fun size!18465 (BalanceConc!15342) Int)

(assert (=> b!2119563 (= lt!794514 (- lt!794513 (size!18465 input!5507)))))

(assert (=> b!2119563 (= lt!794513 (size!18465 totalInput!886))))

(declare-fun b!2119564 () Bool)

(assert (=> b!2119564 (= e!1349485 (- lt!794514 1))))

(declare-fun mapIsEmpty!11679 () Bool)

(assert (=> mapIsEmpty!11679 mapRes!11680))

(declare-fun mapNonEmpty!11679 () Bool)

(declare-fun tp!648057 () Bool)

(declare-fun tp!648047 () Bool)

(assert (=> mapNonEmpty!11679 (= mapRes!11679 (and tp!648057 tp!648047))))

(declare-fun mapKey!11680 () (_ BitVec 32))

(declare-fun mapValue!11680 () List!23715)

(declare-fun mapRest!11679 () (Array (_ BitVec 32) List!23715))

(assert (=> mapNonEmpty!11679 (= (arr!3688 (_values!2695 (v!28161 (underlying!5025 (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))))) (store mapRest!11679 mapKey!11680 mapValue!11680))))

(declare-fun b!2119565 () Bool)

(declare-fun res!918734 () Bool)

(assert (=> b!2119565 (=> (not res!918734) (not e!1349495))))

(declare-fun valid!1906 (CacheFurthestNullable!572) Bool)

(assert (=> b!2119565 (= res!918734 (valid!1906 cacheFurthestNullable!130))))

(declare-fun tp!648045 () Bool)

(declare-fun e!1349507 () Bool)

(declare-fun tp!648054 () Bool)

(declare-fun array_inv!2644 (array!8309) Bool)

(declare-fun array_inv!2645 (array!8311) Bool)

(assert (=> b!2119566 (= e!1349507 (and tp!648048 tp!648054 tp!648045 (array_inv!2644 (_keys!2711 (v!28159 (underlying!5023 (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))))) (array_inv!2645 (_values!2694 (v!28159 (underlying!5023 (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))))) e!1349497))))

(declare-fun e!1349500 () Bool)

(assert (=> b!2119567 (= e!1349484 (and e!1349500 tp!648053))))

(declare-fun b!2119568 () Bool)

(declare-fun e!1349492 () Bool)

(assert (=> b!2119568 (= e!1349492 e!1349494)))

(declare-fun b!2119569 () Bool)

(declare-fun e!1349483 () Bool)

(assert (=> b!2119569 (= e!1349483 e!1349496)))

(declare-fun b!2119570 () Bool)

(assert (=> b!2119570 (= e!1349485 (- 1))))

(declare-fun res!918731 () Bool)

(assert (=> start!206914 (=> (not res!918731) (not e!1349495))))

(declare-fun isSuffix!610 (List!23717 List!23717) Bool)

(declare-fun list!9516 (BalanceConc!15342) List!23717)

(assert (=> start!206914 (= res!918731 (isSuffix!610 (list!9516 input!5507) (list!9516 totalInput!886)))))

(assert (=> start!206914 e!1349495))

(declare-fun inv!31221 (CacheFurthestNullable!572) Bool)

(assert (=> start!206914 (and (inv!31221 cacheFurthestNullable!130) e!1349504)))

(declare-fun condSetEmpty!14620 () Bool)

(assert (=> start!206914 (= condSetEmpty!14620 (= z!3883 ((as const (Array Context!2442 Bool)) false)))))

(assert (=> start!206914 setRes!14620))

(assert (=> start!206914 (and (inv!31220 input!5507) e!1349480)))

(declare-fun inv!31222 (CacheDown!1598) Bool)

(assert (=> start!206914 (and (inv!31222 cacheDown!1110) e!1349492)))

(declare-fun inv!31223 (CacheUp!1610) Bool)

(assert (=> start!206914 (and (inv!31223 cacheUp!991) e!1349483)))

(assert (=> start!206914 (and (inv!31220 totalInput!886) e!1349489)))

(declare-fun b!2119571 () Bool)

(assert (=> b!2119571 (= e!1349501 e!1349507)))

(declare-fun b!2119572 () Bool)

(declare-fun e!1349482 () Bool)

(assert (=> b!2119572 (= e!1349482 e!1349498)))

(declare-fun b!2119573 () Bool)

(declare-fun e!1349491 () Bool)

(declare-fun e!1349505 () Bool)

(assert (=> b!2119573 (= e!1349491 e!1349505)))

(declare-fun tp!648052 () Bool)

(declare-fun e!1349481 () Bool)

(declare-fun tp!648062 () Bool)

(declare-fun array_inv!2646 (array!8313) Bool)

(assert (=> b!2119574 (= e!1349481 (and tp!648060 tp!648052 tp!648062 (array_inv!2644 (_keys!2712 (v!28161 (underlying!5025 (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))))) (array_inv!2646 (_values!2695 (v!28161 (underlying!5025 (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))))) e!1349478))))

(declare-fun tp!648046 () Bool)

(declare-fun tp!648051 () Bool)

(declare-fun e!1349488 () Bool)

(declare-fun array_inv!2647 (array!8315) Bool)

(assert (=> b!2119575 (= e!1349503 (and tp!648065 tp!648046 tp!648051 (array_inv!2644 (_keys!2713 (v!28163 (underlying!5027 (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))))) (array_inv!2647 (_values!2696 (v!28163 (underlying!5027 (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))))) e!1349488))))

(declare-fun mapIsEmpty!11680 () Bool)

(declare-fun mapRes!11678 () Bool)

(assert (=> mapIsEmpty!11680 mapRes!11678))

(declare-fun mapNonEmpty!11680 () Bool)

(declare-fun tp!648064 () Bool)

(declare-fun tp!648055 () Bool)

(assert (=> mapNonEmpty!11680 (= mapRes!11678 (and tp!648064 tp!648055))))

(declare-fun mapRest!11680 () (Array (_ BitVec 32) List!23716))

(declare-fun mapKey!11679 () (_ BitVec 32))

(declare-fun mapValue!11678 () List!23716)

(assert (=> mapNonEmpty!11680 (= (arr!3689 (_values!2696 (v!28163 (underlying!5027 (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))))) (store mapRest!11680 mapKey!11679 mapValue!11678))))

(declare-fun b!2119576 () Bool)

(declare-fun res!918735 () Bool)

(assert (=> b!2119576 (=> (not res!918735) (not e!1349495))))

(assert (=> b!2119576 (= res!918735 (= (totalInput!2885 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2119577 () Bool)

(declare-fun tp!648061 () Bool)

(assert (=> b!2119577 (= e!1349488 (and tp!648061 mapRes!11678))))

(declare-fun condMapEmpty!11680 () Bool)

(declare-fun mapDefault!11678 () List!23716)

(assert (=> b!2119577 (= condMapEmpty!11680 (= (arr!3689 (_values!2696 (v!28163 (underlying!5027 (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23716)) mapDefault!11678)))))

(declare-fun b!2119578 () Bool)

(assert (=> b!2119578 (= e!1349505 e!1349481)))

(declare-fun b!2119579 () Bool)

(declare-fun lt!794512 () MutLongMap!2416)

(assert (=> b!2119579 (= e!1349500 (and e!1349482 ((_ is LongMap!2416) lt!794512)))))

(assert (=> b!2119579 (= lt!794512 (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))))

(declare-fun b!2119580 () Bool)

(declare-fun lt!794516 () MutLongMap!2415)

(assert (=> b!2119580 (= e!1349479 (and e!1349491 ((_ is LongMap!2415) lt!794516)))))

(assert (=> b!2119580 (= lt!794516 (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))))

(assert (= (and start!206914 res!918731) b!2119562))

(assert (= (and b!2119562 res!918733) b!2119558))

(assert (= (and b!2119558 res!918732) b!2119565))

(assert (= (and b!2119565 res!918734) b!2119576))

(assert (= (and b!2119576 res!918735) b!2119563))

(assert (= (and b!2119563 c!339648) b!2119564))

(assert (= (and b!2119563 (not c!339648)) b!2119570))

(assert (= (and b!2119577 condMapEmpty!11680) mapIsEmpty!11680))

(assert (= (and b!2119577 (not condMapEmpty!11680)) mapNonEmpty!11680))

(assert (= b!2119575 b!2119577))

(assert (= b!2119557 b!2119575))

(assert (= b!2119572 b!2119557))

(assert (= (and b!2119579 ((_ is LongMap!2416) (v!28164 (underlying!5028 (cache!2711 cacheFurthestNullable!130))))) b!2119572))

(assert (= b!2119567 b!2119579))

(assert (= (and b!2119560 ((_ is HashMap!2330) (cache!2711 cacheFurthestNullable!130))) b!2119567))

(assert (= b!2119560 b!2119550))

(assert (= start!206914 b!2119560))

(assert (= (and start!206914 condSetEmpty!14620) setIsEmpty!14620))

(assert (= (and start!206914 (not condSetEmpty!14620)) setNonEmpty!14620))

(assert (= setNonEmpty!14620 b!2119555))

(assert (= start!206914 b!2119559))

(assert (= (and b!2119556 condMapEmpty!11678) mapIsEmpty!11679))

(assert (= (and b!2119556 (not condMapEmpty!11678)) mapNonEmpty!11678))

(assert (= b!2119566 b!2119556))

(assert (= b!2119571 b!2119566))

(assert (= b!2119554 b!2119571))

(assert (= (and b!2119551 ((_ is LongMap!2414) (v!28160 (underlying!5024 (cache!2709 cacheDown!1110))))) b!2119554))

(assert (= b!2119553 b!2119551))

(assert (= (and b!2119568 ((_ is HashMap!2328) (cache!2709 cacheDown!1110))) b!2119553))

(assert (= start!206914 b!2119568))

(assert (= (and b!2119549 condMapEmpty!11679) mapIsEmpty!11678))

(assert (= (and b!2119549 (not condMapEmpty!11679)) mapNonEmpty!11679))

(assert (= b!2119574 b!2119549))

(assert (= b!2119578 b!2119574))

(assert (= b!2119573 b!2119578))

(assert (= (and b!2119580 ((_ is LongMap!2415) (v!28162 (underlying!5026 (cache!2710 cacheUp!991))))) b!2119573))

(assert (= b!2119552 b!2119580))

(assert (= (and b!2119569 ((_ is HashMap!2329) (cache!2710 cacheUp!991))) b!2119552))

(assert (= start!206914 b!2119569))

(assert (= start!206914 b!2119561))

(declare-fun m!2574123 () Bool)

(assert (=> mapNonEmpty!11678 m!2574123))

(declare-fun m!2574125 () Bool)

(assert (=> b!2119565 m!2574125))

(declare-fun m!2574127 () Bool)

(assert (=> start!206914 m!2574127))

(declare-fun m!2574129 () Bool)

(assert (=> start!206914 m!2574129))

(declare-fun m!2574131 () Bool)

(assert (=> start!206914 m!2574131))

(declare-fun m!2574133 () Bool)

(assert (=> start!206914 m!2574133))

(declare-fun m!2574135 () Bool)

(assert (=> start!206914 m!2574135))

(declare-fun m!2574137 () Bool)

(assert (=> start!206914 m!2574137))

(assert (=> start!206914 m!2574133))

(assert (=> start!206914 m!2574127))

(declare-fun m!2574139 () Bool)

(assert (=> start!206914 m!2574139))

(declare-fun m!2574141 () Bool)

(assert (=> start!206914 m!2574141))

(declare-fun m!2574143 () Bool)

(assert (=> b!2119561 m!2574143))

(declare-fun m!2574145 () Bool)

(assert (=> setNonEmpty!14620 m!2574145))

(declare-fun m!2574147 () Bool)

(assert (=> b!2119560 m!2574147))

(declare-fun m!2574149 () Bool)

(assert (=> b!2119566 m!2574149))

(declare-fun m!2574151 () Bool)

(assert (=> b!2119566 m!2574151))

(declare-fun m!2574153 () Bool)

(assert (=> b!2119574 m!2574153))

(declare-fun m!2574155 () Bool)

(assert (=> b!2119574 m!2574155))

(declare-fun m!2574157 () Bool)

(assert (=> b!2119562 m!2574157))

(declare-fun m!2574159 () Bool)

(assert (=> b!2119575 m!2574159))

(declare-fun m!2574161 () Bool)

(assert (=> b!2119575 m!2574161))

(declare-fun m!2574163 () Bool)

(assert (=> mapNonEmpty!11679 m!2574163))

(declare-fun m!2574165 () Bool)

(assert (=> b!2119559 m!2574165))

(declare-fun m!2574167 () Bool)

(assert (=> b!2119563 m!2574167))

(declare-fun m!2574169 () Bool)

(assert (=> b!2119563 m!2574169))

(declare-fun m!2574171 () Bool)

(assert (=> b!2119563 m!2574171))

(declare-fun m!2574173 () Bool)

(assert (=> b!2119558 m!2574173))

(declare-fun m!2574175 () Bool)

(assert (=> mapNonEmpty!11680 m!2574175))

(declare-fun m!2574177 () Bool)

(assert (=> b!2119550 m!2574177))

(check-sat (not b_next!62181) b_and!171057 b_and!171055 (not b!2119566) b_and!171053 (not b_next!62173) (not b!2119559) (not b!2119550) (not b!2119562) (not mapNonEmpty!11679) (not b_next!62183) (not start!206914) (not b_next!62175) b_and!171059 (not b!2119558) (not mapNonEmpty!11678) (not mapNonEmpty!11680) (not b!2119563) b_and!171049 (not b!2119574) (not b!2119560) b_and!171051 (not b!2119561) (not b_next!62177) (not b_next!62179) (not b!2119575) (not b!2119565) (not b!2119556) (not b!2119555) (not setNonEmpty!14620) (not b!2119577) (not b!2119549))
(check-sat (not b_next!62181) b_and!171057 b_and!171055 (not b_next!62183) b_and!171049 b_and!171053 b_and!171051 (not b_next!62177) (not b_next!62173) (not b_next!62179) (not b_next!62175) b_and!171059)
