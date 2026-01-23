; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228176 () Bool)

(assert start!228176)

(declare-fun b!2313106 () Bool)

(declare-fun b_free!70045 () Bool)

(declare-fun b_next!70749 () Bool)

(assert (=> b!2313106 (= b_free!70045 (not b_next!70749))))

(declare-fun tp!734142 () Bool)

(declare-fun b_and!184945 () Bool)

(assert (=> b!2313106 (= tp!734142 b_and!184945)))

(declare-fun b!2313101 () Bool)

(declare-fun b_free!70047 () Bool)

(declare-fun b_next!70751 () Bool)

(assert (=> b!2313101 (= b_free!70047 (not b_next!70751))))

(declare-fun tp!734141 () Bool)

(declare-fun b_and!184947 () Bool)

(assert (=> b!2313101 (= tp!734141 b_and!184947)))

(declare-fun b!2313108 () Bool)

(declare-fun b_free!70049 () Bool)

(declare-fun b_next!70753 () Bool)

(assert (=> b!2313108 (= b_free!70049 (not b_next!70753))))

(declare-fun tp!734153 () Bool)

(declare-fun b_and!184949 () Bool)

(assert (=> b!2313108 (= tp!734153 b_and!184949)))

(declare-fun b!2313102 () Bool)

(declare-fun b_free!70051 () Bool)

(declare-fun b_next!70755 () Bool)

(assert (=> b!2313102 (= b_free!70051 (not b_next!70755))))

(declare-fun tp!734144 () Bool)

(declare-fun b_and!184951 () Bool)

(assert (=> b!2313102 (= tp!734144 b_and!184951)))

(declare-fun mapIsEmpty!14914 () Bool)

(declare-fun mapRes!14915 () Bool)

(assert (=> mapIsEmpty!14914 mapRes!14915))

(declare-fun b!2313090 () Bool)

(declare-fun e!1482624 () Bool)

(declare-datatypes ((C!13688 0))(
  ( (C!13689 (val!7900 Int)) )
))
(declare-datatypes ((List!27644 0))(
  ( (Nil!27546) (Cons!27546 (h!32947 C!13688) (t!207238 List!27644)) )
))
(declare-datatypes ((IArray!18001 0))(
  ( (IArray!18002 (innerList!9058 List!27644)) )
))
(declare-datatypes ((Conc!8998 0))(
  ( (Node!8998 (left!20891 Conc!8998) (right!21221 Conc!8998) (csize!18226 Int) (cheight!9209 Int)) (Leaf!13204 (xs!11940 IArray!18001) (csize!18227 Int)) (Empty!8998) )
))
(declare-datatypes ((BalanceConc!17728 0))(
  ( (BalanceConc!17729 (c!366703 Conc!8998)) )
))
(declare-fun totalInput!803 () BalanceConc!17728)

(declare-fun tp!734146 () Bool)

(declare-fun inv!37280 (Conc!8998) Bool)

(assert (=> b!2313090 (= e!1482624 (and (inv!37280 (c!366703 totalInput!803)) tp!734146))))

(declare-fun res!988658 () Bool)

(declare-fun e!1482626 () Bool)

(assert (=> start!228176 (=> (not res!988658) (not e!1482626))))

(declare-fun input!5503 () BalanceConc!17728)

(declare-fun isSuffix!797 (List!27644 List!27644) Bool)

(declare-fun list!10911 (BalanceConc!17728) List!27644)

(assert (=> start!228176 (= res!988658 (isSuffix!797 (list!10911 input!5503) (list!10911 totalInput!803)))))

(assert (=> start!228176 e!1482626))

(declare-fun e!1482619 () Bool)

(declare-fun inv!37281 (BalanceConc!17728) Bool)

(assert (=> start!228176 (and (inv!37281 input!5503) e!1482619)))

(declare-datatypes ((Regex!6769 0))(
  ( (ElementMatch!6769 (c!366704 C!13688)) (Concat!11357 (regOne!14050 Regex!6769) (regTwo!14050 Regex!6769)) (EmptyExpr!6769) (Star!6769 (reg!7098 Regex!6769)) (EmptyLang!6769) (Union!6769 (regOne!14051 Regex!6769) (regTwo!14051 Regex!6769)) )
))
(declare-datatypes ((List!27645 0))(
  ( (Nil!27547) (Cons!27547 (h!32948 Regex!6769) (t!207239 List!27645)) )
))
(declare-datatypes ((Context!4182 0))(
  ( (Context!4183 (exprs!2591 List!27645)) )
))
(declare-datatypes ((tuple3!4096 0))(
  ( (tuple3!4097 (_1!16259 Regex!6769) (_2!16259 Context!4182) (_3!2518 C!13688)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27482 0))(
  ( (tuple2!27483 (_1!16260 tuple3!4096) (_2!16260 (InoxSet Context!4182))) )
))
(declare-datatypes ((List!27646 0))(
  ( (Nil!27548) (Cons!27548 (h!32949 tuple2!27482) (t!207240 List!27646)) )
))
(declare-datatypes ((array!11166 0))(
  ( (array!11167 (arr!4953 (Array (_ BitVec 32) List!27646)) (size!21759 (_ BitVec 32))) )
))
(declare-datatypes ((array!11168 0))(
  ( (array!11169 (arr!4954 (Array (_ BitVec 32) (_ BitVec 64))) (size!21760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6370 0))(
  ( (LongMapFixedSize!6371 (defaultEntry!3550 Int) (mask!7939 (_ BitVec 32)) (extraKeys!3433 (_ BitVec 32)) (zeroValue!3443 List!27646) (minValue!3443 List!27646) (_size!6417 (_ BitVec 32)) (_keys!3482 array!11168) (_values!3465 array!11166) (_vacant!3246 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12557 0))(
  ( (Cell!12558 (v!30609 LongMapFixedSize!6370)) )
))
(declare-datatypes ((MutLongMap!3185 0))(
  ( (LongMap!3185 (underlying!6575 Cell!12557)) (MutLongMapExt!3184 (__x!18257 Int)) )
))
(declare-datatypes ((Cell!12559 0))(
  ( (Cell!12560 (v!30610 MutLongMap!3185)) )
))
(declare-datatypes ((Hashable!3095 0))(
  ( (HashableExt!3094 (__x!18258 Int)) )
))
(declare-datatypes ((MutableMap!3095 0))(
  ( (MutableMapExt!3094 (__x!18259 Int)) (HashMap!3095 (underlying!6576 Cell!12559) (hashF!5018 Hashable!3095) (_size!6418 (_ BitVec 32)) (defaultValue!3257 Int)) )
))
(declare-datatypes ((CacheDown!2158 0))(
  ( (CacheDown!2159 (cache!3474 MutableMap!3095)) )
))
(declare-fun cacheDown!1056 () CacheDown!2158)

(declare-fun e!1482615 () Bool)

(declare-fun inv!37282 (CacheDown!2158) Bool)

(assert (=> start!228176 (and (inv!37282 cacheDown!1056) e!1482615)))

(declare-fun condSetEmpty!20755 () Bool)

(declare-fun z!3756 () (InoxSet Context!4182))

(assert (=> start!228176 (= condSetEmpty!20755 (= z!3756 ((as const (Array Context!4182 Bool)) false)))))

(declare-fun setRes!20755 () Bool)

(assert (=> start!228176 setRes!20755))

(declare-datatypes ((tuple2!27484 0))(
  ( (tuple2!27485 (_1!16261 Context!4182) (_2!16261 C!13688)) )
))
(declare-datatypes ((tuple2!27486 0))(
  ( (tuple2!27487 (_1!16262 tuple2!27484) (_2!16262 (InoxSet Context!4182))) )
))
(declare-datatypes ((List!27647 0))(
  ( (Nil!27549) (Cons!27549 (h!32950 tuple2!27486) (t!207241 List!27647)) )
))
(declare-datatypes ((array!11170 0))(
  ( (array!11171 (arr!4955 (Array (_ BitVec 32) List!27647)) (size!21761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6372 0))(
  ( (LongMapFixedSize!6373 (defaultEntry!3551 Int) (mask!7940 (_ BitVec 32)) (extraKeys!3434 (_ BitVec 32)) (zeroValue!3444 List!27647) (minValue!3444 List!27647) (_size!6419 (_ BitVec 32)) (_keys!3483 array!11168) (_values!3466 array!11170) (_vacant!3247 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12561 0))(
  ( (Cell!12562 (v!30611 LongMapFixedSize!6372)) )
))
(declare-datatypes ((MutLongMap!3186 0))(
  ( (LongMap!3186 (underlying!6577 Cell!12561)) (MutLongMapExt!3185 (__x!18260 Int)) )
))
(declare-datatypes ((Cell!12563 0))(
  ( (Cell!12564 (v!30612 MutLongMap!3186)) )
))
(declare-datatypes ((Hashable!3096 0))(
  ( (HashableExt!3095 (__x!18261 Int)) )
))
(declare-datatypes ((MutableMap!3096 0))(
  ( (MutableMapExt!3095 (__x!18262 Int)) (HashMap!3096 (underlying!6578 Cell!12563) (hashF!5019 Hashable!3096) (_size!6420 (_ BitVec 32)) (defaultValue!3258 Int)) )
))
(declare-datatypes ((CacheUp!2048 0))(
  ( (CacheUp!2049 (cache!3475 MutableMap!3096)) )
))
(declare-fun cacheUp!937 () CacheUp!2048)

(declare-fun e!1482629 () Bool)

(declare-fun inv!37283 (CacheUp!2048) Bool)

(assert (=> start!228176 (and (inv!37283 cacheUp!937) e!1482629)))

(assert (=> start!228176 (and (inv!37281 totalInput!803) e!1482624)))

(declare-fun mapIsEmpty!14915 () Bool)

(declare-fun mapRes!14914 () Bool)

(assert (=> mapIsEmpty!14915 mapRes!14914))

(declare-fun b!2313091 () Bool)

(declare-fun e!1482630 () Bool)

(declare-fun e!1482613 () Bool)

(assert (=> b!2313091 (= e!1482630 e!1482613)))

(declare-fun b!2313092 () Bool)

(declare-fun e!1482616 () Bool)

(assert (=> b!2313092 (= e!1482616 e!1482630)))

(declare-fun b!2313093 () Bool)

(declare-fun e!1482622 () Bool)

(declare-fun tp!734143 () Bool)

(assert (=> b!2313093 (= e!1482622 tp!734143)))

(declare-fun b!2313094 () Bool)

(declare-fun e!1482632 () Bool)

(declare-fun e!1482617 () Bool)

(declare-fun lt!857800 () MutLongMap!3185)

(get-info :version)

(assert (=> b!2313094 (= e!1482632 (and e!1482617 ((_ is LongMap!3185) lt!857800)))))

(assert (=> b!2313094 (= lt!857800 (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))))

(declare-fun b!2313095 () Bool)

(declare-fun e!1482620 () Bool)

(declare-fun tp!734140 () Bool)

(assert (=> b!2313095 (= e!1482620 (and tp!734140 mapRes!14915))))

(declare-fun condMapEmpty!14914 () Bool)

(declare-fun mapDefault!14915 () List!27647)

(assert (=> b!2313095 (= condMapEmpty!14914 (= (arr!4955 (_values!3466 (v!30611 (underlying!6577 (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))))) ((as const (Array (_ BitVec 32) List!27647)) mapDefault!14915)))))

(declare-fun b!2313096 () Bool)

(declare-fun e!1482628 () Bool)

(assert (=> b!2313096 (= e!1482617 e!1482628)))

(declare-fun b!2313097 () Bool)

(declare-fun tp!734148 () Bool)

(assert (=> b!2313097 (= e!1482619 (and (inv!37280 (c!366703 input!5503)) tp!734148))))

(declare-fun b!2313098 () Bool)

(declare-fun res!988660 () Bool)

(declare-fun e!1482614 () Bool)

(assert (=> b!2313098 (=> (not res!988660) (not e!1482614))))

(declare-datatypes ((tuple3!4098 0))(
  ( (tuple3!4099 (_1!16263 Int) (_2!16263 CacheUp!2048) (_3!2519 CacheDown!2158)) )
))
(declare-fun lt!857796 () tuple3!4098)

(declare-fun valid!2392 (CacheUp!2048) Bool)

(assert (=> b!2313098 (= res!988660 (valid!2392 (_2!16263 lt!857796)))))

(declare-fun setElem!20755 () Context!4182)

(declare-fun setNonEmpty!20755 () Bool)

(declare-fun tp!734139 () Bool)

(declare-fun inv!37284 (Context!4182) Bool)

(assert (=> setNonEmpty!20755 (= setRes!20755 (and tp!734139 (inv!37284 setElem!20755) e!1482622))))

(declare-fun setRest!20755 () (InoxSet Context!4182))

(assert (=> setNonEmpty!20755 (= z!3756 ((_ map or) (store ((as const (Array Context!4182 Bool)) false) setElem!20755 true) setRest!20755))))

(declare-fun b!2313099 () Bool)

(assert (=> b!2313099 (= e!1482626 (not true))))

(declare-datatypes ((tuple2!27488 0))(
  ( (tuple2!27489 (_1!16264 BalanceConc!17728) (_2!16264 BalanceConc!17728)) )
))
(declare-fun lt!857795 () tuple2!27488)

(declare-fun splitAt!71 (BalanceConc!17728 Int) tuple2!27488)

(assert (=> b!2313099 (= lt!857795 (splitAt!71 input!5503 (_1!16263 lt!857796)))))

(assert (=> b!2313099 e!1482614))

(declare-fun res!988659 () Bool)

(assert (=> b!2313099 (=> (not res!988659) (not e!1482614))))

(declare-fun lt!857799 () Int)

(declare-fun lt!857797 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!11 ((InoxSet Context!4182) Int BalanceConc!17728 Int) Int)

(assert (=> b!2313099 (= res!988659 (= (_1!16263 lt!857796) (findLongestMatchInnerZipperFastV2!11 z!3756 lt!857797 totalInput!803 lt!857799)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!8 ((InoxSet Context!4182) Int BalanceConc!17728 Int CacheUp!2048 CacheDown!2158) tuple3!4098)

(assert (=> b!2313099 (= lt!857796 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!8 z!3756 lt!857797 totalInput!803 lt!857799 cacheUp!937 cacheDown!1056))))

(declare-fun size!21762 (BalanceConc!17728) Int)

(assert (=> b!2313099 (= lt!857797 (- lt!857799 (size!21762 input!5503)))))

(assert (=> b!2313099 (= lt!857799 (size!21762 totalInput!803))))

(declare-fun b!2313100 () Bool)

(declare-fun e!1482627 () Bool)

(assert (=> b!2313100 (= e!1482629 e!1482627)))

(declare-fun tp!734149 () Bool)

(declare-fun tp!734151 () Bool)

(declare-fun array_inv!3558 (array!11168) Bool)

(declare-fun array_inv!3559 (array!11170) Bool)

(assert (=> b!2313101 (= e!1482613 (and tp!734141 tp!734149 tp!734151 (array_inv!3558 (_keys!3483 (v!30611 (underlying!6577 (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))))) (array_inv!3559 (_values!3466 (v!30611 (underlying!6577 (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))))) e!1482620))))

(declare-fun mapNonEmpty!14914 () Bool)

(declare-fun tp!734145 () Bool)

(declare-fun tp!734154 () Bool)

(assert (=> mapNonEmpty!14914 (= mapRes!14915 (and tp!734145 tp!734154))))

(declare-fun mapKey!14914 () (_ BitVec 32))

(declare-fun mapRest!14915 () (Array (_ BitVec 32) List!27647))

(declare-fun mapValue!14915 () List!27647)

(assert (=> mapNonEmpty!14914 (= (arr!4955 (_values!3466 (v!30611 (underlying!6577 (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))))) (store mapRest!14915 mapKey!14914 mapValue!14915))))

(declare-fun e!1482621 () Bool)

(assert (=> b!2313102 (= e!1482621 (and e!1482632 tp!734144))))

(declare-fun b!2313103 () Bool)

(assert (=> b!2313103 (= e!1482615 e!1482621)))

(declare-fun b!2313104 () Bool)

(declare-fun valid!2393 (CacheDown!2158) Bool)

(assert (=> b!2313104 (= e!1482614 (valid!2393 (_3!2519 lt!857796)))))

(declare-fun b!2313105 () Bool)

(declare-fun e!1482618 () Bool)

(declare-fun lt!857798 () MutLongMap!3186)

(assert (=> b!2313105 (= e!1482618 (and e!1482616 ((_ is LongMap!3186) lt!857798)))))

(assert (=> b!2313105 (= lt!857798 (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))))

(declare-fun e!1482633 () Bool)

(declare-fun tp!734152 () Bool)

(declare-fun e!1482623 () Bool)

(declare-fun tp!734138 () Bool)

(declare-fun array_inv!3560 (array!11166) Bool)

(assert (=> b!2313106 (= e!1482623 (and tp!734142 tp!734152 tp!734138 (array_inv!3558 (_keys!3482 (v!30609 (underlying!6575 (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))))) (array_inv!3560 (_values!3465 (v!30609 (underlying!6575 (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))))) e!1482633))))

(declare-fun mapNonEmpty!14915 () Bool)

(declare-fun tp!734150 () Bool)

(declare-fun tp!734155 () Bool)

(assert (=> mapNonEmpty!14915 (= mapRes!14914 (and tp!734150 tp!734155))))

(declare-fun mapValue!14914 () List!27646)

(declare-fun mapKey!14915 () (_ BitVec 32))

(declare-fun mapRest!14914 () (Array (_ BitVec 32) List!27646))

(assert (=> mapNonEmpty!14915 (= (arr!4953 (_values!3465 (v!30609 (underlying!6575 (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))))) (store mapRest!14914 mapKey!14915 mapValue!14914))))

(declare-fun b!2313107 () Bool)

(assert (=> b!2313107 (= e!1482628 e!1482623)))

(declare-fun setIsEmpty!20755 () Bool)

(assert (=> setIsEmpty!20755 setRes!20755))

(assert (=> b!2313108 (= e!1482627 (and e!1482618 tp!734153))))

(declare-fun b!2313109 () Bool)

(declare-fun tp!734147 () Bool)

(assert (=> b!2313109 (= e!1482633 (and tp!734147 mapRes!14914))))

(declare-fun condMapEmpty!14915 () Bool)

(declare-fun mapDefault!14914 () List!27646)

(assert (=> b!2313109 (= condMapEmpty!14915 (= (arr!4953 (_values!3465 (v!30609 (underlying!6575 (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))))) ((as const (Array (_ BitVec 32) List!27646)) mapDefault!14914)))))

(assert (= (and start!228176 res!988658) b!2313099))

(assert (= (and b!2313099 res!988659) b!2313098))

(assert (= (and b!2313098 res!988660) b!2313104))

(assert (= start!228176 b!2313097))

(assert (= (and b!2313109 condMapEmpty!14915) mapIsEmpty!14915))

(assert (= (and b!2313109 (not condMapEmpty!14915)) mapNonEmpty!14915))

(assert (= b!2313106 b!2313109))

(assert (= b!2313107 b!2313106))

(assert (= b!2313096 b!2313107))

(assert (= (and b!2313094 ((_ is LongMap!3185) (v!30610 (underlying!6576 (cache!3474 cacheDown!1056))))) b!2313096))

(assert (= b!2313102 b!2313094))

(assert (= (and b!2313103 ((_ is HashMap!3095) (cache!3474 cacheDown!1056))) b!2313102))

(assert (= start!228176 b!2313103))

(assert (= (and start!228176 condSetEmpty!20755) setIsEmpty!20755))

(assert (= (and start!228176 (not condSetEmpty!20755)) setNonEmpty!20755))

(assert (= setNonEmpty!20755 b!2313093))

(assert (= (and b!2313095 condMapEmpty!14914) mapIsEmpty!14914))

(assert (= (and b!2313095 (not condMapEmpty!14914)) mapNonEmpty!14914))

(assert (= b!2313101 b!2313095))

(assert (= b!2313091 b!2313101))

(assert (= b!2313092 b!2313091))

(assert (= (and b!2313105 ((_ is LongMap!3186) (v!30612 (underlying!6578 (cache!3475 cacheUp!937))))) b!2313092))

(assert (= b!2313108 b!2313105))

(assert (= (and b!2313100 ((_ is HashMap!3096) (cache!3475 cacheUp!937))) b!2313108))

(assert (= start!228176 b!2313100))

(assert (= start!228176 b!2313090))

(declare-fun m!2740379 () Bool)

(assert (=> b!2313104 m!2740379))

(declare-fun m!2740381 () Bool)

(assert (=> mapNonEmpty!14914 m!2740381))

(declare-fun m!2740383 () Bool)

(assert (=> b!2313106 m!2740383))

(declare-fun m!2740385 () Bool)

(assert (=> b!2313106 m!2740385))

(declare-fun m!2740387 () Bool)

(assert (=> b!2313090 m!2740387))

(declare-fun m!2740389 () Bool)

(assert (=> setNonEmpty!20755 m!2740389))

(declare-fun m!2740391 () Bool)

(assert (=> b!2313099 m!2740391))

(declare-fun m!2740393 () Bool)

(assert (=> b!2313099 m!2740393))

(declare-fun m!2740395 () Bool)

(assert (=> b!2313099 m!2740395))

(declare-fun m!2740397 () Bool)

(assert (=> b!2313099 m!2740397))

(declare-fun m!2740399 () Bool)

(assert (=> b!2313099 m!2740399))

(declare-fun m!2740401 () Bool)

(assert (=> mapNonEmpty!14915 m!2740401))

(declare-fun m!2740403 () Bool)

(assert (=> start!228176 m!2740403))

(declare-fun m!2740405 () Bool)

(assert (=> start!228176 m!2740405))

(declare-fun m!2740407 () Bool)

(assert (=> start!228176 m!2740407))

(declare-fun m!2740409 () Bool)

(assert (=> start!228176 m!2740409))

(assert (=> start!228176 m!2740403))

(declare-fun m!2740411 () Bool)

(assert (=> start!228176 m!2740411))

(declare-fun m!2740413 () Bool)

(assert (=> start!228176 m!2740413))

(declare-fun m!2740415 () Bool)

(assert (=> start!228176 m!2740415))

(assert (=> start!228176 m!2740409))

(declare-fun m!2740417 () Bool)

(assert (=> b!2313098 m!2740417))

(declare-fun m!2740419 () Bool)

(assert (=> b!2313101 m!2740419))

(declare-fun m!2740421 () Bool)

(assert (=> b!2313101 m!2740421))

(declare-fun m!2740423 () Bool)

(assert (=> b!2313097 m!2740423))

(check-sat (not b!2313101) (not setNonEmpty!20755) b_and!184945 (not b_next!70755) b_and!184951 (not b!2313097) (not b_next!70753) (not b!2313099) (not b!2313095) (not b!2313106) (not b!2313104) b_and!184949 (not start!228176) (not b_next!70749) (not b!2313109) (not mapNonEmpty!14914) (not b!2313090) (not b_next!70751) b_and!184947 (not b!2313098) (not mapNonEmpty!14915) (not b!2313093))
(check-sat b_and!184945 (not b_next!70755) b_and!184951 (not b_next!70753) b_and!184949 (not b_next!70749) (not b_next!70751) b_and!184947)
