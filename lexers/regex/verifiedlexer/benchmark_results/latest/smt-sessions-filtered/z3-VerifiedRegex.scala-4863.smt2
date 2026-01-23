; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249294 () Bool)

(assert start!249294)

(declare-fun b!2578175 () Bool)

(assert (=> b!2578175 true))

(declare-fun e!1626940 () Bool)

(declare-datatypes ((C!15456 0))(
  ( (C!15457 (val!9404 Int)) )
))
(declare-datatypes ((Regex!7649 0))(
  ( (ElementMatch!7649 (c!415311 C!15456)) (Concat!12373 (regOne!15810 Regex!7649) (regTwo!15810 Regex!7649)) (EmptyExpr!7649) (Star!7649 (reg!7978 Regex!7649)) (EmptyLang!7649) (Union!7649 (regOne!15811 Regex!7649) (regTwo!15811 Regex!7649)) )
))
(declare-datatypes ((List!29775 0))(
  ( (Nil!29675) (Cons!29675 (h!35095 Regex!7649) (t!211652 List!29775)) )
))
(declare-datatypes ((Context!4250 0))(
  ( (Context!4251 (exprs!2625 List!29775)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!29632 0))(
  ( (tuple2!29633 (_1!17358 (InoxSet Context!4250)) (_2!17358 Int)) )
))
(declare-datatypes ((tuple2!29634 0))(
  ( (tuple2!29635 (_1!17359 tuple2!29632) (_2!17359 Int)) )
))
(declare-datatypes ((List!29776 0))(
  ( (Nil!29676) (Cons!29676 (h!35096 tuple2!29634) (t!211653 List!29776)) )
))
(declare-datatypes ((ListMap!1197 0))(
  ( (ListMap!1198 (toList!1718 List!29776)) )
))
(declare-fun lt!906942 () ListMap!1197)

(declare-fun lambda!95369 () Int)

(declare-fun forall!6039 (List!29776 Int) Bool)

(assert (=> b!2578175 (= e!1626940 (not (forall!6039 (toList!1718 lt!906942) lambda!95369)))))

(declare-fun b!2578173 () Bool)

(declare-fun e!1626938 () Bool)

(declare-fun lt!906939 () Bool)

(assert (=> b!2578173 (= e!1626938 (not lt!906939))))

(declare-fun lt!906941 () Bool)

(assert (=> b!2578173 (= lt!906939 (not lt!906941))))

(declare-datatypes ((array!12255 0))(
  ( (array!12256 (arr!5466 (Array (_ BitVec 32) List!29776)) (size!22983 (_ BitVec 32))) )
))
(declare-datatypes ((array!12257 0))(
  ( (array!12258 (arr!5467 (Array (_ BitVec 32) (_ BitVec 64))) (size!22984 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6876 0))(
  ( (LongMapFixedSize!6877 (defaultEntry!3812 Int) (mask!8853 (_ BitVec 32)) (extraKeys!3686 (_ BitVec 32)) (zeroValue!3696 List!29776) (minValue!3696 List!29776) (_size!6923 (_ BitVec 32)) (_keys!3735 array!12257) (_values!3718 array!12255) (_vacant!3499 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13569 0))(
  ( (Cell!13570 (v!31997 LongMapFixedSize!6876)) )
))
(declare-datatypes ((MutLongMap!3438 0))(
  ( (LongMap!3438 (underlying!7083 Cell!13569)) (MutLongMapExt!3437 (__x!19258 Int)) )
))
(declare-datatypes ((Cell!13571 0))(
  ( (Cell!13572 (v!31998 MutLongMap!3438)) )
))
(declare-datatypes ((Hashable!3358 0))(
  ( (HashableExt!3357 (__x!19259 Int)) )
))
(declare-datatypes ((MutableMap!3348 0))(
  ( (MutableMapExt!3347 (__x!19260 Int)) (HashMap!3348 (underlying!7084 Cell!13571) (hashF!5381 Hashable!3358) (_size!6924 (_ BitVec 32)) (defaultValue!3514 Int)) )
))
(declare-fun lt!906940 () MutableMap!3348)

(declare-datatypes ((List!29777 0))(
  ( (Nil!29677) (Cons!29677 (h!35097 C!15456) (t!211654 List!29777)) )
))
(declare-datatypes ((IArray!18531 0))(
  ( (IArray!18532 (innerList!9323 List!29777)) )
))
(declare-datatypes ((Conc!9263 0))(
  ( (Node!9263 (left!22606 Conc!9263) (right!22936 Conc!9263) (csize!18756 Int) (cheight!9474 Int)) (Leaf!14127 (xs!12247 IArray!18531) (csize!18757 Int)) (Empty!9263) )
))
(declare-datatypes ((BalanceConc!18140 0))(
  ( (BalanceConc!18141 (c!415312 Conc!9263)) )
))
(declare-fun totalInput!583 () BalanceConc!18140)

(declare-fun validCacheMapFindLongestMatch!61 (MutableMap!3348 BalanceConc!18140) Bool)

(assert (=> b!2578173 (= lt!906939 (validCacheMapFindLongestMatch!61 lt!906940 totalInput!583))))

(declare-fun e!1626941 () Bool)

(assert (=> b!2578173 (= lt!906941 e!1626941)))

(declare-fun res!1084380 () Bool)

(assert (=> b!2578173 (=> res!1084380 e!1626941)))

(declare-fun valid!2651 (MutableMap!3348) Bool)

(assert (=> b!2578173 (= res!1084380 (not (valid!2651 lt!906940)))))

(declare-fun hashF!508 () Hashable!3358)

(declare-fun initialSize!16 () (_ BitVec 32))

(declare-fun lambda!95368 () Int)

(declare-fun getEmptyHashMap!25 (Int Hashable!3358 (_ BitVec 32)) MutableMap!3348)

(assert (=> b!2578173 (= lt!906940 (getEmptyHashMap!25 lambda!95368 hashF!508 initialSize!16))))

(declare-fun b!2578174 () Bool)

(assert (=> b!2578174 (= e!1626941 e!1626940)))

(declare-fun res!1084382 () Bool)

(assert (=> b!2578174 (=> res!1084382 e!1626940)))

(declare-fun invariantList!432 (List!29776) Bool)

(assert (=> b!2578174 (= res!1084382 (not (invariantList!432 (toList!1718 lt!906942))))))

(declare-fun map!6571 (MutableMap!3348) ListMap!1197)

(assert (=> b!2578174 (= lt!906942 (map!6571 lt!906940))))

(declare-fun res!1084381 () Bool)

(assert (=> start!249294 (=> (not res!1084381) (not e!1626938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249294 (= res!1084381 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(assert (=> start!249294 e!1626938))

(assert (=> start!249294 true))

(declare-fun e!1626939 () Bool)

(declare-fun inv!40036 (BalanceConc!18140) Bool)

(assert (=> start!249294 (and (inv!40036 totalInput!583) e!1626939)))

(declare-fun b!2578176 () Bool)

(declare-fun tp!819238 () Bool)

(declare-fun inv!40037 (Conc!9263) Bool)

(assert (=> b!2578176 (= e!1626939 (and (inv!40037 (c!415312 totalInput!583)) tp!819238))))

(assert (= (and start!249294 res!1084381) b!2578173))

(assert (= (and b!2578173 (not res!1084380)) b!2578174))

(assert (= (and b!2578174 (not res!1084382)) b!2578175))

(assert (= start!249294 b!2578176))

(declare-fun m!2912909 () Bool)

(assert (=> b!2578173 m!2912909))

(declare-fun m!2912911 () Bool)

(assert (=> b!2578173 m!2912911))

(declare-fun m!2912913 () Bool)

(assert (=> b!2578173 m!2912913))

(declare-fun m!2912915 () Bool)

(assert (=> b!2578174 m!2912915))

(declare-fun m!2912917 () Bool)

(assert (=> b!2578174 m!2912917))

(declare-fun m!2912919 () Bool)

(assert (=> b!2578175 m!2912919))

(declare-fun m!2912921 () Bool)

(assert (=> start!249294 m!2912921))

(declare-fun m!2912923 () Bool)

(assert (=> start!249294 m!2912923))

(declare-fun m!2912925 () Bool)

(assert (=> b!2578176 m!2912925))

(check-sat (not start!249294) (not b!2578174) (not b!2578173) (not b!2578175) (not b!2578176))
(check-sat)
(get-model)

(declare-fun bs!470939 () Bool)

(declare-fun b!2578219 () Bool)

(assert (= bs!470939 (and b!2578219 b!2578175)))

(declare-fun lambda!95383 () Int)

(assert (=> bs!470939 (= lambda!95383 lambda!95369)))

(assert (=> b!2578219 true))

(declare-fun d!729238 () Bool)

(declare-fun res!1084408 () Bool)

(declare-fun e!1626966 () Bool)

(assert (=> d!729238 (=> (not res!1084408) (not e!1626966))))

(assert (=> d!729238 (= res!1084408 (valid!2651 lt!906940))))

(assert (=> d!729238 (= (validCacheMapFindLongestMatch!61 lt!906940 totalInput!583) e!1626966)))

(declare-fun b!2578218 () Bool)

(declare-fun res!1084409 () Bool)

(assert (=> b!2578218 (=> (not res!1084409) (not e!1626966))))

(assert (=> b!2578218 (= res!1084409 (invariantList!432 (toList!1718 (map!6571 lt!906940))))))

(assert (=> b!2578219 (= e!1626966 (forall!6039 (toList!1718 (map!6571 lt!906940)) lambda!95383))))

(assert (= (and d!729238 res!1084408) b!2578218))

(assert (= (and b!2578218 res!1084409) b!2578219))

(assert (=> d!729238 m!2912911))

(assert (=> b!2578218 m!2912917))

(declare-fun m!2912953 () Bool)

(assert (=> b!2578218 m!2912953))

(assert (=> b!2578219 m!2912917))

(declare-fun m!2912955 () Bool)

(assert (=> b!2578219 m!2912955))

(assert (=> b!2578173 d!729238))

(declare-fun d!729248 () Bool)

(declare-fun res!1084420 () Bool)

(declare-fun e!1626981 () Bool)

(assert (=> d!729248 (=> (not res!1084420) (not e!1626981))))

(declare-fun valid!2653 (MutLongMap!3438) Bool)

(assert (=> d!729248 (= res!1084420 (valid!2653 (v!31998 (underlying!7084 lt!906940))))))

(assert (=> d!729248 (= (valid!2651 lt!906940) e!1626981)))

(declare-fun b!2578241 () Bool)

(declare-fun res!1084421 () Bool)

(assert (=> b!2578241 (=> (not res!1084421) (not e!1626981))))

(declare-fun lambda!95386 () Int)

(declare-datatypes ((tuple2!29638 0))(
  ( (tuple2!29639 (_1!17361 (_ BitVec 64)) (_2!17361 List!29776)) )
))
(declare-datatypes ((List!29779 0))(
  ( (Nil!29679) (Cons!29679 (h!35099 tuple2!29638) (t!211656 List!29779)) )
))
(declare-fun forall!6041 (List!29779 Int) Bool)

(declare-datatypes ((ListLongMap!671 0))(
  ( (ListLongMap!672 (toList!1720 List!29779)) )
))
(declare-fun map!6573 (MutLongMap!3438) ListLongMap!671)

(assert (=> b!2578241 (= res!1084421 (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95386))))

(declare-fun b!2578242 () Bool)

(declare-fun allKeysSameHashInMap!218 (ListLongMap!671 Hashable!3358) Bool)

(assert (=> b!2578242 (= e!1626981 (allKeysSameHashInMap!218 (map!6573 (v!31998 (underlying!7084 lt!906940))) (hashF!5381 lt!906940)))))

(assert (= (and d!729248 res!1084420) b!2578241))

(assert (= (and b!2578241 res!1084421) b!2578242))

(declare-fun m!2912975 () Bool)

(assert (=> d!729248 m!2912975))

(declare-fun m!2912977 () Bool)

(assert (=> b!2578241 m!2912977))

(declare-fun m!2912979 () Bool)

(assert (=> b!2578241 m!2912979))

(assert (=> b!2578242 m!2912977))

(assert (=> b!2578242 m!2912977))

(declare-fun m!2912981 () Bool)

(assert (=> b!2578242 m!2912981))

(assert (=> b!2578173 d!729248))

(declare-fun b!2578256 () Bool)

(declare-fun e!1626991 () Bool)

(declare-fun lt!906963 () MutLongMap!3438)

(get-info :version)

(assert (=> b!2578256 (= e!1626991 ((_ is LongMap!3438) lt!906963))))

(assert (=> b!2578256 (= lt!906963 (v!31998 (underlying!7084 (getEmptyHashMap!25 lambda!95368 hashF!508 initialSize!16))))))

(declare-fun b!2578255 () Bool)

(declare-fun e!1626990 () Bool)

(assert (=> b!2578255 (= e!1626990 e!1626991)))

(declare-fun d!729258 () Bool)

(assert (=> d!729258 (= true e!1626990)))

(assert (= b!2578255 b!2578256))

(assert (= (and d!729258 ((_ is HashMap!3348) (getEmptyHashMap!25 lambda!95368 hashF!508 initialSize!16))) b!2578255))

(declare-fun e!1626985 () Bool)

(assert (=> d!729258 e!1626985))

(declare-fun res!1084426 () Bool)

(assert (=> d!729258 (=> (not res!1084426) (not e!1626985))))

(assert (=> d!729258 (= res!1084426 true)))

(declare-fun lambda!95391 () Int)

(declare-fun lt!906959 () MutableMap!3348)

(declare-fun getEmptyLongMap!19 (Int (_ BitVec 32)) MutLongMap!3438)

(assert (=> d!729258 (= lt!906959 (HashMap!3348 (Cell!13572 (getEmptyLongMap!19 lambda!95391 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95368))))

(declare-fun lt!906960 () MutableMap!3348)

(assert (=> d!729258 (= lt!906960 (HashMap!3348 (Cell!13572 (getEmptyLongMap!19 lambda!95391 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95368))))

(assert (=> d!729258 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729258 (= (getEmptyHashMap!25 lambda!95368 hashF!508 initialSize!16) lt!906960)))

(declare-fun b!2578247 () Bool)

(declare-fun res!1084427 () Bool)

(assert (=> b!2578247 (=> (not res!1084427) (not e!1626985))))

(assert (=> b!2578247 (= res!1084427 (valid!2651 lt!906960))))

(declare-fun b!2578248 () Bool)

(declare-fun size!22986 (MutableMap!3348) (_ BitVec 32))

(assert (=> b!2578248 (= e!1626985 (= (size!22986 lt!906960) #b00000000000000000000000000000000))))

(assert (= (and d!729258 res!1084426) b!2578247))

(assert (= (and b!2578247 res!1084427) b!2578248))

(declare-fun m!2912983 () Bool)

(assert (=> d!729258 m!2912983))

(assert (=> d!729258 m!2912983))

(assert (=> d!729258 m!2912921))

(declare-fun m!2912985 () Bool)

(assert (=> b!2578247 m!2912985))

(declare-fun m!2912987 () Bool)

(assert (=> b!2578248 m!2912987))

(assert (=> b!2578173 d!729258))

(declare-fun d!729260 () Bool)

(declare-fun noDuplicatedKeys!73 (List!29776) Bool)

(assert (=> d!729260 (= (invariantList!432 (toList!1718 lt!906942)) (noDuplicatedKeys!73 (toList!1718 lt!906942)))))

(declare-fun bs!470943 () Bool)

(assert (= bs!470943 d!729260))

(declare-fun m!2912989 () Bool)

(assert (=> bs!470943 m!2912989))

(assert (=> b!2578174 d!729260))

(declare-fun d!729262 () Bool)

(declare-fun lt!906966 () ListMap!1197)

(assert (=> d!729262 (invariantList!432 (toList!1718 lt!906966))))

(declare-fun extractMap!211 (List!29779) ListMap!1197)

(assert (=> d!729262 (= lt!906966 (extractMap!211 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729262 (valid!2651 lt!906940)))

(assert (=> d!729262 (= (map!6571 lt!906940) lt!906966)))

(declare-fun bs!470944 () Bool)

(assert (= bs!470944 d!729262))

(declare-fun m!2912991 () Bool)

(assert (=> bs!470944 m!2912991))

(assert (=> bs!470944 m!2912977))

(declare-fun m!2912993 () Bool)

(assert (=> bs!470944 m!2912993))

(assert (=> bs!470944 m!2912911))

(assert (=> b!2578174 d!729262))

(declare-fun d!729264 () Bool)

(declare-fun res!1084432 () Bool)

(declare-fun e!1626996 () Bool)

(assert (=> d!729264 (=> res!1084432 e!1626996)))

(assert (=> d!729264 (= res!1084432 ((_ is Nil!29676) (toList!1718 lt!906942)))))

(assert (=> d!729264 (= (forall!6039 (toList!1718 lt!906942) lambda!95369) e!1626996)))

(declare-fun b!2578261 () Bool)

(declare-fun e!1626997 () Bool)

(assert (=> b!2578261 (= e!1626996 e!1626997)))

(declare-fun res!1084433 () Bool)

(assert (=> b!2578261 (=> (not res!1084433) (not e!1626997))))

(declare-fun dynLambda!12532 (Int tuple2!29634) Bool)

(assert (=> b!2578261 (= res!1084433 (dynLambda!12532 lambda!95369 (h!35096 (toList!1718 lt!906942))))))

(declare-fun b!2578262 () Bool)

(assert (=> b!2578262 (= e!1626997 (forall!6039 (t!211653 (toList!1718 lt!906942)) lambda!95369))))

(assert (= (and d!729264 (not res!1084432)) b!2578261))

(assert (= (and b!2578261 res!1084433) b!2578262))

(declare-fun b_lambda!76443 () Bool)

(assert (=> (not b_lambda!76443) (not b!2578261)))

(declare-fun m!2912995 () Bool)

(assert (=> b!2578261 m!2912995))

(declare-fun m!2912997 () Bool)

(assert (=> b!2578262 m!2912997))

(assert (=> b!2578175 d!729264))

(declare-fun d!729266 () Bool)

(assert (=> d!729266 (= (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249294 d!729266))

(declare-fun d!729270 () Bool)

(declare-fun isBalanced!2822 (Conc!9263) Bool)

(assert (=> d!729270 (= (inv!40036 totalInput!583) (isBalanced!2822 (c!415312 totalInput!583)))))

(declare-fun bs!470945 () Bool)

(assert (= bs!470945 d!729270))

(declare-fun m!2912999 () Bool)

(assert (=> bs!470945 m!2912999))

(assert (=> start!249294 d!729270))

(declare-fun d!729272 () Bool)

(declare-fun c!415318 () Bool)

(assert (=> d!729272 (= c!415318 ((_ is Node!9263) (c!415312 totalInput!583)))))

(declare-fun e!1627006 () Bool)

(assert (=> d!729272 (= (inv!40037 (c!415312 totalInput!583)) e!1627006)))

(declare-fun b!2578275 () Bool)

(declare-fun inv!40041 (Conc!9263) Bool)

(assert (=> b!2578275 (= e!1627006 (inv!40041 (c!415312 totalInput!583)))))

(declare-fun b!2578276 () Bool)

(declare-fun e!1627007 () Bool)

(assert (=> b!2578276 (= e!1627006 e!1627007)))

(declare-fun res!1084442 () Bool)

(assert (=> b!2578276 (= res!1084442 (not ((_ is Leaf!14127) (c!415312 totalInput!583))))))

(assert (=> b!2578276 (=> res!1084442 e!1627007)))

(declare-fun b!2578277 () Bool)

(declare-fun inv!40042 (Conc!9263) Bool)

(assert (=> b!2578277 (= e!1627007 (inv!40042 (c!415312 totalInput!583)))))

(assert (= (and d!729272 c!415318) b!2578275))

(assert (= (and d!729272 (not c!415318)) b!2578276))

(assert (= (and b!2578276 (not res!1084442)) b!2578277))

(declare-fun m!2913007 () Bool)

(assert (=> b!2578275 m!2913007))

(declare-fun m!2913009 () Bool)

(assert (=> b!2578277 m!2913009))

(assert (=> b!2578176 d!729272))

(declare-fun tp!819255 () Bool)

(declare-fun e!1627012 () Bool)

(declare-fun b!2578288 () Bool)

(declare-fun tp!819254 () Bool)

(assert (=> b!2578288 (= e!1627012 (and (inv!40037 (left!22606 (c!415312 totalInput!583))) tp!819254 (inv!40037 (right!22936 (c!415312 totalInput!583))) tp!819255))))

(declare-fun b!2578290 () Bool)

(declare-fun e!1627013 () Bool)

(declare-fun tp!819256 () Bool)

(assert (=> b!2578290 (= e!1627013 tp!819256)))

(declare-fun b!2578289 () Bool)

(declare-fun inv!40043 (IArray!18531) Bool)

(assert (=> b!2578289 (= e!1627012 (and (inv!40043 (xs!12247 (c!415312 totalInput!583))) e!1627013))))

(assert (=> b!2578176 (= tp!819238 (and (inv!40037 (c!415312 totalInput!583)) e!1627012))))

(assert (= (and b!2578176 ((_ is Node!9263) (c!415312 totalInput!583))) b!2578288))

(assert (= b!2578289 b!2578290))

(assert (= (and b!2578176 ((_ is Leaf!14127) (c!415312 totalInput!583))) b!2578289))

(declare-fun m!2913013 () Bool)

(assert (=> b!2578288 m!2913013))

(declare-fun m!2913015 () Bool)

(assert (=> b!2578288 m!2913015))

(declare-fun m!2913017 () Bool)

(assert (=> b!2578289 m!2913017))

(assert (=> b!2578176 m!2912925))

(declare-fun b_lambda!76445 () Bool)

(assert (= b_lambda!76443 (or b!2578175 b_lambda!76445)))

(declare-fun bs!470948 () Bool)

(declare-fun d!729278 () Bool)

(assert (= bs!470948 (and d!729278 b!2578175)))

(declare-fun validCacheMapFindLongestMatchBody!4 (tuple2!29634 BalanceConc!18140) Bool)

(assert (=> bs!470948 (= (dynLambda!12532 lambda!95369 (h!35096 (toList!1718 lt!906942))) (validCacheMapFindLongestMatchBody!4 (h!35096 (toList!1718 lt!906942)) totalInput!583))))

(declare-fun m!2913019 () Bool)

(assert (=> bs!470948 m!2913019))

(assert (=> b!2578261 d!729278))

(check-sat (not b!2578290) (not d!729260) (not b!2578241) (not b!2578277) (not d!729248) (not d!729262) (not b!2578288) (not b!2578176) (not b!2578248) (not d!729270) (not b!2578275) (not d!729258) (not b!2578218) (not b!2578262) (not d!729238) (not b!2578247) (not bs!470948) (not b_lambda!76445) (not b!2578289) (not b!2578219) (not b!2578242))
(check-sat)
(get-model)

(declare-fun d!729320 () Bool)

(declare-fun valid!2655 (LongMapFixedSize!6876) Bool)

(assert (=> d!729320 (= (valid!2653 (v!31998 (underlying!7084 lt!906940))) (valid!2655 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))))))

(declare-fun bs!470962 () Bool)

(assert (= bs!470962 d!729320))

(declare-fun m!2913115 () Bool)

(assert (=> bs!470962 m!2913115))

(assert (=> d!729248 d!729320))

(declare-fun d!729322 () Bool)

(assert (=> d!729322 (= (invariantList!432 (toList!1718 lt!906966)) (noDuplicatedKeys!73 (toList!1718 lt!906966)))))

(declare-fun bs!470963 () Bool)

(assert (= bs!470963 d!729322))

(declare-fun m!2913117 () Bool)

(assert (=> bs!470963 m!2913117))

(assert (=> d!729262 d!729322))

(declare-fun bs!470964 () Bool)

(declare-fun d!729324 () Bool)

(assert (= bs!470964 (and d!729324 b!2578241)))

(declare-fun lambda!95401 () Int)

(assert (=> bs!470964 (= lambda!95401 lambda!95386)))

(declare-fun lt!906978 () ListMap!1197)

(assert (=> d!729324 (invariantList!432 (toList!1718 lt!906978))))

(declare-fun e!1627062 () ListMap!1197)

(assert (=> d!729324 (= lt!906978 e!1627062)))

(declare-fun c!415326 () Bool)

(assert (=> d!729324 (= c!415326 ((_ is Cons!29679) (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729324 (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95401)))

(assert (=> d!729324 (= (extractMap!211 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lt!906978)))

(declare-fun b!2578375 () Bool)

(declare-fun addToMapMapFromBucket!22 (List!29776 ListMap!1197) ListMap!1197)

(assert (=> b!2578375 (= e!1627062 (addToMapMapFromBucket!22 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(declare-fun b!2578376 () Bool)

(assert (=> b!2578376 (= e!1627062 (ListMap!1198 Nil!29676))))

(assert (= (and d!729324 c!415326) b!2578375))

(assert (= (and d!729324 (not c!415326)) b!2578376))

(declare-fun m!2913119 () Bool)

(assert (=> d!729324 m!2913119))

(declare-fun m!2913121 () Bool)

(assert (=> d!729324 m!2913121))

(declare-fun m!2913123 () Bool)

(assert (=> b!2578375 m!2913123))

(assert (=> b!2578375 m!2913123))

(declare-fun m!2913125 () Bool)

(assert (=> b!2578375 m!2913125))

(assert (=> d!729262 d!729324))

(declare-fun d!729326 () Bool)

(declare-fun map!6575 (LongMapFixedSize!6876) ListLongMap!671)

(assert (=> d!729326 (= (map!6573 (v!31998 (underlying!7084 lt!906940))) (map!6575 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))))))

(declare-fun bs!470965 () Bool)

(assert (= bs!470965 d!729326))

(declare-fun m!2913127 () Bool)

(assert (=> bs!470965 m!2913127))

(assert (=> d!729262 d!729326))

(assert (=> d!729262 d!729248))

(declare-fun d!729328 () Bool)

(declare-fun e!1627066 () Bool)

(assert (=> d!729328 e!1627066))

(declare-fun res!1084506 () Bool)

(assert (=> d!729328 (=> (not res!1084506) (not e!1627066))))

(assert (=> d!729328 (= res!1084506 true)))

(declare-fun lt!906984 () MutLongMap!3438)

(declare-fun getNewLongMapFixedSize!15 ((_ BitVec 32) Int) LongMapFixedSize!6876)

(assert (=> d!729328 (= lt!906984 (LongMap!3438 (Cell!13570 (getNewLongMapFixedSize!15 (bvsub initialSize!16 #b00000000000000000000000000000001) lambda!95391))))))

(declare-fun lt!906983 () MutLongMap!3438)

(assert (=> d!729328 (= lt!906983 (LongMap!3438 (Cell!13570 (getNewLongMapFixedSize!15 (bvsub initialSize!16 #b00000000000000000000000000000001) lambda!95391))))))

(assert (=> d!729328 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729328 (= (getEmptyLongMap!19 lambda!95391 initialSize!16) lt!906983)))

(declare-fun b!2578381 () Bool)

(declare-fun res!1084507 () Bool)

(assert (=> b!2578381 (=> (not res!1084507) (not e!1627066))))

(assert (=> b!2578381 (= res!1084507 (valid!2653 lt!906983))))

(declare-fun b!2578382 () Bool)

(declare-fun size!22991 (MutLongMap!3438) (_ BitVec 32))

(assert (=> b!2578382 (= e!1627066 (= (size!22991 lt!906983) #b00000000000000000000000000000000))))

(assert (= (and d!729328 res!1084506) b!2578381))

(assert (= (and b!2578381 res!1084507) b!2578382))

(declare-fun m!2913129 () Bool)

(assert (=> d!729328 m!2913129))

(assert (=> d!729328 m!2912921))

(declare-fun m!2913131 () Bool)

(assert (=> b!2578381 m!2913131))

(declare-fun m!2913133 () Bool)

(assert (=> b!2578382 m!2913133))

(assert (=> d!729258 d!729328))

(assert (=> d!729258 d!729266))

(declare-fun bs!470966 () Bool)

(declare-fun d!729330 () Bool)

(assert (= bs!470966 (and d!729330 b!2578241)))

(declare-fun lambda!95404 () Int)

(assert (=> bs!470966 (not (= lambda!95404 lambda!95386))))

(declare-fun bs!470967 () Bool)

(assert (= bs!470967 (and d!729330 d!729324)))

(assert (=> bs!470967 (not (= lambda!95404 lambda!95401))))

(assert (=> d!729330 true))

(assert (=> d!729330 (= (allKeysSameHashInMap!218 (map!6573 (v!31998 (underlying!7084 lt!906940))) (hashF!5381 lt!906940)) (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95404))))

(declare-fun bs!470968 () Bool)

(assert (= bs!470968 d!729330))

(declare-fun m!2913135 () Bool)

(assert (=> bs!470968 m!2913135))

(assert (=> b!2578242 d!729330))

(assert (=> b!2578242 d!729326))

(declare-fun d!729332 () Bool)

(declare-fun res!1084512 () Bool)

(declare-fun e!1627069 () Bool)

(assert (=> d!729332 (=> (not res!1084512) (not e!1627069))))

(assert (=> d!729332 (= res!1084512 (>= (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) 0))))

(assert (=> d!729332 (= (validCacheMapFindLongestMatchBody!4 (h!35096 (toList!1718 lt!906942)) totalInput!583) e!1627069)))

(declare-fun b!2578389 () Bool)

(declare-fun res!1084513 () Bool)

(assert (=> b!2578389 (=> (not res!1084513) (not e!1627069))))

(declare-fun size!22992 (BalanceConc!18140) Int)

(assert (=> b!2578389 (= res!1084513 (<= (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (size!22992 totalInput!583)))))

(declare-fun b!2578390 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!18 ((InoxSet Context!4250) Int BalanceConc!18140 Int) Int)

(assert (=> b!2578390 (= e!1627069 (= (_2!17359 (h!35096 (toList!1718 lt!906942))) (findLongestMatchInnerZipperFastV2!18 (_1!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) totalInput!583 (size!22992 totalInput!583))))))

(assert (= (and d!729332 res!1084512) b!2578389))

(assert (= (and b!2578389 res!1084513) b!2578390))

(declare-fun m!2913137 () Bool)

(assert (=> b!2578389 m!2913137))

(assert (=> b!2578390 m!2913137))

(assert (=> b!2578390 m!2913137))

(declare-fun m!2913139 () Bool)

(assert (=> b!2578390 m!2913139))

(assert (=> bs!470948 d!729332))

(declare-fun d!729334 () Bool)

(declare-fun res!1084518 () Bool)

(declare-fun e!1627074 () Bool)

(assert (=> d!729334 (=> res!1084518 e!1627074)))

(assert (=> d!729334 (= res!1084518 ((_ is Nil!29679) (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729334 (= (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95386) e!1627074)))

(declare-fun b!2578395 () Bool)

(declare-fun e!1627075 () Bool)

(assert (=> b!2578395 (= e!1627074 e!1627075)))

(declare-fun res!1084519 () Bool)

(assert (=> b!2578395 (=> (not res!1084519) (not e!1627075))))

(declare-fun dynLambda!12534 (Int tuple2!29638) Bool)

(assert (=> b!2578395 (= res!1084519 (dynLambda!12534 lambda!95386 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun b!2578396 () Bool)

(assert (=> b!2578396 (= e!1627075 (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lambda!95386))))

(assert (= (and d!729334 (not res!1084518)) b!2578395))

(assert (= (and b!2578395 res!1084519) b!2578396))

(declare-fun b_lambda!76459 () Bool)

(assert (=> (not b_lambda!76459) (not b!2578395)))

(declare-fun m!2913141 () Bool)

(assert (=> b!2578395 m!2913141))

(declare-fun m!2913143 () Bool)

(assert (=> b!2578396 m!2913143))

(assert (=> b!2578241 d!729334))

(assert (=> b!2578241 d!729326))

(declare-fun d!729336 () Bool)

(declare-fun size!22993 (List!29777) Int)

(assert (=> d!729336 (= (inv!40043 (xs!12247 (c!415312 totalInput!583))) (<= (size!22993 (innerList!9323 (xs!12247 (c!415312 totalInput!583)))) 2147483647))))

(declare-fun bs!470969 () Bool)

(assert (= bs!470969 d!729336))

(declare-fun m!2913145 () Bool)

(assert (=> bs!470969 m!2913145))

(assert (=> b!2578289 d!729336))

(assert (=> d!729238 d!729248))

(declare-fun d!729338 () Bool)

(declare-fun c!415327 () Bool)

(assert (=> d!729338 (= c!415327 ((_ is Node!9263) (left!22606 (c!415312 totalInput!583))))))

(declare-fun e!1627076 () Bool)

(assert (=> d!729338 (= (inv!40037 (left!22606 (c!415312 totalInput!583))) e!1627076)))

(declare-fun b!2578397 () Bool)

(assert (=> b!2578397 (= e!1627076 (inv!40041 (left!22606 (c!415312 totalInput!583))))))

(declare-fun b!2578398 () Bool)

(declare-fun e!1627077 () Bool)

(assert (=> b!2578398 (= e!1627076 e!1627077)))

(declare-fun res!1084520 () Bool)

(assert (=> b!2578398 (= res!1084520 (not ((_ is Leaf!14127) (left!22606 (c!415312 totalInput!583)))))))

(assert (=> b!2578398 (=> res!1084520 e!1627077)))

(declare-fun b!2578399 () Bool)

(assert (=> b!2578399 (= e!1627077 (inv!40042 (left!22606 (c!415312 totalInput!583))))))

(assert (= (and d!729338 c!415327) b!2578397))

(assert (= (and d!729338 (not c!415327)) b!2578398))

(assert (= (and b!2578398 (not res!1084520)) b!2578399))

(declare-fun m!2913147 () Bool)

(assert (=> b!2578397 m!2913147))

(declare-fun m!2913149 () Bool)

(assert (=> b!2578399 m!2913149))

(assert (=> b!2578288 d!729338))

(declare-fun d!729340 () Bool)

(declare-fun c!415328 () Bool)

(assert (=> d!729340 (= c!415328 ((_ is Node!9263) (right!22936 (c!415312 totalInput!583))))))

(declare-fun e!1627078 () Bool)

(assert (=> d!729340 (= (inv!40037 (right!22936 (c!415312 totalInput!583))) e!1627078)))

(declare-fun b!2578400 () Bool)

(assert (=> b!2578400 (= e!1627078 (inv!40041 (right!22936 (c!415312 totalInput!583))))))

(declare-fun b!2578401 () Bool)

(declare-fun e!1627079 () Bool)

(assert (=> b!2578401 (= e!1627078 e!1627079)))

(declare-fun res!1084521 () Bool)

(assert (=> b!2578401 (= res!1084521 (not ((_ is Leaf!14127) (right!22936 (c!415312 totalInput!583)))))))

(assert (=> b!2578401 (=> res!1084521 e!1627079)))

(declare-fun b!2578402 () Bool)

(assert (=> b!2578402 (= e!1627079 (inv!40042 (right!22936 (c!415312 totalInput!583))))))

(assert (= (and d!729340 c!415328) b!2578400))

(assert (= (and d!729340 (not c!415328)) b!2578401))

(assert (= (and b!2578401 (not res!1084521)) b!2578402))

(declare-fun m!2913151 () Bool)

(assert (=> b!2578400 m!2913151))

(declare-fun m!2913153 () Bool)

(assert (=> b!2578402 m!2913153))

(assert (=> b!2578288 d!729340))

(declare-fun d!729342 () Bool)

(assert (=> d!729342 (= (size!22986 lt!906960) (_size!6924 lt!906960))))

(assert (=> b!2578248 d!729342))

(declare-fun b!2578415 () Bool)

(declare-fun e!1627085 () Bool)

(declare-fun isEmpty!17076 (Conc!9263) Bool)

(assert (=> b!2578415 (= e!1627085 (not (isEmpty!17076 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun b!2578416 () Bool)

(declare-fun e!1627084 () Bool)

(assert (=> b!2578416 (= e!1627084 e!1627085)))

(declare-fun res!1084535 () Bool)

(assert (=> b!2578416 (=> (not res!1084535) (not e!1627085))))

(declare-fun height!1344 (Conc!9263) Int)

(assert (=> b!2578416 (= res!1084535 (<= (- 1) (- (height!1344 (left!22606 (c!415312 totalInput!583))) (height!1344 (right!22936 (c!415312 totalInput!583))))))))

(declare-fun b!2578417 () Bool)

(declare-fun res!1084534 () Bool)

(assert (=> b!2578417 (=> (not res!1084534) (not e!1627085))))

(assert (=> b!2578417 (= res!1084534 (<= (- (height!1344 (left!22606 (c!415312 totalInput!583))) (height!1344 (right!22936 (c!415312 totalInput!583)))) 1))))

(declare-fun d!729344 () Bool)

(declare-fun res!1084537 () Bool)

(assert (=> d!729344 (=> res!1084537 e!1627084)))

(assert (=> d!729344 (= res!1084537 (not ((_ is Node!9263) (c!415312 totalInput!583))))))

(assert (=> d!729344 (= (isBalanced!2822 (c!415312 totalInput!583)) e!1627084)))

(declare-fun b!2578418 () Bool)

(declare-fun res!1084539 () Bool)

(assert (=> b!2578418 (=> (not res!1084539) (not e!1627085))))

(assert (=> b!2578418 (= res!1084539 (isBalanced!2822 (left!22606 (c!415312 totalInput!583))))))

(declare-fun b!2578419 () Bool)

(declare-fun res!1084536 () Bool)

(assert (=> b!2578419 (=> (not res!1084536) (not e!1627085))))

(assert (=> b!2578419 (= res!1084536 (not (isEmpty!17076 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun b!2578420 () Bool)

(declare-fun res!1084538 () Bool)

(assert (=> b!2578420 (=> (not res!1084538) (not e!1627085))))

(assert (=> b!2578420 (= res!1084538 (isBalanced!2822 (right!22936 (c!415312 totalInput!583))))))

(assert (= (and d!729344 (not res!1084537)) b!2578416))

(assert (= (and b!2578416 res!1084535) b!2578417))

(assert (= (and b!2578417 res!1084534) b!2578418))

(assert (= (and b!2578418 res!1084539) b!2578420))

(assert (= (and b!2578420 res!1084538) b!2578419))

(assert (= (and b!2578419 res!1084536) b!2578415))

(declare-fun m!2913155 () Bool)

(assert (=> b!2578420 m!2913155))

(declare-fun m!2913157 () Bool)

(assert (=> b!2578416 m!2913157))

(declare-fun m!2913159 () Bool)

(assert (=> b!2578416 m!2913159))

(assert (=> b!2578417 m!2913157))

(assert (=> b!2578417 m!2913159))

(declare-fun m!2913161 () Bool)

(assert (=> b!2578419 m!2913161))

(declare-fun m!2913163 () Bool)

(assert (=> b!2578415 m!2913163))

(declare-fun m!2913165 () Bool)

(assert (=> b!2578418 m!2913165))

(assert (=> d!729270 d!729344))

(declare-fun bs!470970 () Bool)

(declare-fun b!2578421 () Bool)

(assert (= bs!470970 (and b!2578421 b!2578241)))

(declare-fun lambda!95405 () Int)

(assert (=> bs!470970 (= lambda!95405 lambda!95386)))

(declare-fun bs!470971 () Bool)

(assert (= bs!470971 (and b!2578421 d!729324)))

(assert (=> bs!470971 (= lambda!95405 lambda!95401)))

(declare-fun bs!470972 () Bool)

(assert (= bs!470972 (and b!2578421 d!729330)))

(assert (=> bs!470972 (not (= lambda!95405 lambda!95404))))

(declare-fun d!729346 () Bool)

(declare-fun res!1084540 () Bool)

(declare-fun e!1627086 () Bool)

(assert (=> d!729346 (=> (not res!1084540) (not e!1627086))))

(assert (=> d!729346 (= res!1084540 (valid!2653 (v!31998 (underlying!7084 lt!906960))))))

(assert (=> d!729346 (= (valid!2651 lt!906960) e!1627086)))

(declare-fun res!1084541 () Bool)

(assert (=> b!2578421 (=> (not res!1084541) (not e!1627086))))

(assert (=> b!2578421 (= res!1084541 (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960)))) lambda!95405))))

(declare-fun b!2578422 () Bool)

(assert (=> b!2578422 (= e!1627086 (allKeysSameHashInMap!218 (map!6573 (v!31998 (underlying!7084 lt!906960))) (hashF!5381 lt!906960)))))

(assert (= (and d!729346 res!1084540) b!2578421))

(assert (= (and b!2578421 res!1084541) b!2578422))

(declare-fun m!2913167 () Bool)

(assert (=> d!729346 m!2913167))

(declare-fun m!2913169 () Bool)

(assert (=> b!2578421 m!2913169))

(declare-fun m!2913171 () Bool)

(assert (=> b!2578421 m!2913171))

(assert (=> b!2578422 m!2913169))

(assert (=> b!2578422 m!2913169))

(declare-fun m!2913173 () Bool)

(assert (=> b!2578422 m!2913173))

(assert (=> b!2578247 d!729346))

(declare-fun d!729348 () Bool)

(declare-fun res!1084546 () Bool)

(declare-fun e!1627089 () Bool)

(assert (=> d!729348 (=> (not res!1084546) (not e!1627089))))

(declare-fun list!11212 (IArray!18531) List!29777)

(assert (=> d!729348 (= res!1084546 (<= (size!22993 (list!11212 (xs!12247 (c!415312 totalInput!583)))) 512))))

(assert (=> d!729348 (= (inv!40042 (c!415312 totalInput!583)) e!1627089)))

(declare-fun b!2578427 () Bool)

(declare-fun res!1084547 () Bool)

(assert (=> b!2578427 (=> (not res!1084547) (not e!1627089))))

(assert (=> b!2578427 (= res!1084547 (= (csize!18757 (c!415312 totalInput!583)) (size!22993 (list!11212 (xs!12247 (c!415312 totalInput!583))))))))

(declare-fun b!2578428 () Bool)

(assert (=> b!2578428 (= e!1627089 (and (> (csize!18757 (c!415312 totalInput!583)) 0) (<= (csize!18757 (c!415312 totalInput!583)) 512)))))

(assert (= (and d!729348 res!1084546) b!2578427))

(assert (= (and b!2578427 res!1084547) b!2578428))

(declare-fun m!2913175 () Bool)

(assert (=> d!729348 m!2913175))

(assert (=> d!729348 m!2913175))

(declare-fun m!2913177 () Bool)

(assert (=> d!729348 m!2913177))

(assert (=> b!2578427 m!2913175))

(assert (=> b!2578427 m!2913175))

(assert (=> b!2578427 m!2913177))

(assert (=> b!2578277 d!729348))

(declare-fun d!729350 () Bool)

(declare-fun res!1084548 () Bool)

(declare-fun e!1627090 () Bool)

(assert (=> d!729350 (=> res!1084548 e!1627090)))

(assert (=> d!729350 (= res!1084548 ((_ is Nil!29676) (toList!1718 (map!6571 lt!906940))))))

(assert (=> d!729350 (= (forall!6039 (toList!1718 (map!6571 lt!906940)) lambda!95383) e!1627090)))

(declare-fun b!2578429 () Bool)

(declare-fun e!1627091 () Bool)

(assert (=> b!2578429 (= e!1627090 e!1627091)))

(declare-fun res!1084549 () Bool)

(assert (=> b!2578429 (=> (not res!1084549) (not e!1627091))))

(assert (=> b!2578429 (= res!1084549 (dynLambda!12532 lambda!95383 (h!35096 (toList!1718 (map!6571 lt!906940)))))))

(declare-fun b!2578430 () Bool)

(assert (=> b!2578430 (= e!1627091 (forall!6039 (t!211653 (toList!1718 (map!6571 lt!906940))) lambda!95383))))

(assert (= (and d!729350 (not res!1084548)) b!2578429))

(assert (= (and b!2578429 res!1084549) b!2578430))

(declare-fun b_lambda!76461 () Bool)

(assert (=> (not b_lambda!76461) (not b!2578429)))

(declare-fun m!2913179 () Bool)

(assert (=> b!2578429 m!2913179))

(declare-fun m!2913181 () Bool)

(assert (=> b!2578430 m!2913181))

(assert (=> b!2578219 d!729350))

(assert (=> b!2578219 d!729262))

(declare-fun d!729352 () Bool)

(declare-fun res!1084554 () Bool)

(declare-fun e!1627096 () Bool)

(assert (=> d!729352 (=> res!1084554 e!1627096)))

(assert (=> d!729352 (= res!1084554 (or ((_ is Nil!29676) (toList!1718 lt!906942)) ((_ is Nil!29676) (t!211653 (toList!1718 lt!906942)))))))

(assert (=> d!729352 (= (noDuplicatedKeys!73 (toList!1718 lt!906942)) e!1627096)))

(declare-fun b!2578435 () Bool)

(declare-fun e!1627097 () Bool)

(assert (=> b!2578435 (= e!1627096 e!1627097)))

(declare-fun res!1084555 () Bool)

(assert (=> b!2578435 (=> (not res!1084555) (not e!1627097))))

(declare-fun containsKey!184 (List!29776 tuple2!29632) Bool)

(assert (=> b!2578435 (= res!1084555 (not (containsKey!184 (t!211653 (toList!1718 lt!906942)) (_1!17359 (h!35096 (toList!1718 lt!906942))))))))

(declare-fun b!2578436 () Bool)

(assert (=> b!2578436 (= e!1627097 (noDuplicatedKeys!73 (t!211653 (toList!1718 lt!906942))))))

(assert (= (and d!729352 (not res!1084554)) b!2578435))

(assert (= (and b!2578435 res!1084555) b!2578436))

(declare-fun m!2913183 () Bool)

(assert (=> b!2578435 m!2913183))

(declare-fun m!2913185 () Bool)

(assert (=> b!2578436 m!2913185))

(assert (=> d!729260 d!729352))

(assert (=> b!2578176 d!729272))

(declare-fun d!729354 () Bool)

(assert (=> d!729354 (= (invariantList!432 (toList!1718 (map!6571 lt!906940))) (noDuplicatedKeys!73 (toList!1718 (map!6571 lt!906940))))))

(declare-fun bs!470973 () Bool)

(assert (= bs!470973 d!729354))

(declare-fun m!2913187 () Bool)

(assert (=> bs!470973 m!2913187))

(assert (=> b!2578218 d!729354))

(assert (=> b!2578218 d!729262))

(declare-fun d!729356 () Bool)

(declare-fun res!1084570 () Bool)

(declare-fun e!1627110 () Bool)

(assert (=> d!729356 (=> (not res!1084570) (not e!1627110))))

(declare-fun size!22994 (Conc!9263) Int)

(assert (=> d!729356 (= res!1084570 (= (csize!18756 (c!415312 totalInput!583)) (+ (size!22994 (left!22606 (c!415312 totalInput!583))) (size!22994 (right!22936 (c!415312 totalInput!583))))))))

(assert (=> d!729356 (= (inv!40041 (c!415312 totalInput!583)) e!1627110)))

(declare-fun b!2578455 () Bool)

(declare-fun res!1084571 () Bool)

(assert (=> b!2578455 (=> (not res!1084571) (not e!1627110))))

(assert (=> b!2578455 (= res!1084571 (and (not (= (left!22606 (c!415312 totalInput!583)) Empty!9263)) (not (= (right!22936 (c!415312 totalInput!583)) Empty!9263))))))

(declare-fun b!2578456 () Bool)

(declare-fun res!1084572 () Bool)

(assert (=> b!2578456 (=> (not res!1084572) (not e!1627110))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2578456 (= res!1084572 (= (cheight!9474 (c!415312 totalInput!583)) (+ (max!0 (height!1344 (left!22606 (c!415312 totalInput!583))) (height!1344 (right!22936 (c!415312 totalInput!583)))) 1)))))

(declare-fun b!2578457 () Bool)

(assert (=> b!2578457 (= e!1627110 (<= 0 (cheight!9474 (c!415312 totalInput!583))))))

(assert (= (and d!729356 res!1084570) b!2578455))

(assert (= (and b!2578455 res!1084571) b!2578456))

(assert (= (and b!2578456 res!1084572) b!2578457))

(declare-fun m!2913203 () Bool)

(assert (=> d!729356 m!2913203))

(declare-fun m!2913205 () Bool)

(assert (=> d!729356 m!2913205))

(assert (=> b!2578456 m!2913157))

(assert (=> b!2578456 m!2913159))

(assert (=> b!2578456 m!2913157))

(assert (=> b!2578456 m!2913159))

(declare-fun m!2913207 () Bool)

(assert (=> b!2578456 m!2913207))

(assert (=> b!2578275 d!729356))

(declare-fun d!729368 () Bool)

(declare-fun res!1084575 () Bool)

(declare-fun e!1627113 () Bool)

(assert (=> d!729368 (=> res!1084575 e!1627113)))

(assert (=> d!729368 (= res!1084575 ((_ is Nil!29676) (t!211653 (toList!1718 lt!906942))))))

(assert (=> d!729368 (= (forall!6039 (t!211653 (toList!1718 lt!906942)) lambda!95369) e!1627113)))

(declare-fun b!2578460 () Bool)

(declare-fun e!1627114 () Bool)

(assert (=> b!2578460 (= e!1627113 e!1627114)))

(declare-fun res!1084576 () Bool)

(assert (=> b!2578460 (=> (not res!1084576) (not e!1627114))))

(assert (=> b!2578460 (= res!1084576 (dynLambda!12532 lambda!95369 (h!35096 (t!211653 (toList!1718 lt!906942)))))))

(declare-fun b!2578461 () Bool)

(assert (=> b!2578461 (= e!1627114 (forall!6039 (t!211653 (t!211653 (toList!1718 lt!906942))) lambda!95369))))

(assert (= (and d!729368 (not res!1084575)) b!2578460))

(assert (= (and b!2578460 res!1084576) b!2578461))

(declare-fun b_lambda!76463 () Bool)

(assert (=> (not b_lambda!76463) (not b!2578460)))

(declare-fun m!2913211 () Bool)

(assert (=> b!2578460 m!2913211))

(declare-fun m!2913213 () Bool)

(assert (=> b!2578461 m!2913213))

(assert (=> b!2578262 d!729368))

(declare-fun b!2578462 () Bool)

(declare-fun tp!819267 () Bool)

(declare-fun tp!819266 () Bool)

(declare-fun e!1627115 () Bool)

(assert (=> b!2578462 (= e!1627115 (and (inv!40037 (left!22606 (left!22606 (c!415312 totalInput!583)))) tp!819266 (inv!40037 (right!22936 (left!22606 (c!415312 totalInput!583)))) tp!819267))))

(declare-fun b!2578464 () Bool)

(declare-fun e!1627116 () Bool)

(declare-fun tp!819268 () Bool)

(assert (=> b!2578464 (= e!1627116 tp!819268)))

(declare-fun b!2578463 () Bool)

(assert (=> b!2578463 (= e!1627115 (and (inv!40043 (xs!12247 (left!22606 (c!415312 totalInput!583)))) e!1627116))))

(assert (=> b!2578288 (= tp!819254 (and (inv!40037 (left!22606 (c!415312 totalInput!583))) e!1627115))))

(assert (= (and b!2578288 ((_ is Node!9263) (left!22606 (c!415312 totalInput!583)))) b!2578462))

(assert (= b!2578463 b!2578464))

(assert (= (and b!2578288 ((_ is Leaf!14127) (left!22606 (c!415312 totalInput!583)))) b!2578463))

(declare-fun m!2913215 () Bool)

(assert (=> b!2578462 m!2913215))

(declare-fun m!2913217 () Bool)

(assert (=> b!2578462 m!2913217))

(declare-fun m!2913219 () Bool)

(assert (=> b!2578463 m!2913219))

(assert (=> b!2578288 m!2913013))

(declare-fun tp!819270 () Bool)

(declare-fun b!2578465 () Bool)

(declare-fun tp!819269 () Bool)

(declare-fun e!1627117 () Bool)

(assert (=> b!2578465 (= e!1627117 (and (inv!40037 (left!22606 (right!22936 (c!415312 totalInput!583)))) tp!819269 (inv!40037 (right!22936 (right!22936 (c!415312 totalInput!583)))) tp!819270))))

(declare-fun b!2578467 () Bool)

(declare-fun e!1627118 () Bool)

(declare-fun tp!819271 () Bool)

(assert (=> b!2578467 (= e!1627118 tp!819271)))

(declare-fun b!2578466 () Bool)

(assert (=> b!2578466 (= e!1627117 (and (inv!40043 (xs!12247 (right!22936 (c!415312 totalInput!583)))) e!1627118))))

(assert (=> b!2578288 (= tp!819255 (and (inv!40037 (right!22936 (c!415312 totalInput!583))) e!1627117))))

(assert (= (and b!2578288 ((_ is Node!9263) (right!22936 (c!415312 totalInput!583)))) b!2578465))

(assert (= b!2578466 b!2578467))

(assert (= (and b!2578288 ((_ is Leaf!14127) (right!22936 (c!415312 totalInput!583)))) b!2578466))

(declare-fun m!2913221 () Bool)

(assert (=> b!2578465 m!2913221))

(declare-fun m!2913223 () Bool)

(assert (=> b!2578465 m!2913223))

(declare-fun m!2913225 () Bool)

(assert (=> b!2578466 m!2913225))

(assert (=> b!2578288 m!2913015))

(declare-fun b!2578476 () Bool)

(declare-fun e!1627123 () Bool)

(declare-fun tp_is_empty!13193 () Bool)

(declare-fun tp!819274 () Bool)

(assert (=> b!2578476 (= e!1627123 (and tp_is_empty!13193 tp!819274))))

(assert (=> b!2578290 (= tp!819256 e!1627123)))

(assert (= (and b!2578290 ((_ is Cons!29677) (innerList!9323 (xs!12247 (c!415312 totalInput!583))))) b!2578476))

(declare-fun b_lambda!76465 () Bool)

(assert (= b_lambda!76461 (or b!2578219 b_lambda!76465)))

(declare-fun bs!470975 () Bool)

(declare-fun d!729372 () Bool)

(assert (= bs!470975 (and d!729372 b!2578219)))

(assert (=> bs!470975 (= (dynLambda!12532 lambda!95383 (h!35096 (toList!1718 (map!6571 lt!906940)))) (validCacheMapFindLongestMatchBody!4 (h!35096 (toList!1718 (map!6571 lt!906940))) totalInput!583))))

(declare-fun m!2913227 () Bool)

(assert (=> bs!470975 m!2913227))

(assert (=> b!2578429 d!729372))

(declare-fun b_lambda!76467 () Bool)

(assert (= b_lambda!76459 (or b!2578241 b_lambda!76467)))

(declare-fun bs!470976 () Bool)

(declare-fun d!729374 () Bool)

(assert (= bs!470976 (and d!729374 b!2578241)))

(declare-fun noDuplicateKeys!129 (List!29776) Bool)

(assert (=> bs!470976 (= (dynLambda!12534 lambda!95386 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (noDuplicateKeys!129 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(declare-fun m!2913229 () Bool)

(assert (=> bs!470976 m!2913229))

(assert (=> b!2578395 d!729374))

(declare-fun b_lambda!76469 () Bool)

(assert (= b_lambda!76463 (or b!2578175 b_lambda!76469)))

(declare-fun bs!470977 () Bool)

(declare-fun d!729376 () Bool)

(assert (= bs!470977 (and d!729376 b!2578175)))

(assert (=> bs!470977 (= (dynLambda!12532 lambda!95369 (h!35096 (t!211653 (toList!1718 lt!906942)))) (validCacheMapFindLongestMatchBody!4 (h!35096 (t!211653 (toList!1718 lt!906942))) totalInput!583))))

(declare-fun m!2913233 () Bool)

(assert (=> bs!470977 m!2913233))

(assert (=> b!2578460 d!729376))

(check-sat (not d!729336) (not b!2578421) (not d!729324) (not b!2578416) (not b!2578466) (not b!2578382) (not bs!470975) (not b!2578435) (not b_lambda!76467) (not b!2578427) (not bs!470977) (not b!2578415) (not b!2578419) (not d!729348) (not b!2578467) (not d!729346) tp_is_empty!13193 (not b!2578422) (not b!2578420) (not b_lambda!76469) (not d!729326) (not d!729322) (not b!2578464) (not b!2578463) (not d!729356) (not b!2578461) (not b!2578418) (not b!2578402) (not bs!470976) (not b!2578390) (not b!2578381) (not b!2578476) (not b!2578389) (not b!2578462) (not b!2578288) (not b!2578399) (not b!2578417) (not b!2578375) (not b_lambda!76465) (not d!729328) (not b!2578396) (not b_lambda!76445) (not d!729354) (not d!729330) (not b!2578400) (not b!2578397) (not d!729320) (not b!2578456) (not b!2578430) (not b!2578465) (not b!2578436))
(check-sat)
(get-model)

(declare-fun d!729448 () Bool)

(declare-fun lt!907143 () Int)

(declare-fun list!11213 (BalanceConc!18140) List!29777)

(assert (=> d!729448 (= lt!907143 (size!22993 (list!11213 totalInput!583)))))

(assert (=> d!729448 (= lt!907143 (size!22994 (c!415312 totalInput!583)))))

(assert (=> d!729448 (= (size!22992 totalInput!583) lt!907143)))

(declare-fun bs!471005 () Bool)

(assert (= bs!471005 d!729448))

(declare-fun m!2913417 () Bool)

(assert (=> bs!471005 m!2913417))

(assert (=> bs!471005 m!2913417))

(declare-fun m!2913419 () Bool)

(assert (=> bs!471005 m!2913419))

(declare-fun m!2913421 () Bool)

(assert (=> bs!471005 m!2913421))

(assert (=> b!2578389 d!729448))

(declare-fun d!729450 () Bool)

(declare-fun res!1084659 () Bool)

(declare-fun e!1627207 () Bool)

(assert (=> d!729450 (=> res!1084659 e!1627207)))

(assert (=> d!729450 (= res!1084659 (and ((_ is Cons!29676) (t!211653 (toList!1718 lt!906942))) (= (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942)))) (_1!17359 (h!35096 (toList!1718 lt!906942))))))))

(assert (=> d!729450 (= (containsKey!184 (t!211653 (toList!1718 lt!906942)) (_1!17359 (h!35096 (toList!1718 lt!906942)))) e!1627207)))

(declare-fun b!2578613 () Bool)

(declare-fun e!1627208 () Bool)

(assert (=> b!2578613 (= e!1627207 e!1627208)))

(declare-fun res!1084660 () Bool)

(assert (=> b!2578613 (=> (not res!1084660) (not e!1627208))))

(assert (=> b!2578613 (= res!1084660 ((_ is Cons!29676) (t!211653 (toList!1718 lt!906942))))))

(declare-fun b!2578614 () Bool)

(assert (=> b!2578614 (= e!1627208 (containsKey!184 (t!211653 (t!211653 (toList!1718 lt!906942))) (_1!17359 (h!35096 (toList!1718 lt!906942)))))))

(assert (= (and d!729450 (not res!1084659)) b!2578613))

(assert (= (and b!2578613 res!1084660) b!2578614))

(declare-fun m!2913449 () Bool)

(assert (=> b!2578614 m!2913449))

(assert (=> b!2578435 d!729450))

(declare-fun d!729462 () Bool)

(declare-fun res!1084661 () Bool)

(declare-fun e!1627209 () Bool)

(assert (=> d!729462 (=> (not res!1084661) (not e!1627209))))

(assert (=> d!729462 (= res!1084661 (= (csize!18756 (right!22936 (c!415312 totalInput!583))) (+ (size!22994 (left!22606 (right!22936 (c!415312 totalInput!583)))) (size!22994 (right!22936 (right!22936 (c!415312 totalInput!583)))))))))

(assert (=> d!729462 (= (inv!40041 (right!22936 (c!415312 totalInput!583))) e!1627209)))

(declare-fun b!2578615 () Bool)

(declare-fun res!1084662 () Bool)

(assert (=> b!2578615 (=> (not res!1084662) (not e!1627209))))

(assert (=> b!2578615 (= res!1084662 (and (not (= (left!22606 (right!22936 (c!415312 totalInput!583))) Empty!9263)) (not (= (right!22936 (right!22936 (c!415312 totalInput!583))) Empty!9263))))))

(declare-fun b!2578616 () Bool)

(declare-fun res!1084663 () Bool)

(assert (=> b!2578616 (=> (not res!1084663) (not e!1627209))))

(assert (=> b!2578616 (= res!1084663 (= (cheight!9474 (right!22936 (c!415312 totalInput!583))) (+ (max!0 (height!1344 (left!22606 (right!22936 (c!415312 totalInput!583)))) (height!1344 (right!22936 (right!22936 (c!415312 totalInput!583))))) 1)))))

(declare-fun b!2578617 () Bool)

(assert (=> b!2578617 (= e!1627209 (<= 0 (cheight!9474 (right!22936 (c!415312 totalInput!583)))))))

(assert (= (and d!729462 res!1084661) b!2578615))

(assert (= (and b!2578615 res!1084662) b!2578616))

(assert (= (and b!2578616 res!1084663) b!2578617))

(declare-fun m!2913451 () Bool)

(assert (=> d!729462 m!2913451))

(declare-fun m!2913453 () Bool)

(assert (=> d!729462 m!2913453))

(declare-fun m!2913455 () Bool)

(assert (=> b!2578616 m!2913455))

(declare-fun m!2913457 () Bool)

(assert (=> b!2578616 m!2913457))

(assert (=> b!2578616 m!2913455))

(assert (=> b!2578616 m!2913457))

(declare-fun m!2913461 () Bool)

(assert (=> b!2578616 m!2913461))

(assert (=> b!2578400 d!729462))

(declare-fun d!729464 () Bool)

(assert (=> d!729464 (= (inv!40043 (xs!12247 (right!22936 (c!415312 totalInput!583)))) (<= (size!22993 (innerList!9323 (xs!12247 (right!22936 (c!415312 totalInput!583))))) 2147483647))))

(declare-fun bs!471008 () Bool)

(assert (= bs!471008 d!729464))

(declare-fun m!2913465 () Bool)

(assert (=> bs!471008 m!2913465))

(assert (=> b!2578466 d!729464))

(declare-fun d!729468 () Bool)

(declare-fun c!415356 () Bool)

(assert (=> d!729468 (= c!415356 ((_ is Node!9263) (left!22606 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun e!1627212 () Bool)

(assert (=> d!729468 (= (inv!40037 (left!22606 (right!22936 (c!415312 totalInput!583)))) e!1627212)))

(declare-fun b!2578620 () Bool)

(assert (=> b!2578620 (= e!1627212 (inv!40041 (left!22606 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun b!2578621 () Bool)

(declare-fun e!1627213 () Bool)

(assert (=> b!2578621 (= e!1627212 e!1627213)))

(declare-fun res!1084666 () Bool)

(assert (=> b!2578621 (= res!1084666 (not ((_ is Leaf!14127) (left!22606 (right!22936 (c!415312 totalInput!583))))))))

(assert (=> b!2578621 (=> res!1084666 e!1627213)))

(declare-fun b!2578622 () Bool)

(assert (=> b!2578622 (= e!1627213 (inv!40042 (left!22606 (right!22936 (c!415312 totalInput!583)))))))

(assert (= (and d!729468 c!415356) b!2578620))

(assert (= (and d!729468 (not c!415356)) b!2578621))

(assert (= (and b!2578621 (not res!1084666)) b!2578622))

(declare-fun m!2913467 () Bool)

(assert (=> b!2578620 m!2913467))

(declare-fun m!2913469 () Bool)

(assert (=> b!2578622 m!2913469))

(assert (=> b!2578465 d!729468))

(declare-fun d!729470 () Bool)

(declare-fun c!415357 () Bool)

(assert (=> d!729470 (= c!415357 ((_ is Node!9263) (right!22936 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun e!1627214 () Bool)

(assert (=> d!729470 (= (inv!40037 (right!22936 (right!22936 (c!415312 totalInput!583)))) e!1627214)))

(declare-fun b!2578623 () Bool)

(assert (=> b!2578623 (= e!1627214 (inv!40041 (right!22936 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun b!2578624 () Bool)

(declare-fun e!1627215 () Bool)

(assert (=> b!2578624 (= e!1627214 e!1627215)))

(declare-fun res!1084667 () Bool)

(assert (=> b!2578624 (= res!1084667 (not ((_ is Leaf!14127) (right!22936 (right!22936 (c!415312 totalInput!583))))))))

(assert (=> b!2578624 (=> res!1084667 e!1627215)))

(declare-fun b!2578625 () Bool)

(assert (=> b!2578625 (= e!1627215 (inv!40042 (right!22936 (right!22936 (c!415312 totalInput!583)))))))

(assert (= (and d!729470 c!415357) b!2578623))

(assert (= (and d!729470 (not c!415357)) b!2578624))

(assert (= (and b!2578624 (not res!1084667)) b!2578625))

(declare-fun m!2913471 () Bool)

(assert (=> b!2578623 m!2913471))

(declare-fun m!2913473 () Bool)

(assert (=> b!2578625 m!2913473))

(assert (=> b!2578465 d!729470))

(declare-fun d!729472 () Bool)

(declare-fun res!1084674 () Bool)

(declare-fun e!1627229 () Bool)

(assert (=> d!729472 (=> (not res!1084674) (not e!1627229))))

(declare-fun simpleValid!6 (LongMapFixedSize!6876) Bool)

(assert (=> d!729472 (= res!1084674 (simpleValid!6 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729472 (= (valid!2655 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) e!1627229)))

(declare-fun b!2578647 () Bool)

(declare-fun res!1084675 () Bool)

(assert (=> b!2578647 (=> (not res!1084675) (not e!1627229))))

(declare-fun arrayCountValidKeys!0 (array!12257 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!2578647 (= res!1084675 (= (arrayCountValidKeys!0 (_keys!3735 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) #b00000000000000000000000000000000 (size!22984 (_keys!3735 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))))) (_size!6923 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun b!2578648 () Bool)

(declare-fun res!1084676 () Bool)

(assert (=> b!2578648 (=> (not res!1084676) (not e!1627229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12257 (_ BitVec 32)) Bool)

(assert (=> b!2578648 (= res!1084676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3735 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (mask!8853 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun b!2578649 () Bool)

(declare-datatypes ((List!29781 0))(
  ( (Nil!29681) (Cons!29681 (h!35101 (_ BitVec 64)) (t!211666 List!29781)) )
))
(declare-fun arrayNoDuplicates!0 (array!12257 (_ BitVec 32) List!29781) Bool)

(assert (=> b!2578649 (= e!1627229 (arrayNoDuplicates!0 (_keys!3735 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) #b00000000000000000000000000000000 Nil!29681))))

(assert (= (and d!729472 res!1084674) b!2578647))

(assert (= (and b!2578647 res!1084675) b!2578648))

(assert (= (and b!2578648 res!1084676) b!2578649))

(declare-fun m!2913513 () Bool)

(assert (=> d!729472 m!2913513))

(declare-fun m!2913515 () Bool)

(assert (=> b!2578647 m!2913515))

(declare-fun m!2913517 () Bool)

(assert (=> b!2578648 m!2913517))

(declare-fun m!2913519 () Bool)

(assert (=> b!2578649 m!2913519))

(assert (=> d!729320 d!729472))

(declare-fun d!729490 () Bool)

(declare-fun res!1084677 () Bool)

(declare-fun e!1627230 () Bool)

(assert (=> d!729490 (=> (not res!1084677) (not e!1627230))))

(assert (=> d!729490 (= res!1084677 (>= (_2!17358 (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942))))) 0))))

(assert (=> d!729490 (= (validCacheMapFindLongestMatchBody!4 (h!35096 (t!211653 (toList!1718 lt!906942))) totalInput!583) e!1627230)))

(declare-fun b!2578650 () Bool)

(declare-fun res!1084678 () Bool)

(assert (=> b!2578650 (=> (not res!1084678) (not e!1627230))))

(assert (=> b!2578650 (= res!1084678 (<= (_2!17358 (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942))))) (size!22992 totalInput!583)))))

(declare-fun b!2578651 () Bool)

(assert (=> b!2578651 (= e!1627230 (= (_2!17359 (h!35096 (t!211653 (toList!1718 lt!906942)))) (findLongestMatchInnerZipperFastV2!18 (_1!17358 (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942))))) (_2!17358 (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942))))) totalInput!583 (size!22992 totalInput!583))))))

(assert (= (and d!729490 res!1084677) b!2578650))

(assert (= (and b!2578650 res!1084678) b!2578651))

(assert (=> b!2578650 m!2913137))

(assert (=> b!2578651 m!2913137))

(assert (=> b!2578651 m!2913137))

(declare-fun m!2913521 () Bool)

(assert (=> b!2578651 m!2913521))

(assert (=> bs!470977 d!729490))

(assert (=> b!2578288 d!729338))

(assert (=> b!2578288 d!729340))

(declare-fun d!729492 () Bool)

(declare-fun lt!907150 () Int)

(assert (=> d!729492 (>= lt!907150 0)))

(declare-fun e!1627233 () Int)

(assert (=> d!729492 (= lt!907150 e!1627233)))

(declare-fun c!415360 () Bool)

(assert (=> d!729492 (= c!415360 ((_ is Nil!29677) (innerList!9323 (xs!12247 (c!415312 totalInput!583)))))))

(assert (=> d!729492 (= (size!22993 (innerList!9323 (xs!12247 (c!415312 totalInput!583)))) lt!907150)))

(declare-fun b!2578656 () Bool)

(assert (=> b!2578656 (= e!1627233 0)))

(declare-fun b!2578657 () Bool)

(assert (=> b!2578657 (= e!1627233 (+ 1 (size!22993 (t!211654 (innerList!9323 (xs!12247 (c!415312 totalInput!583)))))))))

(assert (= (and d!729492 c!415360) b!2578656))

(assert (= (and d!729492 (not c!415360)) b!2578657))

(declare-fun m!2913523 () Bool)

(assert (=> b!2578657 m!2913523))

(assert (=> d!729336 d!729492))

(declare-fun d!729494 () Bool)

(declare-fun size!22995 (LongMapFixedSize!6876) (_ BitVec 32))

(assert (=> d!729494 (= (size!22991 lt!906983) (size!22995 (v!31997 (underlying!7083 lt!906983))))))

(declare-fun bs!471018 () Bool)

(assert (= bs!471018 d!729494))

(declare-fun m!2913525 () Bool)

(assert (=> bs!471018 m!2913525))

(assert (=> b!2578382 d!729494))

(declare-fun d!729496 () Bool)

(declare-fun res!1084679 () Bool)

(declare-fun e!1627234 () Bool)

(assert (=> d!729496 (=> res!1084679 e!1627234)))

(assert (=> d!729496 (= res!1084679 ((_ is Nil!29676) (t!211653 (toList!1718 (map!6571 lt!906940)))))))

(assert (=> d!729496 (= (forall!6039 (t!211653 (toList!1718 (map!6571 lt!906940))) lambda!95383) e!1627234)))

(declare-fun b!2578658 () Bool)

(declare-fun e!1627235 () Bool)

(assert (=> b!2578658 (= e!1627234 e!1627235)))

(declare-fun res!1084680 () Bool)

(assert (=> b!2578658 (=> (not res!1084680) (not e!1627235))))

(assert (=> b!2578658 (= res!1084680 (dynLambda!12532 lambda!95383 (h!35096 (t!211653 (toList!1718 (map!6571 lt!906940))))))))

(declare-fun b!2578659 () Bool)

(assert (=> b!2578659 (= e!1627235 (forall!6039 (t!211653 (t!211653 (toList!1718 (map!6571 lt!906940)))) lambda!95383))))

(assert (= (and d!729496 (not res!1084679)) b!2578658))

(assert (= (and b!2578658 res!1084680) b!2578659))

(declare-fun b_lambda!76499 () Bool)

(assert (=> (not b_lambda!76499) (not b!2578658)))

(declare-fun m!2913527 () Bool)

(assert (=> b!2578658 m!2913527))

(declare-fun m!2913529 () Bool)

(assert (=> b!2578659 m!2913529))

(assert (=> b!2578430 d!729496))

(declare-fun d!729498 () Bool)

(assert (=> d!729498 (= (valid!2653 lt!906983) (valid!2655 (v!31997 (underlying!7083 lt!906983))))))

(declare-fun bs!471019 () Bool)

(assert (= bs!471019 d!729498))

(declare-fun m!2913531 () Bool)

(assert (=> bs!471019 m!2913531))

(assert (=> b!2578381 d!729498))

(declare-fun d!729500 () Bool)

(declare-fun res!1084685 () Bool)

(declare-fun e!1627240 () Bool)

(assert (=> d!729500 (=> res!1084685 e!1627240)))

(assert (=> d!729500 (= res!1084685 (not ((_ is Cons!29676) (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(assert (=> d!729500 (= (noDuplicateKeys!129 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) e!1627240)))

(declare-fun b!2578664 () Bool)

(declare-fun e!1627241 () Bool)

(assert (=> b!2578664 (= e!1627240 e!1627241)))

(declare-fun res!1084686 () Bool)

(assert (=> b!2578664 (=> (not res!1084686) (not e!1627241))))

(declare-fun containsKey!185 (List!29776 tuple2!29632) Bool)

(assert (=> b!2578664 (= res!1084686 (not (containsKey!185 (t!211653 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (_1!17359 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))))

(declare-fun b!2578665 () Bool)

(assert (=> b!2578665 (= e!1627241 (noDuplicateKeys!129 (t!211653 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(assert (= (and d!729500 (not res!1084685)) b!2578664))

(assert (= (and b!2578664 res!1084686) b!2578665))

(declare-fun m!2913533 () Bool)

(assert (=> b!2578664 m!2913533))

(declare-fun m!2913535 () Bool)

(assert (=> b!2578665 m!2913535))

(assert (=> bs!470976 d!729500))

(declare-fun d!729502 () Bool)

(declare-fun lt!907153 () Int)

(declare-fun list!11214 (Conc!9263) List!29777)

(assert (=> d!729502 (= lt!907153 (size!22993 (list!11214 (left!22606 (c!415312 totalInput!583)))))))

(assert (=> d!729502 (= lt!907153 (ite ((_ is Empty!9263) (left!22606 (c!415312 totalInput!583))) 0 (ite ((_ is Leaf!14127) (left!22606 (c!415312 totalInput!583))) (csize!18757 (left!22606 (c!415312 totalInput!583))) (csize!18756 (left!22606 (c!415312 totalInput!583))))))))

(assert (=> d!729502 (= (size!22994 (left!22606 (c!415312 totalInput!583))) lt!907153)))

(declare-fun bs!471020 () Bool)

(assert (= bs!471020 d!729502))

(declare-fun m!2913537 () Bool)

(assert (=> bs!471020 m!2913537))

(assert (=> bs!471020 m!2913537))

(declare-fun m!2913539 () Bool)

(assert (=> bs!471020 m!2913539))

(assert (=> d!729356 d!729502))

(declare-fun d!729504 () Bool)

(declare-fun lt!907154 () Int)

(assert (=> d!729504 (= lt!907154 (size!22993 (list!11214 (right!22936 (c!415312 totalInput!583)))))))

(assert (=> d!729504 (= lt!907154 (ite ((_ is Empty!9263) (right!22936 (c!415312 totalInput!583))) 0 (ite ((_ is Leaf!14127) (right!22936 (c!415312 totalInput!583))) (csize!18757 (right!22936 (c!415312 totalInput!583))) (csize!18756 (right!22936 (c!415312 totalInput!583))))))))

(assert (=> d!729504 (= (size!22994 (right!22936 (c!415312 totalInput!583))) lt!907154)))

(declare-fun bs!471021 () Bool)

(assert (= bs!471021 d!729504))

(declare-fun m!2913541 () Bool)

(assert (=> bs!471021 m!2913541))

(assert (=> bs!471021 m!2913541))

(declare-fun m!2913543 () Bool)

(assert (=> bs!471021 m!2913543))

(assert (=> d!729356 d!729504))

(declare-fun bs!471022 () Bool)

(declare-fun b!2578676 () Bool)

(assert (= bs!471022 (and b!2578676 b!2578175)))

(declare-fun lambda!95468 () Int)

(assert (=> bs!471022 (not (= lambda!95468 lambda!95369))))

(declare-fun bs!471023 () Bool)

(assert (= bs!471023 (and b!2578676 b!2578219)))

(assert (=> bs!471023 (not (= lambda!95468 lambda!95383))))

(declare-fun b!2578685 () Bool)

(declare-fun e!1627253 () Bool)

(assert (=> b!2578685 (= e!1627253 true)))

(assert (=> b!2578676 e!1627253))

(assert (= b!2578676 b!2578685))

(declare-fun bs!471024 () Bool)

(declare-fun b!2578678 () Bool)

(assert (= bs!471024 (and b!2578678 b!2578175)))

(declare-fun lambda!95469 () Int)

(assert (=> bs!471024 (not (= lambda!95469 lambda!95369))))

(declare-fun bs!471025 () Bool)

(assert (= bs!471025 (and b!2578678 b!2578219)))

(assert (=> bs!471025 (not (= lambda!95469 lambda!95383))))

(declare-fun bs!471026 () Bool)

(assert (= bs!471026 (and b!2578678 b!2578676)))

(assert (=> bs!471026 (= lambda!95469 lambda!95468)))

(declare-fun b!2578686 () Bool)

(declare-fun e!1627254 () Bool)

(assert (=> b!2578686 (= e!1627254 true)))

(assert (=> b!2578678 e!1627254))

(assert (= b!2578678 b!2578686))

(declare-fun lambda!95470 () Int)

(assert (=> bs!471024 (not (= lambda!95470 lambda!95369))))

(assert (=> bs!471025 (not (= lambda!95470 lambda!95383))))

(declare-fun lt!907208 () ListMap!1197)

(assert (=> bs!471026 (= (= lt!907208 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (= lambda!95470 lambda!95468))))

(assert (=> b!2578678 (= (= lt!907208 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (= lambda!95470 lambda!95469))))

(declare-fun b!2578687 () Bool)

(declare-fun e!1627255 () Bool)

(assert (=> b!2578687 (= e!1627255 true)))

(assert (=> b!2578678 e!1627255))

(assert (= b!2578678 b!2578687))

(declare-fun bs!471027 () Bool)

(declare-fun d!729506 () Bool)

(assert (= bs!471027 (and d!729506 b!2578676)))

(declare-fun lambda!95471 () Int)

(declare-fun lt!907205 () ListMap!1197)

(assert (=> bs!471027 (= (= lt!907205 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (= lambda!95471 lambda!95468))))

(declare-fun bs!471028 () Bool)

(assert (= bs!471028 (and d!729506 b!2578219)))

(assert (=> bs!471028 (not (= lambda!95471 lambda!95383))))

(declare-fun bs!471029 () Bool)

(assert (= bs!471029 (and d!729506 b!2578678)))

(assert (=> bs!471029 (= (= lt!907205 lt!907208) (= lambda!95471 lambda!95470))))

(declare-fun bs!471030 () Bool)

(assert (= bs!471030 (and d!729506 b!2578175)))

(assert (=> bs!471030 (not (= lambda!95471 lambda!95369))))

(assert (=> bs!471029 (= (= lt!907205 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (= lambda!95471 lambda!95469))))

(declare-fun b!2578688 () Bool)

(declare-fun e!1627256 () Bool)

(assert (=> b!2578688 (= e!1627256 true)))

(assert (=> d!729506 e!1627256))

(assert (= d!729506 b!2578688))

(declare-fun e!1627248 () ListMap!1197)

(assert (=> b!2578676 (= e!1627248 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-datatypes ((Unit!43518 0))(
  ( (Unit!43519) )
))
(declare-fun lt!907204 () Unit!43518)

(declare-fun call!166713 () Unit!43518)

(assert (=> b!2578676 (= lt!907204 call!166713)))

(declare-fun call!166715 () Bool)

(assert (=> b!2578676 call!166715))

(declare-fun lt!907201 () Unit!43518)

(assert (=> b!2578676 (= lt!907201 lt!907204)))

(declare-fun call!166714 () Bool)

(assert (=> b!2578676 call!166714))

(declare-fun lt!907207 () Unit!43518)

(declare-fun Unit!43520 () Unit!43518)

(assert (=> b!2578676 (= lt!907207 Unit!43520)))

(declare-fun b!2578677 () Bool)

(declare-fun e!1627250 () Bool)

(assert (=> b!2578677 (= e!1627250 (invariantList!432 (toList!1718 lt!907205)))))

(assert (=> b!2578678 (= e!1627248 lt!907208)))

(declare-fun lt!907210 () ListMap!1197)

(declare-fun +!120 (ListMap!1197 tuple2!29634) ListMap!1197)

(assert (=> b!2578678 (= lt!907210 (+!120 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(assert (=> b!2578678 (= lt!907208 (addToMapMapFromBucket!22 (t!211653 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (+!120 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))))

(declare-fun lt!907198 () Unit!43518)

(assert (=> b!2578678 (= lt!907198 call!166713)))

(assert (=> b!2578678 (forall!6039 (toList!1718 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) lambda!95469)))

(declare-fun lt!907209 () Unit!43518)

(assert (=> b!2578678 (= lt!907209 lt!907198)))

(assert (=> b!2578678 (forall!6039 (toList!1718 lt!907210) lambda!95470)))

(declare-fun lt!907197 () Unit!43518)

(declare-fun Unit!43521 () Unit!43518)

(assert (=> b!2578678 (= lt!907197 Unit!43521)))

(assert (=> b!2578678 (forall!6039 (t!211653 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) lambda!95470)))

(declare-fun lt!907200 () Unit!43518)

(declare-fun Unit!43522 () Unit!43518)

(assert (=> b!2578678 (= lt!907200 Unit!43522)))

(declare-fun lt!907216 () Unit!43518)

(declare-fun Unit!43523 () Unit!43518)

(assert (=> b!2578678 (= lt!907216 Unit!43523)))

(declare-fun lt!907203 () Unit!43518)

(declare-fun forallContained!909 (List!29776 Int tuple2!29634) Unit!43518)

(assert (=> b!2578678 (= lt!907203 (forallContained!909 (toList!1718 lt!907210) lambda!95470 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(declare-fun contains!5310 (ListMap!1197 tuple2!29632) Bool)

(assert (=> b!2578678 (contains!5310 lt!907210 (_1!17359 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(declare-fun lt!907211 () Unit!43518)

(declare-fun Unit!43524 () Unit!43518)

(assert (=> b!2578678 (= lt!907211 Unit!43524)))

(assert (=> b!2578678 (contains!5310 lt!907208 (_1!17359 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(declare-fun lt!907202 () Unit!43518)

(declare-fun Unit!43525 () Unit!43518)

(assert (=> b!2578678 (= lt!907202 Unit!43525)))

(assert (=> b!2578678 (forall!6039 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lambda!95470)))

(declare-fun lt!907217 () Unit!43518)

(declare-fun Unit!43526 () Unit!43518)

(assert (=> b!2578678 (= lt!907217 Unit!43526)))

(assert (=> b!2578678 (forall!6039 (toList!1718 lt!907210) lambda!95470)))

(declare-fun lt!907214 () Unit!43518)

(declare-fun Unit!43527 () Unit!43518)

(assert (=> b!2578678 (= lt!907214 Unit!43527)))

(declare-fun lt!907199 () Unit!43518)

(declare-fun Unit!43528 () Unit!43518)

(assert (=> b!2578678 (= lt!907199 Unit!43528)))

(declare-fun lt!907215 () Unit!43518)

(declare-fun addForallContainsKeyThenBeforeAdding!3 (ListMap!1197 ListMap!1197 tuple2!29632 Int) Unit!43518)

(assert (=> b!2578678 (= lt!907215 (addForallContainsKeyThenBeforeAdding!3 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lt!907208 (_1!17359 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))) (_2!17359 (h!35096 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))))

(assert (=> b!2578678 (forall!6039 (toList!1718 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) lambda!95470)))

(declare-fun lt!907212 () Unit!43518)

(assert (=> b!2578678 (= lt!907212 lt!907215)))

(assert (=> b!2578678 call!166714))

(declare-fun lt!907213 () Unit!43518)

(declare-fun Unit!43529 () Unit!43518)

(assert (=> b!2578678 (= lt!907213 Unit!43529)))

(declare-fun res!1084693 () Bool)

(assert (=> b!2578678 (= res!1084693 (forall!6039 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lambda!95470))))

(declare-fun e!1627249 () Bool)

(assert (=> b!2578678 (=> (not res!1084693) (not e!1627249))))

(assert (=> b!2578678 e!1627249))

(declare-fun lt!907206 () Unit!43518)

(declare-fun Unit!43530 () Unit!43518)

(assert (=> b!2578678 (= lt!907206 Unit!43530)))

(declare-fun bm!166708 () Bool)

(declare-fun c!415363 () Bool)

(assert (=> bm!166708 (= call!166714 (forall!6039 (toList!1718 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (ite c!415363 lambda!95468 lambda!95470)))))

(declare-fun bm!166709 () Bool)

(assert (=> bm!166709 (= call!166715 (forall!6039 (toList!1718 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (ite c!415363 lambda!95468 lambda!95470)))))

(declare-fun bm!166710 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!3 (ListMap!1197) Unit!43518)

(assert (=> bm!166710 (= call!166713 (lemmaContainsAllItsOwnKeys!3 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(assert (=> d!729506 e!1627250))

(declare-fun res!1084695 () Bool)

(assert (=> d!729506 (=> (not res!1084695) (not e!1627250))))

(assert (=> d!729506 (= res!1084695 (forall!6039 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lambda!95471))))

(assert (=> d!729506 (= lt!907205 e!1627248)))

(assert (=> d!729506 (= c!415363 ((_ is Nil!29676) (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(assert (=> d!729506 (noDuplicateKeys!129 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(assert (=> d!729506 (= (addToMapMapFromBucket!22 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) lt!907205)))

(declare-fun b!2578679 () Bool)

(assert (=> b!2578679 (= e!1627249 call!166715)))

(declare-fun b!2578680 () Bool)

(declare-fun res!1084694 () Bool)

(assert (=> b!2578680 (=> (not res!1084694) (not e!1627250))))

(assert (=> b!2578680 (= res!1084694 (forall!6039 (toList!1718 (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) lambda!95471))))

(assert (= (and d!729506 c!415363) b!2578676))

(assert (= (and d!729506 (not c!415363)) b!2578678))

(assert (= (and b!2578678 res!1084693) b!2578679))

(assert (= (or b!2578676 b!2578678) bm!166710))

(assert (= (or b!2578676 b!2578678) bm!166708))

(assert (= (or b!2578676 b!2578679) bm!166709))

(assert (= (and d!729506 res!1084695) b!2578680))

(assert (= (and b!2578680 res!1084694) b!2578677))

(declare-fun m!2913545 () Bool)

(assert (=> b!2578678 m!2913545))

(declare-fun m!2913547 () Bool)

(assert (=> b!2578678 m!2913547))

(assert (=> b!2578678 m!2913547))

(declare-fun m!2913549 () Bool)

(assert (=> b!2578678 m!2913549))

(declare-fun m!2913551 () Bool)

(assert (=> b!2578678 m!2913551))

(assert (=> b!2578678 m!2913123))

(declare-fun m!2913553 () Bool)

(assert (=> b!2578678 m!2913553))

(declare-fun m!2913555 () Bool)

(assert (=> b!2578678 m!2913555))

(declare-fun m!2913557 () Bool)

(assert (=> b!2578678 m!2913557))

(declare-fun m!2913559 () Bool)

(assert (=> b!2578678 m!2913559))

(declare-fun m!2913561 () Bool)

(assert (=> b!2578678 m!2913561))

(declare-fun m!2913563 () Bool)

(assert (=> b!2578678 m!2913563))

(declare-fun m!2913565 () Bool)

(assert (=> b!2578678 m!2913565))

(assert (=> b!2578678 m!2913123))

(assert (=> b!2578678 m!2913557))

(assert (=> b!2578678 m!2913555))

(declare-fun m!2913567 () Bool)

(assert (=> b!2578677 m!2913567))

(declare-fun m!2913569 () Bool)

(assert (=> d!729506 m!2913569))

(assert (=> d!729506 m!2913229))

(assert (=> bm!166710 m!2913123))

(declare-fun m!2913571 () Bool)

(assert (=> bm!166710 m!2913571))

(declare-fun m!2913573 () Bool)

(assert (=> bm!166708 m!2913573))

(assert (=> bm!166709 m!2913573))

(declare-fun m!2913575 () Bool)

(assert (=> b!2578680 m!2913575))

(assert (=> b!2578375 d!729506))

(declare-fun bs!471031 () Bool)

(declare-fun d!729508 () Bool)

(assert (= bs!471031 (and d!729508 b!2578241)))

(declare-fun lambda!95472 () Int)

(assert (=> bs!471031 (= lambda!95472 lambda!95386)))

(declare-fun bs!471032 () Bool)

(assert (= bs!471032 (and d!729508 d!729324)))

(assert (=> bs!471032 (= lambda!95472 lambda!95401)))

(declare-fun bs!471033 () Bool)

(assert (= bs!471033 (and d!729508 d!729330)))

(assert (=> bs!471033 (not (= lambda!95472 lambda!95404))))

(declare-fun bs!471034 () Bool)

(assert (= bs!471034 (and d!729508 b!2578421)))

(assert (=> bs!471034 (= lambda!95472 lambda!95405)))

(declare-fun lt!907218 () ListMap!1197)

(assert (=> d!729508 (invariantList!432 (toList!1718 lt!907218))))

(declare-fun e!1627257 () ListMap!1197)

(assert (=> d!729508 (= lt!907218 e!1627257)))

(declare-fun c!415364 () Bool)

(assert (=> d!729508 (= c!415364 ((_ is Cons!29679) (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(assert (=> d!729508 (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lambda!95472)))

(assert (=> d!729508 (= (extractMap!211 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lt!907218)))

(declare-fun b!2578689 () Bool)

(assert (=> b!2578689 (= e!1627257 (addToMapMapFromBucket!22 (_2!17361 (h!35099 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (extractMap!211 (t!211656 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(declare-fun b!2578690 () Bool)

(assert (=> b!2578690 (= e!1627257 (ListMap!1198 Nil!29676))))

(assert (= (and d!729508 c!415364) b!2578689))

(assert (= (and d!729508 (not c!415364)) b!2578690))

(declare-fun m!2913577 () Bool)

(assert (=> d!729508 m!2913577))

(declare-fun m!2913579 () Bool)

(assert (=> d!729508 m!2913579))

(declare-fun m!2913581 () Bool)

(assert (=> b!2578689 m!2913581))

(assert (=> b!2578689 m!2913581))

(declare-fun m!2913583 () Bool)

(assert (=> b!2578689 m!2913583))

(assert (=> b!2578375 d!729508))

(declare-fun d!729510 () Bool)

(declare-fun res!1084696 () Bool)

(declare-fun e!1627258 () Bool)

(assert (=> d!729510 (=> res!1084696 e!1627258)))

(assert (=> d!729510 (= res!1084696 ((_ is Nil!29676) (t!211653 (t!211653 (toList!1718 lt!906942)))))))

(assert (=> d!729510 (= (forall!6039 (t!211653 (t!211653 (toList!1718 lt!906942))) lambda!95369) e!1627258)))

(declare-fun b!2578691 () Bool)

(declare-fun e!1627259 () Bool)

(assert (=> b!2578691 (= e!1627258 e!1627259)))

(declare-fun res!1084697 () Bool)

(assert (=> b!2578691 (=> (not res!1084697) (not e!1627259))))

(assert (=> b!2578691 (= res!1084697 (dynLambda!12532 lambda!95369 (h!35096 (t!211653 (t!211653 (toList!1718 lt!906942))))))))

(declare-fun b!2578692 () Bool)

(assert (=> b!2578692 (= e!1627259 (forall!6039 (t!211653 (t!211653 (t!211653 (toList!1718 lt!906942)))) lambda!95369))))

(assert (= (and d!729510 (not res!1084696)) b!2578691))

(assert (= (and b!2578691 res!1084697) b!2578692))

(declare-fun b_lambda!76501 () Bool)

(assert (=> (not b_lambda!76501) (not b!2578691)))

(declare-fun m!2913585 () Bool)

(assert (=> b!2578691 m!2913585))

(declare-fun m!2913587 () Bool)

(assert (=> b!2578692 m!2913587))

(assert (=> b!2578461 d!729510))

(declare-fun d!729512 () Bool)

(assert (=> d!729512 (= (max!0 (height!1344 (left!22606 (c!415312 totalInput!583))) (height!1344 (right!22936 (c!415312 totalInput!583)))) (ite (< (height!1344 (left!22606 (c!415312 totalInput!583))) (height!1344 (right!22936 (c!415312 totalInput!583)))) (height!1344 (right!22936 (c!415312 totalInput!583))) (height!1344 (left!22606 (c!415312 totalInput!583)))))))

(assert (=> b!2578456 d!729512))

(declare-fun d!729514 () Bool)

(assert (=> d!729514 (= (height!1344 (left!22606 (c!415312 totalInput!583))) (ite ((_ is Empty!9263) (left!22606 (c!415312 totalInput!583))) 0 (ite ((_ is Leaf!14127) (left!22606 (c!415312 totalInput!583))) 1 (cheight!9474 (left!22606 (c!415312 totalInput!583))))))))

(assert (=> b!2578456 d!729514))

(declare-fun d!729516 () Bool)

(assert (=> d!729516 (= (height!1344 (right!22936 (c!415312 totalInput!583))) (ite ((_ is Empty!9263) (right!22936 (c!415312 totalInput!583))) 0 (ite ((_ is Leaf!14127) (right!22936 (c!415312 totalInput!583))) 1 (cheight!9474 (right!22936 (c!415312 totalInput!583))))))))

(assert (=> b!2578456 d!729516))

(declare-fun d!729518 () Bool)

(assert (=> d!729518 (= (invariantList!432 (toList!1718 lt!906978)) (noDuplicatedKeys!73 (toList!1718 lt!906978)))))

(declare-fun bs!471035 () Bool)

(assert (= bs!471035 d!729518))

(declare-fun m!2913589 () Bool)

(assert (=> bs!471035 m!2913589))

(assert (=> d!729324 d!729518))

(declare-fun d!729520 () Bool)

(declare-fun res!1084698 () Bool)

(declare-fun e!1627260 () Bool)

(assert (=> d!729520 (=> res!1084698 e!1627260)))

(assert (=> d!729520 (= res!1084698 ((_ is Nil!29679) (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729520 (= (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95401) e!1627260)))

(declare-fun b!2578693 () Bool)

(declare-fun e!1627261 () Bool)

(assert (=> b!2578693 (= e!1627260 e!1627261)))

(declare-fun res!1084699 () Bool)

(assert (=> b!2578693 (=> (not res!1084699) (not e!1627261))))

(assert (=> b!2578693 (= res!1084699 (dynLambda!12534 lambda!95401 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun b!2578694 () Bool)

(assert (=> b!2578694 (= e!1627261 (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lambda!95401))))

(assert (= (and d!729520 (not res!1084698)) b!2578693))

(assert (= (and b!2578693 res!1084699) b!2578694))

(declare-fun b_lambda!76503 () Bool)

(assert (=> (not b_lambda!76503) (not b!2578693)))

(declare-fun m!2913591 () Bool)

(assert (=> b!2578693 m!2913591))

(declare-fun m!2913593 () Bool)

(assert (=> b!2578694 m!2913593))

(assert (=> d!729324 d!729520))

(declare-fun b!2578707 () Bool)

(declare-fun res!1084704 () Bool)

(declare-fun e!1627268 () Bool)

(assert (=> b!2578707 (=> (not res!1084704) (not e!1627268))))

(declare-fun lt!907281 () LongMapFixedSize!6876)

(assert (=> b!2578707 (= res!1084704 (= (mask!8853 lt!907281) (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(declare-fun b!2578708 () Bool)

(declare-fun e!1627270 () Unit!43518)

(declare-fun Unit!43531 () Unit!43518)

(assert (=> b!2578708 (= e!1627270 Unit!43531)))

(declare-fun lt!907280 () tuple2!29638)

(declare-fun lt!907285 () LongMapFixedSize!6876)

(declare-fun head!5849 (List!29779) tuple2!29638)

(assert (=> b!2578708 (= lt!907280 (head!5849 (toList!1720 (map!6575 lt!907285))))))

(declare-fun lt!907276 () array!12257)

(assert (=> b!2578708 (= lt!907276 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907275 () (_ BitVec 32))

(assert (=> b!2578708 (= lt!907275 #b00000000000000000000000000000000)))

(declare-fun lt!907278 () Unit!43518)

(declare-fun lt!907277 () List!29776)

(declare-fun lemmaKeyInListMapIsInArray!11 (array!12257 array!12255 (_ BitVec 32) (_ BitVec 32) List!29776 List!29776 (_ BitVec 64) Int) Unit!43518)

(assert (=> b!2578708 (= lt!907278 (lemmaKeyInListMapIsInArray!11 lt!907276 (array!12256 ((as const (Array (_ BitVec 32) List!29776)) lt!907277) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!16 #b00000000000000000000000000000001) lt!907275 lt!907277 lt!907277 (_1!17361 lt!907280) lambda!95391))))

(declare-fun c!415369 () Bool)

(assert (=> b!2578708 (= c!415369 (and (not (= (_1!17361 lt!907280) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!17361 lt!907280) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!1627269 () Bool)

(assert (=> b!2578708 e!1627269))

(declare-fun lt!907270 () Unit!43518)

(assert (=> b!2578708 (= lt!907270 lt!907278)))

(declare-fun lt!907268 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!12257 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!2578708 (= lt!907268 (arrayScanForKey!0 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!17361 lt!907280) #b00000000000000000000000000000000))))

(assert (=> b!2578708 false))

(declare-fun b!2578709 () Bool)

(declare-fun Unit!43532 () Unit!43518)

(assert (=> b!2578709 (= e!1627270 Unit!43532)))

(declare-fun b!2578711 () Bool)

(assert (=> b!2578711 (= e!1627268 (= (map!6575 lt!907281) (ListLongMap!672 Nil!29679)))))

(declare-fun b!2578712 () Bool)

(declare-fun arrayContainsKey!0 (array!12257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!2578712 (= e!1627269 (arrayContainsKey!0 lt!907276 (_1!17361 lt!907280) #b00000000000000000000000000000000))))

(declare-fun d!729522 () Bool)

(assert (=> d!729522 e!1627268))

(declare-fun res!1084705 () Bool)

(assert (=> d!729522 (=> (not res!1084705) (not e!1627268))))

(assert (=> d!729522 (= res!1084705 (valid!2655 lt!907281))))

(assert (=> d!729522 (= lt!907281 lt!907285)))

(declare-fun lt!907274 () Unit!43518)

(assert (=> d!729522 (= lt!907274 e!1627270)))

(declare-fun c!415370 () Bool)

(assert (=> d!729522 (= c!415370 (not (= (map!6575 lt!907285) (ListLongMap!672 Nil!29679))))))

(declare-fun lt!907289 () Unit!43518)

(declare-fun lt!907267 () Unit!43518)

(assert (=> d!729522 (= lt!907289 lt!907267)))

(declare-fun lt!907279 () array!12257)

(declare-fun lt!907273 () (_ BitVec 32))

(declare-fun lt!907287 () List!29781)

(assert (=> d!729522 (arrayNoDuplicates!0 lt!907279 lt!907273 lt!907287)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!12257 (_ BitVec 32) (_ BitVec 32) List!29781) Unit!43518)

(assert (=> d!729522 (= lt!907267 (lemmaArrayNoDuplicatesInAll0Array!0 lt!907279 lt!907273 (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!907287))))

(assert (=> d!729522 (= lt!907287 Nil!29681)))

(assert (=> d!729522 (= lt!907273 #b00000000000000000000000000000000)))

(assert (=> d!729522 (= lt!907279 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907269 () Unit!43518)

(declare-fun lt!907288 () Unit!43518)

(assert (=> d!729522 (= lt!907269 lt!907288)))

(declare-fun lt!907286 () (_ BitVec 32))

(declare-fun lt!907284 () array!12257)

(assert (=> d!729522 (arrayForallSeekEntryOrOpenFound!0 lt!907286 lt!907284 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!12257 (_ BitVec 32) (_ BitVec 32)) Unit!43518)

(assert (=> d!729522 (= lt!907288 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!907284 (bvsub initialSize!16 #b00000000000000000000000000000001) lt!907286))))

(assert (=> d!729522 (= lt!907286 #b00000000000000000000000000000000)))

(assert (=> d!729522 (= lt!907284 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907283 () Unit!43518)

(declare-fun lt!907282 () Unit!43518)

(assert (=> d!729522 (= lt!907283 lt!907282)))

(declare-fun lt!907272 () array!12257)

(declare-fun lt!907290 () (_ BitVec 32))

(declare-fun lt!907271 () (_ BitVec 32))

(assert (=> d!729522 (= (arrayCountValidKeys!0 lt!907272 lt!907290 lt!907271) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!12257 (_ BitVec 32) (_ BitVec 32)) Unit!43518)

(assert (=> d!729522 (= lt!907282 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!907272 lt!907290 lt!907271))))

(assert (=> d!729522 (= lt!907271 (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!729522 (= lt!907290 #b00000000000000000000000000000000)))

(assert (=> d!729522 (= lt!907272 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!729522 (= lt!907285 (LongMapFixedSize!6877 lambda!95391 (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!907277 lt!907277 #b00000000000000000000000000000000 (array!12258 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!12256 ((as const (Array (_ BitVec 32) List!29776)) lt!907277) (bvadd (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!12535 (Int (_ BitVec 64)) List!29776)

(assert (=> d!729522 (= lt!907277 (dynLambda!12535 lambda!95391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!729522 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729522 (= (getNewLongMapFixedSize!15 (bvsub initialSize!16 #b00000000000000000000000000000001) lambda!95391) lt!907281)))

(declare-fun b!2578710 () Bool)

(assert (=> b!2578710 (= e!1627269 (ite (= (_1!17361 lt!907280) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!907275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!907275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!729522 c!415370) b!2578708))

(assert (= (and d!729522 (not c!415370)) b!2578709))

(assert (= (and b!2578708 c!415369) b!2578712))

(assert (= (and b!2578708 (not c!415369)) b!2578710))

(assert (= (and d!729522 res!1084705) b!2578707))

(assert (= (and b!2578707 res!1084704) b!2578711))

(declare-fun b_lambda!76505 () Bool)

(assert (=> (not b_lambda!76505) (not d!729522)))

(declare-fun m!2913595 () Bool)

(assert (=> b!2578708 m!2913595))

(declare-fun m!2913597 () Bool)

(assert (=> b!2578708 m!2913597))

(declare-fun m!2913599 () Bool)

(assert (=> b!2578708 m!2913599))

(declare-fun m!2913601 () Bool)

(assert (=> b!2578708 m!2913601))

(declare-fun m!2913603 () Bool)

(assert (=> b!2578711 m!2913603))

(declare-fun m!2913605 () Bool)

(assert (=> b!2578712 m!2913605))

(declare-fun m!2913607 () Bool)

(assert (=> d!729522 m!2913607))

(declare-fun m!2913609 () Bool)

(assert (=> d!729522 m!2913609))

(declare-fun m!2913611 () Bool)

(assert (=> d!729522 m!2913611))

(declare-fun m!2913613 () Bool)

(assert (=> d!729522 m!2913613))

(assert (=> d!729522 m!2913595))

(declare-fun m!2913615 () Bool)

(assert (=> d!729522 m!2913615))

(assert (=> d!729522 m!2912921))

(declare-fun m!2913617 () Bool)

(assert (=> d!729522 m!2913617))

(declare-fun m!2913619 () Bool)

(assert (=> d!729522 m!2913619))

(declare-fun m!2913621 () Bool)

(assert (=> d!729522 m!2913621))

(assert (=> d!729328 d!729522))

(assert (=> d!729328 d!729266))

(declare-fun d!729524 () Bool)

(declare-fun res!1084706 () Bool)

(declare-fun e!1627271 () Bool)

(assert (=> d!729524 (=> (not res!1084706) (not e!1627271))))

(assert (=> d!729524 (= res!1084706 (<= (size!22993 (list!11212 (xs!12247 (left!22606 (c!415312 totalInput!583))))) 512))))

(assert (=> d!729524 (= (inv!40042 (left!22606 (c!415312 totalInput!583))) e!1627271)))

(declare-fun b!2578713 () Bool)

(declare-fun res!1084707 () Bool)

(assert (=> b!2578713 (=> (not res!1084707) (not e!1627271))))

(assert (=> b!2578713 (= res!1084707 (= (csize!18757 (left!22606 (c!415312 totalInput!583))) (size!22993 (list!11212 (xs!12247 (left!22606 (c!415312 totalInput!583)))))))))

(declare-fun b!2578714 () Bool)

(assert (=> b!2578714 (= e!1627271 (and (> (csize!18757 (left!22606 (c!415312 totalInput!583))) 0) (<= (csize!18757 (left!22606 (c!415312 totalInput!583))) 512)))))

(assert (= (and d!729524 res!1084706) b!2578713))

(assert (= (and b!2578713 res!1084707) b!2578714))

(declare-fun m!2913623 () Bool)

(assert (=> d!729524 m!2913623))

(assert (=> d!729524 m!2913623))

(declare-fun m!2913625 () Bool)

(assert (=> d!729524 m!2913625))

(assert (=> b!2578713 m!2913623))

(assert (=> b!2578713 m!2913623))

(assert (=> b!2578713 m!2913625))

(assert (=> b!2578399 d!729524))

(declare-fun bs!471036 () Bool)

(declare-fun d!729526 () Bool)

(assert (= bs!471036 (and d!729526 d!729508)))

(declare-fun lambda!95473 () Int)

(assert (=> bs!471036 (not (= lambda!95473 lambda!95472))))

(declare-fun bs!471037 () Bool)

(assert (= bs!471037 (and d!729526 b!2578421)))

(assert (=> bs!471037 (not (= lambda!95473 lambda!95405))))

(declare-fun bs!471038 () Bool)

(assert (= bs!471038 (and d!729526 d!729324)))

(assert (=> bs!471038 (not (= lambda!95473 lambda!95401))))

(declare-fun bs!471039 () Bool)

(assert (= bs!471039 (and d!729526 b!2578241)))

(assert (=> bs!471039 (not (= lambda!95473 lambda!95386))))

(declare-fun bs!471040 () Bool)

(assert (= bs!471040 (and d!729526 d!729330)))

(assert (=> bs!471040 (= (= (hashF!5381 lt!906960) (hashF!5381 lt!906940)) (= lambda!95473 lambda!95404))))

(assert (=> d!729526 true))

(assert (=> d!729526 (= (allKeysSameHashInMap!218 (map!6573 (v!31998 (underlying!7084 lt!906960))) (hashF!5381 lt!906960)) (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960)))) lambda!95473))))

(declare-fun bs!471041 () Bool)

(assert (= bs!471041 d!729526))

(declare-fun m!2913627 () Bool)

(assert (=> bs!471041 m!2913627))

(assert (=> b!2578422 d!729526))

(declare-fun d!729528 () Bool)

(assert (=> d!729528 (= (map!6573 (v!31998 (underlying!7084 lt!906960))) (map!6575 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906960))))))))

(declare-fun bs!471042 () Bool)

(assert (= bs!471042 d!729528))

(declare-fun m!2913629 () Bool)

(assert (=> bs!471042 m!2913629))

(assert (=> b!2578422 d!729528))

(declare-fun d!729530 () Bool)

(declare-fun res!1084708 () Bool)

(declare-fun e!1627272 () Bool)

(assert (=> d!729530 (=> (not res!1084708) (not e!1627272))))

(assert (=> d!729530 (= res!1084708 (= (csize!18756 (left!22606 (c!415312 totalInput!583))) (+ (size!22994 (left!22606 (left!22606 (c!415312 totalInput!583)))) (size!22994 (right!22936 (left!22606 (c!415312 totalInput!583)))))))))

(assert (=> d!729530 (= (inv!40041 (left!22606 (c!415312 totalInput!583))) e!1627272)))

(declare-fun b!2578715 () Bool)

(declare-fun res!1084709 () Bool)

(assert (=> b!2578715 (=> (not res!1084709) (not e!1627272))))

(assert (=> b!2578715 (= res!1084709 (and (not (= (left!22606 (left!22606 (c!415312 totalInput!583))) Empty!9263)) (not (= (right!22936 (left!22606 (c!415312 totalInput!583))) Empty!9263))))))

(declare-fun b!2578716 () Bool)

(declare-fun res!1084710 () Bool)

(assert (=> b!2578716 (=> (not res!1084710) (not e!1627272))))

(assert (=> b!2578716 (= res!1084710 (= (cheight!9474 (left!22606 (c!415312 totalInput!583))) (+ (max!0 (height!1344 (left!22606 (left!22606 (c!415312 totalInput!583)))) (height!1344 (right!22936 (left!22606 (c!415312 totalInput!583))))) 1)))))

(declare-fun b!2578717 () Bool)

(assert (=> b!2578717 (= e!1627272 (<= 0 (cheight!9474 (left!22606 (c!415312 totalInput!583)))))))

(assert (= (and d!729530 res!1084708) b!2578715))

(assert (= (and b!2578715 res!1084709) b!2578716))

(assert (= (and b!2578716 res!1084710) b!2578717))

(declare-fun m!2913631 () Bool)

(assert (=> d!729530 m!2913631))

(declare-fun m!2913633 () Bool)

(assert (=> d!729530 m!2913633))

(declare-fun m!2913635 () Bool)

(assert (=> b!2578716 m!2913635))

(declare-fun m!2913637 () Bool)

(assert (=> b!2578716 m!2913637))

(assert (=> b!2578716 m!2913635))

(assert (=> b!2578716 m!2913637))

(declare-fun m!2913639 () Bool)

(assert (=> b!2578716 m!2913639))

(assert (=> b!2578397 d!729530))

(declare-fun d!729532 () Bool)

(declare-fun res!1084711 () Bool)

(declare-fun e!1627273 () Bool)

(assert (=> d!729532 (=> res!1084711 e!1627273)))

(assert (=> d!729532 (= res!1084711 (or ((_ is Nil!29676) (toList!1718 (map!6571 lt!906940))) ((_ is Nil!29676) (t!211653 (toList!1718 (map!6571 lt!906940))))))))

(assert (=> d!729532 (= (noDuplicatedKeys!73 (toList!1718 (map!6571 lt!906940))) e!1627273)))

(declare-fun b!2578718 () Bool)

(declare-fun e!1627274 () Bool)

(assert (=> b!2578718 (= e!1627273 e!1627274)))

(declare-fun res!1084712 () Bool)

(assert (=> b!2578718 (=> (not res!1084712) (not e!1627274))))

(assert (=> b!2578718 (= res!1084712 (not (containsKey!184 (t!211653 (toList!1718 (map!6571 lt!906940))) (_1!17359 (h!35096 (toList!1718 (map!6571 lt!906940)))))))))

(declare-fun b!2578719 () Bool)

(assert (=> b!2578719 (= e!1627274 (noDuplicatedKeys!73 (t!211653 (toList!1718 (map!6571 lt!906940)))))))

(assert (= (and d!729532 (not res!1084711)) b!2578718))

(assert (= (and b!2578718 res!1084712) b!2578719))

(declare-fun m!2913641 () Bool)

(assert (=> b!2578718 m!2913641))

(declare-fun m!2913643 () Bool)

(assert (=> b!2578719 m!2913643))

(assert (=> d!729354 d!729532))

(declare-fun d!729534 () Bool)

(declare-fun res!1084713 () Bool)

(declare-fun e!1627275 () Bool)

(assert (=> d!729534 (=> res!1084713 e!1627275)))

(assert (=> d!729534 (= res!1084713 ((_ is Nil!29679) (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960))))))))

(assert (=> d!729534 (= (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960)))) lambda!95405) e!1627275)))

(declare-fun b!2578720 () Bool)

(declare-fun e!1627276 () Bool)

(assert (=> b!2578720 (= e!1627275 e!1627276)))

(declare-fun res!1084714 () Bool)

(assert (=> b!2578720 (=> (not res!1084714) (not e!1627276))))

(assert (=> b!2578720 (= res!1084714 (dynLambda!12534 lambda!95405 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960)))))))))

(declare-fun b!2578721 () Bool)

(assert (=> b!2578721 (= e!1627276 (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960))))) lambda!95405))))

(assert (= (and d!729534 (not res!1084713)) b!2578720))

(assert (= (and b!2578720 res!1084714) b!2578721))

(declare-fun b_lambda!76507 () Bool)

(assert (=> (not b_lambda!76507) (not b!2578720)))

(declare-fun m!2913645 () Bool)

(assert (=> b!2578720 m!2913645))

(declare-fun m!2913647 () Bool)

(assert (=> b!2578721 m!2913647))

(assert (=> b!2578421 d!729534))

(assert (=> b!2578421 d!729528))

(declare-fun d!729536 () Bool)

(declare-fun res!1084715 () Bool)

(declare-fun e!1627277 () Bool)

(assert (=> d!729536 (=> res!1084715 e!1627277)))

(assert (=> d!729536 (= res!1084715 ((_ is Nil!29679) (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(assert (=> d!729536 (= (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lambda!95386) e!1627277)))

(declare-fun b!2578722 () Bool)

(declare-fun e!1627278 () Bool)

(assert (=> b!2578722 (= e!1627277 e!1627278)))

(declare-fun res!1084716 () Bool)

(assert (=> b!2578722 (=> (not res!1084716) (not e!1627278))))

(assert (=> b!2578722 (= res!1084716 (dynLambda!12534 lambda!95386 (h!35099 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(declare-fun b!2578723 () Bool)

(assert (=> b!2578723 (= e!1627278 (forall!6041 (t!211656 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) lambda!95386))))

(assert (= (and d!729536 (not res!1084715)) b!2578722))

(assert (= (and b!2578722 res!1084716) b!2578723))

(declare-fun b_lambda!76509 () Bool)

(assert (=> (not b_lambda!76509) (not b!2578722)))

(declare-fun m!2913649 () Bool)

(assert (=> b!2578722 m!2913649))

(declare-fun m!2913651 () Bool)

(assert (=> b!2578723 m!2913651))

(assert (=> b!2578396 d!729536))

(declare-fun b!2578724 () Bool)

(declare-fun e!1627280 () Bool)

(assert (=> b!2578724 (= e!1627280 (not (isEmpty!17076 (right!22936 (right!22936 (c!415312 totalInput!583))))))))

(declare-fun b!2578725 () Bool)

(declare-fun e!1627279 () Bool)

(assert (=> b!2578725 (= e!1627279 e!1627280)))

(declare-fun res!1084718 () Bool)

(assert (=> b!2578725 (=> (not res!1084718) (not e!1627280))))

(assert (=> b!2578725 (= res!1084718 (<= (- 1) (- (height!1344 (left!22606 (right!22936 (c!415312 totalInput!583)))) (height!1344 (right!22936 (right!22936 (c!415312 totalInput!583)))))))))

(declare-fun b!2578726 () Bool)

(declare-fun res!1084717 () Bool)

(assert (=> b!2578726 (=> (not res!1084717) (not e!1627280))))

(assert (=> b!2578726 (= res!1084717 (<= (- (height!1344 (left!22606 (right!22936 (c!415312 totalInput!583)))) (height!1344 (right!22936 (right!22936 (c!415312 totalInput!583))))) 1))))

(declare-fun d!729538 () Bool)

(declare-fun res!1084720 () Bool)

(assert (=> d!729538 (=> res!1084720 e!1627279)))

(assert (=> d!729538 (= res!1084720 (not ((_ is Node!9263) (right!22936 (c!415312 totalInput!583)))))))

(assert (=> d!729538 (= (isBalanced!2822 (right!22936 (c!415312 totalInput!583))) e!1627279)))

(declare-fun b!2578727 () Bool)

(declare-fun res!1084722 () Bool)

(assert (=> b!2578727 (=> (not res!1084722) (not e!1627280))))

(assert (=> b!2578727 (= res!1084722 (isBalanced!2822 (left!22606 (right!22936 (c!415312 totalInput!583)))))))

(declare-fun b!2578728 () Bool)

(declare-fun res!1084719 () Bool)

(assert (=> b!2578728 (=> (not res!1084719) (not e!1627280))))

(assert (=> b!2578728 (= res!1084719 (not (isEmpty!17076 (left!22606 (right!22936 (c!415312 totalInput!583))))))))

(declare-fun b!2578729 () Bool)

(declare-fun res!1084721 () Bool)

(assert (=> b!2578729 (=> (not res!1084721) (not e!1627280))))

(assert (=> b!2578729 (= res!1084721 (isBalanced!2822 (right!22936 (right!22936 (c!415312 totalInput!583)))))))

(assert (= (and d!729538 (not res!1084720)) b!2578725))

(assert (= (and b!2578725 res!1084718) b!2578726))

(assert (= (and b!2578726 res!1084717) b!2578727))

(assert (= (and b!2578727 res!1084722) b!2578729))

(assert (= (and b!2578729 res!1084721) b!2578728))

(assert (= (and b!2578728 res!1084719) b!2578724))

(declare-fun m!2913653 () Bool)

(assert (=> b!2578729 m!2913653))

(assert (=> b!2578725 m!2913455))

(assert (=> b!2578725 m!2913457))

(assert (=> b!2578726 m!2913455))

(assert (=> b!2578726 m!2913457))

(declare-fun m!2913655 () Bool)

(assert (=> b!2578728 m!2913655))

(declare-fun m!2913657 () Bool)

(assert (=> b!2578724 m!2913657))

(declare-fun m!2913659 () Bool)

(assert (=> b!2578727 m!2913659))

(assert (=> b!2578420 d!729538))

(declare-fun d!729540 () Bool)

(assert (=> d!729540 (= (inv!40043 (xs!12247 (left!22606 (c!415312 totalInput!583)))) (<= (size!22993 (innerList!9323 (xs!12247 (left!22606 (c!415312 totalInput!583))))) 2147483647))))

(declare-fun bs!471043 () Bool)

(assert (= bs!471043 d!729540))

(declare-fun m!2913661 () Bool)

(assert (=> bs!471043 m!2913661))

(assert (=> b!2578463 d!729540))

(declare-fun d!729542 () Bool)

(declare-fun c!415371 () Bool)

(assert (=> d!729542 (= c!415371 ((_ is Node!9263) (left!22606 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun e!1627281 () Bool)

(assert (=> d!729542 (= (inv!40037 (left!22606 (left!22606 (c!415312 totalInput!583)))) e!1627281)))

(declare-fun b!2578730 () Bool)

(assert (=> b!2578730 (= e!1627281 (inv!40041 (left!22606 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun b!2578731 () Bool)

(declare-fun e!1627282 () Bool)

(assert (=> b!2578731 (= e!1627281 e!1627282)))

(declare-fun res!1084723 () Bool)

(assert (=> b!2578731 (= res!1084723 (not ((_ is Leaf!14127) (left!22606 (left!22606 (c!415312 totalInput!583))))))))

(assert (=> b!2578731 (=> res!1084723 e!1627282)))

(declare-fun b!2578732 () Bool)

(assert (=> b!2578732 (= e!1627282 (inv!40042 (left!22606 (left!22606 (c!415312 totalInput!583)))))))

(assert (= (and d!729542 c!415371) b!2578730))

(assert (= (and d!729542 (not c!415371)) b!2578731))

(assert (= (and b!2578731 (not res!1084723)) b!2578732))

(declare-fun m!2913663 () Bool)

(assert (=> b!2578730 m!2913663))

(declare-fun m!2913665 () Bool)

(assert (=> b!2578732 m!2913665))

(assert (=> b!2578462 d!729542))

(declare-fun d!729544 () Bool)

(declare-fun c!415372 () Bool)

(assert (=> d!729544 (= c!415372 ((_ is Node!9263) (right!22936 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun e!1627283 () Bool)

(assert (=> d!729544 (= (inv!40037 (right!22936 (left!22606 (c!415312 totalInput!583)))) e!1627283)))

(declare-fun b!2578733 () Bool)

(assert (=> b!2578733 (= e!1627283 (inv!40041 (right!22936 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun b!2578734 () Bool)

(declare-fun e!1627284 () Bool)

(assert (=> b!2578734 (= e!1627283 e!1627284)))

(declare-fun res!1084724 () Bool)

(assert (=> b!2578734 (= res!1084724 (not ((_ is Leaf!14127) (right!22936 (left!22606 (c!415312 totalInput!583))))))))

(assert (=> b!2578734 (=> res!1084724 e!1627284)))

(declare-fun b!2578735 () Bool)

(assert (=> b!2578735 (= e!1627284 (inv!40042 (right!22936 (left!22606 (c!415312 totalInput!583)))))))

(assert (= (and d!729544 c!415372) b!2578733))

(assert (= (and d!729544 (not c!415372)) b!2578734))

(assert (= (and b!2578734 (not res!1084724)) b!2578735))

(declare-fun m!2913667 () Bool)

(assert (=> b!2578733 m!2913667))

(declare-fun m!2913669 () Bool)

(assert (=> b!2578735 m!2913669))

(assert (=> b!2578462 d!729544))

(declare-fun d!729546 () Bool)

(declare-fun res!1084725 () Bool)

(declare-fun e!1627285 () Bool)

(assert (=> d!729546 (=> res!1084725 e!1627285)))

(assert (=> d!729546 (= res!1084725 (or ((_ is Nil!29676) (toList!1718 lt!906966)) ((_ is Nil!29676) (t!211653 (toList!1718 lt!906966)))))))

(assert (=> d!729546 (= (noDuplicatedKeys!73 (toList!1718 lt!906966)) e!1627285)))

(declare-fun b!2578736 () Bool)

(declare-fun e!1627286 () Bool)

(assert (=> b!2578736 (= e!1627285 e!1627286)))

(declare-fun res!1084726 () Bool)

(assert (=> b!2578736 (=> (not res!1084726) (not e!1627286))))

(assert (=> b!2578736 (= res!1084726 (not (containsKey!184 (t!211653 (toList!1718 lt!906966)) (_1!17359 (h!35096 (toList!1718 lt!906966))))))))

(declare-fun b!2578737 () Bool)

(assert (=> b!2578737 (= e!1627286 (noDuplicatedKeys!73 (t!211653 (toList!1718 lt!906966))))))

(assert (= (and d!729546 (not res!1084725)) b!2578736))

(assert (= (and b!2578736 res!1084726) b!2578737))

(declare-fun m!2913671 () Bool)

(assert (=> b!2578736 m!2913671))

(declare-fun m!2913673 () Bool)

(assert (=> b!2578737 m!2913673))

(assert (=> d!729322 d!729546))

(declare-fun d!729548 () Bool)

(declare-fun lt!907293 () Bool)

(declare-fun isEmpty!17077 (List!29777) Bool)

(assert (=> d!729548 (= lt!907293 (isEmpty!17077 (list!11214 (left!22606 (c!415312 totalInput!583)))))))

(assert (=> d!729548 (= lt!907293 (= (size!22994 (left!22606 (c!415312 totalInput!583))) 0))))

(assert (=> d!729548 (= (isEmpty!17076 (left!22606 (c!415312 totalInput!583))) lt!907293)))

(declare-fun bs!471044 () Bool)

(assert (= bs!471044 d!729548))

(assert (=> bs!471044 m!2913537))

(assert (=> bs!471044 m!2913537))

(declare-fun m!2913675 () Bool)

(assert (=> bs!471044 m!2913675))

(assert (=> bs!471044 m!2913203))

(assert (=> b!2578419 d!729548))

(declare-fun b!2578738 () Bool)

(declare-fun e!1627288 () Bool)

(assert (=> b!2578738 (= e!1627288 (not (isEmpty!17076 (right!22936 (left!22606 (c!415312 totalInput!583))))))))

(declare-fun b!2578739 () Bool)

(declare-fun e!1627287 () Bool)

(assert (=> b!2578739 (= e!1627287 e!1627288)))

(declare-fun res!1084728 () Bool)

(assert (=> b!2578739 (=> (not res!1084728) (not e!1627288))))

(assert (=> b!2578739 (= res!1084728 (<= (- 1) (- (height!1344 (left!22606 (left!22606 (c!415312 totalInput!583)))) (height!1344 (right!22936 (left!22606 (c!415312 totalInput!583)))))))))

(declare-fun b!2578740 () Bool)

(declare-fun res!1084727 () Bool)

(assert (=> b!2578740 (=> (not res!1084727) (not e!1627288))))

(assert (=> b!2578740 (= res!1084727 (<= (- (height!1344 (left!22606 (left!22606 (c!415312 totalInput!583)))) (height!1344 (right!22936 (left!22606 (c!415312 totalInput!583))))) 1))))

(declare-fun d!729550 () Bool)

(declare-fun res!1084730 () Bool)

(assert (=> d!729550 (=> res!1084730 e!1627287)))

(assert (=> d!729550 (= res!1084730 (not ((_ is Node!9263) (left!22606 (c!415312 totalInput!583)))))))

(assert (=> d!729550 (= (isBalanced!2822 (left!22606 (c!415312 totalInput!583))) e!1627287)))

(declare-fun b!2578741 () Bool)

(declare-fun res!1084732 () Bool)

(assert (=> b!2578741 (=> (not res!1084732) (not e!1627288))))

(assert (=> b!2578741 (= res!1084732 (isBalanced!2822 (left!22606 (left!22606 (c!415312 totalInput!583)))))))

(declare-fun b!2578742 () Bool)

(declare-fun res!1084729 () Bool)

(assert (=> b!2578742 (=> (not res!1084729) (not e!1627288))))

(assert (=> b!2578742 (= res!1084729 (not (isEmpty!17076 (left!22606 (left!22606 (c!415312 totalInput!583))))))))

(declare-fun b!2578743 () Bool)

(declare-fun res!1084731 () Bool)

(assert (=> b!2578743 (=> (not res!1084731) (not e!1627288))))

(assert (=> b!2578743 (= res!1084731 (isBalanced!2822 (right!22936 (left!22606 (c!415312 totalInput!583)))))))

(assert (= (and d!729550 (not res!1084730)) b!2578739))

(assert (= (and b!2578739 res!1084728) b!2578740))

(assert (= (and b!2578740 res!1084727) b!2578741))

(assert (= (and b!2578741 res!1084732) b!2578743))

(assert (= (and b!2578743 res!1084731) b!2578742))

(assert (= (and b!2578742 res!1084729) b!2578738))

(declare-fun m!2913677 () Bool)

(assert (=> b!2578743 m!2913677))

(assert (=> b!2578739 m!2913635))

(assert (=> b!2578739 m!2913637))

(assert (=> b!2578740 m!2913635))

(assert (=> b!2578740 m!2913637))

(declare-fun m!2913679 () Bool)

(assert (=> b!2578742 m!2913679))

(declare-fun m!2913681 () Bool)

(assert (=> b!2578738 m!2913681))

(declare-fun m!2913683 () Bool)

(assert (=> b!2578741 m!2913683))

(assert (=> b!2578418 d!729550))

(declare-fun d!729552 () Bool)

(assert (=> d!729552 (= (valid!2653 (v!31998 (underlying!7084 lt!906960))) (valid!2655 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906960))))))))

(declare-fun bs!471045 () Bool)

(assert (= bs!471045 d!729552))

(declare-fun m!2913685 () Bool)

(assert (=> bs!471045 m!2913685))

(assert (=> d!729346 d!729552))

(assert (=> b!2578417 d!729514))

(assert (=> b!2578417 d!729516))

(assert (=> b!2578416 d!729514))

(assert (=> b!2578416 d!729516))

(declare-fun d!729554 () Bool)

(declare-fun lt!907294 () Int)

(assert (=> d!729554 (>= lt!907294 0)))

(declare-fun e!1627289 () Int)

(assert (=> d!729554 (= lt!907294 e!1627289)))

(declare-fun c!415373 () Bool)

(assert (=> d!729554 (= c!415373 ((_ is Nil!29677) (list!11212 (xs!12247 (c!415312 totalInput!583)))))))

(assert (=> d!729554 (= (size!22993 (list!11212 (xs!12247 (c!415312 totalInput!583)))) lt!907294)))

(declare-fun b!2578744 () Bool)

(assert (=> b!2578744 (= e!1627289 0)))

(declare-fun b!2578745 () Bool)

(assert (=> b!2578745 (= e!1627289 (+ 1 (size!22993 (t!211654 (list!11212 (xs!12247 (c!415312 totalInput!583)))))))))

(assert (= (and d!729554 c!415373) b!2578744))

(assert (= (and d!729554 (not c!415373)) b!2578745))

(declare-fun m!2913687 () Bool)

(assert (=> b!2578745 m!2913687))

(assert (=> b!2578427 d!729554))

(declare-fun d!729556 () Bool)

(assert (=> d!729556 (= (list!11212 (xs!12247 (c!415312 totalInput!583))) (innerList!9323 (xs!12247 (c!415312 totalInput!583))))))

(assert (=> b!2578427 d!729556))

(declare-fun d!729558 () Bool)

(declare-fun getCurrentListMap!14 (array!12257 array!12255 (_ BitVec 32) (_ BitVec 32) List!29776 List!29776 (_ BitVec 32) Int) ListLongMap!671)

(assert (=> d!729558 (= (map!6575 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (getCurrentListMap!14 (_keys!3735 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (_values!3718 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (mask!8853 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (extraKeys!3686 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (zeroValue!3696 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) (minValue!3696 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940))))) #b00000000000000000000000000000000 (defaultEntry!3812 (v!31997 (underlying!7083 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun bs!471046 () Bool)

(assert (= bs!471046 d!729558))

(declare-fun m!2913689 () Bool)

(assert (=> bs!471046 m!2913689))

(assert (=> d!729326 d!729558))

(declare-fun d!729560 () Bool)

(declare-fun res!1084733 () Bool)

(declare-fun e!1627290 () Bool)

(assert (=> d!729560 (=> (not res!1084733) (not e!1627290))))

(assert (=> d!729560 (= res!1084733 (>= (_2!17358 (_1!17359 (h!35096 (toList!1718 (map!6571 lt!906940))))) 0))))

(assert (=> d!729560 (= (validCacheMapFindLongestMatchBody!4 (h!35096 (toList!1718 (map!6571 lt!906940))) totalInput!583) e!1627290)))

(declare-fun b!2578746 () Bool)

(declare-fun res!1084734 () Bool)

(assert (=> b!2578746 (=> (not res!1084734) (not e!1627290))))

(assert (=> b!2578746 (= res!1084734 (<= (_2!17358 (_1!17359 (h!35096 (toList!1718 (map!6571 lt!906940))))) (size!22992 totalInput!583)))))

(declare-fun b!2578747 () Bool)

(assert (=> b!2578747 (= e!1627290 (= (_2!17359 (h!35096 (toList!1718 (map!6571 lt!906940)))) (findLongestMatchInnerZipperFastV2!18 (_1!17358 (_1!17359 (h!35096 (toList!1718 (map!6571 lt!906940))))) (_2!17358 (_1!17359 (h!35096 (toList!1718 (map!6571 lt!906940))))) totalInput!583 (size!22992 totalInput!583))))))

(assert (= (and d!729560 res!1084733) b!2578746))

(assert (= (and b!2578746 res!1084734) b!2578747))

(assert (=> b!2578746 m!2913137))

(assert (=> b!2578747 m!2913137))

(assert (=> b!2578747 m!2913137))

(declare-fun m!2913691 () Bool)

(assert (=> b!2578747 m!2913691))

(assert (=> bs!470975 d!729560))

(assert (=> d!729348 d!729554))

(assert (=> d!729348 d!729556))

(declare-fun d!729562 () Bool)

(declare-fun res!1084735 () Bool)

(declare-fun e!1627291 () Bool)

(assert (=> d!729562 (=> res!1084735 e!1627291)))

(assert (=> d!729562 (= res!1084735 (or ((_ is Nil!29676) (t!211653 (toList!1718 lt!906942))) ((_ is Nil!29676) (t!211653 (t!211653 (toList!1718 lt!906942))))))))

(assert (=> d!729562 (= (noDuplicatedKeys!73 (t!211653 (toList!1718 lt!906942))) e!1627291)))

(declare-fun b!2578748 () Bool)

(declare-fun e!1627292 () Bool)

(assert (=> b!2578748 (= e!1627291 e!1627292)))

(declare-fun res!1084736 () Bool)

(assert (=> b!2578748 (=> (not res!1084736) (not e!1627292))))

(assert (=> b!2578748 (= res!1084736 (not (containsKey!184 (t!211653 (t!211653 (toList!1718 lt!906942))) (_1!17359 (h!35096 (t!211653 (toList!1718 lt!906942)))))))))

(declare-fun b!2578749 () Bool)

(assert (=> b!2578749 (= e!1627292 (noDuplicatedKeys!73 (t!211653 (t!211653 (toList!1718 lt!906942)))))))

(assert (= (and d!729562 (not res!1084735)) b!2578748))

(assert (= (and b!2578748 res!1084736) b!2578749))

(declare-fun m!2913693 () Bool)

(assert (=> b!2578748 m!2913693))

(declare-fun m!2913695 () Bool)

(assert (=> b!2578749 m!2913695))

(assert (=> b!2578436 d!729562))

(declare-fun d!729564 () Bool)

(declare-fun res!1084737 () Bool)

(declare-fun e!1627293 () Bool)

(assert (=> d!729564 (=> res!1084737 e!1627293)))

(assert (=> d!729564 (= res!1084737 ((_ is Nil!29679) (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))

(assert (=> d!729564 (= (forall!6041 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))) lambda!95404) e!1627293)))

(declare-fun b!2578750 () Bool)

(declare-fun e!1627294 () Bool)

(assert (=> b!2578750 (= e!1627293 e!1627294)))

(declare-fun res!1084738 () Bool)

(assert (=> b!2578750 (=> (not res!1084738) (not e!1627294))))

(assert (=> b!2578750 (= res!1084738 (dynLambda!12534 lambda!95404 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))

(declare-fun b!2578751 () Bool)

(assert (=> b!2578751 (= e!1627294 (forall!6041 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))) lambda!95404))))

(assert (= (and d!729564 (not res!1084737)) b!2578750))

(assert (= (and b!2578750 res!1084738) b!2578751))

(declare-fun b_lambda!76511 () Bool)

(assert (=> (not b_lambda!76511) (not b!2578750)))

(declare-fun m!2913697 () Bool)

(assert (=> b!2578750 m!2913697))

(declare-fun m!2913699 () Bool)

(assert (=> b!2578751 m!2913699))

(assert (=> d!729330 d!729564))

(declare-fun d!729566 () Bool)

(declare-fun lt!907295 () Bool)

(assert (=> d!729566 (= lt!907295 (isEmpty!17077 (list!11214 (right!22936 (c!415312 totalInput!583)))))))

(assert (=> d!729566 (= lt!907295 (= (size!22994 (right!22936 (c!415312 totalInput!583))) 0))))

(assert (=> d!729566 (= (isEmpty!17076 (right!22936 (c!415312 totalInput!583))) lt!907295)))

(declare-fun bs!471047 () Bool)

(assert (= bs!471047 d!729566))

(assert (=> bs!471047 m!2913541))

(assert (=> bs!471047 m!2913541))

(declare-fun m!2913701 () Bool)

(assert (=> bs!471047 m!2913701))

(assert (=> bs!471047 m!2913205))

(assert (=> b!2578415 d!729566))

(declare-fun d!729568 () Bool)

(declare-fun lt!907303 () Int)

(assert (=> d!729568 (and (>= lt!907303 0) (<= lt!907303 (- (size!22992 totalInput!583) (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))))))))

(declare-fun e!1627309 () Int)

(assert (=> d!729568 (= lt!907303 e!1627309)))

(declare-fun c!415380 () Bool)

(declare-fun e!1627305 () Bool)

(assert (=> d!729568 (= c!415380 e!1627305)))

(declare-fun res!1084744 () Bool)

(assert (=> d!729568 (=> res!1084744 e!1627305)))

(assert (=> d!729568 (= res!1084744 (= (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (size!22992 totalInput!583)))))

(declare-fun e!1627307 () Bool)

(assert (=> d!729568 e!1627307))

(declare-fun res!1084743 () Bool)

(assert (=> d!729568 (=> (not res!1084743) (not e!1627307))))

(assert (=> d!729568 (= res!1084743 (>= (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) 0))))

(assert (=> d!729568 (= (findLongestMatchInnerZipperFastV2!18 (_1!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) totalInput!583 (size!22992 totalInput!583)) lt!907303)))

(declare-fun b!2578768 () Bool)

(declare-fun e!1627306 () Int)

(assert (=> b!2578768 (= e!1627309 e!1627306)))

(declare-fun lt!907304 () (InoxSet Context!4250))

(declare-fun derivationStepZipper!341 ((InoxSet Context!4250) C!15456) (InoxSet Context!4250))

(declare-fun apply!7010 (BalanceConc!18140 Int) C!15456)

(assert (=> b!2578768 (= lt!907304 (derivationStepZipper!341 (_1!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (apply!7010 totalInput!583 (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))))))))

(declare-fun lt!907302 () Int)

(assert (=> b!2578768 (= lt!907302 (findLongestMatchInnerZipperFastV2!18 lt!907304 (+ (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) 1) totalInput!583 (size!22992 totalInput!583)))))

(declare-fun c!415381 () Bool)

(assert (=> b!2578768 (= c!415381 (> lt!907302 0))))

(declare-fun b!2578769 () Bool)

(assert (=> b!2578769 (= e!1627306 (+ 1 lt!907302))))

(declare-fun b!2578770 () Bool)

(declare-fun e!1627308 () Int)

(assert (=> b!2578770 (= e!1627308 0)))

(declare-fun b!2578771 () Bool)

(declare-fun c!415382 () Bool)

(declare-fun nullableZipper!601 ((InoxSet Context!4250)) Bool)

(assert (=> b!2578771 (= c!415382 (nullableZipper!601 lt!907304))))

(assert (=> b!2578771 (= e!1627306 e!1627308)))

(declare-fun b!2578772 () Bool)

(assert (=> b!2578772 (= e!1627308 1)))

(declare-fun b!2578773 () Bool)

(declare-fun lostCauseZipper!413 ((InoxSet Context!4250)) Bool)

(assert (=> b!2578773 (= e!1627305 (lostCauseZipper!413 (_1!17358 (_1!17359 (h!35096 (toList!1718 lt!906942))))))))

(declare-fun b!2578774 () Bool)

(assert (=> b!2578774 (= e!1627307 (<= (_2!17358 (_1!17359 (h!35096 (toList!1718 lt!906942)))) (size!22992 totalInput!583)))))

(declare-fun b!2578775 () Bool)

(assert (=> b!2578775 (= e!1627309 0)))

(assert (= (and d!729568 res!1084743) b!2578774))

(assert (= (and d!729568 (not res!1084744)) b!2578773))

(assert (= (and d!729568 c!415380) b!2578775))

(assert (= (and d!729568 (not c!415380)) b!2578768))

(assert (= (and b!2578768 c!415381) b!2578769))

(assert (= (and b!2578768 (not c!415381)) b!2578771))

(assert (= (and b!2578771 c!415382) b!2578772))

(assert (= (and b!2578771 (not c!415382)) b!2578770))

(declare-fun m!2913703 () Bool)

(assert (=> b!2578768 m!2913703))

(assert (=> b!2578768 m!2913703))

(declare-fun m!2913705 () Bool)

(assert (=> b!2578768 m!2913705))

(assert (=> b!2578768 m!2913137))

(declare-fun m!2913707 () Bool)

(assert (=> b!2578768 m!2913707))

(declare-fun m!2913709 () Bool)

(assert (=> b!2578771 m!2913709))

(declare-fun m!2913711 () Bool)

(assert (=> b!2578773 m!2913711))

(assert (=> b!2578774 m!2913137))

(assert (=> b!2578390 d!729568))

(assert (=> b!2578390 d!729448))

(declare-fun d!729570 () Bool)

(declare-fun res!1084745 () Bool)

(declare-fun e!1627310 () Bool)

(assert (=> d!729570 (=> (not res!1084745) (not e!1627310))))

(assert (=> d!729570 (= res!1084745 (<= (size!22993 (list!11212 (xs!12247 (right!22936 (c!415312 totalInput!583))))) 512))))

(assert (=> d!729570 (= (inv!40042 (right!22936 (c!415312 totalInput!583))) e!1627310)))

(declare-fun b!2578776 () Bool)

(declare-fun res!1084746 () Bool)

(assert (=> b!2578776 (=> (not res!1084746) (not e!1627310))))

(assert (=> b!2578776 (= res!1084746 (= (csize!18757 (right!22936 (c!415312 totalInput!583))) (size!22993 (list!11212 (xs!12247 (right!22936 (c!415312 totalInput!583)))))))))

(declare-fun b!2578777 () Bool)

(assert (=> b!2578777 (= e!1627310 (and (> (csize!18757 (right!22936 (c!415312 totalInput!583))) 0) (<= (csize!18757 (right!22936 (c!415312 totalInput!583))) 512)))))

(assert (= (and d!729570 res!1084745) b!2578776))

(assert (= (and b!2578776 res!1084746) b!2578777))

(declare-fun m!2913713 () Bool)

(assert (=> d!729570 m!2913713))

(assert (=> d!729570 m!2913713))

(declare-fun m!2913715 () Bool)

(assert (=> d!729570 m!2913715))

(assert (=> b!2578776 m!2913713))

(assert (=> b!2578776 m!2913713))

(assert (=> b!2578776 m!2913715))

(assert (=> b!2578402 d!729570))

(declare-fun e!1627311 () Bool)

(declare-fun b!2578778 () Bool)

(declare-fun tp!819290 () Bool)

(declare-fun tp!819291 () Bool)

(assert (=> b!2578778 (= e!1627311 (and (inv!40037 (left!22606 (left!22606 (left!22606 (c!415312 totalInput!583))))) tp!819290 (inv!40037 (right!22936 (left!22606 (left!22606 (c!415312 totalInput!583))))) tp!819291))))

(declare-fun b!2578780 () Bool)

(declare-fun e!1627312 () Bool)

(declare-fun tp!819292 () Bool)

(assert (=> b!2578780 (= e!1627312 tp!819292)))

(declare-fun b!2578779 () Bool)

(assert (=> b!2578779 (= e!1627311 (and (inv!40043 (xs!12247 (left!22606 (left!22606 (c!415312 totalInput!583))))) e!1627312))))

(assert (=> b!2578462 (= tp!819266 (and (inv!40037 (left!22606 (left!22606 (c!415312 totalInput!583)))) e!1627311))))

(assert (= (and b!2578462 ((_ is Node!9263) (left!22606 (left!22606 (c!415312 totalInput!583))))) b!2578778))

(assert (= b!2578779 b!2578780))

(assert (= (and b!2578462 ((_ is Leaf!14127) (left!22606 (left!22606 (c!415312 totalInput!583))))) b!2578779))

(declare-fun m!2913717 () Bool)

(assert (=> b!2578778 m!2913717))

(declare-fun m!2913719 () Bool)

(assert (=> b!2578778 m!2913719))

(declare-fun m!2913721 () Bool)

(assert (=> b!2578779 m!2913721))

(assert (=> b!2578462 m!2913215))

(declare-fun b!2578781 () Bool)

(declare-fun tp!819294 () Bool)

(declare-fun tp!819293 () Bool)

(declare-fun e!1627313 () Bool)

(assert (=> b!2578781 (= e!1627313 (and (inv!40037 (left!22606 (right!22936 (left!22606 (c!415312 totalInput!583))))) tp!819293 (inv!40037 (right!22936 (right!22936 (left!22606 (c!415312 totalInput!583))))) tp!819294))))

(declare-fun b!2578783 () Bool)

(declare-fun e!1627314 () Bool)

(declare-fun tp!819295 () Bool)

(assert (=> b!2578783 (= e!1627314 tp!819295)))

(declare-fun b!2578782 () Bool)

(assert (=> b!2578782 (= e!1627313 (and (inv!40043 (xs!12247 (right!22936 (left!22606 (c!415312 totalInput!583))))) e!1627314))))

(assert (=> b!2578462 (= tp!819267 (and (inv!40037 (right!22936 (left!22606 (c!415312 totalInput!583)))) e!1627313))))

(assert (= (and b!2578462 ((_ is Node!9263) (right!22936 (left!22606 (c!415312 totalInput!583))))) b!2578781))

(assert (= b!2578782 b!2578783))

(assert (= (and b!2578462 ((_ is Leaf!14127) (right!22936 (left!22606 (c!415312 totalInput!583))))) b!2578782))

(declare-fun m!2913723 () Bool)

(assert (=> b!2578781 m!2913723))

(declare-fun m!2913725 () Bool)

(assert (=> b!2578781 m!2913725))

(declare-fun m!2913727 () Bool)

(assert (=> b!2578782 m!2913727))

(assert (=> b!2578462 m!2913217))

(declare-fun b!2578784 () Bool)

(declare-fun e!1627315 () Bool)

(declare-fun tp!819296 () Bool)

(assert (=> b!2578784 (= e!1627315 (and tp_is_empty!13193 tp!819296))))

(assert (=> b!2578467 (= tp!819271 e!1627315)))

(assert (= (and b!2578467 ((_ is Cons!29677) (innerList!9323 (xs!12247 (right!22936 (c!415312 totalInput!583)))))) b!2578784))

(declare-fun b!2578785 () Bool)

(declare-fun e!1627316 () Bool)

(declare-fun tp!819297 () Bool)

(assert (=> b!2578785 (= e!1627316 (and tp_is_empty!13193 tp!819297))))

(assert (=> b!2578476 (= tp!819274 e!1627316)))

(assert (= (and b!2578476 ((_ is Cons!29677) (t!211654 (innerList!9323 (xs!12247 (c!415312 totalInput!583)))))) b!2578785))

(declare-fun tp!819298 () Bool)

(declare-fun e!1627317 () Bool)

(declare-fun b!2578786 () Bool)

(declare-fun tp!819299 () Bool)

(assert (=> b!2578786 (= e!1627317 (and (inv!40037 (left!22606 (left!22606 (right!22936 (c!415312 totalInput!583))))) tp!819298 (inv!40037 (right!22936 (left!22606 (right!22936 (c!415312 totalInput!583))))) tp!819299))))

(declare-fun b!2578788 () Bool)

(declare-fun e!1627318 () Bool)

(declare-fun tp!819300 () Bool)

(assert (=> b!2578788 (= e!1627318 tp!819300)))

(declare-fun b!2578787 () Bool)

(assert (=> b!2578787 (= e!1627317 (and (inv!40043 (xs!12247 (left!22606 (right!22936 (c!415312 totalInput!583))))) e!1627318))))

(assert (=> b!2578465 (= tp!819269 (and (inv!40037 (left!22606 (right!22936 (c!415312 totalInput!583)))) e!1627317))))

(assert (= (and b!2578465 ((_ is Node!9263) (left!22606 (right!22936 (c!415312 totalInput!583))))) b!2578786))

(assert (= b!2578787 b!2578788))

(assert (= (and b!2578465 ((_ is Leaf!14127) (left!22606 (right!22936 (c!415312 totalInput!583))))) b!2578787))

(declare-fun m!2913729 () Bool)

(assert (=> b!2578786 m!2913729))

(declare-fun m!2913731 () Bool)

(assert (=> b!2578786 m!2913731))

(declare-fun m!2913733 () Bool)

(assert (=> b!2578787 m!2913733))

(assert (=> b!2578465 m!2913221))

(declare-fun tp!819302 () Bool)

(declare-fun e!1627319 () Bool)

(declare-fun b!2578789 () Bool)

(declare-fun tp!819301 () Bool)

(assert (=> b!2578789 (= e!1627319 (and (inv!40037 (left!22606 (right!22936 (right!22936 (c!415312 totalInput!583))))) tp!819301 (inv!40037 (right!22936 (right!22936 (right!22936 (c!415312 totalInput!583))))) tp!819302))))

(declare-fun b!2578791 () Bool)

(declare-fun e!1627320 () Bool)

(declare-fun tp!819303 () Bool)

(assert (=> b!2578791 (= e!1627320 tp!819303)))

(declare-fun b!2578790 () Bool)

(assert (=> b!2578790 (= e!1627319 (and (inv!40043 (xs!12247 (right!22936 (right!22936 (c!415312 totalInput!583))))) e!1627320))))

(assert (=> b!2578465 (= tp!819270 (and (inv!40037 (right!22936 (right!22936 (c!415312 totalInput!583)))) e!1627319))))

(assert (= (and b!2578465 ((_ is Node!9263) (right!22936 (right!22936 (c!415312 totalInput!583))))) b!2578789))

(assert (= b!2578790 b!2578791))

(assert (= (and b!2578465 ((_ is Leaf!14127) (right!22936 (right!22936 (c!415312 totalInput!583))))) b!2578790))

(declare-fun m!2913735 () Bool)

(assert (=> b!2578789 m!2913735))

(declare-fun m!2913737 () Bool)

(assert (=> b!2578789 m!2913737))

(declare-fun m!2913739 () Bool)

(assert (=> b!2578790 m!2913739))

(assert (=> b!2578465 m!2913223))

(declare-fun b!2578792 () Bool)

(declare-fun e!1627321 () Bool)

(declare-fun tp!819304 () Bool)

(assert (=> b!2578792 (= e!1627321 (and tp_is_empty!13193 tp!819304))))

(assert (=> b!2578464 (= tp!819268 e!1627321)))

(assert (= (and b!2578464 ((_ is Cons!29677) (innerList!9323 (xs!12247 (left!22606 (c!415312 totalInput!583)))))) b!2578792))

(declare-fun b_lambda!76513 () Bool)

(assert (= b_lambda!76505 (or d!729258 b_lambda!76513)))

(declare-fun bs!471048 () Bool)

(declare-fun d!729572 () Bool)

(assert (= bs!471048 (and d!729572 d!729258)))

(assert (=> bs!471048 (= (dynLambda!12535 lambda!95391 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!29676)))

(assert (=> d!729522 d!729572))

(declare-fun b_lambda!76515 () Bool)

(assert (= b_lambda!76503 (or d!729324 b_lambda!76515)))

(declare-fun bs!471049 () Bool)

(declare-fun d!729574 () Bool)

(assert (= bs!471049 (and d!729574 d!729324)))

(assert (=> bs!471049 (= (dynLambda!12534 lambda!95401 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (noDuplicateKeys!129 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))))))

(assert (=> bs!471049 m!2913229))

(assert (=> b!2578693 d!729574))

(declare-fun b_lambda!76517 () Bool)

(assert (= b_lambda!76501 (or b!2578175 b_lambda!76517)))

(declare-fun bs!471050 () Bool)

(declare-fun d!729576 () Bool)

(assert (= bs!471050 (and d!729576 b!2578175)))

(assert (=> bs!471050 (= (dynLambda!12532 lambda!95369 (h!35096 (t!211653 (t!211653 (toList!1718 lt!906942))))) (validCacheMapFindLongestMatchBody!4 (h!35096 (t!211653 (t!211653 (toList!1718 lt!906942)))) totalInput!583))))

(declare-fun m!2913741 () Bool)

(assert (=> bs!471050 m!2913741))

(assert (=> b!2578691 d!729576))

(declare-fun b_lambda!76519 () Bool)

(assert (= b_lambda!76499 (or b!2578219 b_lambda!76519)))

(declare-fun bs!471051 () Bool)

(declare-fun d!729578 () Bool)

(assert (= bs!471051 (and d!729578 b!2578219)))

(assert (=> bs!471051 (= (dynLambda!12532 lambda!95383 (h!35096 (t!211653 (toList!1718 (map!6571 lt!906940))))) (validCacheMapFindLongestMatchBody!4 (h!35096 (t!211653 (toList!1718 (map!6571 lt!906940)))) totalInput!583))))

(declare-fun m!2913743 () Bool)

(assert (=> bs!471051 m!2913743))

(assert (=> b!2578658 d!729578))

(declare-fun b_lambda!76521 () Bool)

(assert (= b_lambda!76507 (or b!2578421 b_lambda!76521)))

(declare-fun bs!471052 () Bool)

(declare-fun d!729580 () Bool)

(assert (= bs!471052 (and d!729580 b!2578421)))

(assert (=> bs!471052 (= (dynLambda!12534 lambda!95405 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960)))))) (noDuplicateKeys!129 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906960))))))))))

(declare-fun m!2913745 () Bool)

(assert (=> bs!471052 m!2913745))

(assert (=> b!2578720 d!729580))

(declare-fun b_lambda!76523 () Bool)

(assert (= b_lambda!76509 (or b!2578241 b_lambda!76523)))

(declare-fun bs!471053 () Bool)

(declare-fun d!729582 () Bool)

(assert (= bs!471053 (and d!729582 b!2578241)))

(assert (=> bs!471053 (= (dynLambda!12534 lambda!95386 (h!35099 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940))))))) (noDuplicateKeys!129 (_2!17361 (h!35099 (t!211656 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))))))))

(declare-fun m!2913747 () Bool)

(assert (=> bs!471053 m!2913747))

(assert (=> b!2578722 d!729582))

(declare-fun b_lambda!76525 () Bool)

(assert (= b_lambda!76511 (or d!729330 b_lambda!76525)))

(declare-fun bs!471054 () Bool)

(declare-fun d!729584 () Bool)

(assert (= bs!471054 (and d!729584 d!729330)))

(declare-fun allKeysSameHash!101 (List!29776 (_ BitVec 64) Hashable!3358) Bool)

(assert (=> bs!471054 (= (dynLambda!12534 lambda!95404 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (allKeysSameHash!101 (_2!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (_1!17361 (h!35099 (toList!1720 (map!6573 (v!31998 (underlying!7084 lt!906940)))))) (hashF!5381 lt!906940)))))

(declare-fun m!2913749 () Bool)

(assert (=> bs!471054 m!2913749))

(assert (=> b!2578750 d!729584))

(check-sat (not b!2578747) (not d!729566) (not b!2578659) (not b!2578726) (not b!2578743) (not b!2578733) (not b!2578718) (not bs!471053) (not bm!166708) (not b!2578616) (not b!2578711) (not b!2578746) (not d!729524) (not b!2578776) (not b!2578790) (not b!2578745) tp_is_empty!13193 (not b!2578708) (not b!2578727) (not bm!166710) (not d!729558) (not b_lambda!76519) (not b_lambda!76469) (not b_lambda!76525) (not b!2578774) (not d!729462) (not b!2578712) (not b!2578751) (not b!2578779) (not b!2578741) (not b_lambda!76521) (not b_lambda!76517) (not b!2578749) (not b!2578783) (not b!2578781) (not b!2578737) (not b!2578622) (not b!2578686) (not b!2578748) (not d!729552) (not d!729508) (not b!2578740) (not b!2578723) (not d!729540) (not d!729522) (not b!2578732) (not b!2578786) (not b!2578728) (not b!2578736) (not d!729506) (not b!2578792) (not b!2578780) (not b!2578692) (not b!2578623) (not d!729526) (not d!729528) (not d!729464) (not b!2578721) (not b!2578462) (not b!2578789) (not b!2578651) (not b!2578647) (not b!2578678) (not b!2578664) (not b!2578689) (not b_lambda!76515) (not b_lambda!76513) (not b_lambda!76465) (not b!2578785) (not b!2578738) (not b!2578791) (not b!2578742) (not b!2578784) (not d!729504) (not d!729530) (not b!2578680) (not d!729472) (not bs!471050) (not b!2578778) (not b!2578725) (not b!2578713) (not b!2578787) (not b_lambda!76445) (not b!2578614) (not b!2578649) (not b!2578620) (not d!729494) (not d!729518) (not b!2578650) (not b!2578719) (not b!2578788) (not b!2578730) (not b!2578688) (not b!2578625) (not b_lambda!76523) (not b!2578648) (not b!2578782) (not d!729448) (not bs!471054) (not b!2578729) (not b!2578677) (not b!2578739) (not b!2578716) (not bs!471049) (not b!2578771) (not b!2578724) (not d!729570) (not b_lambda!76467) (not bs!471051) (not b!2578665) (not b!2578685) (not d!729502) (not b!2578768) (not b!2578694) (not bs!471052) (not b!2578773) (not b!2578657) (not b!2578687) (not d!729498) (not bm!166709) (not b!2578465) (not d!729548) (not b!2578735))
(check-sat)
