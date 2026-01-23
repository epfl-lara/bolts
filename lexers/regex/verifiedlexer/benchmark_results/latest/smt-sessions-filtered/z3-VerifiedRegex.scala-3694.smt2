; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208562 () Bool)

(assert start!208562)

(declare-fun b!2150269 () Bool)

(declare-fun b_free!63509 () Bool)

(declare-fun b_next!64213 () Bool)

(assert (=> b!2150269 (= b_free!63509 (not b_next!64213))))

(declare-fun tp!667972 () Bool)

(declare-fun b_and!173121 () Bool)

(assert (=> b!2150269 (= tp!667972 b_and!173121)))

(declare-fun b!2150262 () Bool)

(declare-fun b_free!63511 () Bool)

(declare-fun b_next!64215 () Bool)

(assert (=> b!2150262 (= b_free!63511 (not b_next!64215))))

(declare-fun tp!667964 () Bool)

(declare-fun b_and!173123 () Bool)

(assert (=> b!2150262 (= tp!667964 b_and!173123)))

(declare-datatypes ((C!11856 0))(
  ( (C!11857 (val!6914 Int)) )
))
(declare-datatypes ((Regex!5855 0))(
  ( (ElementMatch!5855 (c!341146 C!11856)) (Concat!10157 (regOne!12222 Regex!5855) (regTwo!12222 Regex!5855)) (EmptyExpr!5855) (Star!5855 (reg!6184 Regex!5855)) (EmptyLang!5855) (Union!5855 (regOne!12223 Regex!5855) (regTwo!12223 Regex!5855)) )
))
(declare-datatypes ((List!24728 0))(
  ( (Nil!24644) (Cons!24644 (h!30045 Regex!5855) (t!197274 List!24728)) )
))
(declare-datatypes ((Context!2850 0))(
  ( (Context!2851 (exprs!1925 List!24728)) )
))
(declare-fun setElem!17134 () Context!2850)

(declare-fun setNonEmpty!17134 () Bool)

(declare-fun e!1374996 () Bool)

(declare-fun setRes!17134 () Bool)

(declare-fun tp!667969 () Bool)

(declare-fun inv!32468 (Context!2850) Bool)

(assert (=> setNonEmpty!17134 (= setRes!17134 (and tp!667969 (inv!32468 setElem!17134) e!1374996))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!514 () (InoxSet Context!2850))

(declare-fun setRest!17134 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17134 (= z!514 ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17134 true) setRest!17134))))

(declare-fun b!2150256 () Bool)

(declare-fun res!927358 () Bool)

(declare-fun e!1374995 () Bool)

(assert (=> b!2150256 (=> (not res!927358) (not e!1374995))))

(declare-datatypes ((List!24729 0))(
  ( (Nil!24645) (Cons!24645 (h!30046 C!11856) (t!197275 List!24729)) )
))
(declare-datatypes ((tuple3!3642 0))(
  ( (tuple3!3643 (_1!14529 (InoxSet Context!2850)) (_2!14529 Int) (_3!2291 Int)) )
))
(declare-datatypes ((tuple2!24476 0))(
  ( (tuple2!24477 (_1!14530 tuple3!3642) (_2!14530 Int)) )
))
(declare-datatypes ((List!24730 0))(
  ( (Nil!24646) (Cons!24646 (h!30047 tuple2!24476) (t!197276 List!24730)) )
))
(declare-datatypes ((array!9753 0))(
  ( (array!9754 (arr!4356 (Array (_ BitVec 32) (_ BitVec 64))) (size!19308 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2794 0))(
  ( (HashableExt!2793 (__x!16816 Int)) )
))
(declare-datatypes ((array!9755 0))(
  ( (array!9756 (arr!4357 (Array (_ BitVec 32) List!24730)) (size!19309 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5760 0))(
  ( (LongMapFixedSize!5761 (defaultEntry!3245 Int) (mask!7123 (_ BitVec 32)) (extraKeys!3128 (_ BitVec 32)) (zeroValue!3138 List!24730) (minValue!3138 List!24730) (_size!5811 (_ BitVec 32)) (_keys!3177 array!9753) (_values!3160 array!9755) (_vacant!2941 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11345 0))(
  ( (Cell!11346 (v!29210 LongMapFixedSize!5760)) )
))
(declare-datatypes ((MutLongMap!2880 0))(
  ( (LongMap!2880 (underlying!5955 Cell!11345)) (MutLongMapExt!2879 (__x!16817 Int)) )
))
(declare-datatypes ((Cell!11347 0))(
  ( (Cell!11348 (v!29211 MutLongMap!2880)) )
))
(declare-datatypes ((MutableMap!2794 0))(
  ( (MutableMapExt!2793 (__x!16818 Int)) (HashMap!2794 (underlying!5956 Cell!11347) (hashF!4717 Hashable!2794) (_size!5812 (_ BitVec 32)) (defaultValue!2956 Int)) )
))
(declare-datatypes ((IArray!15987 0))(
  ( (IArray!15988 (innerList!8051 List!24729)) )
))
(declare-datatypes ((Conc!7991 0))(
  ( (Node!7991 (left!18929 Conc!7991) (right!19259 Conc!7991) (csize!16212 Int) (cheight!8202 Int)) (Leaf!11686 (xs!10933 IArray!15987) (csize!16213 Int)) (Empty!7991) )
))
(declare-datatypes ((BalanceConc!15744 0))(
  ( (BalanceConc!15745 (c!341147 Conc!7991)) )
))
(declare-datatypes ((CacheFurthestNullable!946 0))(
  ( (CacheFurthestNullable!947 (cache!3175 MutableMap!2794) (totalInput!3248 BalanceConc!15744)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!946)

(declare-fun validCacheMapFurthestNullable!149 (MutableMap!2794 BalanceConc!15744) Bool)

(assert (=> b!2150256 (= res!927358 (validCacheMapFurthestNullable!149 (cache!3175 thiss!29110) (totalInput!3248 thiss!29110)))))

(declare-fun b!2150257 () Bool)

(declare-fun tp!667963 () Bool)

(assert (=> b!2150257 (= e!1374996 tp!667963)))

(declare-fun mapNonEmpty!13637 () Bool)

(declare-fun mapRes!13637 () Bool)

(declare-fun tp!667970 () Bool)

(declare-fun tp!667971 () Bool)

(assert (=> mapNonEmpty!13637 (= mapRes!13637 (and tp!667970 tp!667971))))

(declare-fun mapValue!13637 () List!24730)

(declare-fun mapKey!13637 () (_ BitVec 32))

(declare-fun mapRest!13637 () (Array (_ BitVec 32) List!24730))

(assert (=> mapNonEmpty!13637 (= (arr!4357 (_values!3160 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) (store mapRest!13637 mapKey!13637 mapValue!13637))))

(declare-fun b!2150258 () Bool)

(declare-fun e!1375000 () Bool)

(get-info :version)

(assert (=> b!2150258 (= e!1375000 ((_ is HashMap!2794) (cache!3175 thiss!29110)))))

(declare-fun b!2150259 () Bool)

(declare-fun e!1374989 () Bool)

(declare-fun localTotalInput!13 () BalanceConc!15744)

(declare-fun tp!667965 () Bool)

(declare-fun inv!32469 (Conc!7991) Bool)

(assert (=> b!2150259 (= e!1374989 (and (inv!32469 (c!341147 localTotalInput!13)) tp!667965))))

(declare-fun b!2150260 () Bool)

(declare-fun e!1374993 () Bool)

(declare-fun tp!667966 () Bool)

(assert (=> b!2150260 (= e!1374993 (and tp!667966 mapRes!13637))))

(declare-fun condMapEmpty!13637 () Bool)

(declare-fun mapDefault!13637 () List!24730)

(assert (=> b!2150260 (= condMapEmpty!13637 (= (arr!4357 (_values!3160 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24730)) mapDefault!13637)))))

(declare-fun b!2150261 () Bool)

(declare-fun e!1374997 () Bool)

(declare-fun e!1374991 () Bool)

(assert (=> b!2150261 (= e!1374997 e!1374991)))

(declare-fun e!1374988 () Bool)

(declare-fun tp!667968 () Bool)

(declare-fun tp!667973 () Bool)

(declare-fun array_inv!3124 (array!9753) Bool)

(declare-fun array_inv!3125 (array!9755) Bool)

(assert (=> b!2150262 (= e!1374988 (and tp!667964 tp!667968 tp!667973 (array_inv!3124 (_keys!3177 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) (array_inv!3125 (_values!3160 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) e!1374993))))

(declare-fun setIsEmpty!17134 () Bool)

(assert (=> setIsEmpty!17134 setRes!17134))

(declare-fun b!2150263 () Bool)

(assert (=> b!2150263 (= e!1374991 e!1374988)))

(declare-fun mapIsEmpty!13637 () Bool)

(assert (=> mapIsEmpty!13637 mapRes!13637))

(declare-fun b!2150265 () Bool)

(declare-fun e!1374994 () Bool)

(declare-fun lt!800666 () MutLongMap!2880)

(assert (=> b!2150265 (= e!1374994 (and e!1374997 ((_ is LongMap!2880) lt!800666)))))

(assert (=> b!2150265 (= lt!800666 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))

(declare-fun e!1374992 () Bool)

(declare-fun e!1375001 () Bool)

(declare-fun e!1374990 () Bool)

(declare-fun b!2150266 () Bool)

(declare-fun inv!32470 (BalanceConc!15744) Bool)

(assert (=> b!2150266 (= e!1374992 (and e!1375001 (inv!32470 (totalInput!3248 thiss!29110)) e!1374990))))

(declare-fun b!2150267 () Bool)

(declare-fun e!1374998 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2150267 (= e!1374998 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2150268 () Bool)

(declare-fun res!927356 () Bool)

(assert (=> b!2150268 (=> (not res!927356) (not e!1374995))))

(assert (=> b!2150268 (= res!927356 e!1374998)))

(declare-fun res!927360 () Bool)

(assert (=> b!2150268 (=> res!927360 e!1374998)))

(declare-fun nullableZipper!192 ((InoxSet Context!2850)) Bool)

(assert (=> b!2150268 (= res!927360 (not (nullableZipper!192 z!514)))))

(assert (=> b!2150269 (= e!1375001 (and e!1374994 tp!667972))))

(declare-fun b!2150270 () Bool)

(declare-fun tp!667967 () Bool)

(assert (=> b!2150270 (= e!1374990 (and (inv!32469 (c!341147 (totalInput!3248 thiss!29110))) tp!667967))))

(declare-fun res!927357 () Bool)

(assert (=> start!208562 (=> (not res!927357) (not e!1374995))))

(assert (=> start!208562 (= res!927357 (and (= localTotalInput!13 (totalInput!3248 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208562 e!1374995))

(declare-fun condSetEmpty!17134 () Bool)

(assert (=> start!208562 (= condSetEmpty!17134 (= z!514 ((as const (Array Context!2850 Bool)) false)))))

(assert (=> start!208562 setRes!17134))

(assert (=> start!208562 true))

(declare-fun inv!32471 (CacheFurthestNullable!946) Bool)

(assert (=> start!208562 (and (inv!32471 thiss!29110) e!1374992)))

(assert (=> start!208562 (and (inv!32470 localTotalInput!13) e!1374989)))

(declare-fun b!2150264 () Bool)

(assert (=> b!2150264 (= e!1374995 (not e!1375000))))

(declare-fun res!927359 () Bool)

(assert (=> b!2150264 (=> res!927359 e!1375000)))

(declare-fun contains!4218 (MutableMap!2794 tuple3!3642) Bool)

(assert (=> b!2150264 (= res!927359 (contains!4218 (cache!3175 thiss!29110) (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(assert (=> b!2150264 (validCacheMapFurthestNullable!149 (cache!3175 thiss!29110) localTotalInput!13)))

(assert (= (and start!208562 res!927357) b!2150268))

(assert (= (and b!2150268 (not res!927360)) b!2150267))

(assert (= (and b!2150268 res!927356) b!2150256))

(assert (= (and b!2150256 res!927358) b!2150264))

(assert (= (and b!2150264 (not res!927359)) b!2150258))

(assert (= (and start!208562 condSetEmpty!17134) setIsEmpty!17134))

(assert (= (and start!208562 (not condSetEmpty!17134)) setNonEmpty!17134))

(assert (= setNonEmpty!17134 b!2150257))

(assert (= (and b!2150260 condMapEmpty!13637) mapIsEmpty!13637))

(assert (= (and b!2150260 (not condMapEmpty!13637)) mapNonEmpty!13637))

(assert (= b!2150262 b!2150260))

(assert (= b!2150263 b!2150262))

(assert (= b!2150261 b!2150263))

(assert (= (and b!2150265 ((_ is LongMap!2880) (v!29211 (underlying!5956 (cache!3175 thiss!29110))))) b!2150261))

(assert (= b!2150269 b!2150265))

(assert (= (and b!2150266 ((_ is HashMap!2794) (cache!3175 thiss!29110))) b!2150269))

(assert (= b!2150266 b!2150270))

(assert (= start!208562 b!2150266))

(assert (= start!208562 b!2150259))

(declare-fun m!2593030 () Bool)

(assert (=> b!2150262 m!2593030))

(declare-fun m!2593032 () Bool)

(assert (=> b!2150262 m!2593032))

(declare-fun m!2593034 () Bool)

(assert (=> b!2150264 m!2593034))

(declare-fun m!2593036 () Bool)

(assert (=> b!2150264 m!2593036))

(declare-fun m!2593038 () Bool)

(assert (=> b!2150256 m!2593038))

(declare-fun m!2593040 () Bool)

(assert (=> mapNonEmpty!13637 m!2593040))

(declare-fun m!2593042 () Bool)

(assert (=> b!2150266 m!2593042))

(declare-fun m!2593044 () Bool)

(assert (=> b!2150259 m!2593044))

(declare-fun m!2593046 () Bool)

(assert (=> setNonEmpty!17134 m!2593046))

(declare-fun m!2593048 () Bool)

(assert (=> b!2150270 m!2593048))

(declare-fun m!2593050 () Bool)

(assert (=> start!208562 m!2593050))

(declare-fun m!2593052 () Bool)

(assert (=> start!208562 m!2593052))

(declare-fun m!2593054 () Bool)

(assert (=> b!2150268 m!2593054))

(check-sat (not b!2150259) b_and!173121 (not b!2150266) (not b!2150264) (not b_next!64213) (not start!208562) (not b!2150270) (not b_next!64215) (not b!2150268) (not setNonEmpty!17134) (not b!2150257) (not mapNonEmpty!13637) (not b!2150256) b_and!173123 (not b!2150260) (not b!2150262))
(check-sat b_and!173121 b_and!173123 (not b_next!64215) (not b_next!64213))
(get-model)

(declare-fun b!2150276 () Bool)

(assert (=> b!2150276 true))

(declare-fun d!645619 () Bool)

(declare-fun res!927365 () Bool)

(declare-fun e!1375004 () Bool)

(assert (=> d!645619 (=> (not res!927365) (not e!1375004))))

(declare-fun valid!2223 (MutableMap!2794) Bool)

(assert (=> d!645619 (= res!927365 (valid!2223 (cache!3175 thiss!29110)))))

(assert (=> d!645619 (= (validCacheMapFurthestNullable!149 (cache!3175 thiss!29110) (totalInput!3248 thiss!29110)) e!1375004)))

(declare-fun b!2150275 () Bool)

(declare-fun res!927366 () Bool)

(assert (=> b!2150275 (=> (not res!927366) (not e!1375004))))

(declare-fun invariantList!322 (List!24730) Bool)

(declare-datatypes ((ListMap!697 0))(
  ( (ListMap!698 (toList!1106 List!24730)) )
))
(declare-fun map!4960 (MutableMap!2794) ListMap!697)

(assert (=> b!2150275 (= res!927366 (invariantList!322 (toList!1106 (map!4960 (cache!3175 thiss!29110)))))))

(declare-fun lambda!80851 () Int)

(declare-fun forall!5027 (List!24730 Int) Bool)

(assert (=> b!2150276 (= e!1375004 (forall!5027 (toList!1106 (map!4960 (cache!3175 thiss!29110))) lambda!80851))))

(assert (= (and d!645619 res!927365) b!2150275))

(assert (= (and b!2150275 res!927366) b!2150276))

(declare-fun m!2593057 () Bool)

(assert (=> d!645619 m!2593057))

(declare-fun m!2593059 () Bool)

(assert (=> b!2150275 m!2593059))

(declare-fun m!2593061 () Bool)

(assert (=> b!2150275 m!2593061))

(assert (=> b!2150276 m!2593059))

(declare-fun m!2593063 () Bool)

(assert (=> b!2150276 m!2593063))

(assert (=> b!2150256 d!645619))

(declare-fun d!645621 () Bool)

(declare-fun c!341150 () Bool)

(assert (=> d!645621 (= c!341150 ((_ is Node!7991) (c!341147 localTotalInput!13)))))

(declare-fun e!1375009 () Bool)

(assert (=> d!645621 (= (inv!32469 (c!341147 localTotalInput!13)) e!1375009)))

(declare-fun b!2150285 () Bool)

(declare-fun inv!32472 (Conc!7991) Bool)

(assert (=> b!2150285 (= e!1375009 (inv!32472 (c!341147 localTotalInput!13)))))

(declare-fun b!2150286 () Bool)

(declare-fun e!1375010 () Bool)

(assert (=> b!2150286 (= e!1375009 e!1375010)))

(declare-fun res!927369 () Bool)

(assert (=> b!2150286 (= res!927369 (not ((_ is Leaf!11686) (c!341147 localTotalInput!13))))))

(assert (=> b!2150286 (=> res!927369 e!1375010)))

(declare-fun b!2150287 () Bool)

(declare-fun inv!32473 (Conc!7991) Bool)

(assert (=> b!2150287 (= e!1375010 (inv!32473 (c!341147 localTotalInput!13)))))

(assert (= (and d!645621 c!341150) b!2150285))

(assert (= (and d!645621 (not c!341150)) b!2150286))

(assert (= (and b!2150286 (not res!927369)) b!2150287))

(declare-fun m!2593065 () Bool)

(assert (=> b!2150285 m!2593065))

(declare-fun m!2593067 () Bool)

(assert (=> b!2150287 m!2593067))

(assert (=> b!2150259 d!645621))

(declare-fun b!2150310 () Bool)

(declare-fun e!1375027 () Bool)

(declare-fun call!128998 () Bool)

(assert (=> b!2150310 (= e!1375027 call!128998)))

(declare-fun b!2150311 () Bool)

(declare-fun e!1375029 () Bool)

(declare-fun lt!800721 () (_ BitVec 64))

(declare-datatypes ((Option!4986 0))(
  ( (None!4985) (Some!4985 (v!29212 tuple2!24476)) )
))
(declare-fun isDefined!4094 (Option!4986) Bool)

(declare-fun getPair!14 (List!24730 tuple3!3642) Option!4986)

(declare-fun apply!6023 (MutLongMap!2880 (_ BitVec 64)) List!24730)

(assert (=> b!2150311 (= e!1375029 (isDefined!4094 (getPair!14 (apply!6023 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721) (tuple3!3643 z!514 from!952 lastNullablePos!91))))))

(declare-fun bm!128992 () Bool)

(declare-datatypes ((tuple2!24478 0))(
  ( (tuple2!24479 (_1!14531 (_ BitVec 64)) (_2!14531 List!24730)) )
))
(declare-datatypes ((List!24731 0))(
  ( (Nil!24647) (Cons!24647 (h!30048 tuple2!24478) (t!197277 List!24731)) )
))
(declare-datatypes ((ListLongMap!253 0))(
  ( (ListLongMap!254 (toList!1107 List!24731)) )
))
(declare-fun call!129002 () ListLongMap!253)

(declare-fun map!4961 (MutLongMap!2880) ListLongMap!253)

(assert (=> bm!128992 (= call!129002 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110)))))))

(declare-fun lt!800715 () Bool)

(declare-fun d!645623 () Bool)

(declare-fun contains!4219 (ListMap!697 tuple3!3642) Bool)

(assert (=> d!645623 (= lt!800715 (contains!4219 (map!4960 (cache!3175 thiss!29110)) (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645623 (= lt!800715 e!1375029)))

(declare-fun res!927376 () Bool)

(assert (=> d!645623 (=> (not res!927376) (not e!1375029))))

(declare-fun contains!4220 (MutLongMap!2880 (_ BitVec 64)) Bool)

(assert (=> d!645623 (= res!927376 (contains!4220 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721))))

(declare-datatypes ((Unit!37818 0))(
  ( (Unit!37819) )
))
(declare-fun lt!800714 () Unit!37818)

(declare-fun e!1375031 () Unit!37818)

(assert (=> d!645623 (= lt!800714 e!1375031)))

(declare-fun c!341160 () Bool)

(declare-fun extractMap!77 (List!24731) ListMap!697)

(assert (=> d!645623 (= c!341160 (contains!4219 (extractMap!77 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110)))))) (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(declare-fun lt!800709 () Unit!37818)

(declare-fun e!1375028 () Unit!37818)

(assert (=> d!645623 (= lt!800709 e!1375028)))

(declare-fun c!341159 () Bool)

(assert (=> d!645623 (= c!341159 (contains!4220 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721))))

(declare-fun hash!549 (Hashable!2794 tuple3!3642) (_ BitVec 64))

(assert (=> d!645623 (= lt!800721 (hash!549 (hashF!4717 (cache!3175 thiss!29110)) (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645623 (valid!2223 (cache!3175 thiss!29110))))

(assert (=> d!645623 (= (contains!4218 (cache!3175 thiss!29110) (tuple3!3643 z!514 from!952 lastNullablePos!91)) lt!800715)))

(declare-fun bm!128993 () Bool)

(declare-fun call!128999 () Option!4986)

(assert (=> bm!128993 (= call!128998 (isDefined!4094 call!128999))))

(declare-fun b!2150312 () Bool)

(assert (=> b!2150312 false))

(declare-fun lt!800722 () Unit!37818)

(declare-fun lt!800723 () Unit!37818)

(assert (=> b!2150312 (= lt!800722 lt!800723)))

(declare-fun lt!800720 () ListLongMap!253)

(assert (=> b!2150312 (contains!4219 (extractMap!77 (toList!1107 lt!800720)) (tuple3!3643 z!514 from!952 lastNullablePos!91))))

(declare-fun lemmaInLongMapThenInGenericMap!14 (ListLongMap!253 tuple3!3642 Hashable!2794) Unit!37818)

(assert (=> b!2150312 (= lt!800723 (lemmaInLongMapThenInGenericMap!14 lt!800720 (tuple3!3643 z!514 from!952 lastNullablePos!91) (hashF!4717 (cache!3175 thiss!29110))))))

(assert (=> b!2150312 (= lt!800720 call!129002)))

(declare-fun e!1375025 () Unit!37818)

(declare-fun Unit!37820 () Unit!37818)

(assert (=> b!2150312 (= e!1375025 Unit!37820)))

(declare-fun b!2150313 () Bool)

(assert (=> b!2150313 false))

(declare-fun lt!800711 () Unit!37818)

(declare-fun lt!800707 () Unit!37818)

(assert (=> b!2150313 (= lt!800711 lt!800707)))

(declare-fun lt!800724 () List!24731)

(declare-fun lt!800726 () List!24730)

(declare-fun contains!4221 (List!24731 tuple2!24478) Bool)

(assert (=> b!2150313 (contains!4221 lt!800724 (tuple2!24479 lt!800721 lt!800726))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!15 (List!24731 (_ BitVec 64) List!24730) Unit!37818)

(assert (=> b!2150313 (= lt!800707 (lemmaGetValueByKeyImpliesContainsTuple!15 lt!800724 lt!800721 lt!800726))))

(assert (=> b!2150313 (= lt!800726 (apply!6023 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721))))

(assert (=> b!2150313 (= lt!800724 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))

(declare-fun lt!800718 () Unit!37818)

(declare-fun lt!800717 () Unit!37818)

(assert (=> b!2150313 (= lt!800718 lt!800717)))

(declare-fun lt!800725 () List!24731)

(declare-datatypes ((Option!4987 0))(
  ( (None!4986) (Some!4986 (v!29213 List!24730)) )
))
(declare-fun isDefined!4095 (Option!4987) Bool)

(declare-fun getValueByKey!49 (List!24731 (_ BitVec 64)) Option!4987)

(assert (=> b!2150313 (isDefined!4095 (getValueByKey!49 lt!800725 lt!800721))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!31 (List!24731 (_ BitVec 64)) Unit!37818)

(assert (=> b!2150313 (= lt!800717 (lemmaContainsKeyImpliesGetValueByKeyDefined!31 lt!800725 lt!800721))))

(assert (=> b!2150313 (= lt!800725 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))

(declare-fun lt!800712 () Unit!37818)

(declare-fun lt!800713 () Unit!37818)

(assert (=> b!2150313 (= lt!800712 lt!800713)))

(declare-fun lt!800708 () List!24731)

(declare-fun containsKey!50 (List!24731 (_ BitVec 64)) Bool)

(assert (=> b!2150313 (containsKey!50 lt!800708 lt!800721)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!15 (List!24731 (_ BitVec 64)) Unit!37818)

(assert (=> b!2150313 (= lt!800713 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!15 lt!800708 lt!800721))))

(assert (=> b!2150313 (= lt!800708 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))

(declare-fun e!1375026 () Unit!37818)

(declare-fun Unit!37821 () Unit!37818)

(assert (=> b!2150313 (= e!1375026 Unit!37821)))

(declare-fun lt!800710 () ListLongMap!253)

(declare-fun bm!128994 () Bool)

(declare-fun call!128997 () Bool)

(declare-fun call!129001 () (_ BitVec 64))

(declare-fun contains!4222 (ListLongMap!253 (_ BitVec 64)) Bool)

(assert (=> bm!128994 (= call!128997 (contains!4222 (ite c!341160 lt!800710 call!129002) call!129001))))

(declare-fun b!2150314 () Bool)

(declare-fun lt!800719 () Unit!37818)

(assert (=> b!2150314 (= e!1375031 lt!800719)))

(assert (=> b!2150314 (= lt!800710 call!129002)))

(declare-fun lemmaInGenericMapThenInLongMap!14 (ListLongMap!253 tuple3!3642 Hashable!2794) Unit!37818)

(assert (=> b!2150314 (= lt!800719 (lemmaInGenericMapThenInLongMap!14 lt!800710 (tuple3!3643 z!514 from!952 lastNullablePos!91) (hashF!4717 (cache!3175 thiss!29110))))))

(declare-fun res!927377 () Bool)

(assert (=> b!2150314 (= res!927377 call!128997)))

(declare-fun e!1375030 () Bool)

(assert (=> b!2150314 (=> (not res!927377) (not e!1375030))))

(assert (=> b!2150314 e!1375030))

(declare-fun lambda!80854 () Int)

(declare-fun b!2150315 () Bool)

(declare-fun forallContained!761 (List!24731 Int tuple2!24478) Unit!37818)

(assert (=> b!2150315 (= e!1375028 (forallContained!761 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))) lambda!80854 (tuple2!24479 lt!800721 (apply!6023 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721))))))

(declare-fun c!341162 () Bool)

(assert (=> b!2150315 (= c!341162 (not (contains!4221 (toList!1107 (map!4961 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))) (tuple2!24479 lt!800721 (apply!6023 (v!29211 (underlying!5956 (cache!3175 thiss!29110))) lt!800721)))))))

(declare-fun lt!800716 () Unit!37818)

(assert (=> b!2150315 (= lt!800716 e!1375026)))

(declare-fun b!2150316 () Bool)

(declare-fun Unit!37822 () Unit!37818)

(assert (=> b!2150316 (= e!1375026 Unit!37822)))

(declare-fun call!129000 () List!24730)

(declare-fun bm!128995 () Bool)

(assert (=> bm!128995 (= call!128999 (getPair!14 call!129000 (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150317 () Bool)

(declare-fun Unit!37823 () Unit!37818)

(assert (=> b!2150317 (= e!1375025 Unit!37823)))

(declare-fun b!2150318 () Bool)

(declare-fun Unit!37824 () Unit!37818)

(assert (=> b!2150318 (= e!1375028 Unit!37824)))

(declare-fun b!2150319 () Bool)

(assert (=> b!2150319 (= e!1375031 e!1375025)))

(declare-fun res!927378 () Bool)

(assert (=> b!2150319 (= res!927378 call!128997)))

(assert (=> b!2150319 (=> (not res!927378) (not e!1375027))))

(declare-fun c!341161 () Bool)

(assert (=> b!2150319 (= c!341161 e!1375027)))

(declare-fun bm!128996 () Bool)

(assert (=> bm!128996 (= call!129001 (hash!549 (hashF!4717 (cache!3175 thiss!29110)) (tuple3!3643 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150320 () Bool)

(assert (=> b!2150320 (= e!1375030 call!128998)))

(declare-fun bm!128997 () Bool)

(declare-fun apply!6024 (ListLongMap!253 (_ BitVec 64)) List!24730)

(assert (=> bm!128997 (= call!129000 (apply!6024 (ite c!341160 lt!800710 call!129002) call!129001))))

(assert (= (and d!645623 c!341159) b!2150315))

(assert (= (and d!645623 (not c!341159)) b!2150318))

(assert (= (and b!2150315 c!341162) b!2150313))

(assert (= (and b!2150315 (not c!341162)) b!2150316))

(assert (= (and d!645623 c!341160) b!2150314))

(assert (= (and d!645623 (not c!341160)) b!2150319))

(assert (= (and b!2150314 res!927377) b!2150320))

(assert (= (and b!2150319 res!927378) b!2150310))

(assert (= (and b!2150319 c!341161) b!2150312))

(assert (= (and b!2150319 (not c!341161)) b!2150317))

(assert (= (or b!2150314 b!2150320 b!2150319 b!2150310) bm!128996))

(assert (= (or b!2150314 b!2150319 b!2150310 b!2150312) bm!128992))

(assert (= (or b!2150314 b!2150319) bm!128994))

(assert (= (or b!2150320 b!2150310) bm!128997))

(assert (= (or b!2150320 b!2150310) bm!128995))

(assert (= (or b!2150320 b!2150310) bm!128993))

(assert (= (and d!645623 res!927376) b!2150311))

(declare-fun m!2593069 () Bool)

(assert (=> bm!128997 m!2593069))

(declare-fun m!2593071 () Bool)

(assert (=> bm!128993 m!2593071))

(declare-fun m!2593073 () Bool)

(assert (=> b!2150313 m!2593073))

(assert (=> b!2150313 m!2593073))

(declare-fun m!2593075 () Bool)

(assert (=> b!2150313 m!2593075))

(declare-fun m!2593077 () Bool)

(assert (=> b!2150313 m!2593077))

(declare-fun m!2593079 () Bool)

(assert (=> b!2150313 m!2593079))

(declare-fun m!2593081 () Bool)

(assert (=> b!2150313 m!2593081))

(declare-fun m!2593083 () Bool)

(assert (=> b!2150313 m!2593083))

(declare-fun m!2593085 () Bool)

(assert (=> b!2150313 m!2593085))

(declare-fun m!2593087 () Bool)

(assert (=> b!2150313 m!2593087))

(declare-fun m!2593089 () Bool)

(assert (=> b!2150313 m!2593089))

(declare-fun m!2593091 () Bool)

(assert (=> bm!128994 m!2593091))

(declare-fun m!2593093 () Bool)

(assert (=> b!2150314 m!2593093))

(assert (=> b!2150315 m!2593079))

(assert (=> b!2150315 m!2593077))

(declare-fun m!2593095 () Bool)

(assert (=> b!2150315 m!2593095))

(declare-fun m!2593097 () Bool)

(assert (=> b!2150315 m!2593097))

(declare-fun m!2593099 () Bool)

(assert (=> bm!128995 m!2593099))

(declare-fun m!2593101 () Bool)

(assert (=> d!645623 m!2593101))

(assert (=> d!645623 m!2593059))

(declare-fun m!2593103 () Bool)

(assert (=> d!645623 m!2593103))

(assert (=> d!645623 m!2593079))

(declare-fun m!2593105 () Bool)

(assert (=> d!645623 m!2593105))

(declare-fun m!2593107 () Bool)

(assert (=> d!645623 m!2593107))

(declare-fun m!2593109 () Bool)

(assert (=> d!645623 m!2593109))

(assert (=> d!645623 m!2593057))

(assert (=> d!645623 m!2593107))

(assert (=> d!645623 m!2593059))

(assert (=> b!2150311 m!2593077))

(assert (=> b!2150311 m!2593077))

(declare-fun m!2593111 () Bool)

(assert (=> b!2150311 m!2593111))

(assert (=> b!2150311 m!2593111))

(declare-fun m!2593113 () Bool)

(assert (=> b!2150311 m!2593113))

(assert (=> bm!128996 m!2593105))

(declare-fun m!2593115 () Bool)

(assert (=> b!2150312 m!2593115))

(assert (=> b!2150312 m!2593115))

(declare-fun m!2593117 () Bool)

(assert (=> b!2150312 m!2593117))

(declare-fun m!2593119 () Bool)

(assert (=> b!2150312 m!2593119))

(assert (=> bm!128992 m!2593079))

(assert (=> b!2150264 d!645623))

(declare-fun bs!445579 () Bool)

(declare-fun b!2150322 () Bool)

(assert (= bs!445579 (and b!2150322 b!2150276)))

(declare-fun lambda!80855 () Int)

(assert (=> bs!445579 (= (= localTotalInput!13 (totalInput!3248 thiss!29110)) (= lambda!80855 lambda!80851))))

(assert (=> b!2150322 true))

(declare-fun d!645625 () Bool)

(declare-fun res!927379 () Bool)

(declare-fun e!1375032 () Bool)

(assert (=> d!645625 (=> (not res!927379) (not e!1375032))))

(assert (=> d!645625 (= res!927379 (valid!2223 (cache!3175 thiss!29110)))))

(assert (=> d!645625 (= (validCacheMapFurthestNullable!149 (cache!3175 thiss!29110) localTotalInput!13) e!1375032)))

(declare-fun b!2150321 () Bool)

(declare-fun res!927380 () Bool)

(assert (=> b!2150321 (=> (not res!927380) (not e!1375032))))

(assert (=> b!2150321 (= res!927380 (invariantList!322 (toList!1106 (map!4960 (cache!3175 thiss!29110)))))))

(assert (=> b!2150322 (= e!1375032 (forall!5027 (toList!1106 (map!4960 (cache!3175 thiss!29110))) lambda!80855))))

(assert (= (and d!645625 res!927379) b!2150321))

(assert (= (and b!2150321 res!927380) b!2150322))

(assert (=> d!645625 m!2593057))

(assert (=> b!2150321 m!2593059))

(assert (=> b!2150321 m!2593061))

(assert (=> b!2150322 m!2593059))

(declare-fun m!2593121 () Bool)

(assert (=> b!2150322 m!2593121))

(assert (=> b!2150264 d!645625))

(declare-fun d!645627 () Bool)

(declare-fun lambda!80858 () Int)

(declare-fun exists!731 ((InoxSet Context!2850) Int) Bool)

(assert (=> d!645627 (= (nullableZipper!192 z!514) (exists!731 z!514 lambda!80858))))

(declare-fun bs!445580 () Bool)

(assert (= bs!445580 d!645627))

(declare-fun m!2593123 () Bool)

(assert (=> bs!445580 m!2593123))

(assert (=> b!2150268 d!645627))

(declare-fun d!645629 () Bool)

(declare-fun lambda!80861 () Int)

(declare-fun forall!5028 (List!24728 Int) Bool)

(assert (=> d!645629 (= (inv!32468 setElem!17134) (forall!5028 (exprs!1925 setElem!17134) lambda!80861))))

(declare-fun bs!445581 () Bool)

(assert (= bs!445581 d!645629))

(declare-fun m!2593125 () Bool)

(assert (=> bs!445581 m!2593125))

(assert (=> setNonEmpty!17134 d!645629))

(declare-fun d!645631 () Bool)

(declare-fun res!927383 () Bool)

(declare-fun e!1375035 () Bool)

(assert (=> d!645631 (=> (not res!927383) (not e!1375035))))

(assert (=> d!645631 (= res!927383 ((_ is HashMap!2794) (cache!3175 thiss!29110)))))

(assert (=> d!645631 (= (inv!32471 thiss!29110) e!1375035)))

(declare-fun b!2150325 () Bool)

(assert (=> b!2150325 (= e!1375035 (validCacheMapFurthestNullable!149 (cache!3175 thiss!29110) (totalInput!3248 thiss!29110)))))

(assert (= (and d!645631 res!927383) b!2150325))

(assert (=> b!2150325 m!2593038))

(assert (=> start!208562 d!645631))

(declare-fun d!645633 () Bool)

(declare-fun isBalanced!2477 (Conc!7991) Bool)

(assert (=> d!645633 (= (inv!32470 localTotalInput!13) (isBalanced!2477 (c!341147 localTotalInput!13)))))

(declare-fun bs!445582 () Bool)

(assert (= bs!445582 d!645633))

(declare-fun m!2593127 () Bool)

(assert (=> bs!445582 m!2593127))

(assert (=> start!208562 d!645633))

(declare-fun d!645635 () Bool)

(assert (=> d!645635 (= (inv!32470 (totalInput!3248 thiss!29110)) (isBalanced!2477 (c!341147 (totalInput!3248 thiss!29110))))))

(declare-fun bs!445583 () Bool)

(assert (= bs!445583 d!645635))

(declare-fun m!2593129 () Bool)

(assert (=> bs!445583 m!2593129))

(assert (=> b!2150266 d!645635))

(declare-fun d!645637 () Bool)

(declare-fun c!341165 () Bool)

(assert (=> d!645637 (= c!341165 ((_ is Node!7991) (c!341147 (totalInput!3248 thiss!29110))))))

(declare-fun e!1375036 () Bool)

(assert (=> d!645637 (= (inv!32469 (c!341147 (totalInput!3248 thiss!29110))) e!1375036)))

(declare-fun b!2150326 () Bool)

(assert (=> b!2150326 (= e!1375036 (inv!32472 (c!341147 (totalInput!3248 thiss!29110))))))

(declare-fun b!2150327 () Bool)

(declare-fun e!1375037 () Bool)

(assert (=> b!2150327 (= e!1375036 e!1375037)))

(declare-fun res!927384 () Bool)

(assert (=> b!2150327 (= res!927384 (not ((_ is Leaf!11686) (c!341147 (totalInput!3248 thiss!29110)))))))

(assert (=> b!2150327 (=> res!927384 e!1375037)))

(declare-fun b!2150328 () Bool)

(assert (=> b!2150328 (= e!1375037 (inv!32473 (c!341147 (totalInput!3248 thiss!29110))))))

(assert (= (and d!645637 c!341165) b!2150326))

(assert (= (and d!645637 (not c!341165)) b!2150327))

(assert (= (and b!2150327 (not res!927384)) b!2150328))

(declare-fun m!2593131 () Bool)

(assert (=> b!2150326 m!2593131))

(declare-fun m!2593133 () Bool)

(assert (=> b!2150328 m!2593133))

(assert (=> b!2150270 d!645637))

(declare-fun d!645639 () Bool)

(assert (=> d!645639 (= (array_inv!3124 (_keys!3177 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) (bvsge (size!19308 (_keys!3177 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150262 d!645639))

(declare-fun d!645641 () Bool)

(assert (=> d!645641 (= (array_inv!3125 (_values!3160 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) (bvsge (size!19309 (_values!3160 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150262 d!645641))

(declare-fun b!2150335 () Bool)

(declare-fun e!1375043 () Bool)

(declare-fun setRes!17137 () Bool)

(declare-fun tp!667981 () Bool)

(assert (=> b!2150335 (= e!1375043 (and setRes!17137 tp!667981))))

(declare-fun condSetEmpty!17137 () Bool)

(assert (=> b!2150335 (= condSetEmpty!17137 (= (_1!14529 (_1!14530 (h!30047 mapDefault!13637))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun setNonEmpty!17137 () Bool)

(declare-fun tp!667982 () Bool)

(declare-fun setElem!17137 () Context!2850)

(declare-fun e!1375042 () Bool)

(assert (=> setNonEmpty!17137 (= setRes!17137 (and tp!667982 (inv!32468 setElem!17137) e!1375042))))

(declare-fun setRest!17137 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17137 (= (_1!14529 (_1!14530 (h!30047 mapDefault!13637))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17137 true) setRest!17137))))

(declare-fun setIsEmpty!17137 () Bool)

(assert (=> setIsEmpty!17137 setRes!17137))

(assert (=> b!2150260 (= tp!667966 e!1375043)))

(declare-fun b!2150336 () Bool)

(declare-fun tp!667980 () Bool)

(assert (=> b!2150336 (= e!1375042 tp!667980)))

(assert (= (and b!2150335 condSetEmpty!17137) setIsEmpty!17137))

(assert (= (and b!2150335 (not condSetEmpty!17137)) setNonEmpty!17137))

(assert (= setNonEmpty!17137 b!2150336))

(assert (= (and b!2150260 ((_ is Cons!24646) mapDefault!13637)) b!2150335))

(declare-fun m!2593135 () Bool)

(assert (=> setNonEmpty!17137 m!2593135))

(declare-fun e!1375048 () Bool)

(declare-fun tp!667989 () Bool)

(declare-fun b!2150345 () Bool)

(declare-fun tp!667991 () Bool)

(assert (=> b!2150345 (= e!1375048 (and (inv!32469 (left!18929 (c!341147 localTotalInput!13))) tp!667991 (inv!32469 (right!19259 (c!341147 localTotalInput!13))) tp!667989))))

(declare-fun b!2150347 () Bool)

(declare-fun e!1375049 () Bool)

(declare-fun tp!667990 () Bool)

(assert (=> b!2150347 (= e!1375049 tp!667990)))

(declare-fun b!2150346 () Bool)

(declare-fun inv!32474 (IArray!15987) Bool)

(assert (=> b!2150346 (= e!1375048 (and (inv!32474 (xs!10933 (c!341147 localTotalInput!13))) e!1375049))))

(assert (=> b!2150259 (= tp!667965 (and (inv!32469 (c!341147 localTotalInput!13)) e!1375048))))

(assert (= (and b!2150259 ((_ is Node!7991) (c!341147 localTotalInput!13))) b!2150345))

(assert (= b!2150346 b!2150347))

(assert (= (and b!2150259 ((_ is Leaf!11686) (c!341147 localTotalInput!13))) b!2150346))

(declare-fun m!2593137 () Bool)

(assert (=> b!2150345 m!2593137))

(declare-fun m!2593139 () Bool)

(assert (=> b!2150345 m!2593139))

(declare-fun m!2593141 () Bool)

(assert (=> b!2150346 m!2593141))

(assert (=> b!2150259 m!2593044))

(declare-fun condSetEmpty!17140 () Bool)

(assert (=> setNonEmpty!17134 (= condSetEmpty!17140 (= setRest!17134 ((as const (Array Context!2850 Bool)) false)))))

(declare-fun setRes!17140 () Bool)

(assert (=> setNonEmpty!17134 (= tp!667969 setRes!17140)))

(declare-fun setIsEmpty!17140 () Bool)

(assert (=> setIsEmpty!17140 setRes!17140))

(declare-fun e!1375052 () Bool)

(declare-fun setNonEmpty!17140 () Bool)

(declare-fun tp!667996 () Bool)

(declare-fun setElem!17140 () Context!2850)

(assert (=> setNonEmpty!17140 (= setRes!17140 (and tp!667996 (inv!32468 setElem!17140) e!1375052))))

(declare-fun setRest!17140 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17140 (= setRest!17134 ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17140 true) setRest!17140))))

(declare-fun b!2150352 () Bool)

(declare-fun tp!667997 () Bool)

(assert (=> b!2150352 (= e!1375052 tp!667997)))

(assert (= (and setNonEmpty!17134 condSetEmpty!17140) setIsEmpty!17140))

(assert (= (and setNonEmpty!17134 (not condSetEmpty!17140)) setNonEmpty!17140))

(assert (= setNonEmpty!17140 b!2150352))

(declare-fun m!2593143 () Bool)

(assert (=> setNonEmpty!17140 m!2593143))

(declare-fun tp!667998 () Bool)

(declare-fun e!1375053 () Bool)

(declare-fun b!2150353 () Bool)

(declare-fun tp!668000 () Bool)

(assert (=> b!2150353 (= e!1375053 (and (inv!32469 (left!18929 (c!341147 (totalInput!3248 thiss!29110)))) tp!668000 (inv!32469 (right!19259 (c!341147 (totalInput!3248 thiss!29110)))) tp!667998))))

(declare-fun b!2150355 () Bool)

(declare-fun e!1375054 () Bool)

(declare-fun tp!667999 () Bool)

(assert (=> b!2150355 (= e!1375054 tp!667999)))

(declare-fun b!2150354 () Bool)

(assert (=> b!2150354 (= e!1375053 (and (inv!32474 (xs!10933 (c!341147 (totalInput!3248 thiss!29110)))) e!1375054))))

(assert (=> b!2150270 (= tp!667967 (and (inv!32469 (c!341147 (totalInput!3248 thiss!29110))) e!1375053))))

(assert (= (and b!2150270 ((_ is Node!7991) (c!341147 (totalInput!3248 thiss!29110)))) b!2150353))

(assert (= b!2150354 b!2150355))

(assert (= (and b!2150270 ((_ is Leaf!11686) (c!341147 (totalInput!3248 thiss!29110)))) b!2150354))

(declare-fun m!2593145 () Bool)

(assert (=> b!2150353 m!2593145))

(declare-fun m!2593147 () Bool)

(assert (=> b!2150353 m!2593147))

(declare-fun m!2593149 () Bool)

(assert (=> b!2150354 m!2593149))

(assert (=> b!2150270 m!2593048))

(declare-fun b!2150360 () Bool)

(declare-fun e!1375057 () Bool)

(declare-fun tp!668005 () Bool)

(declare-fun tp!668006 () Bool)

(assert (=> b!2150360 (= e!1375057 (and tp!668005 tp!668006))))

(assert (=> b!2150257 (= tp!667963 e!1375057)))

(assert (= (and b!2150257 ((_ is Cons!24644) (exprs!1925 setElem!17134))) b!2150360))

(declare-fun setIsEmpty!17145 () Bool)

(declare-fun setRes!17146 () Bool)

(assert (=> setIsEmpty!17145 setRes!17146))

(declare-fun setNonEmpty!17145 () Bool)

(declare-fun e!1375067 () Bool)

(declare-fun tp!668023 () Bool)

(declare-fun setElem!17145 () Context!2850)

(assert (=> setNonEmpty!17145 (= setRes!17146 (and tp!668023 (inv!32468 setElem!17145) e!1375067))))

(declare-fun mapDefault!13640 () List!24730)

(declare-fun setRest!17146 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17145 (= (_1!14529 (_1!14530 (h!30047 mapDefault!13640))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17145 true) setRest!17146))))

(declare-fun mapIsEmpty!13640 () Bool)

(declare-fun mapRes!13640 () Bool)

(assert (=> mapIsEmpty!13640 mapRes!13640))

(declare-fun setIsEmpty!17146 () Bool)

(declare-fun setRes!17145 () Bool)

(assert (=> setIsEmpty!17146 setRes!17145))

(declare-fun condMapEmpty!13640 () Bool)

(assert (=> mapNonEmpty!13637 (= condMapEmpty!13640 (= mapRest!13637 ((as const (Array (_ BitVec 32) List!24730)) mapDefault!13640)))))

(declare-fun e!1375069 () Bool)

(assert (=> mapNonEmpty!13637 (= tp!667970 (and e!1375069 mapRes!13640))))

(declare-fun b!2150371 () Bool)

(declare-fun e!1375066 () Bool)

(declare-fun tp!668025 () Bool)

(assert (=> b!2150371 (= e!1375066 tp!668025)))

(declare-fun b!2150372 () Bool)

(declare-fun e!1375068 () Bool)

(declare-fun tp!668027 () Bool)

(assert (=> b!2150372 (= e!1375068 (and setRes!17145 tp!668027))))

(declare-fun condSetEmpty!17145 () Bool)

(declare-fun mapValue!13640 () List!24730)

(assert (=> b!2150372 (= condSetEmpty!17145 (= (_1!14529 (_1!14530 (h!30047 mapValue!13640))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun b!2150373 () Bool)

(declare-fun tp!668024 () Bool)

(assert (=> b!2150373 (= e!1375069 (and setRes!17146 tp!668024))))

(declare-fun condSetEmpty!17146 () Bool)

(assert (=> b!2150373 (= condSetEmpty!17146 (= (_1!14529 (_1!14530 (h!30047 mapDefault!13640))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun mapNonEmpty!13640 () Bool)

(declare-fun tp!668026 () Bool)

(assert (=> mapNonEmpty!13640 (= mapRes!13640 (and tp!668026 e!1375068))))

(declare-fun mapRest!13640 () (Array (_ BitVec 32) List!24730))

(declare-fun mapKey!13640 () (_ BitVec 32))

(assert (=> mapNonEmpty!13640 (= mapRest!13637 (store mapRest!13640 mapKey!13640 mapValue!13640))))

(declare-fun setElem!17146 () Context!2850)

(declare-fun tp!668021 () Bool)

(declare-fun setNonEmpty!17146 () Bool)

(assert (=> setNonEmpty!17146 (= setRes!17145 (and tp!668021 (inv!32468 setElem!17146) e!1375066))))

(declare-fun setRest!17145 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17146 (= (_1!14529 (_1!14530 (h!30047 mapValue!13640))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17146 true) setRest!17145))))

(declare-fun b!2150374 () Bool)

(declare-fun tp!668022 () Bool)

(assert (=> b!2150374 (= e!1375067 tp!668022)))

(assert (= (and mapNonEmpty!13637 condMapEmpty!13640) mapIsEmpty!13640))

(assert (= (and mapNonEmpty!13637 (not condMapEmpty!13640)) mapNonEmpty!13640))

(assert (= (and b!2150372 condSetEmpty!17145) setIsEmpty!17146))

(assert (= (and b!2150372 (not condSetEmpty!17145)) setNonEmpty!17146))

(assert (= setNonEmpty!17146 b!2150371))

(assert (= (and mapNonEmpty!13640 ((_ is Cons!24646) mapValue!13640)) b!2150372))

(assert (= (and b!2150373 condSetEmpty!17146) setIsEmpty!17145))

(assert (= (and b!2150373 (not condSetEmpty!17146)) setNonEmpty!17145))

(assert (= setNonEmpty!17145 b!2150374))

(assert (= (and mapNonEmpty!13637 ((_ is Cons!24646) mapDefault!13640)) b!2150373))

(declare-fun m!2593151 () Bool)

(assert (=> setNonEmpty!17145 m!2593151))

(declare-fun m!2593153 () Bool)

(assert (=> mapNonEmpty!13640 m!2593153))

(declare-fun m!2593155 () Bool)

(assert (=> setNonEmpty!17146 m!2593155))

(declare-fun b!2150375 () Bool)

(declare-fun e!1375071 () Bool)

(declare-fun setRes!17147 () Bool)

(declare-fun tp!668029 () Bool)

(assert (=> b!2150375 (= e!1375071 (and setRes!17147 tp!668029))))

(declare-fun condSetEmpty!17147 () Bool)

(assert (=> b!2150375 (= condSetEmpty!17147 (= (_1!14529 (_1!14530 (h!30047 mapValue!13637))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun setNonEmpty!17147 () Bool)

(declare-fun e!1375070 () Bool)

(declare-fun setElem!17147 () Context!2850)

(declare-fun tp!668030 () Bool)

(assert (=> setNonEmpty!17147 (= setRes!17147 (and tp!668030 (inv!32468 setElem!17147) e!1375070))))

(declare-fun setRest!17147 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17147 (= (_1!14529 (_1!14530 (h!30047 mapValue!13637))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17147 true) setRest!17147))))

(declare-fun setIsEmpty!17147 () Bool)

(assert (=> setIsEmpty!17147 setRes!17147))

(assert (=> mapNonEmpty!13637 (= tp!667971 e!1375071)))

(declare-fun b!2150376 () Bool)

(declare-fun tp!668028 () Bool)

(assert (=> b!2150376 (= e!1375070 tp!668028)))

(assert (= (and b!2150375 condSetEmpty!17147) setIsEmpty!17147))

(assert (= (and b!2150375 (not condSetEmpty!17147)) setNonEmpty!17147))

(assert (= setNonEmpty!17147 b!2150376))

(assert (= (and mapNonEmpty!13637 ((_ is Cons!24646) mapValue!13637)) b!2150375))

(declare-fun m!2593157 () Bool)

(assert (=> setNonEmpty!17147 m!2593157))

(declare-fun b!2150377 () Bool)

(declare-fun e!1375073 () Bool)

(declare-fun setRes!17148 () Bool)

(declare-fun tp!668032 () Bool)

(assert (=> b!2150377 (= e!1375073 (and setRes!17148 tp!668032))))

(declare-fun condSetEmpty!17148 () Bool)

(assert (=> b!2150377 (= condSetEmpty!17148 (= (_1!14529 (_1!14530 (h!30047 (zeroValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun tp!668033 () Bool)

(declare-fun setElem!17148 () Context!2850)

(declare-fun setNonEmpty!17148 () Bool)

(declare-fun e!1375072 () Bool)

(assert (=> setNonEmpty!17148 (= setRes!17148 (and tp!668033 (inv!32468 setElem!17148) e!1375072))))

(declare-fun setRest!17148 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17148 (= (_1!14529 (_1!14530 (h!30047 (zeroValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17148 true) setRest!17148))))

(declare-fun setIsEmpty!17148 () Bool)

(assert (=> setIsEmpty!17148 setRes!17148))

(assert (=> b!2150262 (= tp!667968 e!1375073)))

(declare-fun b!2150378 () Bool)

(declare-fun tp!668031 () Bool)

(assert (=> b!2150378 (= e!1375072 tp!668031)))

(assert (= (and b!2150377 condSetEmpty!17148) setIsEmpty!17148))

(assert (= (and b!2150377 (not condSetEmpty!17148)) setNonEmpty!17148))

(assert (= setNonEmpty!17148 b!2150378))

(assert (= (and b!2150262 ((_ is Cons!24646) (zeroValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110)))))))) b!2150377))

(declare-fun m!2593159 () Bool)

(assert (=> setNonEmpty!17148 m!2593159))

(declare-fun b!2150379 () Bool)

(declare-fun e!1375075 () Bool)

(declare-fun setRes!17149 () Bool)

(declare-fun tp!668035 () Bool)

(assert (=> b!2150379 (= e!1375075 (and setRes!17149 tp!668035))))

(declare-fun condSetEmpty!17149 () Bool)

(assert (=> b!2150379 (= condSetEmpty!17149 (= (_1!14529 (_1!14530 (h!30047 (minValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))) ((as const (Array Context!2850 Bool)) false)))))

(declare-fun tp!668036 () Bool)

(declare-fun setNonEmpty!17149 () Bool)

(declare-fun setElem!17149 () Context!2850)

(declare-fun e!1375074 () Bool)

(assert (=> setNonEmpty!17149 (= setRes!17149 (and tp!668036 (inv!32468 setElem!17149) e!1375074))))

(declare-fun setRest!17149 () (InoxSet Context!2850))

(assert (=> setNonEmpty!17149 (= (_1!14529 (_1!14530 (h!30047 (minValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2850 Bool)) false) setElem!17149 true) setRest!17149))))

(declare-fun setIsEmpty!17149 () Bool)

(assert (=> setIsEmpty!17149 setRes!17149))

(assert (=> b!2150262 (= tp!667973 e!1375075)))

(declare-fun b!2150380 () Bool)

(declare-fun tp!668034 () Bool)

(assert (=> b!2150380 (= e!1375074 tp!668034)))

(assert (= (and b!2150379 condSetEmpty!17149) setIsEmpty!17149))

(assert (= (and b!2150379 (not condSetEmpty!17149)) setNonEmpty!17149))

(assert (= setNonEmpty!17149 b!2150380))

(assert (= (and b!2150262 ((_ is Cons!24646) (minValue!3138 (v!29210 (underlying!5955 (v!29211 (underlying!5956 (cache!3175 thiss!29110)))))))) b!2150379))

(declare-fun m!2593161 () Bool)

(assert (=> setNonEmpty!17149 m!2593161))

(check-sat (not b!2150380) (not bm!128996) (not b!2150372) (not b!2150378) (not b!2150373) (not setNonEmpty!17148) (not d!645629) (not b!2150312) (not b!2150354) (not d!645627) (not bm!128995) (not d!645623) (not b!2150322) (not b!2150377) (not b!2150259) (not b!2150311) (not b!2150371) (not b!2150328) (not b!2150375) (not mapNonEmpty!13640) (not b!2150276) (not bm!128997) (not setNonEmpty!17145) b_and!173121 (not b!2150325) (not setNonEmpty!17146) (not b!2150355) (not b!2150360) (not d!645635) (not bm!128993) (not bm!128992) (not b!2150287) (not b_next!64213) (not b!2150336) (not b!2150345) (not b!2150379) (not b!2150275) (not b!2150335) (not b!2150313) (not setNonEmpty!17137) (not bm!128994) (not b!2150326) b_and!173123 (not b!2150347) (not b!2150285) (not b!2150314) (not setNonEmpty!17140) (not b!2150321) (not b!2150270) (not b!2150346) (not b!2150352) (not b!2150353) (not b_next!64215) (not setNonEmpty!17149) (not d!645625) (not b!2150374) (not d!645619) (not b!2150376) (not d!645633) (not setNonEmpty!17147) (not b!2150315))
(check-sat b_and!173121 b_and!173123 (not b_next!64215) (not b_next!64213))
