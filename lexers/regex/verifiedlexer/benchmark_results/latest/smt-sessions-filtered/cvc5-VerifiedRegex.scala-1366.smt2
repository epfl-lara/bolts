; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73032 () Bool)

(assert start!73032)

(declare-fun b!819804 () Bool)

(assert (=> b!819804 true))

(declare-fun b!819803 () Bool)

(declare-fun e!541582 () Bool)

(declare-datatypes ((C!4622 0))(
  ( (C!4623 (val!2541 Int)) )
))
(declare-datatypes ((List!8800 0))(
  ( (Nil!8786) (Cons!8786 (h!14187 C!4622) (t!92914 List!8800)) )
))
(declare-datatypes ((IArray!5861 0))(
  ( (IArray!5862 (innerList!2988 List!8800)) )
))
(declare-datatypes ((Conc!2930 0))(
  ( (Node!2930 (left!6496 Conc!2930) (right!6826 Conc!2930) (csize!6090 Int) (cheight!3141 Int)) (Leaf!4297 (xs!5619 IArray!5861) (csize!6091 Int)) (Empty!2930) )
))
(declare-datatypes ((BalanceConc!5872 0))(
  ( (BalanceConc!5873 (c!132851 Conc!2930)) )
))
(declare-fun totalInput!631 () BalanceConc!5872)

(declare-fun tp!256435 () Bool)

(declare-fun inv!11129 (Conc!2930) Bool)

(assert (=> b!819803 (= e!541582 (and (inv!11129 (c!132851 totalInput!631)) tp!256435))))

(declare-fun res!378410 () Bool)

(declare-fun e!541584 () Bool)

(assert (=> start!73032 (=> (not res!378410) (not e!541584))))

(declare-fun initialSize!19 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!73032 (= res!378410 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(assert (=> start!73032 e!541584))

(assert (=> start!73032 true))

(declare-fun inv!11130 (BalanceConc!5872) Bool)

(assert (=> start!73032 (and (inv!11130 totalInput!631) e!541582)))

(declare-fun e!541585 () Bool)

(declare-datatypes ((Regex!2026 0))(
  ( (ElementMatch!2026 (c!132852 C!4622)) (Concat!3735 (regOne!4564 Regex!2026) (regTwo!4564 Regex!2026)) (EmptyExpr!2026) (Star!2026 (reg!2355 Regex!2026)) (EmptyLang!2026) (Union!2026 (regOne!4565 Regex!2026) (regTwo!4565 Regex!2026)) )
))
(declare-datatypes ((List!8801 0))(
  ( (Nil!8787) (Cons!8787 (h!14188 Regex!2026) (t!92915 List!8801)) )
))
(declare-datatypes ((Context!844 0))(
  ( (Context!845 (exprs!922 List!8801)) )
))
(declare-datatypes ((tuple3!1062 0))(
  ( (tuple3!1063 (_1!5965 (Set Context!844)) (_2!5965 Int) (_3!822 Int)) )
))
(declare-datatypes ((tuple2!10286 0))(
  ( (tuple2!10287 (_1!5966 tuple3!1062) (_2!5966 Int)) )
))
(declare-datatypes ((List!8802 0))(
  ( (Nil!8788) (Cons!8788 (h!14189 tuple2!10286) (t!92916 List!8802)) )
))
(declare-datatypes ((ListMap!427 0))(
  ( (ListMap!428 (toList!557 List!8802)) )
))
(declare-fun lt!316851 () ListMap!427)

(declare-fun lambda!24285 () Int)

(declare-fun forall!2074 (List!8802 Int) Bool)

(assert (=> b!819804 (= e!541585 (not (forall!2074 (toList!557 lt!316851) lambda!24285)))))

(declare-fun b!819805 () Bool)

(declare-fun e!541581 () Bool)

(assert (=> b!819805 (= e!541584 (not e!541581))))

(declare-fun res!378412 () Bool)

(assert (=> b!819805 (=> res!378412 e!541581)))

(declare-fun lt!316853 () Bool)

(assert (=> b!819805 (= res!378412 (not lt!316853))))

(declare-fun lt!316852 () Bool)

(assert (=> b!819805 (= lt!316853 (not lt!316852))))

(declare-datatypes ((array!4409 0))(
  ( (array!4410 (arr!1965 (Array (_ BitVec 32) (_ BitVec 64))) (size!7444 (_ BitVec 32))) )
))
(declare-datatypes ((array!4411 0))(
  ( (array!4412 (arr!1966 (Array (_ BitVec 32) List!8802)) (size!7445 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2504 0))(
  ( (LongMapFixedSize!2505 (defaultEntry!1612 Int) (mask!3158 (_ BitVec 32)) (extraKeys!1499 (_ BitVec 32)) (zeroValue!1509 List!8802) (minValue!1509 List!8802) (_size!2613 (_ BitVec 32)) (_keys!1546 array!4409) (_values!1531 array!4411) (_vacant!1313 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4949 0))(
  ( (Cell!4950 (v!19073 LongMapFixedSize!2504)) )
))
(declare-datatypes ((MutLongMap!1252 0))(
  ( (LongMap!1252 (underlying!2687 Cell!4949)) (MutLongMapExt!1251 (__x!7159 Int)) )
))
(declare-datatypes ((Cell!4951 0))(
  ( (Cell!4952 (v!19074 MutLongMap!1252)) )
))
(declare-datatypes ((Hashable!1224 0))(
  ( (HashableExt!1223 (__x!7160 Int)) )
))
(declare-datatypes ((MutableMap!1224 0))(
  ( (MutableMapExt!1223 (__x!7161 Int)) (HashMap!1224 (underlying!2688 Cell!4951) (hashF!3139 Hashable!1224) (_size!2614 (_ BitVec 32)) (defaultValue!1380 Int)) )
))
(declare-fun lt!316850 () MutableMap!1224)

(declare-fun validCacheMapFurthestNullable!33 (MutableMap!1224 BalanceConc!5872) Bool)

(assert (=> b!819805 (= lt!316853 (validCacheMapFurthestNullable!33 lt!316850 totalInput!631))))

(declare-fun e!541583 () Bool)

(assert (=> b!819805 (= lt!316852 e!541583)))

(declare-fun res!378413 () Bool)

(assert (=> b!819805 (=> res!378413 e!541583)))

(declare-fun valid!1004 (MutableMap!1224) Bool)

(assert (=> b!819805 (= res!378413 (not (valid!1004 lt!316850)))))

(declare-fun hashF!576 () Hashable!1224)

(declare-fun lambda!24284 () Int)

(declare-fun getEmptyHashMap!14 (Int Hashable!1224 (_ BitVec 32)) MutableMap!1224)

(assert (=> b!819805 (= lt!316850 (getEmptyHashMap!14 lambda!24284 hashF!576 initialSize!19))))

(declare-fun b!819806 () Bool)

(declare-datatypes ((CacheFurthestNullable!178 0))(
  ( (CacheFurthestNullable!179 (cache!1605 MutableMap!1224) (totalInput!2151 BalanceConc!5872)) )
))
(declare-fun inv!11131 (CacheFurthestNullable!178) Bool)

(assert (=> b!819806 (= e!541581 (inv!11131 (CacheFurthestNullable!179 lt!316850 totalInput!631)))))

(declare-fun b!819807 () Bool)

(assert (=> b!819807 (= e!541583 e!541585)))

(declare-fun res!378411 () Bool)

(assert (=> b!819807 (=> res!378411 e!541585)))

(declare-fun invariantList!189 (List!8802) Bool)

(assert (=> b!819807 (= res!378411 (not (invariantList!189 (toList!557 lt!316851))))))

(declare-fun map!1806 (MutableMap!1224) ListMap!427)

(assert (=> b!819807 (= lt!316851 (map!1806 lt!316850))))

(assert (= (and start!73032 res!378410) b!819805))

(assert (= (and b!819805 (not res!378413)) b!819807))

(assert (= (and b!819807 (not res!378411)) b!819804))

(assert (= (and b!819805 (not res!378412)) b!819806))

(assert (= start!73032 b!819803))

(declare-fun m!1060829 () Bool)

(assert (=> b!819806 m!1060829))

(declare-fun m!1060831 () Bool)

(assert (=> b!819805 m!1060831))

(declare-fun m!1060833 () Bool)

(assert (=> b!819805 m!1060833))

(declare-fun m!1060835 () Bool)

(assert (=> b!819805 m!1060835))

(declare-fun m!1060837 () Bool)

(assert (=> start!73032 m!1060837))

(declare-fun m!1060839 () Bool)

(assert (=> start!73032 m!1060839))

(declare-fun m!1060841 () Bool)

(assert (=> b!819807 m!1060841))

(declare-fun m!1060843 () Bool)

(assert (=> b!819807 m!1060843))

(declare-fun m!1060845 () Bool)

(assert (=> b!819803 m!1060845))

(declare-fun m!1060847 () Bool)

(assert (=> b!819804 m!1060847))

(push 1)

(assert (not b!819803))

(assert (not b!819804))

(assert (not b!819805))

(assert (not b!819806))

(assert (not start!73032))

(assert (not b!819807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258143 () Bool)

(declare-fun res!378430 () Bool)

(declare-fun e!541609 () Bool)

(assert (=> d!258143 (=> res!378430 e!541609)))

(assert (=> d!258143 (= res!378430 (is-Nil!8788 (toList!557 lt!316851)))))

(assert (=> d!258143 (= (forall!2074 (toList!557 lt!316851) lambda!24285) e!541609)))

(declare-fun b!819831 () Bool)

(declare-fun e!541610 () Bool)

(assert (=> b!819831 (= e!541609 e!541610)))

(declare-fun res!378431 () Bool)

(assert (=> b!819831 (=> (not res!378431) (not e!541610))))

(declare-fun dynLambda!4099 (Int tuple2!10286) Bool)

(assert (=> b!819831 (= res!378431 (dynLambda!4099 lambda!24285 (h!14189 (toList!557 lt!316851))))))

(declare-fun b!819832 () Bool)

(assert (=> b!819832 (= e!541610 (forall!2074 (t!92916 (toList!557 lt!316851)) lambda!24285))))

(assert (= (and d!258143 (not res!378430)) b!819831))

(assert (= (and b!819831 res!378431) b!819832))

(declare-fun b_lambda!27511 () Bool)

(assert (=> (not b_lambda!27511) (not b!819831)))

(declare-fun m!1060869 () Bool)

(assert (=> b!819831 m!1060869))

(declare-fun m!1060871 () Bool)

(assert (=> b!819832 m!1060871))

(assert (=> b!819804 d!258143))

(declare-fun d!258145 () Bool)

(declare-fun c!132857 () Bool)

(assert (=> d!258145 (= c!132857 (is-Node!2930 (c!132851 totalInput!631)))))

(declare-fun e!541615 () Bool)

(assert (=> d!258145 (= (inv!11129 (c!132851 totalInput!631)) e!541615)))

(declare-fun b!819839 () Bool)

(declare-fun inv!11135 (Conc!2930) Bool)

(assert (=> b!819839 (= e!541615 (inv!11135 (c!132851 totalInput!631)))))

(declare-fun b!819840 () Bool)

(declare-fun e!541616 () Bool)

(assert (=> b!819840 (= e!541615 e!541616)))

(declare-fun res!378434 () Bool)

(assert (=> b!819840 (= res!378434 (not (is-Leaf!4297 (c!132851 totalInput!631))))))

(assert (=> b!819840 (=> res!378434 e!541616)))

(declare-fun b!819841 () Bool)

(declare-fun inv!11136 (Conc!2930) Bool)

(assert (=> b!819841 (= e!541616 (inv!11136 (c!132851 totalInput!631)))))

(assert (= (and d!258145 c!132857) b!819839))

(assert (= (and d!258145 (not c!132857)) b!819840))

(assert (= (and b!819840 (not res!378434)) b!819841))

(declare-fun m!1060873 () Bool)

(assert (=> b!819839 m!1060873))

(declare-fun m!1060875 () Bool)

(assert (=> b!819841 m!1060875))

(assert (=> b!819803 d!258145))

(declare-fun d!258147 () Bool)

(assert (=> d!258147 (= (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!73032 d!258147))

(declare-fun d!258151 () Bool)

(declare-fun isBalanced!797 (Conc!2930) Bool)

(assert (=> d!258151 (= (inv!11130 totalInput!631) (isBalanced!797 (c!132851 totalInput!631)))))

(declare-fun bs!228674 () Bool)

(assert (= bs!228674 d!258151))

(declare-fun m!1060877 () Bool)

(assert (=> bs!228674 m!1060877))

(assert (=> start!73032 d!258151))

(declare-fun d!258153 () Bool)

(declare-fun res!378437 () Bool)

(declare-fun e!541619 () Bool)

(assert (=> d!258153 (=> (not res!378437) (not e!541619))))

(assert (=> d!258153 (= res!378437 (is-HashMap!1224 (cache!1605 (CacheFurthestNullable!179 lt!316850 totalInput!631))))))

(assert (=> d!258153 (= (inv!11131 (CacheFurthestNullable!179 lt!316850 totalInput!631)) e!541619)))

(declare-fun b!819844 () Bool)

(assert (=> b!819844 (= e!541619 (validCacheMapFurthestNullable!33 (cache!1605 (CacheFurthestNullable!179 lt!316850 totalInput!631)) (totalInput!2151 (CacheFurthestNullable!179 lt!316850 totalInput!631))))))

(assert (= (and d!258153 res!378437) b!819844))

(declare-fun m!1060879 () Bool)

(assert (=> b!819844 m!1060879))

(assert (=> b!819806 d!258153))

(declare-fun d!258155 () Bool)

(declare-fun noDuplicatedKeys!33 (List!8802) Bool)

(assert (=> d!258155 (= (invariantList!189 (toList!557 lt!316851)) (noDuplicatedKeys!33 (toList!557 lt!316851)))))

(declare-fun bs!228675 () Bool)

(assert (= bs!228675 d!258155))

(declare-fun m!1060881 () Bool)

(assert (=> bs!228675 m!1060881))

(assert (=> b!819807 d!258155))

(declare-fun d!258157 () Bool)

(declare-fun lt!316868 () ListMap!427)

(assert (=> d!258157 (invariantList!189 (toList!557 lt!316868))))

(declare-datatypes ((tuple2!10290 0))(
  ( (tuple2!10291 (_1!5969 (_ BitVec 64)) (_2!5969 List!8802)) )
))
(declare-datatypes ((List!8806 0))(
  ( (Nil!8792) (Cons!8792 (h!14193 tuple2!10290) (t!92920 List!8806)) )
))
(declare-fun extractMap!38 (List!8806) ListMap!427)

(declare-datatypes ((ListLongMap!119 0))(
  ( (ListLongMap!120 (toList!559 List!8806)) )
))
(declare-fun map!1808 (MutLongMap!1252) ListLongMap!119)

(assert (=> d!258157 (= lt!316868 (extractMap!38 (toList!559 (map!1808 (v!19074 (underlying!2688 lt!316850))))))))

(assert (=> d!258157 (valid!1004 lt!316850)))

(assert (=> d!258157 (= (map!1806 lt!316850) lt!316868)))

(declare-fun bs!228676 () Bool)

(assert (= bs!228676 d!258157))

(declare-fun m!1060883 () Bool)

(assert (=> bs!228676 m!1060883))

(declare-fun m!1060885 () Bool)

(assert (=> bs!228676 m!1060885))

(declare-fun m!1060887 () Bool)

(assert (=> bs!228676 m!1060887))

(assert (=> bs!228676 m!1060833))

(assert (=> b!819807 d!258157))

(declare-fun bs!228677 () Bool)

(declare-fun b!819853 () Bool)

(assert (= bs!228677 (and b!819853 b!819804)))

(declare-fun lambda!24294 () Int)

(assert (=> bs!228677 (= lambda!24294 lambda!24285)))

(assert (=> b!819853 true))

(declare-fun d!258159 () Bool)

(declare-fun res!378445 () Bool)

(declare-fun e!541625 () Bool)

(assert (=> d!258159 (=> (not res!378445) (not e!541625))))

(assert (=> d!258159 (= res!378445 (valid!1004 lt!316850))))

(assert (=> d!258159 (= (validCacheMapFurthestNullable!33 lt!316850 totalInput!631) e!541625)))

(declare-fun b!819852 () Bool)

(declare-fun res!378446 () Bool)

(assert (=> b!819852 (=> (not res!378446) (not e!541625))))

(assert (=> b!819852 (= res!378446 (invariantList!189 (toList!557 (map!1806 lt!316850))))))

(assert (=> b!819853 (= e!541625 (forall!2074 (toList!557 (map!1806 lt!316850)) lambda!24294))))

(assert (= (and d!258159 res!378445) b!819852))

(assert (= (and b!819852 res!378446) b!819853))

(assert (=> d!258159 m!1060833))

(assert (=> b!819852 m!1060843))

(declare-fun m!1060892 () Bool)

(assert (=> b!819852 m!1060892))

(assert (=> b!819853 m!1060843))

(declare-fun m!1060894 () Bool)

(assert (=> b!819853 m!1060894))

(assert (=> b!819805 d!258159))

(declare-fun d!258163 () Bool)

(declare-fun res!378451 () Bool)

(declare-fun e!541628 () Bool)

(assert (=> d!258163 (=> (not res!378451) (not e!541628))))

(declare-fun valid!1006 (MutLongMap!1252) Bool)

(assert (=> d!258163 (= res!378451 (valid!1006 (v!19074 (underlying!2688 lt!316850))))))

(assert (=> d!258163 (= (valid!1004 lt!316850) e!541628)))

(declare-fun b!819858 () Bool)

(declare-fun res!378452 () Bool)

(assert (=> b!819858 (=> (not res!378452) (not e!541628))))

(declare-fun lambda!24297 () Int)

(declare-fun forall!2076 (List!8806 Int) Bool)

(assert (=> b!819858 (= res!378452 (forall!2076 (toList!559 (map!1808 (v!19074 (underlying!2688 lt!316850)))) lambda!24297))))

(declare-fun b!819859 () Bool)

(declare-fun allKeysSameHashInMap!48 (ListLongMap!119 Hashable!1224) Bool)

(assert (=> b!819859 (= e!541628 (allKeysSameHashInMap!48 (map!1808 (v!19074 (underlying!2688 lt!316850))) (hashF!3139 lt!316850)))))

(assert (= (and d!258163 res!378451) b!819858))

(assert (= (and b!819858 res!378452) b!819859))

(declare-fun m!1060898 () Bool)

(assert (=> d!258163 m!1060898))

(assert (=> b!819858 m!1060885))

(declare-fun m!1060900 () Bool)

(assert (=> b!819858 m!1060900))

(assert (=> b!819859 m!1060885))

(assert (=> b!819859 m!1060885))

(declare-fun m!1060902 () Bool)

(assert (=> b!819859 m!1060902))

(assert (=> b!819805 d!258163))

(declare-fun b!819873 () Bool)

(declare-fun e!541638 () Bool)

(declare-fun lt!316877 () MutLongMap!1252)

(assert (=> b!819873 (= e!541638 (is-LongMap!1252 lt!316877))))

(assert (=> b!819873 (= lt!316877 (v!19074 (underlying!2688 (getEmptyHashMap!14 lambda!24284 hashF!576 initialSize!19))))))

(declare-fun b!819872 () Bool)

(declare-fun e!541637 () Bool)

(assert (=> b!819872 (= e!541637 e!541638)))

(declare-fun d!258169 () Bool)

(assert (=> d!258169 (= true e!541637)))

(assert (= b!819872 b!819873))

(assert (= (and d!258169 (is-HashMap!1224 (getEmptyHashMap!14 lambda!24284 hashF!576 initialSize!19))) b!819872))

(declare-fun e!541632 () Bool)

(assert (=> d!258169 e!541632))

(declare-fun res!378458 () Bool)

(assert (=> d!258169 (=> (not res!378458) (not e!541632))))

(assert (=> d!258169 (= res!378458 true)))

(declare-fun lt!316874 () MutableMap!1224)

(declare-fun lambda!24302 () Int)

(declare-fun getEmptyLongMap!12 (Int (_ BitVec 32)) MutLongMap!1252)

(assert (=> d!258169 (= lt!316874 (HashMap!1224 (Cell!4952 (getEmptyLongMap!12 lambda!24302 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24284))))

(declare-fun lt!316873 () MutableMap!1224)

(assert (=> d!258169 (= lt!316873 (HashMap!1224 (Cell!4952 (getEmptyLongMap!12 lambda!24302 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24284))))

(assert (=> d!258169 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!258169 (= (getEmptyHashMap!14 lambda!24284 hashF!576 initialSize!19) lt!316873)))

(declare-fun b!819864 () Bool)

(declare-fun res!378457 () Bool)

(assert (=> b!819864 (=> (not res!378457) (not e!541632))))

(assert (=> b!819864 (= res!378457 (valid!1004 lt!316873))))

(declare-fun b!819865 () Bool)

(declare-fun size!7448 (MutableMap!1224) (_ BitVec 32))

(assert (=> b!819865 (= e!541632 (= (size!7448 lt!316873) #b00000000000000000000000000000000))))

(assert (= (and d!258169 res!378458) b!819864))

(assert (= (and b!819864 res!378457) b!819865))

(declare-fun m!1060904 () Bool)

(assert (=> d!258169 m!1060904))

(assert (=> d!258169 m!1060904))

(assert (=> d!258169 m!1060837))

(declare-fun m!1060906 () Bool)

(assert (=> b!819864 m!1060906))

(declare-fun m!1060908 () Bool)

(assert (=> b!819865 m!1060908))

(assert (=> b!819805 d!258169))

(declare-fun b!819886 () Bool)

(declare-fun tp!256445 () Bool)

(declare-fun e!541645 () Bool)

(declare-fun tp!256446 () Bool)

(assert (=> b!819886 (= e!541645 (and (inv!11129 (left!6496 (c!132851 totalInput!631))) tp!256445 (inv!11129 (right!6826 (c!132851 totalInput!631))) tp!256446))))

(declare-fun b!819888 () Bool)

(declare-fun e!541646 () Bool)

(declare-fun tp!256447 () Bool)

(assert (=> b!819888 (= e!541646 tp!256447)))

(declare-fun b!819887 () Bool)

(declare-fun inv!11137 (IArray!5861) Bool)

(assert (=> b!819887 (= e!541645 (and (inv!11137 (xs!5619 (c!132851 totalInput!631))) e!541646))))

(assert (=> b!819803 (= tp!256435 (and (inv!11129 (c!132851 totalInput!631)) e!541645))))

(assert (= (and b!819803 (is-Node!2930 (c!132851 totalInput!631))) b!819886))

(assert (= b!819887 b!819888))

(assert (= (and b!819803 (is-Leaf!4297 (c!132851 totalInput!631))) b!819887))

(declare-fun m!1060911 () Bool)

(assert (=> b!819886 m!1060911))

(declare-fun m!1060913 () Bool)

(assert (=> b!819886 m!1060913))

(declare-fun m!1060915 () Bool)

(assert (=> b!819887 m!1060915))

(assert (=> b!819803 m!1060845))

(declare-fun b_lambda!27513 () Bool)

(assert (= b_lambda!27511 (or b!819804 b_lambda!27513)))

(declare-fun bs!228679 () Bool)

(declare-fun d!258171 () Bool)

(assert (= bs!228679 (and d!258171 b!819804)))

(declare-fun validCacheMapFurthestNullableBody!6 (tuple2!10286 BalanceConc!5872) Bool)

(assert (=> bs!228679 (= (dynLambda!4099 lambda!24285 (h!14189 (toList!557 lt!316851))) (validCacheMapFurthestNullableBody!6 (h!14189 (toList!557 lt!316851)) totalInput!631))))

(declare-fun m!1060917 () Bool)

(assert (=> bs!228679 m!1060917))

(assert (=> b!819831 d!258171))

(push 1)

(assert (not d!258169))

(assert (not b!819865))

(assert (not b!819888))

(assert (not b!819844))

(assert (not d!258151))

(assert (not b!819864))

(assert (not b!819839))

(assert (not b!819841))

(assert (not d!258163))

(assert (not b!819886))

(assert (not d!258157))

(assert (not b!819803))

(assert (not bs!228679))

(assert (not b!819853))

(assert (not b!819887))

(assert (not b!819859))

(assert (not d!258159))

(assert (not b!819852))

(assert (not b!819832))

(assert (not d!258155))

(assert (not b!819858))

(assert (not b_lambda!27513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

