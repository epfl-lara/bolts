; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209164 () Bool)

(assert start!209164)

(declare-fun b!2156133 () Bool)

(declare-fun b_free!63685 () Bool)

(declare-fun b_next!64389 () Bool)

(assert (=> b!2156133 (= b_free!63685 (not b_next!64389))))

(declare-fun tp!671314 () Bool)

(declare-fun b_and!173301 () Bool)

(assert (=> b!2156133 (= tp!671314 b_and!173301)))

(declare-fun b!2156132 () Bool)

(declare-fun b_free!63687 () Bool)

(declare-fun b_next!64391 () Bool)

(assert (=> b!2156132 (= b_free!63687 (not b_next!64391))))

(declare-fun tp!671311 () Bool)

(declare-fun b_and!173303 () Bool)

(assert (=> b!2156132 (= tp!671311 b_and!173303)))

(declare-fun b!2156129 () Bool)

(assert (=> b!2156129 true))

(declare-fun bs!445862 () Bool)

(declare-fun b!2156141 () Bool)

(assert (= bs!445862 (and b!2156141 b!2156129)))

(declare-fun lambda!81359 () Int)

(declare-fun lambda!81358 () Int)

(assert (=> bs!445862 (not (= lambda!81359 lambda!81358))))

(assert (=> b!2156141 true))

(declare-fun b!2156128 () Bool)

(declare-fun e!1379189 () Bool)

(declare-datatypes ((C!11992 0))(
  ( (C!11993 (val!6982 Int)) )
))
(declare-datatypes ((Regex!5923 0))(
  ( (ElementMatch!5923 (c!341539 C!11992)) (Concat!10225 (regOne!12358 Regex!5923) (regTwo!12358 Regex!5923)) (EmptyExpr!5923) (Star!5923 (reg!6252 Regex!5923)) (EmptyLang!5923) (Union!5923 (regOne!12359 Regex!5923) (regTwo!12359 Regex!5923)) )
))
(declare-datatypes ((List!24965 0))(
  ( (Nil!24881) (Cons!24881 (h!30282 Regex!5923) (t!197513 List!24965)) )
))
(declare-datatypes ((List!24966 0))(
  ( (Nil!24882) (Cons!24882 (h!30283 C!11992) (t!197514 List!24966)) )
))
(declare-datatypes ((IArray!16123 0))(
  ( (IArray!16124 (innerList!8119 List!24966)) )
))
(declare-datatypes ((Conc!8059 0))(
  ( (Node!8059 (left!19151 Conc!8059) (right!19481 Conc!8059) (csize!16348 Int) (cheight!8270 Int)) (Leaf!11788 (xs!11001 IArray!16123) (csize!16349 Int)) (Empty!8059) )
))
(declare-datatypes ((Context!2986 0))(
  ( (Context!2987 (exprs!1993 List!24965)) )
))
(declare-datatypes ((BalanceConc!15880 0))(
  ( (BalanceConc!15881 (c!341540 Conc!8059)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!376 0))(
  ( (StackFrame!377 (z!5999 (InoxSet Context!2986)) (from!2840 Int) (lastNullablePos!527 Int) (res!929469 Int) (totalInput!3357 BalanceConc!15880)) )
))
(declare-datatypes ((List!24967 0))(
  ( (Nil!24883) (Cons!24883 (h!30284 StackFrame!376) (t!197515 List!24967)) )
))
(declare-fun stack!12 () List!24967)

(declare-fun totalInput!880 () BalanceConc!15880)

(declare-fun size!19440 (BalanceConc!15880) Int)

(assert (=> b!2156128 (= e!1379189 (> (from!2840 (h!30284 stack!12)) (size!19440 totalInput!880)))))

(declare-fun res!929462 () Bool)

(declare-fun e!1379190 () Bool)

(assert (=> start!209164 (=> (not res!929462) (not e!1379190))))

(declare-datatypes ((tuple3!3730 0))(
  ( (tuple3!3731 (_1!14629 (InoxSet Context!2986)) (_2!14629 Int) (_3!2335 Int)) )
))
(declare-datatypes ((tuple2!24588 0))(
  ( (tuple2!24589 (_1!14630 tuple3!3730) (_2!14630 Int)) )
))
(declare-datatypes ((List!24968 0))(
  ( (Nil!24884) (Cons!24884 (h!30285 tuple2!24588) (t!197516 List!24968)) )
))
(declare-datatypes ((array!9961 0))(
  ( (array!9962 (arr!4444 (Array (_ BitVec 32) (_ BitVec 64))) (size!19441 (_ BitVec 32))) )
))
(declare-datatypes ((array!9963 0))(
  ( (array!9964 (arr!4445 (Array (_ BitVec 32) List!24968)) (size!19442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5848 0))(
  ( (LongMapFixedSize!5849 (defaultEntry!3289 Int) (mask!7201 (_ BitVec 32)) (extraKeys!3172 (_ BitVec 32)) (zeroValue!3182 List!24968) (minValue!3182 List!24968) (_size!5899 (_ BitVec 32)) (_keys!3221 array!9961) (_values!3204 array!9963) (_vacant!2985 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11521 0))(
  ( (Cell!11522 (v!29311 LongMapFixedSize!5848)) )
))
(declare-datatypes ((Hashable!2838 0))(
  ( (HashableExt!2837 (__x!16948 Int)) )
))
(declare-datatypes ((MutLongMap!2924 0))(
  ( (LongMap!2924 (underlying!6043 Cell!11521)) (MutLongMapExt!2923 (__x!16949 Int)) )
))
(declare-datatypes ((Cell!11523 0))(
  ( (Cell!11524 (v!29312 MutLongMap!2924)) )
))
(declare-datatypes ((MutableMap!2838 0))(
  ( (MutableMapExt!2837 (__x!16950 Int)) (HashMap!2838 (underlying!6044 Cell!11523) (hashF!4761 Hashable!2838) (_size!5900 (_ BitVec 32)) (defaultValue!3000 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1034 0))(
  ( (CacheFurthestNullable!1035 (cache!3219 MutableMap!2838) (totalInput!3358 BalanceConc!15880)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1034)

(declare-fun valid!2257 (CacheFurthestNullable!1034) Bool)

(assert (=> start!209164 (= res!929462 (valid!2257 cacheFurthestNullable!118))))

(assert (=> start!209164 e!1379190))

(declare-fun e!1379183 () Bool)

(declare-fun inv!32897 (CacheFurthestNullable!1034) Bool)

(assert (=> start!209164 (and (inv!32897 cacheFurthestNullable!118) e!1379183)))

(assert (=> start!209164 true))

(declare-fun e!1379182 () Bool)

(declare-fun inv!32898 (BalanceConc!15880) Bool)

(assert (=> start!209164 (and (inv!32898 totalInput!880) e!1379182)))

(declare-fun e!1379186 () Bool)

(assert (=> start!209164 e!1379186))

(declare-fun res!929468 () Bool)

(assert (=> b!2156129 (=> (not res!929468) (not e!1379190))))

(declare-fun forall!5111 (List!24967 Int) Bool)

(assert (=> b!2156129 (= res!929468 (forall!5111 stack!12 lambda!81358))))

(declare-fun b!2156130 () Bool)

(declare-fun tp!671315 () Bool)

(declare-fun inv!32899 (Conc!8059) Bool)

(assert (=> b!2156130 (= e!1379182 (and (inv!32899 (c!341540 totalInput!880)) tp!671315))))

(declare-fun setIsEmpty!17656 () Bool)

(declare-fun setRes!17656 () Bool)

(assert (=> setIsEmpty!17656 setRes!17656))

(declare-fun b!2156131 () Bool)

(declare-fun e!1379195 () Bool)

(declare-fun e!1379188 () Bool)

(assert (=> b!2156131 (= e!1379195 e!1379188)))

(declare-fun e!1379196 () Bool)

(declare-fun e!1379184 () Bool)

(assert (=> b!2156132 (= e!1379196 (and e!1379184 tp!671311))))

(declare-fun tp!671306 () Bool)

(declare-fun e!1379185 () Bool)

(declare-fun tp!671313 () Bool)

(declare-fun array_inv!3188 (array!9961) Bool)

(declare-fun array_inv!3189 (array!9963) Bool)

(assert (=> b!2156133 (= e!1379188 (and tp!671314 tp!671313 tp!671306 (array_inv!3188 (_keys!3221 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) (array_inv!3189 (_values!3204 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) e!1379185))))

(declare-fun b!2156134 () Bool)

(declare-fun e!1379197 () Bool)

(assert (=> b!2156134 (= e!1379197 e!1379189)))

(declare-fun res!929463 () Bool)

(assert (=> b!2156134 (=> res!929463 e!1379189)))

(assert (=> b!2156134 (= res!929463 (< (from!2840 (h!30284 stack!12)) 0))))

(declare-fun b!2156135 () Bool)

(declare-fun e!1379187 () Bool)

(assert (=> b!2156135 (= e!1379183 (and e!1379196 (inv!32898 (totalInput!3358 cacheFurthestNullable!118)) e!1379187))))

(declare-fun mapIsEmpty!13817 () Bool)

(declare-fun mapRes!13817 () Bool)

(assert (=> mapIsEmpty!13817 mapRes!13817))

(declare-fun b!2156136 () Bool)

(declare-fun tp!671304 () Bool)

(assert (=> b!2156136 (= e!1379187 (and (inv!32899 (c!341540 (totalInput!3358 cacheFurthestNullable!118))) tp!671304))))

(declare-fun b!2156137 () Bool)

(declare-fun res!929464 () Bool)

(assert (=> b!2156137 (=> (not res!929464) (not e!1379190))))

(assert (=> b!2156137 (= res!929464 (= (totalInput!3358 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2156138 () Bool)

(declare-fun e!1379193 () Bool)

(assert (=> b!2156138 (= e!1379193 e!1379195)))

(declare-fun mapNonEmpty!13817 () Bool)

(declare-fun tp!671303 () Bool)

(declare-fun tp!671308 () Bool)

(assert (=> mapNonEmpty!13817 (= mapRes!13817 (and tp!671303 tp!671308))))

(declare-fun mapRest!13817 () (Array (_ BitVec 32) List!24968))

(declare-fun mapKey!13817 () (_ BitVec 32))

(declare-fun mapValue!13817 () List!24968)

(assert (=> mapNonEmpty!13817 (= (arr!4445 (_values!3204 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) (store mapRest!13817 mapKey!13817 mapValue!13817))))

(declare-fun b!2156139 () Bool)

(declare-fun lt!801589 () MutLongMap!2924)

(get-info :version)

(assert (=> b!2156139 (= e!1379184 (and e!1379193 ((_ is LongMap!2924) lt!801589)))))

(assert (=> b!2156139 (= lt!801589 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))

(declare-fun b!2156140 () Bool)

(declare-fun e!1379194 () Bool)

(declare-fun tp!671307 () Bool)

(assert (=> b!2156140 (= e!1379194 tp!671307)))

(declare-fun res!929466 () Bool)

(assert (=> b!2156141 (=> (not res!929466) (not e!1379190))))

(assert (=> b!2156141 (= res!929466 (forall!5111 stack!12 lambda!81359))))

(declare-fun b!2156142 () Bool)

(declare-fun e!1379191 () Bool)

(declare-fun tp!671305 () Bool)

(assert (=> b!2156142 (= e!1379191 (and (inv!32899 (c!341540 (totalInput!3357 (h!30284 stack!12)))) tp!671305))))

(declare-fun b!2156143 () Bool)

(assert (=> b!2156143 (= e!1379190 e!1379197)))

(declare-fun res!929465 () Bool)

(assert (=> b!2156143 (=> (not res!929465) (not e!1379197))))

(declare-fun res!17610 () Int)

(assert (=> b!2156143 (= res!929465 (= (res!929469 (h!30284 stack!12)) res!17610))))

(declare-datatypes ((Unit!37960 0))(
  ( (Unit!37961) )
))
(declare-fun lt!801588 () Unit!37960)

(declare-fun lemmaInvariant!404 (CacheFurthestNullable!1034) Unit!37960)

(assert (=> b!2156143 (= lt!801588 (lemmaInvariant!404 cacheFurthestNullable!118))))

(declare-fun b!2156144 () Bool)

(declare-fun res!929467 () Bool)

(assert (=> b!2156144 (=> (not res!929467) (not e!1379190))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2156144 (= res!929467 (and (not ((_ is Nil!24883) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun setElem!17656 () Context!2986)

(declare-fun setNonEmpty!17656 () Bool)

(declare-fun tp!671312 () Bool)

(declare-fun inv!32900 (Context!2986) Bool)

(assert (=> setNonEmpty!17656 (= setRes!17656 (and tp!671312 (inv!32900 setElem!17656) e!1379194))))

(declare-fun setRest!17656 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17656 (= (z!5999 (h!30284 stack!12)) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17656 true) setRest!17656))))

(declare-fun b!2156145 () Bool)

(declare-fun tp!671309 () Bool)

(assert (=> b!2156145 (= e!1379185 (and tp!671309 mapRes!13817))))

(declare-fun condMapEmpty!13817 () Bool)

(declare-fun mapDefault!13817 () List!24968)

(assert (=> b!2156145 (= condMapEmpty!13817 (= (arr!4445 (_values!3204 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24968)) mapDefault!13817)))))

(declare-fun b!2156146 () Bool)

(declare-fun e!1379192 () Bool)

(assert (=> b!2156146 (= e!1379192 (and setRes!17656 (inv!32898 (totalInput!3357 (h!30284 stack!12))) e!1379191))))

(declare-fun condSetEmpty!17656 () Bool)

(assert (=> b!2156146 (= condSetEmpty!17656 (= (z!5999 (h!30284 stack!12)) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun tp!671310 () Bool)

(declare-fun b!2156147 () Bool)

(declare-fun inv!32901 (StackFrame!376) Bool)

(assert (=> b!2156147 (= e!1379186 (and (inv!32901 (h!30284 stack!12)) e!1379192 tp!671310))))

(assert (= (and start!209164 res!929462) b!2156137))

(assert (= (and b!2156137 res!929464) b!2156129))

(assert (= (and b!2156129 res!929468) b!2156141))

(assert (= (and b!2156141 res!929466) b!2156144))

(assert (= (and b!2156144 res!929467) b!2156143))

(assert (= (and b!2156143 res!929465) b!2156134))

(assert (= (and b!2156134 (not res!929463)) b!2156128))

(assert (= (and b!2156145 condMapEmpty!13817) mapIsEmpty!13817))

(assert (= (and b!2156145 (not condMapEmpty!13817)) mapNonEmpty!13817))

(assert (= b!2156133 b!2156145))

(assert (= b!2156131 b!2156133))

(assert (= b!2156138 b!2156131))

(assert (= (and b!2156139 ((_ is LongMap!2924) (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))) b!2156138))

(assert (= b!2156132 b!2156139))

(assert (= (and b!2156135 ((_ is HashMap!2838) (cache!3219 cacheFurthestNullable!118))) b!2156132))

(assert (= b!2156135 b!2156136))

(assert (= start!209164 b!2156135))

(assert (= start!209164 b!2156130))

(assert (= (and b!2156146 condSetEmpty!17656) setIsEmpty!17656))

(assert (= (and b!2156146 (not condSetEmpty!17656)) setNonEmpty!17656))

(assert (= setNonEmpty!17656 b!2156140))

(assert (= b!2156146 b!2156142))

(assert (= b!2156147 b!2156146))

(assert (= (and start!209164 ((_ is Cons!24883) stack!12)) b!2156147))

(declare-fun m!2596843 () Bool)

(assert (=> b!2156136 m!2596843))

(declare-fun m!2596845 () Bool)

(assert (=> b!2156130 m!2596845))

(declare-fun m!2596847 () Bool)

(assert (=> setNonEmpty!17656 m!2596847))

(declare-fun m!2596849 () Bool)

(assert (=> mapNonEmpty!13817 m!2596849))

(declare-fun m!2596851 () Bool)

(assert (=> b!2156147 m!2596851))

(declare-fun m!2596853 () Bool)

(assert (=> b!2156143 m!2596853))

(declare-fun m!2596855 () Bool)

(assert (=> b!2156142 m!2596855))

(declare-fun m!2596857 () Bool)

(assert (=> b!2156133 m!2596857))

(declare-fun m!2596859 () Bool)

(assert (=> b!2156133 m!2596859))

(declare-fun m!2596861 () Bool)

(assert (=> b!2156141 m!2596861))

(declare-fun m!2596863 () Bool)

(assert (=> b!2156135 m!2596863))

(declare-fun m!2596865 () Bool)

(assert (=> b!2156129 m!2596865))

(declare-fun m!2596867 () Bool)

(assert (=> b!2156146 m!2596867))

(declare-fun m!2596869 () Bool)

(assert (=> start!209164 m!2596869))

(declare-fun m!2596871 () Bool)

(assert (=> start!209164 m!2596871))

(declare-fun m!2596873 () Bool)

(assert (=> start!209164 m!2596873))

(declare-fun m!2596875 () Bool)

(assert (=> b!2156128 m!2596875))

(check-sat (not mapNonEmpty!13817) (not b!2156146) (not b!2156128) (not b!2156141) (not b_next!64391) b_and!173301 (not b!2156143) (not b!2156129) (not b!2156136) (not b!2156140) (not b!2156135) (not setNonEmpty!17656) (not b!2156130) (not b_next!64389) (not b!2156133) (not b!2156142) b_and!173303 (not b!2156145) (not start!209164) (not b!2156147))
(check-sat b_and!173303 b_and!173301 (not b_next!64391) (not b_next!64389))
(get-model)

(declare-fun d!646369 () Bool)

(assert (=> d!646369 (= (array_inv!3188 (_keys!3221 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) (bvsge (size!19441 (_keys!3221 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156133 d!646369))

(declare-fun d!646371 () Bool)

(assert (=> d!646371 (= (array_inv!3189 (_values!3204 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) (bvsge (size!19442 (_values!3204 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2156133 d!646371))

(declare-fun b!2156164 () Bool)

(declare-fun res!929487 () Bool)

(declare-fun e!1379203 () Bool)

(assert (=> b!2156164 (=> (not res!929487) (not e!1379203))))

(assert (=> b!2156164 (= res!929487 (<= (from!2840 (h!30284 stack!12)) (size!19440 (totalInput!3357 (h!30284 stack!12)))))))

(declare-fun b!2156165 () Bool)

(declare-fun res!929482 () Bool)

(assert (=> b!2156165 (=> (not res!929482) (not e!1379203))))

(assert (=> b!2156165 (= res!929482 (and (>= (lastNullablePos!527 (h!30284 stack!12)) (- 1)) (< (lastNullablePos!527 (h!30284 stack!12)) (from!2840 (h!30284 stack!12)))))))

(declare-fun d!646373 () Bool)

(declare-fun res!929486 () Bool)

(assert (=> d!646373 (=> (not res!929486) (not e!1379203))))

(assert (=> d!646373 (= res!929486 (>= (from!2840 (h!30284 stack!12)) 0))))

(assert (=> d!646373 (= (inv!32901 (h!30284 stack!12)) e!1379203)))

(declare-fun b!2156166 () Bool)

(declare-fun e!1379204 () Bool)

(assert (=> b!2156166 (= e!1379204 (= (lastNullablePos!527 (h!30284 stack!12)) (- (from!2840 (h!30284 stack!12)) 1)))))

(declare-fun b!2156167 () Bool)

(declare-fun furthestNullablePosition!135 ((InoxSet Context!2986) Int BalanceConc!15880 Int Int) Int)

(assert (=> b!2156167 (= e!1379203 (= (res!929469 (h!30284 stack!12)) (furthestNullablePosition!135 (z!5999 (h!30284 stack!12)) (from!2840 (h!30284 stack!12)) (totalInput!3357 (h!30284 stack!12)) (size!19440 (totalInput!3357 (h!30284 stack!12))) (lastNullablePos!527 (h!30284 stack!12)))))))

(declare-fun b!2156168 () Bool)

(declare-fun res!929485 () Bool)

(assert (=> b!2156168 (=> (not res!929485) (not e!1379203))))

(assert (=> b!2156168 (= res!929485 e!1379204)))

(declare-fun res!929484 () Bool)

(assert (=> b!2156168 (=> res!929484 e!1379204)))

(declare-fun nullableZipper!223 ((InoxSet Context!2986)) Bool)

(assert (=> b!2156168 (= res!929484 (not (nullableZipper!223 (z!5999 (h!30284 stack!12)))))))

(declare-fun b!2156169 () Bool)

(declare-fun res!929483 () Bool)

(assert (=> b!2156169 (=> (not res!929483) (not e!1379203))))

(assert (=> b!2156169 (= res!929483 (= (size!19440 (totalInput!3357 (h!30284 stack!12))) (size!19440 (totalInput!3357 (h!30284 stack!12)))))))

(assert (= (and d!646373 res!929486) b!2156164))

(assert (= (and b!2156164 res!929487) b!2156169))

(assert (= (and b!2156169 res!929483) b!2156165))

(assert (= (and b!2156165 res!929482) b!2156168))

(assert (= (and b!2156168 (not res!929484)) b!2156166))

(assert (= (and b!2156168 res!929485) b!2156167))

(declare-fun m!2596877 () Bool)

(assert (=> b!2156164 m!2596877))

(assert (=> b!2156167 m!2596877))

(assert (=> b!2156167 m!2596877))

(declare-fun m!2596879 () Bool)

(assert (=> b!2156167 m!2596879))

(declare-fun m!2596881 () Bool)

(assert (=> b!2156168 m!2596881))

(assert (=> b!2156169 m!2596877))

(assert (=> b!2156147 d!646373))

(declare-fun d!646375 () Bool)

(declare-fun isBalanced!2501 (Conc!8059) Bool)

(assert (=> d!646375 (= (inv!32898 (totalInput!3358 cacheFurthestNullable!118)) (isBalanced!2501 (c!341540 (totalInput!3358 cacheFurthestNullable!118))))))

(declare-fun bs!445863 () Bool)

(assert (= bs!445863 d!646375))

(declare-fun m!2596883 () Bool)

(assert (=> bs!445863 m!2596883))

(assert (=> b!2156135 d!646375))

(declare-fun d!646377 () Bool)

(assert (=> d!646377 (= (inv!32898 (totalInput!3357 (h!30284 stack!12))) (isBalanced!2501 (c!341540 (totalInput!3357 (h!30284 stack!12)))))))

(declare-fun bs!445864 () Bool)

(assert (= bs!445864 d!646377))

(declare-fun m!2596885 () Bool)

(assert (=> bs!445864 m!2596885))

(assert (=> b!2156146 d!646377))

(declare-fun d!646379 () Bool)

(declare-fun c!341543 () Bool)

(assert (=> d!646379 (= c!341543 ((_ is Node!8059) (c!341540 (totalInput!3358 cacheFurthestNullable!118))))))

(declare-fun e!1379209 () Bool)

(assert (=> d!646379 (= (inv!32899 (c!341540 (totalInput!3358 cacheFurthestNullable!118))) e!1379209)))

(declare-fun b!2156176 () Bool)

(declare-fun inv!32902 (Conc!8059) Bool)

(assert (=> b!2156176 (= e!1379209 (inv!32902 (c!341540 (totalInput!3358 cacheFurthestNullable!118))))))

(declare-fun b!2156177 () Bool)

(declare-fun e!1379210 () Bool)

(assert (=> b!2156177 (= e!1379209 e!1379210)))

(declare-fun res!929490 () Bool)

(assert (=> b!2156177 (= res!929490 (not ((_ is Leaf!11788) (c!341540 (totalInput!3358 cacheFurthestNullable!118)))))))

(assert (=> b!2156177 (=> res!929490 e!1379210)))

(declare-fun b!2156178 () Bool)

(declare-fun inv!32903 (Conc!8059) Bool)

(assert (=> b!2156178 (= e!1379210 (inv!32903 (c!341540 (totalInput!3358 cacheFurthestNullable!118))))))

(assert (= (and d!646379 c!341543) b!2156176))

(assert (= (and d!646379 (not c!341543)) b!2156177))

(assert (= (and b!2156177 (not res!929490)) b!2156178))

(declare-fun m!2596887 () Bool)

(assert (=> b!2156176 m!2596887))

(declare-fun m!2596889 () Bool)

(assert (=> b!2156178 m!2596889))

(assert (=> b!2156136 d!646379))

(declare-fun d!646381 () Bool)

(declare-fun lambda!81362 () Int)

(declare-fun forall!5112 (List!24965 Int) Bool)

(assert (=> d!646381 (= (inv!32900 setElem!17656) (forall!5112 (exprs!1993 setElem!17656) lambda!81362))))

(declare-fun bs!445865 () Bool)

(assert (= bs!445865 d!646381))

(declare-fun m!2596891 () Bool)

(assert (=> bs!445865 m!2596891))

(assert (=> setNonEmpty!17656 d!646381))

(declare-fun d!646383 () Bool)

(declare-fun lt!801592 () Int)

(declare-fun size!19443 (List!24966) Int)

(declare-fun list!9567 (BalanceConc!15880) List!24966)

(assert (=> d!646383 (= lt!801592 (size!19443 (list!9567 totalInput!880)))))

(declare-fun size!19444 (Conc!8059) Int)

(assert (=> d!646383 (= lt!801592 (size!19444 (c!341540 totalInput!880)))))

(assert (=> d!646383 (= (size!19440 totalInput!880) lt!801592)))

(declare-fun bs!445866 () Bool)

(assert (= bs!445866 d!646383))

(declare-fun m!2596893 () Bool)

(assert (=> bs!445866 m!2596893))

(assert (=> bs!445866 m!2596893))

(declare-fun m!2596895 () Bool)

(assert (=> bs!445866 m!2596895))

(declare-fun m!2596897 () Bool)

(assert (=> bs!445866 m!2596897))

(assert (=> b!2156128 d!646383))

(declare-fun d!646385 () Bool)

(declare-fun res!929495 () Bool)

(declare-fun e!1379215 () Bool)

(assert (=> d!646385 (=> res!929495 e!1379215)))

(assert (=> d!646385 (= res!929495 ((_ is Nil!24883) stack!12))))

(assert (=> d!646385 (= (forall!5111 stack!12 lambda!81358) e!1379215)))

(declare-fun b!2156183 () Bool)

(declare-fun e!1379216 () Bool)

(assert (=> b!2156183 (= e!1379215 e!1379216)))

(declare-fun res!929496 () Bool)

(assert (=> b!2156183 (=> (not res!929496) (not e!1379216))))

(declare-fun dynLambda!11415 (Int StackFrame!376) Bool)

(assert (=> b!2156183 (= res!929496 (dynLambda!11415 lambda!81358 (h!30284 stack!12)))))

(declare-fun b!2156184 () Bool)

(assert (=> b!2156184 (= e!1379216 (forall!5111 (t!197515 stack!12) lambda!81358))))

(assert (= (and d!646385 (not res!929495)) b!2156183))

(assert (= (and b!2156183 res!929496) b!2156184))

(declare-fun b_lambda!70981 () Bool)

(assert (=> (not b_lambda!70981) (not b!2156183)))

(declare-fun m!2596899 () Bool)

(assert (=> b!2156183 m!2596899))

(declare-fun m!2596901 () Bool)

(assert (=> b!2156184 m!2596901))

(assert (=> b!2156129 d!646385))

(declare-fun d!646387 () Bool)

(assert (=> d!646387 (valid!2257 cacheFurthestNullable!118)))

(declare-fun Unit!37962 () Unit!37960)

(assert (=> d!646387 (= (lemmaInvariant!404 cacheFurthestNullable!118) Unit!37962)))

(declare-fun bs!445867 () Bool)

(assert (= bs!445867 d!646387))

(assert (=> bs!445867 m!2596869))

(assert (=> b!2156143 d!646387))

(declare-fun d!646389 () Bool)

(declare-fun c!341544 () Bool)

(assert (=> d!646389 (= c!341544 ((_ is Node!8059) (c!341540 totalInput!880)))))

(declare-fun e!1379217 () Bool)

(assert (=> d!646389 (= (inv!32899 (c!341540 totalInput!880)) e!1379217)))

(declare-fun b!2156185 () Bool)

(assert (=> b!2156185 (= e!1379217 (inv!32902 (c!341540 totalInput!880)))))

(declare-fun b!2156186 () Bool)

(declare-fun e!1379218 () Bool)

(assert (=> b!2156186 (= e!1379217 e!1379218)))

(declare-fun res!929497 () Bool)

(assert (=> b!2156186 (= res!929497 (not ((_ is Leaf!11788) (c!341540 totalInput!880))))))

(assert (=> b!2156186 (=> res!929497 e!1379218)))

(declare-fun b!2156187 () Bool)

(assert (=> b!2156187 (= e!1379218 (inv!32903 (c!341540 totalInput!880)))))

(assert (= (and d!646389 c!341544) b!2156185))

(assert (= (and d!646389 (not c!341544)) b!2156186))

(assert (= (and b!2156186 (not res!929497)) b!2156187))

(declare-fun m!2596903 () Bool)

(assert (=> b!2156185 m!2596903))

(declare-fun m!2596905 () Bool)

(assert (=> b!2156187 m!2596905))

(assert (=> b!2156130 d!646389))

(declare-fun d!646391 () Bool)

(declare-fun c!341545 () Bool)

(assert (=> d!646391 (= c!341545 ((_ is Node!8059) (c!341540 (totalInput!3357 (h!30284 stack!12)))))))

(declare-fun e!1379219 () Bool)

(assert (=> d!646391 (= (inv!32899 (c!341540 (totalInput!3357 (h!30284 stack!12)))) e!1379219)))

(declare-fun b!2156188 () Bool)

(assert (=> b!2156188 (= e!1379219 (inv!32902 (c!341540 (totalInput!3357 (h!30284 stack!12)))))))

(declare-fun b!2156189 () Bool)

(declare-fun e!1379220 () Bool)

(assert (=> b!2156189 (= e!1379219 e!1379220)))

(declare-fun res!929498 () Bool)

(assert (=> b!2156189 (= res!929498 (not ((_ is Leaf!11788) (c!341540 (totalInput!3357 (h!30284 stack!12))))))))

(assert (=> b!2156189 (=> res!929498 e!1379220)))

(declare-fun b!2156190 () Bool)

(assert (=> b!2156190 (= e!1379220 (inv!32903 (c!341540 (totalInput!3357 (h!30284 stack!12)))))))

(assert (= (and d!646391 c!341545) b!2156188))

(assert (= (and d!646391 (not c!341545)) b!2156189))

(assert (= (and b!2156189 (not res!929498)) b!2156190))

(declare-fun m!2596907 () Bool)

(assert (=> b!2156188 m!2596907))

(declare-fun m!2596909 () Bool)

(assert (=> b!2156190 m!2596909))

(assert (=> b!2156142 d!646391))

(declare-fun d!646393 () Bool)

(declare-fun validCacheMapFurthestNullable!172 (MutableMap!2838 BalanceConc!15880) Bool)

(assert (=> d!646393 (= (valid!2257 cacheFurthestNullable!118) (validCacheMapFurthestNullable!172 (cache!3219 cacheFurthestNullable!118) (totalInput!3358 cacheFurthestNullable!118)))))

(declare-fun bs!445868 () Bool)

(assert (= bs!445868 d!646393))

(declare-fun m!2596911 () Bool)

(assert (=> bs!445868 m!2596911))

(assert (=> start!209164 d!646393))

(declare-fun d!646395 () Bool)

(declare-fun res!929501 () Bool)

(declare-fun e!1379223 () Bool)

(assert (=> d!646395 (=> (not res!929501) (not e!1379223))))

(assert (=> d!646395 (= res!929501 ((_ is HashMap!2838) (cache!3219 cacheFurthestNullable!118)))))

(assert (=> d!646395 (= (inv!32897 cacheFurthestNullable!118) e!1379223)))

(declare-fun b!2156193 () Bool)

(assert (=> b!2156193 (= e!1379223 (validCacheMapFurthestNullable!172 (cache!3219 cacheFurthestNullable!118) (totalInput!3358 cacheFurthestNullable!118)))))

(assert (= (and d!646395 res!929501) b!2156193))

(assert (=> b!2156193 m!2596911))

(assert (=> start!209164 d!646395))

(declare-fun d!646397 () Bool)

(assert (=> d!646397 (= (inv!32898 totalInput!880) (isBalanced!2501 (c!341540 totalInput!880)))))

(declare-fun bs!445869 () Bool)

(assert (= bs!445869 d!646397))

(declare-fun m!2596913 () Bool)

(assert (=> bs!445869 m!2596913))

(assert (=> start!209164 d!646397))

(declare-fun d!646399 () Bool)

(declare-fun res!929502 () Bool)

(declare-fun e!1379224 () Bool)

(assert (=> d!646399 (=> res!929502 e!1379224)))

(assert (=> d!646399 (= res!929502 ((_ is Nil!24883) stack!12))))

(assert (=> d!646399 (= (forall!5111 stack!12 lambda!81359) e!1379224)))

(declare-fun b!2156194 () Bool)

(declare-fun e!1379225 () Bool)

(assert (=> b!2156194 (= e!1379224 e!1379225)))

(declare-fun res!929503 () Bool)

(assert (=> b!2156194 (=> (not res!929503) (not e!1379225))))

(assert (=> b!2156194 (= res!929503 (dynLambda!11415 lambda!81359 (h!30284 stack!12)))))

(declare-fun b!2156195 () Bool)

(assert (=> b!2156195 (= e!1379225 (forall!5111 (t!197515 stack!12) lambda!81359))))

(assert (= (and d!646399 (not res!929502)) b!2156194))

(assert (= (and b!2156194 res!929503) b!2156195))

(declare-fun b_lambda!70983 () Bool)

(assert (=> (not b_lambda!70983) (not b!2156194)))

(declare-fun m!2596915 () Bool)

(assert (=> b!2156194 m!2596915))

(declare-fun m!2596917 () Bool)

(assert (=> b!2156195 m!2596917))

(assert (=> b!2156141 d!646399))

(declare-fun tp!671323 () Bool)

(declare-fun e!1379231 () Bool)

(declare-fun tp!671322 () Bool)

(declare-fun b!2156204 () Bool)

(assert (=> b!2156204 (= e!1379231 (and (inv!32899 (left!19151 (c!341540 (totalInput!3358 cacheFurthestNullable!118)))) tp!671322 (inv!32899 (right!19481 (c!341540 (totalInput!3358 cacheFurthestNullable!118)))) tp!671323))))

(declare-fun b!2156206 () Bool)

(declare-fun e!1379230 () Bool)

(declare-fun tp!671324 () Bool)

(assert (=> b!2156206 (= e!1379230 tp!671324)))

(declare-fun b!2156205 () Bool)

(declare-fun inv!32904 (IArray!16123) Bool)

(assert (=> b!2156205 (= e!1379231 (and (inv!32904 (xs!11001 (c!341540 (totalInput!3358 cacheFurthestNullable!118)))) e!1379230))))

(assert (=> b!2156136 (= tp!671304 (and (inv!32899 (c!341540 (totalInput!3358 cacheFurthestNullable!118))) e!1379231))))

(assert (= (and b!2156136 ((_ is Node!8059) (c!341540 (totalInput!3358 cacheFurthestNullable!118)))) b!2156204))

(assert (= b!2156205 b!2156206))

(assert (= (and b!2156136 ((_ is Leaf!11788) (c!341540 (totalInput!3358 cacheFurthestNullable!118)))) b!2156205))

(declare-fun m!2596919 () Bool)

(assert (=> b!2156204 m!2596919))

(declare-fun m!2596921 () Bool)

(assert (=> b!2156204 m!2596921))

(declare-fun m!2596923 () Bool)

(assert (=> b!2156205 m!2596923))

(assert (=> b!2156136 m!2596843))

(declare-fun b!2156211 () Bool)

(declare-fun e!1379234 () Bool)

(declare-fun tp!671329 () Bool)

(declare-fun tp!671330 () Bool)

(assert (=> b!2156211 (= e!1379234 (and tp!671329 tp!671330))))

(assert (=> b!2156140 (= tp!671307 e!1379234)))

(assert (= (and b!2156140 ((_ is Cons!24881) (exprs!1993 setElem!17656))) b!2156211))

(declare-fun condSetEmpty!17659 () Bool)

(assert (=> setNonEmpty!17656 (= condSetEmpty!17659 (= setRest!17656 ((as const (Array Context!2986 Bool)) false)))))

(declare-fun setRes!17659 () Bool)

(assert (=> setNonEmpty!17656 (= tp!671312 setRes!17659)))

(declare-fun setIsEmpty!17659 () Bool)

(assert (=> setIsEmpty!17659 setRes!17659))

(declare-fun e!1379237 () Bool)

(declare-fun tp!671335 () Bool)

(declare-fun setNonEmpty!17659 () Bool)

(declare-fun setElem!17659 () Context!2986)

(assert (=> setNonEmpty!17659 (= setRes!17659 (and tp!671335 (inv!32900 setElem!17659) e!1379237))))

(declare-fun setRest!17659 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17659 (= setRest!17656 ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17659 true) setRest!17659))))

(declare-fun b!2156216 () Bool)

(declare-fun tp!671336 () Bool)

(assert (=> b!2156216 (= e!1379237 tp!671336)))

(assert (= (and setNonEmpty!17656 condSetEmpty!17659) setIsEmpty!17659))

(assert (= (and setNonEmpty!17656 (not condSetEmpty!17659)) setNonEmpty!17659))

(assert (= setNonEmpty!17659 b!2156216))

(declare-fun m!2596925 () Bool)

(assert (=> setNonEmpty!17659 m!2596925))

(declare-fun b!2156223 () Bool)

(declare-fun e!1379243 () Bool)

(declare-fun setRes!17662 () Bool)

(declare-fun tp!671344 () Bool)

(assert (=> b!2156223 (= e!1379243 (and setRes!17662 tp!671344))))

(declare-fun condSetEmpty!17662 () Bool)

(assert (=> b!2156223 (= condSetEmpty!17662 (= (_1!14629 (_1!14630 (h!30285 (zeroValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun b!2156224 () Bool)

(declare-fun e!1379242 () Bool)

(declare-fun tp!671343 () Bool)

(assert (=> b!2156224 (= e!1379242 tp!671343)))

(declare-fun tp!671345 () Bool)

(declare-fun setNonEmpty!17662 () Bool)

(declare-fun setElem!17662 () Context!2986)

(assert (=> setNonEmpty!17662 (= setRes!17662 (and tp!671345 (inv!32900 setElem!17662) e!1379242))))

(declare-fun setRest!17662 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17662 (= (_1!14629 (_1!14630 (h!30285 (zeroValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17662 true) setRest!17662))))

(declare-fun setIsEmpty!17662 () Bool)

(assert (=> setIsEmpty!17662 setRes!17662))

(assert (=> b!2156133 (= tp!671313 e!1379243)))

(assert (= (and b!2156223 condSetEmpty!17662) setIsEmpty!17662))

(assert (= (and b!2156223 (not condSetEmpty!17662)) setNonEmpty!17662))

(assert (= setNonEmpty!17662 b!2156224))

(assert (= (and b!2156133 ((_ is Cons!24884) (zeroValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118)))))))) b!2156223))

(declare-fun m!2596927 () Bool)

(assert (=> setNonEmpty!17662 m!2596927))

(declare-fun b!2156225 () Bool)

(declare-fun e!1379245 () Bool)

(declare-fun setRes!17663 () Bool)

(declare-fun tp!671347 () Bool)

(assert (=> b!2156225 (= e!1379245 (and setRes!17663 tp!671347))))

(declare-fun condSetEmpty!17663 () Bool)

(assert (=> b!2156225 (= condSetEmpty!17663 (= (_1!14629 (_1!14630 (h!30285 (minValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun b!2156226 () Bool)

(declare-fun e!1379244 () Bool)

(declare-fun tp!671346 () Bool)

(assert (=> b!2156226 (= e!1379244 tp!671346)))

(declare-fun setElem!17663 () Context!2986)

(declare-fun setNonEmpty!17663 () Bool)

(declare-fun tp!671348 () Bool)

(assert (=> setNonEmpty!17663 (= setRes!17663 (and tp!671348 (inv!32900 setElem!17663) e!1379244))))

(declare-fun setRest!17663 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17663 (= (_1!14629 (_1!14630 (h!30285 (minValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17663 true) setRest!17663))))

(declare-fun setIsEmpty!17663 () Bool)

(assert (=> setIsEmpty!17663 setRes!17663))

(assert (=> b!2156133 (= tp!671306 e!1379245)))

(assert (= (and b!2156225 condSetEmpty!17663) setIsEmpty!17663))

(assert (= (and b!2156225 (not condSetEmpty!17663)) setNonEmpty!17663))

(assert (= setNonEmpty!17663 b!2156226))

(assert (= (and b!2156133 ((_ is Cons!24884) (minValue!3182 (v!29311 (underlying!6043 (v!29312 (underlying!6044 (cache!3219 cacheFurthestNullable!118)))))))) b!2156225))

(declare-fun m!2596929 () Bool)

(assert (=> setNonEmpty!17663 m!2596929))

(declare-fun b!2156237 () Bool)

(declare-fun e!1379254 () Bool)

(declare-fun setRes!17668 () Bool)

(declare-fun tp!671365 () Bool)

(assert (=> b!2156237 (= e!1379254 (and setRes!17668 tp!671365))))

(declare-fun condSetEmpty!17669 () Bool)

(declare-fun mapDefault!13820 () List!24968)

(assert (=> b!2156237 (= condSetEmpty!17669 (= (_1!14629 (_1!14630 (h!30285 mapDefault!13820))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun b!2156238 () Bool)

(declare-fun e!1379257 () Bool)

(declare-fun tp!671368 () Bool)

(assert (=> b!2156238 (= e!1379257 tp!671368)))

(declare-fun setRes!17669 () Bool)

(declare-fun tp!671366 () Bool)

(declare-fun setElem!17668 () Context!2986)

(declare-fun setNonEmpty!17668 () Bool)

(assert (=> setNonEmpty!17668 (= setRes!17669 (and tp!671366 (inv!32900 setElem!17668) e!1379257))))

(declare-fun mapValue!13820 () List!24968)

(declare-fun setRest!17669 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17668 (= (_1!14629 (_1!14630 (h!30285 mapValue!13820))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17668 true) setRest!17669))))

(declare-fun setIsEmpty!17668 () Bool)

(assert (=> setIsEmpty!17668 setRes!17669))

(declare-fun b!2156239 () Bool)

(declare-fun e!1379256 () Bool)

(declare-fun tp!671367 () Bool)

(assert (=> b!2156239 (= e!1379256 (and setRes!17669 tp!671367))))

(declare-fun condSetEmpty!17668 () Bool)

(assert (=> b!2156239 (= condSetEmpty!17668 (= (_1!14629 (_1!14630 (h!30285 mapValue!13820))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun condMapEmpty!13820 () Bool)

(assert (=> mapNonEmpty!13817 (= condMapEmpty!13820 (= mapRest!13817 ((as const (Array (_ BitVec 32) List!24968)) mapDefault!13820)))))

(declare-fun mapRes!13820 () Bool)

(assert (=> mapNonEmpty!13817 (= tp!671303 (and e!1379254 mapRes!13820))))

(declare-fun b!2156240 () Bool)

(declare-fun e!1379255 () Bool)

(declare-fun tp!671369 () Bool)

(assert (=> b!2156240 (= e!1379255 tp!671369)))

(declare-fun mapNonEmpty!13820 () Bool)

(declare-fun tp!671363 () Bool)

(assert (=> mapNonEmpty!13820 (= mapRes!13820 (and tp!671363 e!1379256))))

(declare-fun mapRest!13820 () (Array (_ BitVec 32) List!24968))

(declare-fun mapKey!13820 () (_ BitVec 32))

(assert (=> mapNonEmpty!13820 (= mapRest!13817 (store mapRest!13820 mapKey!13820 mapValue!13820))))

(declare-fun setIsEmpty!17669 () Bool)

(assert (=> setIsEmpty!17669 setRes!17668))

(declare-fun setElem!17669 () Context!2986)

(declare-fun tp!671364 () Bool)

(declare-fun setNonEmpty!17669 () Bool)

(assert (=> setNonEmpty!17669 (= setRes!17668 (and tp!671364 (inv!32900 setElem!17669) e!1379255))))

(declare-fun setRest!17668 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17669 (= (_1!14629 (_1!14630 (h!30285 mapDefault!13820))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17669 true) setRest!17668))))

(declare-fun mapIsEmpty!13820 () Bool)

(assert (=> mapIsEmpty!13820 mapRes!13820))

(assert (= (and mapNonEmpty!13817 condMapEmpty!13820) mapIsEmpty!13820))

(assert (= (and mapNonEmpty!13817 (not condMapEmpty!13820)) mapNonEmpty!13820))

(assert (= (and b!2156239 condSetEmpty!17668) setIsEmpty!17668))

(assert (= (and b!2156239 (not condSetEmpty!17668)) setNonEmpty!17668))

(assert (= setNonEmpty!17668 b!2156238))

(assert (= (and mapNonEmpty!13820 ((_ is Cons!24884) mapValue!13820)) b!2156239))

(assert (= (and b!2156237 condSetEmpty!17669) setIsEmpty!17669))

(assert (= (and b!2156237 (not condSetEmpty!17669)) setNonEmpty!17669))

(assert (= setNonEmpty!17669 b!2156240))

(assert (= (and mapNonEmpty!13817 ((_ is Cons!24884) mapDefault!13820)) b!2156237))

(declare-fun m!2596931 () Bool)

(assert (=> setNonEmpty!17668 m!2596931))

(declare-fun m!2596933 () Bool)

(assert (=> mapNonEmpty!13820 m!2596933))

(declare-fun m!2596935 () Bool)

(assert (=> setNonEmpty!17669 m!2596935))

(declare-fun b!2156241 () Bool)

(declare-fun e!1379259 () Bool)

(declare-fun setRes!17670 () Bool)

(declare-fun tp!671371 () Bool)

(assert (=> b!2156241 (= e!1379259 (and setRes!17670 tp!671371))))

(declare-fun condSetEmpty!17670 () Bool)

(assert (=> b!2156241 (= condSetEmpty!17670 (= (_1!14629 (_1!14630 (h!30285 mapValue!13817))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun b!2156242 () Bool)

(declare-fun e!1379258 () Bool)

(declare-fun tp!671370 () Bool)

(assert (=> b!2156242 (= e!1379258 tp!671370)))

(declare-fun setElem!17670 () Context!2986)

(declare-fun setNonEmpty!17670 () Bool)

(declare-fun tp!671372 () Bool)

(assert (=> setNonEmpty!17670 (= setRes!17670 (and tp!671372 (inv!32900 setElem!17670) e!1379258))))

(declare-fun setRest!17670 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17670 (= (_1!14629 (_1!14630 (h!30285 mapValue!13817))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17670 true) setRest!17670))))

(declare-fun setIsEmpty!17670 () Bool)

(assert (=> setIsEmpty!17670 setRes!17670))

(assert (=> mapNonEmpty!13817 (= tp!671308 e!1379259)))

(assert (= (and b!2156241 condSetEmpty!17670) setIsEmpty!17670))

(assert (= (and b!2156241 (not condSetEmpty!17670)) setNonEmpty!17670))

(assert (= setNonEmpty!17670 b!2156242))

(assert (= (and mapNonEmpty!13817 ((_ is Cons!24884) mapValue!13817)) b!2156241))

(declare-fun m!2596937 () Bool)

(assert (=> setNonEmpty!17670 m!2596937))

(declare-fun tp!671373 () Bool)

(declare-fun e!1379261 () Bool)

(declare-fun tp!671374 () Bool)

(declare-fun b!2156243 () Bool)

(assert (=> b!2156243 (= e!1379261 (and (inv!32899 (left!19151 (c!341540 totalInput!880))) tp!671373 (inv!32899 (right!19481 (c!341540 totalInput!880))) tp!671374))))

(declare-fun b!2156245 () Bool)

(declare-fun e!1379260 () Bool)

(declare-fun tp!671375 () Bool)

(assert (=> b!2156245 (= e!1379260 tp!671375)))

(declare-fun b!2156244 () Bool)

(assert (=> b!2156244 (= e!1379261 (and (inv!32904 (xs!11001 (c!341540 totalInput!880))) e!1379260))))

(assert (=> b!2156130 (= tp!671315 (and (inv!32899 (c!341540 totalInput!880)) e!1379261))))

(assert (= (and b!2156130 ((_ is Node!8059) (c!341540 totalInput!880))) b!2156243))

(assert (= b!2156244 b!2156245))

(assert (= (and b!2156130 ((_ is Leaf!11788) (c!341540 totalInput!880))) b!2156244))

(declare-fun m!2596939 () Bool)

(assert (=> b!2156243 m!2596939))

(declare-fun m!2596941 () Bool)

(assert (=> b!2156243 m!2596941))

(declare-fun m!2596943 () Bool)

(assert (=> b!2156244 m!2596943))

(assert (=> b!2156130 m!2596845))

(declare-fun e!1379270 () Bool)

(declare-fun setRes!17673 () Bool)

(declare-fun b!2156256 () Bool)

(declare-fun e!1379273 () Bool)

(assert (=> b!2156256 (= e!1379273 (and setRes!17673 (inv!32898 (totalInput!3357 (h!30284 (t!197515 stack!12)))) e!1379270))))

(declare-fun condSetEmpty!17673 () Bool)

(assert (=> b!2156256 (= condSetEmpty!17673 (= (z!5999 (h!30284 (t!197515 stack!12))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun setIsEmpty!17673 () Bool)

(assert (=> setIsEmpty!17673 setRes!17673))

(declare-fun b!2156257 () Bool)

(declare-fun e!1379272 () Bool)

(declare-fun tp!671385 () Bool)

(assert (=> b!2156257 (= e!1379272 tp!671385)))

(declare-fun e!1379271 () Bool)

(assert (=> b!2156147 (= tp!671310 e!1379271)))

(declare-fun setElem!17673 () Context!2986)

(declare-fun tp!671384 () Bool)

(declare-fun setNonEmpty!17673 () Bool)

(assert (=> setNonEmpty!17673 (= setRes!17673 (and tp!671384 (inv!32900 setElem!17673) e!1379272))))

(declare-fun setRest!17673 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17673 (= (z!5999 (h!30284 (t!197515 stack!12))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17673 true) setRest!17673))))

(declare-fun b!2156258 () Bool)

(declare-fun tp!671386 () Bool)

(assert (=> b!2156258 (= e!1379270 (and (inv!32899 (c!341540 (totalInput!3357 (h!30284 (t!197515 stack!12))))) tp!671386))))

(declare-fun tp!671387 () Bool)

(declare-fun b!2156259 () Bool)

(assert (=> b!2156259 (= e!1379271 (and (inv!32901 (h!30284 (t!197515 stack!12))) e!1379273 tp!671387))))

(assert (= (and b!2156256 condSetEmpty!17673) setIsEmpty!17673))

(assert (= (and b!2156256 (not condSetEmpty!17673)) setNonEmpty!17673))

(assert (= setNonEmpty!17673 b!2156257))

(assert (= b!2156256 b!2156258))

(assert (= b!2156259 b!2156256))

(assert (= (and b!2156147 ((_ is Cons!24883) (t!197515 stack!12))) b!2156259))

(declare-fun m!2596945 () Bool)

(assert (=> b!2156256 m!2596945))

(declare-fun m!2596947 () Bool)

(assert (=> setNonEmpty!17673 m!2596947))

(declare-fun m!2596949 () Bool)

(assert (=> b!2156258 m!2596949))

(declare-fun m!2596951 () Bool)

(assert (=> b!2156259 m!2596951))

(declare-fun e!1379275 () Bool)

(declare-fun tp!671388 () Bool)

(declare-fun tp!671389 () Bool)

(declare-fun b!2156260 () Bool)

(assert (=> b!2156260 (= e!1379275 (and (inv!32899 (left!19151 (c!341540 (totalInput!3357 (h!30284 stack!12))))) tp!671388 (inv!32899 (right!19481 (c!341540 (totalInput!3357 (h!30284 stack!12))))) tp!671389))))

(declare-fun b!2156262 () Bool)

(declare-fun e!1379274 () Bool)

(declare-fun tp!671390 () Bool)

(assert (=> b!2156262 (= e!1379274 tp!671390)))

(declare-fun b!2156261 () Bool)

(assert (=> b!2156261 (= e!1379275 (and (inv!32904 (xs!11001 (c!341540 (totalInput!3357 (h!30284 stack!12))))) e!1379274))))

(assert (=> b!2156142 (= tp!671305 (and (inv!32899 (c!341540 (totalInput!3357 (h!30284 stack!12)))) e!1379275))))

(assert (= (and b!2156142 ((_ is Node!8059) (c!341540 (totalInput!3357 (h!30284 stack!12))))) b!2156260))

(assert (= b!2156261 b!2156262))

(assert (= (and b!2156142 ((_ is Leaf!11788) (c!341540 (totalInput!3357 (h!30284 stack!12))))) b!2156261))

(declare-fun m!2596953 () Bool)

(assert (=> b!2156260 m!2596953))

(declare-fun m!2596955 () Bool)

(assert (=> b!2156260 m!2596955))

(declare-fun m!2596957 () Bool)

(assert (=> b!2156261 m!2596957))

(assert (=> b!2156142 m!2596855))

(declare-fun b!2156263 () Bool)

(declare-fun e!1379277 () Bool)

(declare-fun setRes!17674 () Bool)

(declare-fun tp!671392 () Bool)

(assert (=> b!2156263 (= e!1379277 (and setRes!17674 tp!671392))))

(declare-fun condSetEmpty!17674 () Bool)

(assert (=> b!2156263 (= condSetEmpty!17674 (= (_1!14629 (_1!14630 (h!30285 mapDefault!13817))) ((as const (Array Context!2986 Bool)) false)))))

(declare-fun b!2156264 () Bool)

(declare-fun e!1379276 () Bool)

(declare-fun tp!671391 () Bool)

(assert (=> b!2156264 (= e!1379276 tp!671391)))

(declare-fun tp!671393 () Bool)

(declare-fun setElem!17674 () Context!2986)

(declare-fun setNonEmpty!17674 () Bool)

(assert (=> setNonEmpty!17674 (= setRes!17674 (and tp!671393 (inv!32900 setElem!17674) e!1379276))))

(declare-fun setRest!17674 () (InoxSet Context!2986))

(assert (=> setNonEmpty!17674 (= (_1!14629 (_1!14630 (h!30285 mapDefault!13817))) ((_ map or) (store ((as const (Array Context!2986 Bool)) false) setElem!17674 true) setRest!17674))))

(declare-fun setIsEmpty!17674 () Bool)

(assert (=> setIsEmpty!17674 setRes!17674))

(assert (=> b!2156145 (= tp!671309 e!1379277)))

(assert (= (and b!2156263 condSetEmpty!17674) setIsEmpty!17674))

(assert (= (and b!2156263 (not condSetEmpty!17674)) setNonEmpty!17674))

(assert (= setNonEmpty!17674 b!2156264))

(assert (= (and b!2156145 ((_ is Cons!24884) mapDefault!13817)) b!2156263))

(declare-fun m!2596959 () Bool)

(assert (=> setNonEmpty!17674 m!2596959))

(declare-fun b_lambda!70985 () Bool)

(assert (= b_lambda!70981 (or b!2156129 b_lambda!70985)))

(declare-fun bs!445870 () Bool)

(declare-fun d!646401 () Bool)

(assert (= bs!445870 (and d!646401 b!2156129)))

(assert (=> bs!445870 (= (dynLambda!11415 lambda!81358 (h!30284 stack!12)) (= (totalInput!3357 (h!30284 stack!12)) totalInput!880))))

(assert (=> b!2156183 d!646401))

(declare-fun b_lambda!70987 () Bool)

(assert (= b_lambda!70983 (or b!2156141 b_lambda!70987)))

(declare-fun bs!445871 () Bool)

(declare-fun d!646403 () Bool)

(assert (= bs!445871 (and d!646403 b!2156141)))

(assert (=> bs!445871 (= (dynLambda!11415 lambda!81359 (h!30284 stack!12)) (= (res!929469 (h!30284 stack!12)) res!17610))))

(assert (=> b!2156194 d!646403))

(check-sat (not b!2156167) (not setNonEmpty!17659) (not b!2156169) (not b!2156193) (not b!2156216) (not b!2156136) (not b!2156242) (not b!2156187) (not b!2156178) (not d!646387) (not setNonEmpty!17674) (not b!2156262) (not b!2156257) (not b!2156238) (not b!2156204) (not b!2156142) (not b!2156225) (not d!646383) (not b!2156243) b_and!173303 (not setNonEmpty!17663) (not b!2156195) (not b!2156223) (not d!646375) (not mapNonEmpty!13820) (not b!2156241) (not b!2156263) (not b!2156184) (not b!2156240) (not b!2156211) (not b_lambda!70985) (not b!2156205) (not b_next!64391) (not b!2156237) (not setNonEmpty!17662) (not b!2156185) (not b!2156164) (not d!646393) (not b!2156244) (not b!2156190) (not b!2156206) (not setNonEmpty!17670) (not b!2156176) (not d!646397) b_and!173301 (not d!646381) (not setNonEmpty!17668) (not b!2156226) (not b!2156245) (not d!646377) (not b!2156258) (not b!2156264) (not b!2156239) (not b!2156168) (not b!2156188) (not b!2156259) (not b!2156130) (not b!2156224) (not b_lambda!70987) (not b!2156260) (not b!2156256) (not setNonEmpty!17673) (not b!2156261) (not b_next!64389) (not setNonEmpty!17669))
(check-sat b_and!173303 b_and!173301 (not b_next!64391) (not b_next!64389))
