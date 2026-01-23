; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73072 () Bool)

(assert start!73072)

(declare-fun b!819934 () Bool)

(assert (=> b!819934 true))

(declare-fun res!378486 () Bool)

(declare-fun e!541682 () Bool)

(assert (=> start!73072 (=> (not res!378486) (not e!541682))))

(declare-fun initialSize!19 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!73072 (= res!378486 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(assert (=> start!73072 e!541682))

(assert (=> start!73072 true))

(declare-datatypes ((C!4626 0))(
  ( (C!4627 (val!2543 Int)) )
))
(declare-datatypes ((List!8807 0))(
  ( (Nil!8793) (Cons!8793 (h!14194 C!4626) (t!92921 List!8807)) )
))
(declare-datatypes ((IArray!5865 0))(
  ( (IArray!5866 (innerList!2990 List!8807)) )
))
(declare-datatypes ((Conc!2932 0))(
  ( (Node!2932 (left!6503 Conc!2932) (right!6833 Conc!2932) (csize!6094 Int) (cheight!3143 Int)) (Leaf!4300 (xs!5621 IArray!5865) (csize!6095 Int)) (Empty!2932) )
))
(declare-datatypes ((BalanceConc!5876 0))(
  ( (BalanceConc!5877 (c!132858 Conc!2932)) )
))
(declare-fun totalInput!631 () BalanceConc!5876)

(declare-fun e!541681 () Bool)

(declare-fun inv!11141 (BalanceConc!5876) Bool)

(assert (=> start!73072 (and (inv!11141 totalInput!631) e!541681)))

(declare-fun b!819932 () Bool)

(declare-fun tp!256459 () Bool)

(declare-fun inv!11142 (Conc!2932) Bool)

(assert (=> b!819932 (= e!541681 (and (inv!11142 (c!132858 totalInput!631)) tp!256459))))

(declare-fun b!819933 () Bool)

(declare-fun e!541685 () Bool)

(declare-fun e!541684 () Bool)

(assert (=> b!819933 (= e!541685 e!541684)))

(declare-fun res!378488 () Bool)

(assert (=> b!819933 (=> res!378488 e!541684)))

(declare-datatypes ((Regex!2028 0))(
  ( (ElementMatch!2028 (c!132859 C!4626)) (Concat!3737 (regOne!4568 Regex!2028) (regTwo!4568 Regex!2028)) (EmptyExpr!2028) (Star!2028 (reg!2357 Regex!2028)) (EmptyLang!2028) (Union!2028 (regOne!4569 Regex!2028) (regTwo!4569 Regex!2028)) )
))
(declare-datatypes ((List!8808 0))(
  ( (Nil!8794) (Cons!8794 (h!14195 Regex!2028) (t!92922 List!8808)) )
))
(declare-datatypes ((Context!848 0))(
  ( (Context!849 (exprs!924 List!8808)) )
))
(declare-datatypes ((tuple3!1066 0))(
  ( (tuple3!1067 (_1!5970 (Set Context!848)) (_2!5970 Int) (_3!824 Int)) )
))
(declare-datatypes ((tuple2!10292 0))(
  ( (tuple2!10293 (_1!5971 tuple3!1066) (_2!5971 Int)) )
))
(declare-datatypes ((List!8809 0))(
  ( (Nil!8795) (Cons!8795 (h!14196 tuple2!10292) (t!92923 List!8809)) )
))
(declare-datatypes ((ListMap!431 0))(
  ( (ListMap!432 (toList!560 List!8809)) )
))
(declare-fun lt!316898 () ListMap!431)

(declare-fun invariantList!191 (List!8809) Bool)

(assert (=> b!819933 (= res!378488 (not (invariantList!191 (toList!560 lt!316898))))))

(declare-datatypes ((array!4417 0))(
  ( (array!4418 (arr!1969 (Array (_ BitVec 32) (_ BitVec 64))) (size!7449 (_ BitVec 32))) )
))
(declare-datatypes ((array!4419 0))(
  ( (array!4420 (arr!1970 (Array (_ BitVec 32) List!8809)) (size!7450 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2508 0))(
  ( (LongMapFixedSize!2509 (defaultEntry!1614 Int) (mask!3163 (_ BitVec 32)) (extraKeys!1501 (_ BitVec 32)) (zeroValue!1511 List!8809) (minValue!1511 List!8809) (_size!2617 (_ BitVec 32)) (_keys!1548 array!4417) (_values!1533 array!4419) (_vacant!1315 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4957 0))(
  ( (Cell!4958 (v!19077 LongMapFixedSize!2508)) )
))
(declare-datatypes ((MutLongMap!1254 0))(
  ( (LongMap!1254 (underlying!2691 Cell!4957)) (MutLongMapExt!1253 (__x!7165 Int)) )
))
(declare-datatypes ((Cell!4959 0))(
  ( (Cell!4960 (v!19078 MutLongMap!1254)) )
))
(declare-datatypes ((Hashable!1226 0))(
  ( (HashableExt!1225 (__x!7166 Int)) )
))
(declare-datatypes ((MutableMap!1226 0))(
  ( (MutableMapExt!1225 (__x!7167 Int)) (HashMap!1226 (underlying!2692 Cell!4959) (hashF!3143 Hashable!1226) (_size!2618 (_ BitVec 32)) (defaultValue!1384 Int)) )
))
(declare-fun lt!316901 () MutableMap!1226)

(declare-fun map!1810 (MutableMap!1226) ListMap!431)

(assert (=> b!819933 (= lt!316898 (map!1810 lt!316901))))

(declare-fun lambda!24319 () Int)

(declare-fun forall!2077 (List!8809 Int) Bool)

(assert (=> b!819934 (= e!541684 (not (forall!2077 (toList!560 lt!316898) lambda!24319)))))

(declare-fun b!819935 () Bool)

(declare-fun e!541683 () Bool)

(assert (=> b!819935 (= e!541682 (not e!541683))))

(declare-fun res!378487 () Bool)

(assert (=> b!819935 (=> res!378487 e!541683)))

(declare-fun lt!316900 () Bool)

(assert (=> b!819935 (= res!378487 (not lt!316900))))

(declare-fun lt!316899 () Bool)

(assert (=> b!819935 (= lt!316900 (not lt!316899))))

(declare-fun validCacheMapFurthestNullable!35 (MutableMap!1226 BalanceConc!5876) Bool)

(assert (=> b!819935 (= lt!316900 (validCacheMapFurthestNullable!35 lt!316901 totalInput!631))))

(assert (=> b!819935 (= lt!316899 e!541685)))

(declare-fun res!378485 () Bool)

(assert (=> b!819935 (=> res!378485 e!541685)))

(declare-fun valid!1007 (MutableMap!1226) Bool)

(assert (=> b!819935 (= res!378485 (not (valid!1007 lt!316901)))))

(declare-fun hashF!576 () Hashable!1226)

(declare-fun lambda!24318 () Int)

(declare-fun getEmptyHashMap!16 (Int Hashable!1226 (_ BitVec 32)) MutableMap!1226)

(assert (=> b!819935 (= lt!316901 (getEmptyHashMap!16 lambda!24318 hashF!576 initialSize!19))))

(declare-fun b!819936 () Bool)

(declare-datatypes ((CacheFurthestNullable!182 0))(
  ( (CacheFurthestNullable!183 (cache!1607 MutableMap!1226) (totalInput!2155 BalanceConc!5876)) )
))
(declare-fun valid!1008 (CacheFurthestNullable!182) Bool)

(assert (=> b!819936 (= e!541683 (valid!1008 (CacheFurthestNullable!183 lt!316901 totalInput!631)))))

(assert (= (and start!73072 res!378486) b!819935))

(assert (= (and b!819935 (not res!378485)) b!819933))

(assert (= (and b!819933 (not res!378488)) b!819934))

(assert (= (and b!819935 (not res!378487)) b!819936))

(assert (= start!73072 b!819932))

(declare-fun m!1060939 () Bool)

(assert (=> b!819935 m!1060939))

(declare-fun m!1060941 () Bool)

(assert (=> b!819935 m!1060941))

(declare-fun m!1060943 () Bool)

(assert (=> b!819935 m!1060943))

(declare-fun m!1060945 () Bool)

(assert (=> b!819932 m!1060945))

(declare-fun m!1060947 () Bool)

(assert (=> b!819933 m!1060947))

(declare-fun m!1060949 () Bool)

(assert (=> b!819933 m!1060949))

(declare-fun m!1060951 () Bool)

(assert (=> start!73072 m!1060951))

(declare-fun m!1060953 () Bool)

(assert (=> start!73072 m!1060953))

(declare-fun m!1060955 () Bool)

(assert (=> b!819936 m!1060955))

(declare-fun m!1060957 () Bool)

(assert (=> b!819934 m!1060957))

(push 1)

(assert (not b!819932))

(assert (not b!819936))

(assert (not b!819935))

(assert (not start!73072))

(assert (not b!819934))

(assert (not b!819933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258182 () Bool)

(declare-fun noDuplicatedKeys!34 (List!8809) Bool)

(assert (=> d!258182 (= (invariantList!191 (toList!560 lt!316898)) (noDuplicatedKeys!34 (toList!560 lt!316898)))))

(declare-fun bs!228684 () Bool)

(assert (= bs!228684 d!258182))

(declare-fun m!1060979 () Bool)

(assert (=> bs!228684 m!1060979))

(assert (=> b!819933 d!258182))

(declare-fun d!258184 () Bool)

(declare-fun lt!316916 () ListMap!431)

(assert (=> d!258184 (invariantList!191 (toList!560 lt!316916))))

(declare-datatypes ((tuple2!10296 0))(
  ( (tuple2!10297 (_1!5974 (_ BitVec 64)) (_2!5974 List!8809)) )
))
(declare-datatypes ((List!8813 0))(
  ( (Nil!8799) (Cons!8799 (h!14200 tuple2!10296) (t!92927 List!8813)) )
))
(declare-fun extractMap!39 (List!8813) ListMap!431)

(declare-datatypes ((ListLongMap!121 0))(
  ( (ListLongMap!122 (toList!562 List!8813)) )
))
(declare-fun map!1812 (MutLongMap!1254) ListLongMap!121)

(assert (=> d!258184 (= lt!316916 (extractMap!39 (toList!562 (map!1812 (v!19078 (underlying!2692 lt!316901))))))))

(assert (=> d!258184 (valid!1007 lt!316901)))

(assert (=> d!258184 (= (map!1810 lt!316901) lt!316916)))

(declare-fun bs!228685 () Bool)

(assert (= bs!228685 d!258184))

(declare-fun m!1060981 () Bool)

(assert (=> bs!228685 m!1060981))

(declare-fun m!1060983 () Bool)

(assert (=> bs!228685 m!1060983))

(declare-fun m!1060985 () Bool)

(assert (=> bs!228685 m!1060985))

(assert (=> bs!228685 m!1060941))

(assert (=> b!819933 d!258184))

(declare-fun d!258188 () Bool)

(assert (=> d!258188 (= (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!73072 d!258188))

(declare-fun d!258190 () Bool)

(declare-fun isBalanced!798 (Conc!2932) Bool)

(assert (=> d!258190 (= (inv!11141 totalInput!631) (isBalanced!798 (c!132858 totalInput!631)))))

(declare-fun bs!228686 () Bool)

(assert (= bs!228686 d!258190))

(declare-fun m!1060987 () Bool)

(assert (=> bs!228686 m!1060987))

(assert (=> start!73072 d!258190))

(declare-fun d!258192 () Bool)

(declare-fun c!132864 () Bool)

(assert (=> d!258192 (= c!132864 (is-Node!2932 (c!132858 totalInput!631)))))

(declare-fun e!541709 () Bool)

(assert (=> d!258192 (= (inv!11142 (c!132858 totalInput!631)) e!541709)))

(declare-fun b!819962 () Bool)

(declare-fun inv!11145 (Conc!2932) Bool)

(assert (=> b!819962 (= e!541709 (inv!11145 (c!132858 totalInput!631)))))

(declare-fun b!819963 () Bool)

(declare-fun e!541710 () Bool)

(assert (=> b!819963 (= e!541709 e!541710)))

(declare-fun res!378503 () Bool)

(assert (=> b!819963 (= res!378503 (not (is-Leaf!4300 (c!132858 totalInput!631))))))

(assert (=> b!819963 (=> res!378503 e!541710)))

(declare-fun b!819964 () Bool)

(declare-fun inv!11146 (Conc!2932) Bool)

(assert (=> b!819964 (= e!541710 (inv!11146 (c!132858 totalInput!631)))))

(assert (= (and d!258192 c!132864) b!819962))

(assert (= (and d!258192 (not c!132864)) b!819963))

(assert (= (and b!819963 (not res!378503)) b!819964))

(declare-fun m!1060989 () Bool)

(assert (=> b!819962 m!1060989))

(declare-fun m!1060991 () Bool)

(assert (=> b!819964 m!1060991))

(assert (=> b!819932 d!258192))

(declare-fun bs!228687 () Bool)

(declare-fun b!819970 () Bool)

(assert (= bs!228687 (and b!819970 b!819934)))

(declare-fun lambda!24328 () Int)

(assert (=> bs!228687 (= lambda!24328 lambda!24319)))

(assert (=> b!819970 true))

(declare-fun d!258194 () Bool)

(declare-fun res!378508 () Bool)

(declare-fun e!541713 () Bool)

(assert (=> d!258194 (=> (not res!378508) (not e!541713))))

(assert (=> d!258194 (= res!378508 (valid!1007 lt!316901))))

(assert (=> d!258194 (= (validCacheMapFurthestNullable!35 lt!316901 totalInput!631) e!541713)))

(declare-fun b!819969 () Bool)

(declare-fun res!378509 () Bool)

(assert (=> b!819969 (=> (not res!378509) (not e!541713))))

(assert (=> b!819969 (= res!378509 (invariantList!191 (toList!560 (map!1810 lt!316901))))))

(assert (=> b!819970 (= e!541713 (forall!2077 (toList!560 (map!1810 lt!316901)) lambda!24328))))

(assert (= (and d!258194 res!378508) b!819969))

(assert (= (and b!819969 res!378509) b!819970))

(assert (=> d!258194 m!1060941))

(assert (=> b!819969 m!1060949))

(declare-fun m!1060994 () Bool)

(assert (=> b!819969 m!1060994))

(assert (=> b!819970 m!1060949))

(declare-fun m!1060996 () Bool)

(assert (=> b!819970 m!1060996))

(assert (=> b!819935 d!258194))

(declare-fun d!258196 () Bool)

(declare-fun res!378520 () Bool)

(declare-fun e!541719 () Bool)

(assert (=> d!258196 (=> (not res!378520) (not e!541719))))

(declare-fun valid!1011 (MutLongMap!1254) Bool)

(assert (=> d!258196 (= res!378520 (valid!1011 (v!19078 (underlying!2692 lt!316901))))))

(assert (=> d!258196 (= (valid!1007 lt!316901) e!541719)))

(declare-fun b!819981 () Bool)

(declare-fun res!378521 () Bool)

(assert (=> b!819981 (=> (not res!378521) (not e!541719))))

(declare-fun lambda!24333 () Int)

(declare-fun forall!2079 (List!8813 Int) Bool)

(assert (=> b!819981 (= res!378521 (forall!2079 (toList!562 (map!1812 (v!19078 (underlying!2692 lt!316901)))) lambda!24333))))

(declare-fun b!819982 () Bool)

(declare-fun allKeysSameHashInMap!49 (ListLongMap!121 Hashable!1226) Bool)

(assert (=> b!819982 (= e!541719 (allKeysSameHashInMap!49 (map!1812 (v!19078 (underlying!2692 lt!316901))) (hashF!3143 lt!316901)))))

(assert (= (and d!258196 res!378520) b!819981))

(assert (= (and b!819981 res!378521) b!819982))

(declare-fun m!1060999 () Bool)

(assert (=> d!258196 m!1060999))

(assert (=> b!819981 m!1060983))

(declare-fun m!1061001 () Bool)

(assert (=> b!819981 m!1061001))

(assert (=> b!819982 m!1060983))

(assert (=> b!819982 m!1060983))

(declare-fun m!1061003 () Bool)

(assert (=> b!819982 m!1061003))

(assert (=> b!819935 d!258196))

(declare-fun b!820000 () Bool)

(declare-fun e!541731 () Bool)

(declare-fun lt!316925 () MutLongMap!1254)

(assert (=> b!820000 (= e!541731 (is-LongMap!1254 lt!316925))))

(assert (=> b!820000 (= lt!316925 (v!19078 (underlying!2692 (getEmptyHashMap!16 lambda!24318 hashF!576 initialSize!19))))))

(declare-fun b!819999 () Bool)

(declare-fun e!541730 () Bool)

(assert (=> b!819999 (= e!541730 e!541731)))

(declare-fun d!258198 () Bool)

(assert (=> d!258198 (= true e!541730)))

(assert (= b!819999 b!820000))

(assert (= (and d!258198 (is-HashMap!1226 (getEmptyHashMap!16 lambda!24318 hashF!576 initialSize!19))) b!819999))

(declare-fun e!541725 () Bool)

(assert (=> d!258198 e!541725))

(declare-fun res!378530 () Bool)

(assert (=> d!258198 (=> (not res!378530) (not e!541725))))

(assert (=> d!258198 (= res!378530 true)))

(declare-fun lt!316921 () MutableMap!1226)

(declare-fun lambda!24341 () Int)

(declare-fun getEmptyLongMap!13 (Int (_ BitVec 32)) MutLongMap!1254)

(assert (=> d!258198 (= lt!316921 (HashMap!1226 (Cell!4960 (getEmptyLongMap!13 lambda!24341 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24318))))

(declare-fun lt!316922 () MutableMap!1226)

(assert (=> d!258198 (= lt!316922 (HashMap!1226 (Cell!4960 (getEmptyLongMap!13 lambda!24341 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24318))))

(assert (=> d!258198 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!258198 (= (getEmptyHashMap!16 lambda!24318 hashF!576 initialSize!19) lt!316922)))

(declare-fun b!819989 () Bool)

(declare-fun res!378531 () Bool)

(assert (=> b!819989 (=> (not res!378531) (not e!541725))))

(assert (=> b!819989 (= res!378531 (valid!1007 lt!316922))))

(declare-fun b!819990 () Bool)

(declare-fun size!7453 (MutableMap!1226) (_ BitVec 32))

(assert (=> b!819990 (= e!541725 (= (size!7453 lt!316922) #b00000000000000000000000000000000))))

(assert (= (and d!258198 res!378530) b!819989))

(assert (= (and b!819989 res!378531) b!819990))

(declare-fun m!1061009 () Bool)

(assert (=> d!258198 m!1061009))

(assert (=> d!258198 m!1061009))

(assert (=> d!258198 m!1060951))

(declare-fun m!1061011 () Bool)

(assert (=> b!819989 m!1061011))

(declare-fun m!1061013 () Bool)

(assert (=> b!819990 m!1061013))

(assert (=> b!819935 d!258198))

(declare-fun d!258202 () Bool)

(assert (=> d!258202 (= (valid!1008 (CacheFurthestNullable!183 lt!316901 totalInput!631)) (validCacheMapFurthestNullable!35 (cache!1607 (CacheFurthestNullable!183 lt!316901 totalInput!631)) (totalInput!2155 (CacheFurthestNullable!183 lt!316901 totalInput!631))))))

(declare-fun bs!228689 () Bool)

(assert (= bs!228689 d!258202))

(declare-fun m!1061023 () Bool)

(assert (=> bs!228689 m!1061023))

(assert (=> b!819936 d!258202))

(declare-fun d!258206 () Bool)

(declare-fun res!378542 () Bool)

(declare-fun e!541740 () Bool)

(assert (=> d!258206 (=> res!378542 e!541740)))

(assert (=> d!258206 (= res!378542 (is-Nil!8795 (toList!560 lt!316898)))))

(assert (=> d!258206 (= (forall!2077 (toList!560 lt!316898) lambda!24319) e!541740)))

(declare-fun b!820011 () Bool)

(declare-fun e!541741 () Bool)

(assert (=> b!820011 (= e!541740 e!541741)))

(declare-fun res!378543 () Bool)

(assert (=> b!820011 (=> (not res!378543) (not e!541741))))

(declare-fun dynLambda!4100 (Int tuple2!10292) Bool)

(assert (=> b!820011 (= res!378543 (dynLambda!4100 lambda!24319 (h!14196 (toList!560 lt!316898))))))

(declare-fun b!820012 () Bool)

(assert (=> b!820012 (= e!541741 (forall!2077 (t!92923 (toList!560 lt!316898)) lambda!24319))))

(assert (= (and d!258206 (not res!378542)) b!820011))

(assert (= (and b!820011 res!378543) b!820012))

(declare-fun b_lambda!27515 () Bool)

(assert (=> (not b_lambda!27515) (not b!820011)))

(declare-fun m!1061025 () Bool)

(assert (=> b!820011 m!1061025))

(declare-fun m!1061027 () Bool)

(assert (=> b!820012 m!1061027))

(assert (=> b!819934 d!258206))

(declare-fun e!541748 () Bool)

(declare-fun tp!256471 () Bool)

(declare-fun b!820023 () Bool)

(declare-fun tp!256470 () Bool)

(assert (=> b!820023 (= e!541748 (and (inv!11142 (left!6503 (c!132858 totalInput!631))) tp!256471 (inv!11142 (right!6833 (c!132858 totalInput!631))) tp!256470))))

(declare-fun b!820025 () Bool)

(declare-fun e!541747 () Bool)

(declare-fun tp!256469 () Bool)

(assert (=> b!820025 (= e!541747 tp!256469)))

(declare-fun b!820024 () Bool)

(declare-fun inv!11147 (IArray!5865) Bool)

(assert (=> b!820024 (= e!541748 (and (inv!11147 (xs!5621 (c!132858 totalInput!631))) e!541747))))

(assert (=> b!819932 (= tp!256459 (and (inv!11142 (c!132858 totalInput!631)) e!541748))))

(assert (= (and b!819932 (is-Node!2932 (c!132858 totalInput!631))) b!820023))

(assert (= b!820024 b!820025))

(assert (= (and b!819932 (is-Leaf!4300 (c!132858 totalInput!631))) b!820024))

(declare-fun m!1061029 () Bool)

(assert (=> b!820023 m!1061029))

(declare-fun m!1061031 () Bool)

(assert (=> b!820023 m!1061031))

(declare-fun m!1061033 () Bool)

(assert (=> b!820024 m!1061033))

(assert (=> b!819932 m!1060945))

(declare-fun b_lambda!27517 () Bool)

(assert (= b_lambda!27515 (or b!819934 b_lambda!27517)))

(declare-fun bs!228690 () Bool)

(declare-fun d!258208 () Bool)

(assert (= bs!228690 (and d!258208 b!819934)))

(declare-fun validCacheMapFurthestNullableBody!7 (tuple2!10292 BalanceConc!5876) Bool)

(assert (=> bs!228690 (= (dynLambda!4100 lambda!24319 (h!14196 (toList!560 lt!316898))) (validCacheMapFurthestNullableBody!7 (h!14196 (toList!560 lt!316898)) totalInput!631))))

(declare-fun m!1061035 () Bool)

(assert (=> bs!228690 m!1061035))

(assert (=> b!820011 d!258208))

(push 1)

(assert (not d!258198))

(assert (not b!820023))

(assert (not b!819964))

(assert (not d!258194))

(assert (not b_lambda!27517))

(assert (not b!819990))

(assert (not b!820012))

(assert (not b!819970))

(assert (not b!819989))

(assert (not b!820024))

(assert (not d!258182))

(assert (not b!819932))

(assert (not b!819969))

(assert (not b!819982))

(assert (not b!820025))

(assert (not bs!228690))

(assert (not d!258190))

(assert (not b!819962))

(assert (not d!258184))

(assert (not d!258202))

(assert (not d!258196))

(assert (not b!819981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

