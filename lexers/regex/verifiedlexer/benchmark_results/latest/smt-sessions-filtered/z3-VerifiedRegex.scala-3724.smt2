; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209062 () Bool)

(assert start!209062)

(declare-fun b!2155138 () Bool)

(declare-fun b_free!63653 () Bool)

(declare-fun b_next!64357 () Bool)

(assert (=> b!2155138 (= b_free!63653 (not b_next!64357))))

(declare-fun tp!670689 () Bool)

(declare-fun b_and!173269 () Bool)

(assert (=> b!2155138 (= tp!670689 b_and!173269)))

(declare-fun b!2155135 () Bool)

(declare-fun b_free!63655 () Bool)

(declare-fun b_next!64359 () Bool)

(assert (=> b!2155135 (= b_free!63655 (not b_next!64359))))

(declare-fun tp!670681 () Bool)

(declare-fun b_and!173271 () Bool)

(assert (=> b!2155135 (= tp!670681 b_and!173271)))

(declare-fun b!2155134 () Bool)

(assert (=> b!2155134 true))

(declare-fun bs!445808 () Bool)

(declare-fun b!2155150 () Bool)

(assert (= bs!445808 (and b!2155150 b!2155134)))

(declare-fun lambda!81287 () Int)

(declare-fun lambda!81286 () Int)

(assert (=> bs!445808 (not (= lambda!81287 lambda!81286))))

(assert (=> b!2155150 true))

(declare-fun e!1378471 () Bool)

(declare-datatypes ((C!11976 0))(
  ( (C!11977 (val!6974 Int)) )
))
(declare-datatypes ((Regex!5915 0))(
  ( (ElementMatch!5915 (c!341491 C!11976)) (Concat!10217 (regOne!12342 Regex!5915) (regTwo!12342 Regex!5915)) (EmptyExpr!5915) (Star!5915 (reg!6244 Regex!5915)) (EmptyLang!5915) (Union!5915 (regOne!12343 Regex!5915) (regTwo!12343 Regex!5915)) )
))
(declare-datatypes ((List!24935 0))(
  ( (Nil!24851) (Cons!24851 (h!30252 Regex!5915) (t!197483 List!24935)) )
))
(declare-datatypes ((Context!2970 0))(
  ( (Context!2971 (exprs!1985 List!24935)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3714 0))(
  ( (tuple3!3715 (_1!14609 (InoxSet Context!2970)) (_2!14609 Int) (_3!2327 Int)) )
))
(declare-datatypes ((tuple2!24564 0))(
  ( (tuple2!24565 (_1!14610 tuple3!3714) (_2!14610 Int)) )
))
(declare-datatypes ((List!24936 0))(
  ( (Nil!24852) (Cons!24852 (h!30253 tuple2!24564) (t!197484 List!24936)) )
))
(declare-datatypes ((array!9921 0))(
  ( (array!9922 (arr!4428 (Array (_ BitVec 32) (_ BitVec 64))) (size!19420 (_ BitVec 32))) )
))
(declare-datatypes ((array!9923 0))(
  ( (array!9924 (arr!4429 (Array (_ BitVec 32) List!24936)) (size!19421 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5832 0))(
  ( (LongMapFixedSize!5833 (defaultEntry!3281 Int) (mask!7189 (_ BitVec 32)) (extraKeys!3164 (_ BitVec 32)) (zeroValue!3174 List!24936) (minValue!3174 List!24936) (_size!5883 (_ BitVec 32)) (_keys!3213 array!9921) (_values!3196 array!9923) (_vacant!2977 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11489 0))(
  ( (Cell!11490 (v!29295 LongMapFixedSize!5832)) )
))
(declare-datatypes ((Hashable!2830 0))(
  ( (HashableExt!2829 (__x!16924 Int)) )
))
(declare-datatypes ((MutLongMap!2916 0))(
  ( (LongMap!2916 (underlying!6027 Cell!11489)) (MutLongMapExt!2915 (__x!16925 Int)) )
))
(declare-datatypes ((Cell!11491 0))(
  ( (Cell!11492 (v!29296 MutLongMap!2916)) )
))
(declare-datatypes ((MutableMap!2830 0))(
  ( (MutableMapExt!2829 (__x!16926 Int)) (HashMap!2830 (underlying!6028 Cell!11491) (hashF!4753 Hashable!2830) (_size!5884 (_ BitVec 32)) (defaultValue!2992 Int)) )
))
(declare-datatypes ((List!24937 0))(
  ( (Nil!24853) (Cons!24853 (h!30254 C!11976) (t!197485 List!24937)) )
))
(declare-datatypes ((IArray!16107 0))(
  ( (IArray!16108 (innerList!8111 List!24937)) )
))
(declare-datatypes ((Conc!8051 0))(
  ( (Node!8051 (left!19123 Conc!8051) (right!19453 Conc!8051) (csize!16332 Int) (cheight!8262 Int)) (Leaf!11776 (xs!10993 IArray!16107) (csize!16333 Int)) (Empty!8051) )
))
(declare-datatypes ((BalanceConc!15864 0))(
  ( (BalanceConc!15865 (c!341492 Conc!8051)) )
))
(declare-datatypes ((CacheFurthestNullable!1018 0))(
  ( (CacheFurthestNullable!1019 (cache!3211 MutableMap!2830) (totalInput!3343 BalanceConc!15864)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1018)

(declare-fun b!2155131 () Bool)

(declare-fun e!1378466 () Bool)

(declare-fun e!1378470 () Bool)

(declare-fun inv!32843 (BalanceConc!15864) Bool)

(assert (=> b!2155131 (= e!1378466 (and e!1378470 (inv!32843 (totalInput!3343 cacheFurthestNullable!118)) e!1378471))))

(declare-fun b!2155132 () Bool)

(declare-fun res!929146 () Bool)

(declare-fun e!1378461 () Bool)

(assert (=> b!2155132 (=> (not res!929146) (not e!1378461))))

(declare-fun totalInput!880 () BalanceConc!15864)

(assert (=> b!2155132 (= res!929146 (= (totalInput!3343 cacheFurthestNullable!118) totalInput!880))))

(declare-fun b!2155133 () Bool)

(declare-fun e!1378460 () Bool)

(declare-datatypes ((Unit!37942 0))(
  ( (Unit!37943) )
))
(declare-datatypes ((tuple2!24566 0))(
  ( (tuple2!24567 (_1!14611 Unit!37942) (_2!14611 CacheFurthestNullable!1018)) )
))
(declare-fun lt!801520 () tuple2!24566)

(assert (=> b!2155133 (= e!1378460 (not (= (totalInput!3343 (_2!14611 lt!801520)) totalInput!880)))))

(declare-fun res!929141 () Bool)

(assert (=> b!2155134 (=> (not res!929141) (not e!1378461))))

(declare-datatypes ((StackFrame!364 0))(
  ( (StackFrame!365 (z!5990 (InoxSet Context!2970)) (from!2831 Int) (lastNullablePos!518 Int) (res!929147 Int) (totalInput!3344 BalanceConc!15864)) )
))
(declare-datatypes ((List!24938 0))(
  ( (Nil!24854) (Cons!24854 (h!30255 StackFrame!364) (t!197486 List!24938)) )
))
(declare-fun stack!12 () List!24938)

(declare-fun forall!5101 (List!24938 Int) Bool)

(assert (=> b!2155134 (= res!929141 (forall!5101 stack!12 lambda!81286))))

(declare-fun e!1378465 () Bool)

(declare-fun tp!670691 () Bool)

(declare-fun e!1378457 () Bool)

(declare-fun tp!670685 () Bool)

(declare-fun array_inv!3180 (array!9921) Bool)

(declare-fun array_inv!3181 (array!9923) Bool)

(assert (=> b!2155135 (= e!1378457 (and tp!670681 tp!670685 tp!670691 (array_inv!3180 (_keys!3213 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) (array_inv!3181 (_values!3196 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) e!1378465))))

(declare-fun b!2155136 () Bool)

(declare-fun tp!670688 () Bool)

(declare-fun inv!32844 (Conc!8051) Bool)

(assert (=> b!2155136 (= e!1378471 (and (inv!32844 (c!341492 (totalInput!3343 cacheFurthestNullable!118))) tp!670688))))

(declare-fun b!2155137 () Bool)

(declare-fun setRes!17560 () Bool)

(declare-fun e!1378458 () Bool)

(declare-fun e!1378455 () Bool)

(assert (=> b!2155137 (= e!1378455 (and setRes!17560 (inv!32843 (totalInput!3344 (h!30255 stack!12))) e!1378458))))

(declare-fun condSetEmpty!17560 () Bool)

(assert (=> b!2155137 (= condSetEmpty!17560 (= (z!5990 (h!30255 stack!12)) ((as const (Array Context!2970 Bool)) false)))))

(declare-fun e!1378467 () Bool)

(assert (=> b!2155138 (= e!1378470 (and e!1378467 tp!670689))))

(declare-fun b!2155139 () Bool)

(declare-fun e!1378456 () tuple2!24566)

(declare-fun Unit!37944 () Unit!37942)

(assert (=> b!2155139 (= e!1378456 (tuple2!24567 Unit!37944 cacheFurthestNullable!118))))

(declare-fun setIsEmpty!17560 () Bool)

(assert (=> setIsEmpty!17560 setRes!17560))

(declare-fun b!2155130 () Bool)

(declare-fun e!1378464 () Bool)

(declare-fun lt!801518 () MutLongMap!2916)

(get-info :version)

(assert (=> b!2155130 (= e!1378467 (and e!1378464 ((_ is LongMap!2916) lt!801518)))))

(assert (=> b!2155130 (= lt!801518 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))

(declare-fun res!929145 () Bool)

(assert (=> start!209062 (=> (not res!929145) (not e!1378461))))

(declare-fun valid!2252 (CacheFurthestNullable!1018) Bool)

(assert (=> start!209062 (= res!929145 (valid!2252 cacheFurthestNullable!118))))

(assert (=> start!209062 e!1378461))

(declare-fun inv!32845 (CacheFurthestNullable!1018) Bool)

(assert (=> start!209062 (and (inv!32845 cacheFurthestNullable!118) e!1378466)))

(assert (=> start!209062 true))

(declare-fun e!1378463 () Bool)

(assert (=> start!209062 (and (inv!32843 totalInput!880) e!1378463)))

(declare-fun e!1378462 () Bool)

(assert (=> start!209062 e!1378462))

(declare-fun mapIsEmpty!13781 () Bool)

(declare-fun mapRes!13781 () Bool)

(assert (=> mapIsEmpty!13781 mapRes!13781))

(declare-fun b!2155140 () Bool)

(declare-fun e!1378459 () Bool)

(assert (=> b!2155140 (= e!1378464 e!1378459)))

(declare-fun b!2155141 () Bool)

(declare-fun tp!670680 () Bool)

(assert (=> b!2155141 (= e!1378463 (and (inv!32844 (c!341492 totalInput!880)) tp!670680))))

(declare-fun setNonEmpty!17560 () Bool)

(declare-fun tp!670682 () Bool)

(declare-fun e!1378468 () Bool)

(declare-fun setElem!17560 () Context!2970)

(declare-fun inv!32846 (Context!2970) Bool)

(assert (=> setNonEmpty!17560 (= setRes!17560 (and tp!670682 (inv!32846 setElem!17560) e!1378468))))

(declare-fun setRest!17560 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17560 (= (z!5990 (h!30255 stack!12)) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17560 true) setRest!17560))))

(declare-fun b!2155142 () Bool)

(declare-fun tp!670686 () Bool)

(assert (=> b!2155142 (= e!1378458 (and (inv!32844 (c!341492 (totalInput!3344 (h!30255 stack!12)))) tp!670686))))

(declare-fun mapNonEmpty!13781 () Bool)

(declare-fun tp!670687 () Bool)

(declare-fun tp!670683 () Bool)

(assert (=> mapNonEmpty!13781 (= mapRes!13781 (and tp!670687 tp!670683))))

(declare-fun mapKey!13781 () (_ BitVec 32))

(declare-fun mapRest!13781 () (Array (_ BitVec 32) List!24936))

(declare-fun mapValue!13781 () List!24936)

(assert (=> mapNonEmpty!13781 (= (arr!4429 (_values!3196 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) (store mapRest!13781 mapKey!13781 mapValue!13781))))

(declare-fun b!2155143 () Bool)

(declare-fun res!929143 () Bool)

(assert (=> b!2155143 (=> (not res!929143) (not e!1378461))))

(assert (=> b!2155143 (= res!929143 (not ((_ is Nil!24854) stack!12)))))

(declare-fun tp!670690 () Bool)

(declare-fun b!2155144 () Bool)

(declare-fun inv!32847 (StackFrame!364) Bool)

(assert (=> b!2155144 (= e!1378462 (and (inv!32847 (h!30255 stack!12)) e!1378455 tp!670690))))

(declare-fun b!2155145 () Bool)

(assert (=> b!2155145 (= e!1378459 e!1378457)))

(declare-fun b!2155146 () Bool)

(declare-fun tp!670679 () Bool)

(assert (=> b!2155146 (= e!1378468 tp!670679)))

(declare-fun b!2155147 () Bool)

(declare-fun res!17610 () Int)

(declare-fun update!92 (CacheFurthestNullable!1018 (InoxSet Context!2970) Int Int Int BalanceConc!15864) tuple2!24566)

(assert (=> b!2155147 (= e!1378456 (update!92 cacheFurthestNullable!118 (z!5990 (h!30255 stack!12)) (from!2831 (h!30255 stack!12)) (lastNullablePos!518 (h!30255 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801519 () Unit!37942)

(declare-fun lemmaInvariant!399 (CacheFurthestNullable!1018) Unit!37942)

(assert (=> b!2155147 (= lt!801519 (lemmaInvariant!399 cacheFurthestNullable!118))))

(declare-fun b!2155148 () Bool)

(assert (=> b!2155148 (= e!1378461 e!1378460)))

(declare-fun res!929144 () Bool)

(assert (=> b!2155148 (=> (not res!929144) (not e!1378460))))

(assert (=> b!2155148 (= res!929144 (valid!2252 (_2!14611 lt!801520)))))

(assert (=> b!2155148 (= lt!801520 e!1378456)))

(declare-fun c!341490 () Bool)

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2155148 (= c!341490 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2155149 () Bool)

(declare-fun tp!670684 () Bool)

(assert (=> b!2155149 (= e!1378465 (and tp!670684 mapRes!13781))))

(declare-fun condMapEmpty!13781 () Bool)

(declare-fun mapDefault!13781 () List!24936)

(assert (=> b!2155149 (= condMapEmpty!13781 (= (arr!4429 (_values!3196 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24936)) mapDefault!13781)))))

(declare-fun res!929142 () Bool)

(assert (=> b!2155150 (=> (not res!929142) (not e!1378461))))

(assert (=> b!2155150 (= res!929142 (forall!5101 stack!12 lambda!81287))))

(assert (= (and start!209062 res!929145) b!2155132))

(assert (= (and b!2155132 res!929146) b!2155134))

(assert (= (and b!2155134 res!929141) b!2155150))

(assert (= (and b!2155150 res!929142) b!2155143))

(assert (= (and b!2155143 res!929143) b!2155148))

(assert (= (and b!2155148 c!341490) b!2155139))

(assert (= (and b!2155148 (not c!341490)) b!2155147))

(assert (= (and b!2155148 res!929144) b!2155133))

(assert (= (and b!2155149 condMapEmpty!13781) mapIsEmpty!13781))

(assert (= (and b!2155149 (not condMapEmpty!13781)) mapNonEmpty!13781))

(assert (= b!2155135 b!2155149))

(assert (= b!2155145 b!2155135))

(assert (= b!2155140 b!2155145))

(assert (= (and b!2155130 ((_ is LongMap!2916) (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))) b!2155140))

(assert (= b!2155138 b!2155130))

(assert (= (and b!2155131 ((_ is HashMap!2830) (cache!3211 cacheFurthestNullable!118))) b!2155138))

(assert (= b!2155131 b!2155136))

(assert (= start!209062 b!2155131))

(assert (= start!209062 b!2155141))

(assert (= (and b!2155137 condSetEmpty!17560) setIsEmpty!17560))

(assert (= (and b!2155137 (not condSetEmpty!17560)) setNonEmpty!17560))

(assert (= setNonEmpty!17560 b!2155146))

(assert (= b!2155137 b!2155142))

(assert (= b!2155144 b!2155137))

(assert (= (and start!209062 ((_ is Cons!24854) stack!12)) b!2155144))

(declare-fun m!2596217 () Bool)

(assert (=> b!2155134 m!2596217))

(declare-fun m!2596219 () Bool)

(assert (=> b!2155148 m!2596219))

(declare-fun m!2596221 () Bool)

(assert (=> start!209062 m!2596221))

(declare-fun m!2596223 () Bool)

(assert (=> start!209062 m!2596223))

(declare-fun m!2596225 () Bool)

(assert (=> start!209062 m!2596225))

(declare-fun m!2596227 () Bool)

(assert (=> b!2155135 m!2596227))

(declare-fun m!2596229 () Bool)

(assert (=> b!2155135 m!2596229))

(declare-fun m!2596231 () Bool)

(assert (=> b!2155144 m!2596231))

(declare-fun m!2596233 () Bool)

(assert (=> b!2155136 m!2596233))

(declare-fun m!2596235 () Bool)

(assert (=> b!2155142 m!2596235))

(declare-fun m!2596237 () Bool)

(assert (=> mapNonEmpty!13781 m!2596237))

(declare-fun m!2596239 () Bool)

(assert (=> b!2155131 m!2596239))

(declare-fun m!2596241 () Bool)

(assert (=> b!2155147 m!2596241))

(declare-fun m!2596243 () Bool)

(assert (=> b!2155147 m!2596243))

(declare-fun m!2596245 () Bool)

(assert (=> setNonEmpty!17560 m!2596245))

(declare-fun m!2596247 () Bool)

(assert (=> b!2155137 m!2596247))

(declare-fun m!2596249 () Bool)

(assert (=> b!2155141 m!2596249))

(declare-fun m!2596251 () Bool)

(assert (=> b!2155150 m!2596251))

(check-sat (not b!2155134) (not setNonEmpty!17560) (not b!2155146) (not b!2155131) (not b!2155136) (not b!2155147) (not b!2155149) (not b!2155144) b_and!173269 (not b!2155150) (not b!2155135) (not b_next!64359) (not mapNonEmpty!13781) (not b_next!64357) (not start!209062) (not b!2155137) b_and!173271 (not b!2155142) (not b!2155148) (not b!2155141))
(check-sat b_and!173269 b_and!173271 (not b_next!64357) (not b_next!64359))
(get-model)

(declare-fun d!646205 () Bool)

(declare-fun validCacheMapFurthestNullable!168 (MutableMap!2830 BalanceConc!15864) Bool)

(assert (=> d!646205 (= (valid!2252 cacheFurthestNullable!118) (validCacheMapFurthestNullable!168 (cache!3211 cacheFurthestNullable!118) (totalInput!3343 cacheFurthestNullable!118)))))

(declare-fun bs!445809 () Bool)

(assert (= bs!445809 d!646205))

(declare-fun m!2596253 () Bool)

(assert (=> bs!445809 m!2596253))

(assert (=> start!209062 d!646205))

(declare-fun d!646207 () Bool)

(declare-fun res!929150 () Bool)

(declare-fun e!1378474 () Bool)

(assert (=> d!646207 (=> (not res!929150) (not e!1378474))))

(assert (=> d!646207 (= res!929150 ((_ is HashMap!2830) (cache!3211 cacheFurthestNullable!118)))))

(assert (=> d!646207 (= (inv!32845 cacheFurthestNullable!118) e!1378474)))

(declare-fun b!2155157 () Bool)

(assert (=> b!2155157 (= e!1378474 (validCacheMapFurthestNullable!168 (cache!3211 cacheFurthestNullable!118) (totalInput!3343 cacheFurthestNullable!118)))))

(assert (= (and d!646207 res!929150) b!2155157))

(assert (=> b!2155157 m!2596253))

(assert (=> start!209062 d!646207))

(declare-fun d!646209 () Bool)

(declare-fun isBalanced!2497 (Conc!8051) Bool)

(assert (=> d!646209 (= (inv!32843 totalInput!880) (isBalanced!2497 (c!341492 totalInput!880)))))

(declare-fun bs!445810 () Bool)

(assert (= bs!445810 d!646209))

(declare-fun m!2596255 () Bool)

(assert (=> bs!445810 m!2596255))

(assert (=> start!209062 d!646209))

(declare-fun b!2155170 () Bool)

(declare-fun e!1378479 () Bool)

(assert (=> b!2155170 (= e!1378479 (= (lastNullablePos!518 (h!30255 stack!12)) (- (from!2831 (h!30255 stack!12)) 1)))))

(declare-fun b!2155171 () Bool)

(declare-fun e!1378480 () Bool)

(declare-fun furthestNullablePosition!131 ((InoxSet Context!2970) Int BalanceConc!15864 Int Int) Int)

(declare-fun size!19422 (BalanceConc!15864) Int)

(assert (=> b!2155171 (= e!1378480 (= (res!929147 (h!30255 stack!12)) (furthestNullablePosition!131 (z!5990 (h!30255 stack!12)) (from!2831 (h!30255 stack!12)) (totalInput!3344 (h!30255 stack!12)) (size!19422 (totalInput!3344 (h!30255 stack!12))) (lastNullablePos!518 (h!30255 stack!12)))))))

(declare-fun b!2155173 () Bool)

(declare-fun res!929167 () Bool)

(assert (=> b!2155173 (=> (not res!929167) (not e!1378480))))

(assert (=> b!2155173 (= res!929167 (and (>= (lastNullablePos!518 (h!30255 stack!12)) (- 1)) (< (lastNullablePos!518 (h!30255 stack!12)) (from!2831 (h!30255 stack!12)))))))

(declare-fun b!2155174 () Bool)

(declare-fun res!929164 () Bool)

(assert (=> b!2155174 (=> (not res!929164) (not e!1378480))))

(assert (=> b!2155174 (= res!929164 e!1378479)))

(declare-fun res!929168 () Bool)

(assert (=> b!2155174 (=> res!929168 e!1378479)))

(declare-fun nullableZipper!219 ((InoxSet Context!2970)) Bool)

(assert (=> b!2155174 (= res!929168 (not (nullableZipper!219 (z!5990 (h!30255 stack!12)))))))

(declare-fun b!2155175 () Bool)

(declare-fun res!929166 () Bool)

(assert (=> b!2155175 (=> (not res!929166) (not e!1378480))))

(assert (=> b!2155175 (= res!929166 (= (size!19422 (totalInput!3344 (h!30255 stack!12))) (size!19422 (totalInput!3344 (h!30255 stack!12)))))))

(declare-fun d!646211 () Bool)

(declare-fun res!929163 () Bool)

(assert (=> d!646211 (=> (not res!929163) (not e!1378480))))

(assert (=> d!646211 (= res!929163 (>= (from!2831 (h!30255 stack!12)) 0))))

(assert (=> d!646211 (= (inv!32847 (h!30255 stack!12)) e!1378480)))

(declare-fun b!2155172 () Bool)

(declare-fun res!929165 () Bool)

(assert (=> b!2155172 (=> (not res!929165) (not e!1378480))))

(assert (=> b!2155172 (= res!929165 (<= (from!2831 (h!30255 stack!12)) (size!19422 (totalInput!3344 (h!30255 stack!12)))))))

(assert (= (and d!646211 res!929163) b!2155172))

(assert (= (and b!2155172 res!929165) b!2155175))

(assert (= (and b!2155175 res!929166) b!2155173))

(assert (= (and b!2155173 res!929167) b!2155174))

(assert (= (and b!2155174 (not res!929168)) b!2155170))

(assert (= (and b!2155174 res!929164) b!2155171))

(declare-fun m!2596257 () Bool)

(assert (=> b!2155171 m!2596257))

(assert (=> b!2155171 m!2596257))

(declare-fun m!2596259 () Bool)

(assert (=> b!2155171 m!2596259))

(declare-fun m!2596261 () Bool)

(assert (=> b!2155174 m!2596261))

(assert (=> b!2155175 m!2596257))

(assert (=> b!2155172 m!2596257))

(assert (=> b!2155144 d!646211))

(declare-fun d!646213 () Bool)

(assert (=> d!646213 (= (valid!2252 (_2!14611 lt!801520)) (validCacheMapFurthestNullable!168 (cache!3211 (_2!14611 lt!801520)) (totalInput!3343 (_2!14611 lt!801520))))))

(declare-fun bs!445811 () Bool)

(assert (= bs!445811 d!646213))

(declare-fun m!2596263 () Bool)

(assert (=> bs!445811 m!2596263))

(assert (=> b!2155148 d!646213))

(declare-fun d!646215 () Bool)

(assert (=> d!646215 (= (inv!32843 (totalInput!3343 cacheFurthestNullable!118)) (isBalanced!2497 (c!341492 (totalInput!3343 cacheFurthestNullable!118))))))

(declare-fun bs!445812 () Bool)

(assert (= bs!445812 d!646215))

(declare-fun m!2596265 () Bool)

(assert (=> bs!445812 m!2596265))

(assert (=> b!2155131 d!646215))

(declare-fun d!646217 () Bool)

(declare-fun e!1378483 () Bool)

(assert (=> d!646217 e!1378483))

(declare-fun res!929172 () Bool)

(assert (=> d!646217 (=> (not res!929172) (not e!1378483))))

(declare-fun lt!801523 () tuple2!24566)

(assert (=> d!646217 (= res!929172 (validCacheMapFurthestNullable!168 (cache!3211 (_2!14611 lt!801523)) (totalInput!3343 (_2!14611 lt!801523))))))

(declare-fun choose!12709 (CacheFurthestNullable!1018 (InoxSet Context!2970) Int Int Int BalanceConc!15864) tuple2!24566)

(assert (=> d!646217 (= lt!801523 (choose!12709 cacheFurthestNullable!118 (z!5990 (h!30255 stack!12)) (from!2831 (h!30255 stack!12)) (lastNullablePos!518 (h!30255 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646217 (= totalInput!880 (totalInput!3343 cacheFurthestNullable!118))))

(assert (=> d!646217 (= (update!92 cacheFurthestNullable!118 (z!5990 (h!30255 stack!12)) (from!2831 (h!30255 stack!12)) (lastNullablePos!518 (h!30255 stack!12)) res!17610 totalInput!880) lt!801523)))

(declare-fun b!2155178 () Bool)

(assert (=> b!2155178 (= e!1378483 (= (totalInput!3343 (_2!14611 lt!801523)) totalInput!880))))

(assert (= (and d!646217 res!929172) b!2155178))

(declare-fun m!2596267 () Bool)

(assert (=> d!646217 m!2596267))

(declare-fun m!2596269 () Bool)

(assert (=> d!646217 m!2596269))

(assert (=> b!2155147 d!646217))

(declare-fun d!646219 () Bool)

(assert (=> d!646219 (valid!2252 cacheFurthestNullable!118)))

(declare-fun Unit!37945 () Unit!37942)

(assert (=> d!646219 (= (lemmaInvariant!399 cacheFurthestNullable!118) Unit!37945)))

(declare-fun bs!445813 () Bool)

(assert (= bs!445813 d!646219))

(assert (=> bs!445813 m!2596221))

(assert (=> b!2155147 d!646219))

(declare-fun d!646221 () Bool)

(declare-fun res!929177 () Bool)

(declare-fun e!1378488 () Bool)

(assert (=> d!646221 (=> res!929177 e!1378488)))

(assert (=> d!646221 (= res!929177 ((_ is Nil!24854) stack!12))))

(assert (=> d!646221 (= (forall!5101 stack!12 lambda!81286) e!1378488)))

(declare-fun b!2155183 () Bool)

(declare-fun e!1378489 () Bool)

(assert (=> b!2155183 (= e!1378488 e!1378489)))

(declare-fun res!929178 () Bool)

(assert (=> b!2155183 (=> (not res!929178) (not e!1378489))))

(declare-fun dynLambda!11411 (Int StackFrame!364) Bool)

(assert (=> b!2155183 (= res!929178 (dynLambda!11411 lambda!81286 (h!30255 stack!12)))))

(declare-fun b!2155184 () Bool)

(assert (=> b!2155184 (= e!1378489 (forall!5101 (t!197486 stack!12) lambda!81286))))

(assert (= (and d!646221 (not res!929177)) b!2155183))

(assert (= (and b!2155183 res!929178) b!2155184))

(declare-fun b_lambda!70937 () Bool)

(assert (=> (not b_lambda!70937) (not b!2155183)))

(declare-fun m!2596271 () Bool)

(assert (=> b!2155183 m!2596271))

(declare-fun m!2596273 () Bool)

(assert (=> b!2155184 m!2596273))

(assert (=> b!2155134 d!646221))

(declare-fun d!646223 () Bool)

(declare-fun c!341495 () Bool)

(assert (=> d!646223 (= c!341495 ((_ is Node!8051) (c!341492 (totalInput!3344 (h!30255 stack!12)))))))

(declare-fun e!1378494 () Bool)

(assert (=> d!646223 (= (inv!32844 (c!341492 (totalInput!3344 (h!30255 stack!12)))) e!1378494)))

(declare-fun b!2155191 () Bool)

(declare-fun inv!32848 (Conc!8051) Bool)

(assert (=> b!2155191 (= e!1378494 (inv!32848 (c!341492 (totalInput!3344 (h!30255 stack!12)))))))

(declare-fun b!2155192 () Bool)

(declare-fun e!1378495 () Bool)

(assert (=> b!2155192 (= e!1378494 e!1378495)))

(declare-fun res!929181 () Bool)

(assert (=> b!2155192 (= res!929181 (not ((_ is Leaf!11776) (c!341492 (totalInput!3344 (h!30255 stack!12))))))))

(assert (=> b!2155192 (=> res!929181 e!1378495)))

(declare-fun b!2155193 () Bool)

(declare-fun inv!32849 (Conc!8051) Bool)

(assert (=> b!2155193 (= e!1378495 (inv!32849 (c!341492 (totalInput!3344 (h!30255 stack!12)))))))

(assert (= (and d!646223 c!341495) b!2155191))

(assert (= (and d!646223 (not c!341495)) b!2155192))

(assert (= (and b!2155192 (not res!929181)) b!2155193))

(declare-fun m!2596275 () Bool)

(assert (=> b!2155191 m!2596275))

(declare-fun m!2596277 () Bool)

(assert (=> b!2155193 m!2596277))

(assert (=> b!2155142 d!646223))

(declare-fun d!646225 () Bool)

(declare-fun lambda!81290 () Int)

(declare-fun forall!5102 (List!24935 Int) Bool)

(assert (=> d!646225 (= (inv!32846 setElem!17560) (forall!5102 (exprs!1985 setElem!17560) lambda!81290))))

(declare-fun bs!445814 () Bool)

(assert (= bs!445814 d!646225))

(declare-fun m!2596279 () Bool)

(assert (=> bs!445814 m!2596279))

(assert (=> setNonEmpty!17560 d!646225))

(declare-fun d!646227 () Bool)

(declare-fun res!929182 () Bool)

(declare-fun e!1378496 () Bool)

(assert (=> d!646227 (=> res!929182 e!1378496)))

(assert (=> d!646227 (= res!929182 ((_ is Nil!24854) stack!12))))

(assert (=> d!646227 (= (forall!5101 stack!12 lambda!81287) e!1378496)))

(declare-fun b!2155194 () Bool)

(declare-fun e!1378497 () Bool)

(assert (=> b!2155194 (= e!1378496 e!1378497)))

(declare-fun res!929183 () Bool)

(assert (=> b!2155194 (=> (not res!929183) (not e!1378497))))

(assert (=> b!2155194 (= res!929183 (dynLambda!11411 lambda!81287 (h!30255 stack!12)))))

(declare-fun b!2155195 () Bool)

(assert (=> b!2155195 (= e!1378497 (forall!5101 (t!197486 stack!12) lambda!81287))))

(assert (= (and d!646227 (not res!929182)) b!2155194))

(assert (= (and b!2155194 res!929183) b!2155195))

(declare-fun b_lambda!70939 () Bool)

(assert (=> (not b_lambda!70939) (not b!2155194)))

(declare-fun m!2596281 () Bool)

(assert (=> b!2155194 m!2596281))

(declare-fun m!2596283 () Bool)

(assert (=> b!2155195 m!2596283))

(assert (=> b!2155150 d!646227))

(declare-fun d!646229 () Bool)

(declare-fun c!341496 () Bool)

(assert (=> d!646229 (= c!341496 ((_ is Node!8051) (c!341492 totalInput!880)))))

(declare-fun e!1378498 () Bool)

(assert (=> d!646229 (= (inv!32844 (c!341492 totalInput!880)) e!1378498)))

(declare-fun b!2155196 () Bool)

(assert (=> b!2155196 (= e!1378498 (inv!32848 (c!341492 totalInput!880)))))

(declare-fun b!2155197 () Bool)

(declare-fun e!1378499 () Bool)

(assert (=> b!2155197 (= e!1378498 e!1378499)))

(declare-fun res!929184 () Bool)

(assert (=> b!2155197 (= res!929184 (not ((_ is Leaf!11776) (c!341492 totalInput!880))))))

(assert (=> b!2155197 (=> res!929184 e!1378499)))

(declare-fun b!2155198 () Bool)

(assert (=> b!2155198 (= e!1378499 (inv!32849 (c!341492 totalInput!880)))))

(assert (= (and d!646229 c!341496) b!2155196))

(assert (= (and d!646229 (not c!341496)) b!2155197))

(assert (= (and b!2155197 (not res!929184)) b!2155198))

(declare-fun m!2596285 () Bool)

(assert (=> b!2155196 m!2596285))

(declare-fun m!2596287 () Bool)

(assert (=> b!2155198 m!2596287))

(assert (=> b!2155141 d!646229))

(declare-fun d!646231 () Bool)

(assert (=> d!646231 (= (inv!32843 (totalInput!3344 (h!30255 stack!12))) (isBalanced!2497 (c!341492 (totalInput!3344 (h!30255 stack!12)))))))

(declare-fun bs!445815 () Bool)

(assert (= bs!445815 d!646231))

(declare-fun m!2596289 () Bool)

(assert (=> bs!445815 m!2596289))

(assert (=> b!2155137 d!646231))

(declare-fun d!646233 () Bool)

(declare-fun c!341497 () Bool)

(assert (=> d!646233 (= c!341497 ((_ is Node!8051) (c!341492 (totalInput!3343 cacheFurthestNullable!118))))))

(declare-fun e!1378500 () Bool)

(assert (=> d!646233 (= (inv!32844 (c!341492 (totalInput!3343 cacheFurthestNullable!118))) e!1378500)))

(declare-fun b!2155199 () Bool)

(assert (=> b!2155199 (= e!1378500 (inv!32848 (c!341492 (totalInput!3343 cacheFurthestNullable!118))))))

(declare-fun b!2155200 () Bool)

(declare-fun e!1378501 () Bool)

(assert (=> b!2155200 (= e!1378500 e!1378501)))

(declare-fun res!929185 () Bool)

(assert (=> b!2155200 (= res!929185 (not ((_ is Leaf!11776) (c!341492 (totalInput!3343 cacheFurthestNullable!118)))))))

(assert (=> b!2155200 (=> res!929185 e!1378501)))

(declare-fun b!2155201 () Bool)

(assert (=> b!2155201 (= e!1378501 (inv!32849 (c!341492 (totalInput!3343 cacheFurthestNullable!118))))))

(assert (= (and d!646233 c!341497) b!2155199))

(assert (= (and d!646233 (not c!341497)) b!2155200))

(assert (= (and b!2155200 (not res!929185)) b!2155201))

(declare-fun m!2596291 () Bool)

(assert (=> b!2155199 m!2596291))

(declare-fun m!2596293 () Bool)

(assert (=> b!2155201 m!2596293))

(assert (=> b!2155136 d!646233))

(declare-fun d!646235 () Bool)

(assert (=> d!646235 (= (array_inv!3180 (_keys!3213 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) (bvsge (size!19420 (_keys!3213 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155135 d!646235))

(declare-fun d!646237 () Bool)

(assert (=> d!646237 (= (array_inv!3181 (_values!3196 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) (bvsge (size!19421 (_values!3196 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155135 d!646237))

(declare-fun b!2155206 () Bool)

(declare-fun e!1378504 () Bool)

(declare-fun tp!670696 () Bool)

(declare-fun tp!670697 () Bool)

(assert (=> b!2155206 (= e!1378504 (and tp!670696 tp!670697))))

(assert (=> b!2155146 (= tp!670679 e!1378504)))

(assert (= (and b!2155146 ((_ is Cons!24851) (exprs!1985 setElem!17560))) b!2155206))

(declare-fun tp!670705 () Bool)

(declare-fun b!2155215 () Bool)

(declare-fun tp!670704 () Bool)

(declare-fun e!1378510 () Bool)

(assert (=> b!2155215 (= e!1378510 (and (inv!32844 (left!19123 (c!341492 (totalInput!3344 (h!30255 stack!12))))) tp!670704 (inv!32844 (right!19453 (c!341492 (totalInput!3344 (h!30255 stack!12))))) tp!670705))))

(declare-fun b!2155217 () Bool)

(declare-fun e!1378509 () Bool)

(declare-fun tp!670706 () Bool)

(assert (=> b!2155217 (= e!1378509 tp!670706)))

(declare-fun b!2155216 () Bool)

(declare-fun inv!32850 (IArray!16107) Bool)

(assert (=> b!2155216 (= e!1378510 (and (inv!32850 (xs!10993 (c!341492 (totalInput!3344 (h!30255 stack!12))))) e!1378509))))

(assert (=> b!2155142 (= tp!670686 (and (inv!32844 (c!341492 (totalInput!3344 (h!30255 stack!12)))) e!1378510))))

(assert (= (and b!2155142 ((_ is Node!8051) (c!341492 (totalInput!3344 (h!30255 stack!12))))) b!2155215))

(assert (= b!2155216 b!2155217))

(assert (= (and b!2155142 ((_ is Leaf!11776) (c!341492 (totalInput!3344 (h!30255 stack!12))))) b!2155216))

(declare-fun m!2596295 () Bool)

(assert (=> b!2155215 m!2596295))

(declare-fun m!2596297 () Bool)

(assert (=> b!2155215 m!2596297))

(declare-fun m!2596299 () Bool)

(assert (=> b!2155216 m!2596299))

(assert (=> b!2155142 m!2596235))

(declare-fun condSetEmpty!17563 () Bool)

(assert (=> setNonEmpty!17560 (= condSetEmpty!17563 (= setRest!17560 ((as const (Array Context!2970 Bool)) false)))))

(declare-fun setRes!17563 () Bool)

(assert (=> setNonEmpty!17560 (= tp!670682 setRes!17563)))

(declare-fun setIsEmpty!17563 () Bool)

(assert (=> setIsEmpty!17563 setRes!17563))

(declare-fun e!1378513 () Bool)

(declare-fun tp!670711 () Bool)

(declare-fun setNonEmpty!17563 () Bool)

(declare-fun setElem!17563 () Context!2970)

(assert (=> setNonEmpty!17563 (= setRes!17563 (and tp!670711 (inv!32846 setElem!17563) e!1378513))))

(declare-fun setRest!17563 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17563 (= setRest!17560 ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17563 true) setRest!17563))))

(declare-fun b!2155222 () Bool)

(declare-fun tp!670712 () Bool)

(assert (=> b!2155222 (= e!1378513 tp!670712)))

(assert (= (and setNonEmpty!17560 condSetEmpty!17563) setIsEmpty!17563))

(assert (= (and setNonEmpty!17560 (not condSetEmpty!17563)) setNonEmpty!17563))

(assert (= setNonEmpty!17563 b!2155222))

(declare-fun m!2596301 () Bool)

(assert (=> setNonEmpty!17563 m!2596301))

(declare-fun b!2155233 () Bool)

(declare-fun e!1378524 () Bool)

(declare-fun tp!670724 () Bool)

(assert (=> b!2155233 (= e!1378524 tp!670724)))

(declare-fun tp!670721 () Bool)

(declare-fun b!2155234 () Bool)

(declare-fun e!1378522 () Bool)

(declare-fun e!1378523 () Bool)

(assert (=> b!2155234 (= e!1378522 (and (inv!32847 (h!30255 (t!197486 stack!12))) e!1378523 tp!670721))))

(declare-fun setIsEmpty!17566 () Bool)

(declare-fun setRes!17566 () Bool)

(assert (=> setIsEmpty!17566 setRes!17566))

(assert (=> b!2155144 (= tp!670690 e!1378522)))

(declare-fun setElem!17566 () Context!2970)

(declare-fun setNonEmpty!17566 () Bool)

(declare-fun tp!670722 () Bool)

(assert (=> setNonEmpty!17566 (= setRes!17566 (and tp!670722 (inv!32846 setElem!17566) e!1378524))))

(declare-fun setRest!17566 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17566 (= (z!5990 (h!30255 (t!197486 stack!12))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17566 true) setRest!17566))))

(declare-fun b!2155235 () Bool)

(declare-fun e!1378525 () Bool)

(declare-fun tp!670723 () Bool)

(assert (=> b!2155235 (= e!1378525 (and (inv!32844 (c!341492 (totalInput!3344 (h!30255 (t!197486 stack!12))))) tp!670723))))

(declare-fun b!2155236 () Bool)

(assert (=> b!2155236 (= e!1378523 (and setRes!17566 (inv!32843 (totalInput!3344 (h!30255 (t!197486 stack!12)))) e!1378525))))

(declare-fun condSetEmpty!17566 () Bool)

(assert (=> b!2155236 (= condSetEmpty!17566 (= (z!5990 (h!30255 (t!197486 stack!12))) ((as const (Array Context!2970 Bool)) false)))))

(assert (= (and b!2155236 condSetEmpty!17566) setIsEmpty!17566))

(assert (= (and b!2155236 (not condSetEmpty!17566)) setNonEmpty!17566))

(assert (= setNonEmpty!17566 b!2155233))

(assert (= b!2155236 b!2155235))

(assert (= b!2155234 b!2155236))

(assert (= (and b!2155144 ((_ is Cons!24854) (t!197486 stack!12))) b!2155234))

(declare-fun m!2596303 () Bool)

(assert (=> b!2155234 m!2596303))

(declare-fun m!2596305 () Bool)

(assert (=> setNonEmpty!17566 m!2596305))

(declare-fun m!2596307 () Bool)

(assert (=> b!2155235 m!2596307))

(declare-fun m!2596309 () Bool)

(assert (=> b!2155236 m!2596309))

(declare-fun tp!670725 () Bool)

(declare-fun tp!670726 () Bool)

(declare-fun b!2155237 () Bool)

(declare-fun e!1378527 () Bool)

(assert (=> b!2155237 (= e!1378527 (and (inv!32844 (left!19123 (c!341492 totalInput!880))) tp!670725 (inv!32844 (right!19453 (c!341492 totalInput!880))) tp!670726))))

(declare-fun b!2155239 () Bool)

(declare-fun e!1378526 () Bool)

(declare-fun tp!670727 () Bool)

(assert (=> b!2155239 (= e!1378526 tp!670727)))

(declare-fun b!2155238 () Bool)

(assert (=> b!2155238 (= e!1378527 (and (inv!32850 (xs!10993 (c!341492 totalInput!880))) e!1378526))))

(assert (=> b!2155141 (= tp!670680 (and (inv!32844 (c!341492 totalInput!880)) e!1378527))))

(assert (= (and b!2155141 ((_ is Node!8051) (c!341492 totalInput!880))) b!2155237))

(assert (= b!2155238 b!2155239))

(assert (= (and b!2155141 ((_ is Leaf!11776) (c!341492 totalInput!880))) b!2155238))

(declare-fun m!2596311 () Bool)

(assert (=> b!2155237 m!2596311))

(declare-fun m!2596313 () Bool)

(assert (=> b!2155237 m!2596313))

(declare-fun m!2596315 () Bool)

(assert (=> b!2155238 m!2596315))

(assert (=> b!2155141 m!2596249))

(declare-fun setRes!17569 () Bool)

(declare-fun setNonEmpty!17569 () Bool)

(declare-fun e!1378532 () Bool)

(declare-fun tp!670736 () Bool)

(declare-fun setElem!17569 () Context!2970)

(assert (=> setNonEmpty!17569 (= setRes!17569 (and tp!670736 (inv!32846 setElem!17569) e!1378532))))

(declare-fun setRest!17569 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17569 (= (_1!14609 (_1!14610 (h!30253 mapDefault!13781))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17569 true) setRest!17569))))

(declare-fun b!2155247 () Bool)

(declare-fun tp!670735 () Bool)

(assert (=> b!2155247 (= e!1378532 tp!670735)))

(declare-fun setIsEmpty!17569 () Bool)

(assert (=> setIsEmpty!17569 setRes!17569))

(declare-fun e!1378533 () Bool)

(assert (=> b!2155149 (= tp!670684 e!1378533)))

(declare-fun b!2155246 () Bool)

(declare-fun tp!670734 () Bool)

(assert (=> b!2155246 (= e!1378533 (and setRes!17569 tp!670734))))

(declare-fun condSetEmpty!17569 () Bool)

(assert (=> b!2155246 (= condSetEmpty!17569 (= (_1!14609 (_1!14610 (h!30253 mapDefault!13781))) ((as const (Array Context!2970 Bool)) false)))))

(assert (= (and b!2155246 condSetEmpty!17569) setIsEmpty!17569))

(assert (= (and b!2155246 (not condSetEmpty!17569)) setNonEmpty!17569))

(assert (= setNonEmpty!17569 b!2155247))

(assert (= (and b!2155149 ((_ is Cons!24852) mapDefault!13781)) b!2155246))

(declare-fun m!2596317 () Bool)

(assert (=> setNonEmpty!17569 m!2596317))

(declare-fun tp!670737 () Bool)

(declare-fun e!1378535 () Bool)

(declare-fun b!2155248 () Bool)

(declare-fun tp!670738 () Bool)

(assert (=> b!2155248 (= e!1378535 (and (inv!32844 (left!19123 (c!341492 (totalInput!3343 cacheFurthestNullable!118)))) tp!670737 (inv!32844 (right!19453 (c!341492 (totalInput!3343 cacheFurthestNullable!118)))) tp!670738))))

(declare-fun b!2155250 () Bool)

(declare-fun e!1378534 () Bool)

(declare-fun tp!670739 () Bool)

(assert (=> b!2155250 (= e!1378534 tp!670739)))

(declare-fun b!2155249 () Bool)

(assert (=> b!2155249 (= e!1378535 (and (inv!32850 (xs!10993 (c!341492 (totalInput!3343 cacheFurthestNullable!118)))) e!1378534))))

(assert (=> b!2155136 (= tp!670688 (and (inv!32844 (c!341492 (totalInput!3343 cacheFurthestNullable!118))) e!1378535))))

(assert (= (and b!2155136 ((_ is Node!8051) (c!341492 (totalInput!3343 cacheFurthestNullable!118)))) b!2155248))

(assert (= b!2155249 b!2155250))

(assert (= (and b!2155136 ((_ is Leaf!11776) (c!341492 (totalInput!3343 cacheFurthestNullable!118)))) b!2155249))

(declare-fun m!2596319 () Bool)

(assert (=> b!2155248 m!2596319))

(declare-fun m!2596321 () Bool)

(assert (=> b!2155248 m!2596321))

(declare-fun m!2596323 () Bool)

(assert (=> b!2155249 m!2596323))

(assert (=> b!2155136 m!2596233))

(declare-fun setIsEmpty!17574 () Bool)

(declare-fun setRes!17575 () Bool)

(assert (=> setIsEmpty!17574 setRes!17575))

(declare-fun b!2155261 () Bool)

(declare-fun e!1378546 () Bool)

(declare-fun tp!670760 () Bool)

(assert (=> b!2155261 (= e!1378546 tp!670760)))

(declare-fun mapNonEmpty!13784 () Bool)

(declare-fun mapRes!13784 () Bool)

(declare-fun tp!670758 () Bool)

(declare-fun e!1378547 () Bool)

(assert (=> mapNonEmpty!13784 (= mapRes!13784 (and tp!670758 e!1378547))))

(declare-fun mapKey!13784 () (_ BitVec 32))

(declare-fun mapRest!13784 () (Array (_ BitVec 32) List!24936))

(declare-fun mapValue!13784 () List!24936)

(assert (=> mapNonEmpty!13784 (= mapRest!13781 (store mapRest!13784 mapKey!13784 mapValue!13784))))

(declare-fun setNonEmpty!17574 () Bool)

(declare-fun e!1378545 () Bool)

(declare-fun setElem!17574 () Context!2970)

(declare-fun tp!670757 () Bool)

(assert (=> setNonEmpty!17574 (= setRes!17575 (and tp!670757 (inv!32846 setElem!17574) e!1378545))))

(declare-fun mapDefault!13784 () List!24936)

(declare-fun setRest!17575 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17574 (= (_1!14609 (_1!14610 (h!30253 mapDefault!13784))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17574 true) setRest!17575))))

(declare-fun b!2155262 () Bool)

(declare-fun e!1378544 () Bool)

(declare-fun tp!670759 () Bool)

(assert (=> b!2155262 (= e!1378544 (and setRes!17575 tp!670759))))

(declare-fun condSetEmpty!17574 () Bool)

(assert (=> b!2155262 (= condSetEmpty!17574 (= (_1!14609 (_1!14610 (h!30253 mapDefault!13784))) ((as const (Array Context!2970 Bool)) false)))))

(declare-fun b!2155263 () Bool)

(declare-fun setRes!17574 () Bool)

(declare-fun tp!670755 () Bool)

(assert (=> b!2155263 (= e!1378547 (and setRes!17574 tp!670755))))

(declare-fun condSetEmpty!17575 () Bool)

(assert (=> b!2155263 (= condSetEmpty!17575 (= (_1!14609 (_1!14610 (h!30253 mapValue!13784))) ((as const (Array Context!2970 Bool)) false)))))

(declare-fun condMapEmpty!13784 () Bool)

(assert (=> mapNonEmpty!13781 (= condMapEmpty!13784 (= mapRest!13781 ((as const (Array (_ BitVec 32) List!24936)) mapDefault!13784)))))

(assert (=> mapNonEmpty!13781 (= tp!670687 (and e!1378544 mapRes!13784))))

(declare-fun b!2155264 () Bool)

(declare-fun tp!670754 () Bool)

(assert (=> b!2155264 (= e!1378545 tp!670754)))

(declare-fun setIsEmpty!17575 () Bool)

(assert (=> setIsEmpty!17575 setRes!17574))

(declare-fun mapIsEmpty!13784 () Bool)

(assert (=> mapIsEmpty!13784 mapRes!13784))

(declare-fun setNonEmpty!17575 () Bool)

(declare-fun setElem!17575 () Context!2970)

(declare-fun tp!670756 () Bool)

(assert (=> setNonEmpty!17575 (= setRes!17574 (and tp!670756 (inv!32846 setElem!17575) e!1378546))))

(declare-fun setRest!17574 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17575 (= (_1!14609 (_1!14610 (h!30253 mapValue!13784))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17575 true) setRest!17574))))

(assert (= (and mapNonEmpty!13781 condMapEmpty!13784) mapIsEmpty!13784))

(assert (= (and mapNonEmpty!13781 (not condMapEmpty!13784)) mapNonEmpty!13784))

(assert (= (and b!2155263 condSetEmpty!17575) setIsEmpty!17575))

(assert (= (and b!2155263 (not condSetEmpty!17575)) setNonEmpty!17575))

(assert (= setNonEmpty!17575 b!2155261))

(assert (= (and mapNonEmpty!13784 ((_ is Cons!24852) mapValue!13784)) b!2155263))

(assert (= (and b!2155262 condSetEmpty!17574) setIsEmpty!17574))

(assert (= (and b!2155262 (not condSetEmpty!17574)) setNonEmpty!17574))

(assert (= setNonEmpty!17574 b!2155264))

(assert (= (and mapNonEmpty!13781 ((_ is Cons!24852) mapDefault!13784)) b!2155262))

(declare-fun m!2596325 () Bool)

(assert (=> mapNonEmpty!13784 m!2596325))

(declare-fun m!2596327 () Bool)

(assert (=> setNonEmpty!17574 m!2596327))

(declare-fun m!2596329 () Bool)

(assert (=> setNonEmpty!17575 m!2596329))

(declare-fun tp!670763 () Bool)

(declare-fun setElem!17576 () Context!2970)

(declare-fun setRes!17576 () Bool)

(declare-fun e!1378548 () Bool)

(declare-fun setNonEmpty!17576 () Bool)

(assert (=> setNonEmpty!17576 (= setRes!17576 (and tp!670763 (inv!32846 setElem!17576) e!1378548))))

(declare-fun setRest!17576 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17576 (= (_1!14609 (_1!14610 (h!30253 mapValue!13781))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17576 true) setRest!17576))))

(declare-fun b!2155266 () Bool)

(declare-fun tp!670762 () Bool)

(assert (=> b!2155266 (= e!1378548 tp!670762)))

(declare-fun setIsEmpty!17576 () Bool)

(assert (=> setIsEmpty!17576 setRes!17576))

(declare-fun e!1378549 () Bool)

(assert (=> mapNonEmpty!13781 (= tp!670683 e!1378549)))

(declare-fun b!2155265 () Bool)

(declare-fun tp!670761 () Bool)

(assert (=> b!2155265 (= e!1378549 (and setRes!17576 tp!670761))))

(declare-fun condSetEmpty!17576 () Bool)

(assert (=> b!2155265 (= condSetEmpty!17576 (= (_1!14609 (_1!14610 (h!30253 mapValue!13781))) ((as const (Array Context!2970 Bool)) false)))))

(assert (= (and b!2155265 condSetEmpty!17576) setIsEmpty!17576))

(assert (= (and b!2155265 (not condSetEmpty!17576)) setNonEmpty!17576))

(assert (= setNonEmpty!17576 b!2155266))

(assert (= (and mapNonEmpty!13781 ((_ is Cons!24852) mapValue!13781)) b!2155265))

(declare-fun m!2596331 () Bool)

(assert (=> setNonEmpty!17576 m!2596331))

(declare-fun tp!670766 () Bool)

(declare-fun setNonEmpty!17577 () Bool)

(declare-fun setRes!17577 () Bool)

(declare-fun setElem!17577 () Context!2970)

(declare-fun e!1378550 () Bool)

(assert (=> setNonEmpty!17577 (= setRes!17577 (and tp!670766 (inv!32846 setElem!17577) e!1378550))))

(declare-fun setRest!17577 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17577 (= (_1!14609 (_1!14610 (h!30253 (zeroValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17577 true) setRest!17577))))

(declare-fun b!2155268 () Bool)

(declare-fun tp!670765 () Bool)

(assert (=> b!2155268 (= e!1378550 tp!670765)))

(declare-fun setIsEmpty!17577 () Bool)

(assert (=> setIsEmpty!17577 setRes!17577))

(declare-fun e!1378551 () Bool)

(assert (=> b!2155135 (= tp!670685 e!1378551)))

(declare-fun b!2155267 () Bool)

(declare-fun tp!670764 () Bool)

(assert (=> b!2155267 (= e!1378551 (and setRes!17577 tp!670764))))

(declare-fun condSetEmpty!17577 () Bool)

(assert (=> b!2155267 (= condSetEmpty!17577 (= (_1!14609 (_1!14610 (h!30253 (zeroValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))))) ((as const (Array Context!2970 Bool)) false)))))

(assert (= (and b!2155267 condSetEmpty!17577) setIsEmpty!17577))

(assert (= (and b!2155267 (not condSetEmpty!17577)) setNonEmpty!17577))

(assert (= setNonEmpty!17577 b!2155268))

(assert (= (and b!2155135 ((_ is Cons!24852) (zeroValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118)))))))) b!2155267))

(declare-fun m!2596333 () Bool)

(assert (=> setNonEmpty!17577 m!2596333))

(declare-fun setElem!17578 () Context!2970)

(declare-fun e!1378552 () Bool)

(declare-fun setNonEmpty!17578 () Bool)

(declare-fun setRes!17578 () Bool)

(declare-fun tp!670769 () Bool)

(assert (=> setNonEmpty!17578 (= setRes!17578 (and tp!670769 (inv!32846 setElem!17578) e!1378552))))

(declare-fun setRest!17578 () (InoxSet Context!2970))

(assert (=> setNonEmpty!17578 (= (_1!14609 (_1!14610 (h!30253 (minValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2970 Bool)) false) setElem!17578 true) setRest!17578))))

(declare-fun b!2155270 () Bool)

(declare-fun tp!670768 () Bool)

(assert (=> b!2155270 (= e!1378552 tp!670768)))

(declare-fun setIsEmpty!17578 () Bool)

(assert (=> setIsEmpty!17578 setRes!17578))

(declare-fun e!1378553 () Bool)

(assert (=> b!2155135 (= tp!670691 e!1378553)))

(declare-fun b!2155269 () Bool)

(declare-fun tp!670767 () Bool)

(assert (=> b!2155269 (= e!1378553 (and setRes!17578 tp!670767))))

(declare-fun condSetEmpty!17578 () Bool)

(assert (=> b!2155269 (= condSetEmpty!17578 (= (_1!14609 (_1!14610 (h!30253 (minValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118))))))))) ((as const (Array Context!2970 Bool)) false)))))

(assert (= (and b!2155269 condSetEmpty!17578) setIsEmpty!17578))

(assert (= (and b!2155269 (not condSetEmpty!17578)) setNonEmpty!17578))

(assert (= setNonEmpty!17578 b!2155270))

(assert (= (and b!2155135 ((_ is Cons!24852) (minValue!3174 (v!29295 (underlying!6027 (v!29296 (underlying!6028 (cache!3211 cacheFurthestNullable!118)))))))) b!2155269))

(declare-fun m!2596335 () Bool)

(assert (=> setNonEmpty!17578 m!2596335))

(declare-fun b_lambda!70941 () Bool)

(assert (= b_lambda!70937 (or b!2155134 b_lambda!70941)))

(declare-fun bs!445816 () Bool)

(declare-fun d!646239 () Bool)

(assert (= bs!445816 (and d!646239 b!2155134)))

(assert (=> bs!445816 (= (dynLambda!11411 lambda!81286 (h!30255 stack!12)) (= (totalInput!3344 (h!30255 stack!12)) totalInput!880))))

(assert (=> b!2155183 d!646239))

(declare-fun b_lambda!70943 () Bool)

(assert (= b_lambda!70939 (or b!2155150 b_lambda!70943)))

(declare-fun bs!445817 () Bool)

(declare-fun d!646241 () Bool)

(assert (= bs!445817 (and d!646241 b!2155150)))

(assert (=> bs!445817 (= (dynLambda!11411 lambda!81287 (h!30255 stack!12)) (= (res!929147 (h!30255 stack!12)) res!17610))))

(assert (=> b!2155194 d!646241))

(check-sat (not b!2155268) (not b!2155136) (not b!2155217) (not b!2155234) b_and!173269 (not d!646225) (not setNonEmpty!17563) (not b!2155266) (not b!2155175) (not d!646213) (not b!2155250) (not b!2155262) (not setNonEmpty!17566) (not b!2155263) (not b!2155246) (not b!2155239) (not setNonEmpty!17576) (not b!2155184) (not setNonEmpty!17574) (not b!2155247) (not b!2155216) (not b!2155222) (not b!2155238) (not b!2155249) (not mapNonEmpty!13784) (not b!2155264) (not b!2155174) (not b!2155199) (not b!2155248) b_and!173271 (not b!2155142) (not b!2155269) (not b!2155171) (not d!646215) (not b_lambda!70943) (not b!2155191) (not b!2155195) (not setNonEmpty!17577) (not b!2155201) (not d!646205) (not setNonEmpty!17575) (not d!646231) (not d!646219) (not b!2155236) (not b!2155172) (not b!2155261) (not b!2155235) (not d!646217) (not b!2155233) (not b!2155265) (not b!2155141) (not b!2155215) (not b!2155193) (not b!2155267) (not b!2155206) (not b!2155237) (not setNonEmpty!17578) (not b!2155157) (not b_next!64359) (not b!2155198) (not b!2155270) (not b!2155196) (not setNonEmpty!17569) (not d!646209) (not b_lambda!70941) (not b_next!64357))
(check-sat b_and!173269 b_and!173271 (not b_next!64357) (not b_next!64359))
