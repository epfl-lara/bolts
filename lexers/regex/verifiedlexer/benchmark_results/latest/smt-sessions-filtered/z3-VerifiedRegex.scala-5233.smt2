; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269044 () Bool)

(assert start!269044)

(declare-fun b!2784288 () Bool)

(declare-fun b_free!78677 () Bool)

(declare-fun b_next!79381 () Bool)

(assert (=> b!2784288 (= b_free!78677 (not b_next!79381))))

(declare-fun tp!882246 () Bool)

(declare-fun b_and!203415 () Bool)

(assert (=> b!2784288 (= tp!882246 b_and!203415)))

(declare-fun b!2784294 () Bool)

(declare-fun b_free!78679 () Bool)

(declare-fun b_next!79383 () Bool)

(assert (=> b!2784294 (= b_free!78679 (not b_next!79383))))

(declare-fun tp!882249 () Bool)

(declare-fun b_and!203417 () Bool)

(assert (=> b!2784294 (= tp!882249 b_and!203417)))

(declare-fun b!2784298 () Bool)

(declare-fun b_free!78681 () Bool)

(declare-fun b_next!79385 () Bool)

(assert (=> b!2784298 (= b_free!78681 (not b_next!79385))))

(declare-fun tp!882241 () Bool)

(declare-fun b_and!203419 () Bool)

(assert (=> b!2784298 (= tp!882241 b_and!203419)))

(declare-fun b!2784293 () Bool)

(declare-fun b_free!78683 () Bool)

(declare-fun b_next!79387 () Bool)

(assert (=> b!2784293 (= b_free!78683 (not b_next!79387))))

(declare-fun tp!882247 () Bool)

(declare-fun b_and!203421 () Bool)

(assert (=> b!2784293 (= tp!882247 b_and!203421)))

(declare-fun e!1756648 () Bool)

(declare-fun e!1756651 () Bool)

(assert (=> b!2784288 (= e!1756648 (and e!1756651 tp!882246))))

(declare-fun b!2784289 () Bool)

(declare-fun e!1756662 () Bool)

(declare-fun e!1756656 () Bool)

(assert (=> b!2784289 (= e!1756662 (not e!1756656))))

(declare-fun res!1162121 () Bool)

(assert (=> b!2784289 (=> res!1162121 e!1756656)))

(declare-datatypes ((C!16420 0))(
  ( (C!16421 (val!10144 Int)) )
))
(declare-datatypes ((List!32287 0))(
  ( (Nil!32187) (Cons!32187 (h!37607 C!16420) (t!228429 List!32287)) )
))
(declare-fun testedP!183 () List!32287)

(declare-fun lt!994453 () List!32287)

(declare-fun isPrefix!2578 (List!32287 List!32287) Bool)

(assert (=> b!2784289 (= res!1162121 (not (isPrefix!2578 testedP!183 lt!994453)))))

(declare-fun lt!994447 () List!32287)

(assert (=> b!2784289 (isPrefix!2578 testedP!183 lt!994447)))

(declare-datatypes ((Unit!46432 0))(
  ( (Unit!46433) )
))
(declare-fun lt!994459 () Unit!46432)

(declare-fun testedSuffix!143 () List!32287)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1688 (List!32287 List!32287) Unit!46432)

(assert (=> b!2784289 (= lt!994459 (lemmaConcatTwoListThenFirstIsPrefix!1688 testedP!183 testedSuffix!143))))

(declare-fun b!2784290 () Bool)

(declare-fun e!1756671 () Bool)

(declare-fun e!1756655 () Bool)

(assert (=> b!2784290 (= e!1756671 e!1756655)))

(declare-fun mapIsEmpty!17633 () Bool)

(declare-fun mapRes!17634 () Bool)

(assert (=> mapIsEmpty!17633 mapRes!17634))

(declare-fun b!2784291 () Bool)

(declare-fun res!1162123 () Bool)

(declare-fun e!1756664 () Bool)

(assert (=> b!2784291 (=> res!1162123 e!1756664)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2784291 (= res!1162123 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2784292 () Bool)

(declare-fun e!1756649 () Bool)

(assert (=> b!2784292 (= e!1756649 e!1756648)))

(declare-fun e!1756670 () Bool)

(declare-fun e!1756659 () Bool)

(declare-fun tp!882253 () Bool)

(declare-datatypes ((Hashable!3782 0))(
  ( (HashableExt!3781 (__x!21248 Int)) )
))
(declare-datatypes ((Regex!8131 0))(
  ( (ElementMatch!8131 (c!452347 C!16420)) (Concat!13219 (regOne!16774 Regex!8131) (regTwo!16774 Regex!8131)) (EmptyExpr!8131) (Star!8131 (reg!8460 Regex!8131)) (EmptyLang!8131) (Union!8131 (regOne!16775 Regex!8131) (regTwo!16775 Regex!8131)) )
))
(declare-datatypes ((List!32288 0))(
  ( (Nil!32188) (Cons!32188 (h!37608 Regex!8131) (t!228430 List!32288)) )
))
(declare-datatypes ((Context!4698 0))(
  ( (Context!4699 (exprs!2849 List!32288)) )
))
(declare-datatypes ((tuple2!32480 0))(
  ( (tuple2!32481 (_1!19202 Context!4698) (_2!19202 C!16420)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32482 0))(
  ( (tuple2!32483 (_1!19203 tuple2!32480) (_2!19203 (InoxSet Context!4698))) )
))
(declare-datatypes ((List!32289 0))(
  ( (Nil!32189) (Cons!32189 (h!37609 tuple2!32482) (t!228431 List!32289)) )
))
(declare-datatypes ((array!13751 0))(
  ( (array!13752 (arr!6130 (Array (_ BitVec 32) List!32289)) (size!24998 (_ BitVec 32))) )
))
(declare-datatypes ((array!13753 0))(
  ( (array!13754 (arr!6131 (Array (_ BitVec 32) (_ BitVec 64))) (size!24999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7732 0))(
  ( (LongMapFixedSize!7733 (defaultEntry!4251 Int) (mask!9668 (_ BitVec 32)) (extraKeys!4115 (_ BitVec 32)) (zeroValue!4125 List!32289) (minValue!4125 List!32289) (_size!7775 (_ BitVec 32)) (_keys!4166 array!13753) (_values!4147 array!13751) (_vacant!3927 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15273 0))(
  ( (Cell!15274 (v!33795 LongMapFixedSize!7732)) )
))
(declare-datatypes ((MutLongMap!3866 0))(
  ( (LongMap!3866 (underlying!7935 Cell!15273)) (MutLongMapExt!3865 (__x!21249 Int)) )
))
(declare-datatypes ((Cell!15275 0))(
  ( (Cell!15276 (v!33796 MutLongMap!3866)) )
))
(declare-datatypes ((MutableMap!3772 0))(
  ( (MutableMapExt!3771 (__x!21250 Int)) (HashMap!3772 (underlying!7936 Cell!15275) (hashF!5814 Hashable!3782) (_size!7776 (_ BitVec 32)) (defaultValue!3943 Int)) )
))
(declare-datatypes ((CacheUp!2476 0))(
  ( (CacheUp!2477 (cache!3915 MutableMap!3772)) )
))
(declare-fun cacheUp!890 () CacheUp!2476)

(declare-fun tp!882235 () Bool)

(declare-fun array_inv!4391 (array!13753) Bool)

(declare-fun array_inv!4392 (array!13751) Bool)

(assert (=> b!2784293 (= e!1756659 (and tp!882247 tp!882253 tp!882235 (array_inv!4391 (_keys!4166 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) (array_inv!4392 (_values!4147 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) e!1756670))))

(declare-fun mapNonEmpty!17633 () Bool)

(declare-fun tp!882240 () Bool)

(declare-fun tp!882236 () Bool)

(assert (=> mapNonEmpty!17633 (= mapRes!17634 (and tp!882240 tp!882236))))

(declare-fun mapKey!17634 () (_ BitVec 32))

(declare-fun mapValue!17633 () List!32289)

(declare-fun mapRest!17634 () (Array (_ BitVec 32) List!32289))

(assert (=> mapNonEmpty!17633 (= (arr!6130 (_values!4147 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) (store mapRest!17634 mapKey!17634 mapValue!17633))))

(declare-fun e!1756650 () Bool)

(assert (=> b!2784294 (= e!1756655 (and e!1756650 tp!882249))))

(declare-fun b!2784295 () Bool)

(declare-fun res!1162120 () Bool)

(declare-fun e!1756661 () Bool)

(assert (=> b!2784295 (=> (not res!1162120) (not e!1756661))))

(declare-fun size!25000 (List!32287) Int)

(assert (=> b!2784295 (= res!1162120 (= testedPSize!143 (size!25000 testedP!183)))))

(declare-fun b!2784296 () Bool)

(declare-fun e!1756665 () Bool)

(declare-fun e!1756653 () Bool)

(assert (=> b!2784296 (= e!1756665 e!1756653)))

(declare-fun mapNonEmpty!17634 () Bool)

(declare-fun mapRes!17633 () Bool)

(declare-fun tp!882238 () Bool)

(declare-fun tp!882251 () Bool)

(assert (=> mapNonEmpty!17634 (= mapRes!17633 (and tp!882238 tp!882251))))

(declare-datatypes ((tuple3!4984 0))(
  ( (tuple3!4985 (_1!19204 Regex!8131) (_2!19204 Context!4698) (_3!2962 C!16420)) )
))
(declare-datatypes ((tuple2!32484 0))(
  ( (tuple2!32485 (_1!19205 tuple3!4984) (_2!19205 (InoxSet Context!4698))) )
))
(declare-datatypes ((List!32290 0))(
  ( (Nil!32190) (Cons!32190 (h!37610 tuple2!32484) (t!228432 List!32290)) )
))
(declare-fun mapRest!17633 () (Array (_ BitVec 32) List!32290))

(declare-fun mapKey!17633 () (_ BitVec 32))

(declare-fun mapValue!17634 () List!32290)

(declare-datatypes ((array!13755 0))(
  ( (array!13756 (arr!6132 (Array (_ BitVec 32) List!32290)) (size!25001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7734 0))(
  ( (LongMapFixedSize!7735 (defaultEntry!4252 Int) (mask!9669 (_ BitVec 32)) (extraKeys!4116 (_ BitVec 32)) (zeroValue!4126 List!32290) (minValue!4126 List!32290) (_size!7777 (_ BitVec 32)) (_keys!4167 array!13753) (_values!4148 array!13755) (_vacant!3928 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15277 0))(
  ( (Cell!15278 (v!33797 LongMapFixedSize!7734)) )
))
(declare-datatypes ((MutLongMap!3867 0))(
  ( (LongMap!3867 (underlying!7937 Cell!15277)) (MutLongMapExt!3866 (__x!21251 Int)) )
))
(declare-datatypes ((Cell!15279 0))(
  ( (Cell!15280 (v!33798 MutLongMap!3867)) )
))
(declare-datatypes ((Hashable!3783 0))(
  ( (HashableExt!3782 (__x!21252 Int)) )
))
(declare-datatypes ((MutableMap!3773 0))(
  ( (MutableMapExt!3772 (__x!21253 Int)) (HashMap!3773 (underlying!7938 Cell!15279) (hashF!5815 Hashable!3783) (_size!7778 (_ BitVec 32)) (defaultValue!3944 Int)) )
))
(declare-datatypes ((CacheDown!2600 0))(
  ( (CacheDown!2601 (cache!3916 MutableMap!3773)) )
))
(declare-fun cacheDown!1009 () CacheDown!2600)

(assert (=> mapNonEmpty!17634 (= (arr!6132 (_values!4148 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) (store mapRest!17633 mapKey!17633 mapValue!17634))))

(declare-fun e!1756657 () Bool)

(declare-fun tp!882252 () Bool)

(declare-fun tp!882239 () Bool)

(declare-fun e!1756652 () Bool)

(declare-fun array_inv!4393 (array!13755) Bool)

(assert (=> b!2784298 (= e!1756657 (and tp!882241 tp!882239 tp!882252 (array_inv!4391 (_keys!4167 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) (array_inv!4393 (_values!4148 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) e!1756652))))

(declare-fun setIsEmpty!23431 () Bool)

(declare-fun setRes!23431 () Bool)

(assert (=> setIsEmpty!23431 setRes!23431))

(declare-fun b!2784299 () Bool)

(declare-fun e!1756668 () Bool)

(declare-fun tp_is_empty!14075 () Bool)

(declare-fun tp!882242 () Bool)

(assert (=> b!2784299 (= e!1756668 (and tp_is_empty!14075 tp!882242))))

(declare-fun mapIsEmpty!17634 () Bool)

(assert (=> mapIsEmpty!17634 mapRes!17633))

(declare-fun b!2784300 () Bool)

(declare-fun res!1162126 () Bool)

(declare-fun e!1756663 () Bool)

(assert (=> b!2784300 (=> res!1162126 e!1756663)))

(declare-datatypes ((IArray!20015 0))(
  ( (IArray!20016 (innerList!10065 List!32287)) )
))
(declare-datatypes ((Conc!10005 0))(
  ( (Node!10005 (left!24462 Conc!10005) (right!24792 Conc!10005) (csize!20240 Int) (cheight!10216 Int)) (Leaf!15239 (xs!13116 IArray!20015) (csize!20241 Int)) (Empty!10005) )
))
(declare-datatypes ((BalanceConc!19624 0))(
  ( (BalanceConc!19625 (c!452348 Conc!10005)) )
))
(declare-datatypes ((tuple2!32486 0))(
  ( (tuple2!32487 (_1!19206 BalanceConc!19624) (_2!19206 BalanceConc!19624)) )
))
(declare-fun lt!994454 () tuple2!32486)

(declare-fun size!25002 (BalanceConc!19624) Int)

(assert (=> b!2784300 (= res!1162126 (not (= (size!25002 (_1!19206 lt!994454)) testedPSize!143)))))

(declare-fun b!2784301 () Bool)

(declare-fun lt!994452 () Int)

(assert (=> b!2784301 (= e!1756663 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!994452)))))

(declare-fun head!6161 (List!32287) C!16420)

(declare-fun drop!1715 (List!32287 Int) List!32287)

(declare-fun apply!7526 (List!32287 Int) C!16420)

(assert (=> b!2784301 (= (head!6161 (drop!1715 lt!994453 testedPSize!143)) (apply!7526 lt!994453 testedPSize!143))))

(declare-fun lt!994450 () Unit!46432)

(declare-fun lemmaDropApply!921 (List!32287 Int) Unit!46432)

(assert (=> b!2784301 (= lt!994450 (lemmaDropApply!921 lt!994453 testedPSize!143))))

(declare-fun lt!994455 () List!32287)

(declare-fun lt!994448 () List!32287)

(assert (=> b!2784301 (not (or (not (= lt!994455 testedP!183)) (not (= lt!994448 testedSuffix!143))))))

(declare-fun lt!994451 () Unit!46432)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!348 (List!32287 List!32287 List!32287 List!32287) Unit!46432)

(assert (=> b!2784301 (= lt!994451 (lemmaConcatSameAndSameSizesThenSameLists!348 lt!994455 lt!994448 testedP!183 testedSuffix!143))))

(declare-fun b!2784302 () Bool)

(assert (=> b!2784302 (= e!1756653 e!1756659)))

(declare-fun b!2784303 () Bool)

(declare-fun e!1756654 () Bool)

(declare-fun totalInput!758 () BalanceConc!19624)

(declare-fun tp!882237 () Bool)

(declare-fun inv!43723 (Conc!10005) Bool)

(assert (=> b!2784303 (= e!1756654 (and (inv!43723 (c!452348 totalInput!758)) tp!882237))))

(declare-fun b!2784304 () Bool)

(declare-fun res!1162125 () Bool)

(assert (=> b!2784304 (=> (not res!1162125) (not e!1756662))))

(declare-fun valid!3024 (CacheDown!2600) Bool)

(assert (=> b!2784304 (= res!1162125 (valid!3024 cacheDown!1009))))

(declare-fun b!2784305 () Bool)

(assert (=> b!2784305 (= e!1756664 e!1756663)))

(declare-fun res!1162129 () Bool)

(assert (=> b!2784305 (=> res!1162129 e!1756663)))

(declare-fun ++!7955 (List!32287 List!32287) List!32287)

(assert (=> b!2784305 (= res!1162129 (not (= (++!7955 lt!994455 lt!994448) lt!994453)))))

(declare-fun list!12126 (BalanceConc!19624) List!32287)

(assert (=> b!2784305 (= lt!994448 (list!12126 (_2!19206 lt!994454)))))

(assert (=> b!2784305 (= lt!994455 (list!12126 (_1!19206 lt!994454)))))

(declare-fun splitAt!129 (BalanceConc!19624 Int) tuple2!32486)

(assert (=> b!2784305 (= lt!994454 (splitAt!129 totalInput!758 testedPSize!143))))

(declare-fun b!2784306 () Bool)

(assert (=> b!2784306 (= e!1756656 e!1756664)))

(declare-fun res!1162127 () Bool)

(assert (=> b!2784306 (=> res!1162127 e!1756664)))

(declare-fun z!3684 () (InoxSet Context!4698))

(declare-fun lostCauseZipper!455 ((InoxSet Context!4698)) Bool)

(assert (=> b!2784306 (= res!1162127 (lostCauseZipper!455 z!3684))))

(declare-fun lt!994449 () List!32287)

(assert (=> b!2784306 (and (= testedSuffix!143 lt!994449) (= lt!994449 testedSuffix!143))))

(declare-fun lt!994457 () Unit!46432)

(declare-fun lemmaSamePrefixThenSameSuffix!1156 (List!32287 List!32287 List!32287 List!32287 List!32287) Unit!46432)

(assert (=> b!2784306 (= lt!994457 (lemmaSamePrefixThenSameSuffix!1156 testedP!183 testedSuffix!143 testedP!183 lt!994449 lt!994453))))

(declare-fun getSuffix!1255 (List!32287 List!32287) List!32287)

(assert (=> b!2784306 (= lt!994449 (getSuffix!1255 lt!994453 testedP!183))))

(declare-fun b!2784307 () Bool)

(declare-fun e!1756669 () Bool)

(declare-fun e!1756658 () Bool)

(assert (=> b!2784307 (= e!1756669 e!1756658)))

(declare-fun b!2784308 () Bool)

(declare-fun lt!994458 () MutLongMap!3867)

(get-info :version)

(assert (=> b!2784308 (= e!1756650 (and e!1756669 ((_ is LongMap!3867) lt!994458)))))

(assert (=> b!2784308 (= lt!994458 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))

(declare-fun b!2784309 () Bool)

(declare-fun lt!994456 () MutLongMap!3866)

(assert (=> b!2784309 (= e!1756651 (and e!1756665 ((_ is LongMap!3866) lt!994456)))))

(assert (=> b!2784309 (= lt!994456 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))

(declare-fun b!2784310 () Bool)

(declare-fun e!1756660 () Bool)

(declare-fun tp!882243 () Bool)

(assert (=> b!2784310 (= e!1756660 tp!882243)))

(declare-fun b!2784311 () Bool)

(assert (=> b!2784311 (= e!1756658 e!1756657)))

(declare-fun b!2784312 () Bool)

(declare-fun tp!882245 () Bool)

(assert (=> b!2784312 (= e!1756652 (and tp!882245 mapRes!17633))))

(declare-fun condMapEmpty!17634 () Bool)

(declare-fun mapDefault!17634 () List!32290)

(assert (=> b!2784312 (= condMapEmpty!17634 (= (arr!6132 (_values!4148 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32290)) mapDefault!17634)))))

(declare-fun b!2784313 () Bool)

(declare-fun res!1162128 () Bool)

(assert (=> b!2784313 (=> (not res!1162128) (not e!1756662))))

(declare-fun valid!3025 (CacheUp!2476) Bool)

(assert (=> b!2784313 (= res!1162128 (valid!3025 cacheUp!890))))

(declare-fun b!2784314 () Bool)

(assert (=> b!2784314 (= e!1756661 e!1756662)))

(declare-fun res!1162122 () Bool)

(assert (=> b!2784314 (=> (not res!1162122) (not e!1756662))))

(assert (=> b!2784314 (= res!1162122 (= totalInputSize!205 lt!994452))))

(assert (=> b!2784314 (= lt!994452 (size!25002 totalInput!758))))

(declare-fun res!1162124 () Bool)

(assert (=> start!269044 (=> (not res!1162124) (not e!1756661))))

(assert (=> start!269044 (= res!1162124 (= lt!994447 lt!994453))))

(assert (=> start!269044 (= lt!994453 (list!12126 totalInput!758))))

(assert (=> start!269044 (= lt!994447 (++!7955 testedP!183 testedSuffix!143))))

(assert (=> start!269044 e!1756661))

(declare-fun inv!43724 (BalanceConc!19624) Bool)

(assert (=> start!269044 (and (inv!43724 totalInput!758) e!1756654)))

(declare-fun condSetEmpty!23431 () Bool)

(assert (=> start!269044 (= condSetEmpty!23431 (= z!3684 ((as const (Array Context!4698 Bool)) false)))))

(assert (=> start!269044 setRes!23431))

(assert (=> start!269044 true))

(declare-fun e!1756667 () Bool)

(assert (=> start!269044 e!1756667))

(assert (=> start!269044 e!1756668))

(declare-fun inv!43725 (CacheDown!2600) Bool)

(assert (=> start!269044 (and (inv!43725 cacheDown!1009) e!1756671)))

(declare-fun inv!43726 (CacheUp!2476) Bool)

(assert (=> start!269044 (and (inv!43726 cacheUp!890) e!1756649)))

(declare-fun b!2784297 () Bool)

(declare-fun tp!882248 () Bool)

(assert (=> b!2784297 (= e!1756667 (and tp_is_empty!14075 tp!882248))))

(declare-fun setElem!23431 () Context!4698)

(declare-fun tp!882244 () Bool)

(declare-fun setNonEmpty!23431 () Bool)

(declare-fun inv!43727 (Context!4698) Bool)

(assert (=> setNonEmpty!23431 (= setRes!23431 (and tp!882244 (inv!43727 setElem!23431) e!1756660))))

(declare-fun setRest!23431 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23431 (= z!3684 ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23431 true) setRest!23431))))

(declare-fun b!2784315 () Bool)

(declare-fun tp!882250 () Bool)

(assert (=> b!2784315 (= e!1756670 (and tp!882250 mapRes!17634))))

(declare-fun condMapEmpty!17633 () Bool)

(declare-fun mapDefault!17633 () List!32289)

(assert (=> b!2784315 (= condMapEmpty!17633 (= (arr!6130 (_values!4147 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32289)) mapDefault!17633)))))

(assert (= (and start!269044 res!1162124) b!2784295))

(assert (= (and b!2784295 res!1162120) b!2784314))

(assert (= (and b!2784314 res!1162122) b!2784313))

(assert (= (and b!2784313 res!1162128) b!2784304))

(assert (= (and b!2784304 res!1162125) b!2784289))

(assert (= (and b!2784289 (not res!1162121)) b!2784306))

(assert (= (and b!2784306 (not res!1162127)) b!2784291))

(assert (= (and b!2784291 (not res!1162123)) b!2784305))

(assert (= (and b!2784305 (not res!1162129)) b!2784300))

(assert (= (and b!2784300 (not res!1162126)) b!2784301))

(assert (= start!269044 b!2784303))

(assert (= (and start!269044 condSetEmpty!23431) setIsEmpty!23431))

(assert (= (and start!269044 (not condSetEmpty!23431)) setNonEmpty!23431))

(assert (= setNonEmpty!23431 b!2784310))

(assert (= (and start!269044 ((_ is Cons!32187) testedP!183)) b!2784297))

(assert (= (and start!269044 ((_ is Cons!32187) testedSuffix!143)) b!2784299))

(assert (= (and b!2784312 condMapEmpty!17634) mapIsEmpty!17634))

(assert (= (and b!2784312 (not condMapEmpty!17634)) mapNonEmpty!17634))

(assert (= b!2784298 b!2784312))

(assert (= b!2784311 b!2784298))

(assert (= b!2784307 b!2784311))

(assert (= (and b!2784308 ((_ is LongMap!3867) (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))) b!2784307))

(assert (= b!2784294 b!2784308))

(assert (= (and b!2784290 ((_ is HashMap!3773) (cache!3916 cacheDown!1009))) b!2784294))

(assert (= start!269044 b!2784290))

(assert (= (and b!2784315 condMapEmpty!17633) mapIsEmpty!17633))

(assert (= (and b!2784315 (not condMapEmpty!17633)) mapNonEmpty!17633))

(assert (= b!2784293 b!2784315))

(assert (= b!2784302 b!2784293))

(assert (= b!2784296 b!2784302))

(assert (= (and b!2784309 ((_ is LongMap!3866) (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))) b!2784296))

(assert (= b!2784288 b!2784309))

(assert (= (and b!2784292 ((_ is HashMap!3772) (cache!3915 cacheUp!890))) b!2784288))

(assert (= start!269044 b!2784292))

(declare-fun m!3214905 () Bool)

(assert (=> b!2784295 m!3214905))

(declare-fun m!3214907 () Bool)

(assert (=> b!2784293 m!3214907))

(declare-fun m!3214909 () Bool)

(assert (=> b!2784293 m!3214909))

(declare-fun m!3214911 () Bool)

(assert (=> b!2784314 m!3214911))

(declare-fun m!3214913 () Bool)

(assert (=> b!2784313 m!3214913))

(declare-fun m!3214915 () Bool)

(assert (=> mapNonEmpty!17633 m!3214915))

(declare-fun m!3214917 () Bool)

(assert (=> b!2784306 m!3214917))

(declare-fun m!3214919 () Bool)

(assert (=> b!2784306 m!3214919))

(declare-fun m!3214921 () Bool)

(assert (=> b!2784306 m!3214921))

(declare-fun m!3214923 () Bool)

(assert (=> start!269044 m!3214923))

(declare-fun m!3214925 () Bool)

(assert (=> start!269044 m!3214925))

(declare-fun m!3214927 () Bool)

(assert (=> start!269044 m!3214927))

(declare-fun m!3214929 () Bool)

(assert (=> start!269044 m!3214929))

(declare-fun m!3214931 () Bool)

(assert (=> start!269044 m!3214931))

(declare-fun m!3214933 () Bool)

(assert (=> b!2784301 m!3214933))

(declare-fun m!3214935 () Bool)

(assert (=> b!2784301 m!3214935))

(declare-fun m!3214937 () Bool)

(assert (=> b!2784301 m!3214937))

(declare-fun m!3214939 () Bool)

(assert (=> b!2784301 m!3214939))

(declare-fun m!3214941 () Bool)

(assert (=> b!2784301 m!3214941))

(assert (=> b!2784301 m!3214937))

(declare-fun m!3214943 () Bool)

(assert (=> b!2784289 m!3214943))

(declare-fun m!3214945 () Bool)

(assert (=> b!2784289 m!3214945))

(declare-fun m!3214947 () Bool)

(assert (=> b!2784289 m!3214947))

(declare-fun m!3214949 () Bool)

(assert (=> b!2784298 m!3214949))

(declare-fun m!3214951 () Bool)

(assert (=> b!2784298 m!3214951))

(declare-fun m!3214953 () Bool)

(assert (=> mapNonEmpty!17634 m!3214953))

(declare-fun m!3214955 () Bool)

(assert (=> b!2784305 m!3214955))

(declare-fun m!3214957 () Bool)

(assert (=> b!2784305 m!3214957))

(declare-fun m!3214959 () Bool)

(assert (=> b!2784305 m!3214959))

(declare-fun m!3214961 () Bool)

(assert (=> b!2784305 m!3214961))

(declare-fun m!3214963 () Bool)

(assert (=> b!2784300 m!3214963))

(declare-fun m!3214965 () Bool)

(assert (=> b!2784303 m!3214965))

(declare-fun m!3214967 () Bool)

(assert (=> b!2784304 m!3214967))

(declare-fun m!3214969 () Bool)

(assert (=> setNonEmpty!23431 m!3214969))

(check-sat (not b!2784293) (not b!2784304) (not setNonEmpty!23431) (not mapNonEmpty!17633) (not b!2784314) (not mapNonEmpty!17634) (not b!2784301) (not b!2784312) (not b!2784303) (not b_next!79385) (not b!2784299) (not b!2784295) (not b!2784298) b_and!203421 (not b!2784315) b_and!203417 (not b!2784305) (not b!2784313) b_and!203415 (not b!2784300) (not b!2784297) (not b!2784306) b_and!203419 tp_is_empty!14075 (not b!2784310) (not b_next!79383) (not b_next!79381) (not b!2784289) (not start!269044) (not b_next!79387))
(check-sat b_and!203421 b_and!203417 b_and!203415 b_and!203419 (not b_next!79385) (not b_next!79387) (not b_next!79383) (not b_next!79381))
(get-model)

(declare-fun d!810408 () Bool)

(assert (=> d!810408 (= (array_inv!4391 (_keys!4166 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) (bvsge (size!24999 (_keys!4166 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784293 d!810408))

(declare-fun d!810410 () Bool)

(assert (=> d!810410 (= (array_inv!4392 (_values!4147 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) (bvsge (size!24998 (_values!4147 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784293 d!810410))

(declare-fun d!810412 () Bool)

(declare-fun lt!994462 () Int)

(assert (=> d!810412 (= lt!994462 (size!25000 (list!12126 (_1!19206 lt!994454))))))

(declare-fun size!25003 (Conc!10005) Int)

(assert (=> d!810412 (= lt!994462 (size!25003 (c!452348 (_1!19206 lt!994454))))))

(assert (=> d!810412 (= (size!25002 (_1!19206 lt!994454)) lt!994462)))

(declare-fun bs!510854 () Bool)

(assert (= bs!510854 d!810412))

(assert (=> bs!510854 m!3214959))

(assert (=> bs!510854 m!3214959))

(declare-fun m!3214971 () Bool)

(assert (=> bs!510854 m!3214971))

(declare-fun m!3214973 () Bool)

(assert (=> bs!510854 m!3214973))

(assert (=> b!2784300 d!810412))

(declare-fun d!810414 () Bool)

(declare-fun validCacheMapUp!376 (MutableMap!3772) Bool)

(assert (=> d!810414 (= (valid!3025 cacheUp!890) (validCacheMapUp!376 (cache!3915 cacheUp!890)))))

(declare-fun bs!510855 () Bool)

(assert (= bs!510855 d!810414))

(declare-fun m!3214975 () Bool)

(assert (=> bs!510855 m!3214975))

(assert (=> b!2784313 d!810414))

(declare-fun d!810416 () Bool)

(declare-fun lt!994465 () Int)

(assert (=> d!810416 (>= lt!994465 0)))

(declare-fun e!1756675 () Int)

(assert (=> d!810416 (= lt!994465 e!1756675)))

(declare-fun c!452351 () Bool)

(assert (=> d!810416 (= c!452351 ((_ is Nil!32187) testedP!183))))

(assert (=> d!810416 (= (size!25000 testedP!183) lt!994465)))

(declare-fun b!2784320 () Bool)

(assert (=> b!2784320 (= e!1756675 0)))

(declare-fun b!2784321 () Bool)

(assert (=> b!2784321 (= e!1756675 (+ 1 (size!25000 (t!228429 testedP!183))))))

(assert (= (and d!810416 c!452351) b!2784320))

(assert (= (and d!810416 (not c!452351)) b!2784321))

(declare-fun m!3214977 () Bool)

(assert (=> b!2784321 m!3214977))

(assert (=> b!2784295 d!810416))

(declare-fun d!810418 () Bool)

(declare-fun c!452354 () Bool)

(assert (=> d!810418 (= c!452354 ((_ is Node!10005) (c!452348 totalInput!758)))))

(declare-fun e!1756680 () Bool)

(assert (=> d!810418 (= (inv!43723 (c!452348 totalInput!758)) e!1756680)))

(declare-fun b!2784328 () Bool)

(declare-fun inv!43728 (Conc!10005) Bool)

(assert (=> b!2784328 (= e!1756680 (inv!43728 (c!452348 totalInput!758)))))

(declare-fun b!2784329 () Bool)

(declare-fun e!1756681 () Bool)

(assert (=> b!2784329 (= e!1756680 e!1756681)))

(declare-fun res!1162132 () Bool)

(assert (=> b!2784329 (= res!1162132 (not ((_ is Leaf!15239) (c!452348 totalInput!758))))))

(assert (=> b!2784329 (=> res!1162132 e!1756681)))

(declare-fun b!2784330 () Bool)

(declare-fun inv!43729 (Conc!10005) Bool)

(assert (=> b!2784330 (= e!1756681 (inv!43729 (c!452348 totalInput!758)))))

(assert (= (and d!810418 c!452354) b!2784328))

(assert (= (and d!810418 (not c!452354)) b!2784329))

(assert (= (and b!2784329 (not res!1162132)) b!2784330))

(declare-fun m!3214979 () Bool)

(assert (=> b!2784328 m!3214979))

(declare-fun m!3214981 () Bool)

(assert (=> b!2784330 m!3214981))

(assert (=> b!2784303 d!810418))

(declare-fun d!810420 () Bool)

(declare-fun lt!994466 () Int)

(assert (=> d!810420 (= lt!994466 (size!25000 (list!12126 totalInput!758)))))

(assert (=> d!810420 (= lt!994466 (size!25003 (c!452348 totalInput!758)))))

(assert (=> d!810420 (= (size!25002 totalInput!758) lt!994466)))

(declare-fun bs!510856 () Bool)

(assert (= bs!510856 d!810420))

(assert (=> bs!510856 m!3214923))

(assert (=> bs!510856 m!3214923))

(declare-fun m!3214983 () Bool)

(assert (=> bs!510856 m!3214983))

(declare-fun m!3214985 () Bool)

(assert (=> bs!510856 m!3214985))

(assert (=> b!2784314 d!810420))

(declare-fun d!810422 () Bool)

(declare-fun lt!994469 () C!16420)

(declare-fun contains!6000 (List!32287 C!16420) Bool)

(assert (=> d!810422 (contains!6000 lt!994453 lt!994469)))

(declare-fun e!1756687 () C!16420)

(assert (=> d!810422 (= lt!994469 e!1756687)))

(declare-fun c!452357 () Bool)

(assert (=> d!810422 (= c!452357 (= testedPSize!143 0))))

(declare-fun e!1756686 () Bool)

(assert (=> d!810422 e!1756686))

(declare-fun res!1162135 () Bool)

(assert (=> d!810422 (=> (not res!1162135) (not e!1756686))))

(assert (=> d!810422 (= res!1162135 (<= 0 testedPSize!143))))

(assert (=> d!810422 (= (apply!7526 lt!994453 testedPSize!143) lt!994469)))

(declare-fun b!2784337 () Bool)

(assert (=> b!2784337 (= e!1756686 (< testedPSize!143 (size!25000 lt!994453)))))

(declare-fun b!2784338 () Bool)

(assert (=> b!2784338 (= e!1756687 (head!6161 lt!994453))))

(declare-fun b!2784339 () Bool)

(declare-fun tail!4398 (List!32287) List!32287)

(assert (=> b!2784339 (= e!1756687 (apply!7526 (tail!4398 lt!994453) (- testedPSize!143 1)))))

(assert (= (and d!810422 res!1162135) b!2784337))

(assert (= (and d!810422 c!452357) b!2784338))

(assert (= (and d!810422 (not c!452357)) b!2784339))

(declare-fun m!3214987 () Bool)

(assert (=> d!810422 m!3214987))

(declare-fun m!3214989 () Bool)

(assert (=> b!2784337 m!3214989))

(declare-fun m!3214991 () Bool)

(assert (=> b!2784338 m!3214991))

(declare-fun m!3214993 () Bool)

(assert (=> b!2784339 m!3214993))

(assert (=> b!2784339 m!3214993))

(declare-fun m!3214995 () Bool)

(assert (=> b!2784339 m!3214995))

(assert (=> b!2784301 d!810422))

(declare-fun d!810424 () Bool)

(assert (=> d!810424 (and (= lt!994455 testedP!183) (= lt!994448 testedSuffix!143))))

(declare-fun lt!994472 () Unit!46432)

(declare-fun choose!16327 (List!32287 List!32287 List!32287 List!32287) Unit!46432)

(assert (=> d!810424 (= lt!994472 (choose!16327 lt!994455 lt!994448 testedP!183 testedSuffix!143))))

(assert (=> d!810424 (= (++!7955 lt!994455 lt!994448) (++!7955 testedP!183 testedSuffix!143))))

(assert (=> d!810424 (= (lemmaConcatSameAndSameSizesThenSameLists!348 lt!994455 lt!994448 testedP!183 testedSuffix!143) lt!994472)))

(declare-fun bs!510857 () Bool)

(assert (= bs!510857 d!810424))

(declare-fun m!3214997 () Bool)

(assert (=> bs!510857 m!3214997))

(assert (=> bs!510857 m!3214955))

(assert (=> bs!510857 m!3214931))

(assert (=> b!2784301 d!810424))

(declare-fun b!2784358 () Bool)

(declare-fun e!1756701 () List!32287)

(declare-fun e!1756699 () List!32287)

(assert (=> b!2784358 (= e!1756701 e!1756699)))

(declare-fun c!452368 () Bool)

(assert (=> b!2784358 (= c!452368 (<= testedPSize!143 0))))

(declare-fun d!810426 () Bool)

(declare-fun e!1756702 () Bool)

(assert (=> d!810426 e!1756702))

(declare-fun res!1162138 () Bool)

(assert (=> d!810426 (=> (not res!1162138) (not e!1756702))))

(declare-fun lt!994475 () List!32287)

(declare-fun content!4517 (List!32287) (InoxSet C!16420))

(assert (=> d!810426 (= res!1162138 (= ((_ map implies) (content!4517 lt!994475) (content!4517 lt!994453)) ((as const (InoxSet C!16420)) true)))))

(assert (=> d!810426 (= lt!994475 e!1756701)))

(declare-fun c!452369 () Bool)

(assert (=> d!810426 (= c!452369 ((_ is Nil!32187) lt!994453))))

(assert (=> d!810426 (= (drop!1715 lt!994453 testedPSize!143) lt!994475)))

(declare-fun b!2784359 () Bool)

(declare-fun e!1756698 () Int)

(declare-fun call!182465 () Int)

(assert (=> b!2784359 (= e!1756698 (- call!182465 testedPSize!143))))

(declare-fun b!2784360 () Bool)

(declare-fun e!1756700 () Int)

(assert (=> b!2784360 (= e!1756700 e!1756698)))

(declare-fun c!452367 () Bool)

(assert (=> b!2784360 (= c!452367 (>= testedPSize!143 call!182465))))

(declare-fun b!2784361 () Bool)

(assert (=> b!2784361 (= e!1756700 call!182465)))

(declare-fun b!2784362 () Bool)

(assert (=> b!2784362 (= e!1756701 Nil!32187)))

(declare-fun b!2784363 () Bool)

(assert (=> b!2784363 (= e!1756698 0)))

(declare-fun b!2784364 () Bool)

(assert (=> b!2784364 (= e!1756699 (drop!1715 (t!228429 lt!994453) (- testedPSize!143 1)))))

(declare-fun bm!182460 () Bool)

(assert (=> bm!182460 (= call!182465 (size!25000 lt!994453))))

(declare-fun b!2784365 () Bool)

(assert (=> b!2784365 (= e!1756699 lt!994453)))

(declare-fun b!2784366 () Bool)

(assert (=> b!2784366 (= e!1756702 (= (size!25000 lt!994475) e!1756700))))

(declare-fun c!452366 () Bool)

(assert (=> b!2784366 (= c!452366 (<= testedPSize!143 0))))

(assert (= (and d!810426 c!452369) b!2784362))

(assert (= (and d!810426 (not c!452369)) b!2784358))

(assert (= (and b!2784358 c!452368) b!2784365))

(assert (= (and b!2784358 (not c!452368)) b!2784364))

(assert (= (and d!810426 res!1162138) b!2784366))

(assert (= (and b!2784366 c!452366) b!2784361))

(assert (= (and b!2784366 (not c!452366)) b!2784360))

(assert (= (and b!2784360 c!452367) b!2784363))

(assert (= (and b!2784360 (not c!452367)) b!2784359))

(assert (= (or b!2784361 b!2784360 b!2784359) bm!182460))

(declare-fun m!3214999 () Bool)

(assert (=> d!810426 m!3214999))

(declare-fun m!3215001 () Bool)

(assert (=> d!810426 m!3215001))

(declare-fun m!3215003 () Bool)

(assert (=> b!2784364 m!3215003))

(assert (=> bm!182460 m!3214989))

(declare-fun m!3215005 () Bool)

(assert (=> b!2784366 m!3215005))

(assert (=> b!2784301 d!810426))

(declare-fun d!810428 () Bool)

(assert (=> d!810428 (= (head!6161 (drop!1715 lt!994453 testedPSize!143)) (h!37607 (drop!1715 lt!994453 testedPSize!143)))))

(assert (=> b!2784301 d!810428))

(declare-fun d!810430 () Bool)

(assert (=> d!810430 (= (head!6161 (drop!1715 lt!994453 testedPSize!143)) (apply!7526 lt!994453 testedPSize!143))))

(declare-fun lt!994478 () Unit!46432)

(declare-fun choose!16328 (List!32287 Int) Unit!46432)

(assert (=> d!810430 (= lt!994478 (choose!16328 lt!994453 testedPSize!143))))

(declare-fun e!1756705 () Bool)

(assert (=> d!810430 e!1756705))

(declare-fun res!1162141 () Bool)

(assert (=> d!810430 (=> (not res!1162141) (not e!1756705))))

(assert (=> d!810430 (= res!1162141 (>= testedPSize!143 0))))

(assert (=> d!810430 (= (lemmaDropApply!921 lt!994453 testedPSize!143) lt!994478)))

(declare-fun b!2784369 () Bool)

(assert (=> b!2784369 (= e!1756705 (< testedPSize!143 (size!25000 lt!994453)))))

(assert (= (and d!810430 res!1162141) b!2784369))

(assert (=> d!810430 m!3214937))

(assert (=> d!810430 m!3214937))

(assert (=> d!810430 m!3214939))

(assert (=> d!810430 m!3214933))

(declare-fun m!3215007 () Bool)

(assert (=> d!810430 m!3215007))

(assert (=> b!2784369 m!3214989))

(assert (=> b!2784301 d!810430))

(declare-fun b!2784378 () Bool)

(declare-fun e!1756711 () List!32287)

(assert (=> b!2784378 (= e!1756711 lt!994448)))

(declare-fun b!2784380 () Bool)

(declare-fun res!1162146 () Bool)

(declare-fun e!1756710 () Bool)

(assert (=> b!2784380 (=> (not res!1162146) (not e!1756710))))

(declare-fun lt!994481 () List!32287)

(assert (=> b!2784380 (= res!1162146 (= (size!25000 lt!994481) (+ (size!25000 lt!994455) (size!25000 lt!994448))))))

(declare-fun b!2784381 () Bool)

(assert (=> b!2784381 (= e!1756710 (or (not (= lt!994448 Nil!32187)) (= lt!994481 lt!994455)))))

(declare-fun b!2784379 () Bool)

(assert (=> b!2784379 (= e!1756711 (Cons!32187 (h!37607 lt!994455) (++!7955 (t!228429 lt!994455) lt!994448)))))

(declare-fun d!810432 () Bool)

(assert (=> d!810432 e!1756710))

(declare-fun res!1162147 () Bool)

(assert (=> d!810432 (=> (not res!1162147) (not e!1756710))))

(assert (=> d!810432 (= res!1162147 (= (content!4517 lt!994481) ((_ map or) (content!4517 lt!994455) (content!4517 lt!994448))))))

(assert (=> d!810432 (= lt!994481 e!1756711)))

(declare-fun c!452372 () Bool)

(assert (=> d!810432 (= c!452372 ((_ is Nil!32187) lt!994455))))

(assert (=> d!810432 (= (++!7955 lt!994455 lt!994448) lt!994481)))

(assert (= (and d!810432 c!452372) b!2784378))

(assert (= (and d!810432 (not c!452372)) b!2784379))

(assert (= (and d!810432 res!1162147) b!2784380))

(assert (= (and b!2784380 res!1162146) b!2784381))

(declare-fun m!3215009 () Bool)

(assert (=> b!2784380 m!3215009))

(declare-fun m!3215011 () Bool)

(assert (=> b!2784380 m!3215011))

(declare-fun m!3215013 () Bool)

(assert (=> b!2784380 m!3215013))

(declare-fun m!3215015 () Bool)

(assert (=> b!2784379 m!3215015))

(declare-fun m!3215017 () Bool)

(assert (=> d!810432 m!3215017))

(declare-fun m!3215019 () Bool)

(assert (=> d!810432 m!3215019))

(declare-fun m!3215021 () Bool)

(assert (=> d!810432 m!3215021))

(assert (=> b!2784305 d!810432))

(declare-fun d!810434 () Bool)

(declare-fun list!12127 (Conc!10005) List!32287)

(assert (=> d!810434 (= (list!12126 (_2!19206 lt!994454)) (list!12127 (c!452348 (_2!19206 lt!994454))))))

(declare-fun bs!510858 () Bool)

(assert (= bs!510858 d!810434))

(declare-fun m!3215023 () Bool)

(assert (=> bs!510858 m!3215023))

(assert (=> b!2784305 d!810434))

(declare-fun d!810436 () Bool)

(assert (=> d!810436 (= (list!12126 (_1!19206 lt!994454)) (list!12127 (c!452348 (_1!19206 lt!994454))))))

(declare-fun bs!510859 () Bool)

(assert (= bs!510859 d!810436))

(declare-fun m!3215025 () Bool)

(assert (=> bs!510859 m!3215025))

(assert (=> b!2784305 d!810436))

(declare-fun d!810438 () Bool)

(declare-fun e!1756714 () Bool)

(assert (=> d!810438 e!1756714))

(declare-fun res!1162153 () Bool)

(assert (=> d!810438 (=> (not res!1162153) (not e!1756714))))

(declare-fun lt!994487 () tuple2!32486)

(declare-fun isBalanced!3052 (Conc!10005) Bool)

(assert (=> d!810438 (= res!1162153 (isBalanced!3052 (c!452348 (_1!19206 lt!994487))))))

(declare-datatypes ((tuple2!32488 0))(
  ( (tuple2!32489 (_1!19207 Conc!10005) (_2!19207 Conc!10005)) )
))
(declare-fun lt!994486 () tuple2!32488)

(assert (=> d!810438 (= lt!994487 (tuple2!32487 (BalanceConc!19625 (_1!19207 lt!994486)) (BalanceConc!19625 (_2!19207 lt!994486))))))

(declare-fun splitAt!130 (Conc!10005 Int) tuple2!32488)

(assert (=> d!810438 (= lt!994486 (splitAt!130 (c!452348 totalInput!758) testedPSize!143))))

(assert (=> d!810438 (isBalanced!3052 (c!452348 totalInput!758))))

(assert (=> d!810438 (= (splitAt!129 totalInput!758 testedPSize!143) lt!994487)))

(declare-fun b!2784386 () Bool)

(declare-fun res!1162152 () Bool)

(assert (=> b!2784386 (=> (not res!1162152) (not e!1756714))))

(assert (=> b!2784386 (= res!1162152 (isBalanced!3052 (c!452348 (_2!19206 lt!994487))))))

(declare-fun b!2784387 () Bool)

(declare-datatypes ((tuple2!32490 0))(
  ( (tuple2!32491 (_1!19208 List!32287) (_2!19208 List!32287)) )
))
(declare-fun splitAtIndex!55 (List!32287 Int) tuple2!32490)

(assert (=> b!2784387 (= e!1756714 (= (tuple2!32491 (list!12126 (_1!19206 lt!994487)) (list!12126 (_2!19206 lt!994487))) (splitAtIndex!55 (list!12126 totalInput!758) testedPSize!143)))))

(assert (= (and d!810438 res!1162153) b!2784386))

(assert (= (and b!2784386 res!1162152) b!2784387))

(declare-fun m!3215027 () Bool)

(assert (=> d!810438 m!3215027))

(declare-fun m!3215029 () Bool)

(assert (=> d!810438 m!3215029))

(declare-fun m!3215031 () Bool)

(assert (=> d!810438 m!3215031))

(declare-fun m!3215033 () Bool)

(assert (=> b!2784386 m!3215033))

(declare-fun m!3215035 () Bool)

(assert (=> b!2784387 m!3215035))

(declare-fun m!3215037 () Bool)

(assert (=> b!2784387 m!3215037))

(assert (=> b!2784387 m!3214923))

(assert (=> b!2784387 m!3214923))

(declare-fun m!3215039 () Bool)

(assert (=> b!2784387 m!3215039))

(assert (=> b!2784305 d!810438))

(declare-fun b!2784399 () Bool)

(declare-fun e!1756723 () Bool)

(assert (=> b!2784399 (= e!1756723 (>= (size!25000 lt!994453) (size!25000 testedP!183)))))

(declare-fun b!2784397 () Bool)

(declare-fun res!1162163 () Bool)

(declare-fun e!1756722 () Bool)

(assert (=> b!2784397 (=> (not res!1162163) (not e!1756722))))

(assert (=> b!2784397 (= res!1162163 (= (head!6161 testedP!183) (head!6161 lt!994453)))))

(declare-fun b!2784398 () Bool)

(assert (=> b!2784398 (= e!1756722 (isPrefix!2578 (tail!4398 testedP!183) (tail!4398 lt!994453)))))

(declare-fun d!810440 () Bool)

(assert (=> d!810440 e!1756723))

(declare-fun res!1162162 () Bool)

(assert (=> d!810440 (=> res!1162162 e!1756723)))

(declare-fun lt!994490 () Bool)

(assert (=> d!810440 (= res!1162162 (not lt!994490))))

(declare-fun e!1756721 () Bool)

(assert (=> d!810440 (= lt!994490 e!1756721)))

(declare-fun res!1162165 () Bool)

(assert (=> d!810440 (=> res!1162165 e!1756721)))

(assert (=> d!810440 (= res!1162165 ((_ is Nil!32187) testedP!183))))

(assert (=> d!810440 (= (isPrefix!2578 testedP!183 lt!994453) lt!994490)))

(declare-fun b!2784396 () Bool)

(assert (=> b!2784396 (= e!1756721 e!1756722)))

(declare-fun res!1162164 () Bool)

(assert (=> b!2784396 (=> (not res!1162164) (not e!1756722))))

(assert (=> b!2784396 (= res!1162164 (not ((_ is Nil!32187) lt!994453)))))

(assert (= (and d!810440 (not res!1162165)) b!2784396))

(assert (= (and b!2784396 res!1162164) b!2784397))

(assert (= (and b!2784397 res!1162163) b!2784398))

(assert (= (and d!810440 (not res!1162162)) b!2784399))

(assert (=> b!2784399 m!3214989))

(assert (=> b!2784399 m!3214905))

(declare-fun m!3215041 () Bool)

(assert (=> b!2784397 m!3215041))

(assert (=> b!2784397 m!3214991))

(declare-fun m!3215043 () Bool)

(assert (=> b!2784398 m!3215043))

(assert (=> b!2784398 m!3214993))

(assert (=> b!2784398 m!3215043))

(assert (=> b!2784398 m!3214993))

(declare-fun m!3215045 () Bool)

(assert (=> b!2784398 m!3215045))

(assert (=> b!2784289 d!810440))

(declare-fun b!2784403 () Bool)

(declare-fun e!1756726 () Bool)

(assert (=> b!2784403 (= e!1756726 (>= (size!25000 lt!994447) (size!25000 testedP!183)))))

(declare-fun b!2784401 () Bool)

(declare-fun res!1162167 () Bool)

(declare-fun e!1756725 () Bool)

(assert (=> b!2784401 (=> (not res!1162167) (not e!1756725))))

(assert (=> b!2784401 (= res!1162167 (= (head!6161 testedP!183) (head!6161 lt!994447)))))

(declare-fun b!2784402 () Bool)

(assert (=> b!2784402 (= e!1756725 (isPrefix!2578 (tail!4398 testedP!183) (tail!4398 lt!994447)))))

(declare-fun d!810442 () Bool)

(assert (=> d!810442 e!1756726))

(declare-fun res!1162166 () Bool)

(assert (=> d!810442 (=> res!1162166 e!1756726)))

(declare-fun lt!994491 () Bool)

(assert (=> d!810442 (= res!1162166 (not lt!994491))))

(declare-fun e!1756724 () Bool)

(assert (=> d!810442 (= lt!994491 e!1756724)))

(declare-fun res!1162169 () Bool)

(assert (=> d!810442 (=> res!1162169 e!1756724)))

(assert (=> d!810442 (= res!1162169 ((_ is Nil!32187) testedP!183))))

(assert (=> d!810442 (= (isPrefix!2578 testedP!183 lt!994447) lt!994491)))

(declare-fun b!2784400 () Bool)

(assert (=> b!2784400 (= e!1756724 e!1756725)))

(declare-fun res!1162168 () Bool)

(assert (=> b!2784400 (=> (not res!1162168) (not e!1756725))))

(assert (=> b!2784400 (= res!1162168 (not ((_ is Nil!32187) lt!994447)))))

(assert (= (and d!810442 (not res!1162169)) b!2784400))

(assert (= (and b!2784400 res!1162168) b!2784401))

(assert (= (and b!2784401 res!1162167) b!2784402))

(assert (= (and d!810442 (not res!1162166)) b!2784403))

(declare-fun m!3215047 () Bool)

(assert (=> b!2784403 m!3215047))

(assert (=> b!2784403 m!3214905))

(assert (=> b!2784401 m!3215041))

(declare-fun m!3215049 () Bool)

(assert (=> b!2784401 m!3215049))

(assert (=> b!2784402 m!3215043))

(declare-fun m!3215051 () Bool)

(assert (=> b!2784402 m!3215051))

(assert (=> b!2784402 m!3215043))

(assert (=> b!2784402 m!3215051))

(declare-fun m!3215053 () Bool)

(assert (=> b!2784402 m!3215053))

(assert (=> b!2784289 d!810442))

(declare-fun d!810444 () Bool)

(assert (=> d!810444 (isPrefix!2578 testedP!183 (++!7955 testedP!183 testedSuffix!143))))

(declare-fun lt!994494 () Unit!46432)

(declare-fun choose!16329 (List!32287 List!32287) Unit!46432)

(assert (=> d!810444 (= lt!994494 (choose!16329 testedP!183 testedSuffix!143))))

(assert (=> d!810444 (= (lemmaConcatTwoListThenFirstIsPrefix!1688 testedP!183 testedSuffix!143) lt!994494)))

(declare-fun bs!510860 () Bool)

(assert (= bs!510860 d!810444))

(assert (=> bs!510860 m!3214931))

(assert (=> bs!510860 m!3214931))

(declare-fun m!3215055 () Bool)

(assert (=> bs!510860 m!3215055))

(declare-fun m!3215057 () Bool)

(assert (=> bs!510860 m!3215057))

(assert (=> b!2784289 d!810444))

(declare-fun bs!510861 () Bool)

(declare-fun b!2784408 () Bool)

(declare-fun d!810446 () Bool)

(assert (= bs!510861 (and b!2784408 d!810446)))

(declare-fun lambda!102181 () Int)

(declare-fun lambda!102180 () Int)

(assert (=> bs!510861 (not (= lambda!102181 lambda!102180))))

(declare-fun bs!510862 () Bool)

(declare-fun b!2784409 () Bool)

(assert (= bs!510862 (and b!2784409 d!810446)))

(declare-fun lambda!102182 () Int)

(assert (=> bs!510862 (not (= lambda!102182 lambda!102180))))

(declare-fun bs!510863 () Bool)

(assert (= bs!510863 (and b!2784409 b!2784408)))

(assert (=> bs!510863 (= lambda!102182 lambda!102181)))

(declare-fun e!1756733 () Unit!46432)

(declare-fun Unit!46434 () Unit!46432)

(assert (=> b!2784408 (= e!1756733 Unit!46434)))

(declare-datatypes ((List!32291 0))(
  ( (Nil!32191) (Cons!32191 (h!37611 Context!4698) (t!228433 List!32291)) )
))
(declare-fun lt!994518 () List!32291)

(declare-fun call!182470 () List!32291)

(assert (=> b!2784408 (= lt!994518 call!182470)))

(declare-fun lt!994516 () Unit!46432)

(declare-fun lemmaNotForallThenExists!89 (List!32291 Int) Unit!46432)

(assert (=> b!2784408 (= lt!994516 (lemmaNotForallThenExists!89 lt!994518 lambda!102180))))

(declare-fun call!182471 () Bool)

(assert (=> b!2784408 call!182471))

(declare-fun lt!994515 () Unit!46432)

(assert (=> b!2784408 (= lt!994515 lt!994516)))

(declare-fun lt!994513 () List!32291)

(declare-fun c!452383 () Bool)

(declare-fun bm!182466 () Bool)

(declare-fun exists!985 (List!32291 Int) Bool)

(assert (=> bm!182466 (= call!182471 (exists!985 (ite c!452383 lt!994518 lt!994513) (ite c!452383 lambda!102181 lambda!102182)))))

(declare-fun lt!994512 () Bool)

(declare-datatypes ((Option!6267 0))(
  ( (None!6266) (Some!6266 (v!33799 List!32287)) )
))
(declare-fun isEmpty!18111 (Option!6267) Bool)

(declare-fun getLanguageWitness!197 ((InoxSet Context!4698)) Option!6267)

(assert (=> d!810446 (= lt!994512 (isEmpty!18111 (getLanguageWitness!197 z!3684)))))

(declare-fun forall!6649 ((InoxSet Context!4698) Int) Bool)

(assert (=> d!810446 (= lt!994512 (forall!6649 z!3684 lambda!102180))))

(declare-fun lt!994511 () Unit!46432)

(assert (=> d!810446 (= lt!994511 e!1756733)))

(assert (=> d!810446 (= c!452383 (not (forall!6649 z!3684 lambda!102180)))))

(assert (=> d!810446 (= (lostCauseZipper!455 z!3684) lt!994512)))

(declare-fun bm!182465 () Bool)

(declare-fun toList!1852 ((InoxSet Context!4698)) List!32291)

(assert (=> bm!182465 (= call!182470 (toList!1852 z!3684))))

(declare-fun Unit!46435 () Unit!46432)

(assert (=> b!2784409 (= e!1756733 Unit!46435)))

(assert (=> b!2784409 (= lt!994513 call!182470)))

(declare-fun lt!994517 () Unit!46432)

(declare-fun lemmaForallThenNotExists!89 (List!32291 Int) Unit!46432)

(assert (=> b!2784409 (= lt!994517 (lemmaForallThenNotExists!89 lt!994513 lambda!102180))))

(assert (=> b!2784409 (not call!182471)))

(declare-fun lt!994514 () Unit!46432)

(assert (=> b!2784409 (= lt!994514 lt!994517)))

(assert (= (and d!810446 c!452383) b!2784408))

(assert (= (and d!810446 (not c!452383)) b!2784409))

(assert (= (or b!2784408 b!2784409) bm!182465))

(assert (= (or b!2784408 b!2784409) bm!182466))

(declare-fun m!3215059 () Bool)

(assert (=> d!810446 m!3215059))

(assert (=> d!810446 m!3215059))

(declare-fun m!3215061 () Bool)

(assert (=> d!810446 m!3215061))

(declare-fun m!3215063 () Bool)

(assert (=> d!810446 m!3215063))

(assert (=> d!810446 m!3215063))

(declare-fun m!3215065 () Bool)

(assert (=> b!2784408 m!3215065))

(declare-fun m!3215067 () Bool)

(assert (=> bm!182465 m!3215067))

(declare-fun m!3215069 () Bool)

(assert (=> b!2784409 m!3215069))

(declare-fun m!3215071 () Bool)

(assert (=> bm!182466 m!3215071))

(assert (=> b!2784306 d!810446))

(declare-fun d!810448 () Bool)

(assert (=> d!810448 (= testedSuffix!143 lt!994449)))

(declare-fun lt!994521 () Unit!46432)

(declare-fun choose!16330 (List!32287 List!32287 List!32287 List!32287 List!32287) Unit!46432)

(assert (=> d!810448 (= lt!994521 (choose!16330 testedP!183 testedSuffix!143 testedP!183 lt!994449 lt!994453))))

(assert (=> d!810448 (isPrefix!2578 testedP!183 lt!994453)))

(assert (=> d!810448 (= (lemmaSamePrefixThenSameSuffix!1156 testedP!183 testedSuffix!143 testedP!183 lt!994449 lt!994453) lt!994521)))

(declare-fun bs!510864 () Bool)

(assert (= bs!510864 d!810448))

(declare-fun m!3215073 () Bool)

(assert (=> bs!510864 m!3215073))

(assert (=> bs!510864 m!3214943))

(assert (=> b!2784306 d!810448))

(declare-fun d!810450 () Bool)

(declare-fun lt!994524 () List!32287)

(assert (=> d!810450 (= (++!7955 testedP!183 lt!994524) lt!994453)))

(declare-fun e!1756736 () List!32287)

(assert (=> d!810450 (= lt!994524 e!1756736)))

(declare-fun c!452386 () Bool)

(assert (=> d!810450 (= c!452386 ((_ is Cons!32187) testedP!183))))

(assert (=> d!810450 (>= (size!25000 lt!994453) (size!25000 testedP!183))))

(assert (=> d!810450 (= (getSuffix!1255 lt!994453 testedP!183) lt!994524)))

(declare-fun b!2784414 () Bool)

(assert (=> b!2784414 (= e!1756736 (getSuffix!1255 (tail!4398 lt!994453) (t!228429 testedP!183)))))

(declare-fun b!2784415 () Bool)

(assert (=> b!2784415 (= e!1756736 lt!994453)))

(assert (= (and d!810450 c!452386) b!2784414))

(assert (= (and d!810450 (not c!452386)) b!2784415))

(declare-fun m!3215075 () Bool)

(assert (=> d!810450 m!3215075))

(assert (=> d!810450 m!3214989))

(assert (=> d!810450 m!3214905))

(assert (=> b!2784414 m!3214993))

(assert (=> b!2784414 m!3214993))

(declare-fun m!3215077 () Bool)

(assert (=> b!2784414 m!3215077))

(assert (=> b!2784306 d!810450))

(declare-fun d!810452 () Bool)

(declare-fun validCacheMapDown!407 (MutableMap!3773) Bool)

(assert (=> d!810452 (= (valid!3024 cacheDown!1009) (validCacheMapDown!407 (cache!3916 cacheDown!1009)))))

(declare-fun bs!510865 () Bool)

(assert (= bs!510865 d!810452))

(declare-fun m!3215079 () Bool)

(assert (=> bs!510865 m!3215079))

(assert (=> b!2784304 d!810452))

(declare-fun d!810454 () Bool)

(declare-fun res!1162172 () Bool)

(declare-fun e!1756739 () Bool)

(assert (=> d!810454 (=> (not res!1162172) (not e!1756739))))

(assert (=> d!810454 (= res!1162172 ((_ is HashMap!3772) (cache!3915 cacheUp!890)))))

(assert (=> d!810454 (= (inv!43726 cacheUp!890) e!1756739)))

(declare-fun b!2784418 () Bool)

(assert (=> b!2784418 (= e!1756739 (validCacheMapUp!376 (cache!3915 cacheUp!890)))))

(assert (= (and d!810454 res!1162172) b!2784418))

(assert (=> b!2784418 m!3214975))

(assert (=> start!269044 d!810454))

(declare-fun d!810456 () Bool)

(assert (=> d!810456 (= (inv!43724 totalInput!758) (isBalanced!3052 (c!452348 totalInput!758)))))

(declare-fun bs!510866 () Bool)

(assert (= bs!510866 d!810456))

(assert (=> bs!510866 m!3215031))

(assert (=> start!269044 d!810456))

(declare-fun d!810458 () Bool)

(declare-fun res!1162175 () Bool)

(declare-fun e!1756742 () Bool)

(assert (=> d!810458 (=> (not res!1162175) (not e!1756742))))

(assert (=> d!810458 (= res!1162175 ((_ is HashMap!3773) (cache!3916 cacheDown!1009)))))

(assert (=> d!810458 (= (inv!43725 cacheDown!1009) e!1756742)))

(declare-fun b!2784421 () Bool)

(assert (=> b!2784421 (= e!1756742 (validCacheMapDown!407 (cache!3916 cacheDown!1009)))))

(assert (= (and d!810458 res!1162175) b!2784421))

(assert (=> b!2784421 m!3215079))

(assert (=> start!269044 d!810458))

(declare-fun d!810460 () Bool)

(assert (=> d!810460 (= (list!12126 totalInput!758) (list!12127 (c!452348 totalInput!758)))))

(declare-fun bs!510867 () Bool)

(assert (= bs!510867 d!810460))

(declare-fun m!3215081 () Bool)

(assert (=> bs!510867 m!3215081))

(assert (=> start!269044 d!810460))

(declare-fun b!2784422 () Bool)

(declare-fun e!1756744 () List!32287)

(assert (=> b!2784422 (= e!1756744 testedSuffix!143)))

(declare-fun b!2784424 () Bool)

(declare-fun res!1162176 () Bool)

(declare-fun e!1756743 () Bool)

(assert (=> b!2784424 (=> (not res!1162176) (not e!1756743))))

(declare-fun lt!994525 () List!32287)

(assert (=> b!2784424 (= res!1162176 (= (size!25000 lt!994525) (+ (size!25000 testedP!183) (size!25000 testedSuffix!143))))))

(declare-fun b!2784425 () Bool)

(assert (=> b!2784425 (= e!1756743 (or (not (= testedSuffix!143 Nil!32187)) (= lt!994525 testedP!183)))))

(declare-fun b!2784423 () Bool)

(assert (=> b!2784423 (= e!1756744 (Cons!32187 (h!37607 testedP!183) (++!7955 (t!228429 testedP!183) testedSuffix!143)))))

(declare-fun d!810462 () Bool)

(assert (=> d!810462 e!1756743))

(declare-fun res!1162177 () Bool)

(assert (=> d!810462 (=> (not res!1162177) (not e!1756743))))

(assert (=> d!810462 (= res!1162177 (= (content!4517 lt!994525) ((_ map or) (content!4517 testedP!183) (content!4517 testedSuffix!143))))))

(assert (=> d!810462 (= lt!994525 e!1756744)))

(declare-fun c!452387 () Bool)

(assert (=> d!810462 (= c!452387 ((_ is Nil!32187) testedP!183))))

(assert (=> d!810462 (= (++!7955 testedP!183 testedSuffix!143) lt!994525)))

(assert (= (and d!810462 c!452387) b!2784422))

(assert (= (and d!810462 (not c!452387)) b!2784423))

(assert (= (and d!810462 res!1162177) b!2784424))

(assert (= (and b!2784424 res!1162176) b!2784425))

(declare-fun m!3215083 () Bool)

(assert (=> b!2784424 m!3215083))

(assert (=> b!2784424 m!3214905))

(declare-fun m!3215085 () Bool)

(assert (=> b!2784424 m!3215085))

(declare-fun m!3215087 () Bool)

(assert (=> b!2784423 m!3215087))

(declare-fun m!3215089 () Bool)

(assert (=> d!810462 m!3215089))

(declare-fun m!3215091 () Bool)

(assert (=> d!810462 m!3215091))

(declare-fun m!3215093 () Bool)

(assert (=> d!810462 m!3215093))

(assert (=> start!269044 d!810462))

(declare-fun d!810464 () Bool)

(declare-fun lambda!102185 () Int)

(declare-fun forall!6650 (List!32288 Int) Bool)

(assert (=> d!810464 (= (inv!43727 setElem!23431) (forall!6650 (exprs!2849 setElem!23431) lambda!102185))))

(declare-fun bs!510868 () Bool)

(assert (= bs!510868 d!810464))

(declare-fun m!3215095 () Bool)

(assert (=> bs!510868 m!3215095))

(assert (=> setNonEmpty!23431 d!810464))

(declare-fun d!810466 () Bool)

(assert (=> d!810466 (= (array_inv!4391 (_keys!4167 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) (bvsge (size!24999 (_keys!4167 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784298 d!810466))

(declare-fun d!810468 () Bool)

(assert (=> d!810468 (= (array_inv!4393 (_values!4148 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) (bvsge (size!25001 (_values!4148 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2784298 d!810468))

(declare-fun e!1756751 () Bool)

(declare-fun setElem!23434 () Context!4698)

(declare-fun setNonEmpty!23434 () Bool)

(declare-fun tp!882264 () Bool)

(declare-fun setRes!23434 () Bool)

(assert (=> setNonEmpty!23434 (= setRes!23434 (and tp!882264 (inv!43727 setElem!23434) e!1756751))))

(declare-fun setRest!23434 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23434 (= (_2!19203 (h!37609 (zeroValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23434 true) setRest!23434))))

(declare-fun b!2784434 () Bool)

(declare-fun e!1756753 () Bool)

(declare-fun tp!882263 () Bool)

(assert (=> b!2784434 (= e!1756753 tp!882263)))

(declare-fun setIsEmpty!23434 () Bool)

(assert (=> setIsEmpty!23434 setRes!23434))

(declare-fun e!1756752 () Bool)

(assert (=> b!2784293 (= tp!882253 e!1756752)))

(declare-fun b!2784435 () Bool)

(declare-fun tp!882262 () Bool)

(assert (=> b!2784435 (= e!1756751 tp!882262)))

(declare-fun tp!882265 () Bool)

(declare-fun b!2784436 () Bool)

(assert (=> b!2784436 (= e!1756752 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 (zeroValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))))) e!1756753 tp_is_empty!14075 setRes!23434 tp!882265))))

(declare-fun condSetEmpty!23434 () Bool)

(assert (=> b!2784436 (= condSetEmpty!23434 (= (_2!19203 (h!37609 (zeroValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) ((as const (Array Context!4698 Bool)) false)))))

(assert (= b!2784436 b!2784434))

(assert (= (and b!2784436 condSetEmpty!23434) setIsEmpty!23434))

(assert (= (and b!2784436 (not condSetEmpty!23434)) setNonEmpty!23434))

(assert (= setNonEmpty!23434 b!2784435))

(assert (= (and b!2784293 ((_ is Cons!32189) (zeroValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) b!2784436))

(declare-fun m!3215097 () Bool)

(assert (=> setNonEmpty!23434 m!3215097))

(declare-fun m!3215099 () Bool)

(assert (=> b!2784436 m!3215099))

(declare-fun setRes!23435 () Bool)

(declare-fun setNonEmpty!23435 () Bool)

(declare-fun tp!882268 () Bool)

(declare-fun e!1756754 () Bool)

(declare-fun setElem!23435 () Context!4698)

(assert (=> setNonEmpty!23435 (= setRes!23435 (and tp!882268 (inv!43727 setElem!23435) e!1756754))))

(declare-fun setRest!23435 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23435 (= (_2!19203 (h!37609 (minValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23435 true) setRest!23435))))

(declare-fun b!2784437 () Bool)

(declare-fun e!1756756 () Bool)

(declare-fun tp!882267 () Bool)

(assert (=> b!2784437 (= e!1756756 tp!882267)))

(declare-fun setIsEmpty!23435 () Bool)

(assert (=> setIsEmpty!23435 setRes!23435))

(declare-fun e!1756755 () Bool)

(assert (=> b!2784293 (= tp!882235 e!1756755)))

(declare-fun b!2784438 () Bool)

(declare-fun tp!882266 () Bool)

(assert (=> b!2784438 (= e!1756754 tp!882266)))

(declare-fun tp!882269 () Bool)

(declare-fun b!2784439 () Bool)

(assert (=> b!2784439 (= e!1756755 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 (minValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))))) e!1756756 tp_is_empty!14075 setRes!23435 tp!882269))))

(declare-fun condSetEmpty!23435 () Bool)

(assert (=> b!2784439 (= condSetEmpty!23435 (= (_2!19203 (h!37609 (minValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) ((as const (Array Context!4698 Bool)) false)))))

(assert (= b!2784439 b!2784437))

(assert (= (and b!2784439 condSetEmpty!23435) setIsEmpty!23435))

(assert (= (and b!2784439 (not condSetEmpty!23435)) setNonEmpty!23435))

(assert (= setNonEmpty!23435 b!2784438))

(assert (= (and b!2784293 ((_ is Cons!32189) (minValue!4125 (v!33795 (underlying!7935 (v!33796 (underlying!7936 (cache!3915 cacheUp!890)))))))) b!2784439))

(declare-fun m!3215101 () Bool)

(assert (=> setNonEmpty!23435 m!3215101))

(declare-fun m!3215103 () Bool)

(assert (=> b!2784439 m!3215103))

(declare-fun tp!882272 () Bool)

(declare-fun setNonEmpty!23436 () Bool)

(declare-fun e!1756757 () Bool)

(declare-fun setElem!23436 () Context!4698)

(declare-fun setRes!23436 () Bool)

(assert (=> setNonEmpty!23436 (= setRes!23436 (and tp!882272 (inv!43727 setElem!23436) e!1756757))))

(declare-fun setRest!23436 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23436 (= (_2!19203 (h!37609 mapDefault!17633)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23436 true) setRest!23436))))

(declare-fun b!2784440 () Bool)

(declare-fun e!1756759 () Bool)

(declare-fun tp!882271 () Bool)

(assert (=> b!2784440 (= e!1756759 tp!882271)))

(declare-fun setIsEmpty!23436 () Bool)

(assert (=> setIsEmpty!23436 setRes!23436))

(declare-fun e!1756758 () Bool)

(assert (=> b!2784315 (= tp!882250 e!1756758)))

(declare-fun b!2784441 () Bool)

(declare-fun tp!882270 () Bool)

(assert (=> b!2784441 (= e!1756757 tp!882270)))

(declare-fun b!2784442 () Bool)

(declare-fun tp!882273 () Bool)

(assert (=> b!2784442 (= e!1756758 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 mapDefault!17633)))) e!1756759 tp_is_empty!14075 setRes!23436 tp!882273))))

(declare-fun condSetEmpty!23436 () Bool)

(assert (=> b!2784442 (= condSetEmpty!23436 (= (_2!19203 (h!37609 mapDefault!17633)) ((as const (Array Context!4698 Bool)) false)))))

(assert (= b!2784442 b!2784440))

(assert (= (and b!2784442 condSetEmpty!23436) setIsEmpty!23436))

(assert (= (and b!2784442 (not condSetEmpty!23436)) setNonEmpty!23436))

(assert (= setNonEmpty!23436 b!2784441))

(assert (= (and b!2784315 ((_ is Cons!32189) mapDefault!17633)) b!2784442))

(declare-fun m!3215105 () Bool)

(assert (=> setNonEmpty!23436 m!3215105))

(declare-fun m!3215107 () Bool)

(assert (=> b!2784442 m!3215107))

(declare-fun b!2784457 () Bool)

(declare-fun e!1756776 () Bool)

(declare-fun tp!882297 () Bool)

(assert (=> b!2784457 (= e!1756776 tp!882297)))

(declare-fun tp!882306 () Bool)

(declare-fun setRes!23441 () Bool)

(declare-fun e!1756775 () Bool)

(declare-fun tp!882298 () Bool)

(declare-fun b!2784458 () Bool)

(declare-fun e!1756777 () Bool)

(declare-fun mapDefault!17637 () List!32290)

(assert (=> b!2784458 (= e!1756775 (and tp!882306 (inv!43727 (_2!19204 (_1!19205 (h!37610 mapDefault!17637)))) e!1756777 tp_is_empty!14075 setRes!23441 tp!882298))))

(declare-fun condSetEmpty!23442 () Bool)

(assert (=> b!2784458 (= condSetEmpty!23442 (= (_2!19205 (h!37610 mapDefault!17637)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun e!1756773 () Bool)

(declare-fun tp!882300 () Bool)

(declare-fun setRes!23442 () Bool)

(declare-fun mapValue!17637 () List!32290)

(declare-fun tp!882303 () Bool)

(declare-fun b!2784459 () Bool)

(assert (=> b!2784459 (= e!1756773 (and tp!882303 (inv!43727 (_2!19204 (_1!19205 (h!37610 mapValue!17637)))) e!1756776 tp_is_empty!14075 setRes!23442 tp!882300))))

(declare-fun condSetEmpty!23441 () Bool)

(assert (=> b!2784459 (= condSetEmpty!23441 (= (_2!19205 (h!37610 mapValue!17637)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784460 () Bool)

(declare-fun tp!882301 () Bool)

(assert (=> b!2784460 (= e!1756777 tp!882301)))

(declare-fun setIsEmpty!23441 () Bool)

(assert (=> setIsEmpty!23441 setRes!23441))

(declare-fun b!2784461 () Bool)

(declare-fun e!1756774 () Bool)

(declare-fun tp!882299 () Bool)

(assert (=> b!2784461 (= e!1756774 tp!882299)))

(declare-fun mapNonEmpty!17637 () Bool)

(declare-fun mapRes!17637 () Bool)

(declare-fun tp!882302 () Bool)

(assert (=> mapNonEmpty!17637 (= mapRes!17637 (and tp!882302 e!1756773))))

(declare-fun mapKey!17637 () (_ BitVec 32))

(declare-fun mapRest!17637 () (Array (_ BitVec 32) List!32290))

(assert (=> mapNonEmpty!17637 (= mapRest!17633 (store mapRest!17637 mapKey!17637 mapValue!17637))))

(declare-fun b!2784462 () Bool)

(declare-fun e!1756772 () Bool)

(declare-fun tp!882304 () Bool)

(assert (=> b!2784462 (= e!1756772 tp!882304)))

(declare-fun condMapEmpty!17637 () Bool)

(assert (=> mapNonEmpty!17634 (= condMapEmpty!17637 (= mapRest!17633 ((as const (Array (_ BitVec 32) List!32290)) mapDefault!17637)))))

(assert (=> mapNonEmpty!17634 (= tp!882238 (and e!1756775 mapRes!17637))))

(declare-fun mapIsEmpty!17637 () Bool)

(assert (=> mapIsEmpty!17637 mapRes!17637))

(declare-fun setNonEmpty!23441 () Bool)

(declare-fun tp!882305 () Bool)

(declare-fun setElem!23442 () Context!4698)

(assert (=> setNonEmpty!23441 (= setRes!23441 (and tp!882305 (inv!43727 setElem!23442) e!1756772))))

(declare-fun setRest!23441 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23441 (= (_2!19205 (h!37610 mapDefault!17637)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23442 true) setRest!23441))))

(declare-fun tp!882296 () Bool)

(declare-fun setElem!23441 () Context!4698)

(declare-fun setNonEmpty!23442 () Bool)

(assert (=> setNonEmpty!23442 (= setRes!23442 (and tp!882296 (inv!43727 setElem!23441) e!1756774))))

(declare-fun setRest!23442 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23442 (= (_2!19205 (h!37610 mapValue!17637)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23441 true) setRest!23442))))

(declare-fun setIsEmpty!23442 () Bool)

(assert (=> setIsEmpty!23442 setRes!23442))

(assert (= (and mapNonEmpty!17634 condMapEmpty!17637) mapIsEmpty!17637))

(assert (= (and mapNonEmpty!17634 (not condMapEmpty!17637)) mapNonEmpty!17637))

(assert (= b!2784459 b!2784457))

(assert (= (and b!2784459 condSetEmpty!23441) setIsEmpty!23442))

(assert (= (and b!2784459 (not condSetEmpty!23441)) setNonEmpty!23442))

(assert (= setNonEmpty!23442 b!2784461))

(assert (= (and mapNonEmpty!17637 ((_ is Cons!32190) mapValue!17637)) b!2784459))

(assert (= b!2784458 b!2784460))

(assert (= (and b!2784458 condSetEmpty!23442) setIsEmpty!23441))

(assert (= (and b!2784458 (not condSetEmpty!23442)) setNonEmpty!23441))

(assert (= setNonEmpty!23441 b!2784462))

(assert (= (and mapNonEmpty!17634 ((_ is Cons!32190) mapDefault!17637)) b!2784458))

(declare-fun m!3215109 () Bool)

(assert (=> b!2784459 m!3215109))

(declare-fun m!3215111 () Bool)

(assert (=> setNonEmpty!23441 m!3215111))

(declare-fun m!3215113 () Bool)

(assert (=> setNonEmpty!23442 m!3215113))

(declare-fun m!3215115 () Bool)

(assert (=> mapNonEmpty!17637 m!3215115))

(declare-fun m!3215117 () Bool)

(assert (=> b!2784458 m!3215117))

(declare-fun b!2784471 () Bool)

(declare-fun e!1756785 () Bool)

(declare-fun tp!882320 () Bool)

(assert (=> b!2784471 (= e!1756785 tp!882320)))

(declare-fun setIsEmpty!23445 () Bool)

(declare-fun setRes!23445 () Bool)

(assert (=> setIsEmpty!23445 setRes!23445))

(declare-fun tp!882319 () Bool)

(declare-fun tp!882317 () Bool)

(declare-fun e!1756786 () Bool)

(declare-fun b!2784472 () Bool)

(assert (=> b!2784472 (= e!1756786 (and tp!882319 (inv!43727 (_2!19204 (_1!19205 (h!37610 mapValue!17634)))) e!1756785 tp_is_empty!14075 setRes!23445 tp!882317))))

(declare-fun condSetEmpty!23445 () Bool)

(assert (=> b!2784472 (= condSetEmpty!23445 (= (_2!19205 (h!37610 mapValue!17634)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784473 () Bool)

(declare-fun e!1756784 () Bool)

(declare-fun tp!882321 () Bool)

(assert (=> b!2784473 (= e!1756784 tp!882321)))

(declare-fun setNonEmpty!23445 () Bool)

(declare-fun setElem!23445 () Context!4698)

(declare-fun tp!882318 () Bool)

(assert (=> setNonEmpty!23445 (= setRes!23445 (and tp!882318 (inv!43727 setElem!23445) e!1756784))))

(declare-fun setRest!23445 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23445 (= (_2!19205 (h!37610 mapValue!17634)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23445 true) setRest!23445))))

(assert (=> mapNonEmpty!17634 (= tp!882251 e!1756786)))

(assert (= b!2784472 b!2784471))

(assert (= (and b!2784472 condSetEmpty!23445) setIsEmpty!23445))

(assert (= (and b!2784472 (not condSetEmpty!23445)) setNonEmpty!23445))

(assert (= setNonEmpty!23445 b!2784473))

(assert (= (and mapNonEmpty!17634 ((_ is Cons!32190) mapValue!17634)) b!2784472))

(declare-fun m!3215119 () Bool)

(assert (=> b!2784472 m!3215119))

(declare-fun m!3215121 () Bool)

(assert (=> setNonEmpty!23445 m!3215121))

(declare-fun b!2784488 () Bool)

(declare-fun e!1756799 () Bool)

(declare-fun tp!882341 () Bool)

(assert (=> b!2784488 (= e!1756799 tp!882341)))

(declare-fun mapNonEmpty!17640 () Bool)

(declare-fun mapRes!17640 () Bool)

(declare-fun tp!882342 () Bool)

(declare-fun e!1756802 () Bool)

(assert (=> mapNonEmpty!17640 (= mapRes!17640 (and tp!882342 e!1756802))))

(declare-fun mapValue!17640 () List!32289)

(declare-fun mapKey!17640 () (_ BitVec 32))

(declare-fun mapRest!17640 () (Array (_ BitVec 32) List!32289))

(assert (=> mapNonEmpty!17640 (= mapRest!17634 (store mapRest!17640 mapKey!17640 mapValue!17640))))

(declare-fun e!1756801 () Bool)

(declare-fun setRes!23450 () Bool)

(declare-fun tp!882346 () Bool)

(declare-fun e!1756803 () Bool)

(declare-fun b!2784489 () Bool)

(declare-fun mapDefault!17640 () List!32289)

(assert (=> b!2784489 (= e!1756803 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 mapDefault!17640)))) e!1756801 tp_is_empty!14075 setRes!23450 tp!882346))))

(declare-fun condSetEmpty!23451 () Bool)

(assert (=> b!2784489 (= condSetEmpty!23451 (= (_2!19203 (h!37609 mapDefault!17640)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun setIsEmpty!23450 () Bool)

(declare-fun setRes!23451 () Bool)

(assert (=> setIsEmpty!23450 setRes!23451))

(declare-fun tp!882344 () Bool)

(declare-fun b!2784490 () Bool)

(assert (=> b!2784490 (= e!1756802 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 mapValue!17640)))) e!1756799 tp_is_empty!14075 setRes!23451 tp!882344))))

(declare-fun condSetEmpty!23450 () Bool)

(assert (=> b!2784490 (= condSetEmpty!23450 (= (_2!19203 (h!37609 mapValue!17640)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784491 () Bool)

(declare-fun tp!882345 () Bool)

(assert (=> b!2784491 (= e!1756801 tp!882345)))

(declare-fun setElem!23451 () Context!4698)

(declare-fun e!1756800 () Bool)

(declare-fun tp!882347 () Bool)

(declare-fun setNonEmpty!23450 () Bool)

(assert (=> setNonEmpty!23450 (= setRes!23451 (and tp!882347 (inv!43727 setElem!23451) e!1756800))))

(declare-fun setRest!23450 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23450 (= (_2!19203 (h!37609 mapValue!17640)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23451 true) setRest!23450))))

(declare-fun e!1756804 () Bool)

(declare-fun setNonEmpty!23451 () Bool)

(declare-fun tp!882343 () Bool)

(declare-fun setElem!23450 () Context!4698)

(assert (=> setNonEmpty!23451 (= setRes!23450 (and tp!882343 (inv!43727 setElem!23450) e!1756804))))

(declare-fun setRest!23451 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23451 (= (_2!19203 (h!37609 mapDefault!17640)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23450 true) setRest!23451))))

(declare-fun b!2784492 () Bool)

(declare-fun tp!882340 () Bool)

(assert (=> b!2784492 (= e!1756800 tp!882340)))

(declare-fun b!2784493 () Bool)

(declare-fun tp!882348 () Bool)

(assert (=> b!2784493 (= e!1756804 tp!882348)))

(declare-fun setIsEmpty!23451 () Bool)

(assert (=> setIsEmpty!23451 setRes!23450))

(declare-fun mapIsEmpty!17640 () Bool)

(assert (=> mapIsEmpty!17640 mapRes!17640))

(declare-fun condMapEmpty!17640 () Bool)

(assert (=> mapNonEmpty!17633 (= condMapEmpty!17640 (= mapRest!17634 ((as const (Array (_ BitVec 32) List!32289)) mapDefault!17640)))))

(assert (=> mapNonEmpty!17633 (= tp!882240 (and e!1756803 mapRes!17640))))

(assert (= (and mapNonEmpty!17633 condMapEmpty!17640) mapIsEmpty!17640))

(assert (= (and mapNonEmpty!17633 (not condMapEmpty!17640)) mapNonEmpty!17640))

(assert (= b!2784490 b!2784488))

(assert (= (and b!2784490 condSetEmpty!23450) setIsEmpty!23450))

(assert (= (and b!2784490 (not condSetEmpty!23450)) setNonEmpty!23450))

(assert (= setNonEmpty!23450 b!2784492))

(assert (= (and mapNonEmpty!17640 ((_ is Cons!32189) mapValue!17640)) b!2784490))

(assert (= b!2784489 b!2784491))

(assert (= (and b!2784489 condSetEmpty!23451) setIsEmpty!23451))

(assert (= (and b!2784489 (not condSetEmpty!23451)) setNonEmpty!23451))

(assert (= setNonEmpty!23451 b!2784493))

(assert (= (and mapNonEmpty!17633 ((_ is Cons!32189) mapDefault!17640)) b!2784489))

(declare-fun m!3215123 () Bool)

(assert (=> setNonEmpty!23451 m!3215123))

(declare-fun m!3215125 () Bool)

(assert (=> mapNonEmpty!17640 m!3215125))

(declare-fun m!3215127 () Bool)

(assert (=> b!2784489 m!3215127))

(declare-fun m!3215129 () Bool)

(assert (=> setNonEmpty!23450 m!3215129))

(declare-fun m!3215131 () Bool)

(assert (=> b!2784490 m!3215131))

(declare-fun setNonEmpty!23452 () Bool)

(declare-fun setRes!23452 () Bool)

(declare-fun tp!882351 () Bool)

(declare-fun e!1756805 () Bool)

(declare-fun setElem!23452 () Context!4698)

(assert (=> setNonEmpty!23452 (= setRes!23452 (and tp!882351 (inv!43727 setElem!23452) e!1756805))))

(declare-fun setRest!23452 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23452 (= (_2!19203 (h!37609 mapValue!17633)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23452 true) setRest!23452))))

(declare-fun b!2784494 () Bool)

(declare-fun e!1756807 () Bool)

(declare-fun tp!882350 () Bool)

(assert (=> b!2784494 (= e!1756807 tp!882350)))

(declare-fun setIsEmpty!23452 () Bool)

(assert (=> setIsEmpty!23452 setRes!23452))

(declare-fun e!1756806 () Bool)

(assert (=> mapNonEmpty!17633 (= tp!882236 e!1756806)))

(declare-fun b!2784495 () Bool)

(declare-fun tp!882349 () Bool)

(assert (=> b!2784495 (= e!1756805 tp!882349)))

(declare-fun tp!882352 () Bool)

(declare-fun b!2784496 () Bool)

(assert (=> b!2784496 (= e!1756806 (and (inv!43727 (_1!19202 (_1!19203 (h!37609 mapValue!17633)))) e!1756807 tp_is_empty!14075 setRes!23452 tp!882352))))

(declare-fun condSetEmpty!23452 () Bool)

(assert (=> b!2784496 (= condSetEmpty!23452 (= (_2!19203 (h!37609 mapValue!17633)) ((as const (Array Context!4698 Bool)) false)))))

(assert (= b!2784496 b!2784494))

(assert (= (and b!2784496 condSetEmpty!23452) setIsEmpty!23452))

(assert (= (and b!2784496 (not condSetEmpty!23452)) setNonEmpty!23452))

(assert (= setNonEmpty!23452 b!2784495))

(assert (= (and mapNonEmpty!17633 ((_ is Cons!32189) mapValue!17633)) b!2784496))

(declare-fun m!3215133 () Bool)

(assert (=> setNonEmpty!23452 m!3215133))

(declare-fun m!3215135 () Bool)

(assert (=> b!2784496 m!3215135))

(declare-fun condSetEmpty!23455 () Bool)

(assert (=> setNonEmpty!23431 (= condSetEmpty!23455 (= setRest!23431 ((as const (Array Context!4698 Bool)) false)))))

(declare-fun setRes!23455 () Bool)

(assert (=> setNonEmpty!23431 (= tp!882244 setRes!23455)))

(declare-fun setIsEmpty!23455 () Bool)

(assert (=> setIsEmpty!23455 setRes!23455))

(declare-fun e!1756810 () Bool)

(declare-fun tp!882358 () Bool)

(declare-fun setNonEmpty!23455 () Bool)

(declare-fun setElem!23455 () Context!4698)

(assert (=> setNonEmpty!23455 (= setRes!23455 (and tp!882358 (inv!43727 setElem!23455) e!1756810))))

(declare-fun setRest!23455 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23455 (= setRest!23431 ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23455 true) setRest!23455))))

(declare-fun b!2784501 () Bool)

(declare-fun tp!882357 () Bool)

(assert (=> b!2784501 (= e!1756810 tp!882357)))

(assert (= (and setNonEmpty!23431 condSetEmpty!23455) setIsEmpty!23455))

(assert (= (and setNonEmpty!23431 (not condSetEmpty!23455)) setNonEmpty!23455))

(assert (= setNonEmpty!23455 b!2784501))

(declare-fun m!3215137 () Bool)

(assert (=> setNonEmpty!23455 m!3215137))

(declare-fun b!2784506 () Bool)

(declare-fun e!1756813 () Bool)

(declare-fun tp!882361 () Bool)

(assert (=> b!2784506 (= e!1756813 (and tp_is_empty!14075 tp!882361))))

(assert (=> b!2784297 (= tp!882248 e!1756813)))

(assert (= (and b!2784297 ((_ is Cons!32187) (t!228429 testedP!183))) b!2784506))

(declare-fun b!2784511 () Bool)

(declare-fun e!1756816 () Bool)

(declare-fun tp!882366 () Bool)

(declare-fun tp!882367 () Bool)

(assert (=> b!2784511 (= e!1756816 (and tp!882366 tp!882367))))

(assert (=> b!2784310 (= tp!882243 e!1756816)))

(assert (= (and b!2784310 ((_ is Cons!32188) (exprs!2849 setElem!23431))) b!2784511))

(declare-fun b!2784520 () Bool)

(declare-fun tp!882374 () Bool)

(declare-fun tp!882375 () Bool)

(declare-fun e!1756822 () Bool)

(assert (=> b!2784520 (= e!1756822 (and (inv!43723 (left!24462 (c!452348 totalInput!758))) tp!882374 (inv!43723 (right!24792 (c!452348 totalInput!758))) tp!882375))))

(declare-fun b!2784522 () Bool)

(declare-fun e!1756821 () Bool)

(declare-fun tp!882376 () Bool)

(assert (=> b!2784522 (= e!1756821 tp!882376)))

(declare-fun b!2784521 () Bool)

(declare-fun inv!43730 (IArray!20015) Bool)

(assert (=> b!2784521 (= e!1756822 (and (inv!43730 (xs!13116 (c!452348 totalInput!758))) e!1756821))))

(assert (=> b!2784303 (= tp!882237 (and (inv!43723 (c!452348 totalInput!758)) e!1756822))))

(assert (= (and b!2784303 ((_ is Node!10005) (c!452348 totalInput!758))) b!2784520))

(assert (= b!2784521 b!2784522))

(assert (= (and b!2784303 ((_ is Leaf!15239) (c!452348 totalInput!758))) b!2784521))

(declare-fun m!3215139 () Bool)

(assert (=> b!2784520 m!3215139))

(declare-fun m!3215141 () Bool)

(assert (=> b!2784520 m!3215141))

(declare-fun m!3215143 () Bool)

(assert (=> b!2784521 m!3215143))

(assert (=> b!2784303 m!3214965))

(declare-fun b!2784523 () Bool)

(declare-fun e!1756823 () Bool)

(declare-fun tp!882377 () Bool)

(assert (=> b!2784523 (= e!1756823 (and tp_is_empty!14075 tp!882377))))

(assert (=> b!2784299 (= tp!882242 e!1756823)))

(assert (= (and b!2784299 ((_ is Cons!32187) (t!228429 testedSuffix!143))) b!2784523))

(declare-fun b!2784524 () Bool)

(declare-fun e!1756825 () Bool)

(declare-fun tp!882381 () Bool)

(assert (=> b!2784524 (= e!1756825 tp!882381)))

(declare-fun setIsEmpty!23456 () Bool)

(declare-fun setRes!23456 () Bool)

(assert (=> setIsEmpty!23456 setRes!23456))

(declare-fun tp!882380 () Bool)

(declare-fun e!1756826 () Bool)

(declare-fun tp!882378 () Bool)

(declare-fun b!2784525 () Bool)

(assert (=> b!2784525 (= e!1756826 (and tp!882380 (inv!43727 (_2!19204 (_1!19205 (h!37610 (zeroValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))))) e!1756825 tp_is_empty!14075 setRes!23456 tp!882378))))

(declare-fun condSetEmpty!23456 () Bool)

(assert (=> b!2784525 (= condSetEmpty!23456 (= (_2!19205 (h!37610 (zeroValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784526 () Bool)

(declare-fun e!1756824 () Bool)

(declare-fun tp!882382 () Bool)

(assert (=> b!2784526 (= e!1756824 tp!882382)))

(declare-fun tp!882379 () Bool)

(declare-fun setElem!23456 () Context!4698)

(declare-fun setNonEmpty!23456 () Bool)

(assert (=> setNonEmpty!23456 (= setRes!23456 (and tp!882379 (inv!43727 setElem!23456) e!1756824))))

(declare-fun setRest!23456 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23456 (= (_2!19205 (h!37610 (zeroValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23456 true) setRest!23456))))

(assert (=> b!2784298 (= tp!882239 e!1756826)))

(assert (= b!2784525 b!2784524))

(assert (= (and b!2784525 condSetEmpty!23456) setIsEmpty!23456))

(assert (= (and b!2784525 (not condSetEmpty!23456)) setNonEmpty!23456))

(assert (= setNonEmpty!23456 b!2784526))

(assert (= (and b!2784298 ((_ is Cons!32190) (zeroValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) b!2784525))

(declare-fun m!3215145 () Bool)

(assert (=> b!2784525 m!3215145))

(declare-fun m!3215147 () Bool)

(assert (=> setNonEmpty!23456 m!3215147))

(declare-fun b!2784527 () Bool)

(declare-fun e!1756828 () Bool)

(declare-fun tp!882386 () Bool)

(assert (=> b!2784527 (= e!1756828 tp!882386)))

(declare-fun setIsEmpty!23457 () Bool)

(declare-fun setRes!23457 () Bool)

(assert (=> setIsEmpty!23457 setRes!23457))

(declare-fun b!2784528 () Bool)

(declare-fun tp!882385 () Bool)

(declare-fun tp!882383 () Bool)

(declare-fun e!1756829 () Bool)

(assert (=> b!2784528 (= e!1756829 (and tp!882385 (inv!43727 (_2!19204 (_1!19205 (h!37610 (minValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))))) e!1756828 tp_is_empty!14075 setRes!23457 tp!882383))))

(declare-fun condSetEmpty!23457 () Bool)

(assert (=> b!2784528 (= condSetEmpty!23457 (= (_2!19205 (h!37610 (minValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784529 () Bool)

(declare-fun e!1756827 () Bool)

(declare-fun tp!882387 () Bool)

(assert (=> b!2784529 (= e!1756827 tp!882387)))

(declare-fun setElem!23457 () Context!4698)

(declare-fun tp!882384 () Bool)

(declare-fun setNonEmpty!23457 () Bool)

(assert (=> setNonEmpty!23457 (= setRes!23457 (and tp!882384 (inv!43727 setElem!23457) e!1756827))))

(declare-fun setRest!23457 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23457 (= (_2!19205 (h!37610 (minValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23457 true) setRest!23457))))

(assert (=> b!2784298 (= tp!882252 e!1756829)))

(assert (= b!2784528 b!2784527))

(assert (= (and b!2784528 condSetEmpty!23457) setIsEmpty!23457))

(assert (= (and b!2784528 (not condSetEmpty!23457)) setNonEmpty!23457))

(assert (= setNonEmpty!23457 b!2784529))

(assert (= (and b!2784298 ((_ is Cons!32190) (minValue!4126 (v!33797 (underlying!7937 (v!33798 (underlying!7938 (cache!3916 cacheDown!1009)))))))) b!2784528))

(declare-fun m!3215149 () Bool)

(assert (=> b!2784528 m!3215149))

(declare-fun m!3215151 () Bool)

(assert (=> setNonEmpty!23457 m!3215151))

(declare-fun b!2784530 () Bool)

(declare-fun e!1756831 () Bool)

(declare-fun tp!882391 () Bool)

(assert (=> b!2784530 (= e!1756831 tp!882391)))

(declare-fun setIsEmpty!23458 () Bool)

(declare-fun setRes!23458 () Bool)

(assert (=> setIsEmpty!23458 setRes!23458))

(declare-fun e!1756832 () Bool)

(declare-fun b!2784531 () Bool)

(declare-fun tp!882388 () Bool)

(declare-fun tp!882390 () Bool)

(assert (=> b!2784531 (= e!1756832 (and tp!882390 (inv!43727 (_2!19204 (_1!19205 (h!37610 mapDefault!17634)))) e!1756831 tp_is_empty!14075 setRes!23458 tp!882388))))

(declare-fun condSetEmpty!23458 () Bool)

(assert (=> b!2784531 (= condSetEmpty!23458 (= (_2!19205 (h!37610 mapDefault!17634)) ((as const (Array Context!4698 Bool)) false)))))

(declare-fun b!2784532 () Bool)

(declare-fun e!1756830 () Bool)

(declare-fun tp!882392 () Bool)

(assert (=> b!2784532 (= e!1756830 tp!882392)))

(declare-fun tp!882389 () Bool)

(declare-fun setNonEmpty!23458 () Bool)

(declare-fun setElem!23458 () Context!4698)

(assert (=> setNonEmpty!23458 (= setRes!23458 (and tp!882389 (inv!43727 setElem!23458) e!1756830))))

(declare-fun setRest!23458 () (InoxSet Context!4698))

(assert (=> setNonEmpty!23458 (= (_2!19205 (h!37610 mapDefault!17634)) ((_ map or) (store ((as const (Array Context!4698 Bool)) false) setElem!23458 true) setRest!23458))))

(assert (=> b!2784312 (= tp!882245 e!1756832)))

(assert (= b!2784531 b!2784530))

(assert (= (and b!2784531 condSetEmpty!23458) setIsEmpty!23458))

(assert (= (and b!2784531 (not condSetEmpty!23458)) setNonEmpty!23458))

(assert (= setNonEmpty!23458 b!2784532))

(assert (= (and b!2784312 ((_ is Cons!32190) mapDefault!17634)) b!2784531))

(declare-fun m!3215153 () Bool)

(assert (=> b!2784531 m!3215153))

(declare-fun m!3215155 () Bool)

(assert (=> setNonEmpty!23458 m!3215155))

(check-sat (not b!2784532) (not d!810448) (not b!2784380) (not b!2784437) (not b!2784524) (not b!2784522) (not setNonEmpty!23451) (not b!2784440) (not b!2784369) (not b!2784472) (not d!810436) b_and!203421 (not d!810414) (not d!810438) (not b!2784530) (not setNonEmpty!23441) (not d!810434) (not b!2784397) (not b!2784490) b_and!203417 (not b!2784493) (not b!2784459) (not setNonEmpty!23434) (not mapNonEmpty!17637) (not b!2784421) (not b!2784366) (not setNonEmpty!23442) (not d!810450) (not b!2784403) (not b!2784496) (not b!2784418) (not b!2784441) (not b!2784511) (not d!810420) (not d!810460) (not d!810446) (not d!810426) (not b!2784525) (not b!2784409) (not d!810462) (not b!2784526) (not d!810444) (not b!2784529) b_and!203415 (not b!2784436) (not bm!182465) (not b!2784457) (not b!2784473) (not b!2784399) (not b!2784387) (not b!2784408) (not b!2784386) (not b!2784321) (not b!2784528) (not b!2784438) (not bm!182460) (not setNonEmpty!23456) (not b!2784414) (not b!2784435) (not b!2784462) (not b!2784488) (not b!2784339) (not b!2784328) (not b!2784439) (not setNonEmpty!23455) (not b!2784401) b_and!203419 (not b!2784471) (not b!2784491) (not b!2784494) (not bm!182466) (not b!2784506) (not setNonEmpty!23452) (not b!2784424) (not d!810412) (not setNonEmpty!23458) (not mapNonEmpty!17640) (not setNonEmpty!23457) (not d!810452) (not d!810422) (not b!2784520) tp_is_empty!14075 (not b!2784402) (not d!810424) (not b!2784379) (not b!2784423) (not b!2784523) (not setNonEmpty!23450) (not b!2784364) (not d!810456) (not b!2784531) (not b_next!79383) (not b!2784461) (not b_next!79381) (not setNonEmpty!23436) (not b!2784501) (not b!2784330) (not d!810464) (not b!2784492) (not b!2784434) (not b!2784337) (not b!2784303) (not b!2784460) (not b!2784527) (not b!2784489) (not d!810432) (not b_next!79385) (not b!2784338) (not b!2784458) (not d!810430) (not b!2784442) (not b_next!79387) (not b!2784521) (not b!2784495) (not setNonEmpty!23435) (not b!2784398) (not setNonEmpty!23445))
(check-sat b_and!203421 b_and!203417 b_and!203415 b_and!203419 (not b_next!79385) (not b_next!79387) (not b_next!79383) (not b_next!79381))
