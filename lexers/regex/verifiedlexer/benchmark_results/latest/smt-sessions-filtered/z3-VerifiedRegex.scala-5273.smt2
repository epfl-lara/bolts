; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270544 () Bool)

(assert start!270544)

(declare-fun b!2798279 () Bool)

(declare-fun b_free!79317 () Bool)

(declare-fun b_next!80021 () Bool)

(assert (=> b!2798279 (= b_free!79317 (not b_next!80021))))

(declare-fun tp!891117 () Bool)

(declare-fun b_and!204055 () Bool)

(assert (=> b!2798279 (= tp!891117 b_and!204055)))

(declare-fun b!2798293 () Bool)

(declare-fun b_free!79319 () Bool)

(declare-fun b_next!80023 () Bool)

(assert (=> b!2798293 (= b_free!79319 (not b_next!80023))))

(declare-fun tp!891111 () Bool)

(declare-fun b_and!204057 () Bool)

(assert (=> b!2798293 (= tp!891111 b_and!204057)))

(declare-fun b!2798275 () Bool)

(declare-fun b_free!79321 () Bool)

(declare-fun b_next!80025 () Bool)

(assert (=> b!2798275 (= b_free!79321 (not b_next!80025))))

(declare-fun tp!891118 () Bool)

(declare-fun b_and!204059 () Bool)

(assert (=> b!2798275 (= tp!891118 b_and!204059)))

(declare-fun b!2798272 () Bool)

(declare-fun b_free!79323 () Bool)

(declare-fun b_next!80027 () Bool)

(assert (=> b!2798272 (= b_free!79323 (not b_next!80027))))

(declare-fun tp!891113 () Bool)

(declare-fun b_and!204061 () Bool)

(assert (=> b!2798272 (= tp!891113 b_and!204061)))

(declare-fun b!2798268 () Bool)

(declare-fun e!1767763 () Bool)

(declare-datatypes ((C!16580 0))(
  ( (C!16581 (val!10224 Int)) )
))
(declare-datatypes ((List!32610 0))(
  ( (Nil!32510) (Cons!32510 (h!37930 C!16580) (t!228770 List!32610)) )
))
(declare-datatypes ((IArray!20147 0))(
  ( (IArray!20148 (innerList!10131 List!32610)) )
))
(declare-datatypes ((Conc!10071 0))(
  ( (Node!10071 (left!24574 Conc!10071) (right!24904 Conc!10071) (csize!20372 Int) (cheight!10282 Int)) (Leaf!15345 (xs!13183 IArray!20147) (csize!20373 Int)) (Empty!10071) )
))
(declare-datatypes ((BalanceConc!19756 0))(
  ( (BalanceConc!19757 (c!453797 Conc!10071)) )
))
(declare-fun totalInput!758 () BalanceConc!19756)

(declare-fun tp!891115 () Bool)

(declare-fun inv!44155 (Conc!10071) Bool)

(assert (=> b!2798268 (= e!1767763 (and (inv!44155 (c!453797 totalInput!758)) tp!891115))))

(declare-fun b!2798269 () Bool)

(declare-fun e!1767750 () Bool)

(declare-fun e!1767770 () Bool)

(assert (=> b!2798269 (= e!1767750 e!1767770)))

(declare-fun b!2798270 () Bool)

(declare-fun e!1767754 () Bool)

(declare-fun e!1767752 () Bool)

(declare-datatypes ((array!14270 0))(
  ( (array!14271 (arr!6358 (Array (_ BitVec 32) (_ BitVec 64))) (size!25362 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8211 0))(
  ( (ElementMatch!8211 (c!453798 C!16580)) (Concat!13299 (regOne!16934 Regex!8211) (regTwo!16934 Regex!8211)) (EmptyExpr!8211) (Star!8211 (reg!8540 Regex!8211)) (EmptyLang!8211) (Union!8211 (regOne!16935 Regex!8211) (regTwo!16935 Regex!8211)) )
))
(declare-datatypes ((List!32611 0))(
  ( (Nil!32511) (Cons!32511 (h!37931 Regex!8211) (t!228771 List!32611)) )
))
(declare-datatypes ((Context!4858 0))(
  ( (Context!4859 (exprs!2929 List!32611)) )
))
(declare-datatypes ((tuple3!5156 0))(
  ( (tuple3!5157 (_1!19594 Regex!8211) (_2!19594 Context!4858) (_3!3048 C!16580)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33092 0))(
  ( (tuple2!33093 (_1!19595 tuple3!5156) (_2!19595 (InoxSet Context!4858))) )
))
(declare-datatypes ((List!32612 0))(
  ( (Nil!32512) (Cons!32512 (h!37932 tuple2!33092) (t!228772 List!32612)) )
))
(declare-datatypes ((array!14272 0))(
  ( (array!14273 (arr!6359 (Array (_ BitVec 32) List!32612)) (size!25363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8028 0))(
  ( (LongMapFixedSize!8029 (defaultEntry!4399 Int) (mask!9856 (_ BitVec 32)) (extraKeys!4263 (_ BitVec 32)) (zeroValue!4273 List!32612) (minValue!4273 List!32612) (_size!8071 (_ BitVec 32)) (_keys!4314 array!14270) (_values!4295 array!14272) (_vacant!4075 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15865 0))(
  ( (Cell!15866 (v!34111 LongMapFixedSize!8028)) )
))
(declare-datatypes ((MutLongMap!4014 0))(
  ( (LongMap!4014 (underlying!8231 Cell!15865)) (MutLongMapExt!4013 (__x!21692 Int)) )
))
(declare-fun lt!999954 () MutLongMap!4014)

(get-info :version)

(assert (=> b!2798270 (= e!1767754 (and e!1767752 ((_ is LongMap!4014) lt!999954)))))

(declare-datatypes ((Cell!15867 0))(
  ( (Cell!15868 (v!34112 MutLongMap!4014)) )
))
(declare-datatypes ((Hashable!3930 0))(
  ( (HashableExt!3929 (__x!21693 Int)) )
))
(declare-datatypes ((MutableMap!3920 0))(
  ( (MutableMapExt!3919 (__x!21694 Int)) (HashMap!3920 (underlying!8232 Cell!15867) (hashF!5962 Hashable!3930) (_size!8072 (_ BitVec 32)) (defaultValue!4091 Int)) )
))
(declare-datatypes ((CacheDown!2748 0))(
  ( (CacheDown!2749 (cache!4063 MutableMap!3920)) )
))
(declare-fun cacheDown!1009 () CacheDown!2748)

(assert (=> b!2798270 (= lt!999954 (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))))

(declare-fun b!2798271 () Bool)

(declare-fun e!1767764 () Bool)

(declare-fun e!1767758 () Bool)

(assert (=> b!2798271 (= e!1767764 e!1767758)))

(declare-fun setIsEmpty!24368 () Bool)

(declare-fun setRes!24368 () Bool)

(assert (=> setIsEmpty!24368 setRes!24368))

(declare-fun e!1767766 () Bool)

(assert (=> b!2798272 (= e!1767766 (and e!1767754 tp!891113))))

(declare-fun b!2798274 () Bool)

(assert (=> b!2798274 (= e!1767752 e!1767764)))

(declare-fun tp!891119 () Bool)

(declare-fun tp!891125 () Bool)

(declare-fun e!1767759 () Bool)

(declare-fun array_inv!4550 (array!14270) Bool)

(declare-fun array_inv!4551 (array!14272) Bool)

(assert (=> b!2798275 (= e!1767758 (and tp!891118 tp!891119 tp!891125 (array_inv!4550 (_keys!4314 (v!34111 (underlying!8231 (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))))) (array_inv!4551 (_values!4295 (v!34111 (underlying!8231 (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))))) e!1767759))))

(declare-fun b!2798276 () Bool)

(declare-fun e!1767767 () Bool)

(declare-fun e!1767746 () Bool)

(assert (=> b!2798276 (= e!1767767 e!1767746)))

(declare-fun res!1166358 () Bool)

(assert (=> b!2798276 (=> (not res!1166358) (not e!1767746))))

(declare-fun testedPSize!143 () Int)

(declare-fun lt!999956 () Int)

(assert (=> b!2798276 (= res!1166358 (= testedPSize!143 lt!999956))))

(declare-fun testedP!183 () List!32610)

(declare-fun size!25364 (List!32610) Int)

(assert (=> b!2798276 (= lt!999956 (size!25364 testedP!183))))

(declare-fun b!2798277 () Bool)

(declare-fun e!1767771 () Bool)

(declare-fun e!1767756 () Bool)

(assert (=> b!2798277 (= e!1767771 e!1767756)))

(declare-fun res!1166349 () Bool)

(assert (=> b!2798277 (=> res!1166349 e!1767756)))

(declare-fun z!3684 () (InoxSet Context!4858))

(declare-fun nullableZipper!652 ((InoxSet Context!4858)) Bool)

(assert (=> b!2798277 (= res!1166349 (not (nullableZipper!652 z!3684)))))

(declare-fun lt!999944 () List!32610)

(declare-fun lt!999957 () C!16580)

(declare-fun lt!999939 () List!32610)

(declare-fun ++!8016 (List!32610 List!32610) List!32610)

(assert (=> b!2798277 (= (++!8016 (++!8016 testedP!183 (Cons!32510 lt!999957 Nil!32510)) lt!999939) lt!999944)))

(declare-datatypes ((Unit!46632 0))(
  ( (Unit!46633) )
))
(declare-fun lt!999949 () Unit!46632)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!888 (List!32610 C!16580 List!32610 List!32610) Unit!46632)

(assert (=> b!2798277 (= lt!999949 (lemmaMoveElementToOtherListKeepsConcatEq!888 testedP!183 lt!999957 lt!999939 lt!999944))))

(declare-fun testedSuffix!143 () List!32610)

(declare-fun tail!4424 (List!32610) List!32610)

(assert (=> b!2798277 (= lt!999939 (tail!4424 testedSuffix!143))))

(declare-fun lt!999953 () List!32610)

(declare-fun isPrefix!2630 (List!32610 List!32610) Bool)

(declare-fun head!6196 (List!32610) C!16580)

(assert (=> b!2798277 (isPrefix!2630 (++!8016 testedP!183 (Cons!32510 (head!6196 lt!999953) Nil!32510)) lt!999944)))

(declare-fun lt!999952 () Unit!46632)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!480 (List!32610 List!32610) Unit!46632)

(assert (=> b!2798277 (= lt!999952 (lemmaAddHeadSuffixToPrefixStillPrefix!480 testedP!183 lt!999944))))

(declare-fun b!2798278 () Bool)

(declare-fun e!1767757 () Bool)

(declare-fun e!1767762 () Bool)

(assert (=> b!2798278 (= e!1767757 e!1767762)))

(declare-fun res!1166355 () Bool)

(assert (=> b!2798278 (=> res!1166355 e!1767762)))

(declare-fun lt!999955 () List!32610)

(declare-fun lt!999960 () List!32610)

(assert (=> b!2798278 (= res!1166355 (not (= (++!8016 lt!999960 lt!999955) lt!999944)))))

(declare-datatypes ((tuple2!33094 0))(
  ( (tuple2!33095 (_1!19596 BalanceConc!19756) (_2!19596 BalanceConc!19756)) )
))
(declare-fun lt!999959 () tuple2!33094)

(declare-fun list!12207 (BalanceConc!19756) List!32610)

(assert (=> b!2798278 (= lt!999955 (list!12207 (_2!19596 lt!999959)))))

(assert (=> b!2798278 (= lt!999960 (list!12207 (_1!19596 lt!999959)))))

(declare-fun splitAt!189 (BalanceConc!19756 Int) tuple2!33094)

(assert (=> b!2798278 (= lt!999959 (splitAt!189 totalInput!758 testedPSize!143))))

(declare-fun e!1767760 () Bool)

(assert (=> b!2798279 (= e!1767770 (and e!1767760 tp!891117))))

(declare-fun b!2798280 () Bool)

(declare-fun e!1767751 () Bool)

(assert (=> b!2798280 (= e!1767751 e!1767771)))

(declare-fun res!1166357 () Bool)

(assert (=> b!2798280 (=> res!1166357 e!1767771)))

(declare-fun lt!999938 () Int)

(assert (=> b!2798280 (= res!1166357 (>= lt!999956 lt!999938))))

(declare-fun lt!999951 () Unit!46632)

(declare-fun e!1767768 () Unit!46632)

(assert (=> b!2798280 (= lt!999951 e!1767768)))

(declare-fun c!453796 () Bool)

(assert (=> b!2798280 (= c!453796 (= lt!999956 lt!999938))))

(assert (=> b!2798280 (<= lt!999956 (size!25364 lt!999944))))

(declare-fun lt!999946 () Unit!46632)

(declare-fun lemmaIsPrefixThenSmallerEqSize!290 (List!32610 List!32610) Unit!46632)

(assert (=> b!2798280 (= lt!999946 (lemmaIsPrefixThenSmallerEqSize!290 testedP!183 lt!999944))))

(declare-fun b!2798281 () Bool)

(assert (=> b!2798281 (= e!1767762 e!1767751)))

(declare-fun res!1166354 () Bool)

(assert (=> b!2798281 (=> res!1166354 e!1767751)))

(assert (=> b!2798281 (= res!1166354 (not (= lt!999957 (head!6196 testedSuffix!143))))))

(declare-fun apply!7591 (BalanceConc!19756 Int) C!16580)

(assert (=> b!2798281 (= lt!999957 (apply!7591 totalInput!758 testedPSize!143))))

(declare-fun drop!1744 (List!32610 Int) List!32610)

(declare-fun apply!7592 (List!32610 Int) C!16580)

(assert (=> b!2798281 (= (head!6196 (drop!1744 lt!999944 testedPSize!143)) (apply!7592 lt!999944 testedPSize!143))))

(declare-fun lt!999950 () Unit!46632)

(declare-fun lemmaDropApply!948 (List!32610 Int) Unit!46632)

(assert (=> b!2798281 (= lt!999950 (lemmaDropApply!948 lt!999944 testedPSize!143))))

(assert (=> b!2798281 (not (or (not (= lt!999960 testedP!183)) (not (= lt!999955 testedSuffix!143))))))

(declare-fun lt!999943 () Unit!46632)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!378 (List!32610 List!32610 List!32610 List!32610) Unit!46632)

(assert (=> b!2798281 (= lt!999943 (lemmaConcatSameAndSameSizesThenSameLists!378 lt!999960 lt!999955 testedP!183 testedSuffix!143))))

(declare-fun b!2798282 () Bool)

(declare-fun e!1767761 () Bool)

(declare-fun e!1767769 () Bool)

(assert (=> b!2798282 (= e!1767761 e!1767769)))

(declare-fun b!2798283 () Bool)

(declare-fun e!1767744 () Bool)

(declare-datatypes ((tuple2!33096 0))(
  ( (tuple2!33097 (_1!19597 Context!4858) (_2!19597 C!16580)) )
))
(declare-datatypes ((tuple2!33098 0))(
  ( (tuple2!33099 (_1!19598 tuple2!33096) (_2!19598 (InoxSet Context!4858))) )
))
(declare-datatypes ((List!32613 0))(
  ( (Nil!32513) (Cons!32513 (h!37933 tuple2!33098) (t!228773 List!32613)) )
))
(declare-datatypes ((array!14274 0))(
  ( (array!14275 (arr!6360 (Array (_ BitVec 32) List!32613)) (size!25365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8030 0))(
  ( (LongMapFixedSize!8031 (defaultEntry!4400 Int) (mask!9857 (_ BitVec 32)) (extraKeys!4264 (_ BitVec 32)) (zeroValue!4274 List!32613) (minValue!4274 List!32613) (_size!8073 (_ BitVec 32)) (_keys!4315 array!14270) (_values!4296 array!14274) (_vacant!4076 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15869 0))(
  ( (Cell!15870 (v!34113 LongMapFixedSize!8030)) )
))
(declare-datatypes ((MutLongMap!4015 0))(
  ( (LongMap!4015 (underlying!8233 Cell!15869)) (MutLongMapExt!4014 (__x!21695 Int)) )
))
(declare-fun lt!999945 () MutLongMap!4015)

(assert (=> b!2798283 (= e!1767760 (and e!1767744 ((_ is LongMap!4015) lt!999945)))))

(declare-datatypes ((Hashable!3931 0))(
  ( (HashableExt!3930 (__x!21696 Int)) )
))
(declare-datatypes ((Cell!15871 0))(
  ( (Cell!15872 (v!34114 MutLongMap!4015)) )
))
(declare-datatypes ((MutableMap!3921 0))(
  ( (MutableMapExt!3920 (__x!21697 Int)) (HashMap!3921 (underlying!8234 Cell!15871) (hashF!5963 Hashable!3931) (_size!8074 (_ BitVec 32)) (defaultValue!4092 Int)) )
))
(declare-datatypes ((CacheUp!2624 0))(
  ( (CacheUp!2625 (cache!4064 MutableMap!3921)) )
))
(declare-fun cacheUp!890 () CacheUp!2624)

(assert (=> b!2798283 (= lt!999945 (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))))

(declare-fun b!2798284 () Bool)

(declare-fun res!1166359 () Bool)

(declare-fun e!1767753 () Bool)

(assert (=> b!2798284 (=> (not res!1166359) (not e!1767753))))

(declare-fun valid!3141 (CacheUp!2624) Bool)

(assert (=> b!2798284 (= res!1166359 (valid!3141 cacheUp!890))))

(declare-fun b!2798285 () Bool)

(declare-fun Unit!46634 () Unit!46632)

(assert (=> b!2798285 (= e!1767768 Unit!46634)))

(declare-fun b!2798286 () Bool)

(declare-fun res!1166356 () Bool)

(assert (=> b!2798286 (=> res!1166356 e!1767762)))

(declare-fun size!25366 (BalanceConc!19756) Int)

(assert (=> b!2798286 (= res!1166356 (not (= (size!25366 (_1!19596 lt!999959)) testedPSize!143)))))

(declare-fun b!2798287 () Bool)

(declare-fun res!1166350 () Bool)

(assert (=> b!2798287 (=> res!1166350 e!1767757)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2798287 (= res!1166350 (= testedPSize!143 totalInputSize!205))))

(declare-fun setNonEmpty!24368 () Bool)

(declare-fun tp!891124 () Bool)

(declare-fun e!1767745 () Bool)

(declare-fun setElem!24368 () Context!4858)

(declare-fun inv!44156 (Context!4858) Bool)

(assert (=> setNonEmpty!24368 (= setRes!24368 (and tp!891124 (inv!44156 setElem!24368) e!1767745))))

(declare-fun setRest!24368 () (InoxSet Context!4858))

(assert (=> setNonEmpty!24368 (= z!3684 ((_ map or) (store ((as const (Array Context!4858 Bool)) false) setElem!24368 true) setRest!24368))))

(declare-fun b!2798288 () Bool)

(declare-fun e!1767747 () Bool)

(declare-fun tp_is_empty!14235 () Bool)

(declare-fun tp!891123 () Bool)

(assert (=> b!2798288 (= e!1767747 (and tp_is_empty!14235 tp!891123))))

(declare-fun b!2798289 () Bool)

(declare-fun e!1767749 () Bool)

(assert (=> b!2798289 (= e!1767749 e!1767757)))

(declare-fun res!1166352 () Bool)

(assert (=> b!2798289 (=> res!1166352 e!1767757)))

(declare-fun lostCauseZipper!502 ((InoxSet Context!4858)) Bool)

(assert (=> b!2798289 (= res!1166352 (lostCauseZipper!502 z!3684))))

(assert (=> b!2798289 (and (= testedSuffix!143 lt!999953) (= lt!999953 testedSuffix!143))))

(declare-fun lt!999958 () Unit!46632)

(declare-fun lemmaSamePrefixThenSameSuffix!1205 (List!32610 List!32610 List!32610 List!32610 List!32610) Unit!46632)

(assert (=> b!2798289 (= lt!999958 (lemmaSamePrefixThenSameSuffix!1205 testedP!183 testedSuffix!143 testedP!183 lt!999953 lt!999944))))

(declare-fun getSuffix!1307 (List!32610 List!32610) List!32610)

(assert (=> b!2798289 (= lt!999953 (getSuffix!1307 lt!999944 testedP!183))))

(declare-fun b!2798290 () Bool)

(assert (=> b!2798290 (= e!1767744 e!1767761)))

(declare-fun b!2798291 () Bool)

(assert (=> b!2798291 (= e!1767746 e!1767753)))

(declare-fun res!1166347 () Bool)

(assert (=> b!2798291 (=> (not res!1166347) (not e!1767753))))

(assert (=> b!2798291 (= res!1166347 (= totalInputSize!205 lt!999938))))

(assert (=> b!2798291 (= lt!999938 (size!25366 totalInput!758))))

(declare-fun b!2798292 () Bool)

(declare-fun res!1166353 () Bool)

(assert (=> b!2798292 (=> (not res!1166353) (not e!1767753))))

(declare-fun valid!3142 (CacheDown!2748) Bool)

(assert (=> b!2798292 (= res!1166353 (valid!3142 cacheDown!1009))))

(declare-fun tp!891112 () Bool)

(declare-fun tp!891126 () Bool)

(declare-fun e!1767765 () Bool)

(declare-fun array_inv!4552 (array!14274) Bool)

(assert (=> b!2798293 (= e!1767769 (and tp!891111 tp!891112 tp!891126 (array_inv!4550 (_keys!4315 (v!34113 (underlying!8233 (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))))) (array_inv!4552 (_values!4296 (v!34113 (underlying!8233 (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))))) e!1767765))))

(declare-fun b!2798294 () Bool)

(declare-fun tp!891121 () Bool)

(declare-fun mapRes!18250 () Bool)

(assert (=> b!2798294 (= e!1767759 (and tp!891121 mapRes!18250))))

(declare-fun condMapEmpty!18249 () Bool)

(declare-fun mapDefault!18250 () List!32612)

(assert (=> b!2798294 (= condMapEmpty!18249 (= (arr!6359 (_values!4295 (v!34111 (underlying!8231 (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32612)) mapDefault!18250)))))

(declare-fun mapIsEmpty!18249 () Bool)

(declare-fun mapRes!18249 () Bool)

(assert (=> mapIsEmpty!18249 mapRes!18249))

(declare-fun b!2798273 () Bool)

(assert (=> b!2798273 (= e!1767753 (not e!1767749))))

(declare-fun res!1166348 () Bool)

(assert (=> b!2798273 (=> res!1166348 e!1767749)))

(assert (=> b!2798273 (= res!1166348 (not (isPrefix!2630 testedP!183 lt!999944)))))

(declare-fun lt!999941 () List!32610)

(assert (=> b!2798273 (isPrefix!2630 testedP!183 lt!999941)))

(declare-fun lt!999940 () Unit!46632)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1738 (List!32610 List!32610) Unit!46632)

(assert (=> b!2798273 (= lt!999940 (lemmaConcatTwoListThenFirstIsPrefix!1738 testedP!183 testedSuffix!143))))

(declare-fun res!1166351 () Bool)

(assert (=> start!270544 (=> (not res!1166351) (not e!1767767))))

(assert (=> start!270544 (= res!1166351 (= lt!999941 lt!999944))))

(assert (=> start!270544 (= lt!999944 (list!12207 totalInput!758))))

(assert (=> start!270544 (= lt!999941 (++!8016 testedP!183 testedSuffix!143))))

(assert (=> start!270544 e!1767767))

(declare-fun inv!44157 (BalanceConc!19756) Bool)

(assert (=> start!270544 (and (inv!44157 totalInput!758) e!1767763)))

(declare-fun condSetEmpty!24368 () Bool)

(assert (=> start!270544 (= condSetEmpty!24368 (= z!3684 ((as const (Array Context!4858 Bool)) false)))))

(assert (=> start!270544 setRes!24368))

(assert (=> start!270544 true))

(declare-fun e!1767772 () Bool)

(assert (=> start!270544 e!1767772))

(assert (=> start!270544 e!1767747))

(declare-fun e!1767755 () Bool)

(declare-fun inv!44158 (CacheDown!2748) Bool)

(assert (=> start!270544 (and (inv!44158 cacheDown!1009) e!1767755)))

(declare-fun inv!44159 (CacheUp!2624) Bool)

(assert (=> start!270544 (and (inv!44159 cacheUp!890) e!1767750)))

(declare-fun b!2798295 () Bool)

(declare-fun tp!891116 () Bool)

(assert (=> b!2798295 (= e!1767772 (and tp_is_empty!14235 tp!891116))))

(declare-fun b!2798296 () Bool)

(declare-fun tp!891128 () Bool)

(assert (=> b!2798296 (= e!1767745 tp!891128)))

(declare-fun mapNonEmpty!18249 () Bool)

(declare-fun tp!891120 () Bool)

(declare-fun tp!891127 () Bool)

(assert (=> mapNonEmpty!18249 (= mapRes!18250 (and tp!891120 tp!891127))))

(declare-fun mapValue!18250 () List!32612)

(declare-fun mapKey!18249 () (_ BitVec 32))

(declare-fun mapRest!18250 () (Array (_ BitVec 32) List!32612))

(assert (=> mapNonEmpty!18249 (= (arr!6359 (_values!4295 (v!34111 (underlying!8231 (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))))) (store mapRest!18250 mapKey!18249 mapValue!18250))))

(declare-fun mapIsEmpty!18250 () Bool)

(assert (=> mapIsEmpty!18250 mapRes!18250))

(declare-fun b!2798297 () Bool)

(declare-fun Unit!46635 () Unit!46632)

(assert (=> b!2798297 (= e!1767768 Unit!46635)))

(declare-fun lt!999948 () Unit!46632)

(declare-fun lemmaIsPrefixRefl!1714 (List!32610 List!32610) Unit!46632)

(assert (=> b!2798297 (= lt!999948 (lemmaIsPrefixRefl!1714 lt!999944 lt!999944))))

(assert (=> b!2798297 (isPrefix!2630 lt!999944 lt!999944)))

(declare-fun lt!999942 () Unit!46632)

(declare-fun lemmaIsPrefixSameLengthThenSameList!490 (List!32610 List!32610 List!32610) Unit!46632)

(assert (=> b!2798297 (= lt!999942 (lemmaIsPrefixSameLengthThenSameList!490 lt!999944 testedP!183 lt!999944))))

(assert (=> b!2798297 false))

(declare-fun b!2798298 () Bool)

(assert (=> b!2798298 (= e!1767756 true)))

(declare-datatypes ((tuple3!5158 0))(
  ( (tuple3!5159 (_1!19599 (InoxSet Context!4858)) (_2!19599 CacheUp!2624) (_3!3049 CacheDown!2748)) )
))
(declare-fun lt!999947 () tuple3!5158)

(declare-fun derivationStepZipperMem!109 ((InoxSet Context!4858) C!16580 CacheUp!2624 CacheDown!2748) tuple3!5158)

(assert (=> b!2798298 (= lt!999947 (derivationStepZipperMem!109 z!3684 lt!999957 cacheUp!890 cacheDown!1009))))

(declare-fun mapNonEmpty!18250 () Bool)

(declare-fun tp!891122 () Bool)

(declare-fun tp!891129 () Bool)

(assert (=> mapNonEmpty!18250 (= mapRes!18249 (and tp!891122 tp!891129))))

(declare-fun mapRest!18249 () (Array (_ BitVec 32) List!32613))

(declare-fun mapValue!18249 () List!32613)

(declare-fun mapKey!18250 () (_ BitVec 32))

(assert (=> mapNonEmpty!18250 (= (arr!6360 (_values!4296 (v!34113 (underlying!8233 (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))))) (store mapRest!18249 mapKey!18250 mapValue!18249))))

(declare-fun b!2798299 () Bool)

(assert (=> b!2798299 (= e!1767755 e!1767766)))

(declare-fun b!2798300 () Bool)

(declare-fun tp!891114 () Bool)

(assert (=> b!2798300 (= e!1767765 (and tp!891114 mapRes!18249))))

(declare-fun condMapEmpty!18250 () Bool)

(declare-fun mapDefault!18249 () List!32613)

(assert (=> b!2798300 (= condMapEmpty!18250 (= (arr!6360 (_values!4296 (v!34113 (underlying!8233 (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32613)) mapDefault!18249)))))

(assert (= (and start!270544 res!1166351) b!2798276))

(assert (= (and b!2798276 res!1166358) b!2798291))

(assert (= (and b!2798291 res!1166347) b!2798284))

(assert (= (and b!2798284 res!1166359) b!2798292))

(assert (= (and b!2798292 res!1166353) b!2798273))

(assert (= (and b!2798273 (not res!1166348)) b!2798289))

(assert (= (and b!2798289 (not res!1166352)) b!2798287))

(assert (= (and b!2798287 (not res!1166350)) b!2798278))

(assert (= (and b!2798278 (not res!1166355)) b!2798286))

(assert (= (and b!2798286 (not res!1166356)) b!2798281))

(assert (= (and b!2798281 (not res!1166354)) b!2798280))

(assert (= (and b!2798280 c!453796) b!2798297))

(assert (= (and b!2798280 (not c!453796)) b!2798285))

(assert (= (and b!2798280 (not res!1166357)) b!2798277))

(assert (= (and b!2798277 (not res!1166349)) b!2798298))

(assert (= start!270544 b!2798268))

(assert (= (and start!270544 condSetEmpty!24368) setIsEmpty!24368))

(assert (= (and start!270544 (not condSetEmpty!24368)) setNonEmpty!24368))

(assert (= setNonEmpty!24368 b!2798296))

(assert (= (and start!270544 ((_ is Cons!32510) testedP!183)) b!2798295))

(assert (= (and start!270544 ((_ is Cons!32510) testedSuffix!143)) b!2798288))

(assert (= (and b!2798294 condMapEmpty!18249) mapIsEmpty!18250))

(assert (= (and b!2798294 (not condMapEmpty!18249)) mapNonEmpty!18249))

(assert (= b!2798275 b!2798294))

(assert (= b!2798271 b!2798275))

(assert (= b!2798274 b!2798271))

(assert (= (and b!2798270 ((_ is LongMap!4014) (v!34112 (underlying!8232 (cache!4063 cacheDown!1009))))) b!2798274))

(assert (= b!2798272 b!2798270))

(assert (= (and b!2798299 ((_ is HashMap!3920) (cache!4063 cacheDown!1009))) b!2798272))

(assert (= start!270544 b!2798299))

(assert (= (and b!2798300 condMapEmpty!18250) mapIsEmpty!18249))

(assert (= (and b!2798300 (not condMapEmpty!18250)) mapNonEmpty!18250))

(assert (= b!2798293 b!2798300))

(assert (= b!2798282 b!2798293))

(assert (= b!2798290 b!2798282))

(assert (= (and b!2798283 ((_ is LongMap!4015) (v!34114 (underlying!8234 (cache!4064 cacheUp!890))))) b!2798290))

(assert (= b!2798279 b!2798283))

(assert (= (and b!2798269 ((_ is HashMap!3921) (cache!4064 cacheUp!890))) b!2798279))

(assert (= start!270544 b!2798269))

(declare-fun m!3227705 () Bool)

(assert (=> b!2798281 m!3227705))

(declare-fun m!3227707 () Bool)

(assert (=> b!2798281 m!3227707))

(declare-fun m!3227709 () Bool)

(assert (=> b!2798281 m!3227709))

(declare-fun m!3227711 () Bool)

(assert (=> b!2798281 m!3227711))

(assert (=> b!2798281 m!3227709))

(declare-fun m!3227713 () Bool)

(assert (=> b!2798281 m!3227713))

(declare-fun m!3227715 () Bool)

(assert (=> b!2798281 m!3227715))

(declare-fun m!3227717 () Bool)

(assert (=> b!2798281 m!3227717))

(declare-fun m!3227719 () Bool)

(assert (=> b!2798284 m!3227719))

(declare-fun m!3227721 () Bool)

(assert (=> b!2798268 m!3227721))

(declare-fun m!3227723 () Bool)

(assert (=> b!2798276 m!3227723))

(declare-fun m!3227725 () Bool)

(assert (=> mapNonEmpty!18249 m!3227725))

(declare-fun m!3227727 () Bool)

(assert (=> start!270544 m!3227727))

(declare-fun m!3227729 () Bool)

(assert (=> start!270544 m!3227729))

(declare-fun m!3227731 () Bool)

(assert (=> start!270544 m!3227731))

(declare-fun m!3227733 () Bool)

(assert (=> start!270544 m!3227733))

(declare-fun m!3227735 () Bool)

(assert (=> start!270544 m!3227735))

(declare-fun m!3227737 () Bool)

(assert (=> b!2798277 m!3227737))

(declare-fun m!3227739 () Bool)

(assert (=> b!2798277 m!3227739))

(declare-fun m!3227741 () Bool)

(assert (=> b!2798277 m!3227741))

(declare-fun m!3227743 () Bool)

(assert (=> b!2798277 m!3227743))

(declare-fun m!3227745 () Bool)

(assert (=> b!2798277 m!3227745))

(declare-fun m!3227747 () Bool)

(assert (=> b!2798277 m!3227747))

(assert (=> b!2798277 m!3227741))

(declare-fun m!3227749 () Bool)

(assert (=> b!2798277 m!3227749))

(declare-fun m!3227751 () Bool)

(assert (=> b!2798277 m!3227751))

(assert (=> b!2798277 m!3227737))

(declare-fun m!3227753 () Bool)

(assert (=> b!2798277 m!3227753))

(declare-fun m!3227755 () Bool)

(assert (=> b!2798278 m!3227755))

(declare-fun m!3227757 () Bool)

(assert (=> b!2798278 m!3227757))

(declare-fun m!3227759 () Bool)

(assert (=> b!2798278 m!3227759))

(declare-fun m!3227761 () Bool)

(assert (=> b!2798278 m!3227761))

(declare-fun m!3227763 () Bool)

(assert (=> b!2798291 m!3227763))

(declare-fun m!3227765 () Bool)

(assert (=> b!2798298 m!3227765))

(declare-fun m!3227767 () Bool)

(assert (=> b!2798275 m!3227767))

(declare-fun m!3227769 () Bool)

(assert (=> b!2798275 m!3227769))

(declare-fun m!3227771 () Bool)

(assert (=> b!2798289 m!3227771))

(declare-fun m!3227773 () Bool)

(assert (=> b!2798289 m!3227773))

(declare-fun m!3227775 () Bool)

(assert (=> b!2798289 m!3227775))

(declare-fun m!3227777 () Bool)

(assert (=> b!2798293 m!3227777))

(declare-fun m!3227779 () Bool)

(assert (=> b!2798293 m!3227779))

(declare-fun m!3227781 () Bool)

(assert (=> b!2798273 m!3227781))

(declare-fun m!3227783 () Bool)

(assert (=> b!2798273 m!3227783))

(declare-fun m!3227785 () Bool)

(assert (=> b!2798273 m!3227785))

(declare-fun m!3227787 () Bool)

(assert (=> b!2798280 m!3227787))

(declare-fun m!3227789 () Bool)

(assert (=> b!2798280 m!3227789))

(declare-fun m!3227791 () Bool)

(assert (=> b!2798297 m!3227791))

(declare-fun m!3227793 () Bool)

(assert (=> b!2798297 m!3227793))

(declare-fun m!3227795 () Bool)

(assert (=> b!2798297 m!3227795))

(declare-fun m!3227797 () Bool)

(assert (=> b!2798286 m!3227797))

(declare-fun m!3227799 () Bool)

(assert (=> b!2798292 m!3227799))

(declare-fun m!3227801 () Bool)

(assert (=> mapNonEmpty!18250 m!3227801))

(declare-fun m!3227803 () Bool)

(assert (=> setNonEmpty!24368 m!3227803))

(check-sat (not b!2798300) (not mapNonEmpty!18249) (not b!2798286) (not b!2798291) (not b!2798293) (not b!2798275) (not b!2798268) (not b!2798280) (not b!2798276) (not b!2798284) tp_is_empty!14235 (not setNonEmpty!24368) b_and!204059 (not b!2798277) (not b_next!80027) b_and!204057 (not b_next!80021) (not b!2798297) (not b!2798273) (not b!2798278) (not start!270544) (not b!2798295) (not b_next!80025) b_and!204055 (not mapNonEmpty!18250) (not b_next!80023) (not b!2798288) (not b!2798298) (not b!2798281) b_and!204061 (not b!2798289) (not b!2798292) (not b!2798296) (not b!2798294))
(check-sat (not b_next!80021) (not b_next!80023) b_and!204061 b_and!204059 (not b_next!80027) b_and!204057 (not b_next!80025) b_and!204055)
