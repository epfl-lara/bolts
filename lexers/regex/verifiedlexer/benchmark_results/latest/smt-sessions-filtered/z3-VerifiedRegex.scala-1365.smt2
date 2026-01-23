; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72878 () Bool)

(assert start!72878)

(declare-fun b!819163 () Bool)

(assert (=> b!819163 true))

(declare-fun b!819161 () Bool)

(declare-fun e!541188 () Bool)

(declare-fun lt!316485 () Bool)

(assert (=> b!819161 (= e!541188 (not lt!316485))))

(declare-fun lt!316484 () Bool)

(assert (=> b!819161 (= lt!316485 (not lt!316484))))

(declare-datatypes ((C!4620 0))(
  ( (C!4621 (val!2540 Int)) )
))
(declare-datatypes ((Regex!2025 0))(
  ( (ElementMatch!2025 (c!132781 C!4620)) (Concat!3734 (regOne!4562 Regex!2025) (regTwo!4562 Regex!2025)) (EmptyExpr!2025) (Star!2025 (reg!2354 Regex!2025)) (EmptyLang!2025) (Union!2025 (regOne!4563 Regex!2025) (regTwo!4563 Regex!2025)) )
))
(declare-datatypes ((List!8794 0))(
  ( (Nil!8780) (Cons!8780 (h!14181 Regex!2025) (t!92900 List!8794)) )
))
(declare-datatypes ((Context!842 0))(
  ( (Context!843 (exprs!921 List!8794)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1060 0))(
  ( (tuple3!1061 (_1!5961 (InoxSet Context!842)) (_2!5961 Int) (_3!821 Int)) )
))
(declare-datatypes ((tuple2!10280 0))(
  ( (tuple2!10281 (_1!5962 tuple3!1060) (_2!5962 Int)) )
))
(declare-datatypes ((List!8795 0))(
  ( (Nil!8781) (Cons!8781 (h!14182 tuple2!10280) (t!92901 List!8795)) )
))
(declare-datatypes ((array!4405 0))(
  ( (array!4406 (arr!1963 (Array (_ BitVec 32) (_ BitVec 64))) (size!7431 (_ BitVec 32))) )
))
(declare-datatypes ((array!4407 0))(
  ( (array!4408 (arr!1964 (Array (_ BitVec 32) List!8795)) (size!7432 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2502 0))(
  ( (LongMapFixedSize!2503 (defaultEntry!1607 Int) (mask!3152 (_ BitVec 32)) (extraKeys!1498 (_ BitVec 32)) (zeroValue!1508 List!8795) (minValue!1508 List!8795) (_size!2611 (_ BitVec 32)) (_keys!1545 array!4405) (_values!1530 array!4407) (_vacant!1312 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4945 0))(
  ( (Cell!4946 (v!19071 LongMapFixedSize!2502)) )
))
(declare-datatypes ((MutLongMap!1251 0))(
  ( (LongMap!1251 (underlying!2685 Cell!4945)) (MutLongMapExt!1250 (__x!7156 Int)) )
))
(declare-datatypes ((Cell!4947 0))(
  ( (Cell!4948 (v!19072 MutLongMap!1251)) )
))
(declare-datatypes ((Hashable!1223 0))(
  ( (HashableExt!1222 (__x!7157 Int)) )
))
(declare-datatypes ((MutableMap!1223 0))(
  ( (MutableMapExt!1222 (__x!7158 Int)) (HashMap!1223 (underlying!2686 Cell!4947) (hashF!3134 Hashable!1223) (_size!2612 (_ BitVec 32)) (defaultValue!1377 Int)) )
))
(declare-fun lt!316482 () MutableMap!1223)

(declare-datatypes ((List!8796 0))(
  ( (Nil!8782) (Cons!8782 (h!14183 C!4620) (t!92902 List!8796)) )
))
(declare-datatypes ((IArray!5859 0))(
  ( (IArray!5860 (innerList!2987 List!8796)) )
))
(declare-datatypes ((Conc!2929 0))(
  ( (Node!2929 (left!6492 Conc!2929) (right!6822 Conc!2929) (csize!6088 Int) (cheight!3140 Int)) (Leaf!4295 (xs!5618 IArray!5859) (csize!6089 Int)) (Empty!2929) )
))
(declare-datatypes ((BalanceConc!5870 0))(
  ( (BalanceConc!5871 (c!132782 Conc!2929)) )
))
(declare-fun totalInput!631 () BalanceConc!5870)

(declare-fun validCacheMapFurthestNullable!32 (MutableMap!1223 BalanceConc!5870) Bool)

(assert (=> b!819161 (= lt!316485 (validCacheMapFurthestNullable!32 lt!316482 totalInput!631))))

(declare-fun e!541185 () Bool)

(assert (=> b!819161 (= lt!316484 e!541185)))

(declare-fun res!378012 () Bool)

(assert (=> b!819161 (=> res!378012 e!541185)))

(declare-fun valid!999 (MutableMap!1223) Bool)

(assert (=> b!819161 (= res!378012 (not (valid!999 lt!316482)))))

(declare-fun lambda!24168 () Int)

(declare-fun hashF!576 () Hashable!1223)

(declare-fun initialSize!19 () (_ BitVec 32))

(declare-fun getEmptyHashMap!13 (Int Hashable!1223 (_ BitVec 32)) MutableMap!1223)

(assert (=> b!819161 (= lt!316482 (getEmptyHashMap!13 lambda!24168 hashF!576 initialSize!19))))

(declare-fun b!819162 () Bool)

(declare-fun e!541187 () Bool)

(assert (=> b!819162 (= e!541185 e!541187)))

(declare-fun res!378013 () Bool)

(assert (=> b!819162 (=> res!378013 e!541187)))

(declare-datatypes ((ListMap!425 0))(
  ( (ListMap!426 (toList!554 List!8795)) )
))
(declare-fun lt!316483 () ListMap!425)

(declare-fun invariantList!188 (List!8795) Bool)

(assert (=> b!819162 (= res!378013 (not (invariantList!188 (toList!554 lt!316483))))))

(declare-fun map!1800 (MutableMap!1223) ListMap!425)

(assert (=> b!819162 (= lt!316483 (map!1800 lt!316482))))

(declare-fun res!378011 () Bool)

(assert (=> start!72878 (=> (not res!378011) (not e!541188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!72878 (= res!378011 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(assert (=> start!72878 e!541188))

(assert (=> start!72878 true))

(declare-fun e!541186 () Bool)

(declare-fun inv!11118 (BalanceConc!5870) Bool)

(assert (=> start!72878 (and (inv!11118 totalInput!631) e!541186)))

(declare-fun lambda!24169 () Int)

(declare-fun forall!2071 (List!8795 Int) Bool)

(assert (=> b!819163 (= e!541187 (not (forall!2071 (toList!554 lt!316483) lambda!24169)))))

(declare-fun b!819164 () Bool)

(declare-fun tp!256366 () Bool)

(declare-fun inv!11119 (Conc!2929) Bool)

(assert (=> b!819164 (= e!541186 (and (inv!11119 (c!132782 totalInput!631)) tp!256366))))

(assert (= (and start!72878 res!378011) b!819161))

(assert (= (and b!819161 (not res!378012)) b!819162))

(assert (= (and b!819162 (not res!378013)) b!819163))

(assert (= start!72878 b!819164))

(declare-fun m!1059971 () Bool)

(assert (=> b!819163 m!1059971))

(declare-fun m!1059973 () Bool)

(assert (=> b!819164 m!1059973))

(declare-fun m!1059975 () Bool)

(assert (=> b!819161 m!1059975))

(declare-fun m!1059977 () Bool)

(assert (=> b!819161 m!1059977))

(declare-fun m!1059979 () Bool)

(assert (=> b!819161 m!1059979))

(declare-fun m!1059981 () Bool)

(assert (=> b!819162 m!1059981))

(declare-fun m!1059983 () Bool)

(assert (=> b!819162 m!1059983))

(declare-fun m!1059985 () Bool)

(assert (=> start!72878 m!1059985))

(declare-fun m!1059987 () Bool)

(assert (=> start!72878 m!1059987))

(check-sat (not b!819161) (not b!819164) (not start!72878) (not b!819162) (not b!819163))
(check-sat)
(get-model)

(declare-fun d!257790 () Bool)

(declare-fun noDuplicatedKeys!32 (List!8795) Bool)

(assert (=> d!257790 (= (invariantList!188 (toList!554 lt!316483)) (noDuplicatedKeys!32 (toList!554 lt!316483)))))

(declare-fun bs!228553 () Bool)

(assert (= bs!228553 d!257790))

(declare-fun m!1059991 () Bool)

(assert (=> bs!228553 m!1059991))

(assert (=> b!819162 d!257790))

(declare-fun d!257792 () Bool)

(declare-fun lt!316491 () ListMap!425)

(assert (=> d!257792 (invariantList!188 (toList!554 lt!316491))))

(declare-datatypes ((tuple2!10284 0))(
  ( (tuple2!10285 (_1!5964 (_ BitVec 64)) (_2!5964 List!8795)) )
))
(declare-datatypes ((List!8798 0))(
  ( (Nil!8784) (Cons!8784 (h!14185 tuple2!10284) (t!92904 List!8798)) )
))
(declare-fun extractMap!37 (List!8798) ListMap!425)

(declare-datatypes ((ListLongMap!117 0))(
  ( (ListLongMap!118 (toList!556 List!8798)) )
))
(declare-fun map!1802 (MutLongMap!1251) ListLongMap!117)

(assert (=> d!257792 (= lt!316491 (extractMap!37 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!257792 (valid!999 lt!316482)))

(assert (=> d!257792 (= (map!1800 lt!316482) lt!316491)))

(declare-fun bs!228556 () Bool)

(assert (= bs!228556 d!257792))

(declare-fun m!1060010 () Bool)

(assert (=> bs!228556 m!1060010))

(declare-fun m!1060012 () Bool)

(assert (=> bs!228556 m!1060012))

(declare-fun m!1060014 () Bool)

(assert (=> bs!228556 m!1060014))

(assert (=> bs!228556 m!1059977))

(assert (=> b!819162 d!257792))

(declare-fun d!257804 () Bool)

(declare-fun res!378033 () Bool)

(declare-fun e!541208 () Bool)

(assert (=> d!257804 (=> res!378033 e!541208)))

(get-info :version)

(assert (=> d!257804 (= res!378033 ((_ is Nil!8781) (toList!554 lt!316483)))))

(assert (=> d!257804 (= (forall!2071 (toList!554 lt!316483) lambda!24169) e!541208)))

(declare-fun b!819192 () Bool)

(declare-fun e!541209 () Bool)

(assert (=> b!819192 (= e!541208 e!541209)))

(declare-fun res!378034 () Bool)

(assert (=> b!819192 (=> (not res!378034) (not e!541209))))

(declare-fun dynLambda!4095 (Int tuple2!10280) Bool)

(assert (=> b!819192 (= res!378034 (dynLambda!4095 lambda!24169 (h!14182 (toList!554 lt!316483))))))

(declare-fun b!819193 () Bool)

(assert (=> b!819193 (= e!541209 (forall!2071 (t!92901 (toList!554 lt!316483)) lambda!24169))))

(assert (= (and d!257804 (not res!378033)) b!819192))

(assert (= (and b!819192 res!378034) b!819193))

(declare-fun b_lambda!27425 () Bool)

(assert (=> (not b_lambda!27425) (not b!819192)))

(declare-fun m!1060020 () Bool)

(assert (=> b!819192 m!1060020))

(declare-fun m!1060022 () Bool)

(assert (=> b!819193 m!1060022))

(assert (=> b!819163 d!257804))

(declare-fun d!257808 () Bool)

(assert (=> d!257808 (= (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!72878 d!257808))

(declare-fun d!257812 () Bool)

(declare-fun isBalanced!796 (Conc!2929) Bool)

(assert (=> d!257812 (= (inv!11118 totalInput!631) (isBalanced!796 (c!132782 totalInput!631)))))

(declare-fun bs!228558 () Bool)

(assert (= bs!228558 d!257812))

(declare-fun m!1060030 () Bool)

(assert (=> bs!228558 m!1060030))

(assert (=> start!72878 d!257812))

(declare-fun d!257814 () Bool)

(declare-fun c!132788 () Bool)

(assert (=> d!257814 (= c!132788 ((_ is Node!2929) (c!132782 totalInput!631)))))

(declare-fun e!541220 () Bool)

(assert (=> d!257814 (= (inv!11119 (c!132782 totalInput!631)) e!541220)))

(declare-fun b!819210 () Bool)

(declare-fun inv!11123 (Conc!2929) Bool)

(assert (=> b!819210 (= e!541220 (inv!11123 (c!132782 totalInput!631)))))

(declare-fun b!819211 () Bool)

(declare-fun e!541221 () Bool)

(assert (=> b!819211 (= e!541220 e!541221)))

(declare-fun res!378047 () Bool)

(assert (=> b!819211 (= res!378047 (not ((_ is Leaf!4295) (c!132782 totalInput!631))))))

(assert (=> b!819211 (=> res!378047 e!541221)))

(declare-fun b!819212 () Bool)

(declare-fun inv!11124 (Conc!2929) Bool)

(assert (=> b!819212 (= e!541221 (inv!11124 (c!132782 totalInput!631)))))

(assert (= (and d!257814 c!132788) b!819210))

(assert (= (and d!257814 (not c!132788)) b!819211))

(assert (= (and b!819211 (not res!378047)) b!819212))

(declare-fun m!1060032 () Bool)

(assert (=> b!819210 m!1060032))

(declare-fun m!1060034 () Bool)

(assert (=> b!819212 m!1060034))

(assert (=> b!819164 d!257814))

(declare-fun bs!228560 () Bool)

(declare-fun b!819239 () Bool)

(assert (= bs!228560 (and b!819239 b!819163)))

(declare-fun lambda!24183 () Int)

(assert (=> bs!228560 (= lambda!24183 lambda!24169)))

(assert (=> b!819239 true))

(declare-fun d!257816 () Bool)

(declare-fun res!378054 () Bool)

(declare-fun e!541237 () Bool)

(assert (=> d!257816 (=> (not res!378054) (not e!541237))))

(assert (=> d!257816 (= res!378054 (valid!999 lt!316482))))

(assert (=> d!257816 (= (validCacheMapFurthestNullable!32 lt!316482 totalInput!631) e!541237)))

(declare-fun b!819238 () Bool)

(declare-fun res!378055 () Bool)

(assert (=> b!819238 (=> (not res!378055) (not e!541237))))

(assert (=> b!819238 (= res!378055 (invariantList!188 (toList!554 (map!1800 lt!316482))))))

(assert (=> b!819239 (= e!541237 (forall!2071 (toList!554 (map!1800 lt!316482)) lambda!24183))))

(assert (= (and d!257816 res!378054) b!819238))

(assert (= (and b!819238 res!378055) b!819239))

(assert (=> d!257816 m!1059977))

(assert (=> b!819238 m!1059983))

(declare-fun m!1060051 () Bool)

(assert (=> b!819238 m!1060051))

(assert (=> b!819239 m!1059983))

(declare-fun m!1060053 () Bool)

(assert (=> b!819239 m!1060053))

(assert (=> b!819161 d!257816))

(declare-fun d!257820 () Bool)

(declare-fun res!378060 () Bool)

(declare-fun e!541240 () Bool)

(assert (=> d!257820 (=> (not res!378060) (not e!541240))))

(declare-fun valid!1001 (MutLongMap!1251) Bool)

(assert (=> d!257820 (= res!378060 (valid!1001 (v!19072 (underlying!2686 lt!316482))))))

(assert (=> d!257820 (= (valid!999 lt!316482) e!541240)))

(declare-fun b!819244 () Bool)

(declare-fun res!378061 () Bool)

(assert (=> b!819244 (=> (not res!378061) (not e!541240))))

(declare-fun lambda!24186 () Int)

(declare-fun forall!2073 (List!8798 Int) Bool)

(assert (=> b!819244 (= res!378061 (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24186))))

(declare-fun b!819245 () Bool)

(declare-fun allKeysSameHashInMap!47 (ListLongMap!117 Hashable!1223) Bool)

(assert (=> b!819245 (= e!541240 (allKeysSameHashInMap!47 (map!1802 (v!19072 (underlying!2686 lt!316482))) (hashF!3134 lt!316482)))))

(assert (= (and d!257820 res!378060) b!819244))

(assert (= (and b!819244 res!378061) b!819245))

(declare-fun m!1060055 () Bool)

(assert (=> d!257820 m!1060055))

(assert (=> b!819244 m!1060012))

(declare-fun m!1060057 () Bool)

(assert (=> b!819244 m!1060057))

(assert (=> b!819245 m!1060012))

(assert (=> b!819245 m!1060012))

(declare-fun m!1060059 () Bool)

(assert (=> b!819245 m!1060059))

(assert (=> b!819161 d!257820))

(declare-fun b!819268 () Bool)

(declare-fun e!541253 () Bool)

(declare-fun lt!316509 () MutLongMap!1251)

(assert (=> b!819268 (= e!541253 ((_ is LongMap!1251) lt!316509))))

(assert (=> b!819268 (= lt!316509 (v!19072 (underlying!2686 (getEmptyHashMap!13 lambda!24168 hashF!576 initialSize!19))))))

(declare-fun b!819267 () Bool)

(declare-fun e!541252 () Bool)

(assert (=> b!819267 (= e!541252 e!541253)))

(declare-fun d!257822 () Bool)

(assert (=> d!257822 (= true e!541252)))

(assert (= b!819267 b!819268))

(assert (= (and d!257822 ((_ is HashMap!1223) (getEmptyHashMap!13 lambda!24168 hashF!576 initialSize!19))) b!819267))

(declare-fun e!541246 () Bool)

(assert (=> d!257822 e!541246))

(declare-fun res!378068 () Bool)

(assert (=> d!257822 (=> (not res!378068) (not e!541246))))

(assert (=> d!257822 (= res!378068 true)))

(declare-fun lambda!24191 () Int)

(declare-fun lt!316506 () MutableMap!1223)

(declare-fun getEmptyLongMap!11 (Int (_ BitVec 32)) MutLongMap!1251)

(assert (=> d!257822 (= lt!316506 (HashMap!1223 (Cell!4948 (getEmptyLongMap!11 lambda!24191 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24168))))

(declare-fun lt!316505 () MutableMap!1223)

(assert (=> d!257822 (= lt!316505 (HashMap!1223 (Cell!4948 (getEmptyLongMap!11 lambda!24191 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24168))))

(assert (=> d!257822 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!257822 (= (getEmptyHashMap!13 lambda!24168 hashF!576 initialSize!19) lt!316505)))

(declare-fun b!819250 () Bool)

(declare-fun res!378069 () Bool)

(assert (=> b!819250 (=> (not res!378069) (not e!541246))))

(assert (=> b!819250 (= res!378069 (valid!999 lt!316505))))

(declare-fun b!819251 () Bool)

(declare-fun size!7434 (MutableMap!1223) (_ BitVec 32))

(assert (=> b!819251 (= e!541246 (= (size!7434 lt!316505) #b00000000000000000000000000000000))))

(assert (= (and d!257822 res!378068) b!819250))

(assert (= (and b!819250 res!378069) b!819251))

(declare-fun m!1060073 () Bool)

(assert (=> d!257822 m!1060073))

(assert (=> d!257822 m!1060073))

(assert (=> d!257822 m!1059985))

(declare-fun m!1060075 () Bool)

(assert (=> b!819250 m!1060075))

(declare-fun m!1060077 () Bool)

(assert (=> b!819251 m!1060077))

(assert (=> b!819161 d!257822))

(declare-fun b!819277 () Bool)

(declare-fun e!541259 () Bool)

(declare-fun tp!256384 () Bool)

(declare-fun tp!256383 () Bool)

(assert (=> b!819277 (= e!541259 (and (inv!11119 (left!6492 (c!132782 totalInput!631))) tp!256384 (inv!11119 (right!6822 (c!132782 totalInput!631))) tp!256383))))

(declare-fun b!819279 () Bool)

(declare-fun e!541258 () Bool)

(declare-fun tp!256382 () Bool)

(assert (=> b!819279 (= e!541258 tp!256382)))

(declare-fun b!819278 () Bool)

(declare-fun inv!11125 (IArray!5859) Bool)

(assert (=> b!819278 (= e!541259 (and (inv!11125 (xs!5618 (c!132782 totalInput!631))) e!541258))))

(assert (=> b!819164 (= tp!256366 (and (inv!11119 (c!132782 totalInput!631)) e!541259))))

(assert (= (and b!819164 ((_ is Node!2929) (c!132782 totalInput!631))) b!819277))

(assert (= b!819278 b!819279))

(assert (= (and b!819164 ((_ is Leaf!4295) (c!132782 totalInput!631))) b!819278))

(declare-fun m!1060079 () Bool)

(assert (=> b!819277 m!1060079))

(declare-fun m!1060081 () Bool)

(assert (=> b!819277 m!1060081))

(declare-fun m!1060083 () Bool)

(assert (=> b!819278 m!1060083))

(assert (=> b!819164 m!1059973))

(declare-fun b_lambda!27429 () Bool)

(assert (= b_lambda!27425 (or b!819163 b_lambda!27429)))

(declare-fun bs!228562 () Bool)

(declare-fun d!257830 () Bool)

(assert (= bs!228562 (and d!257830 b!819163)))

(declare-fun validCacheMapFurthestNullableBody!5 (tuple2!10280 BalanceConc!5870) Bool)

(assert (=> bs!228562 (= (dynLambda!4095 lambda!24169 (h!14182 (toList!554 lt!316483))) (validCacheMapFurthestNullableBody!5 (h!14182 (toList!554 lt!316483)) totalInput!631))))

(declare-fun m!1060085 () Bool)

(assert (=> bs!228562 m!1060085))

(assert (=> b!819192 d!257830))

(check-sat (not b!819238) (not d!257790) (not b!819212) (not b!819277) (not b!819164) (not b!819210) (not b!819251) (not b!819250) (not b!819279) (not b_lambda!27429) (not bs!228562) (not d!257816) (not b!819244) (not d!257792) (not b!819245) (not b!819278) (not d!257812) (not d!257820) (not b!819193) (not d!257822) (not b!819239))
(check-sat)
(get-model)

(declare-fun d!257872 () Bool)

(declare-fun res!378142 () Bool)

(declare-fun e!541310 () Bool)

(assert (=> d!257872 (=> res!378142 e!541310)))

(assert (=> d!257872 (= res!378142 ((_ is Nil!8781) (toList!554 (map!1800 lt!316482))))))

(assert (=> d!257872 (= (forall!2071 (toList!554 (map!1800 lt!316482)) lambda!24183) e!541310)))

(declare-fun b!819368 () Bool)

(declare-fun e!541311 () Bool)

(assert (=> b!819368 (= e!541310 e!541311)))

(declare-fun res!378143 () Bool)

(assert (=> b!819368 (=> (not res!378143) (not e!541311))))

(assert (=> b!819368 (= res!378143 (dynLambda!4095 lambda!24183 (h!14182 (toList!554 (map!1800 lt!316482)))))))

(declare-fun b!819369 () Bool)

(assert (=> b!819369 (= e!541311 (forall!2071 (t!92901 (toList!554 (map!1800 lt!316482))) lambda!24183))))

(assert (= (and d!257872 (not res!378142)) b!819368))

(assert (= (and b!819368 res!378143) b!819369))

(declare-fun b_lambda!27443 () Bool)

(assert (=> (not b_lambda!27443) (not b!819368)))

(declare-fun m!1060179 () Bool)

(assert (=> b!819368 m!1060179))

(declare-fun m!1060181 () Bool)

(assert (=> b!819369 m!1060181))

(assert (=> b!819239 d!257872))

(assert (=> b!819239 d!257792))

(assert (=> d!257816 d!257820))

(declare-fun d!257874 () Bool)

(declare-fun e!541315 () Bool)

(assert (=> d!257874 e!541315))

(declare-fun res!378148 () Bool)

(assert (=> d!257874 (=> (not res!378148) (not e!541315))))

(assert (=> d!257874 (= res!378148 true)))

(declare-fun lt!316524 () MutLongMap!1251)

(declare-fun getNewLongMapFixedSize!9 ((_ BitVec 32) Int) LongMapFixedSize!2502)

(assert (=> d!257874 (= lt!316524 (LongMap!1251 (Cell!4946 (getNewLongMapFixedSize!9 (bvsub initialSize!19 #b00000000000000000000000000000001) lambda!24191))))))

(declare-fun lt!316523 () MutLongMap!1251)

(assert (=> d!257874 (= lt!316523 (LongMap!1251 (Cell!4946 (getNewLongMapFixedSize!9 (bvsub initialSize!19 #b00000000000000000000000000000001) lambda!24191))))))

(assert (=> d!257874 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!257874 (= (getEmptyLongMap!11 lambda!24191 initialSize!19) lt!316523)))

(declare-fun b!819374 () Bool)

(declare-fun res!378149 () Bool)

(assert (=> b!819374 (=> (not res!378149) (not e!541315))))

(assert (=> b!819374 (= res!378149 (valid!1001 lt!316523))))

(declare-fun b!819375 () Bool)

(declare-fun size!7439 (MutLongMap!1251) (_ BitVec 32))

(assert (=> b!819375 (= e!541315 (= (size!7439 lt!316523) #b00000000000000000000000000000000))))

(assert (= (and d!257874 res!378148) b!819374))

(assert (= (and b!819374 res!378149) b!819375))

(declare-fun m!1060183 () Bool)

(assert (=> d!257874 m!1060183))

(assert (=> d!257874 m!1059985))

(declare-fun m!1060185 () Bool)

(assert (=> b!819374 m!1060185))

(declare-fun m!1060187 () Bool)

(assert (=> b!819375 m!1060187))

(assert (=> d!257822 d!257874))

(assert (=> d!257822 d!257808))

(declare-fun d!257876 () Bool)

(declare-fun res!378154 () Bool)

(declare-fun e!541320 () Bool)

(assert (=> d!257876 (=> res!378154 e!541320)))

(assert (=> d!257876 (= res!378154 ((_ is Nil!8784) (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!257876 (= (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24186) e!541320)))

(declare-fun b!819380 () Bool)

(declare-fun e!541321 () Bool)

(assert (=> b!819380 (= e!541320 e!541321)))

(declare-fun res!378155 () Bool)

(assert (=> b!819380 (=> (not res!378155) (not e!541321))))

(declare-fun dynLambda!4097 (Int tuple2!10284) Bool)

(assert (=> b!819380 (= res!378155 (dynLambda!4097 lambda!24186 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun b!819381 () Bool)

(assert (=> b!819381 (= e!541321 (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lambda!24186))))

(assert (= (and d!257876 (not res!378154)) b!819380))

(assert (= (and b!819380 res!378155) b!819381))

(declare-fun b_lambda!27445 () Bool)

(assert (=> (not b_lambda!27445) (not b!819380)))

(declare-fun m!1060189 () Bool)

(assert (=> b!819380 m!1060189))

(declare-fun m!1060191 () Bool)

(assert (=> b!819381 m!1060191))

(assert (=> b!819244 d!257876))

(declare-fun d!257878 () Bool)

(declare-fun map!1804 (LongMapFixedSize!2502) ListLongMap!117)

(assert (=> d!257878 (= (map!1802 (v!19072 (underlying!2686 lt!316482))) (map!1804 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))))))

(declare-fun bs!228577 () Bool)

(assert (= bs!228577 d!257878))

(declare-fun m!1060193 () Bool)

(assert (=> bs!228577 m!1060193))

(assert (=> b!819244 d!257878))

(assert (=> b!819164 d!257814))

(declare-fun bs!228578 () Bool)

(declare-fun d!257880 () Bool)

(assert (= bs!228578 (and d!257880 b!819244)))

(declare-fun lambda!24201 () Int)

(assert (=> bs!228578 (not (= lambda!24201 lambda!24186))))

(assert (=> d!257880 true))

(assert (=> d!257880 (= (allKeysSameHashInMap!47 (map!1802 (v!19072 (underlying!2686 lt!316482))) (hashF!3134 lt!316482)) (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24201))))

(declare-fun bs!228579 () Bool)

(assert (= bs!228579 d!257880))

(declare-fun m!1060195 () Bool)

(assert (=> bs!228579 m!1060195))

(assert (=> b!819245 d!257880))

(assert (=> b!819245 d!257878))

(declare-fun d!257882 () Bool)

(declare-fun res!378156 () Bool)

(declare-fun e!541322 () Bool)

(assert (=> d!257882 (=> res!378156 e!541322)))

(assert (=> d!257882 (= res!378156 ((_ is Nil!8781) (t!92901 (toList!554 lt!316483))))))

(assert (=> d!257882 (= (forall!2071 (t!92901 (toList!554 lt!316483)) lambda!24169) e!541322)))

(declare-fun b!819384 () Bool)

(declare-fun e!541323 () Bool)

(assert (=> b!819384 (= e!541322 e!541323)))

(declare-fun res!378157 () Bool)

(assert (=> b!819384 (=> (not res!378157) (not e!541323))))

(assert (=> b!819384 (= res!378157 (dynLambda!4095 lambda!24169 (h!14182 (t!92901 (toList!554 lt!316483)))))))

(declare-fun b!819385 () Bool)

(assert (=> b!819385 (= e!541323 (forall!2071 (t!92901 (t!92901 (toList!554 lt!316483))) lambda!24169))))

(assert (= (and d!257882 (not res!378156)) b!819384))

(assert (= (and b!819384 res!378157) b!819385))

(declare-fun b_lambda!27447 () Bool)

(assert (=> (not b_lambda!27447) (not b!819384)))

(declare-fun m!1060197 () Bool)

(assert (=> b!819384 m!1060197))

(declare-fun m!1060199 () Bool)

(assert (=> b!819385 m!1060199))

(assert (=> b!819193 d!257882))

(declare-fun d!257884 () Bool)

(declare-fun res!378164 () Bool)

(declare-fun e!541326 () Bool)

(assert (=> d!257884 (=> (not res!378164) (not e!541326))))

(declare-fun size!7440 (Conc!2929) Int)

(assert (=> d!257884 (= res!378164 (= (csize!6088 (c!132782 totalInput!631)) (+ (size!7440 (left!6492 (c!132782 totalInput!631))) (size!7440 (right!6822 (c!132782 totalInput!631))))))))

(assert (=> d!257884 (= (inv!11123 (c!132782 totalInput!631)) e!541326)))

(declare-fun b!819392 () Bool)

(declare-fun res!378165 () Bool)

(assert (=> b!819392 (=> (not res!378165) (not e!541326))))

(assert (=> b!819392 (= res!378165 (and (not (= (left!6492 (c!132782 totalInput!631)) Empty!2929)) (not (= (right!6822 (c!132782 totalInput!631)) Empty!2929))))))

(declare-fun b!819393 () Bool)

(declare-fun res!378166 () Bool)

(assert (=> b!819393 (=> (not res!378166) (not e!541326))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!390 (Conc!2929) Int)

(assert (=> b!819393 (= res!378166 (= (cheight!3140 (c!132782 totalInput!631)) (+ (max!0 (height!390 (left!6492 (c!132782 totalInput!631))) (height!390 (right!6822 (c!132782 totalInput!631)))) 1)))))

(declare-fun b!819394 () Bool)

(assert (=> b!819394 (= e!541326 (<= 0 (cheight!3140 (c!132782 totalInput!631))))))

(assert (= (and d!257884 res!378164) b!819392))

(assert (= (and b!819392 res!378165) b!819393))

(assert (= (and b!819393 res!378166) b!819394))

(declare-fun m!1060201 () Bool)

(assert (=> d!257884 m!1060201))

(declare-fun m!1060203 () Bool)

(assert (=> d!257884 m!1060203))

(declare-fun m!1060205 () Bool)

(assert (=> b!819393 m!1060205))

(declare-fun m!1060207 () Bool)

(assert (=> b!819393 m!1060207))

(assert (=> b!819393 m!1060205))

(assert (=> b!819393 m!1060207))

(declare-fun m!1060209 () Bool)

(assert (=> b!819393 m!1060209))

(assert (=> b!819210 d!257884))

(declare-fun d!257886 () Bool)

(declare-fun c!132794 () Bool)

(assert (=> d!257886 (= c!132794 ((_ is Node!2929) (left!6492 (c!132782 totalInput!631))))))

(declare-fun e!541327 () Bool)

(assert (=> d!257886 (= (inv!11119 (left!6492 (c!132782 totalInput!631))) e!541327)))

(declare-fun b!819395 () Bool)

(assert (=> b!819395 (= e!541327 (inv!11123 (left!6492 (c!132782 totalInput!631))))))

(declare-fun b!819396 () Bool)

(declare-fun e!541328 () Bool)

(assert (=> b!819396 (= e!541327 e!541328)))

(declare-fun res!378167 () Bool)

(assert (=> b!819396 (= res!378167 (not ((_ is Leaf!4295) (left!6492 (c!132782 totalInput!631)))))))

(assert (=> b!819396 (=> res!378167 e!541328)))

(declare-fun b!819397 () Bool)

(assert (=> b!819397 (= e!541328 (inv!11124 (left!6492 (c!132782 totalInput!631))))))

(assert (= (and d!257886 c!132794) b!819395))

(assert (= (and d!257886 (not c!132794)) b!819396))

(assert (= (and b!819396 (not res!378167)) b!819397))

(declare-fun m!1060211 () Bool)

(assert (=> b!819395 m!1060211))

(declare-fun m!1060213 () Bool)

(assert (=> b!819397 m!1060213))

(assert (=> b!819277 d!257886))

(declare-fun d!257888 () Bool)

(declare-fun c!132795 () Bool)

(assert (=> d!257888 (= c!132795 ((_ is Node!2929) (right!6822 (c!132782 totalInput!631))))))

(declare-fun e!541329 () Bool)

(assert (=> d!257888 (= (inv!11119 (right!6822 (c!132782 totalInput!631))) e!541329)))

(declare-fun b!819398 () Bool)

(assert (=> b!819398 (= e!541329 (inv!11123 (right!6822 (c!132782 totalInput!631))))))

(declare-fun b!819399 () Bool)

(declare-fun e!541330 () Bool)

(assert (=> b!819399 (= e!541329 e!541330)))

(declare-fun res!378168 () Bool)

(assert (=> b!819399 (= res!378168 (not ((_ is Leaf!4295) (right!6822 (c!132782 totalInput!631)))))))

(assert (=> b!819399 (=> res!378168 e!541330)))

(declare-fun b!819400 () Bool)

(assert (=> b!819400 (= e!541330 (inv!11124 (right!6822 (c!132782 totalInput!631))))))

(assert (= (and d!257888 c!132795) b!819398))

(assert (= (and d!257888 (not c!132795)) b!819399))

(assert (= (and b!819399 (not res!378168)) b!819400))

(declare-fun m!1060215 () Bool)

(assert (=> b!819398 m!1060215))

(declare-fun m!1060217 () Bool)

(assert (=> b!819400 m!1060217))

(assert (=> b!819277 d!257888))

(declare-fun d!257890 () Bool)

(declare-fun size!7441 (List!8796) Int)

(assert (=> d!257890 (= (inv!11125 (xs!5618 (c!132782 totalInput!631))) (<= (size!7441 (innerList!2987 (xs!5618 (c!132782 totalInput!631)))) 2147483647))))

(declare-fun bs!228580 () Bool)

(assert (= bs!228580 d!257890))

(declare-fun m!1060219 () Bool)

(assert (=> bs!228580 m!1060219))

(assert (=> b!819278 d!257890))

(declare-fun d!257892 () Bool)

(assert (=> d!257892 (= (invariantList!188 (toList!554 lt!316491)) (noDuplicatedKeys!32 (toList!554 lt!316491)))))

(declare-fun bs!228581 () Bool)

(assert (= bs!228581 d!257892))

(declare-fun m!1060221 () Bool)

(assert (=> bs!228581 m!1060221))

(assert (=> d!257792 d!257892))

(declare-fun bs!228582 () Bool)

(declare-fun d!257894 () Bool)

(assert (= bs!228582 (and d!257894 b!819244)))

(declare-fun lambda!24204 () Int)

(assert (=> bs!228582 (= lambda!24204 lambda!24186)))

(declare-fun bs!228583 () Bool)

(assert (= bs!228583 (and d!257894 d!257880)))

(assert (=> bs!228583 (not (= lambda!24204 lambda!24201))))

(declare-fun lt!316527 () ListMap!425)

(assert (=> d!257894 (invariantList!188 (toList!554 lt!316527))))

(declare-fun e!541333 () ListMap!425)

(assert (=> d!257894 (= lt!316527 e!541333)))

(declare-fun c!132798 () Bool)

(assert (=> d!257894 (= c!132798 ((_ is Cons!8784) (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!257894 (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24204)))

(assert (=> d!257894 (= (extractMap!37 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lt!316527)))

(declare-fun b!819405 () Bool)

(declare-fun addToMapMapFromBucket!9 (List!8795 ListMap!425) ListMap!425)

(assert (=> b!819405 (= e!541333 (addToMapMapFromBucket!9 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(declare-fun b!819406 () Bool)

(assert (=> b!819406 (= e!541333 (ListMap!426 Nil!8781))))

(assert (= (and d!257894 c!132798) b!819405))

(assert (= (and d!257894 (not c!132798)) b!819406))

(declare-fun m!1060223 () Bool)

(assert (=> d!257894 m!1060223))

(declare-fun m!1060225 () Bool)

(assert (=> d!257894 m!1060225))

(declare-fun m!1060227 () Bool)

(assert (=> b!819405 m!1060227))

(assert (=> b!819405 m!1060227))

(declare-fun m!1060229 () Bool)

(assert (=> b!819405 m!1060229))

(assert (=> d!257792 d!257894))

(assert (=> d!257792 d!257878))

(assert (=> d!257792 d!257820))

(declare-fun d!257896 () Bool)

(declare-fun res!378173 () Bool)

(declare-fun e!541336 () Bool)

(assert (=> d!257896 (=> (not res!378173) (not e!541336))))

(declare-fun list!3481 (IArray!5859) List!8796)

(assert (=> d!257896 (= res!378173 (<= (size!7441 (list!3481 (xs!5618 (c!132782 totalInput!631)))) 512))))

(assert (=> d!257896 (= (inv!11124 (c!132782 totalInput!631)) e!541336)))

(declare-fun b!819411 () Bool)

(declare-fun res!378174 () Bool)

(assert (=> b!819411 (=> (not res!378174) (not e!541336))))

(assert (=> b!819411 (= res!378174 (= (csize!6089 (c!132782 totalInput!631)) (size!7441 (list!3481 (xs!5618 (c!132782 totalInput!631))))))))

(declare-fun b!819412 () Bool)

(assert (=> b!819412 (= e!541336 (and (> (csize!6089 (c!132782 totalInput!631)) 0) (<= (csize!6089 (c!132782 totalInput!631)) 512)))))

(assert (= (and d!257896 res!378173) b!819411))

(assert (= (and b!819411 res!378174) b!819412))

(declare-fun m!1060231 () Bool)

(assert (=> d!257896 m!1060231))

(assert (=> d!257896 m!1060231))

(declare-fun m!1060233 () Bool)

(assert (=> d!257896 m!1060233))

(assert (=> b!819411 m!1060231))

(assert (=> b!819411 m!1060231))

(assert (=> b!819411 m!1060233))

(assert (=> b!819212 d!257896))

(declare-fun b!819423 () Bool)

(declare-fun e!541341 () Bool)

(declare-fun furthestNullablePosition!2 ((InoxSet Context!842) Int BalanceConc!5870 Int Int) Int)

(declare-fun size!7442 (BalanceConc!5870) Int)

(assert (=> b!819423 (= e!541341 (= (_2!5962 (h!14182 (toList!554 lt!316483))) (furthestNullablePosition!2 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) totalInput!631 (size!7442 totalInput!631) (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))))))))

(declare-fun b!819424 () Bool)

(declare-fun res!378189 () Bool)

(assert (=> b!819424 (=> (not res!378189) (not e!541341))))

(assert (=> b!819424 (= res!378189 (and (>= (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))) (- 1)) (< (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))) (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))))))))

(declare-fun b!819425 () Bool)

(declare-fun res!378186 () Bool)

(assert (=> b!819425 (=> (not res!378186) (not e!541341))))

(declare-fun e!541342 () Bool)

(assert (=> b!819425 (= res!378186 e!541342)))

(declare-fun res!378187 () Bool)

(assert (=> b!819425 (=> res!378187 e!541342)))

(declare-fun nullableZipper!12 ((InoxSet Context!842)) Bool)

(assert (=> b!819425 (= res!378187 (not (nullableZipper!12 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))))))))

(declare-fun b!819426 () Bool)

(declare-fun res!378188 () Bool)

(assert (=> b!819426 (=> (not res!378188) (not e!541341))))

(assert (=> b!819426 (= res!378188 (<= (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (size!7442 totalInput!631)))))

(declare-fun d!257898 () Bool)

(declare-fun res!378185 () Bool)

(assert (=> d!257898 (=> (not res!378185) (not e!541341))))

(assert (=> d!257898 (= res!378185 (>= (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) 0))))

(assert (=> d!257898 (= (validCacheMapFurthestNullableBody!5 (h!14182 (toList!554 lt!316483)) totalInput!631) e!541341)))

(declare-fun b!819427 () Bool)

(assert (=> b!819427 (= e!541342 (= (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))) (- (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) 1)))))

(assert (= (and d!257898 res!378185) b!819426))

(assert (= (and b!819426 res!378188) b!819424))

(assert (= (and b!819424 res!378189) b!819425))

(assert (= (and b!819425 (not res!378187)) b!819427))

(assert (= (and b!819425 res!378186) b!819423))

(declare-fun m!1060235 () Bool)

(assert (=> b!819423 m!1060235))

(assert (=> b!819423 m!1060235))

(declare-fun m!1060237 () Bool)

(assert (=> b!819423 m!1060237))

(declare-fun m!1060239 () Bool)

(assert (=> b!819425 m!1060239))

(assert (=> b!819426 m!1060235))

(assert (=> bs!228562 d!257898))

(declare-fun d!257900 () Bool)

(declare-fun res!378194 () Bool)

(declare-fun e!541347 () Bool)

(assert (=> d!257900 (=> res!378194 e!541347)))

(assert (=> d!257900 (= res!378194 (or ((_ is Nil!8781) (toList!554 lt!316483)) ((_ is Nil!8781) (t!92901 (toList!554 lt!316483)))))))

(assert (=> d!257900 (= (noDuplicatedKeys!32 (toList!554 lt!316483)) e!541347)))

(declare-fun b!819432 () Bool)

(declare-fun e!541348 () Bool)

(assert (=> b!819432 (= e!541347 e!541348)))

(declare-fun res!378195 () Bool)

(assert (=> b!819432 (=> (not res!378195) (not e!541348))))

(declare-fun containsKey!28 (List!8795 tuple3!1060) Bool)

(assert (=> b!819432 (= res!378195 (not (containsKey!28 (t!92901 (toList!554 lt!316483)) (_1!5962 (h!14182 (toList!554 lt!316483))))))))

(declare-fun b!819433 () Bool)

(assert (=> b!819433 (= e!541348 (noDuplicatedKeys!32 (t!92901 (toList!554 lt!316483))))))

(assert (= (and d!257900 (not res!378194)) b!819432))

(assert (= (and b!819432 res!378195) b!819433))

(declare-fun m!1060241 () Bool)

(assert (=> b!819432 m!1060241))

(declare-fun m!1060243 () Bool)

(assert (=> b!819433 m!1060243))

(assert (=> d!257790 d!257900))

(declare-fun b!819446 () Bool)

(declare-fun e!541353 () Bool)

(declare-fun e!541354 () Bool)

(assert (=> b!819446 (= e!541353 e!541354)))

(declare-fun res!378210 () Bool)

(assert (=> b!819446 (=> (not res!378210) (not e!541354))))

(assert (=> b!819446 (= res!378210 (<= (- 1) (- (height!390 (left!6492 (c!132782 totalInput!631))) (height!390 (right!6822 (c!132782 totalInput!631))))))))

(declare-fun b!819447 () Bool)

(declare-fun res!378213 () Bool)

(assert (=> b!819447 (=> (not res!378213) (not e!541354))))

(declare-fun isEmpty!5266 (Conc!2929) Bool)

(assert (=> b!819447 (= res!378213 (not (isEmpty!5266 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun d!257902 () Bool)

(declare-fun res!378209 () Bool)

(assert (=> d!257902 (=> res!378209 e!541353)))

(assert (=> d!257902 (= res!378209 (not ((_ is Node!2929) (c!132782 totalInput!631))))))

(assert (=> d!257902 (= (isBalanced!796 (c!132782 totalInput!631)) e!541353)))

(declare-fun b!819448 () Bool)

(declare-fun res!378208 () Bool)

(assert (=> b!819448 (=> (not res!378208) (not e!541354))))

(assert (=> b!819448 (= res!378208 (<= (- (height!390 (left!6492 (c!132782 totalInput!631))) (height!390 (right!6822 (c!132782 totalInput!631)))) 1))))

(declare-fun b!819449 () Bool)

(assert (=> b!819449 (= e!541354 (not (isEmpty!5266 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun b!819450 () Bool)

(declare-fun res!378212 () Bool)

(assert (=> b!819450 (=> (not res!378212) (not e!541354))))

(assert (=> b!819450 (= res!378212 (isBalanced!796 (left!6492 (c!132782 totalInput!631))))))

(declare-fun b!819451 () Bool)

(declare-fun res!378211 () Bool)

(assert (=> b!819451 (=> (not res!378211) (not e!541354))))

(assert (=> b!819451 (= res!378211 (isBalanced!796 (right!6822 (c!132782 totalInput!631))))))

(assert (= (and d!257902 (not res!378209)) b!819446))

(assert (= (and b!819446 res!378210) b!819448))

(assert (= (and b!819448 res!378208) b!819450))

(assert (= (and b!819450 res!378212) b!819451))

(assert (= (and b!819451 res!378211) b!819447))

(assert (= (and b!819447 res!378213) b!819449))

(assert (=> b!819448 m!1060205))

(assert (=> b!819448 m!1060207))

(declare-fun m!1060245 () Bool)

(assert (=> b!819447 m!1060245))

(declare-fun m!1060247 () Bool)

(assert (=> b!819449 m!1060247))

(declare-fun m!1060249 () Bool)

(assert (=> b!819451 m!1060249))

(assert (=> b!819446 m!1060205))

(assert (=> b!819446 m!1060207))

(declare-fun m!1060251 () Bool)

(assert (=> b!819450 m!1060251))

(assert (=> d!257812 d!257902))

(declare-fun d!257904 () Bool)

(declare-fun valid!1003 (LongMapFixedSize!2502) Bool)

(assert (=> d!257904 (= (valid!1001 (v!19072 (underlying!2686 lt!316482))) (valid!1003 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))))))

(declare-fun bs!228584 () Bool)

(assert (= bs!228584 d!257904))

(declare-fun m!1060253 () Bool)

(assert (=> bs!228584 m!1060253))

(assert (=> d!257820 d!257904))

(declare-fun bs!228585 () Bool)

(declare-fun b!819452 () Bool)

(assert (= bs!228585 (and b!819452 b!819244)))

(declare-fun lambda!24205 () Int)

(assert (=> bs!228585 (= lambda!24205 lambda!24186)))

(declare-fun bs!228586 () Bool)

(assert (= bs!228586 (and b!819452 d!257880)))

(assert (=> bs!228586 (not (= lambda!24205 lambda!24201))))

(declare-fun bs!228587 () Bool)

(assert (= bs!228587 (and b!819452 d!257894)))

(assert (=> bs!228587 (= lambda!24205 lambda!24204)))

(declare-fun d!257906 () Bool)

(declare-fun res!378214 () Bool)

(declare-fun e!541355 () Bool)

(assert (=> d!257906 (=> (not res!378214) (not e!541355))))

(assert (=> d!257906 (= res!378214 (valid!1001 (v!19072 (underlying!2686 lt!316505))))))

(assert (=> d!257906 (= (valid!999 lt!316505) e!541355)))

(declare-fun res!378215 () Bool)

(assert (=> b!819452 (=> (not res!378215) (not e!541355))))

(assert (=> b!819452 (= res!378215 (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505)))) lambda!24205))))

(declare-fun b!819453 () Bool)

(assert (=> b!819453 (= e!541355 (allKeysSameHashInMap!47 (map!1802 (v!19072 (underlying!2686 lt!316505))) (hashF!3134 lt!316505)))))

(assert (= (and d!257906 res!378214) b!819452))

(assert (= (and b!819452 res!378215) b!819453))

(declare-fun m!1060255 () Bool)

(assert (=> d!257906 m!1060255))

(declare-fun m!1060257 () Bool)

(assert (=> b!819452 m!1060257))

(declare-fun m!1060259 () Bool)

(assert (=> b!819452 m!1060259))

(assert (=> b!819453 m!1060257))

(assert (=> b!819453 m!1060257))

(declare-fun m!1060261 () Bool)

(assert (=> b!819453 m!1060261))

(assert (=> b!819250 d!257906))

(declare-fun d!257908 () Bool)

(assert (=> d!257908 (= (size!7434 lt!316505) (_size!2612 lt!316505))))

(assert (=> b!819251 d!257908))

(declare-fun d!257910 () Bool)

(assert (=> d!257910 (= (invariantList!188 (toList!554 (map!1800 lt!316482))) (noDuplicatedKeys!32 (toList!554 (map!1800 lt!316482))))))

(declare-fun bs!228588 () Bool)

(assert (= bs!228588 d!257910))

(declare-fun m!1060263 () Bool)

(assert (=> bs!228588 m!1060263))

(assert (=> b!819238 d!257910))

(assert (=> b!819238 d!257792))

(declare-fun b!819458 () Bool)

(declare-fun e!541358 () Bool)

(declare-fun tp_is_empty!3745 () Bool)

(declare-fun tp!256396 () Bool)

(assert (=> b!819458 (= e!541358 (and tp_is_empty!3745 tp!256396))))

(assert (=> b!819279 (= tp!256382 e!541358)))

(assert (= (and b!819279 ((_ is Cons!8782) (innerList!2987 (xs!5618 (c!132782 totalInput!631))))) b!819458))

(declare-fun e!541360 () Bool)

(declare-fun b!819459 () Bool)

(declare-fun tp!256399 () Bool)

(declare-fun tp!256398 () Bool)

(assert (=> b!819459 (= e!541360 (and (inv!11119 (left!6492 (left!6492 (c!132782 totalInput!631)))) tp!256399 (inv!11119 (right!6822 (left!6492 (c!132782 totalInput!631)))) tp!256398))))

(declare-fun b!819461 () Bool)

(declare-fun e!541359 () Bool)

(declare-fun tp!256397 () Bool)

(assert (=> b!819461 (= e!541359 tp!256397)))

(declare-fun b!819460 () Bool)

(assert (=> b!819460 (= e!541360 (and (inv!11125 (xs!5618 (left!6492 (c!132782 totalInput!631)))) e!541359))))

(assert (=> b!819277 (= tp!256384 (and (inv!11119 (left!6492 (c!132782 totalInput!631))) e!541360))))

(assert (= (and b!819277 ((_ is Node!2929) (left!6492 (c!132782 totalInput!631)))) b!819459))

(assert (= b!819460 b!819461))

(assert (= (and b!819277 ((_ is Leaf!4295) (left!6492 (c!132782 totalInput!631)))) b!819460))

(declare-fun m!1060265 () Bool)

(assert (=> b!819459 m!1060265))

(declare-fun m!1060267 () Bool)

(assert (=> b!819459 m!1060267))

(declare-fun m!1060269 () Bool)

(assert (=> b!819460 m!1060269))

(assert (=> b!819277 m!1060079))

(declare-fun tp!256402 () Bool)

(declare-fun b!819462 () Bool)

(declare-fun e!541362 () Bool)

(declare-fun tp!256401 () Bool)

(assert (=> b!819462 (= e!541362 (and (inv!11119 (left!6492 (right!6822 (c!132782 totalInput!631)))) tp!256402 (inv!11119 (right!6822 (right!6822 (c!132782 totalInput!631)))) tp!256401))))

(declare-fun b!819464 () Bool)

(declare-fun e!541361 () Bool)

(declare-fun tp!256400 () Bool)

(assert (=> b!819464 (= e!541361 tp!256400)))

(declare-fun b!819463 () Bool)

(assert (=> b!819463 (= e!541362 (and (inv!11125 (xs!5618 (right!6822 (c!132782 totalInput!631)))) e!541361))))

(assert (=> b!819277 (= tp!256383 (and (inv!11119 (right!6822 (c!132782 totalInput!631))) e!541362))))

(assert (= (and b!819277 ((_ is Node!2929) (right!6822 (c!132782 totalInput!631)))) b!819462))

(assert (= b!819463 b!819464))

(assert (= (and b!819277 ((_ is Leaf!4295) (right!6822 (c!132782 totalInput!631)))) b!819463))

(declare-fun m!1060271 () Bool)

(assert (=> b!819462 m!1060271))

(declare-fun m!1060273 () Bool)

(assert (=> b!819462 m!1060273))

(declare-fun m!1060275 () Bool)

(assert (=> b!819463 m!1060275))

(assert (=> b!819277 m!1060081))

(declare-fun b_lambda!27449 () Bool)

(assert (= b_lambda!27447 (or b!819163 b_lambda!27449)))

(declare-fun bs!228589 () Bool)

(declare-fun d!257912 () Bool)

(assert (= bs!228589 (and d!257912 b!819163)))

(assert (=> bs!228589 (= (dynLambda!4095 lambda!24169 (h!14182 (t!92901 (toList!554 lt!316483)))) (validCacheMapFurthestNullableBody!5 (h!14182 (t!92901 (toList!554 lt!316483))) totalInput!631))))

(declare-fun m!1060277 () Bool)

(assert (=> bs!228589 m!1060277))

(assert (=> b!819384 d!257912))

(declare-fun b_lambda!27451 () Bool)

(assert (= b_lambda!27443 (or b!819239 b_lambda!27451)))

(declare-fun bs!228590 () Bool)

(declare-fun d!257914 () Bool)

(assert (= bs!228590 (and d!257914 b!819239)))

(assert (=> bs!228590 (= (dynLambda!4095 lambda!24183 (h!14182 (toList!554 (map!1800 lt!316482)))) (validCacheMapFurthestNullableBody!5 (h!14182 (toList!554 (map!1800 lt!316482))) totalInput!631))))

(declare-fun m!1060279 () Bool)

(assert (=> bs!228590 m!1060279))

(assert (=> b!819368 d!257914))

(declare-fun b_lambda!27453 () Bool)

(assert (= b_lambda!27445 (or b!819244 b_lambda!27453)))

(declare-fun bs!228591 () Bool)

(declare-fun d!257916 () Bool)

(assert (= bs!228591 (and d!257916 b!819244)))

(declare-fun noDuplicateKeys!26 (List!8795) Bool)

(assert (=> bs!228591 (= (dynLambda!4097 lambda!24186 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (noDuplicateKeys!26 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(declare-fun m!1060281 () Bool)

(assert (=> bs!228591 m!1060281))

(assert (=> b!819380 d!257916))

(check-sat (not b!819453) (not b!819459) (not d!257880) (not b!819375) (not b!819277) (not b!819433) (not b!819447) (not d!257884) (not b!819451) (not b!819400) (not b_lambda!27429) (not bs!228590) (not d!257910) (not b_lambda!27451) (not d!257874) (not bs!228591) (not b!819425) (not b!819463) (not b!819374) (not b!819464) (not b_lambda!27449) (not b!819462) (not b!819397) (not d!257906) (not b!819398) (not d!257904) (not b!819460) (not d!257892) (not b!819448) (not b!819461) (not d!257896) (not d!257878) (not b!819381) (not b_lambda!27453) (not d!257890) (not b!819452) tp_is_empty!3745 (not b!819385) (not b!819411) (not d!257894) (not b!819369) (not b!819395) (not b!819458) (not bs!228589) (not b!819405) (not b!819450) (not b!819393) (not b!819426) (not b!819449) (not b!819432) (not b!819446) (not b!819423))
(check-sat)
(get-model)

(declare-fun d!257960 () Bool)

(declare-fun lambda!24208 () Int)

(declare-fun exists!88 ((InoxSet Context!842) Int) Bool)

(assert (=> d!257960 (= (nullableZipper!12 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483))))) (exists!88 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) lambda!24208))))

(declare-fun bs!228595 () Bool)

(assert (= bs!228595 d!257960))

(declare-fun m!1060355 () Bool)

(assert (=> bs!228595 m!1060355))

(assert (=> b!819425 d!257960))

(declare-fun d!257962 () Bool)

(declare-fun res!378251 () Bool)

(declare-fun e!541407 () Bool)

(assert (=> d!257962 (=> res!378251 e!541407)))

(assert (=> d!257962 (= res!378251 (not ((_ is Cons!8781) (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(assert (=> d!257962 (= (noDuplicateKeys!26 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) e!541407)))

(declare-fun b!819530 () Bool)

(declare-fun e!541408 () Bool)

(assert (=> b!819530 (= e!541407 e!541408)))

(declare-fun res!378252 () Bool)

(assert (=> b!819530 (=> (not res!378252) (not e!541408))))

(declare-fun containsKey!30 (List!8795 tuple3!1060) Bool)

(assert (=> b!819530 (= res!378252 (not (containsKey!30 (t!92901 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (_1!5962 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))))

(declare-fun b!819531 () Bool)

(assert (=> b!819531 (= e!541408 (noDuplicateKeys!26 (t!92901 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(assert (= (and d!257962 (not res!378251)) b!819530))

(assert (= (and b!819530 res!378252) b!819531))

(declare-fun m!1060357 () Bool)

(assert (=> b!819530 m!1060357))

(declare-fun m!1060359 () Bool)

(assert (=> b!819531 m!1060359))

(assert (=> bs!228591 d!257962))

(declare-fun bs!228596 () Bool)

(declare-fun d!257964 () Bool)

(assert (= bs!228596 (and d!257964 b!819244)))

(declare-fun lambda!24209 () Int)

(assert (=> bs!228596 (not (= lambda!24209 lambda!24186))))

(declare-fun bs!228597 () Bool)

(assert (= bs!228597 (and d!257964 d!257880)))

(assert (=> bs!228597 (= (= (hashF!3134 lt!316505) (hashF!3134 lt!316482)) (= lambda!24209 lambda!24201))))

(declare-fun bs!228598 () Bool)

(assert (= bs!228598 (and d!257964 d!257894)))

(assert (=> bs!228598 (not (= lambda!24209 lambda!24204))))

(declare-fun bs!228599 () Bool)

(assert (= bs!228599 (and d!257964 b!819452)))

(assert (=> bs!228599 (not (= lambda!24209 lambda!24205))))

(assert (=> d!257964 true))

(assert (=> d!257964 (= (allKeysSameHashInMap!47 (map!1802 (v!19072 (underlying!2686 lt!316505))) (hashF!3134 lt!316505)) (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505)))) lambda!24209))))

(declare-fun bs!228600 () Bool)

(assert (= bs!228600 d!257964))

(declare-fun m!1060361 () Bool)

(assert (=> bs!228600 m!1060361))

(assert (=> b!819453 d!257964))

(declare-fun d!257966 () Bool)

(assert (=> d!257966 (= (map!1802 (v!19072 (underlying!2686 lt!316505))) (map!1804 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316505))))))))

(declare-fun bs!228601 () Bool)

(assert (= bs!228601 d!257966))

(declare-fun m!1060363 () Bool)

(assert (=> bs!228601 m!1060363))

(assert (=> b!819453 d!257966))

(declare-fun d!257968 () Bool)

(assert (=> d!257968 (= (max!0 (height!390 (left!6492 (c!132782 totalInput!631))) (height!390 (right!6822 (c!132782 totalInput!631)))) (ite (< (height!390 (left!6492 (c!132782 totalInput!631))) (height!390 (right!6822 (c!132782 totalInput!631)))) (height!390 (right!6822 (c!132782 totalInput!631))) (height!390 (left!6492 (c!132782 totalInput!631)))))))

(assert (=> b!819393 d!257968))

(declare-fun d!257970 () Bool)

(assert (=> d!257970 (= (height!390 (left!6492 (c!132782 totalInput!631))) (ite ((_ is Empty!2929) (left!6492 (c!132782 totalInput!631))) 0 (ite ((_ is Leaf!4295) (left!6492 (c!132782 totalInput!631))) 1 (cheight!3140 (left!6492 (c!132782 totalInput!631))))))))

(assert (=> b!819393 d!257970))

(declare-fun d!257972 () Bool)

(assert (=> d!257972 (= (height!390 (right!6822 (c!132782 totalInput!631))) (ite ((_ is Empty!2929) (right!6822 (c!132782 totalInput!631))) 0 (ite ((_ is Leaf!4295) (right!6822 (c!132782 totalInput!631))) 1 (cheight!3140 (right!6822 (c!132782 totalInput!631))))))))

(assert (=> b!819393 d!257972))

(declare-fun b!819572 () Bool)

(declare-fun e!541433 () Int)

(assert (=> b!819572 (= e!541433 (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))))))

(declare-fun b!819573 () Bool)

(declare-fun e!541434 () Bool)

(declare-fun lostCauseZipper!2 ((InoxSet Context!842)) Bool)

(assert (=> b!819573 (= e!541434 (lostCauseZipper!2 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483))))))))

(declare-fun d!257974 () Bool)

(declare-fun lt!316616 () Int)

(assert (=> d!257974 (and (>= lt!316616 (- 1)) (< lt!316616 (size!7442 totalInput!631)) (>= lt!316616 (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483))))) (or (= lt!316616 (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483))))) (>= lt!316616 (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))))))))

(assert (=> d!257974 (= lt!316616 e!541433)))

(declare-fun c!132823 () Bool)

(assert (=> d!257974 (= c!132823 e!541434)))

(declare-fun res!378281 () Bool)

(assert (=> d!257974 (=> res!378281 e!541434)))

(assert (=> d!257974 (= res!378281 (= (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (size!7442 totalInput!631)))))

(assert (=> d!257974 (and (>= (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) 0) (<= (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (size!7442 totalInput!631)))))

(assert (=> d!257974 (= (furthestNullablePosition!2 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) totalInput!631 (size!7442 totalInput!631) (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483))))) lt!316616)))

(declare-fun e!541432 () Int)

(declare-fun lt!316617 () (InoxSet Context!842))

(declare-fun b!819574 () Bool)

(assert (=> b!819574 (= e!541433 (furthestNullablePosition!2 lt!316617 (+ (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) 1) totalInput!631 (size!7442 totalInput!631) e!541432))))

(declare-fun derivationStepZipper!8 ((InoxSet Context!842) C!4620) (InoxSet Context!842))

(declare-fun apply!1799 (BalanceConc!5870 Int) C!4620)

(assert (=> b!819574 (= lt!316617 (derivationStepZipper!8 (_1!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))) (apply!1799 totalInput!631 (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))))))))

(declare-fun c!132822 () Bool)

(assert (=> b!819574 (= c!132822 (nullableZipper!12 lt!316617))))

(declare-fun b!819575 () Bool)

(assert (=> b!819575 (= e!541432 (_2!5961 (_1!5962 (h!14182 (toList!554 lt!316483)))))))

(declare-fun b!819576 () Bool)

(assert (=> b!819576 (= e!541432 (_3!821 (_1!5962 (h!14182 (toList!554 lt!316483)))))))

(assert (= (and d!257974 (not res!378281)) b!819573))

(assert (= (and d!257974 c!132823) b!819572))

(assert (= (and d!257974 (not c!132823)) b!819574))

(assert (= (and b!819574 c!132822) b!819575))

(assert (= (and b!819574 (not c!132822)) b!819576))

(declare-fun m!1060419 () Bool)

(assert (=> b!819573 m!1060419))

(assert (=> b!819574 m!1060235))

(declare-fun m!1060421 () Bool)

(assert (=> b!819574 m!1060421))

(declare-fun m!1060423 () Bool)

(assert (=> b!819574 m!1060423))

(assert (=> b!819574 m!1060423))

(declare-fun m!1060425 () Bool)

(assert (=> b!819574 m!1060425))

(declare-fun m!1060427 () Bool)

(assert (=> b!819574 m!1060427))

(assert (=> b!819423 d!257974))

(declare-fun d!257988 () Bool)

(declare-fun lt!316620 () Int)

(declare-fun list!3483 (BalanceConc!5870) List!8796)

(assert (=> d!257988 (= lt!316620 (size!7441 (list!3483 totalInput!631)))))

(assert (=> d!257988 (= lt!316620 (size!7440 (c!132782 totalInput!631)))))

(assert (=> d!257988 (= (size!7442 totalInput!631) lt!316620)))

(declare-fun bs!228603 () Bool)

(assert (= bs!228603 d!257988))

(declare-fun m!1060429 () Bool)

(assert (=> bs!228603 m!1060429))

(assert (=> bs!228603 m!1060429))

(declare-fun m!1060431 () Bool)

(assert (=> bs!228603 m!1060431))

(declare-fun m!1060433 () Bool)

(assert (=> bs!228603 m!1060433))

(assert (=> b!819423 d!257988))

(declare-fun d!257990 () Bool)

(declare-fun lt!316623 () Int)

(assert (=> d!257990 (>= lt!316623 0)))

(declare-fun e!541437 () Int)

(assert (=> d!257990 (= lt!316623 e!541437)))

(declare-fun c!132826 () Bool)

(assert (=> d!257990 (= c!132826 ((_ is Nil!8782) (list!3481 (xs!5618 (c!132782 totalInput!631)))))))

(assert (=> d!257990 (= (size!7441 (list!3481 (xs!5618 (c!132782 totalInput!631)))) lt!316623)))

(declare-fun b!819581 () Bool)

(assert (=> b!819581 (= e!541437 0)))

(declare-fun b!819582 () Bool)

(assert (=> b!819582 (= e!541437 (+ 1 (size!7441 (t!92902 (list!3481 (xs!5618 (c!132782 totalInput!631)))))))))

(assert (= (and d!257990 c!132826) b!819581))

(assert (= (and d!257990 (not c!132826)) b!819582))

(declare-fun m!1060435 () Bool)

(assert (=> b!819582 m!1060435))

(assert (=> b!819411 d!257990))

(declare-fun d!257992 () Bool)

(assert (=> d!257992 (= (list!3481 (xs!5618 (c!132782 totalInput!631))) (innerList!2987 (xs!5618 (c!132782 totalInput!631))))))

(assert (=> b!819411 d!257992))

(declare-fun d!257994 () Bool)

(declare-fun res!378282 () Bool)

(declare-fun e!541438 () Bool)

(assert (=> d!257994 (=> res!378282 e!541438)))

(assert (=> d!257994 (= res!378282 ((_ is Nil!8784) (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505))))))))

(assert (=> d!257994 (= (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505)))) lambda!24205) e!541438)))

(declare-fun b!819583 () Bool)

(declare-fun e!541439 () Bool)

(assert (=> b!819583 (= e!541438 e!541439)))

(declare-fun res!378283 () Bool)

(assert (=> b!819583 (=> (not res!378283) (not e!541439))))

(assert (=> b!819583 (= res!378283 (dynLambda!4097 lambda!24205 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505)))))))))

(declare-fun b!819584 () Bool)

(assert (=> b!819584 (= e!541439 (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505))))) lambda!24205))))

(assert (= (and d!257994 (not res!378282)) b!819583))

(assert (= (and b!819583 res!378283) b!819584))

(declare-fun b_lambda!27465 () Bool)

(assert (=> (not b_lambda!27465) (not b!819583)))

(declare-fun m!1060437 () Bool)

(assert (=> b!819583 m!1060437))

(declare-fun m!1060439 () Bool)

(assert (=> b!819584 m!1060439))

(assert (=> b!819452 d!257994))

(assert (=> b!819452 d!257966))

(declare-fun d!257996 () Bool)

(declare-fun res!378284 () Bool)

(declare-fun e!541440 () Bool)

(assert (=> d!257996 (=> (not res!378284) (not e!541440))))

(assert (=> d!257996 (= res!378284 (<= (size!7441 (list!3481 (xs!5618 (left!6492 (c!132782 totalInput!631))))) 512))))

(assert (=> d!257996 (= (inv!11124 (left!6492 (c!132782 totalInput!631))) e!541440)))

(declare-fun b!819585 () Bool)

(declare-fun res!378285 () Bool)

(assert (=> b!819585 (=> (not res!378285) (not e!541440))))

(assert (=> b!819585 (= res!378285 (= (csize!6089 (left!6492 (c!132782 totalInput!631))) (size!7441 (list!3481 (xs!5618 (left!6492 (c!132782 totalInput!631)))))))))

(declare-fun b!819586 () Bool)

(assert (=> b!819586 (= e!541440 (and (> (csize!6089 (left!6492 (c!132782 totalInput!631))) 0) (<= (csize!6089 (left!6492 (c!132782 totalInput!631))) 512)))))

(assert (= (and d!257996 res!378284) b!819585))

(assert (= (and b!819585 res!378285) b!819586))

(declare-fun m!1060441 () Bool)

(assert (=> d!257996 m!1060441))

(assert (=> d!257996 m!1060441))

(declare-fun m!1060443 () Bool)

(assert (=> d!257996 m!1060443))

(assert (=> b!819585 m!1060441))

(assert (=> b!819585 m!1060441))

(assert (=> b!819585 m!1060443))

(assert (=> b!819397 d!257996))

(declare-fun b!819587 () Bool)

(declare-fun e!541441 () Bool)

(declare-fun e!541442 () Bool)

(assert (=> b!819587 (= e!541441 e!541442)))

(declare-fun res!378288 () Bool)

(assert (=> b!819587 (=> (not res!378288) (not e!541442))))

(assert (=> b!819587 (= res!378288 (<= (- 1) (- (height!390 (left!6492 (right!6822 (c!132782 totalInput!631)))) (height!390 (right!6822 (right!6822 (c!132782 totalInput!631)))))))))

(declare-fun b!819588 () Bool)

(declare-fun res!378291 () Bool)

(assert (=> b!819588 (=> (not res!378291) (not e!541442))))

(assert (=> b!819588 (= res!378291 (not (isEmpty!5266 (left!6492 (right!6822 (c!132782 totalInput!631))))))))

(declare-fun d!257998 () Bool)

(declare-fun res!378287 () Bool)

(assert (=> d!257998 (=> res!378287 e!541441)))

(assert (=> d!257998 (= res!378287 (not ((_ is Node!2929) (right!6822 (c!132782 totalInput!631)))))))

(assert (=> d!257998 (= (isBalanced!796 (right!6822 (c!132782 totalInput!631))) e!541441)))

(declare-fun b!819589 () Bool)

(declare-fun res!378286 () Bool)

(assert (=> b!819589 (=> (not res!378286) (not e!541442))))

(assert (=> b!819589 (= res!378286 (<= (- (height!390 (left!6492 (right!6822 (c!132782 totalInput!631)))) (height!390 (right!6822 (right!6822 (c!132782 totalInput!631))))) 1))))

(declare-fun b!819590 () Bool)

(assert (=> b!819590 (= e!541442 (not (isEmpty!5266 (right!6822 (right!6822 (c!132782 totalInput!631))))))))

(declare-fun b!819591 () Bool)

(declare-fun res!378290 () Bool)

(assert (=> b!819591 (=> (not res!378290) (not e!541442))))

(assert (=> b!819591 (= res!378290 (isBalanced!796 (left!6492 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun b!819592 () Bool)

(declare-fun res!378289 () Bool)

(assert (=> b!819592 (=> (not res!378289) (not e!541442))))

(assert (=> b!819592 (= res!378289 (isBalanced!796 (right!6822 (right!6822 (c!132782 totalInput!631)))))))

(assert (= (and d!257998 (not res!378287)) b!819587))

(assert (= (and b!819587 res!378288) b!819589))

(assert (= (and b!819589 res!378286) b!819591))

(assert (= (and b!819591 res!378290) b!819592))

(assert (= (and b!819592 res!378289) b!819588))

(assert (= (and b!819588 res!378291) b!819590))

(declare-fun m!1060445 () Bool)

(assert (=> b!819589 m!1060445))

(declare-fun m!1060447 () Bool)

(assert (=> b!819589 m!1060447))

(declare-fun m!1060449 () Bool)

(assert (=> b!819588 m!1060449))

(declare-fun m!1060451 () Bool)

(assert (=> b!819590 m!1060451))

(declare-fun m!1060453 () Bool)

(assert (=> b!819592 m!1060453))

(assert (=> b!819587 m!1060445))

(assert (=> b!819587 m!1060447))

(declare-fun m!1060455 () Bool)

(assert (=> b!819591 m!1060455))

(assert (=> b!819451 d!257998))

(declare-fun d!258000 () Bool)

(declare-fun lt!316626 () Int)

(declare-fun list!3484 (Conc!2929) List!8796)

(assert (=> d!258000 (= lt!316626 (size!7441 (list!3484 (left!6492 (c!132782 totalInput!631)))))))

(assert (=> d!258000 (= lt!316626 (ite ((_ is Empty!2929) (left!6492 (c!132782 totalInput!631))) 0 (ite ((_ is Leaf!4295) (left!6492 (c!132782 totalInput!631))) (csize!6089 (left!6492 (c!132782 totalInput!631))) (csize!6088 (left!6492 (c!132782 totalInput!631))))))))

(assert (=> d!258000 (= (size!7440 (left!6492 (c!132782 totalInput!631))) lt!316626)))

(declare-fun bs!228604 () Bool)

(assert (= bs!228604 d!258000))

(declare-fun m!1060457 () Bool)

(assert (=> bs!228604 m!1060457))

(assert (=> bs!228604 m!1060457))

(declare-fun m!1060459 () Bool)

(assert (=> bs!228604 m!1060459))

(assert (=> d!257884 d!258000))

(declare-fun d!258002 () Bool)

(declare-fun lt!316627 () Int)

(assert (=> d!258002 (= lt!316627 (size!7441 (list!3484 (right!6822 (c!132782 totalInput!631)))))))

(assert (=> d!258002 (= lt!316627 (ite ((_ is Empty!2929) (right!6822 (c!132782 totalInput!631))) 0 (ite ((_ is Leaf!4295) (right!6822 (c!132782 totalInput!631))) (csize!6089 (right!6822 (c!132782 totalInput!631))) (csize!6088 (right!6822 (c!132782 totalInput!631))))))))

(assert (=> d!258002 (= (size!7440 (right!6822 (c!132782 totalInput!631))) lt!316627)))

(declare-fun bs!228605 () Bool)

(assert (= bs!228605 d!258002))

(declare-fun m!1060461 () Bool)

(assert (=> bs!228605 m!1060461))

(assert (=> bs!228605 m!1060461))

(declare-fun m!1060463 () Bool)

(assert (=> bs!228605 m!1060463))

(assert (=> d!257884 d!258002))

(assert (=> b!819277 d!257886))

(assert (=> b!819277 d!257888))

(declare-fun d!258004 () Bool)

(declare-fun res!378292 () Bool)

(declare-fun e!541443 () Bool)

(assert (=> d!258004 (=> res!378292 e!541443)))

(assert (=> d!258004 (= res!378292 (or ((_ is Nil!8781) (toList!554 (map!1800 lt!316482))) ((_ is Nil!8781) (t!92901 (toList!554 (map!1800 lt!316482))))))))

(assert (=> d!258004 (= (noDuplicatedKeys!32 (toList!554 (map!1800 lt!316482))) e!541443)))

(declare-fun b!819593 () Bool)

(declare-fun e!541444 () Bool)

(assert (=> b!819593 (= e!541443 e!541444)))

(declare-fun res!378293 () Bool)

(assert (=> b!819593 (=> (not res!378293) (not e!541444))))

(assert (=> b!819593 (= res!378293 (not (containsKey!28 (t!92901 (toList!554 (map!1800 lt!316482))) (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482)))))))))

(declare-fun b!819594 () Bool)

(assert (=> b!819594 (= e!541444 (noDuplicatedKeys!32 (t!92901 (toList!554 (map!1800 lt!316482)))))))

(assert (= (and d!258004 (not res!378292)) b!819593))

(assert (= (and b!819593 res!378293) b!819594))

(declare-fun m!1060465 () Bool)

(assert (=> b!819593 m!1060465))

(declare-fun m!1060467 () Bool)

(assert (=> b!819594 m!1060467))

(assert (=> d!257910 d!258004))

(declare-fun b!819595 () Bool)

(declare-fun e!541445 () Bool)

(declare-fun e!541446 () Bool)

(assert (=> b!819595 (= e!541445 e!541446)))

(declare-fun res!378296 () Bool)

(assert (=> b!819595 (=> (not res!378296) (not e!541446))))

(assert (=> b!819595 (= res!378296 (<= (- 1) (- (height!390 (left!6492 (left!6492 (c!132782 totalInput!631)))) (height!390 (right!6822 (left!6492 (c!132782 totalInput!631)))))))))

(declare-fun b!819596 () Bool)

(declare-fun res!378299 () Bool)

(assert (=> b!819596 (=> (not res!378299) (not e!541446))))

(assert (=> b!819596 (= res!378299 (not (isEmpty!5266 (left!6492 (left!6492 (c!132782 totalInput!631))))))))

(declare-fun d!258006 () Bool)

(declare-fun res!378295 () Bool)

(assert (=> d!258006 (=> res!378295 e!541445)))

(assert (=> d!258006 (= res!378295 (not ((_ is Node!2929) (left!6492 (c!132782 totalInput!631)))))))

(assert (=> d!258006 (= (isBalanced!796 (left!6492 (c!132782 totalInput!631))) e!541445)))

(declare-fun b!819597 () Bool)

(declare-fun res!378294 () Bool)

(assert (=> b!819597 (=> (not res!378294) (not e!541446))))

(assert (=> b!819597 (= res!378294 (<= (- (height!390 (left!6492 (left!6492 (c!132782 totalInput!631)))) (height!390 (right!6822 (left!6492 (c!132782 totalInput!631))))) 1))))

(declare-fun b!819598 () Bool)

(assert (=> b!819598 (= e!541446 (not (isEmpty!5266 (right!6822 (left!6492 (c!132782 totalInput!631))))))))

(declare-fun b!819599 () Bool)

(declare-fun res!378298 () Bool)

(assert (=> b!819599 (=> (not res!378298) (not e!541446))))

(assert (=> b!819599 (= res!378298 (isBalanced!796 (left!6492 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun b!819600 () Bool)

(declare-fun res!378297 () Bool)

(assert (=> b!819600 (=> (not res!378297) (not e!541446))))

(assert (=> b!819600 (= res!378297 (isBalanced!796 (right!6822 (left!6492 (c!132782 totalInput!631)))))))

(assert (= (and d!258006 (not res!378295)) b!819595))

(assert (= (and b!819595 res!378296) b!819597))

(assert (= (and b!819597 res!378294) b!819599))

(assert (= (and b!819599 res!378298) b!819600))

(assert (= (and b!819600 res!378297) b!819596))

(assert (= (and b!819596 res!378299) b!819598))

(declare-fun m!1060469 () Bool)

(assert (=> b!819597 m!1060469))

(declare-fun m!1060471 () Bool)

(assert (=> b!819597 m!1060471))

(declare-fun m!1060473 () Bool)

(assert (=> b!819596 m!1060473))

(declare-fun m!1060475 () Bool)

(assert (=> b!819598 m!1060475))

(declare-fun m!1060477 () Bool)

(assert (=> b!819600 m!1060477))

(assert (=> b!819595 m!1060469))

(assert (=> b!819595 m!1060471))

(declare-fun m!1060479 () Bool)

(assert (=> b!819599 m!1060479))

(assert (=> b!819450 d!258006))

(declare-fun d!258008 () Bool)

(declare-fun res!378300 () Bool)

(declare-fun e!541447 () Bool)

(assert (=> d!258008 (=> (not res!378300) (not e!541447))))

(assert (=> d!258008 (= res!378300 (= (csize!6088 (left!6492 (c!132782 totalInput!631))) (+ (size!7440 (left!6492 (left!6492 (c!132782 totalInput!631)))) (size!7440 (right!6822 (left!6492 (c!132782 totalInput!631)))))))))

(assert (=> d!258008 (= (inv!11123 (left!6492 (c!132782 totalInput!631))) e!541447)))

(declare-fun b!819601 () Bool)

(declare-fun res!378301 () Bool)

(assert (=> b!819601 (=> (not res!378301) (not e!541447))))

(assert (=> b!819601 (= res!378301 (and (not (= (left!6492 (left!6492 (c!132782 totalInput!631))) Empty!2929)) (not (= (right!6822 (left!6492 (c!132782 totalInput!631))) Empty!2929))))))

(declare-fun b!819602 () Bool)

(declare-fun res!378302 () Bool)

(assert (=> b!819602 (=> (not res!378302) (not e!541447))))

(assert (=> b!819602 (= res!378302 (= (cheight!3140 (left!6492 (c!132782 totalInput!631))) (+ (max!0 (height!390 (left!6492 (left!6492 (c!132782 totalInput!631)))) (height!390 (right!6822 (left!6492 (c!132782 totalInput!631))))) 1)))))

(declare-fun b!819603 () Bool)

(assert (=> b!819603 (= e!541447 (<= 0 (cheight!3140 (left!6492 (c!132782 totalInput!631)))))))

(assert (= (and d!258008 res!378300) b!819601))

(assert (= (and b!819601 res!378301) b!819602))

(assert (= (and b!819602 res!378302) b!819603))

(declare-fun m!1060481 () Bool)

(assert (=> d!258008 m!1060481))

(declare-fun m!1060483 () Bool)

(assert (=> d!258008 m!1060483))

(assert (=> b!819602 m!1060469))

(assert (=> b!819602 m!1060471))

(assert (=> b!819602 m!1060469))

(assert (=> b!819602 m!1060471))

(declare-fun m!1060485 () Bool)

(assert (=> b!819602 m!1060485))

(assert (=> b!819395 d!258008))

(declare-fun d!258010 () Bool)

(declare-fun lt!316630 () Bool)

(declare-fun isEmpty!5267 (List!8796) Bool)

(assert (=> d!258010 (= lt!316630 (isEmpty!5267 (list!3484 (right!6822 (c!132782 totalInput!631)))))))

(assert (=> d!258010 (= lt!316630 (= (size!7440 (right!6822 (c!132782 totalInput!631))) 0))))

(assert (=> d!258010 (= (isEmpty!5266 (right!6822 (c!132782 totalInput!631))) lt!316630)))

(declare-fun bs!228606 () Bool)

(assert (= bs!228606 d!258010))

(assert (=> bs!228606 m!1060461))

(assert (=> bs!228606 m!1060461))

(declare-fun m!1060487 () Bool)

(assert (=> bs!228606 m!1060487))

(assert (=> bs!228606 m!1060203))

(assert (=> b!819449 d!258010))

(declare-fun d!258012 () Bool)

(declare-fun lt!316631 () Int)

(assert (=> d!258012 (>= lt!316631 0)))

(declare-fun e!541448 () Int)

(assert (=> d!258012 (= lt!316631 e!541448)))

(declare-fun c!132827 () Bool)

(assert (=> d!258012 (= c!132827 ((_ is Nil!8782) (innerList!2987 (xs!5618 (c!132782 totalInput!631)))))))

(assert (=> d!258012 (= (size!7441 (innerList!2987 (xs!5618 (c!132782 totalInput!631)))) lt!316631)))

(declare-fun b!819604 () Bool)

(assert (=> b!819604 (= e!541448 0)))

(declare-fun b!819605 () Bool)

(assert (=> b!819605 (= e!541448 (+ 1 (size!7441 (t!92902 (innerList!2987 (xs!5618 (c!132782 totalInput!631)))))))))

(assert (= (and d!258012 c!132827) b!819604))

(assert (= (and d!258012 (not c!132827)) b!819605))

(declare-fun m!1060489 () Bool)

(assert (=> b!819605 m!1060489))

(assert (=> d!257890 d!258012))

(declare-fun d!258014 () Bool)

(assert (=> d!258014 (= (inv!11125 (xs!5618 (right!6822 (c!132782 totalInput!631)))) (<= (size!7441 (innerList!2987 (xs!5618 (right!6822 (c!132782 totalInput!631))))) 2147483647))))

(declare-fun bs!228607 () Bool)

(assert (= bs!228607 d!258014))

(declare-fun m!1060491 () Bool)

(assert (=> bs!228607 m!1060491))

(assert (=> b!819463 d!258014))

(declare-fun d!258016 () Bool)

(declare-fun getCurrentListMap!6 (array!4405 array!4407 (_ BitVec 32) (_ BitVec 32) List!8795 List!8795 (_ BitVec 32) Int) ListLongMap!117)

(assert (=> d!258016 (= (map!1804 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (getCurrentListMap!6 (_keys!1545 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (_values!1530 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (mask!3152 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (extraKeys!1498 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (zeroValue!1508 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (minValue!1508 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) #b00000000000000000000000000000000 (defaultEntry!1607 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun bs!228608 () Bool)

(assert (= bs!228608 d!258016))

(declare-fun m!1060493 () Bool)

(assert (=> bs!228608 m!1060493))

(assert (=> d!257878 d!258016))

(declare-fun b!819606 () Bool)

(declare-fun e!541449 () Bool)

(assert (=> b!819606 (= e!541449 (= (_2!5962 (h!14182 (toList!554 (map!1800 lt!316482)))) (furthestNullablePosition!2 (_1!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) (_2!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) totalInput!631 (size!7442 totalInput!631) (_3!821 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))))))))

(declare-fun b!819607 () Bool)

(declare-fun res!378307 () Bool)

(assert (=> b!819607 (=> (not res!378307) (not e!541449))))

(assert (=> b!819607 (= res!378307 (and (>= (_3!821 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) (- 1)) (< (_3!821 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) (_2!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))))))))

(declare-fun b!819608 () Bool)

(declare-fun res!378304 () Bool)

(assert (=> b!819608 (=> (not res!378304) (not e!541449))))

(declare-fun e!541450 () Bool)

(assert (=> b!819608 (= res!378304 e!541450)))

(declare-fun res!378305 () Bool)

(assert (=> b!819608 (=> res!378305 e!541450)))

(assert (=> b!819608 (= res!378305 (not (nullableZipper!12 (_1!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))))))))

(declare-fun b!819609 () Bool)

(declare-fun res!378306 () Bool)

(assert (=> b!819609 (=> (not res!378306) (not e!541449))))

(assert (=> b!819609 (= res!378306 (<= (_2!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) (size!7442 totalInput!631)))))

(declare-fun d!258018 () Bool)

(declare-fun res!378303 () Bool)

(assert (=> d!258018 (=> (not res!378303) (not e!541449))))

(assert (=> d!258018 (= res!378303 (>= (_2!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) 0))))

(assert (=> d!258018 (= (validCacheMapFurthestNullableBody!5 (h!14182 (toList!554 (map!1800 lt!316482))) totalInput!631) e!541449)))

(declare-fun b!819610 () Bool)

(assert (=> b!819610 (= e!541450 (= (_3!821 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) (- (_2!5961 (_1!5962 (h!14182 (toList!554 (map!1800 lt!316482))))) 1)))))

(assert (= (and d!258018 res!378303) b!819609))

(assert (= (and b!819609 res!378306) b!819607))

(assert (= (and b!819607 res!378307) b!819608))

(assert (= (and b!819608 (not res!378305)) b!819610))

(assert (= (and b!819608 res!378304) b!819606))

(assert (=> b!819606 m!1060235))

(assert (=> b!819606 m!1060235))

(declare-fun m!1060495 () Bool)

(assert (=> b!819606 m!1060495))

(declare-fun m!1060497 () Bool)

(assert (=> b!819608 m!1060497))

(assert (=> b!819609 m!1060235))

(assert (=> bs!228590 d!258018))

(assert (=> b!819448 d!257970))

(assert (=> b!819448 d!257972))

(declare-fun b!819623 () Bool)

(declare-datatypes ((Unit!13294 0))(
  ( (Unit!13295) )
))
(declare-fun e!541459 () Unit!13294)

(declare-fun Unit!13296 () Unit!13294)

(assert (=> b!819623 (= e!541459 Unit!13296)))

(declare-fun b!819624 () Bool)

(declare-fun Unit!13297 () Unit!13294)

(assert (=> b!819624 (= e!541459 Unit!13297)))

(declare-fun lt!316680 () tuple2!10284)

(declare-fun lt!316689 () LongMapFixedSize!2502)

(declare-fun head!1432 (List!8798) tuple2!10284)

(assert (=> b!819624 (= lt!316680 (head!1432 (toList!556 (map!1804 lt!316689))))))

(declare-fun lt!316696 () array!4405)

(assert (=> b!819624 (= lt!316696 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!316683 () (_ BitVec 32))

(assert (=> b!819624 (= lt!316683 #b00000000000000000000000000000000)))

(declare-fun lt!316699 () Unit!13294)

(declare-fun lt!316690 () List!8795)

(declare-fun lemmaKeyInListMapIsInArray!5 (array!4405 array!4407 (_ BitVec 32) (_ BitVec 32) List!8795 List!8795 (_ BitVec 64) Int) Unit!13294)

(assert (=> b!819624 (= lt!316699 (lemmaKeyInListMapIsInArray!5 lt!316696 (array!4408 ((as const (Array (_ BitVec 32) List!8795)) lt!316690) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!19 #b00000000000000000000000000000001) lt!316683 lt!316690 lt!316690 (_1!5964 lt!316680) lambda!24191))))

(declare-fun c!132833 () Bool)

(assert (=> b!819624 (= c!132833 (and (not (= (_1!5964 lt!316680) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!5964 lt!316680) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!541457 () Bool)

(assert (=> b!819624 e!541457))

(declare-fun lt!316682 () Unit!13294)

(assert (=> b!819624 (= lt!316682 lt!316699)))

(declare-fun lt!316698 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!4405 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!819624 (= lt!316698 (arrayScanForKey!0 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!5964 lt!316680) #b00000000000000000000000000000000))))

(assert (=> b!819624 false))

(declare-fun b!819625 () Bool)

(assert (=> b!819625 (= e!541457 (ite (= (_1!5964 lt!316680) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!316683 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!316683 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!819626 () Bool)

(declare-fun res!378312 () Bool)

(declare-fun e!541458 () Bool)

(assert (=> b!819626 (=> (not res!378312) (not e!541458))))

(declare-fun lt!316684 () LongMapFixedSize!2502)

(assert (=> b!819626 (= res!378312 (= (mask!3152 lt!316684) (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(declare-fun d!258020 () Bool)

(assert (=> d!258020 e!541458))

(declare-fun res!378313 () Bool)

(assert (=> d!258020 (=> (not res!378313) (not e!541458))))

(assert (=> d!258020 (= res!378313 (valid!1003 lt!316684))))

(assert (=> d!258020 (= lt!316684 lt!316689)))

(declare-fun lt!316695 () Unit!13294)

(assert (=> d!258020 (= lt!316695 e!541459)))

(declare-fun c!132832 () Bool)

(assert (=> d!258020 (= c!132832 (not (= (map!1804 lt!316689) (ListLongMap!118 Nil!8784))))))

(declare-fun lt!316694 () Unit!13294)

(declare-fun lt!316702 () Unit!13294)

(assert (=> d!258020 (= lt!316694 lt!316702)))

(declare-fun lt!316688 () array!4405)

(declare-fun lt!316693 () (_ BitVec 32))

(declare-datatypes ((List!8799 0))(
  ( (Nil!8785) (Cons!8785 (h!14186 (_ BitVec 64)) (t!92913 List!8799)) )
))
(declare-fun lt!316697 () List!8799)

(declare-fun arrayNoDuplicates!0 (array!4405 (_ BitVec 32) List!8799) Bool)

(assert (=> d!258020 (arrayNoDuplicates!0 lt!316688 lt!316693 lt!316697)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!4405 (_ BitVec 32) (_ BitVec 32) List!8799) Unit!13294)

(assert (=> d!258020 (= lt!316702 (lemmaArrayNoDuplicatesInAll0Array!0 lt!316688 lt!316693 (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!316697))))

(assert (=> d!258020 (= lt!316697 Nil!8785)))

(assert (=> d!258020 (= lt!316693 #b00000000000000000000000000000000)))

(assert (=> d!258020 (= lt!316688 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!316700 () Unit!13294)

(declare-fun lt!316687 () Unit!13294)

(assert (=> d!258020 (= lt!316700 lt!316687)))

(declare-fun lt!316686 () (_ BitVec 32))

(declare-fun lt!316685 () array!4405)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4405 (_ BitVec 32)) Bool)

(assert (=> d!258020 (arrayForallSeekEntryOrOpenFound!0 lt!316686 lt!316685 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!4405 (_ BitVec 32) (_ BitVec 32)) Unit!13294)

(assert (=> d!258020 (= lt!316687 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!316685 (bvsub initialSize!19 #b00000000000000000000000000000001) lt!316686))))

(assert (=> d!258020 (= lt!316686 #b00000000000000000000000000000000)))

(assert (=> d!258020 (= lt!316685 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!316691 () Unit!13294)

(declare-fun lt!316681 () Unit!13294)

(assert (=> d!258020 (= lt!316691 lt!316681)))

(declare-fun lt!316701 () array!4405)

(declare-fun lt!316703 () (_ BitVec 32))

(declare-fun lt!316692 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!4405 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!258020 (= (arrayCountValidKeys!0 lt!316701 lt!316703 lt!316692) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!4405 (_ BitVec 32) (_ BitVec 32)) Unit!13294)

(assert (=> d!258020 (= lt!316681 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!316701 lt!316703 lt!316692))))

(assert (=> d!258020 (= lt!316692 (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!258020 (= lt!316703 #b00000000000000000000000000000000)))

(assert (=> d!258020 (= lt!316701 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!258020 (= lt!316689 (LongMapFixedSize!2503 lambda!24191 (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!316690 lt!316690 #b00000000000000000000000000000000 (array!4406 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!4408 ((as const (Array (_ BitVec 32) List!8795)) lt!316690) (bvadd (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!4098 (Int (_ BitVec 64)) List!8795)

(assert (=> d!258020 (= lt!316690 (dynLambda!4098 lambda!24191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!258020 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!258020 (= (getNewLongMapFixedSize!9 (bvsub initialSize!19 #b00000000000000000000000000000001) lambda!24191) lt!316684)))

(declare-fun b!819627 () Bool)

(declare-fun arrayContainsKey!0 (array!4405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!819627 (= e!541457 (arrayContainsKey!0 lt!316696 (_1!5964 lt!316680) #b00000000000000000000000000000000))))

(declare-fun b!819628 () Bool)

(assert (=> b!819628 (= e!541458 (= (map!1804 lt!316684) (ListLongMap!118 Nil!8784)))))

(assert (= (and d!258020 c!132832) b!819624))

(assert (= (and d!258020 (not c!132832)) b!819623))

(assert (= (and b!819624 c!132833) b!819627))

(assert (= (and b!819624 (not c!132833)) b!819625))

(assert (= (and d!258020 res!378313) b!819626))

(assert (= (and b!819626 res!378312) b!819628))

(declare-fun b_lambda!27467 () Bool)

(assert (=> (not b_lambda!27467) (not d!258020)))

(declare-fun m!1060499 () Bool)

(assert (=> b!819624 m!1060499))

(declare-fun m!1060501 () Bool)

(assert (=> b!819624 m!1060501))

(declare-fun m!1060503 () Bool)

(assert (=> b!819624 m!1060503))

(declare-fun m!1060505 () Bool)

(assert (=> b!819624 m!1060505))

(declare-fun m!1060507 () Bool)

(assert (=> d!258020 m!1060507))

(assert (=> d!258020 m!1059985))

(declare-fun m!1060509 () Bool)

(assert (=> d!258020 m!1060509))

(declare-fun m!1060511 () Bool)

(assert (=> d!258020 m!1060511))

(declare-fun m!1060513 () Bool)

(assert (=> d!258020 m!1060513))

(declare-fun m!1060515 () Bool)

(assert (=> d!258020 m!1060515))

(declare-fun m!1060517 () Bool)

(assert (=> d!258020 m!1060517))

(declare-fun m!1060519 () Bool)

(assert (=> d!258020 m!1060519))

(assert (=> d!258020 m!1060499))

(declare-fun m!1060521 () Bool)

(assert (=> d!258020 m!1060521))

(declare-fun m!1060523 () Bool)

(assert (=> b!819627 m!1060523))

(declare-fun m!1060525 () Bool)

(assert (=> b!819628 m!1060525))

(assert (=> d!257874 d!258020))

(assert (=> d!257874 d!257808))

(declare-fun d!258022 () Bool)

(declare-fun c!132834 () Bool)

(assert (=> d!258022 (= c!132834 ((_ is Node!2929) (left!6492 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun e!541460 () Bool)

(assert (=> d!258022 (= (inv!11119 (left!6492 (right!6822 (c!132782 totalInput!631)))) e!541460)))

(declare-fun b!819629 () Bool)

(assert (=> b!819629 (= e!541460 (inv!11123 (left!6492 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun b!819630 () Bool)

(declare-fun e!541461 () Bool)

(assert (=> b!819630 (= e!541460 e!541461)))

(declare-fun res!378314 () Bool)

(assert (=> b!819630 (= res!378314 (not ((_ is Leaf!4295) (left!6492 (right!6822 (c!132782 totalInput!631))))))))

(assert (=> b!819630 (=> res!378314 e!541461)))

(declare-fun b!819631 () Bool)

(assert (=> b!819631 (= e!541461 (inv!11124 (left!6492 (right!6822 (c!132782 totalInput!631)))))))

(assert (= (and d!258022 c!132834) b!819629))

(assert (= (and d!258022 (not c!132834)) b!819630))

(assert (= (and b!819630 (not res!378314)) b!819631))

(declare-fun m!1060527 () Bool)

(assert (=> b!819629 m!1060527))

(declare-fun m!1060529 () Bool)

(assert (=> b!819631 m!1060529))

(assert (=> b!819462 d!258022))

(declare-fun d!258024 () Bool)

(declare-fun c!132835 () Bool)

(assert (=> d!258024 (= c!132835 ((_ is Node!2929) (right!6822 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun e!541462 () Bool)

(assert (=> d!258024 (= (inv!11119 (right!6822 (right!6822 (c!132782 totalInput!631)))) e!541462)))

(declare-fun b!819632 () Bool)

(assert (=> b!819632 (= e!541462 (inv!11123 (right!6822 (right!6822 (c!132782 totalInput!631)))))))

(declare-fun b!819633 () Bool)

(declare-fun e!541463 () Bool)

(assert (=> b!819633 (= e!541462 e!541463)))

(declare-fun res!378315 () Bool)

(assert (=> b!819633 (= res!378315 (not ((_ is Leaf!4295) (right!6822 (right!6822 (c!132782 totalInput!631))))))))

(assert (=> b!819633 (=> res!378315 e!541463)))

(declare-fun b!819634 () Bool)

(assert (=> b!819634 (= e!541463 (inv!11124 (right!6822 (right!6822 (c!132782 totalInput!631)))))))

(assert (= (and d!258024 c!132835) b!819632))

(assert (= (and d!258024 (not c!132835)) b!819633))

(assert (= (and b!819633 (not res!378315)) b!819634))

(declare-fun m!1060531 () Bool)

(assert (=> b!819632 m!1060531))

(declare-fun m!1060533 () Bool)

(assert (=> b!819634 m!1060533))

(assert (=> b!819462 d!258024))

(declare-fun d!258026 () Bool)

(assert (=> d!258026 (= (valid!1001 (v!19072 (underlying!2686 lt!316505))) (valid!1003 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316505))))))))

(declare-fun bs!228609 () Bool)

(assert (= bs!228609 d!258026))

(declare-fun m!1060535 () Bool)

(assert (=> bs!228609 m!1060535))

(assert (=> d!257906 d!258026))

(declare-fun d!258028 () Bool)

(declare-fun lt!316704 () Bool)

(assert (=> d!258028 (= lt!316704 (isEmpty!5267 (list!3484 (left!6492 (c!132782 totalInput!631)))))))

(assert (=> d!258028 (= lt!316704 (= (size!7440 (left!6492 (c!132782 totalInput!631))) 0))))

(assert (=> d!258028 (= (isEmpty!5266 (left!6492 (c!132782 totalInput!631))) lt!316704)))

(declare-fun bs!228610 () Bool)

(assert (= bs!228610 d!258028))

(assert (=> bs!228610 m!1060457))

(assert (=> bs!228610 m!1060457))

(declare-fun m!1060537 () Bool)

(assert (=> bs!228610 m!1060537))

(assert (=> bs!228610 m!1060201))

(assert (=> b!819447 d!258028))

(assert (=> b!819446 d!257970))

(assert (=> b!819446 d!257972))

(declare-fun b!819635 () Bool)

(declare-fun e!541464 () Bool)

(assert (=> b!819635 (= e!541464 (= (_2!5962 (h!14182 (t!92901 (toList!554 lt!316483)))) (furthestNullablePosition!2 (_1!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) (_2!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) totalInput!631 (size!7442 totalInput!631) (_3!821 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))))))))

(declare-fun b!819636 () Bool)

(declare-fun res!378320 () Bool)

(assert (=> b!819636 (=> (not res!378320) (not e!541464))))

(assert (=> b!819636 (= res!378320 (and (>= (_3!821 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) (- 1)) (< (_3!821 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) (_2!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))))))))

(declare-fun b!819637 () Bool)

(declare-fun res!378317 () Bool)

(assert (=> b!819637 (=> (not res!378317) (not e!541464))))

(declare-fun e!541465 () Bool)

(assert (=> b!819637 (= res!378317 e!541465)))

(declare-fun res!378318 () Bool)

(assert (=> b!819637 (=> res!378318 e!541465)))

(assert (=> b!819637 (= res!378318 (not (nullableZipper!12 (_1!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))))))))

(declare-fun b!819638 () Bool)

(declare-fun res!378319 () Bool)

(assert (=> b!819638 (=> (not res!378319) (not e!541464))))

(assert (=> b!819638 (= res!378319 (<= (_2!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) (size!7442 totalInput!631)))))

(declare-fun d!258030 () Bool)

(declare-fun res!378316 () Bool)

(assert (=> d!258030 (=> (not res!378316) (not e!541464))))

(assert (=> d!258030 (= res!378316 (>= (_2!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) 0))))

(assert (=> d!258030 (= (validCacheMapFurthestNullableBody!5 (h!14182 (t!92901 (toList!554 lt!316483))) totalInput!631) e!541464)))

(declare-fun b!819639 () Bool)

(assert (=> b!819639 (= e!541465 (= (_3!821 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) (- (_2!5961 (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483))))) 1)))))

(assert (= (and d!258030 res!378316) b!819638))

(assert (= (and b!819638 res!378319) b!819636))

(assert (= (and b!819636 res!378320) b!819637))

(assert (= (and b!819637 (not res!378318)) b!819639))

(assert (= (and b!819637 res!378317) b!819635))

(assert (=> b!819635 m!1060235))

(assert (=> b!819635 m!1060235))

(declare-fun m!1060539 () Bool)

(assert (=> b!819635 m!1060539))

(declare-fun m!1060541 () Bool)

(assert (=> b!819637 m!1060541))

(assert (=> b!819638 m!1060235))

(assert (=> bs!228589 d!258030))

(declare-fun d!258032 () Bool)

(declare-fun res!378321 () Bool)

(declare-fun e!541466 () Bool)

(assert (=> d!258032 (=> (not res!378321) (not e!541466))))

(assert (=> d!258032 (= res!378321 (<= (size!7441 (list!3481 (xs!5618 (right!6822 (c!132782 totalInput!631))))) 512))))

(assert (=> d!258032 (= (inv!11124 (right!6822 (c!132782 totalInput!631))) e!541466)))

(declare-fun b!819640 () Bool)

(declare-fun res!378322 () Bool)

(assert (=> b!819640 (=> (not res!378322) (not e!541466))))

(assert (=> b!819640 (= res!378322 (= (csize!6089 (right!6822 (c!132782 totalInput!631))) (size!7441 (list!3481 (xs!5618 (right!6822 (c!132782 totalInput!631)))))))))

(declare-fun b!819641 () Bool)

(assert (=> b!819641 (= e!541466 (and (> (csize!6089 (right!6822 (c!132782 totalInput!631))) 0) (<= (csize!6089 (right!6822 (c!132782 totalInput!631))) 512)))))

(assert (= (and d!258032 res!378321) b!819640))

(assert (= (and b!819640 res!378322) b!819641))

(declare-fun m!1060543 () Bool)

(assert (=> d!258032 m!1060543))

(assert (=> d!258032 m!1060543))

(declare-fun m!1060545 () Bool)

(assert (=> d!258032 m!1060545))

(assert (=> b!819640 m!1060543))

(assert (=> b!819640 m!1060543))

(assert (=> b!819640 m!1060545))

(assert (=> b!819400 d!258032))

(declare-fun d!258034 () Bool)

(declare-fun res!378323 () Bool)

(declare-fun e!541467 () Bool)

(assert (=> d!258034 (=> res!378323 e!541467)))

(assert (=> d!258034 (= res!378323 ((_ is Nil!8781) (t!92901 (t!92901 (toList!554 lt!316483)))))))

(assert (=> d!258034 (= (forall!2071 (t!92901 (t!92901 (toList!554 lt!316483))) lambda!24169) e!541467)))

(declare-fun b!819642 () Bool)

(declare-fun e!541468 () Bool)

(assert (=> b!819642 (= e!541467 e!541468)))

(declare-fun res!378324 () Bool)

(assert (=> b!819642 (=> (not res!378324) (not e!541468))))

(assert (=> b!819642 (= res!378324 (dynLambda!4095 lambda!24169 (h!14182 (t!92901 (t!92901 (toList!554 lt!316483))))))))

(declare-fun b!819643 () Bool)

(assert (=> b!819643 (= e!541468 (forall!2071 (t!92901 (t!92901 (t!92901 (toList!554 lt!316483)))) lambda!24169))))

(assert (= (and d!258034 (not res!378323)) b!819642))

(assert (= (and b!819642 res!378324) b!819643))

(declare-fun b_lambda!27469 () Bool)

(assert (=> (not b_lambda!27469) (not b!819642)))

(declare-fun m!1060547 () Bool)

(assert (=> b!819642 m!1060547))

(declare-fun m!1060549 () Bool)

(assert (=> b!819643 m!1060549))

(assert (=> b!819385 d!258034))

(declare-fun d!258036 () Bool)

(declare-fun res!378325 () Bool)

(declare-fun e!541469 () Bool)

(assert (=> d!258036 (=> res!378325 e!541469)))

(assert (=> d!258036 (= res!378325 (or ((_ is Nil!8781) (t!92901 (toList!554 lt!316483))) ((_ is Nil!8781) (t!92901 (t!92901 (toList!554 lt!316483))))))))

(assert (=> d!258036 (= (noDuplicatedKeys!32 (t!92901 (toList!554 lt!316483))) e!541469)))

(declare-fun b!819644 () Bool)

(declare-fun e!541470 () Bool)

(assert (=> b!819644 (= e!541469 e!541470)))

(declare-fun res!378326 () Bool)

(assert (=> b!819644 (=> (not res!378326) (not e!541470))))

(assert (=> b!819644 (= res!378326 (not (containsKey!28 (t!92901 (t!92901 (toList!554 lt!316483))) (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483)))))))))

(declare-fun b!819645 () Bool)

(assert (=> b!819645 (= e!541470 (noDuplicatedKeys!32 (t!92901 (t!92901 (toList!554 lt!316483)))))))

(assert (= (and d!258036 (not res!378325)) b!819644))

(assert (= (and b!819644 res!378326) b!819645))

(declare-fun m!1060551 () Bool)

(assert (=> b!819644 m!1060551))

(declare-fun m!1060553 () Bool)

(assert (=> b!819645 m!1060553))

(assert (=> b!819433 d!258036))

(declare-fun bs!228647 () Bool)

(declare-fun b!819729 () Bool)

(assert (= bs!228647 (and b!819729 b!819163)))

(declare-fun lambda!24275 () Int)

(assert (=> bs!228647 (not (= lambda!24275 lambda!24169))))

(declare-fun bs!228648 () Bool)

(assert (= bs!228648 (and b!819729 b!819239)))

(assert (=> bs!228648 (not (= lambda!24275 lambda!24183))))

(declare-fun b!819738 () Bool)

(declare-fun e!541527 () Bool)

(assert (=> b!819738 (= e!541527 true)))

(assert (=> b!819729 e!541527))

(assert (= b!819729 b!819738))

(declare-fun bs!228649 () Bool)

(declare-fun b!819733 () Bool)

(assert (= bs!228649 (and b!819733 b!819163)))

(declare-fun lambda!24276 () Int)

(assert (=> bs!228649 (not (= lambda!24276 lambda!24169))))

(declare-fun bs!228650 () Bool)

(assert (= bs!228650 (and b!819733 b!819239)))

(assert (=> bs!228650 (not (= lambda!24276 lambda!24183))))

(declare-fun bs!228651 () Bool)

(assert (= bs!228651 (and b!819733 b!819729)))

(assert (=> bs!228651 (= lambda!24276 lambda!24275)))

(declare-fun b!819739 () Bool)

(declare-fun e!541528 () Bool)

(assert (=> b!819739 (= e!541528 true)))

(assert (=> b!819733 e!541528))

(assert (= b!819733 b!819739))

(declare-fun lambda!24277 () Int)

(assert (=> bs!228649 (not (= lambda!24277 lambda!24169))))

(assert (=> bs!228650 (not (= lambda!24277 lambda!24183))))

(declare-fun lt!316827 () ListMap!425)

(assert (=> bs!228651 (= (= lt!316827 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (= lambda!24277 lambda!24275))))

(assert (=> b!819733 (= (= lt!316827 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (= lambda!24277 lambda!24276))))

(declare-fun b!819740 () Bool)

(declare-fun e!541529 () Bool)

(assert (=> b!819740 (= e!541529 true)))

(assert (=> b!819733 e!541529))

(assert (= b!819733 b!819740))

(declare-fun bs!228652 () Bool)

(declare-fun d!258038 () Bool)

(assert (= bs!228652 (and d!258038 b!819733)))

(declare-fun lt!316822 () ListMap!425)

(declare-fun lambda!24278 () Int)

(assert (=> bs!228652 (= (= lt!316822 lt!316827) (= lambda!24278 lambda!24277))))

(assert (=> bs!228652 (= (= lt!316822 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (= lambda!24278 lambda!24276))))

(declare-fun bs!228653 () Bool)

(assert (= bs!228653 (and d!258038 b!819163)))

(assert (=> bs!228653 (not (= lambda!24278 lambda!24169))))

(declare-fun bs!228654 () Bool)

(assert (= bs!228654 (and d!258038 b!819239)))

(assert (=> bs!228654 (not (= lambda!24278 lambda!24183))))

(declare-fun bs!228655 () Bool)

(assert (= bs!228655 (and d!258038 b!819729)))

(assert (=> bs!228655 (= (= lt!316822 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (= lambda!24278 lambda!24275))))

(declare-fun b!819741 () Bool)

(declare-fun e!541530 () Bool)

(assert (=> b!819741 (= e!541530 true)))

(assert (=> d!258038 e!541530))

(assert (= d!258038 b!819741))

(declare-fun e!541524 () ListMap!425)

(assert (=> b!819729 (= e!541524 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun lt!316821 () Unit!13294)

(declare-fun call!47054 () Unit!13294)

(assert (=> b!819729 (= lt!316821 call!47054)))

(declare-fun call!47053 () Bool)

(assert (=> b!819729 call!47053))

(declare-fun lt!316830 () Unit!13294)

(assert (=> b!819729 (= lt!316830 lt!316821)))

(declare-fun call!47055 () Bool)

(assert (=> b!819729 call!47055))

(declare-fun lt!316837 () Unit!13294)

(declare-fun Unit!13298 () Unit!13294)

(assert (=> b!819729 (= lt!316837 Unit!13298)))

(declare-fun b!819730 () Bool)

(declare-fun e!541522 () Bool)

(assert (=> b!819730 (= e!541522 (forall!2071 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) lambda!24277))))

(declare-fun bm!47048 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1 (ListMap!425) Unit!13294)

(assert (=> bm!47048 (= call!47054 (lemmaContainsAllItsOwnKeys!1 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(declare-fun e!541523 () Bool)

(assert (=> d!258038 e!541523))

(declare-fun res!378370 () Bool)

(assert (=> d!258038 (=> (not res!378370) (not e!541523))))

(assert (=> d!258038 (= res!378370 (forall!2071 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lambda!24278))))

(assert (=> d!258038 (= lt!316822 e!541524)))

(declare-fun c!132847 () Bool)

(assert (=> d!258038 (= c!132847 ((_ is Nil!8781) (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(assert (=> d!258038 (noDuplicateKeys!26 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(assert (=> d!258038 (= (addToMapMapFromBucket!9 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) lt!316822)))

(declare-fun bm!47049 () Bool)

(assert (=> bm!47049 (= call!47053 (forall!2071 (ite c!132847 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (t!92901 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))) (ite c!132847 lambda!24275 lambda!24277)))))

(declare-fun bm!47050 () Bool)

(assert (=> bm!47050 (= call!47055 (forall!2071 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (ite c!132847 lambda!24275 lambda!24277)))))

(declare-fun b!819731 () Bool)

(declare-fun res!378371 () Bool)

(assert (=> b!819731 (=> (not res!378371) (not e!541523))))

(assert (=> b!819731 (= res!378371 (forall!2071 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) lambda!24278))))

(declare-fun b!819732 () Bool)

(assert (=> b!819732 (= e!541523 (invariantList!188 (toList!554 lt!316822)))))

(assert (=> b!819733 (= e!541524 lt!316827)))

(declare-fun lt!316825 () ListMap!425)

(declare-fun +!31 (ListMap!425 tuple2!10280) ListMap!425)

(assert (=> b!819733 (= lt!316825 (+!31 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(assert (=> b!819733 (= lt!316827 (addToMapMapFromBucket!9 (t!92901 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (+!31 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))))

(declare-fun lt!316840 () Unit!13294)

(assert (=> b!819733 (= lt!316840 call!47054)))

(assert (=> b!819733 (forall!2071 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) lambda!24276)))

(declare-fun lt!316824 () Unit!13294)

(assert (=> b!819733 (= lt!316824 lt!316840)))

(assert (=> b!819733 (forall!2071 (toList!554 lt!316825) lambda!24277)))

(declare-fun lt!316839 () Unit!13294)

(declare-fun Unit!13299 () Unit!13294)

(assert (=> b!819733 (= lt!316839 Unit!13299)))

(assert (=> b!819733 call!47053))

(declare-fun lt!316838 () Unit!13294)

(declare-fun Unit!13300 () Unit!13294)

(assert (=> b!819733 (= lt!316838 Unit!13300)))

(declare-fun lt!316833 () Unit!13294)

(declare-fun Unit!13301 () Unit!13294)

(assert (=> b!819733 (= lt!316833 Unit!13301)))

(declare-fun lt!316828 () Unit!13294)

(declare-fun forallContained!470 (List!8795 Int tuple2!10280) Unit!13294)

(assert (=> b!819733 (= lt!316828 (forallContained!470 (toList!554 lt!316825) lambda!24277 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(declare-fun contains!1612 (ListMap!425 tuple3!1060) Bool)

(assert (=> b!819733 (contains!1612 lt!316825 (_1!5962 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(declare-fun lt!316834 () Unit!13294)

(declare-fun Unit!13302 () Unit!13294)

(assert (=> b!819733 (= lt!316834 Unit!13302)))

(assert (=> b!819733 (contains!1612 lt!316827 (_1!5962 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(declare-fun lt!316820 () Unit!13294)

(declare-fun Unit!13303 () Unit!13294)

(assert (=> b!819733 (= lt!316820 Unit!13303)))

(assert (=> b!819733 (forall!2071 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lambda!24277)))

(declare-fun lt!316831 () Unit!13294)

(declare-fun Unit!13304 () Unit!13294)

(assert (=> b!819733 (= lt!316831 Unit!13304)))

(assert (=> b!819733 (forall!2071 (toList!554 lt!316825) lambda!24277)))

(declare-fun lt!316829 () Unit!13294)

(declare-fun Unit!13305 () Unit!13294)

(assert (=> b!819733 (= lt!316829 Unit!13305)))

(declare-fun lt!316826 () Unit!13294)

(declare-fun Unit!13306 () Unit!13294)

(assert (=> b!819733 (= lt!316826 Unit!13306)))

(declare-fun lt!316835 () Unit!13294)

(declare-fun addForallContainsKeyThenBeforeAdding!1 (ListMap!425 ListMap!425 tuple3!1060 Int) Unit!13294)

(assert (=> b!819733 (= lt!316835 (addForallContainsKeyThenBeforeAdding!1 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lt!316827 (_1!5962 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))) (_2!5962 (h!14182 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))))

(assert (=> b!819733 call!47055))

(declare-fun lt!316836 () Unit!13294)

(assert (=> b!819733 (= lt!316836 lt!316835)))

(assert (=> b!819733 (forall!2071 (toList!554 (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) lambda!24277)))

(declare-fun lt!316823 () Unit!13294)

(declare-fun Unit!13307 () Unit!13294)

(assert (=> b!819733 (= lt!316823 Unit!13307)))

(declare-fun res!378369 () Bool)

(assert (=> b!819733 (= res!378369 (forall!2071 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lambda!24277))))

(assert (=> b!819733 (=> (not res!378369) (not e!541522))))

(assert (=> b!819733 e!541522))

(declare-fun lt!316832 () Unit!13294)

(declare-fun Unit!13308 () Unit!13294)

(assert (=> b!819733 (= lt!316832 Unit!13308)))

(assert (= (and d!258038 c!132847) b!819729))

(assert (= (and d!258038 (not c!132847)) b!819733))

(assert (= (and b!819733 res!378369) b!819730))

(assert (= (or b!819729 b!819733) bm!47049))

(assert (= (or b!819729 b!819733) bm!47050))

(assert (= (or b!819729 b!819733) bm!47048))

(assert (= (and d!258038 res!378370) b!819731))

(assert (= (and b!819731 res!378371) b!819732))

(declare-fun m!1060703 () Bool)

(assert (=> bm!47050 m!1060703))

(declare-fun m!1060705 () Bool)

(assert (=> b!819730 m!1060705))

(declare-fun m!1060707 () Bool)

(assert (=> b!819732 m!1060707))

(declare-fun m!1060709 () Bool)

(assert (=> b!819733 m!1060709))

(declare-fun m!1060711 () Bool)

(assert (=> b!819733 m!1060711))

(declare-fun m!1060713 () Bool)

(assert (=> b!819733 m!1060713))

(declare-fun m!1060715 () Bool)

(assert (=> b!819733 m!1060715))

(assert (=> b!819733 m!1060711))

(declare-fun m!1060717 () Bool)

(assert (=> b!819733 m!1060717))

(declare-fun m!1060719 () Bool)

(assert (=> b!819733 m!1060719))

(assert (=> b!819733 m!1060227))

(declare-fun m!1060721 () Bool)

(assert (=> b!819733 m!1060721))

(assert (=> b!819733 m!1060227))

(declare-fun m!1060723 () Bool)

(assert (=> b!819733 m!1060723))

(assert (=> b!819733 m!1060717))

(assert (=> b!819733 m!1060705))

(assert (=> b!819733 m!1060721))

(declare-fun m!1060725 () Bool)

(assert (=> b!819733 m!1060725))

(declare-fun m!1060727 () Bool)

(assert (=> b!819731 m!1060727))

(assert (=> bm!47048 m!1060227))

(declare-fun m!1060729 () Bool)

(assert (=> bm!47048 m!1060729))

(declare-fun m!1060731 () Bool)

(assert (=> bm!47049 m!1060731))

(declare-fun m!1060733 () Bool)

(assert (=> d!258038 m!1060733))

(assert (=> d!258038 m!1060281))

(assert (=> b!819405 d!258038))

(declare-fun bs!228656 () Bool)

(declare-fun d!258098 () Bool)

(assert (= bs!228656 (and d!258098 b!819452)))

(declare-fun lambda!24279 () Int)

(assert (=> bs!228656 (= lambda!24279 lambda!24205)))

(declare-fun bs!228657 () Bool)

(assert (= bs!228657 (and d!258098 d!257964)))

(assert (=> bs!228657 (not (= lambda!24279 lambda!24209))))

(declare-fun bs!228658 () Bool)

(assert (= bs!228658 (and d!258098 d!257894)))

(assert (=> bs!228658 (= lambda!24279 lambda!24204)))

(declare-fun bs!228659 () Bool)

(assert (= bs!228659 (and d!258098 d!257880)))

(assert (=> bs!228659 (not (= lambda!24279 lambda!24201))))

(declare-fun bs!228660 () Bool)

(assert (= bs!228660 (and d!258098 b!819244)))

(assert (=> bs!228660 (= lambda!24279 lambda!24186)))

(declare-fun lt!316841 () ListMap!425)

(assert (=> d!258098 (invariantList!188 (toList!554 lt!316841))))

(declare-fun e!541531 () ListMap!425)

(assert (=> d!258098 (= lt!316841 e!541531)))

(declare-fun c!132848 () Bool)

(assert (=> d!258098 (= c!132848 ((_ is Cons!8784) (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(assert (=> d!258098 (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lambda!24279)))

(assert (=> d!258098 (= (extractMap!37 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lt!316841)))

(declare-fun b!819742 () Bool)

(assert (=> b!819742 (= e!541531 (addToMapMapFromBucket!9 (_2!5964 (h!14185 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (extractMap!37 (t!92904 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(declare-fun b!819743 () Bool)

(assert (=> b!819743 (= e!541531 (ListMap!426 Nil!8781))))

(assert (= (and d!258098 c!132848) b!819742))

(assert (= (and d!258098 (not c!132848)) b!819743))

(declare-fun m!1060735 () Bool)

(assert (=> d!258098 m!1060735))

(declare-fun m!1060737 () Bool)

(assert (=> d!258098 m!1060737))

(declare-fun m!1060739 () Bool)

(assert (=> b!819742 m!1060739))

(assert (=> b!819742 m!1060739))

(declare-fun m!1060741 () Bool)

(assert (=> b!819742 m!1060741))

(assert (=> b!819405 d!258098))

(declare-fun d!258100 () Bool)

(declare-fun res!378376 () Bool)

(declare-fun e!541536 () Bool)

(assert (=> d!258100 (=> res!378376 e!541536)))

(assert (=> d!258100 (= res!378376 (and ((_ is Cons!8781) (t!92901 (toList!554 lt!316483))) (= (_1!5962 (h!14182 (t!92901 (toList!554 lt!316483)))) (_1!5962 (h!14182 (toList!554 lt!316483))))))))

(assert (=> d!258100 (= (containsKey!28 (t!92901 (toList!554 lt!316483)) (_1!5962 (h!14182 (toList!554 lt!316483)))) e!541536)))

(declare-fun b!819748 () Bool)

(declare-fun e!541537 () Bool)

(assert (=> b!819748 (= e!541536 e!541537)))

(declare-fun res!378377 () Bool)

(assert (=> b!819748 (=> (not res!378377) (not e!541537))))

(assert (=> b!819748 (= res!378377 ((_ is Cons!8781) (t!92901 (toList!554 lt!316483))))))

(declare-fun b!819749 () Bool)

(assert (=> b!819749 (= e!541537 (containsKey!28 (t!92901 (t!92901 (toList!554 lt!316483))) (_1!5962 (h!14182 (toList!554 lt!316483)))))))

(assert (= (and d!258100 (not res!378376)) b!819748))

(assert (= (and b!819748 res!378377) b!819749))

(declare-fun m!1060743 () Bool)

(assert (=> b!819749 m!1060743))

(assert (=> b!819432 d!258100))

(declare-fun d!258102 () Bool)

(declare-fun res!378378 () Bool)

(declare-fun e!541538 () Bool)

(assert (=> d!258102 (=> (not res!378378) (not e!541538))))

(assert (=> d!258102 (= res!378378 (= (csize!6088 (right!6822 (c!132782 totalInput!631))) (+ (size!7440 (left!6492 (right!6822 (c!132782 totalInput!631)))) (size!7440 (right!6822 (right!6822 (c!132782 totalInput!631)))))))))

(assert (=> d!258102 (= (inv!11123 (right!6822 (c!132782 totalInput!631))) e!541538)))

(declare-fun b!819750 () Bool)

(declare-fun res!378379 () Bool)

(assert (=> b!819750 (=> (not res!378379) (not e!541538))))

(assert (=> b!819750 (= res!378379 (and (not (= (left!6492 (right!6822 (c!132782 totalInput!631))) Empty!2929)) (not (= (right!6822 (right!6822 (c!132782 totalInput!631))) Empty!2929))))))

(declare-fun b!819751 () Bool)

(declare-fun res!378380 () Bool)

(assert (=> b!819751 (=> (not res!378380) (not e!541538))))

(assert (=> b!819751 (= res!378380 (= (cheight!3140 (right!6822 (c!132782 totalInput!631))) (+ (max!0 (height!390 (left!6492 (right!6822 (c!132782 totalInput!631)))) (height!390 (right!6822 (right!6822 (c!132782 totalInput!631))))) 1)))))

(declare-fun b!819752 () Bool)

(assert (=> b!819752 (= e!541538 (<= 0 (cheight!3140 (right!6822 (c!132782 totalInput!631)))))))

(assert (= (and d!258102 res!378378) b!819750))

(assert (= (and b!819750 res!378379) b!819751))

(assert (= (and b!819751 res!378380) b!819752))

(declare-fun m!1060745 () Bool)

(assert (=> d!258102 m!1060745))

(declare-fun m!1060747 () Bool)

(assert (=> d!258102 m!1060747))

(assert (=> b!819751 m!1060445))

(assert (=> b!819751 m!1060447))

(assert (=> b!819751 m!1060445))

(assert (=> b!819751 m!1060447))

(declare-fun m!1060749 () Bool)

(assert (=> b!819751 m!1060749))

(assert (=> b!819398 d!258102))

(declare-fun d!258104 () Bool)

(assert (=> d!258104 (= (invariantList!188 (toList!554 lt!316527)) (noDuplicatedKeys!32 (toList!554 lt!316527)))))

(declare-fun bs!228661 () Bool)

(assert (= bs!228661 d!258104))

(declare-fun m!1060751 () Bool)

(assert (=> bs!228661 m!1060751))

(assert (=> d!257894 d!258104))

(declare-fun d!258106 () Bool)

(declare-fun res!378381 () Bool)

(declare-fun e!541539 () Bool)

(assert (=> d!258106 (=> res!378381 e!541539)))

(assert (=> d!258106 (= res!378381 ((_ is Nil!8784) (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!258106 (= (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24204) e!541539)))

(declare-fun b!819753 () Bool)

(declare-fun e!541540 () Bool)

(assert (=> b!819753 (= e!541539 e!541540)))

(declare-fun res!378382 () Bool)

(assert (=> b!819753 (=> (not res!378382) (not e!541540))))

(assert (=> b!819753 (= res!378382 (dynLambda!4097 lambda!24204 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun b!819754 () Bool)

(assert (=> b!819754 (= e!541540 (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lambda!24204))))

(assert (= (and d!258106 (not res!378381)) b!819753))

(assert (= (and b!819753 res!378382) b!819754))

(declare-fun b_lambda!27489 () Bool)

(assert (=> (not b_lambda!27489) (not b!819753)))

(declare-fun m!1060753 () Bool)

(assert (=> b!819753 m!1060753))

(declare-fun m!1060755 () Bool)

(assert (=> b!819754 m!1060755))

(assert (=> d!257894 d!258106))

(declare-fun d!258108 () Bool)

(declare-fun res!378383 () Bool)

(declare-fun e!541541 () Bool)

(assert (=> d!258108 (=> res!378383 e!541541)))

(assert (=> d!258108 (= res!378383 ((_ is Nil!8784) (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(assert (=> d!258108 (= (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lambda!24186) e!541541)))

(declare-fun b!819755 () Bool)

(declare-fun e!541542 () Bool)

(assert (=> b!819755 (= e!541541 e!541542)))

(declare-fun res!378384 () Bool)

(assert (=> b!819755 (=> (not res!378384) (not e!541542))))

(assert (=> b!819755 (= res!378384 (dynLambda!4097 lambda!24186 (h!14185 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(declare-fun b!819756 () Bool)

(assert (=> b!819756 (= e!541542 (forall!2073 (t!92904 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) lambda!24186))))

(assert (= (and d!258108 (not res!378383)) b!819755))

(assert (= (and b!819755 res!378384) b!819756))

(declare-fun b_lambda!27491 () Bool)

(assert (=> (not b_lambda!27491) (not b!819755)))

(declare-fun m!1060757 () Bool)

(assert (=> b!819755 m!1060757))

(declare-fun m!1060759 () Bool)

(assert (=> b!819756 m!1060759))

(assert (=> b!819381 d!258108))

(declare-fun d!258110 () Bool)

(declare-fun res!378391 () Bool)

(declare-fun e!541545 () Bool)

(assert (=> d!258110 (=> (not res!378391) (not e!541545))))

(declare-fun simpleValid!3 (LongMapFixedSize!2502) Bool)

(assert (=> d!258110 (= res!378391 (simpleValid!3 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!258110 (= (valid!1003 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) e!541545)))

(declare-fun b!819763 () Bool)

(declare-fun res!378392 () Bool)

(assert (=> b!819763 (=> (not res!378392) (not e!541545))))

(assert (=> b!819763 (= res!378392 (= (arrayCountValidKeys!0 (_keys!1545 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) #b00000000000000000000000000000000 (size!7431 (_keys!1545 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))))) (_size!2611 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun b!819764 () Bool)

(declare-fun res!378393 () Bool)

(assert (=> b!819764 (=> (not res!378393) (not e!541545))))

(assert (=> b!819764 (= res!378393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!1545 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) (mask!3152 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun b!819765 () Bool)

(assert (=> b!819765 (= e!541545 (arrayNoDuplicates!0 (_keys!1545 (v!19071 (underlying!2685 (v!19072 (underlying!2686 lt!316482))))) #b00000000000000000000000000000000 Nil!8785))))

(assert (= (and d!258110 res!378391) b!819763))

(assert (= (and b!819763 res!378392) b!819764))

(assert (= (and b!819764 res!378393) b!819765))

(declare-fun m!1060761 () Bool)

(assert (=> d!258110 m!1060761))

(declare-fun m!1060763 () Bool)

(assert (=> b!819763 m!1060763))

(declare-fun m!1060765 () Bool)

(assert (=> b!819764 m!1060765))

(declare-fun m!1060767 () Bool)

(assert (=> b!819765 m!1060767))

(assert (=> d!257904 d!258110))

(declare-fun d!258112 () Bool)

(declare-fun res!378394 () Bool)

(declare-fun e!541546 () Bool)

(assert (=> d!258112 (=> res!378394 e!541546)))

(assert (=> d!258112 (= res!378394 ((_ is Nil!8784) (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))

(assert (=> d!258112 (= (forall!2073 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))) lambda!24201) e!541546)))

(declare-fun b!819766 () Bool)

(declare-fun e!541547 () Bool)

(assert (=> b!819766 (= e!541546 e!541547)))

(declare-fun res!378395 () Bool)

(assert (=> b!819766 (=> (not res!378395) (not e!541547))))

(assert (=> b!819766 (= res!378395 (dynLambda!4097 lambda!24201 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))

(declare-fun b!819767 () Bool)

(assert (=> b!819767 (= e!541547 (forall!2073 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))) lambda!24201))))

(assert (= (and d!258112 (not res!378394)) b!819766))

(assert (= (and b!819766 res!378395) b!819767))

(declare-fun b_lambda!27493 () Bool)

(assert (=> (not b_lambda!27493) (not b!819766)))

(declare-fun m!1060769 () Bool)

(assert (=> b!819766 m!1060769))

(declare-fun m!1060771 () Bool)

(assert (=> b!819767 m!1060771))

(assert (=> d!257880 d!258112))

(declare-fun d!258114 () Bool)

(assert (=> d!258114 (= (valid!1001 lt!316523) (valid!1003 (v!19071 (underlying!2685 lt!316523))))))

(declare-fun bs!228662 () Bool)

(assert (= bs!228662 d!258114))

(declare-fun m!1060773 () Bool)

(assert (=> bs!228662 m!1060773))

(assert (=> b!819374 d!258114))

(declare-fun d!258116 () Bool)

(declare-fun res!378396 () Bool)

(declare-fun e!541548 () Bool)

(assert (=> d!258116 (=> res!378396 e!541548)))

(assert (=> d!258116 (= res!378396 (or ((_ is Nil!8781) (toList!554 lt!316491)) ((_ is Nil!8781) (t!92901 (toList!554 lt!316491)))))))

(assert (=> d!258116 (= (noDuplicatedKeys!32 (toList!554 lt!316491)) e!541548)))

(declare-fun b!819768 () Bool)

(declare-fun e!541549 () Bool)

(assert (=> b!819768 (= e!541548 e!541549)))

(declare-fun res!378397 () Bool)

(assert (=> b!819768 (=> (not res!378397) (not e!541549))))

(assert (=> b!819768 (= res!378397 (not (containsKey!28 (t!92901 (toList!554 lt!316491)) (_1!5962 (h!14182 (toList!554 lt!316491))))))))

(declare-fun b!819769 () Bool)

(assert (=> b!819769 (= e!541549 (noDuplicatedKeys!32 (t!92901 (toList!554 lt!316491))))))

(assert (= (and d!258116 (not res!378396)) b!819768))

(assert (= (and b!819768 res!378397) b!819769))

(declare-fun m!1060775 () Bool)

(assert (=> b!819768 m!1060775))

(declare-fun m!1060777 () Bool)

(assert (=> b!819769 m!1060777))

(assert (=> d!257892 d!258116))

(declare-fun d!258118 () Bool)

(declare-fun size!7443 (LongMapFixedSize!2502) (_ BitVec 32))

(assert (=> d!258118 (= (size!7439 lt!316523) (size!7443 (v!19071 (underlying!2685 lt!316523))))))

(declare-fun bs!228663 () Bool)

(assert (= bs!228663 d!258118))

(declare-fun m!1060779 () Bool)

(assert (=> bs!228663 m!1060779))

(assert (=> b!819375 d!258118))

(assert (=> d!257896 d!257990))

(assert (=> d!257896 d!257992))

(declare-fun d!258120 () Bool)

(assert (=> d!258120 (= (inv!11125 (xs!5618 (left!6492 (c!132782 totalInput!631)))) (<= (size!7441 (innerList!2987 (xs!5618 (left!6492 (c!132782 totalInput!631))))) 2147483647))))

(declare-fun bs!228664 () Bool)

(assert (= bs!228664 d!258120))

(declare-fun m!1060781 () Bool)

(assert (=> bs!228664 m!1060781))

(assert (=> b!819460 d!258120))

(declare-fun d!258122 () Bool)

(declare-fun res!378398 () Bool)

(declare-fun e!541550 () Bool)

(assert (=> d!258122 (=> res!378398 e!541550)))

(assert (=> d!258122 (= res!378398 ((_ is Nil!8781) (t!92901 (toList!554 (map!1800 lt!316482)))))))

(assert (=> d!258122 (= (forall!2071 (t!92901 (toList!554 (map!1800 lt!316482))) lambda!24183) e!541550)))

(declare-fun b!819770 () Bool)

(declare-fun e!541551 () Bool)

(assert (=> b!819770 (= e!541550 e!541551)))

(declare-fun res!378399 () Bool)

(assert (=> b!819770 (=> (not res!378399) (not e!541551))))

(assert (=> b!819770 (= res!378399 (dynLambda!4095 lambda!24183 (h!14182 (t!92901 (toList!554 (map!1800 lt!316482))))))))

(declare-fun b!819771 () Bool)

(assert (=> b!819771 (= e!541551 (forall!2071 (t!92901 (t!92901 (toList!554 (map!1800 lt!316482)))) lambda!24183))))

(assert (= (and d!258122 (not res!378398)) b!819770))

(assert (= (and b!819770 res!378399) b!819771))

(declare-fun b_lambda!27495 () Bool)

(assert (=> (not b_lambda!27495) (not b!819770)))

(declare-fun m!1060783 () Bool)

(assert (=> b!819770 m!1060783))

(declare-fun m!1060785 () Bool)

(assert (=> b!819771 m!1060785))

(assert (=> b!819369 d!258122))

(assert (=> b!819426 d!257988))

(declare-fun d!258124 () Bool)

(declare-fun c!132849 () Bool)

(assert (=> d!258124 (= c!132849 ((_ is Node!2929) (left!6492 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun e!541552 () Bool)

(assert (=> d!258124 (= (inv!11119 (left!6492 (left!6492 (c!132782 totalInput!631)))) e!541552)))

(declare-fun b!819772 () Bool)

(assert (=> b!819772 (= e!541552 (inv!11123 (left!6492 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun b!819773 () Bool)

(declare-fun e!541553 () Bool)

(assert (=> b!819773 (= e!541552 e!541553)))

(declare-fun res!378400 () Bool)

(assert (=> b!819773 (= res!378400 (not ((_ is Leaf!4295) (left!6492 (left!6492 (c!132782 totalInput!631))))))))

(assert (=> b!819773 (=> res!378400 e!541553)))

(declare-fun b!819774 () Bool)

(assert (=> b!819774 (= e!541553 (inv!11124 (left!6492 (left!6492 (c!132782 totalInput!631)))))))

(assert (= (and d!258124 c!132849) b!819772))

(assert (= (and d!258124 (not c!132849)) b!819773))

(assert (= (and b!819773 (not res!378400)) b!819774))

(declare-fun m!1060787 () Bool)

(assert (=> b!819772 m!1060787))

(declare-fun m!1060789 () Bool)

(assert (=> b!819774 m!1060789))

(assert (=> b!819459 d!258124))

(declare-fun d!258126 () Bool)

(declare-fun c!132850 () Bool)

(assert (=> d!258126 (= c!132850 ((_ is Node!2929) (right!6822 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun e!541554 () Bool)

(assert (=> d!258126 (= (inv!11119 (right!6822 (left!6492 (c!132782 totalInput!631)))) e!541554)))

(declare-fun b!819775 () Bool)

(assert (=> b!819775 (= e!541554 (inv!11123 (right!6822 (left!6492 (c!132782 totalInput!631)))))))

(declare-fun b!819776 () Bool)

(declare-fun e!541555 () Bool)

(assert (=> b!819776 (= e!541554 e!541555)))

(declare-fun res!378401 () Bool)

(assert (=> b!819776 (= res!378401 (not ((_ is Leaf!4295) (right!6822 (left!6492 (c!132782 totalInput!631))))))))

(assert (=> b!819776 (=> res!378401 e!541555)))

(declare-fun b!819777 () Bool)

(assert (=> b!819777 (= e!541555 (inv!11124 (right!6822 (left!6492 (c!132782 totalInput!631)))))))

(assert (= (and d!258126 c!132850) b!819775))

(assert (= (and d!258126 (not c!132850)) b!819776))

(assert (= (and b!819776 (not res!378401)) b!819777))

(declare-fun m!1060791 () Bool)

(assert (=> b!819775 m!1060791))

(declare-fun m!1060793 () Bool)

(assert (=> b!819777 m!1060793))

(assert (=> b!819459 d!258126))

(declare-fun b!819778 () Bool)

(declare-fun e!541556 () Bool)

(declare-fun tp!256418 () Bool)

(assert (=> b!819778 (= e!541556 (and tp_is_empty!3745 tp!256418))))

(assert (=> b!819458 (= tp!256396 e!541556)))

(assert (= (and b!819458 ((_ is Cons!8782) (t!92902 (innerList!2987 (xs!5618 (c!132782 totalInput!631)))))) b!819778))

(declare-fun tp!256421 () Bool)

(declare-fun tp!256420 () Bool)

(declare-fun b!819779 () Bool)

(declare-fun e!541558 () Bool)

(assert (=> b!819779 (= e!541558 (and (inv!11119 (left!6492 (left!6492 (right!6822 (c!132782 totalInput!631))))) tp!256421 (inv!11119 (right!6822 (left!6492 (right!6822 (c!132782 totalInput!631))))) tp!256420))))

(declare-fun b!819781 () Bool)

(declare-fun e!541557 () Bool)

(declare-fun tp!256419 () Bool)

(assert (=> b!819781 (= e!541557 tp!256419)))

(declare-fun b!819780 () Bool)

(assert (=> b!819780 (= e!541558 (and (inv!11125 (xs!5618 (left!6492 (right!6822 (c!132782 totalInput!631))))) e!541557))))

(assert (=> b!819462 (= tp!256402 (and (inv!11119 (left!6492 (right!6822 (c!132782 totalInput!631)))) e!541558))))

(assert (= (and b!819462 ((_ is Node!2929) (left!6492 (right!6822 (c!132782 totalInput!631))))) b!819779))

(assert (= b!819780 b!819781))

(assert (= (and b!819462 ((_ is Leaf!4295) (left!6492 (right!6822 (c!132782 totalInput!631))))) b!819780))

(declare-fun m!1060795 () Bool)

(assert (=> b!819779 m!1060795))

(declare-fun m!1060797 () Bool)

(assert (=> b!819779 m!1060797))

(declare-fun m!1060799 () Bool)

(assert (=> b!819780 m!1060799))

(assert (=> b!819462 m!1060271))

(declare-fun e!541560 () Bool)

(declare-fun b!819782 () Bool)

(declare-fun tp!256423 () Bool)

(declare-fun tp!256424 () Bool)

(assert (=> b!819782 (= e!541560 (and (inv!11119 (left!6492 (right!6822 (right!6822 (c!132782 totalInput!631))))) tp!256424 (inv!11119 (right!6822 (right!6822 (right!6822 (c!132782 totalInput!631))))) tp!256423))))

(declare-fun b!819784 () Bool)

(declare-fun e!541559 () Bool)

(declare-fun tp!256422 () Bool)

(assert (=> b!819784 (= e!541559 tp!256422)))

(declare-fun b!819783 () Bool)

(assert (=> b!819783 (= e!541560 (and (inv!11125 (xs!5618 (right!6822 (right!6822 (c!132782 totalInput!631))))) e!541559))))

(assert (=> b!819462 (= tp!256401 (and (inv!11119 (right!6822 (right!6822 (c!132782 totalInput!631)))) e!541560))))

(assert (= (and b!819462 ((_ is Node!2929) (right!6822 (right!6822 (c!132782 totalInput!631))))) b!819782))

(assert (= b!819783 b!819784))

(assert (= (and b!819462 ((_ is Leaf!4295) (right!6822 (right!6822 (c!132782 totalInput!631))))) b!819783))

(declare-fun m!1060801 () Bool)

(assert (=> b!819782 m!1060801))

(declare-fun m!1060803 () Bool)

(assert (=> b!819782 m!1060803))

(declare-fun m!1060805 () Bool)

(assert (=> b!819783 m!1060805))

(assert (=> b!819462 m!1060273))

(declare-fun b!819785 () Bool)

(declare-fun e!541561 () Bool)

(declare-fun tp!256425 () Bool)

(assert (=> b!819785 (= e!541561 (and tp_is_empty!3745 tp!256425))))

(assert (=> b!819461 (= tp!256397 e!541561)))

(assert (= (and b!819461 ((_ is Cons!8782) (innerList!2987 (xs!5618 (left!6492 (c!132782 totalInput!631)))))) b!819785))

(declare-fun b!819786 () Bool)

(declare-fun e!541562 () Bool)

(declare-fun tp!256426 () Bool)

(assert (=> b!819786 (= e!541562 (and tp_is_empty!3745 tp!256426))))

(assert (=> b!819464 (= tp!256400 e!541562)))

(assert (= (and b!819464 ((_ is Cons!8782) (innerList!2987 (xs!5618 (right!6822 (c!132782 totalInput!631)))))) b!819786))

(declare-fun tp!256429 () Bool)

(declare-fun tp!256428 () Bool)

(declare-fun b!819787 () Bool)

(declare-fun e!541564 () Bool)

(assert (=> b!819787 (= e!541564 (and (inv!11119 (left!6492 (left!6492 (left!6492 (c!132782 totalInput!631))))) tp!256429 (inv!11119 (right!6822 (left!6492 (left!6492 (c!132782 totalInput!631))))) tp!256428))))

(declare-fun b!819789 () Bool)

(declare-fun e!541563 () Bool)

(declare-fun tp!256427 () Bool)

(assert (=> b!819789 (= e!541563 tp!256427)))

(declare-fun b!819788 () Bool)

(assert (=> b!819788 (= e!541564 (and (inv!11125 (xs!5618 (left!6492 (left!6492 (c!132782 totalInput!631))))) e!541563))))

(assert (=> b!819459 (= tp!256399 (and (inv!11119 (left!6492 (left!6492 (c!132782 totalInput!631)))) e!541564))))

(assert (= (and b!819459 ((_ is Node!2929) (left!6492 (left!6492 (c!132782 totalInput!631))))) b!819787))

(assert (= b!819788 b!819789))

(assert (= (and b!819459 ((_ is Leaf!4295) (left!6492 (left!6492 (c!132782 totalInput!631))))) b!819788))

(declare-fun m!1060807 () Bool)

(assert (=> b!819787 m!1060807))

(declare-fun m!1060809 () Bool)

(assert (=> b!819787 m!1060809))

(declare-fun m!1060811 () Bool)

(assert (=> b!819788 m!1060811))

(assert (=> b!819459 m!1060265))

(declare-fun tp!256432 () Bool)

(declare-fun tp!256431 () Bool)

(declare-fun b!819790 () Bool)

(declare-fun e!541566 () Bool)

(assert (=> b!819790 (= e!541566 (and (inv!11119 (left!6492 (right!6822 (left!6492 (c!132782 totalInput!631))))) tp!256432 (inv!11119 (right!6822 (right!6822 (left!6492 (c!132782 totalInput!631))))) tp!256431))))

(declare-fun b!819792 () Bool)

(declare-fun e!541565 () Bool)

(declare-fun tp!256430 () Bool)

(assert (=> b!819792 (= e!541565 tp!256430)))

(declare-fun b!819791 () Bool)

(assert (=> b!819791 (= e!541566 (and (inv!11125 (xs!5618 (right!6822 (left!6492 (c!132782 totalInput!631))))) e!541565))))

(assert (=> b!819459 (= tp!256398 (and (inv!11119 (right!6822 (left!6492 (c!132782 totalInput!631)))) e!541566))))

(assert (= (and b!819459 ((_ is Node!2929) (right!6822 (left!6492 (c!132782 totalInput!631))))) b!819790))

(assert (= b!819791 b!819792))

(assert (= (and b!819459 ((_ is Leaf!4295) (right!6822 (left!6492 (c!132782 totalInput!631))))) b!819791))

(declare-fun m!1060813 () Bool)

(assert (=> b!819790 m!1060813))

(declare-fun m!1060815 () Bool)

(assert (=> b!819790 m!1060815))

(declare-fun m!1060817 () Bool)

(assert (=> b!819791 m!1060817))

(assert (=> b!819459 m!1060267))

(declare-fun b_lambda!27497 () Bool)

(assert (= b_lambda!27489 (or d!257894 b_lambda!27497)))

(declare-fun bs!228665 () Bool)

(declare-fun d!258128 () Bool)

(assert (= bs!228665 (and d!258128 d!257894)))

(assert (=> bs!228665 (= (dynLambda!4097 lambda!24204 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (noDuplicateKeys!26 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))))))

(assert (=> bs!228665 m!1060281))

(assert (=> b!819753 d!258128))

(declare-fun b_lambda!27499 () Bool)

(assert (= b_lambda!27467 (or d!257822 b_lambda!27499)))

(declare-fun bs!228666 () Bool)

(declare-fun d!258130 () Bool)

(assert (= bs!228666 (and d!258130 d!257822)))

(assert (=> bs!228666 (= (dynLambda!4098 lambda!24191 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!8781)))

(assert (=> d!258020 d!258130))

(declare-fun b_lambda!27501 () Bool)

(assert (= b_lambda!27465 (or b!819452 b_lambda!27501)))

(declare-fun bs!228667 () Bool)

(declare-fun d!258132 () Bool)

(assert (= bs!228667 (and d!258132 b!819452)))

(assert (=> bs!228667 (= (dynLambda!4097 lambda!24205 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505)))))) (noDuplicateKeys!26 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316505))))))))))

(declare-fun m!1060819 () Bool)

(assert (=> bs!228667 m!1060819))

(assert (=> b!819583 d!258132))

(declare-fun b_lambda!27503 () Bool)

(assert (= b_lambda!27495 (or b!819239 b_lambda!27503)))

(declare-fun bs!228668 () Bool)

(declare-fun d!258134 () Bool)

(assert (= bs!228668 (and d!258134 b!819239)))

(assert (=> bs!228668 (= (dynLambda!4095 lambda!24183 (h!14182 (t!92901 (toList!554 (map!1800 lt!316482))))) (validCacheMapFurthestNullableBody!5 (h!14182 (t!92901 (toList!554 (map!1800 lt!316482)))) totalInput!631))))

(declare-fun m!1060821 () Bool)

(assert (=> bs!228668 m!1060821))

(assert (=> b!819770 d!258134))

(declare-fun b_lambda!27505 () Bool)

(assert (= b_lambda!27469 (or b!819163 b_lambda!27505)))

(declare-fun bs!228669 () Bool)

(declare-fun d!258136 () Bool)

(assert (= bs!228669 (and d!258136 b!819163)))

(assert (=> bs!228669 (= (dynLambda!4095 lambda!24169 (h!14182 (t!92901 (t!92901 (toList!554 lt!316483))))) (validCacheMapFurthestNullableBody!5 (h!14182 (t!92901 (t!92901 (toList!554 lt!316483)))) totalInput!631))))

(declare-fun m!1060823 () Bool)

(assert (=> bs!228669 m!1060823))

(assert (=> b!819642 d!258136))

(declare-fun b_lambda!27507 () Bool)

(assert (= b_lambda!27491 (or b!819244 b_lambda!27507)))

(declare-fun bs!228670 () Bool)

(declare-fun d!258138 () Bool)

(assert (= bs!228670 (and d!258138 b!819244)))

(assert (=> bs!228670 (= (dynLambda!4097 lambda!24186 (h!14185 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482))))))) (noDuplicateKeys!26 (_2!5964 (h!14185 (t!92904 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))))))))

(declare-fun m!1060825 () Bool)

(assert (=> bs!228670 m!1060825))

(assert (=> b!819755 d!258138))

(declare-fun b_lambda!27509 () Bool)

(assert (= b_lambda!27493 (or d!257880 b_lambda!27509)))

(declare-fun bs!228671 () Bool)

(declare-fun d!258140 () Bool)

(assert (= bs!228671 (and d!258140 d!257880)))

(declare-fun allKeysSameHash!24 (List!8795 (_ BitVec 64) Hashable!1223) Bool)

(assert (=> bs!228671 (= (dynLambda!4097 lambda!24201 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (allKeysSameHash!24 (_2!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (_1!5964 (h!14185 (toList!556 (map!1802 (v!19072 (underlying!2686 lt!316482)))))) (hashF!3134 lt!316482)))))

(declare-fun m!1060827 () Bool)

(assert (=> bs!228671 m!1060827))

(assert (=> b!819766 d!258140))

(check-sat (not bs!228670) (not b!819635) (not b_lambda!27453) (not d!257966) (not b!819749) (not b!819754) (not d!258020) (not b!819751) (not d!258014) (not b!819638) (not b!819588) (not b!819629) (not b!819589) (not d!258000) (not d!258032) (not d!257996) (not b!819740) (not b_lambda!27507) (not b_lambda!27509) (not b!819594) (not bs!228665) (not b!819756) (not b_lambda!27451) (not b!819608) (not b!819789) (not b!819624) (not b!819596) (not b!819459) (not d!258110) (not b!819645) (not b!819768) (not b!819731) (not b!819631) (not d!258104) (not bs!228668) (not bm!47048) (not b!819640) (not b!819783) (not b_lambda!27449) (not b!819462) (not b!819598) (not b_lambda!27497) (not b!819790) (not b!819730) (not b!819787) (not b!819786) (not b!819777) (not b!819530) (not b!819606) (not d!258038) (not d!258010) (not b!819767) (not b!819772) (not b_lambda!27505) (not d!258016) (not b!819733) (not d!258028) (not b!819600) (not b!819739) (not b!819788) (not d!258120) (not b!819632) (not b!819634) (not d!258026) (not b!819782) (not d!258102) (not b!819609) (not b!819742) (not b_lambda!27499) tp_is_empty!3745 (not d!257988) (not b!819587) (not b!819771) (not b!819778) (not b!819628) (not bs!228669) (not b!819590) (not b!819741) (not b!819592) (not d!258114) (not b!819644) (not b!819732) (not b!819602) (not b!819774) (not b!819573) (not b!819593) (not bm!47049) (not b!819585) (not bs!228667) (not b!819605) (not b!819531) (not b!819643) (not b_lambda!27501) (not d!257960) (not b!819785) (not bs!228671) (not b_lambda!27503) (not d!258008) (not b!819792) (not b!819775) (not b!819779) (not b!819597) (not d!258118) (not b!819591) (not b!819599) (not b!819627) (not b!819574) (not b!819637) (not b!819764) (not b!819738) (not b!819763) (not bm!47050) (not d!258002) (not d!258098) (not b!819781) (not b!819784) (not b!819780) (not b!819769) (not d!257964) (not b!819765) (not b!819582) (not b!819584) (not b_lambda!27429) (not b!819791) (not b!819595))
(check-sat)
