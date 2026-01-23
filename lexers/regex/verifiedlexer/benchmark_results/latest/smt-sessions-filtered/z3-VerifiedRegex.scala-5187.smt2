; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266628 () Bool)

(assert start!266628)

(declare-fun b!2750642 () Bool)

(declare-fun b_free!77781 () Bool)

(declare-fun b_next!78485 () Bool)

(assert (=> b!2750642 (= b_free!77781 (not b_next!78485))))

(declare-fun tp!868704 () Bool)

(declare-fun b_and!202519 () Bool)

(assert (=> b!2750642 (= tp!868704 b_and!202519)))

(declare-fun b!2750655 () Bool)

(declare-fun b_free!77783 () Bool)

(declare-fun b_next!78487 () Bool)

(assert (=> b!2750655 (= b_free!77783 (not b_next!78487))))

(declare-fun tp!868703 () Bool)

(declare-fun b_and!202521 () Bool)

(assert (=> b!2750655 (= tp!868703 b_and!202521)))

(declare-fun b!2750649 () Bool)

(declare-fun b_free!77785 () Bool)

(declare-fun b_next!78489 () Bool)

(assert (=> b!2750649 (= b_free!77785 (not b_next!78489))))

(declare-fun tp!868696 () Bool)

(declare-fun b_and!202523 () Bool)

(assert (=> b!2750649 (= tp!868696 b_and!202523)))

(declare-fun b!2750650 () Bool)

(declare-fun b_free!77787 () Bool)

(declare-fun b_next!78491 () Bool)

(assert (=> b!2750650 (= b_free!77787 (not b_next!78491))))

(declare-fun tp!868693 () Bool)

(declare-fun b_and!202525 () Bool)

(assert (=> b!2750650 (= tp!868693 b_and!202525)))

(declare-fun b!2750638 () Bool)

(declare-fun e!1733961 () Bool)

(declare-datatypes ((C!16236 0))(
  ( (C!16237 (val!10052 Int)) )
))
(declare-datatypes ((Regex!8039 0))(
  ( (ElementMatch!8039 (c!445077 C!16236)) (Concat!13127 (regOne!16590 Regex!8039) (regTwo!16590 Regex!8039)) (EmptyExpr!8039) (Star!8039 (reg!8368 Regex!8039)) (EmptyLang!8039) (Union!8039 (regOne!16591 Regex!8039) (regTwo!16591 Regex!8039)) )
))
(declare-datatypes ((List!31901 0))(
  ( (Nil!31801) (Cons!31801 (h!37221 Regex!8039) (t!228005 List!31901)) )
))
(declare-datatypes ((Context!4514 0))(
  ( (Context!4515 (exprs!2757 List!31901)) )
))
(declare-datatypes ((tuple2!31742 0))(
  ( (tuple2!31743 (_1!18609 Context!4514) (_2!18609 C!16236)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31744 0))(
  ( (tuple2!31745 (_1!18610 tuple2!31742) (_2!18610 (InoxSet Context!4514))) )
))
(declare-datatypes ((List!31902 0))(
  ( (Nil!31802) (Cons!31802 (h!37222 tuple2!31744) (t!228006 List!31902)) )
))
(declare-datatypes ((List!31903 0))(
  ( (Nil!31803) (Cons!31803 (h!37223 C!16236) (t!228007 List!31903)) )
))
(declare-datatypes ((IArray!19849 0))(
  ( (IArray!19850 (innerList!9982 List!31903)) )
))
(declare-datatypes ((array!13126 0))(
  ( (array!13127 (arr!5858 (Array (_ BitVec 32) (_ BitVec 64))) (size!24557 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3602 0))(
  ( (HashableExt!3601 (__x!20708 Int)) )
))
(declare-datatypes ((array!13128 0))(
  ( (array!13129 (arr!5859 (Array (_ BitVec 32) List!31902)) (size!24558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7372 0))(
  ( (LongMapFixedSize!7373 (defaultEntry!4071 Int) (mask!9442 (_ BitVec 32)) (extraKeys!3935 (_ BitVec 32)) (zeroValue!3945 List!31902) (minValue!3945 List!31902) (_size!7415 (_ BitVec 32)) (_keys!3986 array!13126) (_values!3967 array!13128) (_vacant!3747 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14553 0))(
  ( (Cell!14554 (v!33411 LongMapFixedSize!7372)) )
))
(declare-datatypes ((MutLongMap!3686 0))(
  ( (LongMap!3686 (underlying!7575 Cell!14553)) (MutLongMapExt!3685 (__x!20709 Int)) )
))
(declare-datatypes ((tuple3!4536 0))(
  ( (tuple3!4537 (_1!18611 Regex!8039) (_2!18611 Context!4514) (_3!2738 C!16236)) )
))
(declare-datatypes ((tuple2!31746 0))(
  ( (tuple2!31747 (_1!18612 tuple3!4536) (_2!18612 (InoxSet Context!4514))) )
))
(declare-datatypes ((List!31904 0))(
  ( (Nil!31804) (Cons!31804 (h!37224 tuple2!31746) (t!228008 List!31904)) )
))
(declare-datatypes ((array!13130 0))(
  ( (array!13131 (arr!5860 (Array (_ BitVec 32) List!31904)) (size!24559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7374 0))(
  ( (LongMapFixedSize!7375 (defaultEntry!4072 Int) (mask!9443 (_ BitVec 32)) (extraKeys!3936 (_ BitVec 32)) (zeroValue!3946 List!31904) (minValue!3946 List!31904) (_size!7416 (_ BitVec 32)) (_keys!3987 array!13126) (_values!3968 array!13130) (_vacant!3748 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14555 0))(
  ( (Cell!14556 (v!33412 MutLongMap!3686)) )
))
(declare-datatypes ((Conc!9922 0))(
  ( (Node!9922 (left!24303 Conc!9922) (right!24633 Conc!9922) (csize!20074 Int) (cheight!10133 Int)) (Leaf!15110 (xs!13029 IArray!19849) (csize!20075 Int)) (Empty!9922) )
))
(declare-datatypes ((BalanceConc!19458 0))(
  ( (BalanceConc!19459 (c!445078 Conc!9922)) )
))
(declare-datatypes ((tuple2!31748 0))(
  ( (tuple2!31749 (_1!18613 BalanceConc!19458) (_2!18613 BalanceConc!19458)) )
))
(declare-datatypes ((Cell!14557 0))(
  ( (Cell!14558 (v!33413 LongMapFixedSize!7374)) )
))
(declare-datatypes ((MutLongMap!3687 0))(
  ( (LongMap!3687 (underlying!7576 Cell!14557)) (MutLongMapExt!3686 (__x!20710 Int)) )
))
(declare-datatypes ((Cell!14559 0))(
  ( (Cell!14560 (v!33414 MutLongMap!3687)) )
))
(declare-datatypes ((Hashable!3603 0))(
  ( (HashableExt!3602 (__x!20711 Int)) )
))
(declare-datatypes ((MutableMap!3592 0))(
  ( (MutableMapExt!3591 (__x!20712 Int)) (HashMap!3592 (underlying!7577 Cell!14559) (hashF!5634 Hashable!3603) (_size!7417 (_ BitVec 32)) (defaultValue!3763 Int)) )
))
(declare-datatypes ((MutableMap!3593 0))(
  ( (MutableMapExt!3592 (__x!20713 Int)) (HashMap!3593 (underlying!7578 Cell!14555) (hashF!5635 Hashable!3602) (_size!7418 (_ BitVec 32)) (defaultValue!3764 Int)) )
))
(declare-datatypes ((CacheUp!2298 0))(
  ( (CacheUp!2299 (cache!3735 MutableMap!3593)) )
))
(declare-datatypes ((CacheDown!2418 0))(
  ( (CacheDown!2419 (cache!3736 MutableMap!3592)) )
))
(declare-datatypes ((tuple3!4538 0))(
  ( (tuple3!4539 (_1!18614 tuple2!31748) (_2!18614 CacheUp!2298) (_3!2739 CacheDown!2418)) )
))
(declare-fun lt!972634 () tuple3!4538)

(declare-fun lt!972635 () tuple2!31748)

(assert (=> b!2750638 (= e!1733961 (= (_1!18614 lt!972634) lt!972635))))

(declare-fun b!2750639 () Bool)

(declare-fun e!1733966 () Bool)

(declare-fun e!1733962 () Bool)

(assert (=> b!2750639 (= e!1733966 e!1733962)))

(declare-fun b!2750640 () Bool)

(declare-fun res!1153371 () Bool)

(declare-fun e!1733953 () Bool)

(assert (=> b!2750640 (=> (not res!1153371) (not e!1733953))))

(declare-fun valid!2859 (CacheDown!2418) Bool)

(assert (=> b!2750640 (= res!1153371 (valid!2859 (_3!2739 lt!972634)))))

(declare-fun b!2750641 () Bool)

(declare-fun e!1733956 () Bool)

(declare-fun e!1733967 () Bool)

(assert (=> b!2750641 (= e!1733956 e!1733967)))

(declare-fun tp!868690 () Bool)

(declare-fun tp!868695 () Bool)

(declare-fun e!1733957 () Bool)

(declare-fun cacheUp!1023 () CacheUp!2298)

(declare-fun e!1733954 () Bool)

(declare-fun array_inv!4188 (array!13126) Bool)

(declare-fun array_inv!4189 (array!13128) Bool)

(assert (=> b!2750642 (= e!1733954 (and tp!868704 tp!868695 tp!868690 (array_inv!4188 (_keys!3986 (v!33411 (underlying!7575 (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))))) (array_inv!4189 (_values!3967 (v!33411 (underlying!7575 (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))))) e!1733957))))

(declare-fun b!2750643 () Bool)

(declare-fun e!1733963 () Bool)

(declare-fun tp!868702 () Bool)

(assert (=> b!2750643 (= e!1733963 tp!868702)))

(declare-fun b!2750644 () Bool)

(declare-fun e!1733960 () Bool)

(declare-fun input!6491 () BalanceConc!19458)

(declare-fun tp!868687 () Bool)

(declare-fun inv!43188 (Conc!9922) Bool)

(assert (=> b!2750644 (= e!1733960 (and (inv!43188 (c!445078 input!6491)) tp!868687))))

(declare-fun b!2750645 () Bool)

(declare-fun e!1733965 () Bool)

(assert (=> b!2750645 (= e!1733965 e!1733954)))

(declare-fun b!2750646 () Bool)

(declare-fun res!1153375 () Bool)

(declare-fun e!1733951 () Bool)

(assert (=> b!2750646 (=> (not res!1153375) (not e!1733951))))

(declare-fun cacheDown!1142 () CacheDown!2418)

(assert (=> b!2750646 (= res!1153375 (valid!2859 cacheDown!1142))))

(declare-fun b!2750647 () Bool)

(declare-fun res!1153372 () Bool)

(assert (=> b!2750647 (=> (not res!1153372) (not e!1733951))))

(declare-fun valid!2860 (CacheUp!2298) Bool)

(assert (=> b!2750647 (= res!1153372 (valid!2860 cacheUp!1023))))

(declare-fun mapIsEmpty!16789 () Bool)

(declare-fun mapRes!16790 () Bool)

(assert (=> mapIsEmpty!16789 mapRes!16790))

(declare-fun b!2750648 () Bool)

(declare-fun e!1733959 () Bool)

(declare-fun lt!972638 () MutLongMap!3687)

(get-info :version)

(assert (=> b!2750648 (= e!1733959 (and e!1733956 ((_ is LongMap!3687) lt!972638)))))

(assert (=> b!2750648 (= lt!972638 (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))))

(assert (=> b!2750649 (= e!1733962 (and e!1733959 tp!868696))))

(declare-fun e!1733949 () Bool)

(declare-fun tp!868685 () Bool)

(declare-fun tp!868686 () Bool)

(declare-fun e!1733958 () Bool)

(declare-fun array_inv!4190 (array!13130) Bool)

(assert (=> b!2750650 (= e!1733958 (and tp!868693 tp!868686 tp!868685 (array_inv!4188 (_keys!3987 (v!33413 (underlying!7576 (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))))) (array_inv!4190 (_values!3968 (v!33413 (underlying!7576 (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))))) e!1733949))))

(declare-fun b!2750651 () Bool)

(declare-fun tp!868699 () Bool)

(assert (=> b!2750651 (= e!1733957 (and tp!868699 mapRes!16790))))

(declare-fun condMapEmpty!16789 () Bool)

(declare-fun mapDefault!16789 () List!31902)

(assert (=> b!2750651 (= condMapEmpty!16789 (= (arr!5859 (_values!3967 (v!33411 (underlying!7575 (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31902)) mapDefault!16789)))))

(declare-fun b!2750652 () Bool)

(assert (=> b!2750652 (= e!1733967 e!1733958)))

(declare-fun mapNonEmpty!16790 () Bool)

(declare-fun mapRes!16789 () Bool)

(declare-fun tp!868700 () Bool)

(declare-fun tp!868697 () Bool)

(assert (=> mapNonEmpty!16790 (= mapRes!16789 (and tp!868700 tp!868697))))

(declare-fun mapValue!16790 () List!31904)

(declare-fun mapRest!16789 () (Array (_ BitVec 32) List!31904))

(declare-fun mapKey!16789 () (_ BitVec 32))

(assert (=> mapNonEmpty!16790 (= (arr!5860 (_values!3968 (v!33413 (underlying!7576 (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))))) (store mapRest!16789 mapKey!16789 mapValue!16790))))

(declare-fun b!2750653 () Bool)

(declare-fun lt!972642 () Bool)

(assert (=> b!2750653 (= e!1733953 (not lt!972642))))

(declare-fun b!2750654 () Bool)

(declare-fun tp_is_empty!13981 () Bool)

(assert (=> b!2750654 (= e!1733963 tp_is_empty!13981)))

(declare-fun e!1733952 () Bool)

(declare-fun e!1733950 () Bool)

(assert (=> b!2750655 (= e!1733952 (and e!1733950 tp!868703))))

(declare-fun mapIsEmpty!16790 () Bool)

(assert (=> mapIsEmpty!16790 mapRes!16789))

(declare-fun b!2750656 () Bool)

(declare-fun e!1733955 () Bool)

(assert (=> b!2750656 (= e!1733955 e!1733965)))

(declare-fun mapNonEmpty!16789 () Bool)

(declare-fun tp!868689 () Bool)

(declare-fun tp!868691 () Bool)

(assert (=> mapNonEmpty!16789 (= mapRes!16790 (and tp!868689 tp!868691))))

(declare-fun mapValue!16789 () List!31902)

(declare-fun mapRest!16790 () (Array (_ BitVec 32) List!31902))

(declare-fun mapKey!16790 () (_ BitVec 32))

(assert (=> mapNonEmpty!16789 (= (arr!5859 (_values!3967 (v!33411 (underlying!7575 (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))))) (store mapRest!16790 mapKey!16790 mapValue!16789))))

(declare-fun res!1153373 () Bool)

(assert (=> start!266628 (=> (not res!1153373) (not e!1733951))))

(declare-fun r!15227 () Regex!8039)

(declare-fun validRegex!3333 (Regex!8039) Bool)

(assert (=> start!266628 (= res!1153373 (validRegex!3333 r!15227))))

(assert (=> start!266628 e!1733951))

(assert (=> start!266628 e!1733963))

(declare-fun e!1733947 () Bool)

(declare-fun inv!43189 (CacheUp!2298) Bool)

(assert (=> start!266628 (and (inv!43189 cacheUp!1023) e!1733947)))

(declare-fun inv!43190 (CacheDown!2418) Bool)

(assert (=> start!266628 (and (inv!43190 cacheDown!1142) e!1733966)))

(declare-fun inv!43191 (BalanceConc!19458) Bool)

(assert (=> start!266628 (and (inv!43191 input!6491) e!1733960)))

(declare-fun b!2750657 () Bool)

(declare-fun tp!868698 () Bool)

(declare-fun tp!868701 () Bool)

(assert (=> b!2750657 (= e!1733963 (and tp!868698 tp!868701))))

(declare-fun b!2750658 () Bool)

(declare-fun tp!868692 () Bool)

(assert (=> b!2750658 (= e!1733949 (and tp!868692 mapRes!16789))))

(declare-fun condMapEmpty!16790 () Bool)

(declare-fun mapDefault!16790 () List!31904)

(assert (=> b!2750658 (= condMapEmpty!16790 (= (arr!5860 (_values!3968 (v!33413 (underlying!7576 (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31904)) mapDefault!16790)))))

(declare-fun b!2750659 () Bool)

(declare-fun res!1153374 () Bool)

(assert (=> b!2750659 (=> (not res!1153374) (not e!1733961))))

(assert (=> b!2750659 (= res!1153374 (valid!2859 (_3!2739 lt!972634)))))

(declare-fun b!2750660 () Bool)

(declare-fun lt!972640 () MutLongMap!3686)

(assert (=> b!2750660 (= e!1733950 (and e!1733955 ((_ is LongMap!3686) lt!972640)))))

(assert (=> b!2750660 (= lt!972640 (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))))

(declare-fun b!2750661 () Bool)

(declare-fun tp!868694 () Bool)

(declare-fun tp!868688 () Bool)

(assert (=> b!2750661 (= e!1733963 (and tp!868694 tp!868688))))

(declare-fun b!2750662 () Bool)

(assert (=> b!2750662 (= e!1733951 (not e!1733953))))

(declare-fun res!1153376 () Bool)

(assert (=> b!2750662 (=> (not res!1153376) (not e!1733953))))

(declare-fun lt!972639 () tuple2!31748)

(assert (=> b!2750662 (= res!1153376 (= (_1!18614 lt!972634) lt!972639))))

(assert (=> b!2750662 e!1733961))

(declare-fun res!1153377 () Bool)

(assert (=> b!2750662 (=> (not res!1153377) (not e!1733961))))

(assert (=> b!2750662 (= res!1153377 (not lt!972642))))

(assert (=> b!2750662 (= lt!972642 (not (valid!2860 (_2!18614 lt!972634))))))

(declare-fun lt!972641 () (InoxSet Context!4514))

(declare-fun findLongestMatchZipperFastMem!3 ((InoxSet Context!4514) BalanceConc!19458 CacheUp!2298 CacheDown!2418) tuple3!4538)

(assert (=> b!2750662 (= lt!972634 (findLongestMatchZipperFastMem!3 lt!972641 input!6491 cacheUp!1023 cacheDown!1142))))

(assert (=> b!2750662 (= lt!972639 lt!972635)))

(declare-fun findLongestMatchZipperFast!4 ((InoxSet Context!4514) BalanceConc!19458) tuple2!31748)

(assert (=> b!2750662 (= lt!972635 (findLongestMatchZipperFast!4 lt!972641 input!6491))))

(declare-fun findLongestMatchWithZipperSequence!202 (Regex!8039 BalanceConc!19458) tuple2!31748)

(assert (=> b!2750662 (= lt!972639 (findLongestMatchWithZipperSequence!202 r!15227 input!6491))))

(declare-fun lt!972636 () List!31903)

(declare-fun sizeTr!149 (List!31903 Int) Int)

(declare-fun size!24560 (List!31903) Int)

(assert (=> b!2750662 (= (sizeTr!149 lt!972636 0) (size!24560 lt!972636))))

(declare-datatypes ((Unit!45580 0))(
  ( (Unit!45581) )
))
(declare-fun lt!972633 () Unit!45580)

(declare-fun lemmaSizeTrEqualsSize!148 (List!31903 Int) Unit!45580)

(assert (=> b!2750662 (= lt!972633 (lemmaSizeTrEqualsSize!148 lt!972636 0))))

(declare-datatypes ((tuple2!31750 0))(
  ( (tuple2!31751 (_1!18615 List!31903) (_2!18615 List!31903)) )
))
(declare-fun findLongestMatchZipper!6 ((InoxSet Context!4514) List!31903) tuple2!31750)

(declare-fun findLongestMatch!722 (Regex!8039 List!31903) tuple2!31750)

(assert (=> b!2750662 (= (findLongestMatchZipper!6 lt!972641 lt!972636) (findLongestMatch!722 r!15227 lt!972636))))

(declare-fun lt!972637 () Unit!45580)

(declare-fun longestMatchSameAsRegex!6 (Regex!8039 (InoxSet Context!4514) List!31903) Unit!45580)

(assert (=> b!2750662 (= lt!972637 (longestMatchSameAsRegex!6 r!15227 lt!972641 lt!972636))))

(declare-fun list!12024 (BalanceConc!19458) List!31903)

(assert (=> b!2750662 (= lt!972636 (list!12024 input!6491))))

(declare-fun focus!292 (Regex!8039) (InoxSet Context!4514))

(assert (=> b!2750662 (= lt!972641 (focus!292 r!15227))))

(declare-fun b!2750663 () Bool)

(assert (=> b!2750663 (= e!1733947 e!1733952)))

(assert (= (and start!266628 res!1153373) b!2750647))

(assert (= (and b!2750647 res!1153372) b!2750646))

(assert (= (and b!2750646 res!1153375) b!2750662))

(assert (= (and b!2750662 res!1153377) b!2750659))

(assert (= (and b!2750659 res!1153374) b!2750638))

(assert (= (and b!2750662 res!1153376) b!2750640))

(assert (= (and b!2750640 res!1153371) b!2750653))

(assert (= (and start!266628 ((_ is ElementMatch!8039) r!15227)) b!2750654))

(assert (= (and start!266628 ((_ is Concat!13127) r!15227)) b!2750661))

(assert (= (and start!266628 ((_ is Star!8039) r!15227)) b!2750643))

(assert (= (and start!266628 ((_ is Union!8039) r!15227)) b!2750657))

(assert (= (and b!2750651 condMapEmpty!16789) mapIsEmpty!16789))

(assert (= (and b!2750651 (not condMapEmpty!16789)) mapNonEmpty!16789))

(assert (= b!2750642 b!2750651))

(assert (= b!2750645 b!2750642))

(assert (= b!2750656 b!2750645))

(assert (= (and b!2750660 ((_ is LongMap!3686) (v!33412 (underlying!7578 (cache!3735 cacheUp!1023))))) b!2750656))

(assert (= b!2750655 b!2750660))

(assert (= (and b!2750663 ((_ is HashMap!3593) (cache!3735 cacheUp!1023))) b!2750655))

(assert (= start!266628 b!2750663))

(assert (= (and b!2750658 condMapEmpty!16790) mapIsEmpty!16790))

(assert (= (and b!2750658 (not condMapEmpty!16790)) mapNonEmpty!16790))

(assert (= b!2750650 b!2750658))

(assert (= b!2750652 b!2750650))

(assert (= b!2750641 b!2750652))

(assert (= (and b!2750648 ((_ is LongMap!3687) (v!33414 (underlying!7577 (cache!3736 cacheDown!1142))))) b!2750641))

(assert (= b!2750649 b!2750648))

(assert (= (and b!2750639 ((_ is HashMap!3592) (cache!3736 cacheDown!1142))) b!2750649))

(assert (= start!266628 b!2750639))

(assert (= start!266628 b!2750644))

(declare-fun m!3165569 () Bool)

(assert (=> b!2750659 m!3165569))

(declare-fun m!3165571 () Bool)

(assert (=> mapNonEmpty!16790 m!3165571))

(declare-fun m!3165573 () Bool)

(assert (=> b!2750650 m!3165573))

(declare-fun m!3165575 () Bool)

(assert (=> b!2750650 m!3165575))

(declare-fun m!3165577 () Bool)

(assert (=> b!2750646 m!3165577))

(declare-fun m!3165579 () Bool)

(assert (=> b!2750647 m!3165579))

(assert (=> b!2750640 m!3165569))

(declare-fun m!3165581 () Bool)

(assert (=> b!2750662 m!3165581))

(declare-fun m!3165583 () Bool)

(assert (=> b!2750662 m!3165583))

(declare-fun m!3165585 () Bool)

(assert (=> b!2750662 m!3165585))

(declare-fun m!3165587 () Bool)

(assert (=> b!2750662 m!3165587))

(declare-fun m!3165589 () Bool)

(assert (=> b!2750662 m!3165589))

(declare-fun m!3165591 () Bool)

(assert (=> b!2750662 m!3165591))

(declare-fun m!3165593 () Bool)

(assert (=> b!2750662 m!3165593))

(declare-fun m!3165595 () Bool)

(assert (=> b!2750662 m!3165595))

(declare-fun m!3165597 () Bool)

(assert (=> b!2750662 m!3165597))

(declare-fun m!3165599 () Bool)

(assert (=> b!2750662 m!3165599))

(declare-fun m!3165601 () Bool)

(assert (=> b!2750662 m!3165601))

(declare-fun m!3165603 () Bool)

(assert (=> b!2750662 m!3165603))

(declare-fun m!3165605 () Bool)

(assert (=> mapNonEmpty!16789 m!3165605))

(declare-fun m!3165607 () Bool)

(assert (=> b!2750642 m!3165607))

(declare-fun m!3165609 () Bool)

(assert (=> b!2750642 m!3165609))

(declare-fun m!3165611 () Bool)

(assert (=> b!2750644 m!3165611))

(declare-fun m!3165613 () Bool)

(assert (=> start!266628 m!3165613))

(declare-fun m!3165615 () Bool)

(assert (=> start!266628 m!3165615))

(declare-fun m!3165617 () Bool)

(assert (=> start!266628 m!3165617))

(declare-fun m!3165619 () Bool)

(assert (=> start!266628 m!3165619))

(check-sat (not b!2750643) b_and!202525 (not b!2750659) (not mapNonEmpty!16790) (not b!2750644) (not mapNonEmpty!16789) (not b!2750658) (not b!2750657) b_and!202519 (not b!2750661) (not b_next!78485) (not start!266628) (not b!2750662) b_and!202521 (not b!2750647) (not b!2750650) (not b!2750640) (not b!2750651) b_and!202523 (not b_next!78491) (not b!2750642) tp_is_empty!13981 (not b_next!78489) (not b_next!78487) (not b!2750646))
(check-sat b_and!202525 b_and!202519 (not b_next!78485) b_and!202521 b_and!202523 (not b_next!78491) (not b_next!78489) (not b_next!78487))
