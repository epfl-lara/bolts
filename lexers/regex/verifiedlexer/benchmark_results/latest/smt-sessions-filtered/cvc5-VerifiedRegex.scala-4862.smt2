; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249260 () Bool)

(assert start!249260)

(declare-fun b!2578044 () Bool)

(assert (=> b!2578044 true))

(declare-fun res!1084309 () Bool)

(declare-fun e!1626834 () Bool)

(assert (=> start!249260 (=> (not res!1084309) (not e!1626834))))

(declare-fun initialSize!16 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249260 (= res!1084309 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(assert (=> start!249260 e!1626834))

(assert (=> start!249260 true))

(declare-datatypes ((C!15450 0))(
  ( (C!15451 (val!9401 Int)) )
))
(declare-datatypes ((List!29765 0))(
  ( (Nil!29665) (Cons!29665 (h!35085 C!15450) (t!211642 List!29765)) )
))
(declare-datatypes ((IArray!18525 0))(
  ( (IArray!18526 (innerList!9320 List!29765)) )
))
(declare-datatypes ((Conc!9260 0))(
  ( (Node!9260 (left!22596 Conc!9260) (right!22926 Conc!9260) (csize!18750 Int) (cheight!9471 Int)) (Leaf!14123 (xs!12244 IArray!18525) (csize!18751 Int)) (Empty!9260) )
))
(declare-datatypes ((BalanceConc!18134 0))(
  ( (BalanceConc!18135 (c!415302 Conc!9260)) )
))
(declare-fun totalInput!583 () BalanceConc!18134)

(declare-fun e!1626835 () Bool)

(declare-fun inv!40024 (BalanceConc!18134) Bool)

(assert (=> start!249260 (and (inv!40024 totalInput!583) e!1626835)))

(declare-fun b!2578042 () Bool)

(declare-datatypes ((Regex!7646 0))(
  ( (ElementMatch!7646 (c!415303 C!15450)) (Concat!12370 (regOne!15804 Regex!7646) (regTwo!15804 Regex!7646)) (EmptyExpr!7646) (Star!7646 (reg!7975 Regex!7646)) (EmptyLang!7646) (Union!7646 (regOne!15805 Regex!7646) (regTwo!15805 Regex!7646)) )
))
(declare-datatypes ((List!29766 0))(
  ( (Nil!29666) (Cons!29666 (h!35086 Regex!7646) (t!211643 List!29766)) )
))
(declare-datatypes ((Context!4244 0))(
  ( (Context!4245 (exprs!2622 List!29766)) )
))
(declare-datatypes ((tuple2!29618 0))(
  ( (tuple2!29619 (_1!17351 (Set Context!4244)) (_2!17351 Int)) )
))
(declare-datatypes ((tuple2!29620 0))(
  ( (tuple2!29621 (_1!17352 tuple2!29618) (_2!17352 Int)) )
))
(declare-datatypes ((List!29767 0))(
  ( (Nil!29667) (Cons!29667 (h!35087 tuple2!29620) (t!211644 List!29767)) )
))
(declare-datatypes ((array!12243 0))(
  ( (array!12244 (arr!5460 (Array (_ BitVec 32) List!29767)) (size!22976 (_ BitVec 32))) )
))
(declare-datatypes ((array!12245 0))(
  ( (array!12246 (arr!5461 (Array (_ BitVec 32) (_ BitVec 64))) (size!22977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6870 0))(
  ( (LongMapFixedSize!6871 (defaultEntry!3809 Int) (mask!8848 (_ BitVec 32)) (extraKeys!3683 (_ BitVec 32)) (zeroValue!3693 List!29767) (minValue!3693 List!29767) (_size!6917 (_ BitVec 32)) (_keys!3732 array!12245) (_values!3715 array!12243) (_vacant!3496 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13557 0))(
  ( (Cell!13558 (v!31991 LongMapFixedSize!6870)) )
))
(declare-datatypes ((MutLongMap!3435 0))(
  ( (LongMap!3435 (underlying!7077 Cell!13557)) (MutLongMapExt!3434 (__x!19249 Int)) )
))
(declare-datatypes ((Cell!13559 0))(
  ( (Cell!13560 (v!31992 MutLongMap!3435)) )
))
(declare-datatypes ((Hashable!3355 0))(
  ( (HashableExt!3354 (__x!19250 Int)) )
))
(declare-datatypes ((MutableMap!3345 0))(
  ( (MutableMapExt!3344 (__x!19251 Int)) (HashMap!3345 (underlying!7078 Cell!13559) (hashF!5376 Hashable!3355) (_size!6918 (_ BitVec 32)) (defaultValue!3509 Int)) )
))
(declare-fun lt!906888 () MutableMap!3345)

(assert (=> b!2578042 (= e!1626834 (not (is-HashMap!3345 lt!906888)))))

(declare-fun e!1626837 () Bool)

(declare-fun validCacheMapFindLongestMatch!58 (MutableMap!3345 BalanceConc!18134) Bool)

(assert (=> b!2578042 (= (validCacheMapFindLongestMatch!58 lt!906888 totalInput!583) e!1626837)))

(declare-fun res!1084308 () Bool)

(assert (=> b!2578042 (=> (not res!1084308) (not e!1626837))))

(declare-fun valid!2647 (MutableMap!3345) Bool)

(assert (=> b!2578042 (= res!1084308 (valid!2647 lt!906888))))

(declare-fun hashF!508 () Hashable!3355)

(declare-fun lambda!95328 () Int)

(declare-fun getEmptyHashMap!22 (Int Hashable!3355 (_ BitVec 32)) MutableMap!3345)

(assert (=> b!2578042 (= lt!906888 (getEmptyHashMap!22 lambda!95328 hashF!508 initialSize!16))))

(declare-fun b!2578043 () Bool)

(declare-fun e!1626836 () Bool)

(assert (=> b!2578043 (= e!1626837 e!1626836)))

(declare-fun res!1084310 () Bool)

(assert (=> b!2578043 (=> (not res!1084310) (not e!1626836))))

(declare-datatypes ((ListMap!1191 0))(
  ( (ListMap!1192 (toList!1714 List!29767)) )
))
(declare-fun lt!906887 () ListMap!1191)

(declare-fun invariantList!429 (List!29767) Bool)

(assert (=> b!2578043 (= res!1084310 (invariantList!429 (toList!1714 lt!906887)))))

(declare-fun map!6566 (MutableMap!3345) ListMap!1191)

(assert (=> b!2578043 (= lt!906887 (map!6566 lt!906888))))

(declare-fun lambda!95329 () Int)

(declare-fun forall!6035 (List!29767 Int) Bool)

(assert (=> b!2578044 (= e!1626836 (forall!6035 (toList!1714 lt!906887) lambda!95329))))

(declare-fun b!2578045 () Bool)

(declare-fun tp!819211 () Bool)

(declare-fun inv!40025 (Conc!9260) Bool)

(assert (=> b!2578045 (= e!1626835 (and (inv!40025 (c!415302 totalInput!583)) tp!819211))))

(assert (= (and start!249260 res!1084309) b!2578042))

(assert (= (and b!2578042 res!1084308) b!2578043))

(assert (= (and b!2578043 res!1084310) b!2578044))

(assert (= start!249260 b!2578045))

(declare-fun m!2912791 () Bool)

(assert (=> b!2578043 m!2912791))

(declare-fun m!2912793 () Bool)

(assert (=> b!2578043 m!2912793))

(declare-fun m!2912795 () Bool)

(assert (=> start!249260 m!2912795))

(declare-fun m!2912797 () Bool)

(assert (=> start!249260 m!2912797))

(declare-fun m!2912799 () Bool)

(assert (=> b!2578044 m!2912799))

(declare-fun m!2912801 () Bool)

(assert (=> b!2578042 m!2912801))

(declare-fun m!2912803 () Bool)

(assert (=> b!2578042 m!2912803))

(declare-fun m!2912805 () Bool)

(assert (=> b!2578042 m!2912805))

(declare-fun m!2912807 () Bool)

(assert (=> b!2578045 m!2912807))

(push 1)

(assert (not b!2578042))

(assert (not b!2578043))

(assert (not b!2578045))

(assert (not start!249260))

(assert (not b!2578044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729203 () Bool)

(assert (=> d!729203 (= (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249260 d!729203))

(declare-fun d!729205 () Bool)

(declare-fun isBalanced!2820 (Conc!9260) Bool)

(assert (=> d!729205 (= (inv!40024 totalInput!583) (isBalanced!2820 (c!415302 totalInput!583)))))

(declare-fun bs!470928 () Bool)

(assert (= bs!470928 d!729205))

(declare-fun m!2912827 () Bool)

(assert (=> bs!470928 m!2912827))

(assert (=> start!249260 d!729205))

(declare-fun d!729207 () Bool)

(declare-fun c!415308 () Bool)

(assert (=> d!729207 (= c!415308 (is-Node!9260 (c!415302 totalInput!583)))))

(declare-fun e!1626858 () Bool)

(assert (=> d!729207 (= (inv!40025 (c!415302 totalInput!583)) e!1626858)))

(declare-fun b!2578068 () Bool)

(declare-fun inv!40028 (Conc!9260) Bool)

(assert (=> b!2578068 (= e!1626858 (inv!40028 (c!415302 totalInput!583)))))

(declare-fun b!2578069 () Bool)

(declare-fun e!1626859 () Bool)

(assert (=> b!2578069 (= e!1626858 e!1626859)))

(declare-fun res!1084322 () Bool)

(assert (=> b!2578069 (= res!1084322 (not (is-Leaf!14123 (c!415302 totalInput!583))))))

(assert (=> b!2578069 (=> res!1084322 e!1626859)))

(declare-fun b!2578070 () Bool)

(declare-fun inv!40029 (Conc!9260) Bool)

(assert (=> b!2578070 (= e!1626859 (inv!40029 (c!415302 totalInput!583)))))

(assert (= (and d!729207 c!415308) b!2578068))

(assert (= (and d!729207 (not c!415308)) b!2578069))

(assert (= (and b!2578069 (not res!1084322)) b!2578070))

(declare-fun m!2912829 () Bool)

(assert (=> b!2578068 m!2912829))

(declare-fun m!2912831 () Bool)

(assert (=> b!2578070 m!2912831))

(assert (=> b!2578045 d!729207))

(declare-fun bs!470929 () Bool)

(declare-fun b!2578076 () Bool)

(assert (= bs!470929 (and b!2578076 b!2578044)))

(declare-fun lambda!95338 () Int)

(assert (=> bs!470929 (= lambda!95338 lambda!95329)))

(assert (=> b!2578076 true))

(declare-fun d!729209 () Bool)

(declare-fun res!1084327 () Bool)

(declare-fun e!1626862 () Bool)

(assert (=> d!729209 (=> (not res!1084327) (not e!1626862))))

(assert (=> d!729209 (= res!1084327 (valid!2647 lt!906888))))

(assert (=> d!729209 (= (validCacheMapFindLongestMatch!58 lt!906888 totalInput!583) e!1626862)))

(declare-fun b!2578075 () Bool)

(declare-fun res!1084328 () Bool)

(assert (=> b!2578075 (=> (not res!1084328) (not e!1626862))))

(assert (=> b!2578075 (= res!1084328 (invariantList!429 (toList!1714 (map!6566 lt!906888))))))

(assert (=> b!2578076 (= e!1626862 (forall!6035 (toList!1714 (map!6566 lt!906888)) lambda!95338))))

(assert (= (and d!729209 res!1084327) b!2578075))

(assert (= (and b!2578075 res!1084328) b!2578076))

(assert (=> d!729209 m!2912803))

(assert (=> b!2578075 m!2912793))

(declare-fun m!2912834 () Bool)

(assert (=> b!2578075 m!2912834))

(assert (=> b!2578076 m!2912793))

(declare-fun m!2912836 () Bool)

(assert (=> b!2578076 m!2912836))

(assert (=> b!2578042 d!729209))

(declare-fun d!729213 () Bool)

(declare-fun res!1084333 () Bool)

(declare-fun e!1626865 () Bool)

(assert (=> d!729213 (=> (not res!1084333) (not e!1626865))))

(declare-fun valid!2649 (MutLongMap!3435) Bool)

(assert (=> d!729213 (= res!1084333 (valid!2649 (v!31992 (underlying!7078 lt!906888))))))

(assert (=> d!729213 (= (valid!2647 lt!906888) e!1626865)))

(declare-fun b!2578081 () Bool)

(declare-fun res!1084334 () Bool)

(assert (=> b!2578081 (=> (not res!1084334) (not e!1626865))))

(declare-fun lambda!95341 () Int)

(declare-datatypes ((tuple2!29626 0))(
  ( (tuple2!29627 (_1!17355 (_ BitVec 64)) (_2!17355 List!29767)) )
))
(declare-datatypes ((List!29771 0))(
  ( (Nil!29671) (Cons!29671 (h!35091 tuple2!29626) (t!211648 List!29771)) )
))
(declare-fun forall!6037 (List!29771 Int) Bool)

(declare-datatypes ((ListLongMap!667 0))(
  ( (ListLongMap!668 (toList!1716 List!29771)) )
))
(declare-fun map!6568 (MutLongMap!3435) ListLongMap!667)

(assert (=> b!2578081 (= res!1084334 (forall!6037 (toList!1716 (map!6568 (v!31992 (underlying!7078 lt!906888)))) lambda!95341))))

(declare-fun b!2578082 () Bool)

(declare-fun allKeysSameHashInMap!216 (ListLongMap!667 Hashable!3355) Bool)

(assert (=> b!2578082 (= e!1626865 (allKeysSameHashInMap!216 (map!6568 (v!31992 (underlying!7078 lt!906888))) (hashF!5376 lt!906888)))))

(assert (= (and d!729213 res!1084333) b!2578081))

(assert (= (and b!2578081 res!1084334) b!2578082))

(declare-fun m!2912838 () Bool)

(assert (=> d!729213 m!2912838))

(declare-fun m!2912840 () Bool)

(assert (=> b!2578081 m!2912840))

(declare-fun m!2912842 () Bool)

(assert (=> b!2578081 m!2912842))

(assert (=> b!2578082 m!2912840))

(assert (=> b!2578082 m!2912840))

(declare-fun m!2912844 () Bool)

(assert (=> b!2578082 m!2912844))

(assert (=> b!2578042 d!729213))

(declare-fun b!2578100 () Bool)

(declare-fun e!1626877 () Bool)

(declare-fun lt!906903 () MutLongMap!3435)

(assert (=> b!2578100 (= e!1626877 (is-LongMap!3435 lt!906903))))

(assert (=> b!2578100 (= lt!906903 (v!31992 (underlying!7078 (getEmptyHashMap!22 lambda!95328 hashF!508 initialSize!16))))))

(declare-fun b!2578099 () Bool)

(declare-fun e!1626876 () Bool)

(assert (=> b!2578099 (= e!1626876 e!1626877)))

(declare-fun d!729215 () Bool)

(assert (=> d!729215 (= true e!1626876)))

(assert (= b!2578099 b!2578100))

(assert (= (and d!729215 (is-HashMap!3345 (getEmptyHashMap!22 lambda!95328 hashF!508 initialSize!16))) b!2578099))

(declare-fun e!1626871 () Bool)

(assert (=> d!729215 e!1626871))

(declare-fun res!1084344 () Bool)

(assert (=> d!729215 (=> (not res!1084344) (not e!1626871))))

(assert (=> d!729215 (= res!1084344 true)))

(declare-fun lt!906899 () MutableMap!3345)

(declare-fun lambda!95348 () Int)

(declare-fun getEmptyLongMap!17 (Int (_ BitVec 32)) MutLongMap!3435)

(assert (=> d!729215 (= lt!906899 (HashMap!3345 (Cell!13560 (getEmptyLongMap!17 lambda!95348 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95328))))

(declare-fun lt!906900 () MutableMap!3345)

(assert (=> d!729215 (= lt!906900 (HashMap!3345 (Cell!13560 (getEmptyLongMap!17 lambda!95348 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95328))))

(assert (=> d!729215 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729215 (= (getEmptyHashMap!22 lambda!95328 hashF!508 initialSize!16) lt!906900)))

(declare-fun b!2578091 () Bool)

(declare-fun res!1084343 () Bool)

(assert (=> b!2578091 (=> (not res!1084343) (not e!1626871))))

(assert (=> b!2578091 (= res!1084343 (valid!2647 lt!906900))))

(declare-fun b!2578092 () Bool)

(declare-fun size!22980 (MutableMap!3345) (_ BitVec 32))

(assert (=> b!2578092 (= e!1626871 (= (size!22980 lt!906900) #b00000000000000000000000000000000))))

(assert (= (and d!729215 res!1084344) b!2578091))

(assert (= (and b!2578091 res!1084343) b!2578092))

(declare-fun m!2912847 () Bool)

(assert (=> d!729215 m!2912847))

(assert (=> d!729215 m!2912847))

(assert (=> d!729215 m!2912795))

(declare-fun m!2912849 () Bool)

(assert (=> b!2578091 m!2912849))

(declare-fun m!2912851 () Bool)

(assert (=> b!2578092 m!2912851))

(assert (=> b!2578042 d!729215))

(declare-fun d!729217 () Bool)

(declare-fun noDuplicatedKeys!71 (List!29767) Bool)

(assert (=> d!729217 (= (invariantList!429 (toList!1714 lt!906887)) (noDuplicatedKeys!71 (toList!1714 lt!906887)))))

(declare-fun bs!470930 () Bool)

(assert (= bs!470930 d!729217))

(declare-fun m!2912853 () Bool)

(assert (=> bs!470930 m!2912853))

(assert (=> b!2578043 d!729217))

(declare-fun d!729219 () Bool)

(declare-fun lt!906906 () ListMap!1191)

(assert (=> d!729219 (invariantList!429 (toList!1714 lt!906906))))

(declare-fun extractMap!209 (List!29771) ListMap!1191)

(assert (=> d!729219 (= lt!906906 (extractMap!209 (toList!1716 (map!6568 (v!31992 (underlying!7078 lt!906888))))))))

(assert (=> d!729219 (valid!2647 lt!906888)))

(assert (=> d!729219 (= (map!6566 lt!906888) lt!906906)))

(declare-fun bs!470932 () Bool)

(assert (= bs!470932 d!729219))

(declare-fun m!2912859 () Bool)

(assert (=> bs!470932 m!2912859))

(assert (=> bs!470932 m!2912840))

(declare-fun m!2912861 () Bool)

(assert (=> bs!470932 m!2912861))

(assert (=> bs!470932 m!2912803))

(assert (=> b!2578043 d!729219))

(declare-fun d!729223 () Bool)

(declare-fun res!1084351 () Bool)

(declare-fun e!1626883 () Bool)

(assert (=> d!729223 (=> res!1084351 e!1626883)))

(assert (=> d!729223 (= res!1084351 (is-Nil!29667 (toList!1714 lt!906887)))))

(assert (=> d!729223 (= (forall!6035 (toList!1714 lt!906887) lambda!95329) e!1626883)))

(declare-fun b!2578107 () Bool)

(declare-fun e!1626884 () Bool)

(assert (=> b!2578107 (= e!1626883 e!1626884)))

(declare-fun res!1084352 () Bool)

(assert (=> b!2578107 (=> (not res!1084352) (not e!1626884))))

(declare-fun dynLambda!12530 (Int tuple2!29620) Bool)

(assert (=> b!2578107 (= res!1084352 (dynLambda!12530 lambda!95329 (h!35087 (toList!1714 lt!906887))))))

(declare-fun b!2578108 () Bool)

(assert (=> b!2578108 (= e!1626884 (forall!6035 (t!211644 (toList!1714 lt!906887)) lambda!95329))))

(assert (= (and d!729223 (not res!1084351)) b!2578107))

(assert (= (and b!2578107 res!1084352) b!2578108))

(declare-fun b_lambda!76435 () Bool)

(assert (=> (not b_lambda!76435) (not b!2578107)))

(declare-fun m!2912863 () Bool)

(assert (=> b!2578107 m!2912863))

(declare-fun m!2912865 () Bool)

(assert (=> b!2578108 m!2912865))

(assert (=> b!2578044 d!729223))

(declare-fun tp!819221 () Bool)

(declare-fun b!2578117 () Bool)

(declare-fun tp!819223 () Bool)

(declare-fun e!1626889 () Bool)

(assert (=> b!2578117 (= e!1626889 (and (inv!40025 (left!22596 (c!415302 totalInput!583))) tp!819221 (inv!40025 (right!22926 (c!415302 totalInput!583))) tp!819223))))

(declare-fun b!2578119 () Bool)

(declare-fun e!1626890 () Bool)

(declare-fun tp!819222 () Bool)

(assert (=> b!2578119 (= e!1626890 tp!819222)))

(declare-fun b!2578118 () Bool)

(declare-fun inv!40030 (IArray!18525) Bool)

(assert (=> b!2578118 (= e!1626889 (and (inv!40030 (xs!12244 (c!415302 totalInput!583))) e!1626890))))

(assert (=> b!2578045 (= tp!819211 (and (inv!40025 (c!415302 totalInput!583)) e!1626889))))

(assert (= (and b!2578045 (is-Node!9260 (c!415302 totalInput!583))) b!2578117))

(assert (= b!2578118 b!2578119))

(assert (= (and b!2578045 (is-Leaf!14123 (c!415302 totalInput!583))) b!2578118))

(declare-fun m!2912867 () Bool)

(assert (=> b!2578117 m!2912867))

(declare-fun m!2912869 () Bool)

(assert (=> b!2578117 m!2912869))

(declare-fun m!2912871 () Bool)

(assert (=> b!2578118 m!2912871))

(assert (=> b!2578045 m!2912807))

(declare-fun b_lambda!76437 () Bool)

(assert (= b_lambda!76435 (or b!2578044 b_lambda!76437)))

(declare-fun bs!470933 () Bool)

(declare-fun d!729225 () Bool)

(assert (= bs!470933 (and d!729225 b!2578044)))

(declare-fun validCacheMapFindLongestMatchBody!2 (tuple2!29620 BalanceConc!18134) Bool)

(assert (=> bs!470933 (= (dynLambda!12530 lambda!95329 (h!35087 (toList!1714 lt!906887))) (validCacheMapFindLongestMatchBody!2 (h!35087 (toList!1714 lt!906887)) totalInput!583))))

(declare-fun m!2912873 () Bool)

(assert (=> bs!470933 m!2912873))

(assert (=> b!2578107 d!729225))

(push 1)

(assert (not b!2578117))

(assert (not b!2578081))

(assert (not d!729209))

(assert (not d!729205))

(assert (not b!2578108))

(assert (not b!2578068))

(assert (not b!2578075))

(assert (not d!729215))

(assert (not d!729217))

(assert (not b!2578119))

(assert (not d!729219))

(assert (not b!2578091))

(assert (not d!729213))

(assert (not b!2578076))

(assert (not b!2578092))

(assert (not b!2578118))

(assert (not b!2578082))

(assert (not b_lambda!76437))

(assert (not b!2578070))

(assert (not bs!470933))

(assert (not b!2578045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

