; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208970 () Bool)

(assert start!208970)

(declare-fun b!2154170 () Bool)

(declare-fun b_free!63621 () Bool)

(declare-fun b_next!64325 () Bool)

(assert (=> b!2154170 (= b_free!63621 (not b_next!64325))))

(declare-fun tp!670135 () Bool)

(declare-fun b_and!173237 () Bool)

(assert (=> b!2154170 (= tp!670135 b_and!173237)))

(declare-fun b!2154164 () Bool)

(declare-fun b_free!63623 () Bool)

(declare-fun b_next!64327 () Bool)

(assert (=> b!2154164 (= b_free!63623 (not b_next!64327))))

(declare-fun tp!670134 () Bool)

(declare-fun b_and!173239 () Bool)

(assert (=> b!2154164 (= tp!670134 b_and!173239)))

(declare-fun b!2154154 () Bool)

(assert (=> b!2154154 true))

(declare-fun bs!445762 () Bool)

(declare-fun b!2154159 () Bool)

(assert (= bs!445762 (and b!2154159 b!2154154)))

(declare-fun lambda!81221 () Int)

(declare-fun lambda!81220 () Int)

(assert (=> bs!445762 (not (= lambda!81221 lambda!81220))))

(assert (=> b!2154159 true))

(declare-fun b!2154149 () Bool)

(declare-fun e!1377792 () Bool)

(declare-datatypes ((C!11960 0))(
  ( (C!11961 (val!6966 Int)) )
))
(declare-datatypes ((Regex!5907 0))(
  ( (ElementMatch!5907 (c!341434 C!11960)) (Concat!10209 (regOne!12326 Regex!5907) (regTwo!12326 Regex!5907)) (EmptyExpr!5907) (Star!5907 (reg!6236 Regex!5907)) (EmptyLang!5907) (Union!5907 (regOne!12327 Regex!5907) (regTwo!12327 Regex!5907)) )
))
(declare-datatypes ((List!24903 0))(
  ( (Nil!24819) (Cons!24819 (h!30220 Regex!5907) (t!197451 List!24903)) )
))
(declare-datatypes ((Context!2954 0))(
  ( (Context!2955 (exprs!1977 List!24903)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3698 0))(
  ( (tuple3!3699 (_1!14591 (InoxSet Context!2954)) (_2!14591 Int) (_3!2319 Int)) )
))
(declare-datatypes ((tuple2!24544 0))(
  ( (tuple2!24545 (_1!14592 tuple3!3698) (_2!14592 Int)) )
))
(declare-datatypes ((List!24904 0))(
  ( (Nil!24820) (Cons!24820 (h!30221 tuple2!24544) (t!197452 List!24904)) )
))
(declare-datatypes ((array!9883 0))(
  ( (array!9884 (arr!4412 (Array (_ BitVec 32) (_ BitVec 64))) (size!19394 (_ BitVec 32))) )
))
(declare-datatypes ((array!9885 0))(
  ( (array!9886 (arr!4413 (Array (_ BitVec 32) List!24904)) (size!19395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5816 0))(
  ( (LongMapFixedSize!5817 (defaultEntry!3273 Int) (mask!7177 (_ BitVec 32)) (extraKeys!3156 (_ BitVec 32)) (zeroValue!3166 List!24904) (minValue!3166 List!24904) (_size!5867 (_ BitVec 32)) (_keys!3205 array!9883) (_values!3188 array!9885) (_vacant!2969 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11457 0))(
  ( (Cell!11458 (v!29279 LongMapFixedSize!5816)) )
))
(declare-datatypes ((Hashable!2822 0))(
  ( (HashableExt!2821 (__x!16900 Int)) )
))
(declare-datatypes ((MutLongMap!2908 0))(
  ( (LongMap!2908 (underlying!6011 Cell!11457)) (MutLongMapExt!2907 (__x!16901 Int)) )
))
(declare-datatypes ((Cell!11459 0))(
  ( (Cell!11460 (v!29280 MutLongMap!2908)) )
))
(declare-datatypes ((MutableMap!2822 0))(
  ( (MutableMapExt!2821 (__x!16902 Int)) (HashMap!2822 (underlying!6012 Cell!11459) (hashF!4745 Hashable!2822) (_size!5868 (_ BitVec 32)) (defaultValue!2984 Int)) )
))
(declare-datatypes ((List!24905 0))(
  ( (Nil!24821) (Cons!24821 (h!30222 C!11960) (t!197453 List!24905)) )
))
(declare-datatypes ((IArray!16091 0))(
  ( (IArray!16092 (innerList!8103 List!24905)) )
))
(declare-datatypes ((Conc!8043 0))(
  ( (Node!8043 (left!19095 Conc!8043) (right!19425 Conc!8043) (csize!16316 Int) (cheight!8254 Int)) (Leaf!11764 (xs!10985 IArray!16091) (csize!16317 Int)) (Empty!8043) )
))
(declare-datatypes ((BalanceConc!15848 0))(
  ( (BalanceConc!15849 (c!341435 Conc!8043)) )
))
(declare-datatypes ((CacheFurthestNullable!1002 0))(
  ( (CacheFurthestNullable!1003 (cache!3203 MutableMap!2822) (totalInput!3323 BalanceConc!15848)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1002)

(declare-fun tp!670143 () Bool)

(declare-fun inv!32790 (Conc!8043) Bool)

(assert (=> b!2154149 (= e!1377792 (and (inv!32790 (c!341435 (totalInput!3323 cacheFurthestNullable!118))) tp!670143))))

(declare-fun b!2154150 () Bool)

(declare-fun e!1377778 () Bool)

(declare-fun tp!670140 () Bool)

(declare-fun mapRes!13748 () Bool)

(assert (=> b!2154150 (= e!1377778 (and tp!670140 mapRes!13748))))

(declare-fun condMapEmpty!13748 () Bool)

(declare-fun mapDefault!13748 () List!24904)

(assert (=> b!2154150 (= condMapEmpty!13748 (= (arr!4413 (_values!3188 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24904)) mapDefault!13748)))))

(declare-fun b!2154151 () Bool)

(declare-fun res!928784 () Bool)

(declare-fun e!1377779 () Bool)

(assert (=> b!2154151 (=> (not res!928784) (not e!1377779))))

(declare-fun validCacheMapFurthestNullable!163 (MutableMap!2822 BalanceConc!15848) Bool)

(assert (=> b!2154151 (= res!928784 (validCacheMapFurthestNullable!163 (cache!3203 cacheFurthestNullable!118) (totalInput!3323 cacheFurthestNullable!118)))))

(declare-fun b!2154152 () Bool)

(declare-fun res!928785 () Bool)

(assert (=> b!2154152 (=> (not res!928785) (not e!1377779))))

(declare-fun totalInput!880 () BalanceConc!15848)

(declare-fun res!17610 () Int)

(declare-fun lt!801423 () Int)

(declare-datatypes ((StackFrame!348 0))(
  ( (StackFrame!349 (z!5978 (InoxSet Context!2954)) (from!2820 Int) (lastNullablePos!507 Int) (res!928793 Int) (totalInput!3324 BalanceConc!15848)) )
))
(declare-datatypes ((List!24906 0))(
  ( (Nil!24822) (Cons!24822 (h!30223 StackFrame!348) (t!197454 List!24906)) )
))
(declare-fun stack!12 () List!24906)

(declare-fun furthestNullablePosition!126 ((InoxSet Context!2954) Int BalanceConc!15848 Int Int) Int)

(assert (=> b!2154152 (= res!928785 (= res!17610 (furthestNullablePosition!126 (z!5978 (h!30223 stack!12)) (from!2820 (h!30223 stack!12)) totalInput!880 lt!801423 (lastNullablePos!507 (h!30223 stack!12)))))))

(declare-fun b!2154153 () Bool)

(declare-fun e!1377793 () Bool)

(declare-fun e!1377783 () Bool)

(declare-fun lt!801425 () MutLongMap!2908)

(get-info :version)

(assert (=> b!2154153 (= e!1377793 (and e!1377783 ((_ is LongMap!2908) lt!801425)))))

(assert (=> b!2154153 (= lt!801425 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))

(declare-fun setIsEmpty!17482 () Bool)

(declare-fun setRes!17482 () Bool)

(assert (=> setIsEmpty!17482 setRes!17482))

(declare-fun res!928787 () Bool)

(declare-fun e!1377791 () Bool)

(assert (=> b!2154154 (=> (not res!928787) (not e!1377791))))

(declare-fun forall!5088 (List!24906 Int) Bool)

(assert (=> b!2154154 (= res!928787 (forall!5088 stack!12 lambda!81220))))

(declare-fun b!2154155 () Bool)

(declare-fun e!1377777 () Bool)

(declare-fun tp!670139 () Bool)

(assert (=> b!2154155 (= e!1377777 (and (inv!32790 (c!341435 totalInput!880)) tp!670139))))

(declare-fun b!2154156 () Bool)

(declare-fun e!1377782 () Bool)

(declare-fun e!1377789 () Bool)

(assert (=> b!2154156 (= e!1377782 e!1377789)))

(declare-fun b!2154157 () Bool)

(declare-fun e!1377788 () Bool)

(declare-fun tp!670142 () Bool)

(assert (=> b!2154157 (= e!1377788 tp!670142)))

(declare-fun e!1377785 () Bool)

(declare-fun b!2154158 () Bool)

(declare-fun e!1377781 () Bool)

(declare-fun inv!32791 (BalanceConc!15848) Bool)

(assert (=> b!2154158 (= e!1377785 (and setRes!17482 (inv!32791 (totalInput!3324 (h!30223 stack!12))) e!1377781))))

(declare-fun condSetEmpty!17482 () Bool)

(assert (=> b!2154158 (= condSetEmpty!17482 (= (z!5978 (h!30223 stack!12)) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun res!928791 () Bool)

(assert (=> b!2154159 (=> (not res!928791) (not e!1377791))))

(assert (=> b!2154159 (= res!928791 (forall!5088 stack!12 lambda!81221))))

(declare-fun e!1377786 () Bool)

(declare-fun b!2154160 () Bool)

(declare-fun e!1377787 () Bool)

(assert (=> b!2154160 (= e!1377787 (and e!1377786 (inv!32791 (totalInput!3323 cacheFurthestNullable!118)) e!1377792))))

(declare-fun b!2154161 () Bool)

(declare-fun e!1377780 () Bool)

(assert (=> b!2154161 (= e!1377780 e!1377779)))

(declare-fun res!928790 () Bool)

(assert (=> b!2154161 (=> (not res!928790) (not e!1377779))))

(assert (=> b!2154161 (= res!928790 (<= (from!2820 (h!30223 stack!12)) lt!801423))))

(declare-fun size!19396 (BalanceConc!15848) Int)

(assert (=> b!2154161 (= lt!801423 (size!19396 totalInput!880))))

(declare-fun tp!670137 () Bool)

(declare-fun e!1377790 () Bool)

(declare-fun b!2154162 () Bool)

(declare-fun inv!32792 (StackFrame!348) Bool)

(assert (=> b!2154162 (= e!1377790 (and (inv!32792 (h!30223 stack!12)) e!1377785 tp!670137))))

(declare-fun b!2154163 () Bool)

(assert (=> b!2154163 (= e!1377783 e!1377782)))

(assert (=> b!2154164 (= e!1377786 (and e!1377793 tp!670134))))

(declare-fun mapNonEmpty!13748 () Bool)

(declare-fun tp!670138 () Bool)

(declare-fun tp!670141 () Bool)

(assert (=> mapNonEmpty!13748 (= mapRes!13748 (and tp!670138 tp!670141))))

(declare-fun mapRest!13748 () (Array (_ BitVec 32) List!24904))

(declare-fun mapValue!13748 () List!24904)

(declare-fun mapKey!13748 () (_ BitVec 32))

(assert (=> mapNonEmpty!13748 (= (arr!4413 (_values!3188 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) (store mapRest!13748 mapKey!13748 mapValue!13748))))

(declare-fun b!2154165 () Bool)

(assert (=> b!2154165 (= e!1377791 e!1377780)))

(declare-fun res!928788 () Bool)

(assert (=> b!2154165 (=> (not res!928788) (not e!1377780))))

(assert (=> b!2154165 (= res!928788 (and (= (res!928793 (h!30223 stack!12)) res!17610) (>= (from!2820 (h!30223 stack!12)) 0)))))

(declare-datatypes ((Unit!37927 0))(
  ( (Unit!37928) )
))
(declare-fun lt!801424 () Unit!37927)

(declare-fun lemmaInvariant!394 (CacheFurthestNullable!1002) Unit!37927)

(assert (=> b!2154165 (= lt!801424 (lemmaInvariant!394 cacheFurthestNullable!118))))

(declare-fun b!2154166 () Bool)

(declare-fun res!928789 () Bool)

(assert (=> b!2154166 (=> (not res!928789) (not e!1377791))))

(assert (=> b!2154166 (= res!928789 (= (totalInput!3323 cacheFurthestNullable!118) totalInput!880))))

(declare-fun res!928783 () Bool)

(assert (=> start!208970 (=> (not res!928783) (not e!1377791))))

(declare-fun valid!2244 (CacheFurthestNullable!1002) Bool)

(assert (=> start!208970 (= res!928783 (valid!2244 cacheFurthestNullable!118))))

(assert (=> start!208970 e!1377791))

(declare-fun inv!32793 (CacheFurthestNullable!1002) Bool)

(assert (=> start!208970 (and (inv!32793 cacheFurthestNullable!118) e!1377787)))

(assert (=> start!208970 true))

(assert (=> start!208970 (and (inv!32791 totalInput!880) e!1377777)))

(assert (=> start!208970 e!1377790))

(declare-fun b!2154167 () Bool)

(assert (=> b!2154167 (= e!1377779 (or (< (lastNullablePos!507 (h!30223 stack!12)) (- 1)) (>= (lastNullablePos!507 (h!30223 stack!12)) (from!2820 (h!30223 stack!12)))))))

(declare-fun mapIsEmpty!13748 () Bool)

(assert (=> mapIsEmpty!13748 mapRes!13748))

(declare-fun b!2154168 () Bool)

(declare-fun res!928792 () Bool)

(assert (=> b!2154168 (=> (not res!928792) (not e!1377791))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2154168 (= res!928792 (and (not ((_ is Nil!24822) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2154169 () Bool)

(declare-fun tp!670144 () Bool)

(assert (=> b!2154169 (= e!1377781 (and (inv!32790 (c!341435 (totalInput!3324 (h!30223 stack!12)))) tp!670144))))

(declare-fun tp!670136 () Bool)

(declare-fun tp!670133 () Bool)

(declare-fun array_inv!3166 (array!9883) Bool)

(declare-fun array_inv!3167 (array!9885) Bool)

(assert (=> b!2154170 (= e!1377789 (and tp!670135 tp!670136 tp!670133 (array_inv!3166 (_keys!3205 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) (array_inv!3167 (_values!3188 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) e!1377778))))

(declare-fun b!2154171 () Bool)

(declare-fun res!928786 () Bool)

(assert (=> b!2154171 (=> (not res!928786) (not e!1377779))))

(assert (=> b!2154171 (= res!928786 (= totalInput!880 (totalInput!3323 cacheFurthestNullable!118)))))

(declare-fun b!2154172 () Bool)

(declare-fun res!928782 () Bool)

(assert (=> b!2154172 (=> (not res!928782) (not e!1377779))))

(assert (=> b!2154172 (= res!928782 (<= (from!2820 (h!30223 stack!12)) (size!19396 (totalInput!3323 cacheFurthestNullable!118))))))

(declare-fun tp!670145 () Bool)

(declare-fun setElem!17482 () Context!2954)

(declare-fun setNonEmpty!17482 () Bool)

(declare-fun inv!32794 (Context!2954) Bool)

(assert (=> setNonEmpty!17482 (= setRes!17482 (and tp!670145 (inv!32794 setElem!17482) e!1377788))))

(declare-fun setRest!17482 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17482 (= (z!5978 (h!30223 stack!12)) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17482 true) setRest!17482))))

(assert (= (and start!208970 res!928783) b!2154166))

(assert (= (and b!2154166 res!928789) b!2154154))

(assert (= (and b!2154154 res!928787) b!2154159))

(assert (= (and b!2154159 res!928791) b!2154168))

(assert (= (and b!2154168 res!928792) b!2154165))

(assert (= (and b!2154165 res!928788) b!2154161))

(assert (= (and b!2154161 res!928790) b!2154152))

(assert (= (and b!2154152 res!928785) b!2154171))

(assert (= (and b!2154171 res!928786) b!2154151))

(assert (= (and b!2154151 res!928784) b!2154172))

(assert (= (and b!2154172 res!928782) b!2154167))

(assert (= (and b!2154150 condMapEmpty!13748) mapIsEmpty!13748))

(assert (= (and b!2154150 (not condMapEmpty!13748)) mapNonEmpty!13748))

(assert (= b!2154170 b!2154150))

(assert (= b!2154156 b!2154170))

(assert (= b!2154163 b!2154156))

(assert (= (and b!2154153 ((_ is LongMap!2908) (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))) b!2154163))

(assert (= b!2154164 b!2154153))

(assert (= (and b!2154160 ((_ is HashMap!2822) (cache!3203 cacheFurthestNullable!118))) b!2154164))

(assert (= b!2154160 b!2154149))

(assert (= start!208970 b!2154160))

(assert (= start!208970 b!2154155))

(assert (= (and b!2154158 condSetEmpty!17482) setIsEmpty!17482))

(assert (= (and b!2154158 (not condSetEmpty!17482)) setNonEmpty!17482))

(assert (= setNonEmpty!17482 b!2154157))

(assert (= b!2154158 b!2154169))

(assert (= b!2154162 b!2154158))

(assert (= (and start!208970 ((_ is Cons!24822) stack!12)) b!2154162))

(declare-fun m!2595599 () Bool)

(assert (=> b!2154169 m!2595599))

(declare-fun m!2595601 () Bool)

(assert (=> b!2154151 m!2595601))

(declare-fun m!2595603 () Bool)

(assert (=> b!2154170 m!2595603))

(declare-fun m!2595605 () Bool)

(assert (=> b!2154170 m!2595605))

(declare-fun m!2595607 () Bool)

(assert (=> b!2154152 m!2595607))

(declare-fun m!2595609 () Bool)

(assert (=> b!2154162 m!2595609))

(declare-fun m!2595611 () Bool)

(assert (=> b!2154165 m!2595611))

(declare-fun m!2595613 () Bool)

(assert (=> b!2154159 m!2595613))

(declare-fun m!2595615 () Bool)

(assert (=> b!2154160 m!2595615))

(declare-fun m!2595617 () Bool)

(assert (=> setNonEmpty!17482 m!2595617))

(declare-fun m!2595619 () Bool)

(assert (=> b!2154161 m!2595619))

(declare-fun m!2595621 () Bool)

(assert (=> start!208970 m!2595621))

(declare-fun m!2595623 () Bool)

(assert (=> start!208970 m!2595623))

(declare-fun m!2595625 () Bool)

(assert (=> start!208970 m!2595625))

(declare-fun m!2595627 () Bool)

(assert (=> b!2154172 m!2595627))

(declare-fun m!2595629 () Bool)

(assert (=> b!2154155 m!2595629))

(declare-fun m!2595631 () Bool)

(assert (=> b!2154154 m!2595631))

(declare-fun m!2595633 () Bool)

(assert (=> b!2154158 m!2595633))

(declare-fun m!2595635 () Bool)

(assert (=> b!2154149 m!2595635))

(declare-fun m!2595637 () Bool)

(assert (=> mapNonEmpty!13748 m!2595637))

(check-sat (not setNonEmpty!17482) (not b!2154150) (not b!2154158) b_and!173239 (not b_next!64327) (not b!2154149) (not b_next!64325) (not b!2154159) (not b!2154170) (not b!2154162) (not b!2154151) (not b!2154172) b_and!173237 (not b!2154157) (not b!2154169) (not b!2154152) (not b!2154165) (not start!208970) (not b!2154161) (not b!2154154) (not b!2154155) (not b!2154160) (not mapNonEmpty!13748))
(check-sat b_and!173239 b_and!173237 (not b_next!64327) (not b_next!64325))
(get-model)

(declare-fun d!646077 () Bool)

(declare-fun res!928808 () Bool)

(declare-fun e!1377798 () Bool)

(assert (=> d!646077 (=> (not res!928808) (not e!1377798))))

(assert (=> d!646077 (= res!928808 (>= (from!2820 (h!30223 stack!12)) 0))))

(assert (=> d!646077 (= (inv!32792 (h!30223 stack!12)) e!1377798)))

(declare-fun b!2154189 () Bool)

(declare-fun e!1377799 () Bool)

(assert (=> b!2154189 (= e!1377799 (= (lastNullablePos!507 (h!30223 stack!12)) (- (from!2820 (h!30223 stack!12)) 1)))))

(declare-fun b!2154190 () Bool)

(assert (=> b!2154190 (= e!1377798 (= (res!928793 (h!30223 stack!12)) (furthestNullablePosition!126 (z!5978 (h!30223 stack!12)) (from!2820 (h!30223 stack!12)) (totalInput!3324 (h!30223 stack!12)) (size!19396 (totalInput!3324 (h!30223 stack!12))) (lastNullablePos!507 (h!30223 stack!12)))))))

(declare-fun b!2154191 () Bool)

(declare-fun res!928807 () Bool)

(assert (=> b!2154191 (=> (not res!928807) (not e!1377798))))

(assert (=> b!2154191 (= res!928807 (<= (from!2820 (h!30223 stack!12)) (size!19396 (totalInput!3324 (h!30223 stack!12)))))))

(declare-fun b!2154192 () Bool)

(declare-fun res!928806 () Bool)

(assert (=> b!2154192 (=> (not res!928806) (not e!1377798))))

(assert (=> b!2154192 (= res!928806 (and (>= (lastNullablePos!507 (h!30223 stack!12)) (- 1)) (< (lastNullablePos!507 (h!30223 stack!12)) (from!2820 (h!30223 stack!12)))))))

(declare-fun b!2154193 () Bool)

(declare-fun res!928810 () Bool)

(assert (=> b!2154193 (=> (not res!928810) (not e!1377798))))

(assert (=> b!2154193 (= res!928810 e!1377799)))

(declare-fun res!928811 () Bool)

(assert (=> b!2154193 (=> res!928811 e!1377799)))

(declare-fun nullableZipper!214 ((InoxSet Context!2954)) Bool)

(assert (=> b!2154193 (= res!928811 (not (nullableZipper!214 (z!5978 (h!30223 stack!12)))))))

(declare-fun b!2154194 () Bool)

(declare-fun res!928809 () Bool)

(assert (=> b!2154194 (=> (not res!928809) (not e!1377798))))

(assert (=> b!2154194 (= res!928809 (= (size!19396 (totalInput!3324 (h!30223 stack!12))) (size!19396 (totalInput!3324 (h!30223 stack!12)))))))

(assert (= (and d!646077 res!928808) b!2154191))

(assert (= (and b!2154191 res!928807) b!2154194))

(assert (= (and b!2154194 res!928809) b!2154192))

(assert (= (and b!2154192 res!928806) b!2154193))

(assert (= (and b!2154193 (not res!928811)) b!2154189))

(assert (= (and b!2154193 res!928810) b!2154190))

(declare-fun m!2595639 () Bool)

(assert (=> b!2154190 m!2595639))

(assert (=> b!2154190 m!2595639))

(declare-fun m!2595641 () Bool)

(assert (=> b!2154190 m!2595641))

(assert (=> b!2154191 m!2595639))

(declare-fun m!2595643 () Bool)

(assert (=> b!2154193 m!2595643))

(assert (=> b!2154194 m!2595639))

(assert (=> b!2154162 d!646077))

(declare-fun e!1377806 () Int)

(declare-fun b!2154205 () Bool)

(declare-fun lt!801431 () (InoxSet Context!2954))

(declare-fun e!1377808 () Int)

(assert (=> b!2154205 (= e!1377808 (furthestNullablePosition!126 lt!801431 (+ (from!2820 (h!30223 stack!12)) 1) totalInput!880 lt!801423 e!1377806))))

(declare-fun derivationStepZipper!106 ((InoxSet Context!2954) C!11960) (InoxSet Context!2954))

(declare-fun apply!6038 (BalanceConc!15848 Int) C!11960)

(assert (=> b!2154205 (= lt!801431 (derivationStepZipper!106 (z!5978 (h!30223 stack!12)) (apply!6038 totalInput!880 (from!2820 (h!30223 stack!12)))))))

(declare-fun c!341441 () Bool)

(assert (=> b!2154205 (= c!341441 (nullableZipper!214 lt!801431))))

(declare-fun b!2154206 () Bool)

(assert (=> b!2154206 (= e!1377806 (lastNullablePos!507 (h!30223 stack!12)))))

(declare-fun b!2154207 () Bool)

(declare-fun e!1377807 () Bool)

(declare-fun lostCauseZipper!139 ((InoxSet Context!2954)) Bool)

(assert (=> b!2154207 (= e!1377807 (lostCauseZipper!139 (z!5978 (h!30223 stack!12))))))

(declare-fun b!2154208 () Bool)

(assert (=> b!2154208 (= e!1377808 (lastNullablePos!507 (h!30223 stack!12)))))

(declare-fun b!2154209 () Bool)

(assert (=> b!2154209 (= e!1377806 (from!2820 (h!30223 stack!12)))))

(declare-fun d!646079 () Bool)

(declare-fun lt!801430 () Int)

(assert (=> d!646079 (and (>= lt!801430 (- 1)) (< lt!801430 lt!801423) (>= lt!801430 (lastNullablePos!507 (h!30223 stack!12))) (or (= lt!801430 (lastNullablePos!507 (h!30223 stack!12))) (>= lt!801430 (from!2820 (h!30223 stack!12)))))))

(assert (=> d!646079 (= lt!801430 e!1377808)))

(declare-fun c!341440 () Bool)

(assert (=> d!646079 (= c!341440 e!1377807)))

(declare-fun res!928814 () Bool)

(assert (=> d!646079 (=> res!928814 e!1377807)))

(assert (=> d!646079 (= res!928814 (= (from!2820 (h!30223 stack!12)) lt!801423))))

(assert (=> d!646079 (and (>= (from!2820 (h!30223 stack!12)) 0) (<= (from!2820 (h!30223 stack!12)) lt!801423))))

(assert (=> d!646079 (= (furthestNullablePosition!126 (z!5978 (h!30223 stack!12)) (from!2820 (h!30223 stack!12)) totalInput!880 lt!801423 (lastNullablePos!507 (h!30223 stack!12))) lt!801430)))

(assert (= (and d!646079 (not res!928814)) b!2154207))

(assert (= (and d!646079 c!341440) b!2154208))

(assert (= (and d!646079 (not c!341440)) b!2154205))

(assert (= (and b!2154205 c!341441) b!2154209))

(assert (= (and b!2154205 (not c!341441)) b!2154206))

(declare-fun m!2595645 () Bool)

(assert (=> b!2154205 m!2595645))

(declare-fun m!2595647 () Bool)

(assert (=> b!2154205 m!2595647))

(assert (=> b!2154205 m!2595647))

(declare-fun m!2595649 () Bool)

(assert (=> b!2154205 m!2595649))

(declare-fun m!2595651 () Bool)

(assert (=> b!2154205 m!2595651))

(declare-fun m!2595653 () Bool)

(assert (=> b!2154207 m!2595653))

(assert (=> b!2154152 d!646079))

(declare-fun d!646081 () Bool)

(declare-fun lt!801434 () Int)

(declare-fun size!19397 (List!24905) Int)

(declare-fun list!9565 (BalanceConc!15848) List!24905)

(assert (=> d!646081 (= lt!801434 (size!19397 (list!9565 (totalInput!3323 cacheFurthestNullable!118))))))

(declare-fun size!19398 (Conc!8043) Int)

(assert (=> d!646081 (= lt!801434 (size!19398 (c!341435 (totalInput!3323 cacheFurthestNullable!118))))))

(assert (=> d!646081 (= (size!19396 (totalInput!3323 cacheFurthestNullable!118)) lt!801434)))

(declare-fun bs!445763 () Bool)

(assert (= bs!445763 d!646081))

(declare-fun m!2595655 () Bool)

(assert (=> bs!445763 m!2595655))

(assert (=> bs!445763 m!2595655))

(declare-fun m!2595657 () Bool)

(assert (=> bs!445763 m!2595657))

(declare-fun m!2595659 () Bool)

(assert (=> bs!445763 m!2595659))

(assert (=> b!2154172 d!646081))

(declare-fun d!646083 () Bool)

(assert (=> d!646083 (= (valid!2244 cacheFurthestNullable!118) (validCacheMapFurthestNullable!163 (cache!3203 cacheFurthestNullable!118) (totalInput!3323 cacheFurthestNullable!118)))))

(declare-fun bs!445764 () Bool)

(assert (= bs!445764 d!646083))

(assert (=> bs!445764 m!2595601))

(assert (=> start!208970 d!646083))

(declare-fun d!646085 () Bool)

(declare-fun res!928817 () Bool)

(declare-fun e!1377811 () Bool)

(assert (=> d!646085 (=> (not res!928817) (not e!1377811))))

(assert (=> d!646085 (= res!928817 ((_ is HashMap!2822) (cache!3203 cacheFurthestNullable!118)))))

(assert (=> d!646085 (= (inv!32793 cacheFurthestNullable!118) e!1377811)))

(declare-fun b!2154212 () Bool)

(assert (=> b!2154212 (= e!1377811 (validCacheMapFurthestNullable!163 (cache!3203 cacheFurthestNullable!118) (totalInput!3323 cacheFurthestNullable!118)))))

(assert (= (and d!646085 res!928817) b!2154212))

(assert (=> b!2154212 m!2595601))

(assert (=> start!208970 d!646085))

(declare-fun d!646087 () Bool)

(declare-fun isBalanced!2494 (Conc!8043) Bool)

(assert (=> d!646087 (= (inv!32791 totalInput!880) (isBalanced!2494 (c!341435 totalInput!880)))))

(declare-fun bs!445765 () Bool)

(assert (= bs!445765 d!646087))

(declare-fun m!2595661 () Bool)

(assert (=> bs!445765 m!2595661))

(assert (=> start!208970 d!646087))

(declare-fun d!646089 () Bool)

(assert (=> d!646089 (= (inv!32791 (totalInput!3323 cacheFurthestNullable!118)) (isBalanced!2494 (c!341435 (totalInput!3323 cacheFurthestNullable!118))))))

(declare-fun bs!445766 () Bool)

(assert (= bs!445766 d!646089))

(declare-fun m!2595663 () Bool)

(assert (=> bs!445766 m!2595663))

(assert (=> b!2154160 d!646089))

(declare-fun d!646091 () Bool)

(declare-fun res!928822 () Bool)

(declare-fun e!1377816 () Bool)

(assert (=> d!646091 (=> res!928822 e!1377816)))

(assert (=> d!646091 (= res!928822 ((_ is Nil!24822) stack!12))))

(assert (=> d!646091 (= (forall!5088 stack!12 lambda!81221) e!1377816)))

(declare-fun b!2154217 () Bool)

(declare-fun e!1377817 () Bool)

(assert (=> b!2154217 (= e!1377816 e!1377817)))

(declare-fun res!928823 () Bool)

(assert (=> b!2154217 (=> (not res!928823) (not e!1377817))))

(declare-fun dynLambda!11408 (Int StackFrame!348) Bool)

(assert (=> b!2154217 (= res!928823 (dynLambda!11408 lambda!81221 (h!30223 stack!12)))))

(declare-fun b!2154218 () Bool)

(assert (=> b!2154218 (= e!1377817 (forall!5088 (t!197454 stack!12) lambda!81221))))

(assert (= (and d!646091 (not res!928822)) b!2154217))

(assert (= (and b!2154217 res!928823) b!2154218))

(declare-fun b_lambda!70913 () Bool)

(assert (=> (not b_lambda!70913) (not b!2154217)))

(declare-fun m!2595665 () Bool)

(assert (=> b!2154217 m!2595665))

(declare-fun m!2595667 () Bool)

(assert (=> b!2154218 m!2595667))

(assert (=> b!2154159 d!646091))

(declare-fun d!646093 () Bool)

(assert (=> d!646093 (= (array_inv!3166 (_keys!3205 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) (bvsge (size!19394 (_keys!3205 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154170 d!646093))

(declare-fun d!646095 () Bool)

(assert (=> d!646095 (= (array_inv!3167 (_values!3188 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) (bvsge (size!19395 (_values!3188 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2154170 d!646095))

(declare-fun d!646097 () Bool)

(declare-fun lt!801435 () Int)

(assert (=> d!646097 (= lt!801435 (size!19397 (list!9565 totalInput!880)))))

(assert (=> d!646097 (= lt!801435 (size!19398 (c!341435 totalInput!880)))))

(assert (=> d!646097 (= (size!19396 totalInput!880) lt!801435)))

(declare-fun bs!445767 () Bool)

(assert (= bs!445767 d!646097))

(declare-fun m!2595669 () Bool)

(assert (=> bs!445767 m!2595669))

(assert (=> bs!445767 m!2595669))

(declare-fun m!2595671 () Bool)

(assert (=> bs!445767 m!2595671))

(declare-fun m!2595673 () Bool)

(assert (=> bs!445767 m!2595673))

(assert (=> b!2154161 d!646097))

(declare-fun b!2154224 () Bool)

(assert (=> b!2154224 true))

(declare-fun d!646099 () Bool)

(declare-fun res!928828 () Bool)

(declare-fun e!1377820 () Bool)

(assert (=> d!646099 (=> (not res!928828) (not e!1377820))))

(declare-fun valid!2245 (MutableMap!2822) Bool)

(assert (=> d!646099 (= res!928828 (valid!2245 (cache!3203 cacheFurthestNullable!118)))))

(assert (=> d!646099 (= (validCacheMapFurthestNullable!163 (cache!3203 cacheFurthestNullable!118) (totalInput!3323 cacheFurthestNullable!118)) e!1377820)))

(declare-fun b!2154223 () Bool)

(declare-fun res!928829 () Bool)

(assert (=> b!2154223 (=> (not res!928829) (not e!1377820))))

(declare-fun invariantList!329 (List!24904) Bool)

(declare-datatypes ((ListMap!711 0))(
  ( (ListMap!712 (toList!1119 List!24904)) )
))
(declare-fun map!4999 (MutableMap!2822) ListMap!711)

(assert (=> b!2154223 (= res!928829 (invariantList!329 (toList!1119 (map!4999 (cache!3203 cacheFurthestNullable!118)))))))

(declare-fun lambda!81224 () Int)

(declare-fun forall!5089 (List!24904 Int) Bool)

(assert (=> b!2154224 (= e!1377820 (forall!5089 (toList!1119 (map!4999 (cache!3203 cacheFurthestNullable!118))) lambda!81224))))

(assert (= (and d!646099 res!928828) b!2154223))

(assert (= (and b!2154223 res!928829) b!2154224))

(declare-fun m!2595676 () Bool)

(assert (=> d!646099 m!2595676))

(declare-fun m!2595678 () Bool)

(assert (=> b!2154223 m!2595678))

(declare-fun m!2595680 () Bool)

(assert (=> b!2154223 m!2595680))

(assert (=> b!2154224 m!2595678))

(declare-fun m!2595682 () Bool)

(assert (=> b!2154224 m!2595682))

(assert (=> b!2154151 d!646099))

(declare-fun d!646101 () Bool)

(declare-fun c!341444 () Bool)

(assert (=> d!646101 (= c!341444 ((_ is Node!8043) (c!341435 (totalInput!3324 (h!30223 stack!12)))))))

(declare-fun e!1377825 () Bool)

(assert (=> d!646101 (= (inv!32790 (c!341435 (totalInput!3324 (h!30223 stack!12)))) e!1377825)))

(declare-fun b!2154233 () Bool)

(declare-fun inv!32795 (Conc!8043) Bool)

(assert (=> b!2154233 (= e!1377825 (inv!32795 (c!341435 (totalInput!3324 (h!30223 stack!12)))))))

(declare-fun b!2154234 () Bool)

(declare-fun e!1377826 () Bool)

(assert (=> b!2154234 (= e!1377825 e!1377826)))

(declare-fun res!928832 () Bool)

(assert (=> b!2154234 (= res!928832 (not ((_ is Leaf!11764) (c!341435 (totalInput!3324 (h!30223 stack!12))))))))

(assert (=> b!2154234 (=> res!928832 e!1377826)))

(declare-fun b!2154235 () Bool)

(declare-fun inv!32796 (Conc!8043) Bool)

(assert (=> b!2154235 (= e!1377826 (inv!32796 (c!341435 (totalInput!3324 (h!30223 stack!12)))))))

(assert (= (and d!646101 c!341444) b!2154233))

(assert (= (and d!646101 (not c!341444)) b!2154234))

(assert (= (and b!2154234 (not res!928832)) b!2154235))

(declare-fun m!2595684 () Bool)

(assert (=> b!2154233 m!2595684))

(declare-fun m!2595686 () Bool)

(assert (=> b!2154235 m!2595686))

(assert (=> b!2154169 d!646101))

(declare-fun d!646103 () Bool)

(declare-fun c!341445 () Bool)

(assert (=> d!646103 (= c!341445 ((_ is Node!8043) (c!341435 (totalInput!3323 cacheFurthestNullable!118))))))

(declare-fun e!1377827 () Bool)

(assert (=> d!646103 (= (inv!32790 (c!341435 (totalInput!3323 cacheFurthestNullable!118))) e!1377827)))

(declare-fun b!2154236 () Bool)

(assert (=> b!2154236 (= e!1377827 (inv!32795 (c!341435 (totalInput!3323 cacheFurthestNullable!118))))))

(declare-fun b!2154237 () Bool)

(declare-fun e!1377828 () Bool)

(assert (=> b!2154237 (= e!1377827 e!1377828)))

(declare-fun res!928833 () Bool)

(assert (=> b!2154237 (= res!928833 (not ((_ is Leaf!11764) (c!341435 (totalInput!3323 cacheFurthestNullable!118)))))))

(assert (=> b!2154237 (=> res!928833 e!1377828)))

(declare-fun b!2154238 () Bool)

(assert (=> b!2154238 (= e!1377828 (inv!32796 (c!341435 (totalInput!3323 cacheFurthestNullable!118))))))

(assert (= (and d!646103 c!341445) b!2154236))

(assert (= (and d!646103 (not c!341445)) b!2154237))

(assert (= (and b!2154237 (not res!928833)) b!2154238))

(declare-fun m!2595688 () Bool)

(assert (=> b!2154236 m!2595688))

(declare-fun m!2595690 () Bool)

(assert (=> b!2154238 m!2595690))

(assert (=> b!2154149 d!646103))

(declare-fun d!646105 () Bool)

(assert (=> d!646105 (= (inv!32791 (totalInput!3324 (h!30223 stack!12))) (isBalanced!2494 (c!341435 (totalInput!3324 (h!30223 stack!12)))))))

(declare-fun bs!445768 () Bool)

(assert (= bs!445768 d!646105))

(declare-fun m!2595692 () Bool)

(assert (=> bs!445768 m!2595692))

(assert (=> b!2154158 d!646105))

(declare-fun d!646107 () Bool)

(declare-fun res!928834 () Bool)

(declare-fun e!1377829 () Bool)

(assert (=> d!646107 (=> res!928834 e!1377829)))

(assert (=> d!646107 (= res!928834 ((_ is Nil!24822) stack!12))))

(assert (=> d!646107 (= (forall!5088 stack!12 lambda!81220) e!1377829)))

(declare-fun b!2154239 () Bool)

(declare-fun e!1377830 () Bool)

(assert (=> b!2154239 (= e!1377829 e!1377830)))

(declare-fun res!928835 () Bool)

(assert (=> b!2154239 (=> (not res!928835) (not e!1377830))))

(assert (=> b!2154239 (= res!928835 (dynLambda!11408 lambda!81220 (h!30223 stack!12)))))

(declare-fun b!2154240 () Bool)

(assert (=> b!2154240 (= e!1377830 (forall!5088 (t!197454 stack!12) lambda!81220))))

(assert (= (and d!646107 (not res!928834)) b!2154239))

(assert (= (and b!2154239 res!928835) b!2154240))

(declare-fun b_lambda!70915 () Bool)

(assert (=> (not b_lambda!70915) (not b!2154239)))

(declare-fun m!2595694 () Bool)

(assert (=> b!2154239 m!2595694))

(declare-fun m!2595696 () Bool)

(assert (=> b!2154240 m!2595696))

(assert (=> b!2154154 d!646107))

(declare-fun d!646109 () Bool)

(declare-fun lambda!81227 () Int)

(declare-fun forall!5090 (List!24903 Int) Bool)

(assert (=> d!646109 (= (inv!32794 setElem!17482) (forall!5090 (exprs!1977 setElem!17482) lambda!81227))))

(declare-fun bs!445769 () Bool)

(assert (= bs!445769 d!646109))

(declare-fun m!2595698 () Bool)

(assert (=> bs!445769 m!2595698))

(assert (=> setNonEmpty!17482 d!646109))

(declare-fun d!646111 () Bool)

(assert (=> d!646111 (valid!2244 cacheFurthestNullable!118)))

(declare-fun Unit!37929 () Unit!37927)

(assert (=> d!646111 (= (lemmaInvariant!394 cacheFurthestNullable!118) Unit!37929)))

(declare-fun bs!445770 () Bool)

(assert (= bs!445770 d!646111))

(assert (=> bs!445770 m!2595621))

(assert (=> b!2154165 d!646111))

(declare-fun d!646113 () Bool)

(declare-fun c!341446 () Bool)

(assert (=> d!646113 (= c!341446 ((_ is Node!8043) (c!341435 totalInput!880)))))

(declare-fun e!1377831 () Bool)

(assert (=> d!646113 (= (inv!32790 (c!341435 totalInput!880)) e!1377831)))

(declare-fun b!2154241 () Bool)

(assert (=> b!2154241 (= e!1377831 (inv!32795 (c!341435 totalInput!880)))))

(declare-fun b!2154242 () Bool)

(declare-fun e!1377832 () Bool)

(assert (=> b!2154242 (= e!1377831 e!1377832)))

(declare-fun res!928836 () Bool)

(assert (=> b!2154242 (= res!928836 (not ((_ is Leaf!11764) (c!341435 totalInput!880))))))

(assert (=> b!2154242 (=> res!928836 e!1377832)))

(declare-fun b!2154243 () Bool)

(assert (=> b!2154243 (= e!1377832 (inv!32796 (c!341435 totalInput!880)))))

(assert (= (and d!646113 c!341446) b!2154241))

(assert (= (and d!646113 (not c!341446)) b!2154242))

(assert (= (and b!2154242 (not res!928836)) b!2154243))

(declare-fun m!2595700 () Bool)

(assert (=> b!2154241 m!2595700))

(declare-fun m!2595702 () Bool)

(assert (=> b!2154243 m!2595702))

(assert (=> b!2154155 d!646113))

(declare-fun b!2154248 () Bool)

(declare-fun e!1377835 () Bool)

(declare-fun tp!670150 () Bool)

(declare-fun tp!670151 () Bool)

(assert (=> b!2154248 (= e!1377835 (and tp!670150 tp!670151))))

(assert (=> b!2154157 (= tp!670142 e!1377835)))

(assert (= (and b!2154157 ((_ is Cons!24819) (exprs!1977 setElem!17482))) b!2154248))

(declare-fun b!2154259 () Bool)

(declare-fun e!1377847 () Bool)

(declare-fun e!1377846 () Bool)

(declare-fun setRes!17485 () Bool)

(assert (=> b!2154259 (= e!1377847 (and setRes!17485 (inv!32791 (totalInput!3324 (h!30223 (t!197454 stack!12)))) e!1377846))))

(declare-fun condSetEmpty!17485 () Bool)

(assert (=> b!2154259 (= condSetEmpty!17485 (= (z!5978 (h!30223 (t!197454 stack!12))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun b!2154260 () Bool)

(declare-fun e!1377844 () Bool)

(declare-fun tp!670160 () Bool)

(assert (=> b!2154260 (= e!1377844 tp!670160)))

(declare-fun b!2154261 () Bool)

(declare-fun tp!670162 () Bool)

(assert (=> b!2154261 (= e!1377846 (and (inv!32790 (c!341435 (totalInput!3324 (h!30223 (t!197454 stack!12))))) tp!670162))))

(declare-fun setNonEmpty!17485 () Bool)

(declare-fun tp!670161 () Bool)

(declare-fun setElem!17485 () Context!2954)

(assert (=> setNonEmpty!17485 (= setRes!17485 (and tp!670161 (inv!32794 setElem!17485) e!1377844))))

(declare-fun setRest!17485 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17485 (= (z!5978 (h!30223 (t!197454 stack!12))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17485 true) setRest!17485))))

(declare-fun b!2154262 () Bool)

(declare-fun tp!670163 () Bool)

(declare-fun e!1377845 () Bool)

(assert (=> b!2154262 (= e!1377845 (and (inv!32792 (h!30223 (t!197454 stack!12))) e!1377847 tp!670163))))

(declare-fun setIsEmpty!17485 () Bool)

(assert (=> setIsEmpty!17485 setRes!17485))

(assert (=> b!2154162 (= tp!670137 e!1377845)))

(assert (= (and b!2154259 condSetEmpty!17485) setIsEmpty!17485))

(assert (= (and b!2154259 (not condSetEmpty!17485)) setNonEmpty!17485))

(assert (= setNonEmpty!17485 b!2154260))

(assert (= b!2154259 b!2154261))

(assert (= b!2154262 b!2154259))

(assert (= (and b!2154162 ((_ is Cons!24822) (t!197454 stack!12))) b!2154262))

(declare-fun m!2595704 () Bool)

(assert (=> b!2154259 m!2595704))

(declare-fun m!2595706 () Bool)

(assert (=> b!2154261 m!2595706))

(declare-fun m!2595708 () Bool)

(assert (=> setNonEmpty!17485 m!2595708))

(declare-fun m!2595710 () Bool)

(assert (=> b!2154262 m!2595710))

(declare-fun e!1377853 () Bool)

(declare-fun b!2154271 () Bool)

(declare-fun tp!670170 () Bool)

(declare-fun tp!670171 () Bool)

(assert (=> b!2154271 (= e!1377853 (and (inv!32790 (left!19095 (c!341435 (totalInput!3323 cacheFurthestNullable!118)))) tp!670171 (inv!32790 (right!19425 (c!341435 (totalInput!3323 cacheFurthestNullable!118)))) tp!670170))))

(declare-fun b!2154273 () Bool)

(declare-fun e!1377852 () Bool)

(declare-fun tp!670172 () Bool)

(assert (=> b!2154273 (= e!1377852 tp!670172)))

(declare-fun b!2154272 () Bool)

(declare-fun inv!32797 (IArray!16091) Bool)

(assert (=> b!2154272 (= e!1377853 (and (inv!32797 (xs!10985 (c!341435 (totalInput!3323 cacheFurthestNullable!118)))) e!1377852))))

(assert (=> b!2154149 (= tp!670143 (and (inv!32790 (c!341435 (totalInput!3323 cacheFurthestNullable!118))) e!1377853))))

(assert (= (and b!2154149 ((_ is Node!8043) (c!341435 (totalInput!3323 cacheFurthestNullable!118)))) b!2154271))

(assert (= b!2154272 b!2154273))

(assert (= (and b!2154149 ((_ is Leaf!11764) (c!341435 (totalInput!3323 cacheFurthestNullable!118)))) b!2154272))

(declare-fun m!2595712 () Bool)

(assert (=> b!2154271 m!2595712))

(declare-fun m!2595714 () Bool)

(assert (=> b!2154271 m!2595714))

(declare-fun m!2595716 () Bool)

(assert (=> b!2154272 m!2595716))

(assert (=> b!2154149 m!2595635))

(declare-fun setIsEmpty!17490 () Bool)

(declare-fun setRes!17490 () Bool)

(assert (=> setIsEmpty!17490 setRes!17490))

(declare-fun setElem!17490 () Context!2954)

(declare-fun setRes!17491 () Bool)

(declare-fun tp!670191 () Bool)

(declare-fun e!1377863 () Bool)

(declare-fun setNonEmpty!17490 () Bool)

(assert (=> setNonEmpty!17490 (= setRes!17491 (and tp!670191 (inv!32794 setElem!17490) e!1377863))))

(declare-fun mapDefault!13751 () List!24904)

(declare-fun setRest!17490 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17490 (= (_1!14591 (_1!14592 (h!30221 mapDefault!13751))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17490 true) setRest!17490))))

(declare-fun e!1377865 () Bool)

(declare-fun tp!670187 () Bool)

(declare-fun setNonEmpty!17491 () Bool)

(declare-fun setElem!17491 () Context!2954)

(assert (=> setNonEmpty!17491 (= setRes!17490 (and tp!670187 (inv!32794 setElem!17491) e!1377865))))

(declare-fun mapValue!13751 () List!24904)

(declare-fun setRest!17491 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17491 (= (_1!14591 (_1!14592 (h!30221 mapValue!13751))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17491 true) setRest!17491))))

(declare-fun condMapEmpty!13751 () Bool)

(assert (=> mapNonEmpty!13748 (= condMapEmpty!13751 (= mapRest!13748 ((as const (Array (_ BitVec 32) List!24904)) mapDefault!13751)))))

(declare-fun e!1377864 () Bool)

(declare-fun mapRes!13751 () Bool)

(assert (=> mapNonEmpty!13748 (= tp!670138 (and e!1377864 mapRes!13751))))

(declare-fun b!2154284 () Bool)

(declare-fun e!1377862 () Bool)

(declare-fun tp!670190 () Bool)

(assert (=> b!2154284 (= e!1377862 (and setRes!17490 tp!670190))))

(declare-fun condSetEmpty!17490 () Bool)

(assert (=> b!2154284 (= condSetEmpty!17490 (= (_1!14591 (_1!14592 (h!30221 mapValue!13751))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun mapNonEmpty!13751 () Bool)

(declare-fun tp!670189 () Bool)

(assert (=> mapNonEmpty!13751 (= mapRes!13751 (and tp!670189 e!1377862))))

(declare-fun mapRest!13751 () (Array (_ BitVec 32) List!24904))

(declare-fun mapKey!13751 () (_ BitVec 32))

(assert (=> mapNonEmpty!13751 (= mapRest!13748 (store mapRest!13751 mapKey!13751 mapValue!13751))))

(declare-fun b!2154285 () Bool)

(declare-fun tp!670188 () Bool)

(assert (=> b!2154285 (= e!1377863 tp!670188)))

(declare-fun setIsEmpty!17491 () Bool)

(assert (=> setIsEmpty!17491 setRes!17491))

(declare-fun b!2154286 () Bool)

(declare-fun tp!670193 () Bool)

(assert (=> b!2154286 (= e!1377864 (and setRes!17491 tp!670193))))

(declare-fun condSetEmpty!17491 () Bool)

(assert (=> b!2154286 (= condSetEmpty!17491 (= (_1!14591 (_1!14592 (h!30221 mapDefault!13751))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun mapIsEmpty!13751 () Bool)

(assert (=> mapIsEmpty!13751 mapRes!13751))

(declare-fun b!2154287 () Bool)

(declare-fun tp!670192 () Bool)

(assert (=> b!2154287 (= e!1377865 tp!670192)))

(assert (= (and mapNonEmpty!13748 condMapEmpty!13751) mapIsEmpty!13751))

(assert (= (and mapNonEmpty!13748 (not condMapEmpty!13751)) mapNonEmpty!13751))

(assert (= (and b!2154284 condSetEmpty!17490) setIsEmpty!17490))

(assert (= (and b!2154284 (not condSetEmpty!17490)) setNonEmpty!17491))

(assert (= setNonEmpty!17491 b!2154287))

(assert (= (and mapNonEmpty!13751 ((_ is Cons!24820) mapValue!13751)) b!2154284))

(assert (= (and b!2154286 condSetEmpty!17491) setIsEmpty!17491))

(assert (= (and b!2154286 (not condSetEmpty!17491)) setNonEmpty!17490))

(assert (= setNonEmpty!17490 b!2154285))

(assert (= (and mapNonEmpty!13748 ((_ is Cons!24820) mapDefault!13751)) b!2154286))

(declare-fun m!2595718 () Bool)

(assert (=> setNonEmpty!17490 m!2595718))

(declare-fun m!2595720 () Bool)

(assert (=> setNonEmpty!17491 m!2595720))

(declare-fun m!2595722 () Bool)

(assert (=> mapNonEmpty!13751 m!2595722))

(declare-fun b!2154294 () Bool)

(declare-fun e!1377871 () Bool)

(declare-fun setRes!17494 () Bool)

(declare-fun tp!670201 () Bool)

(assert (=> b!2154294 (= e!1377871 (and setRes!17494 tp!670201))))

(declare-fun condSetEmpty!17494 () Bool)

(assert (=> b!2154294 (= condSetEmpty!17494 (= (_1!14591 (_1!14592 (h!30221 mapValue!13748))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun setNonEmpty!17494 () Bool)

(declare-fun setElem!17494 () Context!2954)

(declare-fun e!1377870 () Bool)

(declare-fun tp!670200 () Bool)

(assert (=> setNonEmpty!17494 (= setRes!17494 (and tp!670200 (inv!32794 setElem!17494) e!1377870))))

(declare-fun setRest!17494 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17494 (= (_1!14591 (_1!14592 (h!30221 mapValue!13748))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17494 true) setRest!17494))))

(declare-fun setIsEmpty!17494 () Bool)

(assert (=> setIsEmpty!17494 setRes!17494))

(assert (=> mapNonEmpty!13748 (= tp!670141 e!1377871)))

(declare-fun b!2154295 () Bool)

(declare-fun tp!670202 () Bool)

(assert (=> b!2154295 (= e!1377870 tp!670202)))

(assert (= (and b!2154294 condSetEmpty!17494) setIsEmpty!17494))

(assert (= (and b!2154294 (not condSetEmpty!17494)) setNonEmpty!17494))

(assert (= setNonEmpty!17494 b!2154295))

(assert (= (and mapNonEmpty!13748 ((_ is Cons!24820) mapValue!13748)) b!2154294))

(declare-fun m!2595724 () Bool)

(assert (=> setNonEmpty!17494 m!2595724))

(declare-fun b!2154296 () Bool)

(declare-fun e!1377873 () Bool)

(declare-fun setRes!17495 () Bool)

(declare-fun tp!670204 () Bool)

(assert (=> b!2154296 (= e!1377873 (and setRes!17495 tp!670204))))

(declare-fun condSetEmpty!17495 () Bool)

(assert (=> b!2154296 (= condSetEmpty!17495 (= (_1!14591 (_1!14592 (h!30221 mapDefault!13748))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun e!1377872 () Bool)

(declare-fun setNonEmpty!17495 () Bool)

(declare-fun setElem!17495 () Context!2954)

(declare-fun tp!670203 () Bool)

(assert (=> setNonEmpty!17495 (= setRes!17495 (and tp!670203 (inv!32794 setElem!17495) e!1377872))))

(declare-fun setRest!17495 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17495 (= (_1!14591 (_1!14592 (h!30221 mapDefault!13748))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17495 true) setRest!17495))))

(declare-fun setIsEmpty!17495 () Bool)

(assert (=> setIsEmpty!17495 setRes!17495))

(assert (=> b!2154150 (= tp!670140 e!1377873)))

(declare-fun b!2154297 () Bool)

(declare-fun tp!670205 () Bool)

(assert (=> b!2154297 (= e!1377872 tp!670205)))

(assert (= (and b!2154296 condSetEmpty!17495) setIsEmpty!17495))

(assert (= (and b!2154296 (not condSetEmpty!17495)) setNonEmpty!17495))

(assert (= setNonEmpty!17495 b!2154297))

(assert (= (and b!2154150 ((_ is Cons!24820) mapDefault!13748)) b!2154296))

(declare-fun m!2595726 () Bool)

(assert (=> setNonEmpty!17495 m!2595726))

(declare-fun condSetEmpty!17498 () Bool)

(assert (=> setNonEmpty!17482 (= condSetEmpty!17498 (= setRest!17482 ((as const (Array Context!2954 Bool)) false)))))

(declare-fun setRes!17498 () Bool)

(assert (=> setNonEmpty!17482 (= tp!670145 setRes!17498)))

(declare-fun setIsEmpty!17498 () Bool)

(assert (=> setIsEmpty!17498 setRes!17498))

(declare-fun setElem!17498 () Context!2954)

(declare-fun e!1377876 () Bool)

(declare-fun tp!670210 () Bool)

(declare-fun setNonEmpty!17498 () Bool)

(assert (=> setNonEmpty!17498 (= setRes!17498 (and tp!670210 (inv!32794 setElem!17498) e!1377876))))

(declare-fun setRest!17498 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17498 (= setRest!17482 ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17498 true) setRest!17498))))

(declare-fun b!2154302 () Bool)

(declare-fun tp!670211 () Bool)

(assert (=> b!2154302 (= e!1377876 tp!670211)))

(assert (= (and setNonEmpty!17482 condSetEmpty!17498) setIsEmpty!17498))

(assert (= (and setNonEmpty!17482 (not condSetEmpty!17498)) setNonEmpty!17498))

(assert (= setNonEmpty!17498 b!2154302))

(declare-fun m!2595728 () Bool)

(assert (=> setNonEmpty!17498 m!2595728))

(declare-fun b!2154303 () Bool)

(declare-fun e!1377878 () Bool)

(declare-fun setRes!17499 () Bool)

(declare-fun tp!670213 () Bool)

(assert (=> b!2154303 (= e!1377878 (and setRes!17499 tp!670213))))

(declare-fun condSetEmpty!17499 () Bool)

(assert (=> b!2154303 (= condSetEmpty!17499 (= (_1!14591 (_1!14592 (h!30221 (zeroValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun e!1377877 () Bool)

(declare-fun setElem!17499 () Context!2954)

(declare-fun tp!670212 () Bool)

(declare-fun setNonEmpty!17499 () Bool)

(assert (=> setNonEmpty!17499 (= setRes!17499 (and tp!670212 (inv!32794 setElem!17499) e!1377877))))

(declare-fun setRest!17499 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17499 (= (_1!14591 (_1!14592 (h!30221 (zeroValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17499 true) setRest!17499))))

(declare-fun setIsEmpty!17499 () Bool)

(assert (=> setIsEmpty!17499 setRes!17499))

(assert (=> b!2154170 (= tp!670136 e!1377878)))

(declare-fun b!2154304 () Bool)

(declare-fun tp!670214 () Bool)

(assert (=> b!2154304 (= e!1377877 tp!670214)))

(assert (= (and b!2154303 condSetEmpty!17499) setIsEmpty!17499))

(assert (= (and b!2154303 (not condSetEmpty!17499)) setNonEmpty!17499))

(assert (= setNonEmpty!17499 b!2154304))

(assert (= (and b!2154170 ((_ is Cons!24820) (zeroValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118)))))))) b!2154303))

(declare-fun m!2595730 () Bool)

(assert (=> setNonEmpty!17499 m!2595730))

(declare-fun b!2154305 () Bool)

(declare-fun e!1377880 () Bool)

(declare-fun setRes!17500 () Bool)

(declare-fun tp!670216 () Bool)

(assert (=> b!2154305 (= e!1377880 (and setRes!17500 tp!670216))))

(declare-fun condSetEmpty!17500 () Bool)

(assert (=> b!2154305 (= condSetEmpty!17500 (= (_1!14591 (_1!14592 (h!30221 (minValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))))) ((as const (Array Context!2954 Bool)) false)))))

(declare-fun setNonEmpty!17500 () Bool)

(declare-fun setElem!17500 () Context!2954)

(declare-fun tp!670215 () Bool)

(declare-fun e!1377879 () Bool)

(assert (=> setNonEmpty!17500 (= setRes!17500 (and tp!670215 (inv!32794 setElem!17500) e!1377879))))

(declare-fun setRest!17500 () (InoxSet Context!2954))

(assert (=> setNonEmpty!17500 (= (_1!14591 (_1!14592 (h!30221 (minValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2954 Bool)) false) setElem!17500 true) setRest!17500))))

(declare-fun setIsEmpty!17500 () Bool)

(assert (=> setIsEmpty!17500 setRes!17500))

(assert (=> b!2154170 (= tp!670133 e!1377880)))

(declare-fun b!2154306 () Bool)

(declare-fun tp!670217 () Bool)

(assert (=> b!2154306 (= e!1377879 tp!670217)))

(assert (= (and b!2154305 condSetEmpty!17500) setIsEmpty!17500))

(assert (= (and b!2154305 (not condSetEmpty!17500)) setNonEmpty!17500))

(assert (= setNonEmpty!17500 b!2154306))

(assert (= (and b!2154170 ((_ is Cons!24820) (minValue!3166 (v!29279 (underlying!6011 (v!29280 (underlying!6012 (cache!3203 cacheFurthestNullable!118)))))))) b!2154305))

(declare-fun m!2595732 () Bool)

(assert (=> setNonEmpty!17500 m!2595732))

(declare-fun e!1377882 () Bool)

(declare-fun b!2154307 () Bool)

(declare-fun tp!670218 () Bool)

(declare-fun tp!670219 () Bool)

(assert (=> b!2154307 (= e!1377882 (and (inv!32790 (left!19095 (c!341435 (totalInput!3324 (h!30223 stack!12))))) tp!670219 (inv!32790 (right!19425 (c!341435 (totalInput!3324 (h!30223 stack!12))))) tp!670218))))

(declare-fun b!2154309 () Bool)

(declare-fun e!1377881 () Bool)

(declare-fun tp!670220 () Bool)

(assert (=> b!2154309 (= e!1377881 tp!670220)))

(declare-fun b!2154308 () Bool)

(assert (=> b!2154308 (= e!1377882 (and (inv!32797 (xs!10985 (c!341435 (totalInput!3324 (h!30223 stack!12))))) e!1377881))))

(assert (=> b!2154169 (= tp!670144 (and (inv!32790 (c!341435 (totalInput!3324 (h!30223 stack!12)))) e!1377882))))

(assert (= (and b!2154169 ((_ is Node!8043) (c!341435 (totalInput!3324 (h!30223 stack!12))))) b!2154307))

(assert (= b!2154308 b!2154309))

(assert (= (and b!2154169 ((_ is Leaf!11764) (c!341435 (totalInput!3324 (h!30223 stack!12))))) b!2154308))

(declare-fun m!2595734 () Bool)

(assert (=> b!2154307 m!2595734))

(declare-fun m!2595736 () Bool)

(assert (=> b!2154307 m!2595736))

(declare-fun m!2595738 () Bool)

(assert (=> b!2154308 m!2595738))

(assert (=> b!2154169 m!2595599))

(declare-fun tp!670221 () Bool)

(declare-fun tp!670222 () Bool)

(declare-fun e!1377884 () Bool)

(declare-fun b!2154310 () Bool)

(assert (=> b!2154310 (= e!1377884 (and (inv!32790 (left!19095 (c!341435 totalInput!880))) tp!670222 (inv!32790 (right!19425 (c!341435 totalInput!880))) tp!670221))))

(declare-fun b!2154312 () Bool)

(declare-fun e!1377883 () Bool)

(declare-fun tp!670223 () Bool)

(assert (=> b!2154312 (= e!1377883 tp!670223)))

(declare-fun b!2154311 () Bool)

(assert (=> b!2154311 (= e!1377884 (and (inv!32797 (xs!10985 (c!341435 totalInput!880))) e!1377883))))

(assert (=> b!2154155 (= tp!670139 (and (inv!32790 (c!341435 totalInput!880)) e!1377884))))

(assert (= (and b!2154155 ((_ is Node!8043) (c!341435 totalInput!880))) b!2154310))

(assert (= b!2154311 b!2154312))

(assert (= (and b!2154155 ((_ is Leaf!11764) (c!341435 totalInput!880))) b!2154311))

(declare-fun m!2595740 () Bool)

(assert (=> b!2154310 m!2595740))

(declare-fun m!2595742 () Bool)

(assert (=> b!2154310 m!2595742))

(declare-fun m!2595744 () Bool)

(assert (=> b!2154311 m!2595744))

(assert (=> b!2154155 m!2595629))

(declare-fun b_lambda!70917 () Bool)

(assert (= b_lambda!70913 (or b!2154159 b_lambda!70917)))

(declare-fun bs!445771 () Bool)

(declare-fun d!646115 () Bool)

(assert (= bs!445771 (and d!646115 b!2154159)))

(assert (=> bs!445771 (= (dynLambda!11408 lambda!81221 (h!30223 stack!12)) (= (res!928793 (h!30223 stack!12)) res!17610))))

(assert (=> b!2154217 d!646115))

(declare-fun b_lambda!70919 () Bool)

(assert (= b_lambda!70915 (or b!2154154 b_lambda!70919)))

(declare-fun bs!445772 () Bool)

(declare-fun d!646117 () Bool)

(assert (= bs!445772 (and d!646117 b!2154154)))

(assert (=> bs!445772 (= (dynLambda!11408 lambda!81220 (h!30223 stack!12)) (= (totalInput!3324 (h!30223 stack!12)) totalInput!880))))

(assert (=> b!2154239 d!646117))

(check-sat (not b!2154224) (not b!2154296) (not b!2154248) (not b!2154309) (not b!2154241) (not setNonEmpty!17485) (not setNonEmpty!17500) (not d!646097) (not b!2154304) (not d!646081) b_and!173237 (not d!646105) (not b!2154307) (not d!646083) (not setNonEmpty!17494) (not b!2154205) (not mapNonEmpty!13751) (not b!2154308) (not b!2154194) (not b!2154207) (not b!2154243) (not b_lambda!70917) (not d!646089) (not b!2154302) (not b!2154191) (not b!2154223) b_and!173239 (not d!646099) (not b_next!64327) (not b!2154297) (not b!2154233) (not b!2154287) (not b!2154149) (not b!2154236) (not d!646109) (not b!2154218) (not b!2154193) (not b!2154305) (not b!2154240) (not b!2154169) (not b!2154285) (not b!2154294) (not d!646087) (not b!2154284) (not b!2154259) (not b!2154311) (not setNonEmpty!17490) (not b!2154260) (not b!2154235) (not b!2154155) (not setNonEmpty!17498) (not b!2154312) (not d!646111) (not b!2154271) (not b!2154273) (not b!2154295) (not b!2154262) (not b!2154272) (not b!2154303) (not b!2154238) (not setNonEmpty!17495) (not b!2154306) (not b!2154286) (not b_lambda!70919) (not setNonEmpty!17499) (not setNonEmpty!17491) (not b!2154212) (not b_next!64325) (not b!2154190) (not b!2154310) (not b!2154261))
(check-sat b_and!173239 b_and!173237 (not b_next!64327) (not b_next!64325))
