; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207662 () Bool)

(assert start!207662)

(declare-fun b!2137191 () Bool)

(declare-fun b_free!62717 () Bool)

(declare-fun b_next!63421 () Bool)

(assert (=> b!2137191 (= b_free!62717 (not b_next!63421))))

(declare-fun tp!659352 () Bool)

(declare-fun b_and!172297 () Bool)

(assert (=> b!2137191 (= tp!659352 b_and!172297)))

(declare-fun b!2137172 () Bool)

(declare-fun b_free!62719 () Bool)

(declare-fun b_next!63423 () Bool)

(assert (=> b!2137172 (= b_free!62719 (not b_next!63423))))

(declare-fun tp!659337 () Bool)

(declare-fun b_and!172299 () Bool)

(assert (=> b!2137172 (= tp!659337 b_and!172299)))

(declare-fun b!2137177 () Bool)

(declare-fun b_free!62721 () Bool)

(declare-fun b_next!63425 () Bool)

(assert (=> b!2137177 (= b_free!62721 (not b_next!63425))))

(declare-fun tp!659355 () Bool)

(declare-fun b_and!172301 () Bool)

(assert (=> b!2137177 (= tp!659355 b_and!172301)))

(declare-fun b!2137187 () Bool)

(declare-fun b_free!62723 () Bool)

(declare-fun b_next!63427 () Bool)

(assert (=> b!2137187 (= b_free!62723 (not b_next!63427))))

(declare-fun tp!659336 () Bool)

(declare-fun b_and!172303 () Bool)

(assert (=> b!2137187 (= tp!659336 b_and!172303)))

(declare-fun b!2137165 () Bool)

(declare-fun b_free!62725 () Bool)

(declare-fun b_next!63429 () Bool)

(assert (=> b!2137165 (= b_free!62725 (not b_next!63429))))

(declare-fun tp!659341 () Bool)

(declare-fun b_and!172305 () Bool)

(assert (=> b!2137165 (= tp!659341 b_and!172305)))

(declare-fun b!2137184 () Bool)

(declare-fun b_free!62727 () Bool)

(declare-fun b_next!63431 () Bool)

(assert (=> b!2137184 (= b_free!62727 (not b_next!63431))))

(declare-fun tp!659354 () Bool)

(declare-fun b_and!172307 () Bool)

(assert (=> b!2137184 (= tp!659354 b_and!172307)))

(declare-fun b!2137162 () Bool)

(assert (=> b!2137162 true))

(declare-fun bs!444391 () Bool)

(declare-fun b!2137155 () Bool)

(assert (= bs!444391 (and b!2137155 b!2137162)))

(declare-fun lambda!79695 () Int)

(declare-fun lambda!79694 () Int)

(assert (=> bs!444391 (not (= lambda!79695 lambda!79694))))

(assert (=> b!2137155 true))

(declare-fun bs!444392 () Bool)

(declare-fun b!2137174 () Bool)

(assert (= bs!444392 (and b!2137174 b!2137162)))

(declare-fun lt!797515 () Int)

(declare-fun lt!797519 () Int)

(declare-fun lambda!79696 () Int)

(assert (=> bs!444392 (= (= lt!797519 lt!797515) (= lambda!79696 lambda!79694))))

(declare-fun bs!444393 () Bool)

(assert (= bs!444393 (and b!2137174 b!2137155)))

(assert (=> bs!444393 (not (= lambda!79696 lambda!79695))))

(assert (=> b!2137174 true))

(declare-fun b!2137145 () Bool)

(declare-fun res!923246 () Bool)

(declare-fun e!1364371 () Bool)

(assert (=> b!2137145 (=> res!923246 e!1364371)))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!797520 () Int)

(declare-fun from!1043 () Int)

(declare-fun lt!797522 () Bool)

(assert (=> b!2137145 (= res!923246 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (< lt!797520 (- 1)) (>= lt!797520 (+ 1 from!1043)) (and lt!797522 (not (= lt!797520 from!1043)))))))

(declare-fun b!2137146 () Bool)

(declare-fun res!923241 () Bool)

(declare-fun e!1364374 () Bool)

(assert (=> b!2137146 (=> (not res!923241) (not e!1364374))))

(declare-datatypes ((C!11656 0))(
  ( (C!11657 (val!6814 Int)) )
))
(declare-datatypes ((Regex!5755 0))(
  ( (ElementMatch!5755 (c!340387 C!11656)) (Concat!10057 (regOne!12022 Regex!5755) (regTwo!12022 Regex!5755)) (EmptyExpr!5755) (Star!5755 (reg!6084 Regex!5755)) (EmptyLang!5755) (Union!5755 (regOne!12023 Regex!5755) (regTwo!12023 Regex!5755)) )
))
(declare-datatypes ((List!24294 0))(
  ( (Nil!24210) (Cons!24210 (h!29611 Regex!5755) (t!196822 List!24294)) )
))
(declare-datatypes ((Context!2650 0))(
  ( (Context!2651 (exprs!1825 List!24294)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3320 0))(
  ( (tuple3!3321 (_1!14135 (InoxSet Context!2650)) (_2!14135 Int) (_3!2130 Int)) )
))
(declare-datatypes ((tuple2!24010 0))(
  ( (tuple2!24011 (_1!14136 tuple3!3320) (_2!14136 Int)) )
))
(declare-datatypes ((List!24295 0))(
  ( (Nil!24211) (Cons!24211 (h!29612 tuple2!24010) (t!196823 List!24295)) )
))
(declare-datatypes ((array!9131 0))(
  ( (array!9132 (arr!4075 (Array (_ BitVec 32) (_ BitVec 64))) (size!18936 (_ BitVec 32))) )
))
(declare-datatypes ((array!9133 0))(
  ( (array!9134 (arr!4076 (Array (_ BitVec 32) List!24295)) (size!18937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5398 0))(
  ( (LongMapFixedSize!5399 (defaultEntry!3064 Int) (mask!6892 (_ BitVec 32)) (extraKeys!2947 (_ BitVec 32)) (zeroValue!2957 List!24295) (minValue!2957 List!24295) (_size!5449 (_ BitVec 32)) (_keys!2996 array!9131) (_values!2979 array!9133) (_vacant!2760 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10621 0))(
  ( (Cell!10622 (v!28781 LongMapFixedSize!5398)) )
))
(declare-datatypes ((List!24296 0))(
  ( (Nil!24212) (Cons!24212 (h!29613 C!11656) (t!196824 List!24296)) )
))
(declare-datatypes ((IArray!15791 0))(
  ( (IArray!15792 (innerList!7953 List!24296)) )
))
(declare-datatypes ((Conc!7893 0))(
  ( (Node!7893 (left!18639 Conc!7893) (right!18969 Conc!7893) (csize!16016 Int) (cheight!8104 Int)) (Leaf!11538 (xs!10835 IArray!15791) (csize!16017 Int)) (Empty!7893) )
))
(declare-datatypes ((MutLongMap!2699 0))(
  ( (LongMap!2699 (underlying!5593 Cell!10621)) (MutLongMapExt!2698 (__x!16273 Int)) )
))
(declare-datatypes ((Cell!10623 0))(
  ( (Cell!10624 (v!28782 MutLongMap!2699)) )
))
(declare-datatypes ((Hashable!2613 0))(
  ( (HashableExt!2612 (__x!16274 Int)) )
))
(declare-datatypes ((MutableMap!2613 0))(
  ( (MutableMapExt!2612 (__x!16275 Int)) (HashMap!2613 (underlying!5594 Cell!10623) (hashF!4536 Hashable!2613) (_size!5450 (_ BitVec 32)) (defaultValue!2775 Int)) )
))
(declare-datatypes ((BalanceConc!15548 0))(
  ( (BalanceConc!15549 (c!340388 Conc!7893)) )
))
(declare-datatypes ((CacheFurthestNullable!754 0))(
  ( (CacheFurthestNullable!755 (cache!2994 MutableMap!2613) (totalInput!3083 BalanceConc!15548)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!754)

(declare-fun totalInput!851 () BalanceConc!15548)

(assert (=> b!2137146 (= res!923241 (= (totalInput!3083 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2137147 () Bool)

(declare-fun e!1364370 () Bool)

(declare-fun e!1364365 () Bool)

(assert (=> b!2137147 (= e!1364370 e!1364365)))

(declare-fun b!2137148 () Bool)

(declare-fun e!1364362 () Bool)

(declare-fun tp!659334 () Bool)

(assert (=> b!2137148 (= e!1364362 tp!659334)))

(declare-fun b!2137149 () Bool)

(assert (=> b!2137149 (= e!1364371 true)))

(declare-fun lt!797523 () Bool)

(declare-datatypes ((tuple3!3322 0))(
  ( (tuple3!3323 (_1!14137 Regex!5755) (_2!14137 Context!2650) (_3!2131 C!11656)) )
))
(declare-datatypes ((tuple2!24012 0))(
  ( (tuple2!24013 (_1!14138 tuple3!3322) (_2!14138 (InoxSet Context!2650))) )
))
(declare-datatypes ((List!24297 0))(
  ( (Nil!24213) (Cons!24213 (h!29614 tuple2!24012) (t!196825 List!24297)) )
))
(declare-datatypes ((tuple2!24014 0))(
  ( (tuple2!24015 (_1!14139 Context!2650) (_2!14139 C!11656)) )
))
(declare-datatypes ((tuple2!24016 0))(
  ( (tuple2!24017 (_1!14140 tuple2!24014) (_2!14140 (InoxSet Context!2650))) )
))
(declare-datatypes ((List!24298 0))(
  ( (Nil!24214) (Cons!24214 (h!29615 tuple2!24016) (t!196826 List!24298)) )
))
(declare-datatypes ((Hashable!2614 0))(
  ( (HashableExt!2613 (__x!16276 Int)) )
))
(declare-datatypes ((Hashable!2615 0))(
  ( (HashableExt!2614 (__x!16277 Int)) )
))
(declare-datatypes ((array!9135 0))(
  ( (array!9136 (arr!4077 (Array (_ BitVec 32) List!24298)) (size!18938 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5400 0))(
  ( (LongMapFixedSize!5401 (defaultEntry!3065 Int) (mask!6893 (_ BitVec 32)) (extraKeys!2948 (_ BitVec 32)) (zeroValue!2958 List!24298) (minValue!2958 List!24298) (_size!5451 (_ BitVec 32)) (_keys!2997 array!9131) (_values!2980 array!9135) (_vacant!2761 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10625 0))(
  ( (Cell!10626 (v!28783 LongMapFixedSize!5400)) )
))
(declare-datatypes ((MutLongMap!2700 0))(
  ( (LongMap!2700 (underlying!5595 Cell!10625)) (MutLongMapExt!2699 (__x!16278 Int)) )
))
(declare-datatypes ((Cell!10627 0))(
  ( (Cell!10628 (v!28784 MutLongMap!2700)) )
))
(declare-datatypes ((MutableMap!2614 0))(
  ( (MutableMapExt!2613 (__x!16279 Int)) (HashMap!2614 (underlying!5596 Cell!10627) (hashF!4537 Hashable!2614) (_size!5452 (_ BitVec 32)) (defaultValue!2776 Int)) )
))
(declare-datatypes ((CacheUp!1806 0))(
  ( (CacheUp!1807 (cache!2995 MutableMap!2614)) )
))
(declare-datatypes ((array!9137 0))(
  ( (array!9138 (arr!4078 (Array (_ BitVec 32) List!24297)) (size!18939 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5402 0))(
  ( (LongMapFixedSize!5403 (defaultEntry!3066 Int) (mask!6894 (_ BitVec 32)) (extraKeys!2949 (_ BitVec 32)) (zeroValue!2959 List!24297) (minValue!2959 List!24297) (_size!5453 (_ BitVec 32)) (_keys!2998 array!9131) (_values!2981 array!9137) (_vacant!2762 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10629 0))(
  ( (Cell!10630 (v!28785 LongMapFixedSize!5402)) )
))
(declare-datatypes ((MutLongMap!2701 0))(
  ( (LongMap!2701 (underlying!5597 Cell!10629)) (MutLongMapExt!2700 (__x!16280 Int)) )
))
(declare-datatypes ((Cell!10631 0))(
  ( (Cell!10632 (v!28786 MutLongMap!2701)) )
))
(declare-datatypes ((MutableMap!2615 0))(
  ( (MutableMapExt!2614 (__x!16281 Int)) (HashMap!2615 (underlying!5598 Cell!10631) (hashF!4538 Hashable!2615) (_size!5454 (_ BitVec 32)) (defaultValue!2777 Int)) )
))
(declare-datatypes ((CacheDown!1790 0))(
  ( (CacheDown!1791 (cache!2996 MutableMap!2615)) )
))
(declare-datatypes ((tuple3!3324 0))(
  ( (tuple3!3325 (_1!14141 (InoxSet Context!2650)) (_2!14141 CacheUp!1806) (_3!2132 CacheDown!1790)) )
))
(declare-fun lt!797521 () tuple3!3324)

(declare-fun valid!2110 (CacheDown!1790) Bool)

(assert (=> b!2137149 (= lt!797523 (valid!2110 (_3!2132 lt!797521)))))

(declare-fun e!1364368 () Bool)

(declare-datatypes ((StackFrame!196 0))(
  ( (StackFrame!197 (z!5831 (InoxSet Context!2650)) (from!2714 Int) (lastNullablePos!401 Int) (res!923249 Int) (totalInput!3084 BalanceConc!15548)) )
))
(declare-datatypes ((List!24299 0))(
  ( (Nil!24215) (Cons!24215 (h!29616 StackFrame!196) (t!196827 List!24299)) )
))
(declare-fun stack!8 () List!24299)

(declare-fun tp!659342 () Bool)

(declare-fun b!2137150 () Bool)

(declare-fun e!1364373 () Bool)

(declare-fun inv!31878 (StackFrame!196) Bool)

(assert (=> b!2137150 (= e!1364373 (and (inv!31878 (h!29616 stack!8)) e!1364368 tp!659342))))

(declare-fun setIsEmpty!16039 () Bool)

(declare-fun setRes!16040 () Bool)

(assert (=> setIsEmpty!16039 setRes!16040))

(declare-fun b!2137151 () Bool)

(declare-fun e!1364372 () Bool)

(declare-fun e!1364347 () Bool)

(assert (=> b!2137151 (= e!1364372 e!1364347)))

(declare-fun b!2137152 () Bool)

(declare-fun e!1364375 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2137152 (= e!1364375 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2137153 () Bool)

(declare-fun e!1364354 () Bool)

(declare-fun tp!659347 () Bool)

(declare-fun mapRes!12908 () Bool)

(assert (=> b!2137153 (= e!1364354 (and tp!659347 mapRes!12908))))

(declare-fun condMapEmpty!12907 () Bool)

(declare-fun cacheDown!1098 () CacheDown!1790)

(declare-fun mapDefault!12909 () List!24297)

(assert (=> b!2137153 (= condMapEmpty!12907 (= (arr!4078 (_values!2981 (v!28785 (underlying!5597 (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24297)) mapDefault!12909)))))

(declare-fun b!2137154 () Bool)

(declare-fun e!1364367 () Bool)

(declare-fun e!1364350 () Bool)

(assert (=> b!2137154 (= e!1364367 e!1364350)))

(declare-fun res!923243 () Bool)

(assert (=> b!2137154 (=> res!923243 e!1364350)))

(assert (=> b!2137154 (= res!923243 (not (= lt!797515 lt!797519)))))

(declare-fun lt!797516 () Int)

(declare-fun furthestNullablePosition!62 ((InoxSet Context!2650) Int BalanceConc!15548 Int Int) Int)

(assert (=> b!2137154 (= lt!797519 (furthestNullablePosition!62 (_1!14141 lt!797521) (+ 1 from!1043) totalInput!851 lt!797516 lt!797520))))

(declare-fun lt!797518 () List!24299)

(declare-fun z!3839 () (InoxSet Context!2650))

(assert (=> b!2137154 (= lt!797518 (Cons!24215 (StackFrame!197 z!3839 from!1043 lastNullablePos!123 lt!797515 totalInput!851) stack!8))))

(assert (=> b!2137154 (= lt!797520 (ite lt!797522 from!1043 lastNullablePos!123))))

(declare-fun nullableZipper!126 ((InoxSet Context!2650)) Bool)

(assert (=> b!2137154 (= lt!797522 (nullableZipper!126 (_1!14141 lt!797521)))))

(declare-fun cacheUp!979 () CacheUp!1806)

(declare-fun derivationStepZipperMem!48 ((InoxSet Context!2650) C!11656 CacheUp!1806 CacheDown!1790) tuple3!3324)

(declare-fun apply!5949 (BalanceConc!15548 Int) C!11656)

(assert (=> b!2137154 (= lt!797521 (derivationStepZipperMem!48 z!3839 (apply!5949 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun res!923244 () Bool)

(declare-fun e!1364366 () Bool)

(assert (=> b!2137155 (=> (not res!923244) (not e!1364366))))

(declare-fun forall!4942 (List!24299 Int) Bool)

(assert (=> b!2137155 (= res!923244 (forall!4942 stack!8 lambda!79695))))

(declare-fun b!2137156 () Bool)

(declare-fun res!923242 () Bool)

(assert (=> b!2137156 (=> res!923242 e!1364371)))

(assert (=> b!2137156 (= res!923242 (not (forall!4942 lt!797518 lambda!79695)))))

(declare-fun b!2137157 () Bool)

(declare-fun e!1364345 () Bool)

(declare-fun tp!659338 () Bool)

(declare-fun mapRes!12909 () Bool)

(assert (=> b!2137157 (= e!1364345 (and tp!659338 mapRes!12909))))

(declare-fun condMapEmpty!12909 () Bool)

(declare-fun mapDefault!12908 () List!24298)

(assert (=> b!2137157 (= condMapEmpty!12909 (= (arr!4077 (_values!2980 (v!28783 (underlying!5595 (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24298)) mapDefault!12908)))))

(declare-fun b!2137158 () Bool)

(declare-fun res!923237 () Bool)

(assert (=> b!2137158 (=> (not res!923237) (not e!1364374))))

(assert (=> b!2137158 (= res!923237 (valid!2110 cacheDown!1098))))

(declare-fun b!2137159 () Bool)

(declare-fun e!1364359 () Bool)

(declare-fun e!1364344 () Bool)

(declare-fun e!1364342 () Bool)

(declare-fun inv!31879 (BalanceConc!15548) Bool)

(assert (=> b!2137159 (= e!1364342 (and e!1364359 (inv!31879 (totalInput!3083 cacheFurthestNullable!114)) e!1364344))))

(declare-fun b!2137160 () Bool)

(declare-fun res!923231 () Bool)

(assert (=> b!2137160 (=> res!923231 e!1364371)))

(declare-fun valid!2111 (CacheUp!1806) Bool)

(assert (=> b!2137160 (= res!923231 (not (valid!2111 (_2!14141 lt!797521))))))

(declare-fun b!2137161 () Bool)

(declare-fun e!1364356 () Bool)

(declare-fun e!1364369 () Bool)

(assert (=> b!2137161 (= e!1364356 e!1364369)))

(assert (=> b!2137162 (= e!1364374 e!1364366)))

(declare-fun res!923234 () Bool)

(assert (=> b!2137162 (=> (not res!923234) (not e!1364366))))

(assert (=> b!2137162 (= res!923234 (forall!4942 stack!8 lambda!79694))))

(assert (=> b!2137162 (= lt!797515 (furthestNullablePosition!62 z!3839 from!1043 totalInput!851 lt!797516 lastNullablePos!123))))

(declare-fun b!2137163 () Bool)

(declare-fun e!1364357 () Bool)

(declare-fun e!1364355 () Bool)

(assert (=> b!2137163 (= e!1364357 e!1364355)))

(declare-fun mapNonEmpty!12907 () Bool)

(declare-fun tp!659343 () Bool)

(declare-fun tp!659332 () Bool)

(assert (=> mapNonEmpty!12907 (= mapRes!12908 (and tp!659343 tp!659332))))

(declare-fun mapRest!12909 () (Array (_ BitVec 32) List!24297))

(declare-fun mapKey!12908 () (_ BitVec 32))

(declare-fun mapValue!12909 () List!24297)

(assert (=> mapNonEmpty!12907 (= (arr!4078 (_values!2981 (v!28785 (underlying!5597 (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))))) (store mapRest!12909 mapKey!12908 mapValue!12909))))

(declare-fun res!923230 () Bool)

(declare-fun e!1364351 () Bool)

(assert (=> start!207662 (=> (not res!923230) (not e!1364351))))

(assert (=> start!207662 (= res!923230 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207662 e!1364351))

(declare-fun inv!31880 (CacheFurthestNullable!754) Bool)

(assert (=> start!207662 (and (inv!31880 cacheFurthestNullable!114) e!1364342)))

(assert (=> start!207662 true))

(declare-fun inv!31881 (CacheDown!1790) Bool)

(assert (=> start!207662 (and (inv!31881 cacheDown!1098) e!1364372)))

(declare-fun inv!31882 (CacheUp!1806) Bool)

(assert (=> start!207662 (and (inv!31882 cacheUp!979) e!1364357)))

(declare-fun condSetEmpty!16040 () Bool)

(assert (=> start!207662 (= condSetEmpty!16040 (= z!3839 ((as const (Array Context!2650 Bool)) false)))))

(declare-fun setRes!16039 () Bool)

(assert (=> start!207662 setRes!16039))

(declare-fun e!1364346 () Bool)

(assert (=> start!207662 (and (inv!31879 totalInput!851) e!1364346)))

(assert (=> start!207662 e!1364373))

(declare-fun b!2137164 () Bool)

(declare-fun res!923239 () Bool)

(assert (=> b!2137164 (=> (not res!923239) (not e!1364374))))

(assert (=> b!2137164 (= res!923239 e!1364375)))

(declare-fun res!923245 () Bool)

(assert (=> b!2137164 (=> res!923245 e!1364375)))

(assert (=> b!2137164 (= res!923245 (not (nullableZipper!126 z!3839)))))

(declare-fun e!1364377 () Bool)

(assert (=> b!2137165 (= e!1364347 (and e!1364377 tp!659341))))

(declare-fun b!2137166 () Bool)

(declare-fun e!1364360 () Bool)

(declare-fun lt!797525 () MutLongMap!2701)

(get-info :version)

(assert (=> b!2137166 (= e!1364377 (and e!1364360 ((_ is LongMap!2701) lt!797525)))))

(assert (=> b!2137166 (= lt!797525 (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))))

(declare-fun b!2137167 () Bool)

(declare-fun e!1364353 () Bool)

(assert (=> b!2137167 (= e!1364353 e!1364356)))

(declare-fun b!2137168 () Bool)

(declare-fun res!923240 () Bool)

(assert (=> b!2137168 (=> res!923240 e!1364371)))

(assert (=> b!2137168 (= res!923240 (not (forall!4942 lt!797518 lambda!79696)))))

(declare-fun b!2137169 () Bool)

(declare-fun e!1364348 () Bool)

(declare-fun tp!659359 () Bool)

(assert (=> b!2137169 (= e!1364348 tp!659359)))

(declare-fun b!2137170 () Bool)

(declare-fun e!1364343 () Bool)

(assert (=> b!2137170 (= e!1364343 e!1364370)))

(declare-fun b!2137171 () Bool)

(assert (=> b!2137171 (= e!1364351 e!1364374)))

(declare-fun res!923235 () Bool)

(assert (=> b!2137171 (=> (not res!923235) (not e!1364374))))

(assert (=> b!2137171 (= res!923235 (and (= totalInputSize!296 lt!797516) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18940 (BalanceConc!15548) Int)

(assert (=> b!2137171 (= lt!797516 (size!18940 totalInput!851))))

(declare-fun tp!659360 () Bool)

(declare-fun tp!659350 () Bool)

(declare-fun array_inv!2914 (array!9131) Bool)

(declare-fun array_inv!2915 (array!9135) Bool)

(assert (=> b!2137172 (= e!1364369 (and tp!659337 tp!659360 tp!659350 (array_inv!2914 (_keys!2997 (v!28783 (underlying!5595 (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))))) (array_inv!2915 (_values!2980 (v!28783 (underlying!5595 (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))))) e!1364345))))

(declare-fun b!2137173 () Bool)

(assert (=> b!2137173 (= e!1364366 (not e!1364367))))

(declare-fun res!923236 () Bool)

(assert (=> b!2137173 (=> res!923236 e!1364367)))

(declare-datatypes ((Option!4919 0))(
  ( (None!4918) (Some!4918 (v!28787 Int)) )
))
(declare-fun get!7406 (CacheFurthestNullable!754 (InoxSet Context!2650) Int Int) Option!4919)

(assert (=> b!2137173 (= res!923236 ((_ is Some!4918) (get!7406 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2137173 (forall!4942 stack!8 lambda!79694)))

(assert (=> b!2137174 (= e!1364350 e!1364371)))

(declare-fun res!923233 () Bool)

(assert (=> b!2137174 (=> res!923233 e!1364371)))

(assert (=> b!2137174 (= res!923233 (not (forall!4942 stack!8 lambda!79696)))))

(assert (=> b!2137174 (forall!4942 stack!8 lambda!79696)))

(declare-datatypes ((Unit!37665 0))(
  ( (Unit!37666) )
))
(declare-fun lt!797524 () Unit!37665)

(declare-fun lemmaStackPreservesForEqualRes!18 (List!24299 Int Int) Unit!37665)

(assert (=> b!2137174 (= lt!797524 (lemmaStackPreservesForEqualRes!18 stack!8 lt!797515 lt!797519))))

(assert (=> b!2137174 (forall!4942 stack!8 lambda!79694)))

(declare-fun b!2137175 () Bool)

(declare-fun e!1364364 () Bool)

(assert (=> b!2137175 (= e!1364360 e!1364364)))

(declare-fun mapNonEmpty!12908 () Bool)

(declare-fun tp!659345 () Bool)

(declare-fun tp!659349 () Bool)

(assert (=> mapNonEmpty!12908 (= mapRes!12909 (and tp!659345 tp!659349))))

(declare-fun mapKey!12909 () (_ BitVec 32))

(declare-fun mapRest!12907 () (Array (_ BitVec 32) List!24298))

(declare-fun mapValue!12908 () List!24298)

(assert (=> mapNonEmpty!12908 (= (arr!4077 (_values!2980 (v!28783 (underlying!5595 (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))))) (store mapRest!12907 mapKey!12909 mapValue!12908))))

(declare-fun b!2137176 () Bool)

(declare-fun e!1364352 () Bool)

(declare-fun tp!659339 () Bool)

(declare-fun mapRes!12907 () Bool)

(assert (=> b!2137176 (= e!1364352 (and tp!659339 mapRes!12907))))

(declare-fun condMapEmpty!12908 () Bool)

(declare-fun mapDefault!12907 () List!24295)

(assert (=> b!2137176 (= condMapEmpty!12908 (= (arr!4076 (_values!2979 (v!28781 (underlying!5593 (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24295)) mapDefault!12907)))))

(declare-fun tp!659353 () Bool)

(declare-fun tp!659356 () Bool)

(declare-fun array_inv!2916 (array!9133) Bool)

(assert (=> b!2137177 (= e!1364365 (and tp!659355 tp!659353 tp!659356 (array_inv!2914 (_keys!2996 (v!28781 (underlying!5593 (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))))) (array_inv!2916 (_values!2979 (v!28781 (underlying!5593 (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))))) e!1364352))))

(declare-fun b!2137178 () Bool)

(declare-fun e!1364378 () Bool)

(assert (=> b!2137178 (= e!1364368 (and setRes!16040 (inv!31879 (totalInput!3084 (h!29616 stack!8))) e!1364378))))

(declare-fun condSetEmpty!16039 () Bool)

(assert (=> b!2137178 (= condSetEmpty!16039 (= (z!5831 (h!29616 stack!8)) ((as const (Array Context!2650 Bool)) false)))))

(declare-fun b!2137179 () Bool)

(declare-fun res!923232 () Bool)

(assert (=> b!2137179 (=> res!923232 e!1364367)))

(assert (=> b!2137179 (= res!923232 (= from!1043 totalInputSize!296))))

(declare-fun b!2137180 () Bool)

(declare-fun res!923248 () Bool)

(assert (=> b!2137180 (=> (not res!923248) (not e!1364374))))

(assert (=> b!2137180 (= res!923248 (valid!2111 cacheUp!979))))

(declare-fun b!2137181 () Bool)

(declare-fun e!1364349 () Bool)

(assert (=> b!2137181 (= e!1364364 e!1364349)))

(declare-fun b!2137182 () Bool)

(declare-fun e!1364341 () Bool)

(declare-fun lt!797517 () MutLongMap!2699)

(assert (=> b!2137182 (= e!1364341 (and e!1364343 ((_ is LongMap!2699) lt!797517)))))

(assert (=> b!2137182 (= lt!797517 (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))))

(declare-fun b!2137183 () Bool)

(declare-fun tp!659344 () Bool)

(declare-fun inv!31883 (Conc!7893) Bool)

(assert (=> b!2137183 (= e!1364378 (and (inv!31883 (c!340388 (totalInput!3084 (h!29616 stack!8)))) tp!659344))))

(declare-fun setElem!16039 () Context!2650)

(declare-fun setNonEmpty!16039 () Bool)

(declare-fun tp!659358 () Bool)

(declare-fun inv!31884 (Context!2650) Bool)

(assert (=> setNonEmpty!16039 (= setRes!16040 (and tp!659358 (inv!31884 setElem!16039) e!1364362))))

(declare-fun setRest!16039 () (InoxSet Context!2650))

(assert (=> setNonEmpty!16039 (= (z!5831 (h!29616 stack!8)) ((_ map or) (store ((as const (Array Context!2650 Bool)) false) setElem!16039 true) setRest!16039))))

(declare-fun setIsEmpty!16040 () Bool)

(assert (=> setIsEmpty!16040 setRes!16039))

(declare-fun mapIsEmpty!12907 () Bool)

(assert (=> mapIsEmpty!12907 mapRes!12908))

(declare-fun tp!659351 () Bool)

(declare-fun tp!659348 () Bool)

(declare-fun array_inv!2917 (array!9137) Bool)

(assert (=> b!2137184 (= e!1364349 (and tp!659354 tp!659348 tp!659351 (array_inv!2914 (_keys!2998 (v!28785 (underlying!5597 (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))))) (array_inv!2917 (_values!2981 (v!28785 (underlying!5597 (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))))) e!1364354))))

(declare-fun tp!659340 () Bool)

(declare-fun setElem!16040 () Context!2650)

(declare-fun setNonEmpty!16040 () Bool)

(assert (=> setNonEmpty!16040 (= setRes!16039 (and tp!659340 (inv!31884 setElem!16040) e!1364348))))

(declare-fun setRest!16040 () (InoxSet Context!2650))

(assert (=> setNonEmpty!16040 (= z!3839 ((_ map or) (store ((as const (Array Context!2650 Bool)) false) setElem!16040 true) setRest!16040))))

(declare-fun b!2137185 () Bool)

(declare-fun tp!659333 () Bool)

(assert (=> b!2137185 (= e!1364344 (and (inv!31883 (c!340388 (totalInput!3083 cacheFurthestNullable!114))) tp!659333))))

(declare-fun b!2137186 () Bool)

(declare-fun e!1364363 () Bool)

(declare-fun lt!797514 () MutLongMap!2700)

(assert (=> b!2137186 (= e!1364363 (and e!1364353 ((_ is LongMap!2700) lt!797514)))))

(assert (=> b!2137186 (= lt!797514 (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))))

(assert (=> b!2137187 (= e!1364355 (and e!1364363 tp!659336))))

(declare-fun b!2137188 () Bool)

(declare-fun res!923247 () Bool)

(assert (=> b!2137188 (=> res!923247 e!1364367)))

(declare-fun lostCauseZipper!102 ((InoxSet Context!2650)) Bool)

(assert (=> b!2137188 (= res!923247 (lostCauseZipper!102 z!3839))))

(declare-fun b!2137189 () Bool)

(declare-fun tp!659335 () Bool)

(assert (=> b!2137189 (= e!1364346 (and (inv!31883 (c!340388 totalInput!851)) tp!659335))))

(declare-fun mapIsEmpty!12908 () Bool)

(assert (=> mapIsEmpty!12908 mapRes!12909))

(declare-fun b!2137190 () Bool)

(declare-fun res!923238 () Bool)

(assert (=> b!2137190 (=> (not res!923238) (not e!1364374))))

(declare-fun valid!2112 (CacheFurthestNullable!754) Bool)

(assert (=> b!2137190 (= res!923238 (valid!2112 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12909 () Bool)

(declare-fun tp!659346 () Bool)

(declare-fun tp!659357 () Bool)

(assert (=> mapNonEmpty!12909 (= mapRes!12907 (and tp!659346 tp!659357))))

(declare-fun mapValue!12907 () List!24295)

(declare-fun mapRest!12908 () (Array (_ BitVec 32) List!24295))

(declare-fun mapKey!12907 () (_ BitVec 32))

(assert (=> mapNonEmpty!12909 (= (arr!4076 (_values!2979 (v!28781 (underlying!5593 (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))))) (store mapRest!12908 mapKey!12907 mapValue!12907))))

(declare-fun mapIsEmpty!12909 () Bool)

(assert (=> mapIsEmpty!12909 mapRes!12907))

(assert (=> b!2137191 (= e!1364359 (and e!1364341 tp!659352))))

(assert (= (and start!207662 res!923230) b!2137171))

(assert (= (and b!2137171 res!923235) b!2137164))

(assert (= (and b!2137164 (not res!923245)) b!2137152))

(assert (= (and b!2137164 res!923239) b!2137180))

(assert (= (and b!2137180 res!923248) b!2137158))

(assert (= (and b!2137158 res!923237) b!2137190))

(assert (= (and b!2137190 res!923238) b!2137146))

(assert (= (and b!2137146 res!923241) b!2137162))

(assert (= (and b!2137162 res!923234) b!2137155))

(assert (= (and b!2137155 res!923244) b!2137173))

(assert (= (and b!2137173 (not res!923236)) b!2137179))

(assert (= (and b!2137179 (not res!923232)) b!2137188))

(assert (= (and b!2137188 (not res!923247)) b!2137154))

(assert (= (and b!2137154 (not res!923243)) b!2137174))

(assert (= (and b!2137174 (not res!923233)) b!2137168))

(assert (= (and b!2137168 (not res!923240)) b!2137156))

(assert (= (and b!2137156 (not res!923242)) b!2137145))

(assert (= (and b!2137145 (not res!923246)) b!2137160))

(assert (= (and b!2137160 (not res!923231)) b!2137149))

(assert (= (and b!2137176 condMapEmpty!12908) mapIsEmpty!12909))

(assert (= (and b!2137176 (not condMapEmpty!12908)) mapNonEmpty!12909))

(assert (= b!2137177 b!2137176))

(assert (= b!2137147 b!2137177))

(assert (= b!2137170 b!2137147))

(assert (= (and b!2137182 ((_ is LongMap!2699) (v!28782 (underlying!5594 (cache!2994 cacheFurthestNullable!114))))) b!2137170))

(assert (= b!2137191 b!2137182))

(assert (= (and b!2137159 ((_ is HashMap!2613) (cache!2994 cacheFurthestNullable!114))) b!2137191))

(assert (= b!2137159 b!2137185))

(assert (= start!207662 b!2137159))

(assert (= (and b!2137153 condMapEmpty!12907) mapIsEmpty!12907))

(assert (= (and b!2137153 (not condMapEmpty!12907)) mapNonEmpty!12907))

(assert (= b!2137184 b!2137153))

(assert (= b!2137181 b!2137184))

(assert (= b!2137175 b!2137181))

(assert (= (and b!2137166 ((_ is LongMap!2701) (v!28786 (underlying!5598 (cache!2996 cacheDown!1098))))) b!2137175))

(assert (= b!2137165 b!2137166))

(assert (= (and b!2137151 ((_ is HashMap!2615) (cache!2996 cacheDown!1098))) b!2137165))

(assert (= start!207662 b!2137151))

(assert (= (and b!2137157 condMapEmpty!12909) mapIsEmpty!12908))

(assert (= (and b!2137157 (not condMapEmpty!12909)) mapNonEmpty!12908))

(assert (= b!2137172 b!2137157))

(assert (= b!2137161 b!2137172))

(assert (= b!2137167 b!2137161))

(assert (= (and b!2137186 ((_ is LongMap!2700) (v!28784 (underlying!5596 (cache!2995 cacheUp!979))))) b!2137167))

(assert (= b!2137187 b!2137186))

(assert (= (and b!2137163 ((_ is HashMap!2614) (cache!2995 cacheUp!979))) b!2137187))

(assert (= start!207662 b!2137163))

(assert (= (and start!207662 condSetEmpty!16040) setIsEmpty!16040))

(assert (= (and start!207662 (not condSetEmpty!16040)) setNonEmpty!16040))

(assert (= setNonEmpty!16040 b!2137169))

(assert (= start!207662 b!2137189))

(assert (= (and b!2137178 condSetEmpty!16039) setIsEmpty!16039))

(assert (= (and b!2137178 (not condSetEmpty!16039)) setNonEmpty!16039))

(assert (= setNonEmpty!16039 b!2137148))

(assert (= b!2137178 b!2137183))

(assert (= b!2137150 b!2137178))

(assert (= (and start!207662 ((_ is Cons!24215) stack!8)) b!2137150))

(declare-fun m!2584214 () Bool)

(assert (=> start!207662 m!2584214))

(declare-fun m!2584216 () Bool)

(assert (=> start!207662 m!2584216))

(declare-fun m!2584218 () Bool)

(assert (=> start!207662 m!2584218))

(declare-fun m!2584220 () Bool)

(assert (=> start!207662 m!2584220))

(declare-fun m!2584222 () Bool)

(assert (=> mapNonEmpty!12907 m!2584222))

(declare-fun m!2584224 () Bool)

(assert (=> b!2137174 m!2584224))

(assert (=> b!2137174 m!2584224))

(declare-fun m!2584226 () Bool)

(assert (=> b!2137174 m!2584226))

(declare-fun m!2584228 () Bool)

(assert (=> b!2137174 m!2584228))

(declare-fun m!2584230 () Bool)

(assert (=> b!2137159 m!2584230))

(declare-fun m!2584232 () Bool)

(assert (=> b!2137177 m!2584232))

(declare-fun m!2584234 () Bool)

(assert (=> b!2137177 m!2584234))

(declare-fun m!2584236 () Bool)

(assert (=> b!2137171 m!2584236))

(declare-fun m!2584238 () Bool)

(assert (=> b!2137188 m!2584238))

(declare-fun m!2584240 () Bool)

(assert (=> setNonEmpty!16039 m!2584240))

(declare-fun m!2584242 () Bool)

(assert (=> b!2137190 m!2584242))

(declare-fun m!2584244 () Bool)

(assert (=> b!2137184 m!2584244))

(declare-fun m!2584246 () Bool)

(assert (=> b!2137184 m!2584246))

(declare-fun m!2584248 () Bool)

(assert (=> b!2137185 m!2584248))

(declare-fun m!2584250 () Bool)

(assert (=> b!2137173 m!2584250))

(assert (=> b!2137173 m!2584228))

(declare-fun m!2584252 () Bool)

(assert (=> mapNonEmpty!12909 m!2584252))

(declare-fun m!2584254 () Bool)

(assert (=> b!2137178 m!2584254))

(declare-fun m!2584256 () Bool)

(assert (=> b!2137183 m!2584256))

(declare-fun m!2584258 () Bool)

(assert (=> b!2137149 m!2584258))

(declare-fun m!2584260 () Bool)

(assert (=> b!2137156 m!2584260))

(declare-fun m!2584262 () Bool)

(assert (=> b!2137150 m!2584262))

(assert (=> b!2137162 m!2584228))

(declare-fun m!2584264 () Bool)

(assert (=> b!2137162 m!2584264))

(declare-fun m!2584266 () Bool)

(assert (=> mapNonEmpty!12908 m!2584266))

(declare-fun m!2584268 () Bool)

(assert (=> b!2137180 m!2584268))

(declare-fun m!2584270 () Bool)

(assert (=> b!2137189 m!2584270))

(declare-fun m!2584272 () Bool)

(assert (=> setNonEmpty!16040 m!2584272))

(declare-fun m!2584274 () Bool)

(assert (=> b!2137155 m!2584274))

(declare-fun m!2584276 () Bool)

(assert (=> b!2137164 m!2584276))

(declare-fun m!2584278 () Bool)

(assert (=> b!2137172 m!2584278))

(declare-fun m!2584280 () Bool)

(assert (=> b!2137172 m!2584280))

(declare-fun m!2584282 () Bool)

(assert (=> b!2137168 m!2584282))

(declare-fun m!2584284 () Bool)

(assert (=> b!2137158 m!2584284))

(declare-fun m!2584286 () Bool)

(assert (=> b!2137160 m!2584286))

(declare-fun m!2584288 () Bool)

(assert (=> b!2137154 m!2584288))

(declare-fun m!2584290 () Bool)

(assert (=> b!2137154 m!2584290))

(declare-fun m!2584292 () Bool)

(assert (=> b!2137154 m!2584292))

(assert (=> b!2137154 m!2584292))

(declare-fun m!2584294 () Bool)

(assert (=> b!2137154 m!2584294))

(check-sat (not b!2137153) (not b!2137157) (not b!2137171) (not setNonEmpty!16040) (not b!2137154) (not b!2137149) (not b!2137158) (not b!2137172) (not b!2137174) (not b!2137169) (not b!2137185) b_and!172305 (not setNonEmpty!16039) (not b!2137184) (not b!2137162) (not b_next!63423) (not b!2137188) b_and!172303 (not b!2137183) (not b!2137176) (not b_next!63431) b_and!172299 (not b_next!63429) (not b!2137164) (not b!2137168) (not b!2137159) (not b!2137189) (not b!2137173) b_and!172297 (not b!2137177) (not b!2137178) (not b!2137160) (not b!2137190) (not start!207662) (not b_next!63421) (not b_next!63425) (not b!2137150) (not b_next!63427) b_and!172301 (not b!2137148) (not b!2137156) (not mapNonEmpty!12907) b_and!172307 (not b!2137155) (not mapNonEmpty!12909) (not mapNonEmpty!12908) (not b!2137180))
(check-sat b_and!172305 (not b_next!63423) b_and!172303 (not b_next!63429) b_and!172297 b_and!172307 (not b_next!63431) b_and!172299 (not b_next!63421) (not b_next!63425) (not b_next!63427) b_and!172301)
