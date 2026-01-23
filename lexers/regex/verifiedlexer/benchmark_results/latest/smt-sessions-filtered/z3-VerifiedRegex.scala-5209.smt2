; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268242 () Bool)

(assert start!268242)

(declare-fun b!2772683 () Bool)

(declare-fun b_free!78229 () Bool)

(declare-fun b_next!78933 () Bool)

(assert (=> b!2772683 (= b_free!78229 (not b_next!78933))))

(declare-fun tp!876698 () Bool)

(declare-fun b_and!202967 () Bool)

(assert (=> b!2772683 (= tp!876698 b_and!202967)))

(declare-fun b!2772680 () Bool)

(declare-fun b_free!78231 () Bool)

(declare-fun b_next!78935 () Bool)

(assert (=> b!2772680 (= b_free!78231 (not b_next!78935))))

(declare-fun tp!876702 () Bool)

(declare-fun b_and!202969 () Bool)

(assert (=> b!2772680 (= tp!876702 b_and!202969)))

(declare-fun b!2772689 () Bool)

(declare-fun b_free!78233 () Bool)

(declare-fun b_next!78937 () Bool)

(assert (=> b!2772689 (= b_free!78233 (not b_next!78937))))

(declare-fun tp!876691 () Bool)

(declare-fun b_and!202971 () Bool)

(assert (=> b!2772689 (= tp!876691 b_and!202971)))

(declare-fun b!2772696 () Bool)

(declare-fun b_free!78235 () Bool)

(declare-fun b_next!78939 () Bool)

(assert (=> b!2772696 (= b_free!78235 (not b_next!78939))))

(declare-fun tp!876695 () Bool)

(declare-fun b_and!202973 () Bool)

(assert (=> b!2772696 (= tp!876695 b_and!202973)))

(declare-fun mapIsEmpty!17233 () Bool)

(declare-fun mapRes!17233 () Bool)

(assert (=> mapIsEmpty!17233 mapRes!17233))

(declare-fun res!1159094 () Bool)

(declare-fun e!1748333 () Bool)

(assert (=> start!268242 (=> (not res!1159094) (not e!1748333))))

(declare-datatypes ((C!16324 0))(
  ( (C!16325 (val!10096 Int)) )
))
(declare-datatypes ((Regex!8083 0))(
  ( (ElementMatch!8083 (c!450276 C!16324)) (Concat!13171 (regOne!16678 Regex!8083) (regTwo!16678 Regex!8083)) (EmptyExpr!8083) (Star!8083 (reg!8412 Regex!8083)) (EmptyLang!8083) (Union!8083 (regOne!16679 Regex!8083) (regTwo!16679 Regex!8083)) )
))
(declare-datatypes ((List!32096 0))(
  ( (Nil!31996) (Cons!31996 (h!37416 Regex!8083) (t!228224 List!32096)) )
))
(declare-datatypes ((Context!4602 0))(
  ( (Context!4603 (exprs!2801 List!32096)) )
))
(declare-datatypes ((tuple2!32152 0))(
  ( (tuple2!32153 (_1!18957 Context!4602) (_2!18957 C!16324)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32154 0))(
  ( (tuple2!32155 (_1!18958 tuple2!32152) (_2!18958 (InoxSet Context!4602))) )
))
(declare-datatypes ((List!32097 0))(
  ( (Nil!31997) (Cons!31997 (h!37417 tuple2!32154) (t!228225 List!32097)) )
))
(declare-datatypes ((Hashable!3690 0))(
  ( (HashableExt!3689 (__x!20972 Int)) )
))
(declare-datatypes ((array!13438 0))(
  ( (array!13439 (arr!5990 (Array (_ BitVec 32) List!32097)) (size!24776 (_ BitVec 32))) )
))
(declare-datatypes ((array!13440 0))(
  ( (array!13441 (arr!5991 (Array (_ BitVec 32) (_ BitVec 64))) (size!24777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7548 0))(
  ( (LongMapFixedSize!7549 (defaultEntry!4159 Int) (mask!9552 (_ BitVec 32)) (extraKeys!4023 (_ BitVec 32)) (zeroValue!4033 List!32097) (minValue!4033 List!32097) (_size!7591 (_ BitVec 32)) (_keys!4074 array!13440) (_values!4055 array!13438) (_vacant!3835 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14905 0))(
  ( (Cell!14906 (v!33604 LongMapFixedSize!7548)) )
))
(declare-datatypes ((MutLongMap!3774 0))(
  ( (LongMap!3774 (underlying!7751 Cell!14905)) (MutLongMapExt!3773 (__x!20973 Int)) )
))
(declare-datatypes ((Cell!14907 0))(
  ( (Cell!14908 (v!33605 MutLongMap!3774)) )
))
(declare-datatypes ((MutableMap!3680 0))(
  ( (MutableMapExt!3679 (__x!20974 Int)) (HashMap!3680 (underlying!7752 Cell!14907) (hashF!5722 Hashable!3690) (_size!7592 (_ BitVec 32)) (defaultValue!3851 Int)) )
))
(declare-datatypes ((CacheUp!2386 0))(
  ( (CacheUp!2387 (cache!3823 MutableMap!3680)) )
))
(declare-fun cacheUp!820 () CacheUp!2386)

(declare-fun valid!2945 (CacheUp!2386) Bool)

(assert (=> start!268242 (= res!1159094 (valid!2945 cacheUp!820))))

(assert (=> start!268242 e!1748333))

(declare-fun e!1748339 () Bool)

(declare-fun inv!43453 (CacheUp!2386) Bool)

(assert (=> start!268242 (and (inv!43453 cacheUp!820) e!1748339)))

(declare-datatypes ((tuple3!4822 0))(
  ( (tuple3!4823 (_1!18959 Regex!8083) (_2!18959 Context!4602) (_3!2881 C!16324)) )
))
(declare-datatypes ((tuple2!32156 0))(
  ( (tuple2!32157 (_1!18960 tuple3!4822) (_2!18960 (InoxSet Context!4602))) )
))
(declare-datatypes ((List!32098 0))(
  ( (Nil!31998) (Cons!31998 (h!37418 tuple2!32156) (t!228226 List!32098)) )
))
(declare-datatypes ((array!13442 0))(
  ( (array!13443 (arr!5992 (Array (_ BitVec 32) List!32098)) (size!24778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7550 0))(
  ( (LongMapFixedSize!7551 (defaultEntry!4160 Int) (mask!9553 (_ BitVec 32)) (extraKeys!4024 (_ BitVec 32)) (zeroValue!4034 List!32098) (minValue!4034 List!32098) (_size!7593 (_ BitVec 32)) (_keys!4075 array!13440) (_values!4056 array!13442) (_vacant!3836 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14909 0))(
  ( (Cell!14910 (v!33606 LongMapFixedSize!7550)) )
))
(declare-datatypes ((MutLongMap!3775 0))(
  ( (LongMap!3775 (underlying!7753 Cell!14909)) (MutLongMapExt!3774 (__x!20975 Int)) )
))
(declare-datatypes ((Cell!14911 0))(
  ( (Cell!14912 (v!33607 MutLongMap!3775)) )
))
(declare-datatypes ((Hashable!3691 0))(
  ( (HashableExt!3690 (__x!20976 Int)) )
))
(declare-datatypes ((MutableMap!3681 0))(
  ( (MutableMapExt!3680 (__x!20977 Int)) (HashMap!3681 (underlying!7754 Cell!14911) (hashF!5723 Hashable!3691) (_size!7594 (_ BitVec 32)) (defaultValue!3852 Int)) )
))
(declare-datatypes ((CacheDown!2506 0))(
  ( (CacheDown!2507 (cache!3824 MutableMap!3681)) )
))
(declare-fun cacheDown!939 () CacheDown!2506)

(declare-fun e!1748341 () Bool)

(declare-fun inv!43454 (CacheDown!2506) Bool)

(assert (=> start!268242 (and (inv!43454 cacheDown!939) e!1748341)))

(declare-fun condSetEmpty!22860 () Bool)

(declare-fun z!3597 () (InoxSet Context!4602))

(assert (=> start!268242 (= condSetEmpty!22860 (= z!3597 ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setRes!22860 () Bool)

(assert (=> start!268242 setRes!22860))

(declare-datatypes ((List!32099 0))(
  ( (Nil!31999) (Cons!31999 (h!37419 C!16324) (t!228227 List!32099)) )
))
(declare-datatypes ((IArray!19933 0))(
  ( (IArray!19934 (innerList!10024 List!32099)) )
))
(declare-datatypes ((Conc!9964 0))(
  ( (Node!9964 (left!24391 Conc!9964) (right!24721 Conc!9964) (csize!20158 Int) (cheight!10175 Int)) (Leaf!15174 (xs!13074 IArray!19933) (csize!20159 Int)) (Empty!9964) )
))
(declare-datatypes ((BalanceConc!19542 0))(
  ( (BalanceConc!19543 (c!450277 Conc!9964)) )
))
(declare-fun input!5495 () BalanceConc!19542)

(declare-fun e!1748347 () Bool)

(declare-fun inv!43455 (BalanceConc!19542) Bool)

(assert (=> start!268242 (and (inv!43455 input!5495) e!1748347)))

(declare-fun mapNonEmpty!17233 () Bool)

(declare-fun tp!876700 () Bool)

(declare-fun tp!876699 () Bool)

(assert (=> mapNonEmpty!17233 (= mapRes!17233 (and tp!876700 tp!876699))))

(declare-fun mapRest!17234 () (Array (_ BitVec 32) List!32098))

(declare-fun mapValue!17234 () List!32098)

(declare-fun mapKey!17233 () (_ BitVec 32))

(assert (=> mapNonEmpty!17233 (= (arr!5992 (_values!4056 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) (store mapRest!17234 mapKey!17233 mapValue!17234))))

(declare-fun lt!988243 () Int)

(declare-fun lt!988244 () List!32099)

(declare-fun e!1748345 () Bool)

(declare-fun b!2772679 () Bool)

(declare-datatypes ((tuple3!4824 0))(
  ( (tuple3!4825 (_1!18961 Int) (_2!18961 CacheUp!2386) (_3!2882 CacheDown!2506)) )
))
(declare-fun lt!988245 () tuple3!4824)

(declare-fun findLongestMatchInnerZipperFast!37 ((InoxSet Context!4602) List!32099 Int List!32099 BalanceConc!19542 Int) Int)

(assert (=> b!2772679 (= e!1748345 (= (_1!18961 lt!988245) (findLongestMatchInnerZipperFast!37 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243)))))

(declare-fun e!1748340 () Bool)

(declare-fun e!1748332 () Bool)

(assert (=> b!2772680 (= e!1748340 (and e!1748332 tp!876702))))

(declare-fun tp!876692 () Bool)

(declare-fun setNonEmpty!22860 () Bool)

(declare-fun e!1748337 () Bool)

(declare-fun setElem!22860 () Context!4602)

(declare-fun inv!43456 (Context!4602) Bool)

(assert (=> setNonEmpty!22860 (= setRes!22860 (and tp!876692 (inv!43456 setElem!22860) e!1748337))))

(declare-fun setRest!22860 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22860 (= z!3597 ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22860 true) setRest!22860))))

(declare-fun b!2772681 () Bool)

(assert (=> b!2772681 (= e!1748339 e!1748340)))

(declare-fun b!2772682 () Bool)

(declare-fun e!1748336 () Bool)

(declare-fun e!1748350 () Bool)

(assert (=> b!2772682 (= e!1748336 e!1748350)))

(declare-fun tp!876689 () Bool)

(declare-fun e!1748349 () Bool)

(declare-fun tp!876687 () Bool)

(declare-fun e!1748348 () Bool)

(declare-fun array_inv!4285 (array!13440) Bool)

(declare-fun array_inv!4286 (array!13438) Bool)

(assert (=> b!2772683 (= e!1748348 (and tp!876698 tp!876687 tp!876689 (array_inv!4285 (_keys!4074 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) (array_inv!4286 (_values!4055 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) e!1748349))))

(declare-fun b!2772684 () Bool)

(declare-fun e!1748343 () Bool)

(declare-fun tp!876701 () Bool)

(assert (=> b!2772684 (= e!1748343 (and tp!876701 mapRes!17233))))

(declare-fun condMapEmpty!17234 () Bool)

(declare-fun mapDefault!17234 () List!32098)

(assert (=> b!2772684 (= condMapEmpty!17234 (= (arr!5992 (_values!4056 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32098)) mapDefault!17234)))))

(declare-fun b!2772685 () Bool)

(declare-fun tp!876694 () Bool)

(declare-fun mapRes!17234 () Bool)

(assert (=> b!2772685 (= e!1748349 (and tp!876694 mapRes!17234))))

(declare-fun condMapEmpty!17233 () Bool)

(declare-fun mapDefault!17233 () List!32097)

(assert (=> b!2772685 (= condMapEmpty!17233 (= (arr!5990 (_values!4055 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32097)) mapDefault!17233)))))

(declare-fun b!2772686 () Bool)

(declare-fun e!1748334 () Bool)

(declare-fun e!1748346 () Bool)

(assert (=> b!2772686 (= e!1748334 e!1748346)))

(declare-fun mapIsEmpty!17234 () Bool)

(assert (=> mapIsEmpty!17234 mapRes!17234))

(declare-fun b!2772687 () Bool)

(assert (=> b!2772687 (= e!1748350 e!1748348)))

(declare-fun b!2772688 () Bool)

(declare-fun tp!876688 () Bool)

(assert (=> b!2772688 (= e!1748337 tp!876688)))

(declare-fun e!1748351 () Bool)

(declare-fun e!1748344 () Bool)

(assert (=> b!2772689 (= e!1748351 (and e!1748344 tp!876691))))

(declare-fun b!2772690 () Bool)

(assert (=> b!2772690 (= e!1748341 e!1748351)))

(declare-fun b!2772691 () Bool)

(declare-fun ++!7918 (List!32099 List!32099) List!32099)

(assert (=> b!2772691 (= e!1748333 (not (= (++!7918 Nil!31999 lt!988244) lt!988244)))))

(assert (=> b!2772691 e!1748345))

(declare-fun res!1159097 () Bool)

(assert (=> b!2772691 (=> (not res!1159097) (not e!1748345))))

(assert (=> b!2772691 (= res!1159097 (valid!2945 (_2!18961 lt!988245)))))

(declare-fun findLongestMatchInnerZipperFastMem!31 (CacheUp!2386 CacheDown!2506 (InoxSet Context!4602) List!32099 Int List!32099 BalanceConc!19542 Int) tuple3!4824)

(assert (=> b!2772691 (= lt!988245 (findLongestMatchInnerZipperFastMem!31 cacheUp!820 cacheDown!939 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243))))

(declare-fun size!24779 (BalanceConc!19542) Int)

(assert (=> b!2772691 (= lt!988243 (size!24779 input!5495))))

(declare-fun list!12078 (BalanceConc!19542) List!32099)

(assert (=> b!2772691 (= lt!988244 (list!12078 input!5495))))

(declare-fun setIsEmpty!22860 () Bool)

(assert (=> setIsEmpty!22860 setRes!22860))

(declare-fun b!2772692 () Bool)

(declare-fun tp!876690 () Bool)

(declare-fun inv!43457 (Conc!9964) Bool)

(assert (=> b!2772692 (= e!1748347 (and (inv!43457 (c!450277 input!5495)) tp!876690))))

(declare-fun b!2772693 () Bool)

(declare-fun lt!988242 () MutLongMap!3775)

(get-info :version)

(assert (=> b!2772693 (= e!1748344 (and e!1748334 ((_ is LongMap!3775) lt!988242)))))

(assert (=> b!2772693 (= lt!988242 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))

(declare-fun b!2772694 () Bool)

(declare-fun res!1159096 () Bool)

(assert (=> b!2772694 (=> (not res!1159096) (not e!1748333))))

(declare-fun valid!2946 (CacheDown!2506) Bool)

(assert (=> b!2772694 (= res!1159096 (valid!2946 cacheDown!939))))

(declare-fun b!2772695 () Bool)

(declare-fun lt!988241 () MutLongMap!3774)

(assert (=> b!2772695 (= e!1748332 (and e!1748336 ((_ is LongMap!3774) lt!988241)))))

(assert (=> b!2772695 (= lt!988241 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))

(declare-fun mapNonEmpty!17234 () Bool)

(declare-fun tp!876693 () Bool)

(declare-fun tp!876697 () Bool)

(assert (=> mapNonEmpty!17234 (= mapRes!17234 (and tp!876693 tp!876697))))

(declare-fun mapValue!17233 () List!32097)

(declare-fun mapRest!17233 () (Array (_ BitVec 32) List!32097))

(declare-fun mapKey!17234 () (_ BitVec 32))

(assert (=> mapNonEmpty!17234 (= (arr!5990 (_values!4055 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) (store mapRest!17233 mapKey!17234 mapValue!17233))))

(declare-fun tp!876686 () Bool)

(declare-fun e!1748342 () Bool)

(declare-fun tp!876696 () Bool)

(declare-fun array_inv!4287 (array!13442) Bool)

(assert (=> b!2772696 (= e!1748342 (and tp!876695 tp!876696 tp!876686 (array_inv!4285 (_keys!4075 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) (array_inv!4287 (_values!4056 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) e!1748343))))

(declare-fun b!2772697 () Bool)

(assert (=> b!2772697 (= e!1748346 e!1748342)))

(declare-fun b!2772698 () Bool)

(declare-fun res!1159095 () Bool)

(assert (=> b!2772698 (=> (not res!1159095) (not e!1748345))))

(assert (=> b!2772698 (= res!1159095 (valid!2946 (_3!2882 lt!988245)))))

(assert (= (and start!268242 res!1159094) b!2772694))

(assert (= (and b!2772694 res!1159096) b!2772691))

(assert (= (and b!2772691 res!1159097) b!2772698))

(assert (= (and b!2772698 res!1159095) b!2772679))

(assert (= (and b!2772685 condMapEmpty!17233) mapIsEmpty!17234))

(assert (= (and b!2772685 (not condMapEmpty!17233)) mapNonEmpty!17234))

(assert (= b!2772683 b!2772685))

(assert (= b!2772687 b!2772683))

(assert (= b!2772682 b!2772687))

(assert (= (and b!2772695 ((_ is LongMap!3774) (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))) b!2772682))

(assert (= b!2772680 b!2772695))

(assert (= (and b!2772681 ((_ is HashMap!3680) (cache!3823 cacheUp!820))) b!2772680))

(assert (= start!268242 b!2772681))

(assert (= (and b!2772684 condMapEmpty!17234) mapIsEmpty!17233))

(assert (= (and b!2772684 (not condMapEmpty!17234)) mapNonEmpty!17233))

(assert (= b!2772696 b!2772684))

(assert (= b!2772697 b!2772696))

(assert (= b!2772686 b!2772697))

(assert (= (and b!2772693 ((_ is LongMap!3775) (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))) b!2772686))

(assert (= b!2772689 b!2772693))

(assert (= (and b!2772690 ((_ is HashMap!3681) (cache!3824 cacheDown!939))) b!2772689))

(assert (= start!268242 b!2772690))

(assert (= (and start!268242 condSetEmpty!22860) setIsEmpty!22860))

(assert (= (and start!268242 (not condSetEmpty!22860)) setNonEmpty!22860))

(assert (= setNonEmpty!22860 b!2772688))

(assert (= start!268242 b!2772692))

(declare-fun m!3199601 () Bool)

(assert (=> mapNonEmpty!17234 m!3199601))

(declare-fun m!3199603 () Bool)

(assert (=> b!2772691 m!3199603))

(declare-fun m!3199605 () Bool)

(assert (=> b!2772691 m!3199605))

(declare-fun m!3199607 () Bool)

(assert (=> b!2772691 m!3199607))

(declare-fun m!3199609 () Bool)

(assert (=> b!2772691 m!3199609))

(declare-fun m!3199611 () Bool)

(assert (=> b!2772691 m!3199611))

(declare-fun m!3199613 () Bool)

(assert (=> b!2772679 m!3199613))

(declare-fun m!3199615 () Bool)

(assert (=> setNonEmpty!22860 m!3199615))

(declare-fun m!3199617 () Bool)

(assert (=> b!2772683 m!3199617))

(declare-fun m!3199619 () Bool)

(assert (=> b!2772683 m!3199619))

(declare-fun m!3199621 () Bool)

(assert (=> mapNonEmpty!17233 m!3199621))

(declare-fun m!3199623 () Bool)

(assert (=> start!268242 m!3199623))

(declare-fun m!3199625 () Bool)

(assert (=> start!268242 m!3199625))

(declare-fun m!3199627 () Bool)

(assert (=> start!268242 m!3199627))

(declare-fun m!3199629 () Bool)

(assert (=> start!268242 m!3199629))

(declare-fun m!3199631 () Bool)

(assert (=> b!2772698 m!3199631))

(declare-fun m!3199633 () Bool)

(assert (=> b!2772692 m!3199633))

(declare-fun m!3199635 () Bool)

(assert (=> b!2772694 m!3199635))

(declare-fun m!3199637 () Bool)

(assert (=> b!2772696 m!3199637))

(declare-fun m!3199639 () Bool)

(assert (=> b!2772696 m!3199639))

(check-sat (not b!2772688) (not mapNonEmpty!17233) b_and!202967 (not b!2772684) (not b!2772696) (not start!268242) b_and!202973 (not b_next!78933) (not b!2772683) (not b!2772698) (not b_next!78935) b_and!202969 (not setNonEmpty!22860) (not mapNonEmpty!17234) (not b_next!78937) (not b_next!78939) (not b!2772679) (not b!2772692) (not b!2772694) b_and!202971 (not b!2772691) (not b!2772685))
(check-sat b_and!202967 b_and!202973 b_and!202971 (not b_next!78933) (not b_next!78935) b_and!202969 (not b_next!78937) (not b_next!78939))
(get-model)

(declare-fun d!806288 () Bool)

(declare-fun validCacheMapUp!365 (MutableMap!3680) Bool)

(assert (=> d!806288 (= (valid!2945 cacheUp!820) (validCacheMapUp!365 (cache!3823 cacheUp!820)))))

(declare-fun bs!505212 () Bool)

(assert (= bs!505212 d!806288))

(declare-fun m!3199641 () Bool)

(assert (=> bs!505212 m!3199641))

(assert (=> start!268242 d!806288))

(declare-fun d!806290 () Bool)

(declare-fun res!1159100 () Bool)

(declare-fun e!1748354 () Bool)

(assert (=> d!806290 (=> (not res!1159100) (not e!1748354))))

(assert (=> d!806290 (= res!1159100 ((_ is HashMap!3680) (cache!3823 cacheUp!820)))))

(assert (=> d!806290 (= (inv!43453 cacheUp!820) e!1748354)))

(declare-fun b!2772701 () Bool)

(assert (=> b!2772701 (= e!1748354 (validCacheMapUp!365 (cache!3823 cacheUp!820)))))

(assert (= (and d!806290 res!1159100) b!2772701))

(assert (=> b!2772701 m!3199641))

(assert (=> start!268242 d!806290))

(declare-fun d!806292 () Bool)

(declare-fun res!1159103 () Bool)

(declare-fun e!1748357 () Bool)

(assert (=> d!806292 (=> (not res!1159103) (not e!1748357))))

(assert (=> d!806292 (= res!1159103 ((_ is HashMap!3681) (cache!3824 cacheDown!939)))))

(assert (=> d!806292 (= (inv!43454 cacheDown!939) e!1748357)))

(declare-fun b!2772704 () Bool)

(declare-fun validCacheMapDown!396 (MutableMap!3681) Bool)

(assert (=> b!2772704 (= e!1748357 (validCacheMapDown!396 (cache!3824 cacheDown!939)))))

(assert (= (and d!806292 res!1159103) b!2772704))

(declare-fun m!3199643 () Bool)

(assert (=> b!2772704 m!3199643))

(assert (=> start!268242 d!806292))

(declare-fun d!806294 () Bool)

(declare-fun isBalanced!3040 (Conc!9964) Bool)

(assert (=> d!806294 (= (inv!43455 input!5495) (isBalanced!3040 (c!450277 input!5495)))))

(declare-fun bs!505213 () Bool)

(assert (= bs!505213 d!806294))

(declare-fun m!3199645 () Bool)

(assert (=> bs!505213 m!3199645))

(assert (=> start!268242 d!806294))

(declare-fun d!806296 () Bool)

(declare-fun c!450280 () Bool)

(assert (=> d!806296 (= c!450280 ((_ is Node!9964) (c!450277 input!5495)))))

(declare-fun e!1748362 () Bool)

(assert (=> d!806296 (= (inv!43457 (c!450277 input!5495)) e!1748362)))

(declare-fun b!2772711 () Bool)

(declare-fun inv!43458 (Conc!9964) Bool)

(assert (=> b!2772711 (= e!1748362 (inv!43458 (c!450277 input!5495)))))

(declare-fun b!2772712 () Bool)

(declare-fun e!1748363 () Bool)

(assert (=> b!2772712 (= e!1748362 e!1748363)))

(declare-fun res!1159106 () Bool)

(assert (=> b!2772712 (= res!1159106 (not ((_ is Leaf!15174) (c!450277 input!5495))))))

(assert (=> b!2772712 (=> res!1159106 e!1748363)))

(declare-fun b!2772713 () Bool)

(declare-fun inv!43459 (Conc!9964) Bool)

(assert (=> b!2772713 (= e!1748363 (inv!43459 (c!450277 input!5495)))))

(assert (= (and d!806296 c!450280) b!2772711))

(assert (= (and d!806296 (not c!450280)) b!2772712))

(assert (= (and b!2772712 (not res!1159106)) b!2772713))

(declare-fun m!3199647 () Bool)

(assert (=> b!2772711 m!3199647))

(declare-fun m!3199649 () Bool)

(assert (=> b!2772713 m!3199649))

(assert (=> b!2772692 d!806296))

(declare-fun b!2772738 () Bool)

(declare-datatypes ((Unit!46179 0))(
  ( (Unit!46180) )
))
(declare-fun e!1748381 () Unit!46179)

(declare-fun Unit!46181 () Unit!46179)

(assert (=> b!2772738 (= e!1748381 Unit!46181)))

(declare-fun c!450298 () Bool)

(declare-fun bm!181262 () Bool)

(declare-fun call!181270 () List!32099)

(declare-datatypes ((tuple2!32158 0))(
  ( (tuple2!32159 (_1!18962 BalanceConc!19542) (_2!18962 BalanceConc!19542)) )
))
(declare-fun lt!988334 () tuple2!32158)

(assert (=> bm!181262 (= call!181270 (list!12078 (ite c!450298 input!5495 (_1!18962 lt!988334))))))

(declare-fun bm!181263 () Bool)

(declare-fun call!181273 () C!16324)

(declare-fun apply!7502 (BalanceConc!19542 Int) C!16324)

(assert (=> bm!181263 (= call!181273 (apply!7502 input!5495 0))))

(declare-fun lt!988355 () Int)

(declare-fun d!806298 () Bool)

(declare-fun size!24780 (List!32099) Int)

(declare-datatypes ((tuple2!32160 0))(
  ( (tuple2!32161 (_1!18963 List!32099) (_2!18963 List!32099)) )
))
(declare-fun findLongestMatchInnerZipper!22 ((InoxSet Context!4602) List!32099 Int List!32099 List!32099 Int) tuple2!32160)

(assert (=> d!806298 (= (size!24780 (_1!18963 (findLongestMatchInnerZipper!22 z!3597 Nil!31999 0 lt!988244 (list!12078 input!5495) lt!988243))) lt!988355)))

(declare-fun e!1748380 () Int)

(assert (=> d!806298 (= lt!988355 e!1748380)))

(declare-fun c!450294 () Bool)

(declare-fun lostCauseZipper!438 ((InoxSet Context!4602)) Bool)

(assert (=> d!806298 (= c!450294 (lostCauseZipper!438 z!3597))))

(declare-fun lt!988342 () Unit!46179)

(declare-fun Unit!46182 () Unit!46179)

(assert (=> d!806298 (= lt!988342 Unit!46182)))

(declare-fun getSuffix!1234 (List!32099 List!32099) List!32099)

(assert (=> d!806298 (= (getSuffix!1234 (list!12078 input!5495) Nil!31999) lt!988244)))

(declare-fun lt!988358 () Unit!46179)

(declare-fun lt!988359 () Unit!46179)

(assert (=> d!806298 (= lt!988358 lt!988359)))

(declare-fun lt!988361 () List!32099)

(assert (=> d!806298 (= lt!988244 lt!988361)))

(declare-fun lemmaSamePrefixThenSameSuffix!1136 (List!32099 List!32099 List!32099 List!32099 List!32099) Unit!46179)

(assert (=> d!806298 (= lt!988359 (lemmaSamePrefixThenSameSuffix!1136 Nil!31999 lt!988244 Nil!31999 lt!988361 (list!12078 input!5495)))))

(assert (=> d!806298 (= lt!988361 (getSuffix!1234 (list!12078 input!5495) Nil!31999))))

(declare-fun lt!988345 () Unit!46179)

(declare-fun lt!988365 () Unit!46179)

(assert (=> d!806298 (= lt!988345 lt!988365)))

(declare-fun isPrefix!2552 (List!32099 List!32099) Bool)

(assert (=> d!806298 (isPrefix!2552 Nil!31999 (++!7918 Nil!31999 lt!988244))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1662 (List!32099 List!32099) Unit!46179)

(assert (=> d!806298 (= lt!988365 (lemmaConcatTwoListThenFirstIsPrefix!1662 Nil!31999 lt!988244))))

(assert (=> d!806298 (= (++!7918 Nil!31999 lt!988244) (list!12078 input!5495))))

(assert (=> d!806298 (= (findLongestMatchInnerZipperFast!37 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243) lt!988355)))

(declare-fun b!2772739 () Bool)

(declare-fun e!1748378 () List!32099)

(assert (=> b!2772739 (= e!1748378 call!181270)))

(declare-fun b!2772740 () Bool)

(declare-fun e!1748379 () Int)

(assert (=> b!2772740 (= e!1748380 e!1748379)))

(assert (=> b!2772740 (= c!450298 (= 0 lt!988243))))

(declare-fun bm!181264 () Bool)

(declare-fun call!181268 () List!32099)

(assert (=> bm!181264 (= call!181268 (++!7918 Nil!31999 (Cons!31999 call!181273 Nil!31999)))))

(declare-fun b!2772741 () Bool)

(declare-fun e!1748377 () Int)

(declare-fun lt!988362 () Int)

(assert (=> b!2772741 (= e!1748377 (ite (= lt!988362 0) 0 lt!988362))))

(declare-fun call!181275 () Int)

(assert (=> b!2772741 (= lt!988362 call!181275)))

(declare-fun b!2772742 () Bool)

(declare-fun e!1748376 () Int)

(assert (=> b!2772742 (= e!1748376 0)))

(declare-fun b!2772743 () Bool)

(assert (=> b!2772743 (= e!1748376 0)))

(declare-fun b!2772744 () Bool)

(declare-fun Unit!46183 () Unit!46179)

(assert (=> b!2772744 (= e!1748381 Unit!46183)))

(declare-fun lt!988354 () List!32099)

(assert (=> b!2772744 (= lt!988354 (list!12078 input!5495))))

(declare-fun lt!988371 () List!32099)

(assert (=> b!2772744 (= lt!988371 (list!12078 input!5495))))

(declare-fun lt!988337 () Unit!46179)

(declare-fun call!181269 () Unit!46179)

(assert (=> b!2772744 (= lt!988337 call!181269)))

(declare-fun call!181276 () Bool)

(assert (=> b!2772744 call!181276))

(declare-fun lt!988363 () Unit!46179)

(assert (=> b!2772744 (= lt!988363 lt!988337)))

(declare-fun lt!988351 () List!32099)

(assert (=> b!2772744 (= lt!988351 (list!12078 input!5495))))

(declare-fun lt!988356 () Unit!46179)

(declare-fun call!181274 () Unit!46179)

(assert (=> b!2772744 (= lt!988356 call!181274)))

(assert (=> b!2772744 (= lt!988351 Nil!31999)))

(declare-fun lt!988353 () Unit!46179)

(assert (=> b!2772744 (= lt!988353 lt!988356)))

(assert (=> b!2772744 false))

(declare-fun bm!181265 () Bool)

(declare-fun call!181271 () List!32099)

(declare-fun tail!4385 (List!32099) List!32099)

(assert (=> bm!181265 (= call!181271 (tail!4385 lt!988244))))

(declare-fun bm!181266 () Bool)

(declare-fun call!181272 () (InoxSet Context!4602))

(declare-fun derivationStepZipper!365 ((InoxSet Context!4602) C!16324) (InoxSet Context!4602))

(assert (=> bm!181266 (= call!181272 (derivationStepZipper!365 z!3597 call!181273))))

(declare-fun lt!988330 () List!32099)

(declare-fun bm!181267 () Bool)

(declare-fun lt!988364 () List!32099)

(assert (=> bm!181267 (= call!181276 (isPrefix!2552 (ite c!450298 lt!988364 lt!988354) (ite c!450298 lt!988330 lt!988371)))))

(declare-fun b!2772745 () Bool)

(assert (=> b!2772745 (= e!1748380 0)))

(declare-fun b!2772746 () Bool)

(assert (=> b!2772746 (= e!1748378 (list!12078 input!5495))))

(declare-fun bm!181268 () Bool)

(assert (=> bm!181268 (= call!181275 (findLongestMatchInnerZipperFast!37 call!181272 call!181268 (+ 0 1) call!181271 input!5495 lt!988243))))

(declare-fun b!2772747 () Bool)

(declare-fun c!450297 () Bool)

(declare-fun call!181267 () Bool)

(assert (=> b!2772747 (= c!450297 call!181267)))

(declare-fun lt!988348 () Unit!46179)

(declare-fun lt!988343 () Unit!46179)

(assert (=> b!2772747 (= lt!988348 lt!988343)))

(declare-fun lt!988347 () C!16324)

(declare-fun lt!988370 () List!32099)

(declare-fun lt!988344 () List!32099)

(assert (=> b!2772747 (= (++!7918 (++!7918 Nil!31999 (Cons!31999 lt!988347 Nil!31999)) lt!988370) lt!988344)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!868 (List!32099 C!16324 List!32099 List!32099) Unit!46179)

(assert (=> b!2772747 (= lt!988343 (lemmaMoveElementToOtherListKeepsConcatEq!868 Nil!31999 lt!988347 lt!988370 lt!988344))))

(assert (=> b!2772747 (= lt!988344 (list!12078 input!5495))))

(assert (=> b!2772747 (= lt!988370 (tail!4385 lt!988244))))

(assert (=> b!2772747 (= lt!988347 (apply!7502 input!5495 0))))

(declare-fun lt!988338 () Unit!46179)

(declare-fun lt!988349 () Unit!46179)

(assert (=> b!2772747 (= lt!988338 lt!988349)))

(declare-fun lt!988336 () List!32099)

(declare-fun head!6147 (List!32099) C!16324)

(assert (=> b!2772747 (isPrefix!2552 (++!7918 Nil!31999 (Cons!31999 (head!6147 (getSuffix!1234 lt!988336 Nil!31999)) Nil!31999)) lt!988336)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!456 (List!32099 List!32099) Unit!46179)

(assert (=> b!2772747 (= lt!988349 (lemmaAddHeadSuffixToPrefixStillPrefix!456 Nil!31999 lt!988336))))

(assert (=> b!2772747 (= lt!988336 (list!12078 input!5495))))

(declare-fun lt!988367 () Unit!46179)

(assert (=> b!2772747 (= lt!988367 e!1748381)))

(declare-fun c!450293 () Bool)

(assert (=> b!2772747 (= c!450293 (= (size!24780 Nil!31999) (size!24779 input!5495)))))

(declare-fun lt!988352 () Unit!46179)

(declare-fun lt!988346 () Unit!46179)

(assert (=> b!2772747 (= lt!988352 lt!988346)))

(declare-fun lt!988340 () List!32099)

(assert (=> b!2772747 (<= (size!24780 Nil!31999) (size!24780 lt!988340))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!259 (List!32099 List!32099) Unit!46179)

(assert (=> b!2772747 (= lt!988346 (lemmaIsPrefixThenSmallerEqSize!259 Nil!31999 lt!988340))))

(assert (=> b!2772747 (= lt!988340 (list!12078 input!5495))))

(declare-fun lt!988360 () Unit!46179)

(declare-fun lt!988335 () Unit!46179)

(assert (=> b!2772747 (= lt!988360 lt!988335)))

(declare-fun lt!988366 () List!32099)

(declare-fun drop!1705 (List!32099 Int) List!32099)

(declare-fun apply!7503 (List!32099 Int) C!16324)

(assert (=> b!2772747 (= (head!6147 (drop!1705 lt!988366 0)) (apply!7503 lt!988366 0))))

(declare-fun lemmaDropApply!911 (List!32099 Int) Unit!46179)

(assert (=> b!2772747 (= lt!988335 (lemmaDropApply!911 lt!988366 0))))

(assert (=> b!2772747 (= lt!988366 (list!12078 input!5495))))

(declare-fun lt!988350 () Unit!46179)

(declare-fun lt!988369 () Unit!46179)

(assert (=> b!2772747 (= lt!988350 lt!988369)))

(declare-fun lt!988331 () List!32099)

(declare-fun lt!988333 () List!32099)

(assert (=> b!2772747 (and (= lt!988331 Nil!31999) (= lt!988333 lt!988244))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!337 (List!32099 List!32099 List!32099 List!32099) Unit!46179)

(assert (=> b!2772747 (= lt!988369 (lemmaConcatSameAndSameSizesThenSameLists!337 lt!988331 lt!988333 Nil!31999 lt!988244))))

(assert (=> b!2772747 (= lt!988333 (list!12078 (_2!18962 lt!988334)))))

(assert (=> b!2772747 (= lt!988331 call!181270)))

(declare-fun splitAt!114 (BalanceConc!19542 Int) tuple2!32158)

(assert (=> b!2772747 (= lt!988334 (splitAt!114 input!5495 0))))

(assert (=> b!2772747 (= e!1748379 e!1748377)))

(declare-fun b!2772748 () Bool)

(assert (=> b!2772748 (= e!1748377 call!181275)))

(declare-fun bm!181269 () Bool)

(declare-fun lemmaIsPrefixRefl!1676 (List!32099 List!32099) Unit!46179)

(assert (=> bm!181269 (= call!181269 (lemmaIsPrefixRefl!1676 (ite c!450298 lt!988364 lt!988354) (ite c!450298 lt!988330 lt!988371)))))

(declare-fun bm!181270 () Bool)

(declare-fun nullableZipper!631 ((InoxSet Context!4602)) Bool)

(assert (=> bm!181270 (= call!181267 (nullableZipper!631 z!3597))))

(declare-fun bm!181271 () Bool)

(declare-fun c!450295 () Bool)

(assert (=> bm!181271 (= c!450295 c!450298)))

(declare-fun lt!988357 () List!32099)

(declare-fun lemmaIsPrefixSameLengthThenSameList!458 (List!32099 List!32099 List!32099) Unit!46179)

(assert (=> bm!181271 (= call!181274 (lemmaIsPrefixSameLengthThenSameList!458 (ite c!450298 lt!988357 lt!988351) Nil!31999 e!1748378))))

(declare-fun b!2772749 () Bool)

(declare-fun c!450296 () Bool)

(assert (=> b!2772749 (= c!450296 call!181267)))

(declare-fun lt!988368 () Unit!46179)

(declare-fun lt!988339 () Unit!46179)

(assert (=> b!2772749 (= lt!988368 lt!988339)))

(assert (=> b!2772749 (= lt!988357 Nil!31999)))

(assert (=> b!2772749 (= lt!988339 call!181274)))

(assert (=> b!2772749 (= lt!988357 call!181270)))

(declare-fun lt!988332 () Unit!46179)

(declare-fun lt!988341 () Unit!46179)

(assert (=> b!2772749 (= lt!988332 lt!988341)))

(assert (=> b!2772749 call!181276))

(assert (=> b!2772749 (= lt!988341 call!181269)))

(assert (=> b!2772749 (= lt!988330 call!181270)))

(assert (=> b!2772749 (= lt!988364 call!181270)))

(assert (=> b!2772749 (= e!1748379 e!1748376)))

(assert (= (and d!806298 c!450294) b!2772745))

(assert (= (and d!806298 (not c!450294)) b!2772740))

(assert (= (and b!2772740 c!450298) b!2772749))

(assert (= (and b!2772740 (not c!450298)) b!2772747))

(assert (= (and b!2772749 c!450296) b!2772742))

(assert (= (and b!2772749 (not c!450296)) b!2772743))

(assert (= (and b!2772747 c!450293) b!2772744))

(assert (= (and b!2772747 (not c!450293)) b!2772738))

(assert (= (and b!2772747 c!450297) b!2772741))

(assert (= (and b!2772747 (not c!450297)) b!2772748))

(assert (= (or b!2772741 b!2772748) bm!181265))

(assert (= (or b!2772741 b!2772748) bm!181263))

(assert (= (or b!2772741 b!2772748) bm!181266))

(assert (= (or b!2772741 b!2772748) bm!181264))

(assert (= (or b!2772741 b!2772748) bm!181268))

(assert (= (or b!2772749 b!2772744) bm!181267))

(assert (= (or b!2772749 b!2772747) bm!181262))

(assert (= (or b!2772749 b!2772744) bm!181269))

(assert (= (or b!2772749 b!2772747) bm!181270))

(assert (= (or b!2772749 b!2772744) bm!181271))

(assert (= (and bm!181271 c!450295) b!2772739))

(assert (= (and bm!181271 (not c!450295)) b!2772746))

(assert (=> b!2772746 m!3199603))

(declare-fun m!3199651 () Bool)

(assert (=> bm!181266 m!3199651))

(declare-fun m!3199653 () Bool)

(assert (=> bm!181264 m!3199653))

(declare-fun m!3199655 () Bool)

(assert (=> bm!181269 m!3199655))

(declare-fun m!3199657 () Bool)

(assert (=> bm!181271 m!3199657))

(declare-fun m!3199659 () Bool)

(assert (=> bm!181262 m!3199659))

(declare-fun m!3199661 () Bool)

(assert (=> bm!181268 m!3199661))

(declare-fun m!3199663 () Bool)

(assert (=> bm!181270 m!3199663))

(assert (=> b!2772744 m!3199603))

(declare-fun m!3199665 () Bool)

(assert (=> bm!181263 m!3199665))

(declare-fun m!3199667 () Bool)

(assert (=> bm!181267 m!3199667))

(declare-fun m!3199669 () Bool)

(assert (=> d!806298 m!3199669))

(assert (=> d!806298 m!3199611))

(declare-fun m!3199671 () Bool)

(assert (=> d!806298 m!3199671))

(assert (=> d!806298 m!3199603))

(assert (=> d!806298 m!3199611))

(declare-fun m!3199673 () Bool)

(assert (=> d!806298 m!3199673))

(assert (=> d!806298 m!3199603))

(declare-fun m!3199675 () Bool)

(assert (=> d!806298 m!3199675))

(assert (=> d!806298 m!3199603))

(declare-fun m!3199677 () Bool)

(assert (=> d!806298 m!3199677))

(declare-fun m!3199679 () Bool)

(assert (=> d!806298 m!3199679))

(assert (=> d!806298 m!3199603))

(declare-fun m!3199681 () Bool)

(assert (=> d!806298 m!3199681))

(declare-fun m!3199683 () Bool)

(assert (=> bm!181265 m!3199683))

(declare-fun m!3199685 () Bool)

(assert (=> b!2772747 m!3199685))

(declare-fun m!3199687 () Bool)

(assert (=> b!2772747 m!3199687))

(declare-fun m!3199689 () Bool)

(assert (=> b!2772747 m!3199689))

(assert (=> b!2772747 m!3199603))

(declare-fun m!3199691 () Bool)

(assert (=> b!2772747 m!3199691))

(assert (=> b!2772747 m!3199605))

(declare-fun m!3199693 () Bool)

(assert (=> b!2772747 m!3199693))

(declare-fun m!3199695 () Bool)

(assert (=> b!2772747 m!3199695))

(declare-fun m!3199697 () Bool)

(assert (=> b!2772747 m!3199697))

(declare-fun m!3199699 () Bool)

(assert (=> b!2772747 m!3199699))

(declare-fun m!3199701 () Bool)

(assert (=> b!2772747 m!3199701))

(assert (=> b!2772747 m!3199665))

(declare-fun m!3199703 () Bool)

(assert (=> b!2772747 m!3199703))

(declare-fun m!3199705 () Bool)

(assert (=> b!2772747 m!3199705))

(declare-fun m!3199707 () Bool)

(assert (=> b!2772747 m!3199707))

(declare-fun m!3199709 () Bool)

(assert (=> b!2772747 m!3199709))

(assert (=> b!2772747 m!3199701))

(declare-fun m!3199711 () Bool)

(assert (=> b!2772747 m!3199711))

(assert (=> b!2772747 m!3199685))

(declare-fun m!3199713 () Bool)

(assert (=> b!2772747 m!3199713))

(assert (=> b!2772747 m!3199683))

(declare-fun m!3199715 () Bool)

(assert (=> b!2772747 m!3199715))

(assert (=> b!2772747 m!3199687))

(declare-fun m!3199717 () Bool)

(assert (=> b!2772747 m!3199717))

(declare-fun m!3199719 () Bool)

(assert (=> b!2772747 m!3199719))

(assert (=> b!2772747 m!3199705))

(assert (=> b!2772679 d!806298))

(declare-fun d!806300 () Bool)

(assert (=> d!806300 (= (array_inv!4285 (_keys!4074 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) (bvsge (size!24777 (_keys!4074 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772683 d!806300))

(declare-fun d!806302 () Bool)

(assert (=> d!806302 (= (array_inv!4286 (_values!4055 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) (bvsge (size!24776 (_values!4055 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772683 d!806302))

(declare-fun d!806304 () Bool)

(assert (=> d!806304 (= (array_inv!4285 (_keys!4075 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) (bvsge (size!24777 (_keys!4075 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772696 d!806304))

(declare-fun d!806306 () Bool)

(assert (=> d!806306 (= (array_inv!4287 (_values!4056 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) (bvsge (size!24778 (_values!4056 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772696 d!806306))

(declare-fun d!806308 () Bool)

(declare-fun list!12079 (Conc!9964) List!32099)

(assert (=> d!806308 (= (list!12078 input!5495) (list!12079 (c!450277 input!5495)))))

(declare-fun bs!505214 () Bool)

(assert (= bs!505214 d!806308))

(declare-fun m!3199721 () Bool)

(assert (=> bs!505214 m!3199721))

(assert (=> b!2772691 d!806308))

(declare-fun d!806310 () Bool)

(declare-fun lt!988374 () Int)

(assert (=> d!806310 (= lt!988374 (size!24780 (list!12078 input!5495)))))

(declare-fun size!24781 (Conc!9964) Int)

(assert (=> d!806310 (= lt!988374 (size!24781 (c!450277 input!5495)))))

(assert (=> d!806310 (= (size!24779 input!5495) lt!988374)))

(declare-fun bs!505215 () Bool)

(assert (= bs!505215 d!806310))

(assert (=> bs!505215 m!3199603))

(assert (=> bs!505215 m!3199603))

(declare-fun m!3199723 () Bool)

(assert (=> bs!505215 m!3199723))

(declare-fun m!3199725 () Bool)

(assert (=> bs!505215 m!3199725))

(assert (=> b!2772691 d!806310))

(declare-fun b!2772760 () Bool)

(declare-fun res!1159112 () Bool)

(declare-fun e!1748387 () Bool)

(assert (=> b!2772760 (=> (not res!1159112) (not e!1748387))))

(declare-fun lt!988377 () List!32099)

(assert (=> b!2772760 (= res!1159112 (= (size!24780 lt!988377) (+ (size!24780 Nil!31999) (size!24780 lt!988244))))))

(declare-fun b!2772758 () Bool)

(declare-fun e!1748386 () List!32099)

(assert (=> b!2772758 (= e!1748386 lt!988244)))

(declare-fun b!2772761 () Bool)

(assert (=> b!2772761 (= e!1748387 (or (not (= lt!988244 Nil!31999)) (= lt!988377 Nil!31999)))))

(declare-fun b!2772759 () Bool)

(assert (=> b!2772759 (= e!1748386 (Cons!31999 (h!37419 Nil!31999) (++!7918 (t!228227 Nil!31999) lt!988244)))))

(declare-fun d!806312 () Bool)

(assert (=> d!806312 e!1748387))

(declare-fun res!1159111 () Bool)

(assert (=> d!806312 (=> (not res!1159111) (not e!1748387))))

(declare-fun content!4504 (List!32099) (InoxSet C!16324))

(assert (=> d!806312 (= res!1159111 (= (content!4504 lt!988377) ((_ map or) (content!4504 Nil!31999) (content!4504 lt!988244))))))

(assert (=> d!806312 (= lt!988377 e!1748386)))

(declare-fun c!450301 () Bool)

(assert (=> d!806312 (= c!450301 ((_ is Nil!31999) Nil!31999))))

(assert (=> d!806312 (= (++!7918 Nil!31999 lt!988244) lt!988377)))

(assert (= (and d!806312 c!450301) b!2772758))

(assert (= (and d!806312 (not c!450301)) b!2772759))

(assert (= (and d!806312 res!1159111) b!2772760))

(assert (= (and b!2772760 res!1159112) b!2772761))

(declare-fun m!3199727 () Bool)

(assert (=> b!2772760 m!3199727))

(assert (=> b!2772760 m!3199699))

(declare-fun m!3199729 () Bool)

(assert (=> b!2772760 m!3199729))

(declare-fun m!3199731 () Bool)

(assert (=> b!2772759 m!3199731))

(declare-fun m!3199733 () Bool)

(assert (=> d!806312 m!3199733))

(declare-fun m!3199735 () Bool)

(assert (=> d!806312 m!3199735))

(declare-fun m!3199737 () Bool)

(assert (=> d!806312 m!3199737))

(assert (=> b!2772691 d!806312))

(declare-fun d!806314 () Bool)

(declare-fun e!1748390 () Bool)

(assert (=> d!806314 e!1748390))

(declare-fun res!1159117 () Bool)

(assert (=> d!806314 (=> (not res!1159117) (not e!1748390))))

(declare-fun lt!988380 () tuple3!4824)

(assert (=> d!806314 (= res!1159117 (valid!2945 (_2!18961 lt!988380)))))

(declare-fun choose!16267 (CacheUp!2386 CacheDown!2506 (InoxSet Context!4602) List!32099 Int List!32099 BalanceConc!19542 Int) tuple3!4824)

(assert (=> d!806314 (= lt!988380 (choose!16267 cacheUp!820 cacheDown!939 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243))))

(assert (=> d!806314 (= (++!7918 Nil!31999 lt!988244) (list!12078 input!5495))))

(assert (=> d!806314 (= (findLongestMatchInnerZipperFastMem!31 cacheUp!820 cacheDown!939 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243) lt!988380)))

(declare-fun b!2772766 () Bool)

(declare-fun res!1159118 () Bool)

(assert (=> b!2772766 (=> (not res!1159118) (not e!1748390))))

(assert (=> b!2772766 (= res!1159118 (valid!2946 (_3!2882 lt!988380)))))

(declare-fun b!2772767 () Bool)

(assert (=> b!2772767 (= e!1748390 (= (_1!18961 lt!988380) (findLongestMatchInnerZipperFast!37 z!3597 Nil!31999 0 lt!988244 input!5495 lt!988243)))))

(assert (= (and d!806314 res!1159117) b!2772766))

(assert (= (and b!2772766 res!1159118) b!2772767))

(declare-fun m!3199739 () Bool)

(assert (=> d!806314 m!3199739))

(declare-fun m!3199741 () Bool)

(assert (=> d!806314 m!3199741))

(assert (=> d!806314 m!3199611))

(assert (=> d!806314 m!3199603))

(declare-fun m!3199743 () Bool)

(assert (=> b!2772766 m!3199743))

(assert (=> b!2772767 m!3199613))

(assert (=> b!2772691 d!806314))

(declare-fun d!806316 () Bool)

(assert (=> d!806316 (= (valid!2945 (_2!18961 lt!988245)) (validCacheMapUp!365 (cache!3823 (_2!18961 lt!988245))))))

(declare-fun bs!505216 () Bool)

(assert (= bs!505216 d!806316))

(declare-fun m!3199745 () Bool)

(assert (=> bs!505216 m!3199745))

(assert (=> b!2772691 d!806316))

(declare-fun d!806318 () Bool)

(assert (=> d!806318 (= (valid!2946 cacheDown!939) (validCacheMapDown!396 (cache!3824 cacheDown!939)))))

(declare-fun bs!505217 () Bool)

(assert (= bs!505217 d!806318))

(assert (=> bs!505217 m!3199643))

(assert (=> b!2772694 d!806318))

(declare-fun d!806320 () Bool)

(declare-fun lambda!101787 () Int)

(declare-fun forall!6627 (List!32096 Int) Bool)

(assert (=> d!806320 (= (inv!43456 setElem!22860) (forall!6627 (exprs!2801 setElem!22860) lambda!101787))))

(declare-fun bs!505218 () Bool)

(assert (= bs!505218 d!806320))

(declare-fun m!3199747 () Bool)

(assert (=> bs!505218 m!3199747))

(assert (=> setNonEmpty!22860 d!806320))

(declare-fun d!806322 () Bool)

(assert (=> d!806322 (= (valid!2946 (_3!2882 lt!988245)) (validCacheMapDown!396 (cache!3824 (_3!2882 lt!988245))))))

(declare-fun bs!505219 () Bool)

(assert (= bs!505219 d!806322))

(declare-fun m!3199749 () Bool)

(assert (=> bs!505219 m!3199749))

(assert (=> b!2772698 d!806322))

(declare-fun setIsEmpty!22863 () Bool)

(declare-fun setRes!22863 () Bool)

(assert (=> setIsEmpty!22863 setRes!22863))

(declare-fun b!2772776 () Bool)

(declare-fun e!1748399 () Bool)

(declare-fun tp!876715 () Bool)

(assert (=> b!2772776 (= e!1748399 tp!876715)))

(declare-fun tp!876717 () Bool)

(declare-fun setNonEmpty!22863 () Bool)

(declare-fun setElem!22863 () Context!4602)

(assert (=> setNonEmpty!22863 (= setRes!22863 (and tp!876717 (inv!43456 setElem!22863) e!1748399))))

(declare-fun setRest!22863 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22863 (= (_2!18960 (h!37418 mapDefault!17234)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22863 true) setRest!22863))))

(declare-fun b!2772777 () Bool)

(declare-fun e!1748397 () Bool)

(declare-fun tp!876714 () Bool)

(assert (=> b!2772777 (= e!1748397 tp!876714)))

(declare-fun tp_is_empty!14015 () Bool)

(declare-fun tp!876713 () Bool)

(declare-fun tp!876716 () Bool)

(declare-fun e!1748398 () Bool)

(declare-fun b!2772778 () Bool)

(assert (=> b!2772778 (= e!1748398 (and tp!876713 (inv!43456 (_2!18959 (_1!18960 (h!37418 mapDefault!17234)))) e!1748397 tp_is_empty!14015 setRes!22863 tp!876716))))

(declare-fun condSetEmpty!22863 () Bool)

(assert (=> b!2772778 (= condSetEmpty!22863 (= (_2!18960 (h!37418 mapDefault!17234)) ((as const (Array Context!4602 Bool)) false)))))

(assert (=> b!2772684 (= tp!876701 e!1748398)))

(assert (= b!2772778 b!2772777))

(assert (= (and b!2772778 condSetEmpty!22863) setIsEmpty!22863))

(assert (= (and b!2772778 (not condSetEmpty!22863)) setNonEmpty!22863))

(assert (= setNonEmpty!22863 b!2772776))

(assert (= (and b!2772684 ((_ is Cons!31998) mapDefault!17234)) b!2772778))

(declare-fun m!3199751 () Bool)

(assert (=> setNonEmpty!22863 m!3199751))

(declare-fun m!3199753 () Bool)

(assert (=> b!2772778 m!3199753))

(declare-fun b!2772783 () Bool)

(declare-fun e!1748402 () Bool)

(declare-fun tp!876722 () Bool)

(declare-fun tp!876723 () Bool)

(assert (=> b!2772783 (= e!1748402 (and tp!876722 tp!876723))))

(assert (=> b!2772688 (= tp!876688 e!1748402)))

(assert (= (and b!2772688 ((_ is Cons!31996) (exprs!2801 setElem!22860))) b!2772783))

(declare-fun e!1748415 () Bool)

(declare-fun b!2772798 () Bool)

(declare-fun tp!876752 () Bool)

(declare-fun mapValue!17237 () List!32098)

(declare-fun tp!876753 () Bool)

(declare-fun e!1748419 () Bool)

(declare-fun setRes!22869 () Bool)

(assert (=> b!2772798 (= e!1748415 (and tp!876752 (inv!43456 (_2!18959 (_1!18960 (h!37418 mapValue!17237)))) e!1748419 tp_is_empty!14015 setRes!22869 tp!876753))))

(declare-fun condSetEmpty!22869 () Bool)

(assert (=> b!2772798 (= condSetEmpty!22869 (= (_2!18960 (h!37418 mapValue!17237)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun tp!876754 () Bool)

(declare-fun setNonEmpty!22868 () Bool)

(declare-fun setElem!22869 () Context!4602)

(declare-fun e!1748420 () Bool)

(assert (=> setNonEmpty!22868 (= setRes!22869 (and tp!876754 (inv!43456 setElem!22869) e!1748420))))

(declare-fun setRest!22868 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22868 (= (_2!18960 (h!37418 mapValue!17237)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22869 true) setRest!22868))))

(declare-fun b!2772799 () Bool)

(declare-fun tp!876751 () Bool)

(assert (=> b!2772799 (= e!1748419 tp!876751)))

(declare-fun setRes!22868 () Bool)

(declare-fun tp!876756 () Bool)

(declare-fun tp!876748 () Bool)

(declare-fun mapDefault!17237 () List!32098)

(declare-fun e!1748418 () Bool)

(declare-fun b!2772800 () Bool)

(declare-fun e!1748416 () Bool)

(assert (=> b!2772800 (= e!1748416 (and tp!876748 (inv!43456 (_2!18959 (_1!18960 (h!37418 mapDefault!17237)))) e!1748418 tp_is_empty!14015 setRes!22868 tp!876756))))

(declare-fun condSetEmpty!22868 () Bool)

(assert (=> b!2772800 (= condSetEmpty!22868 (= (_2!18960 (h!37418 mapDefault!17237)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setIsEmpty!22868 () Bool)

(assert (=> setIsEmpty!22868 setRes!22869))

(declare-fun mapNonEmpty!17237 () Bool)

(declare-fun mapRes!17237 () Bool)

(declare-fun tp!876746 () Bool)

(assert (=> mapNonEmpty!17237 (= mapRes!17237 (and tp!876746 e!1748415))))

(declare-fun mapRest!17237 () (Array (_ BitVec 32) List!32098))

(declare-fun mapKey!17237 () (_ BitVec 32))

(assert (=> mapNonEmpty!17237 (= mapRest!17234 (store mapRest!17237 mapKey!17237 mapValue!17237))))

(declare-fun b!2772801 () Bool)

(declare-fun tp!876755 () Bool)

(assert (=> b!2772801 (= e!1748420 tp!876755)))

(declare-fun setIsEmpty!22869 () Bool)

(assert (=> setIsEmpty!22869 setRes!22868))

(declare-fun mapIsEmpty!17237 () Bool)

(assert (=> mapIsEmpty!17237 mapRes!17237))

(declare-fun b!2772802 () Bool)

(declare-fun e!1748417 () Bool)

(declare-fun tp!876747 () Bool)

(assert (=> b!2772802 (= e!1748417 tp!876747)))

(declare-fun b!2772803 () Bool)

(declare-fun tp!876750 () Bool)

(assert (=> b!2772803 (= e!1748418 tp!876750)))

(declare-fun setElem!22868 () Context!4602)

(declare-fun tp!876749 () Bool)

(declare-fun setNonEmpty!22869 () Bool)

(assert (=> setNonEmpty!22869 (= setRes!22868 (and tp!876749 (inv!43456 setElem!22868) e!1748417))))

(declare-fun setRest!22869 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22869 (= (_2!18960 (h!37418 mapDefault!17237)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22868 true) setRest!22869))))

(declare-fun condMapEmpty!17237 () Bool)

(assert (=> mapNonEmpty!17233 (= condMapEmpty!17237 (= mapRest!17234 ((as const (Array (_ BitVec 32) List!32098)) mapDefault!17237)))))

(assert (=> mapNonEmpty!17233 (= tp!876700 (and e!1748416 mapRes!17237))))

(assert (= (and mapNonEmpty!17233 condMapEmpty!17237) mapIsEmpty!17237))

(assert (= (and mapNonEmpty!17233 (not condMapEmpty!17237)) mapNonEmpty!17237))

(assert (= b!2772798 b!2772799))

(assert (= (and b!2772798 condSetEmpty!22869) setIsEmpty!22868))

(assert (= (and b!2772798 (not condSetEmpty!22869)) setNonEmpty!22868))

(assert (= setNonEmpty!22868 b!2772801))

(assert (= (and mapNonEmpty!17237 ((_ is Cons!31998) mapValue!17237)) b!2772798))

(assert (= b!2772800 b!2772803))

(assert (= (and b!2772800 condSetEmpty!22868) setIsEmpty!22869))

(assert (= (and b!2772800 (not condSetEmpty!22868)) setNonEmpty!22869))

(assert (= setNonEmpty!22869 b!2772802))

(assert (= (and mapNonEmpty!17233 ((_ is Cons!31998) mapDefault!17237)) b!2772800))

(declare-fun m!3199755 () Bool)

(assert (=> mapNonEmpty!17237 m!3199755))

(declare-fun m!3199757 () Bool)

(assert (=> setNonEmpty!22868 m!3199757))

(declare-fun m!3199759 () Bool)

(assert (=> setNonEmpty!22869 m!3199759))

(declare-fun m!3199761 () Bool)

(assert (=> b!2772800 m!3199761))

(declare-fun m!3199763 () Bool)

(assert (=> b!2772798 m!3199763))

(declare-fun setIsEmpty!22870 () Bool)

(declare-fun setRes!22870 () Bool)

(assert (=> setIsEmpty!22870 setRes!22870))

(declare-fun b!2772804 () Bool)

(declare-fun e!1748423 () Bool)

(declare-fun tp!876759 () Bool)

(assert (=> b!2772804 (= e!1748423 tp!876759)))

(declare-fun setElem!22870 () Context!4602)

(declare-fun setNonEmpty!22870 () Bool)

(declare-fun tp!876761 () Bool)

(assert (=> setNonEmpty!22870 (= setRes!22870 (and tp!876761 (inv!43456 setElem!22870) e!1748423))))

(declare-fun setRest!22870 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22870 (= (_2!18960 (h!37418 mapValue!17234)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22870 true) setRest!22870))))

(declare-fun b!2772805 () Bool)

(declare-fun e!1748421 () Bool)

(declare-fun tp!876758 () Bool)

(assert (=> b!2772805 (= e!1748421 tp!876758)))

(declare-fun b!2772806 () Bool)

(declare-fun tp!876760 () Bool)

(declare-fun tp!876757 () Bool)

(declare-fun e!1748422 () Bool)

(assert (=> b!2772806 (= e!1748422 (and tp!876757 (inv!43456 (_2!18959 (_1!18960 (h!37418 mapValue!17234)))) e!1748421 tp_is_empty!14015 setRes!22870 tp!876760))))

(declare-fun condSetEmpty!22870 () Bool)

(assert (=> b!2772806 (= condSetEmpty!22870 (= (_2!18960 (h!37418 mapValue!17234)) ((as const (Array Context!4602 Bool)) false)))))

(assert (=> mapNonEmpty!17233 (= tp!876699 e!1748422)))

(assert (= b!2772806 b!2772805))

(assert (= (and b!2772806 condSetEmpty!22870) setIsEmpty!22870))

(assert (= (and b!2772806 (not condSetEmpty!22870)) setNonEmpty!22870))

(assert (= setNonEmpty!22870 b!2772804))

(assert (= (and mapNonEmpty!17233 ((_ is Cons!31998) mapValue!17234)) b!2772806))

(declare-fun m!3199765 () Bool)

(assert (=> setNonEmpty!22870 m!3199765))

(declare-fun m!3199767 () Bool)

(assert (=> b!2772806 m!3199767))

(declare-fun tp!876769 () Bool)

(declare-fun e!1748429 () Bool)

(declare-fun tp!876768 () Bool)

(declare-fun b!2772815 () Bool)

(assert (=> b!2772815 (= e!1748429 (and (inv!43457 (left!24391 (c!450277 input!5495))) tp!876768 (inv!43457 (right!24721 (c!450277 input!5495))) tp!876769))))

(declare-fun b!2772817 () Bool)

(declare-fun e!1748428 () Bool)

(declare-fun tp!876770 () Bool)

(assert (=> b!2772817 (= e!1748428 tp!876770)))

(declare-fun b!2772816 () Bool)

(declare-fun inv!43460 (IArray!19933) Bool)

(assert (=> b!2772816 (= e!1748429 (and (inv!43460 (xs!13074 (c!450277 input!5495))) e!1748428))))

(assert (=> b!2772692 (= tp!876690 (and (inv!43457 (c!450277 input!5495)) e!1748429))))

(assert (= (and b!2772692 ((_ is Node!9964) (c!450277 input!5495))) b!2772815))

(assert (= b!2772816 b!2772817))

(assert (= (and b!2772692 ((_ is Leaf!15174) (c!450277 input!5495))) b!2772816))

(declare-fun m!3199769 () Bool)

(assert (=> b!2772815 m!3199769))

(declare-fun m!3199771 () Bool)

(assert (=> b!2772815 m!3199771))

(declare-fun m!3199773 () Bool)

(assert (=> b!2772816 m!3199773))

(assert (=> b!2772692 m!3199633))

(declare-fun b!2772826 () Bool)

(declare-fun e!1748436 () Bool)

(declare-fun tp!876780 () Bool)

(assert (=> b!2772826 (= e!1748436 tp!876780)))

(declare-fun e!1748438 () Bool)

(declare-fun tp!876779 () Bool)

(declare-fun e!1748437 () Bool)

(declare-fun setRes!22873 () Bool)

(declare-fun b!2772827 () Bool)

(assert (=> b!2772827 (= e!1748438 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 (zeroValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))))) e!1748437 tp_is_empty!14015 setRes!22873 tp!876779))))

(declare-fun condSetEmpty!22873 () Bool)

(assert (=> b!2772827 (= condSetEmpty!22873 (= (_2!18958 (h!37417 (zeroValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setIsEmpty!22873 () Bool)

(assert (=> setIsEmpty!22873 setRes!22873))

(assert (=> b!2772683 (= tp!876687 e!1748438)))

(declare-fun tp!876782 () Bool)

(declare-fun setNonEmpty!22873 () Bool)

(declare-fun setElem!22873 () Context!4602)

(assert (=> setNonEmpty!22873 (= setRes!22873 (and tp!876782 (inv!43456 setElem!22873) e!1748436))))

(declare-fun setRest!22873 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22873 (= (_2!18958 (h!37417 (zeroValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22873 true) setRest!22873))))

(declare-fun b!2772828 () Bool)

(declare-fun tp!876781 () Bool)

(assert (=> b!2772828 (= e!1748437 tp!876781)))

(assert (= b!2772827 b!2772828))

(assert (= (and b!2772827 condSetEmpty!22873) setIsEmpty!22873))

(assert (= (and b!2772827 (not condSetEmpty!22873)) setNonEmpty!22873))

(assert (= setNonEmpty!22873 b!2772826))

(assert (= (and b!2772683 ((_ is Cons!31997) (zeroValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) b!2772827))

(declare-fun m!3199775 () Bool)

(assert (=> b!2772827 m!3199775))

(declare-fun m!3199777 () Bool)

(assert (=> setNonEmpty!22873 m!3199777))

(declare-fun b!2772829 () Bool)

(declare-fun e!1748439 () Bool)

(declare-fun tp!876784 () Bool)

(assert (=> b!2772829 (= e!1748439 tp!876784)))

(declare-fun e!1748440 () Bool)

(declare-fun tp!876783 () Bool)

(declare-fun e!1748441 () Bool)

(declare-fun b!2772830 () Bool)

(declare-fun setRes!22874 () Bool)

(assert (=> b!2772830 (= e!1748441 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 (minValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))))) e!1748440 tp_is_empty!14015 setRes!22874 tp!876783))))

(declare-fun condSetEmpty!22874 () Bool)

(assert (=> b!2772830 (= condSetEmpty!22874 (= (_2!18958 (h!37417 (minValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setIsEmpty!22874 () Bool)

(assert (=> setIsEmpty!22874 setRes!22874))

(assert (=> b!2772683 (= tp!876689 e!1748441)))

(declare-fun tp!876786 () Bool)

(declare-fun setNonEmpty!22874 () Bool)

(declare-fun setElem!22874 () Context!4602)

(assert (=> setNonEmpty!22874 (= setRes!22874 (and tp!876786 (inv!43456 setElem!22874) e!1748439))))

(declare-fun setRest!22874 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22874 (= (_2!18958 (h!37417 (minValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22874 true) setRest!22874))))

(declare-fun b!2772831 () Bool)

(declare-fun tp!876785 () Bool)

(assert (=> b!2772831 (= e!1748440 tp!876785)))

(assert (= b!2772830 b!2772831))

(assert (= (and b!2772830 condSetEmpty!22874) setIsEmpty!22874))

(assert (= (and b!2772830 (not condSetEmpty!22874)) setNonEmpty!22874))

(assert (= setNonEmpty!22874 b!2772829))

(assert (= (and b!2772683 ((_ is Cons!31997) (minValue!4033 (v!33604 (underlying!7751 (v!33605 (underlying!7752 (cache!3823 cacheUp!820)))))))) b!2772830))

(declare-fun m!3199779 () Bool)

(assert (=> b!2772830 m!3199779))

(declare-fun m!3199781 () Bool)

(assert (=> setNonEmpty!22874 m!3199781))

(declare-fun setIsEmpty!22875 () Bool)

(declare-fun setRes!22875 () Bool)

(assert (=> setIsEmpty!22875 setRes!22875))

(declare-fun b!2772832 () Bool)

(declare-fun e!1748444 () Bool)

(declare-fun tp!876789 () Bool)

(assert (=> b!2772832 (= e!1748444 tp!876789)))

(declare-fun setNonEmpty!22875 () Bool)

(declare-fun tp!876791 () Bool)

(declare-fun setElem!22875 () Context!4602)

(assert (=> setNonEmpty!22875 (= setRes!22875 (and tp!876791 (inv!43456 setElem!22875) e!1748444))))

(declare-fun setRest!22875 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22875 (= (_2!18960 (h!37418 (zeroValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22875 true) setRest!22875))))

(declare-fun b!2772833 () Bool)

(declare-fun e!1748442 () Bool)

(declare-fun tp!876788 () Bool)

(assert (=> b!2772833 (= e!1748442 tp!876788)))

(declare-fun tp!876787 () Bool)

(declare-fun b!2772834 () Bool)

(declare-fun tp!876790 () Bool)

(declare-fun e!1748443 () Bool)

(assert (=> b!2772834 (= e!1748443 (and tp!876787 (inv!43456 (_2!18959 (_1!18960 (h!37418 (zeroValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))))) e!1748442 tp_is_empty!14015 setRes!22875 tp!876790))))

(declare-fun condSetEmpty!22875 () Bool)

(assert (=> b!2772834 (= condSetEmpty!22875 (= (_2!18960 (h!37418 (zeroValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) ((as const (Array Context!4602 Bool)) false)))))

(assert (=> b!2772696 (= tp!876696 e!1748443)))

(assert (= b!2772834 b!2772833))

(assert (= (and b!2772834 condSetEmpty!22875) setIsEmpty!22875))

(assert (= (and b!2772834 (not condSetEmpty!22875)) setNonEmpty!22875))

(assert (= setNonEmpty!22875 b!2772832))

(assert (= (and b!2772696 ((_ is Cons!31998) (zeroValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) b!2772834))

(declare-fun m!3199783 () Bool)

(assert (=> setNonEmpty!22875 m!3199783))

(declare-fun m!3199785 () Bool)

(assert (=> b!2772834 m!3199785))

(declare-fun setIsEmpty!22876 () Bool)

(declare-fun setRes!22876 () Bool)

(assert (=> setIsEmpty!22876 setRes!22876))

(declare-fun b!2772835 () Bool)

(declare-fun e!1748447 () Bool)

(declare-fun tp!876794 () Bool)

(assert (=> b!2772835 (= e!1748447 tp!876794)))

(declare-fun tp!876796 () Bool)

(declare-fun setNonEmpty!22876 () Bool)

(declare-fun setElem!22876 () Context!4602)

(assert (=> setNonEmpty!22876 (= setRes!22876 (and tp!876796 (inv!43456 setElem!22876) e!1748447))))

(declare-fun setRest!22876 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22876 (= (_2!18960 (h!37418 (minValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22876 true) setRest!22876))))

(declare-fun b!2772836 () Bool)

(declare-fun e!1748445 () Bool)

(declare-fun tp!876793 () Bool)

(assert (=> b!2772836 (= e!1748445 tp!876793)))

(declare-fun e!1748446 () Bool)

(declare-fun b!2772837 () Bool)

(declare-fun tp!876792 () Bool)

(declare-fun tp!876795 () Bool)

(assert (=> b!2772837 (= e!1748446 (and tp!876792 (inv!43456 (_2!18959 (_1!18960 (h!37418 (minValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))))) e!1748445 tp_is_empty!14015 setRes!22876 tp!876795))))

(declare-fun condSetEmpty!22876 () Bool)

(assert (=> b!2772837 (= condSetEmpty!22876 (= (_2!18960 (h!37418 (minValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) ((as const (Array Context!4602 Bool)) false)))))

(assert (=> b!2772696 (= tp!876686 e!1748446)))

(assert (= b!2772837 b!2772836))

(assert (= (and b!2772837 condSetEmpty!22876) setIsEmpty!22876))

(assert (= (and b!2772837 (not condSetEmpty!22876)) setNonEmpty!22876))

(assert (= setNonEmpty!22876 b!2772835))

(assert (= (and b!2772696 ((_ is Cons!31998) (minValue!4034 (v!33606 (underlying!7753 (v!33607 (underlying!7754 (cache!3824 cacheDown!939)))))))) b!2772837))

(declare-fun m!3199787 () Bool)

(assert (=> setNonEmpty!22876 m!3199787))

(declare-fun m!3199789 () Bool)

(assert (=> b!2772837 m!3199789))

(declare-fun b!2772852 () Bool)

(declare-fun e!1748460 () Bool)

(declare-fun tp!876815 () Bool)

(assert (=> b!2772852 (= e!1748460 tp!876815)))

(declare-fun setRes!22882 () Bool)

(declare-fun tp!876818 () Bool)

(declare-fun setElem!22881 () Context!4602)

(declare-fun setNonEmpty!22881 () Bool)

(declare-fun e!1748465 () Bool)

(assert (=> setNonEmpty!22881 (= setRes!22882 (and tp!876818 (inv!43456 setElem!22881) e!1748465))))

(declare-fun mapDefault!17240 () List!32097)

(declare-fun setRest!22882 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22881 (= (_2!18958 (h!37417 mapDefault!17240)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22881 true) setRest!22882))))

(declare-fun mapIsEmpty!17240 () Bool)

(declare-fun mapRes!17240 () Bool)

(assert (=> mapIsEmpty!17240 mapRes!17240))

(declare-fun setIsEmpty!22881 () Bool)

(declare-fun setRes!22881 () Bool)

(assert (=> setIsEmpty!22881 setRes!22881))

(declare-fun b!2772854 () Bool)

(declare-fun e!1748461 () Bool)

(declare-fun tp!876816 () Bool)

(assert (=> b!2772854 (= e!1748461 tp!876816)))

(declare-fun setIsEmpty!22882 () Bool)

(assert (=> setIsEmpty!22882 setRes!22882))

(declare-fun e!1748463 () Bool)

(declare-fun mapValue!17240 () List!32097)

(declare-fun tp!876823 () Bool)

(declare-fun b!2772855 () Bool)

(assert (=> b!2772855 (= e!1748463 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 mapValue!17240)))) e!1748461 tp_is_empty!14015 setRes!22881 tp!876823))))

(declare-fun condSetEmpty!22882 () Bool)

(assert (=> b!2772855 (= condSetEmpty!22882 (= (_2!18958 (h!37417 mapValue!17240)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun e!1748464 () Bool)

(declare-fun b!2772856 () Bool)

(declare-fun tp!876817 () Bool)

(assert (=> b!2772856 (= e!1748464 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 mapDefault!17240)))) e!1748460 tp_is_empty!14015 setRes!22882 tp!876817))))

(declare-fun condSetEmpty!22881 () Bool)

(assert (=> b!2772856 (= condSetEmpty!22881 (= (_2!18958 (h!37417 mapDefault!17240)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun mapNonEmpty!17240 () Bool)

(declare-fun tp!876820 () Bool)

(assert (=> mapNonEmpty!17240 (= mapRes!17240 (and tp!876820 e!1748463))))

(declare-fun mapRest!17240 () (Array (_ BitVec 32) List!32097))

(declare-fun mapKey!17240 () (_ BitVec 32))

(assert (=> mapNonEmpty!17240 (= mapRest!17233 (store mapRest!17240 mapKey!17240 mapValue!17240))))

(declare-fun b!2772853 () Bool)

(declare-fun e!1748462 () Bool)

(declare-fun tp!876819 () Bool)

(assert (=> b!2772853 (= e!1748462 tp!876819)))

(declare-fun condMapEmpty!17240 () Bool)

(assert (=> mapNonEmpty!17234 (= condMapEmpty!17240 (= mapRest!17233 ((as const (Array (_ BitVec 32) List!32097)) mapDefault!17240)))))

(assert (=> mapNonEmpty!17234 (= tp!876693 (and e!1748464 mapRes!17240))))

(declare-fun b!2772857 () Bool)

(declare-fun tp!876822 () Bool)

(assert (=> b!2772857 (= e!1748465 tp!876822)))

(declare-fun tp!876821 () Bool)

(declare-fun setElem!22882 () Context!4602)

(declare-fun setNonEmpty!22882 () Bool)

(assert (=> setNonEmpty!22882 (= setRes!22881 (and tp!876821 (inv!43456 setElem!22882) e!1748462))))

(declare-fun setRest!22881 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22882 (= (_2!18958 (h!37417 mapValue!17240)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22882 true) setRest!22881))))

(assert (= (and mapNonEmpty!17234 condMapEmpty!17240) mapIsEmpty!17240))

(assert (= (and mapNonEmpty!17234 (not condMapEmpty!17240)) mapNonEmpty!17240))

(assert (= b!2772855 b!2772854))

(assert (= (and b!2772855 condSetEmpty!22882) setIsEmpty!22881))

(assert (= (and b!2772855 (not condSetEmpty!22882)) setNonEmpty!22882))

(assert (= setNonEmpty!22882 b!2772853))

(assert (= (and mapNonEmpty!17240 ((_ is Cons!31997) mapValue!17240)) b!2772855))

(assert (= b!2772856 b!2772852))

(assert (= (and b!2772856 condSetEmpty!22881) setIsEmpty!22882))

(assert (= (and b!2772856 (not condSetEmpty!22881)) setNonEmpty!22881))

(assert (= setNonEmpty!22881 b!2772857))

(assert (= (and mapNonEmpty!17234 ((_ is Cons!31997) mapDefault!17240)) b!2772856))

(declare-fun m!3199791 () Bool)

(assert (=> setNonEmpty!22882 m!3199791))

(declare-fun m!3199793 () Bool)

(assert (=> b!2772856 m!3199793))

(declare-fun m!3199795 () Bool)

(assert (=> b!2772855 m!3199795))

(declare-fun m!3199797 () Bool)

(assert (=> mapNonEmpty!17240 m!3199797))

(declare-fun m!3199799 () Bool)

(assert (=> setNonEmpty!22881 m!3199799))

(declare-fun b!2772858 () Bool)

(declare-fun e!1748466 () Bool)

(declare-fun tp!876825 () Bool)

(assert (=> b!2772858 (= e!1748466 tp!876825)))

(declare-fun tp!876824 () Bool)

(declare-fun e!1748467 () Bool)

(declare-fun setRes!22883 () Bool)

(declare-fun b!2772859 () Bool)

(declare-fun e!1748468 () Bool)

(assert (=> b!2772859 (= e!1748468 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 mapValue!17233)))) e!1748467 tp_is_empty!14015 setRes!22883 tp!876824))))

(declare-fun condSetEmpty!22883 () Bool)

(assert (=> b!2772859 (= condSetEmpty!22883 (= (_2!18958 (h!37417 mapValue!17233)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setIsEmpty!22883 () Bool)

(assert (=> setIsEmpty!22883 setRes!22883))

(assert (=> mapNonEmpty!17234 (= tp!876697 e!1748468)))

(declare-fun setElem!22883 () Context!4602)

(declare-fun tp!876827 () Bool)

(declare-fun setNonEmpty!22883 () Bool)

(assert (=> setNonEmpty!22883 (= setRes!22883 (and tp!876827 (inv!43456 setElem!22883) e!1748466))))

(declare-fun setRest!22883 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22883 (= (_2!18958 (h!37417 mapValue!17233)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22883 true) setRest!22883))))

(declare-fun b!2772860 () Bool)

(declare-fun tp!876826 () Bool)

(assert (=> b!2772860 (= e!1748467 tp!876826)))

(assert (= b!2772859 b!2772860))

(assert (= (and b!2772859 condSetEmpty!22883) setIsEmpty!22883))

(assert (= (and b!2772859 (not condSetEmpty!22883)) setNonEmpty!22883))

(assert (= setNonEmpty!22883 b!2772858))

(assert (= (and mapNonEmpty!17234 ((_ is Cons!31997) mapValue!17233)) b!2772859))

(declare-fun m!3199801 () Bool)

(assert (=> b!2772859 m!3199801))

(declare-fun m!3199803 () Bool)

(assert (=> setNonEmpty!22883 m!3199803))

(declare-fun condSetEmpty!22886 () Bool)

(assert (=> setNonEmpty!22860 (= condSetEmpty!22886 (= setRest!22860 ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setRes!22886 () Bool)

(assert (=> setNonEmpty!22860 (= tp!876692 setRes!22886)))

(declare-fun setIsEmpty!22886 () Bool)

(assert (=> setIsEmpty!22886 setRes!22886))

(declare-fun setElem!22886 () Context!4602)

(declare-fun e!1748471 () Bool)

(declare-fun tp!876832 () Bool)

(declare-fun setNonEmpty!22886 () Bool)

(assert (=> setNonEmpty!22886 (= setRes!22886 (and tp!876832 (inv!43456 setElem!22886) e!1748471))))

(declare-fun setRest!22886 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22886 (= setRest!22860 ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22886 true) setRest!22886))))

(declare-fun b!2772865 () Bool)

(declare-fun tp!876833 () Bool)

(assert (=> b!2772865 (= e!1748471 tp!876833)))

(assert (= (and setNonEmpty!22860 condSetEmpty!22886) setIsEmpty!22886))

(assert (= (and setNonEmpty!22860 (not condSetEmpty!22886)) setNonEmpty!22886))

(assert (= setNonEmpty!22886 b!2772865))

(declare-fun m!3199805 () Bool)

(assert (=> setNonEmpty!22886 m!3199805))

(declare-fun b!2772866 () Bool)

(declare-fun e!1748472 () Bool)

(declare-fun tp!876835 () Bool)

(assert (=> b!2772866 (= e!1748472 tp!876835)))

(declare-fun b!2772867 () Bool)

(declare-fun setRes!22887 () Bool)

(declare-fun e!1748474 () Bool)

(declare-fun tp!876834 () Bool)

(declare-fun e!1748473 () Bool)

(assert (=> b!2772867 (= e!1748474 (and (inv!43456 (_1!18957 (_1!18958 (h!37417 mapDefault!17233)))) e!1748473 tp_is_empty!14015 setRes!22887 tp!876834))))

(declare-fun condSetEmpty!22887 () Bool)

(assert (=> b!2772867 (= condSetEmpty!22887 (= (_2!18958 (h!37417 mapDefault!17233)) ((as const (Array Context!4602 Bool)) false)))))

(declare-fun setIsEmpty!22887 () Bool)

(assert (=> setIsEmpty!22887 setRes!22887))

(assert (=> b!2772685 (= tp!876694 e!1748474)))

(declare-fun setNonEmpty!22887 () Bool)

(declare-fun tp!876837 () Bool)

(declare-fun setElem!22887 () Context!4602)

(assert (=> setNonEmpty!22887 (= setRes!22887 (and tp!876837 (inv!43456 setElem!22887) e!1748472))))

(declare-fun setRest!22887 () (InoxSet Context!4602))

(assert (=> setNonEmpty!22887 (= (_2!18958 (h!37417 mapDefault!17233)) ((_ map or) (store ((as const (Array Context!4602 Bool)) false) setElem!22887 true) setRest!22887))))

(declare-fun b!2772868 () Bool)

(declare-fun tp!876836 () Bool)

(assert (=> b!2772868 (= e!1748473 tp!876836)))

(assert (= b!2772867 b!2772868))

(assert (= (and b!2772867 condSetEmpty!22887) setIsEmpty!22887))

(assert (= (and b!2772867 (not condSetEmpty!22887)) setNonEmpty!22887))

(assert (= setNonEmpty!22887 b!2772866))

(assert (= (and b!2772685 ((_ is Cons!31997) mapDefault!17233)) b!2772867))

(declare-fun m!3199807 () Bool)

(assert (=> b!2772867 m!3199807))

(declare-fun m!3199809 () Bool)

(assert (=> setNonEmpty!22887 m!3199809))

(check-sat (not b!2772852) (not mapNonEmpty!17237) (not b!2772853) (not setNonEmpty!22882) (not setNonEmpty!22875) (not b!2772747) (not setNonEmpty!22883) tp_is_empty!14015 (not d!806314) (not bm!181267) (not setNonEmpty!22873) (not b!2772804) (not b!2772832) (not bm!181262) (not bm!181263) (not b!2772817) (not b!2772816) (not b!2772759) (not b!2772778) (not d!806294) (not d!806308) b_and!202967 (not setNonEmpty!22868) (not b!2772831) (not setNonEmpty!22881) (not b!2772767) (not b!2772711) (not b_next!78935) b_and!202969 (not bm!181266) (not bm!181268) (not b!2772859) (not setNonEmpty!22869) (not b!2772826) (not b!2772801) (not b!2772867) (not setNonEmpty!22876) (not b!2772833) (not bm!181265) (not d!806288) (not b!2772799) (not d!806312) (not b!2772783) (not b!2772829) (not d!806310) (not b!2772815) (not b!2772860) (not setNonEmpty!22870) (not b!2772713) (not b!2772746) (not b_next!78939) (not b!2772704) (not b_next!78937) (not b!2772798) (not bm!181264) (not bm!181269) (not setNonEmpty!22886) (not b!2772865) (not b!2772830) (not b!2772837) (not b!2772805) (not b!2772836) b_and!202973 (not b!2772857) (not mapNonEmpty!17240) (not b!2772744) (not b!2772806) (not b!2772776) (not b!2772855) (not b!2772800) (not b!2772760) (not b!2772828) (not d!806320) (not b!2772692) (not b!2772835) b_and!202971 (not d!806322) (not bm!181271) (not b!2772866) (not d!806298) (not b!2772777) (not b!2772766) (not b!2772868) (not setNonEmpty!22887) (not b!2772827) (not b!2772858) (not d!806316) (not d!806318) (not bm!181270) (not b!2772854) (not b_next!78933) (not setNonEmpty!22874) (not b!2772701) (not b!2772803) (not b!2772856) (not setNonEmpty!22863) (not b!2772834) (not b!2772802))
(check-sat b_and!202967 b_and!202973 b_and!202971 (not b_next!78933) (not b_next!78935) b_and!202969 (not b_next!78937) (not b_next!78939))
