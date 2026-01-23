; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269744 () Bool)

(assert start!269744)

(declare-fun b!2790271 () Bool)

(declare-fun b_free!78981 () Bool)

(declare-fun b_next!79685 () Bool)

(assert (=> b!2790271 (= b_free!78981 (not b_next!79685))))

(declare-fun tp!885781 () Bool)

(declare-fun b_and!203719 () Bool)

(assert (=> b!2790271 (= tp!885781 b_and!203719)))

(declare-fun b!2790260 () Bool)

(declare-fun b_free!78983 () Bool)

(declare-fun b_next!79687 () Bool)

(assert (=> b!2790260 (= b_free!78983 (not b_next!79687))))

(declare-fun tp!885783 () Bool)

(declare-fun b_and!203721 () Bool)

(assert (=> b!2790260 (= tp!885783 b_and!203721)))

(declare-fun b!2790250 () Bool)

(declare-fun b_free!78985 () Bool)

(declare-fun b_next!79689 () Bool)

(assert (=> b!2790250 (= b_free!78985 (not b_next!79689))))

(declare-fun tp!885794 () Bool)

(declare-fun b_and!203723 () Bool)

(assert (=> b!2790250 (= tp!885794 b_and!203723)))

(declare-fun b!2790259 () Bool)

(declare-fun b_free!78987 () Bool)

(declare-fun b_next!79691 () Bool)

(assert (=> b!2790259 (= b_free!78987 (not b_next!79691))))

(declare-fun tp!885796 () Bool)

(declare-fun b_and!203725 () Bool)

(assert (=> b!2790259 (= tp!885796 b_and!203725)))

(declare-fun mapIsEmpty!17921 () Bool)

(declare-fun mapRes!17921 () Bool)

(assert (=> mapIsEmpty!17921 mapRes!17921))

(declare-fun e!1761595 () Bool)

(declare-fun e!1761607 () Bool)

(assert (=> b!2790250 (= e!1761595 (and e!1761607 tp!885794))))

(declare-fun b!2790251 () Bool)

(declare-fun e!1761602 () Bool)

(declare-datatypes ((C!16496 0))(
  ( (C!16497 (val!10182 Int)) )
))
(declare-datatypes ((List!32435 0))(
  ( (Nil!32335) (Cons!32335 (h!37755 C!16496) (t!228577 List!32435)) )
))
(declare-datatypes ((IArray!20073 0))(
  ( (IArray!20074 (innerList!10094 List!32435)) )
))
(declare-datatypes ((Conc!10034 0))(
  ( (Node!10034 (left!24510 Conc!10034) (right!24840 Conc!10034) (csize!20298 Int) (cheight!10245 Int)) (Leaf!15287 (xs!13145 IArray!20073) (csize!20299 Int)) (Empty!10034) )
))
(declare-datatypes ((BalanceConc!19682 0))(
  ( (BalanceConc!19683 (c!452946 Conc!10034)) )
))
(declare-fun totalInput!758 () BalanceConc!19682)

(declare-fun tp!885784 () Bool)

(declare-fun inv!43929 (Conc!10034) Bool)

(assert (=> b!2790251 (= e!1761602 (and (inv!43929 (c!452946 totalInput!758)) tp!885784))))

(declare-fun b!2790252 () Bool)

(declare-fun res!1164092 () Bool)

(declare-fun e!1761598 () Bool)

(assert (=> b!2790252 (=> (not res!1164092) (not e!1761598))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25167 (BalanceConc!19682) Int)

(assert (=> b!2790252 (= res!1164092 (= totalInputSize!205 (size!25167 totalInput!758)))))

(declare-fun b!2790253 () Bool)

(declare-fun e!1761597 () Bool)

(declare-fun tp!885785 () Bool)

(assert (=> b!2790253 (= e!1761597 (and tp!885785 mapRes!17921))))

(declare-fun condMapEmpty!17922 () Bool)

(declare-datatypes ((Hashable!3850 0))(
  ( (HashableExt!3849 (__x!21452 Int)) )
))
(declare-datatypes ((Regex!8169 0))(
  ( (ElementMatch!8169 (c!452947 C!16496)) (Concat!13257 (regOne!16850 Regex!8169) (regTwo!16850 Regex!8169)) (EmptyExpr!8169) (Star!8169 (reg!8498 Regex!8169)) (EmptyLang!8169) (Union!8169 (regOne!16851 Regex!8169) (regTwo!16851 Regex!8169)) )
))
(declare-datatypes ((List!32436 0))(
  ( (Nil!32336) (Cons!32336 (h!37756 Regex!8169) (t!228578 List!32436)) )
))
(declare-datatypes ((Context!4774 0))(
  ( (Context!4775 (exprs!2887 List!32436)) )
))
(declare-datatypes ((tuple2!32774 0))(
  ( (tuple2!32775 (_1!19394 Context!4774) (_2!19394 C!16496)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32776 0))(
  ( (tuple2!32777 (_1!19395 tuple2!32774) (_2!19395 (InoxSet Context!4774))) )
))
(declare-datatypes ((List!32437 0))(
  ( (Nil!32337) (Cons!32337 (h!37757 tuple2!32776) (t!228579 List!32437)) )
))
(declare-datatypes ((array!13993 0))(
  ( (array!13994 (arr!6236 (Array (_ BitVec 32) List!32437)) (size!25168 (_ BitVec 32))) )
))
(declare-datatypes ((array!13995 0))(
  ( (array!13996 (arr!6237 (Array (_ BitVec 32) (_ BitVec 64))) (size!25169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7868 0))(
  ( (LongMapFixedSize!7869 (defaultEntry!4319 Int) (mask!9755 (_ BitVec 32)) (extraKeys!4183 (_ BitVec 32)) (zeroValue!4193 List!32437) (minValue!4193 List!32437) (_size!7911 (_ BitVec 32)) (_keys!4234 array!13995) (_values!4215 array!13993) (_vacant!3995 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15545 0))(
  ( (Cell!15546 (v!33941 LongMapFixedSize!7868)) )
))
(declare-datatypes ((MutLongMap!3934 0))(
  ( (LongMap!3934 (underlying!8071 Cell!15545)) (MutLongMapExt!3933 (__x!21453 Int)) )
))
(declare-datatypes ((Cell!15547 0))(
  ( (Cell!15548 (v!33942 MutLongMap!3934)) )
))
(declare-datatypes ((MutableMap!3840 0))(
  ( (MutableMapExt!3839 (__x!21454 Int)) (HashMap!3840 (underlying!8072 Cell!15547) (hashF!5882 Hashable!3850) (_size!7912 (_ BitVec 32)) (defaultValue!4011 Int)) )
))
(declare-datatypes ((CacheUp!2546 0))(
  ( (CacheUp!2547 (cache!3983 MutableMap!3840)) )
))
(declare-fun cacheUp!890 () CacheUp!2546)

(declare-fun mapDefault!17921 () List!32437)

(assert (=> b!2790253 (= condMapEmpty!17922 (= (arr!6236 (_values!4215 (v!33941 (underlying!8071 (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32437)) mapDefault!17921)))))

(declare-fun b!2790254 () Bool)

(declare-fun e!1761594 () Bool)

(declare-fun e!1761608 () Bool)

(assert (=> b!2790254 (= e!1761594 e!1761608)))

(declare-fun b!2790255 () Bool)

(declare-fun res!1164088 () Bool)

(assert (=> b!2790255 (=> (not res!1164088) (not e!1761598))))

(declare-fun valid!3073 (CacheUp!2546) Bool)

(assert (=> b!2790255 (= res!1164088 (valid!3073 cacheUp!890))))

(declare-fun b!2790256 () Bool)

(declare-fun e!1761603 () Bool)

(declare-fun tp!885795 () Bool)

(assert (=> b!2790256 (= e!1761603 tp!885795)))

(declare-fun b!2790257 () Bool)

(declare-fun e!1761605 () Bool)

(assert (=> b!2790257 (= e!1761605 e!1761595)))

(declare-fun b!2790258 () Bool)

(declare-fun e!1761588 () Bool)

(declare-fun tp_is_empty!14151 () Bool)

(declare-fun tp!885790 () Bool)

(assert (=> b!2790258 (= e!1761588 (and tp_is_empty!14151 tp!885790))))

(declare-fun e!1761604 () Bool)

(assert (=> b!2790260 (= e!1761608 (and e!1761604 tp!885783))))

(declare-fun b!2790261 () Bool)

(declare-fun e!1761599 () Bool)

(declare-fun tp!885780 () Bool)

(declare-fun mapRes!17922 () Bool)

(assert (=> b!2790261 (= e!1761599 (and tp!885780 mapRes!17922))))

(declare-fun condMapEmpty!17921 () Bool)

(declare-datatypes ((tuple3!5074 0))(
  ( (tuple3!5075 (_1!19396 Regex!8169) (_2!19396 Context!4774) (_3!3007 C!16496)) )
))
(declare-datatypes ((tuple2!32778 0))(
  ( (tuple2!32779 (_1!19397 tuple3!5074) (_2!19397 (InoxSet Context!4774))) )
))
(declare-datatypes ((List!32438 0))(
  ( (Nil!32338) (Cons!32338 (h!37758 tuple2!32778) (t!228580 List!32438)) )
))
(declare-datatypes ((array!13997 0))(
  ( (array!13998 (arr!6238 (Array (_ BitVec 32) List!32438)) (size!25170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7870 0))(
  ( (LongMapFixedSize!7871 (defaultEntry!4320 Int) (mask!9756 (_ BitVec 32)) (extraKeys!4184 (_ BitVec 32)) (zeroValue!4194 List!32438) (minValue!4194 List!32438) (_size!7913 (_ BitVec 32)) (_keys!4235 array!13995) (_values!4216 array!13997) (_vacant!3996 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15549 0))(
  ( (Cell!15550 (v!33943 LongMapFixedSize!7870)) )
))
(declare-datatypes ((MutLongMap!3935 0))(
  ( (LongMap!3935 (underlying!8073 Cell!15549)) (MutLongMapExt!3934 (__x!21455 Int)) )
))
(declare-datatypes ((Cell!15551 0))(
  ( (Cell!15552 (v!33944 MutLongMap!3935)) )
))
(declare-datatypes ((Hashable!3851 0))(
  ( (HashableExt!3850 (__x!21456 Int)) )
))
(declare-datatypes ((MutableMap!3841 0))(
  ( (MutableMapExt!3840 (__x!21457 Int)) (HashMap!3841 (underlying!8074 Cell!15551) (hashF!5883 Hashable!3851) (_size!7914 (_ BitVec 32)) (defaultValue!4012 Int)) )
))
(declare-datatypes ((CacheDown!2666 0))(
  ( (CacheDown!2667 (cache!3984 MutableMap!3841)) )
))
(declare-fun cacheDown!1009 () CacheDown!2666)

(declare-fun mapDefault!17922 () List!32438)

(assert (=> b!2790261 (= condMapEmpty!17921 (= (arr!6238 (_values!4216 (v!33943 (underlying!8073 (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32438)) mapDefault!17922)))))

(declare-fun b!2790262 () Bool)

(declare-fun e!1761586 () Bool)

(declare-fun e!1761591 () Bool)

(assert (=> b!2790262 (= e!1761586 e!1761591)))

(declare-fun mapIsEmpty!17922 () Bool)

(assert (=> mapIsEmpty!17922 mapRes!17922))

(declare-fun b!2790263 () Bool)

(declare-fun res!1164086 () Bool)

(assert (=> b!2790263 (=> (not res!1164086) (not e!1761598))))

(declare-fun testedPSize!143 () Int)

(declare-fun testedP!183 () List!32435)

(declare-fun size!25171 (List!32435) Int)

(assert (=> b!2790263 (= res!1164086 (= testedPSize!143 (size!25171 testedP!183)))))

(declare-fun b!2790264 () Bool)

(declare-fun res!1164087 () Bool)

(declare-fun e!1761601 () Bool)

(assert (=> b!2790264 (=> res!1164087 e!1761601)))

(assert (=> b!2790264 (= res!1164087 (not (= testedPSize!143 totalInputSize!205)))))

(declare-fun b!2790265 () Bool)

(declare-fun e!1761590 () Bool)

(assert (=> b!2790265 (= e!1761590 e!1761586)))

(declare-fun b!2790266 () Bool)

(declare-fun e!1761587 () Bool)

(declare-fun tp!885793 () Bool)

(assert (=> b!2790266 (= e!1761587 (and tp_is_empty!14151 tp!885793))))

(declare-fun setRes!23809 () Bool)

(declare-fun tp!885779 () Bool)

(declare-fun setNonEmpty!23809 () Bool)

(declare-fun setElem!23809 () Context!4774)

(declare-fun inv!43930 (Context!4774) Bool)

(assert (=> setNonEmpty!23809 (= setRes!23809 (and tp!885779 (inv!43930 setElem!23809) e!1761603))))

(declare-fun z!3684 () (InoxSet Context!4774))

(declare-fun setRest!23809 () (InoxSet Context!4774))

(assert (=> setNonEmpty!23809 (= z!3684 ((_ map or) (store ((as const (Array Context!4774 Bool)) false) setElem!23809 true) setRest!23809))))

(declare-fun b!2790267 () Bool)

(declare-fun e!1761606 () Bool)

(assert (=> b!2790267 (= e!1761606 e!1761601)))

(declare-fun res!1164091 () Bool)

(assert (=> b!2790267 (=> res!1164091 e!1761601)))

(declare-fun lostCauseZipper!477 ((InoxSet Context!4774)) Bool)

(assert (=> b!2790267 (= res!1164091 (lostCauseZipper!477 z!3684))))

(declare-fun testedSuffix!143 () List!32435)

(declare-fun lt!997483 () List!32435)

(assert (=> b!2790267 (and (= testedSuffix!143 lt!997483) (= lt!997483 testedSuffix!143))))

(declare-fun lt!997485 () List!32435)

(declare-datatypes ((Unit!46542 0))(
  ( (Unit!46543) )
))
(declare-fun lt!997490 () Unit!46542)

(declare-fun lemmaSamePrefixThenSameSuffix!1178 (List!32435 List!32435 List!32435 List!32435 List!32435) Unit!46542)

(assert (=> b!2790267 (= lt!997490 (lemmaSamePrefixThenSameSuffix!1178 testedP!183 testedSuffix!143 testedP!183 lt!997483 lt!997485))))

(declare-fun getSuffix!1277 (List!32435 List!32435) List!32435)

(assert (=> b!2790267 (= lt!997483 (getSuffix!1277 lt!997485 testedP!183))))

(declare-fun b!2790268 () Bool)

(declare-fun res!1164093 () Bool)

(assert (=> b!2790268 (=> (not res!1164093) (not e!1761598))))

(declare-fun valid!3074 (CacheDown!2666) Bool)

(assert (=> b!2790268 (= res!1164093 (valid!3074 cacheDown!1009))))

(declare-fun b!2790269 () Bool)

(declare-fun lt!997491 () MutLongMap!3934)

(get-info :version)

(assert (=> b!2790269 (= e!1761607 (and e!1761590 ((_ is LongMap!3934) lt!997491)))))

(assert (=> b!2790269 (= lt!997491 (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))))

(declare-fun mapNonEmpty!17921 () Bool)

(declare-fun tp!885787 () Bool)

(declare-fun tp!885791 () Bool)

(assert (=> mapNonEmpty!17921 (= mapRes!17921 (and tp!885787 tp!885791))))

(declare-fun mapValue!17922 () List!32437)

(declare-fun mapKey!17921 () (_ BitVec 32))

(declare-fun mapRest!17922 () (Array (_ BitVec 32) List!32437))

(assert (=> mapNonEmpty!17921 (= (arr!6236 (_values!4215 (v!33941 (underlying!8071 (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))))) (store mapRest!17922 mapKey!17921 mapValue!17922))))

(declare-fun b!2790270 () Bool)

(declare-fun e!1761600 () Bool)

(declare-fun e!1761593 () Bool)

(assert (=> b!2790270 (= e!1761600 e!1761593)))

(declare-fun tp!885788 () Bool)

(declare-fun tp!885786 () Bool)

(declare-fun array_inv!4463 (array!13995) Bool)

(declare-fun array_inv!4464 (array!13993) Bool)

(assert (=> b!2790271 (= e!1761591 (and tp!885781 tp!885788 tp!885786 (array_inv!4463 (_keys!4234 (v!33941 (underlying!8071 (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))))) (array_inv!4464 (_values!4215 (v!33941 (underlying!8071 (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))))) e!1761597))))

(declare-fun b!2790272 () Bool)

(assert (=> b!2790272 (= e!1761601 (= testedP!183 lt!997485))))

(assert (=> b!2790272 (= lt!997485 testedP!183)))

(declare-fun lt!997484 () Unit!46542)

(declare-fun lemmaIsPrefixSameLengthThenSameList!484 (List!32435 List!32435 List!32435) Unit!46542)

(assert (=> b!2790272 (= lt!997484 (lemmaIsPrefixSameLengthThenSameList!484 lt!997485 testedP!183 lt!997485))))

(declare-fun isPrefix!2601 (List!32435 List!32435) Bool)

(assert (=> b!2790272 (isPrefix!2601 lt!997485 lt!997485)))

(declare-fun lt!997487 () Unit!46542)

(declare-fun lemmaIsPrefixRefl!1704 (List!32435 List!32435) Unit!46542)

(assert (=> b!2790272 (= lt!997487 (lemmaIsPrefixRefl!1704 lt!997485 lt!997485))))

(declare-fun mapNonEmpty!17922 () Bool)

(declare-fun tp!885792 () Bool)

(declare-fun tp!885797 () Bool)

(assert (=> mapNonEmpty!17922 (= mapRes!17922 (and tp!885792 tp!885797))))

(declare-fun mapValue!17921 () List!32438)

(declare-fun mapKey!17922 () (_ BitVec 32))

(declare-fun mapRest!17921 () (Array (_ BitVec 32) List!32438))

(assert (=> mapNonEmpty!17922 (= (arr!6238 (_values!4216 (v!33943 (underlying!8073 (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))))) (store mapRest!17921 mapKey!17922 mapValue!17921))))

(declare-fun res!1164090 () Bool)

(assert (=> start!269744 (=> (not res!1164090) (not e!1761598))))

(declare-fun lt!997486 () List!32435)

(assert (=> start!269744 (= res!1164090 (= lt!997486 lt!997485))))

(declare-fun list!12162 (BalanceConc!19682) List!32435)

(assert (=> start!269744 (= lt!997485 (list!12162 totalInput!758))))

(declare-fun ++!7982 (List!32435 List!32435) List!32435)

(assert (=> start!269744 (= lt!997486 (++!7982 testedP!183 testedSuffix!143))))

(assert (=> start!269744 e!1761598))

(declare-fun inv!43931 (BalanceConc!19682) Bool)

(assert (=> start!269744 (and (inv!43931 totalInput!758) e!1761602)))

(declare-fun condSetEmpty!23809 () Bool)

(assert (=> start!269744 (= condSetEmpty!23809 (= z!3684 ((as const (Array Context!4774 Bool)) false)))))

(assert (=> start!269744 setRes!23809))

(assert (=> start!269744 true))

(assert (=> start!269744 e!1761587))

(assert (=> start!269744 e!1761588))

(declare-fun inv!43932 (CacheDown!2666) Bool)

(assert (=> start!269744 (and (inv!43932 cacheDown!1009) e!1761594)))

(declare-fun inv!43933 (CacheUp!2546) Bool)

(assert (=> start!269744 (and (inv!43933 cacheUp!890) e!1761605)))

(declare-fun tp!885789 () Bool)

(declare-fun e!1761592 () Bool)

(declare-fun tp!885782 () Bool)

(declare-fun array_inv!4465 (array!13997) Bool)

(assert (=> b!2790259 (= e!1761592 (and tp!885796 tp!885782 tp!885789 (array_inv!4463 (_keys!4235 (v!33943 (underlying!8073 (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))))) (array_inv!4465 (_values!4216 (v!33943 (underlying!8073 (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))))) e!1761599))))

(declare-fun b!2790273 () Bool)

(assert (=> b!2790273 (= e!1761593 e!1761592)))

(declare-fun b!2790274 () Bool)

(declare-fun lt!997489 () MutLongMap!3935)

(assert (=> b!2790274 (= e!1761604 (and e!1761600 ((_ is LongMap!3935) lt!997489)))))

(assert (=> b!2790274 (= lt!997489 (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))))

(declare-fun setIsEmpty!23809 () Bool)

(assert (=> setIsEmpty!23809 setRes!23809))

(declare-fun b!2790275 () Bool)

(assert (=> b!2790275 (= e!1761598 (not e!1761606))))

(declare-fun res!1164089 () Bool)

(assert (=> b!2790275 (=> res!1164089 e!1761606)))

(assert (=> b!2790275 (= res!1164089 (not (isPrefix!2601 testedP!183 lt!997485)))))

(assert (=> b!2790275 (isPrefix!2601 testedP!183 lt!997486)))

(declare-fun lt!997488 () Unit!46542)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1710 (List!32435 List!32435) Unit!46542)

(assert (=> b!2790275 (= lt!997488 (lemmaConcatTwoListThenFirstIsPrefix!1710 testedP!183 testedSuffix!143))))

(assert (= (and start!269744 res!1164090) b!2790263))

(assert (= (and b!2790263 res!1164086) b!2790252))

(assert (= (and b!2790252 res!1164092) b!2790255))

(assert (= (and b!2790255 res!1164088) b!2790268))

(assert (= (and b!2790268 res!1164093) b!2790275))

(assert (= (and b!2790275 (not res!1164089)) b!2790267))

(assert (= (and b!2790267 (not res!1164091)) b!2790264))

(assert (= (and b!2790264 (not res!1164087)) b!2790272))

(assert (= start!269744 b!2790251))

(assert (= (and start!269744 condSetEmpty!23809) setIsEmpty!23809))

(assert (= (and start!269744 (not condSetEmpty!23809)) setNonEmpty!23809))

(assert (= setNonEmpty!23809 b!2790256))

(assert (= (and start!269744 ((_ is Cons!32335) testedP!183)) b!2790266))

(assert (= (and start!269744 ((_ is Cons!32335) testedSuffix!143)) b!2790258))

(assert (= (and b!2790261 condMapEmpty!17921) mapIsEmpty!17922))

(assert (= (and b!2790261 (not condMapEmpty!17921)) mapNonEmpty!17922))

(assert (= b!2790259 b!2790261))

(assert (= b!2790273 b!2790259))

(assert (= b!2790270 b!2790273))

(assert (= (and b!2790274 ((_ is LongMap!3935) (v!33944 (underlying!8074 (cache!3984 cacheDown!1009))))) b!2790270))

(assert (= b!2790260 b!2790274))

(assert (= (and b!2790254 ((_ is HashMap!3841) (cache!3984 cacheDown!1009))) b!2790260))

(assert (= start!269744 b!2790254))

(assert (= (and b!2790253 condMapEmpty!17922) mapIsEmpty!17921))

(assert (= (and b!2790253 (not condMapEmpty!17922)) mapNonEmpty!17921))

(assert (= b!2790271 b!2790253))

(assert (= b!2790262 b!2790271))

(assert (= b!2790265 b!2790262))

(assert (= (and b!2790269 ((_ is LongMap!3934) (v!33942 (underlying!8072 (cache!3983 cacheUp!890))))) b!2790265))

(assert (= b!2790250 b!2790269))

(assert (= (and b!2790257 ((_ is HashMap!3840) (cache!3983 cacheUp!890))) b!2790250))

(assert (= start!269744 b!2790257))

(declare-fun m!3220571 () Bool)

(assert (=> mapNonEmpty!17922 m!3220571))

(declare-fun m!3220573 () Bool)

(assert (=> b!2790267 m!3220573))

(declare-fun m!3220575 () Bool)

(assert (=> b!2790267 m!3220575))

(declare-fun m!3220577 () Bool)

(assert (=> b!2790267 m!3220577))

(declare-fun m!3220579 () Bool)

(assert (=> b!2790251 m!3220579))

(declare-fun m!3220581 () Bool)

(assert (=> b!2790272 m!3220581))

(declare-fun m!3220583 () Bool)

(assert (=> b!2790272 m!3220583))

(declare-fun m!3220585 () Bool)

(assert (=> b!2790272 m!3220585))

(declare-fun m!3220587 () Bool)

(assert (=> start!269744 m!3220587))

(declare-fun m!3220589 () Bool)

(assert (=> start!269744 m!3220589))

(declare-fun m!3220591 () Bool)

(assert (=> start!269744 m!3220591))

(declare-fun m!3220593 () Bool)

(assert (=> start!269744 m!3220593))

(declare-fun m!3220595 () Bool)

(assert (=> start!269744 m!3220595))

(declare-fun m!3220597 () Bool)

(assert (=> b!2790268 m!3220597))

(declare-fun m!3220599 () Bool)

(assert (=> b!2790275 m!3220599))

(declare-fun m!3220601 () Bool)

(assert (=> b!2790275 m!3220601))

(declare-fun m!3220603 () Bool)

(assert (=> b!2790275 m!3220603))

(declare-fun m!3220605 () Bool)

(assert (=> b!2790252 m!3220605))

(declare-fun m!3220607 () Bool)

(assert (=> mapNonEmpty!17921 m!3220607))

(declare-fun m!3220609 () Bool)

(assert (=> b!2790255 m!3220609))

(declare-fun m!3220611 () Bool)

(assert (=> b!2790259 m!3220611))

(declare-fun m!3220613 () Bool)

(assert (=> b!2790259 m!3220613))

(declare-fun m!3220615 () Bool)

(assert (=> setNonEmpty!23809 m!3220615))

(declare-fun m!3220617 () Bool)

(assert (=> b!2790271 m!3220617))

(declare-fun m!3220619 () Bool)

(assert (=> b!2790271 m!3220619))

(declare-fun m!3220621 () Bool)

(assert (=> b!2790263 m!3220621))

(check-sat (not b!2790271) b_and!203719 (not b!2790267) (not start!269744) b_and!203725 b_and!203721 (not b_next!79687) (not b!2790266) (not setNonEmpty!23809) b_and!203723 (not b!2790261) (not b!2790263) (not mapNonEmpty!17922) (not b!2790252) (not b!2790259) (not b!2790268) (not b!2790258) tp_is_empty!14151 (not b!2790272) (not b!2790253) (not b_next!79691) (not b!2790256) (not b!2790275) (not b!2790251) (not b!2790255) (not mapNonEmpty!17921) (not b_next!79685) (not b_next!79689))
(check-sat b_and!203719 (not b_next!79691) b_and!203725 b_and!203721 (not b_next!79687) b_and!203723 (not b_next!79685) (not b_next!79689))
