; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!72838 () Bool)

(assert start!72838)

(declare-fun b!819031 () Bool)

(assert (=> b!819031 true))

(declare-fun b!819029 () Bool)

(declare-fun e!541081 () Bool)

(declare-datatypes ((C!4614 0))(
  ( (C!4615 (val!2537 Int)) )
))
(declare-datatypes ((Regex!2022 0))(
  ( (ElementMatch!2022 (c!132769 C!4614)) (Concat!3731 (regOne!4556 Regex!2022) (regTwo!4556 Regex!2022)) (EmptyExpr!2022) (Star!2022 (reg!2351 Regex!2022)) (EmptyLang!2022) (Union!2022 (regOne!4557 Regex!2022) (regTwo!4557 Regex!2022)) )
))
(declare-datatypes ((List!8784 0))(
  ( (Nil!8770) (Cons!8770 (h!14171 Regex!2022) (t!92890 List!8784)) )
))
(declare-datatypes ((Context!836 0))(
  ( (Context!837 (exprs!918 List!8784)) )
))
(declare-datatypes ((tuple3!1054 0))(
  ( (tuple3!1055 (_1!5954 (Set Context!836)) (_2!5954 Int) (_3!818 Int)) )
))
(declare-datatypes ((tuple2!10272 0))(
  ( (tuple2!10273 (_1!5955 tuple3!1054) (_2!5955 Int)) )
))
(declare-datatypes ((List!8785 0))(
  ( (Nil!8771) (Cons!8771 (h!14172 tuple2!10272) (t!92891 List!8785)) )
))
(declare-datatypes ((array!4393 0))(
  ( (array!4394 (arr!1957 (Array (_ BitVec 32) (_ BitVec 64))) (size!7424 (_ BitVec 32))) )
))
(declare-datatypes ((array!4395 0))(
  ( (array!4396 (arr!1958 (Array (_ BitVec 32) List!8785)) (size!7425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2496 0))(
  ( (LongMapFixedSize!2497 (defaultEntry!1604 Int) (mask!3146 (_ BitVec 32)) (extraKeys!1495 (_ BitVec 32)) (zeroValue!1505 List!8785) (minValue!1505 List!8785) (_size!2605 (_ BitVec 32)) (_keys!1542 array!4393) (_values!1527 array!4395) (_vacant!1309 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4933 0))(
  ( (Cell!4934 (v!19065 LongMapFixedSize!2496)) )
))
(declare-datatypes ((MutLongMap!1248 0))(
  ( (LongMap!1248 (underlying!2679 Cell!4933)) (MutLongMapExt!1247 (__x!7147 Int)) )
))
(declare-datatypes ((Cell!4935 0))(
  ( (Cell!4936 (v!19066 MutLongMap!1248)) )
))
(declare-datatypes ((Hashable!1220 0))(
  ( (HashableExt!1219 (__x!7148 Int)) )
))
(declare-datatypes ((MutableMap!1220 0))(
  ( (MutableMapExt!1219 (__x!7149 Int)) (HashMap!1220 (underlying!2680 Cell!4935) (hashF!3130 Hashable!1220) (_size!2606 (_ BitVec 32)) (defaultValue!1373 Int)) )
))
(declare-fun lt!316439 () MutableMap!1220)

(assert (=> b!819029 (= e!541081 (not (is-HashMap!1220 lt!316439)))))

(declare-datatypes ((List!8786 0))(
  ( (Nil!8772) (Cons!8772 (h!14173 C!4614) (t!92892 List!8786)) )
))
(declare-datatypes ((IArray!5853 0))(
  ( (IArray!5854 (innerList!2984 List!8786)) )
))
(declare-datatypes ((Conc!2926 0))(
  ( (Node!2926 (left!6482 Conc!2926) (right!6812 Conc!2926) (csize!6082 Int) (cheight!3137 Int)) (Leaf!4291 (xs!5615 IArray!5853) (csize!6083 Int)) (Empty!2926) )
))
(declare-datatypes ((BalanceConc!5864 0))(
  ( (BalanceConc!5865 (c!132770 Conc!2926)) )
))
(declare-fun totalInput!631 () BalanceConc!5864)

(declare-fun e!541079 () Bool)

(declare-fun validCacheMapFurthestNullable!29 (MutableMap!1220 BalanceConc!5864) Bool)

(assert (=> b!819029 (= (validCacheMapFurthestNullable!29 lt!316439 totalInput!631) e!541079)))

(declare-fun res!377936 () Bool)

(assert (=> b!819029 (=> (not res!377936) (not e!541079))))

(declare-fun valid!995 (MutableMap!1220) Bool)

(assert (=> b!819029 (= res!377936 (valid!995 lt!316439))))

(declare-fun hashF!576 () Hashable!1220)

(declare-fun lambda!24133 () Int)

(declare-fun initialSize!19 () (_ BitVec 32))

(declare-fun getEmptyHashMap!10 (Int Hashable!1220 (_ BitVec 32)) MutableMap!1220)

(assert (=> b!819029 (= lt!316439 (getEmptyHashMap!10 lambda!24133 hashF!576 initialSize!19))))

(declare-fun e!541080 () Bool)

(declare-datatypes ((ListMap!419 0))(
  ( (ListMap!420 (toList!550 List!8785)) )
))
(declare-fun lt!316440 () ListMap!419)

(declare-fun lambda!24134 () Int)

(declare-fun forall!2067 (List!8785 Int) Bool)

(assert (=> b!819031 (= e!541080 (forall!2067 (toList!550 lt!316440) lambda!24134))))

(declare-fun b!819032 () Bool)

(declare-fun e!541082 () Bool)

(declare-fun tp!256339 () Bool)

(declare-fun inv!11106 (Conc!2926) Bool)

(assert (=> b!819032 (= e!541082 (and (inv!11106 (c!132770 totalInput!631)) tp!256339))))

(declare-fun res!377938 () Bool)

(assert (=> start!72838 (=> (not res!377938) (not e!541081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!72838 (= res!377938 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(assert (=> start!72838 e!541081))

(assert (=> start!72838 true))

(declare-fun inv!11107 (BalanceConc!5864) Bool)

(assert (=> start!72838 (and (inv!11107 totalInput!631) e!541082)))

(declare-fun b!819030 () Bool)

(assert (=> b!819030 (= e!541079 e!541080)))

(declare-fun res!377937 () Bool)

(assert (=> b!819030 (=> (not res!377937) (not e!541080))))

(declare-fun invariantList!185 (List!8785) Bool)

(assert (=> b!819030 (= res!377937 (invariantList!185 (toList!550 lt!316440)))))

(declare-fun map!1795 (MutableMap!1220) ListMap!419)

(assert (=> b!819030 (= lt!316440 (map!1795 lt!316439))))

(assert (= (and start!72838 res!377938) b!819029))

(assert (= (and b!819029 res!377936) b!819030))

(assert (= (and b!819030 res!377937) b!819031))

(assert (= start!72838 b!819032))

(declare-fun m!1059851 () Bool)

(assert (=> start!72838 m!1059851))

(declare-fun m!1059853 () Bool)

(assert (=> start!72838 m!1059853))

(declare-fun m!1059855 () Bool)

(assert (=> b!819029 m!1059855))

(declare-fun m!1059857 () Bool)

(assert (=> b!819029 m!1059857))

(declare-fun m!1059859 () Bool)

(assert (=> b!819029 m!1059859))

(declare-fun m!1059861 () Bool)

(assert (=> b!819030 m!1059861))

(declare-fun m!1059863 () Bool)

(assert (=> b!819030 m!1059863))

(declare-fun m!1059865 () Bool)

(assert (=> b!819032 m!1059865))

(declare-fun m!1059867 () Bool)

(assert (=> b!819031 m!1059867))

(push 1)

(assert (not b!819030))

(assert (not b!819029))

(assert (not start!72838))

(assert (not b!819031))

(assert (not b!819032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!257749 () Bool)

(declare-fun noDuplicatedKeys!30 (List!8785) Bool)

(assert (=> d!257749 (= (invariantList!185 (toList!550 lt!316440)) (noDuplicatedKeys!30 (toList!550 lt!316440)))))

(declare-fun bs!228541 () Bool)

(assert (= bs!228541 d!257749))

(declare-fun m!1059887 () Bool)

(assert (=> bs!228541 m!1059887))

(assert (=> b!819030 d!257749))

(declare-fun d!257753 () Bool)

(declare-fun lt!316449 () ListMap!419)

(assert (=> d!257753 (invariantList!185 (toList!550 lt!316449))))

(declare-datatypes ((tuple2!10276 0))(
  ( (tuple2!10277 (_1!5958 (_ BitVec 64)) (_2!5958 List!8785)) )
))
(declare-datatypes ((List!8790 0))(
  ( (Nil!8776) (Cons!8776 (h!14177 tuple2!10276) (t!92896 List!8790)) )
))
(declare-fun extractMap!35 (List!8790) ListMap!419)

(declare-datatypes ((ListLongMap!113 0))(
  ( (ListLongMap!114 (toList!552 List!8790)) )
))
(declare-fun map!1797 (MutLongMap!1248) ListLongMap!113)

(assert (=> d!257753 (= lt!316449 (extractMap!35 (toList!552 (map!1797 (v!19066 (underlying!2680 lt!316439))))))))

(assert (=> d!257753 (valid!995 lt!316439)))

(assert (=> d!257753 (= (map!1795 lt!316439) lt!316449)))

(declare-fun bs!228543 () Bool)

(assert (= bs!228543 d!257753))

(declare-fun m!1059895 () Bool)

(assert (=> bs!228543 m!1059895))

(declare-fun m!1059897 () Bool)

(assert (=> bs!228543 m!1059897))

(declare-fun m!1059899 () Bool)

(assert (=> bs!228543 m!1059899))

(assert (=> bs!228543 m!1059857))

(assert (=> b!819030 d!257753))

(declare-fun bs!228544 () Bool)

(declare-fun b!819060 () Bool)

(assert (= bs!228544 (and b!819060 b!819031)))

(declare-fun lambda!24143 () Int)

(assert (=> bs!228544 (= lambda!24143 lambda!24134)))

(assert (=> b!819060 true))

(declare-fun d!257759 () Bool)

(declare-fun res!377958 () Bool)

(declare-fun e!541107 () Bool)

(assert (=> d!257759 (=> (not res!377958) (not e!541107))))

(assert (=> d!257759 (= res!377958 (valid!995 lt!316439))))

(assert (=> d!257759 (= (validCacheMapFurthestNullable!29 lt!316439 totalInput!631) e!541107)))

(declare-fun b!819059 () Bool)

(declare-fun res!377959 () Bool)

(assert (=> b!819059 (=> (not res!377959) (not e!541107))))

(assert (=> b!819059 (= res!377959 (invariantList!185 (toList!550 (map!1795 lt!316439))))))

(assert (=> b!819060 (= e!541107 (forall!2067 (toList!550 (map!1795 lt!316439)) lambda!24143))))

(assert (= (and d!257759 res!377958) b!819059))

(assert (= (and b!819059 res!377959) b!819060))

(assert (=> d!257759 m!1059857))

(assert (=> b!819059 m!1059863))

(declare-fun m!1059902 () Bool)

(assert (=> b!819059 m!1059902))

(assert (=> b!819060 m!1059863))

(declare-fun m!1059904 () Bool)

(assert (=> b!819060 m!1059904))

(assert (=> b!819029 d!257759))

(declare-fun d!257761 () Bool)

(declare-fun res!377964 () Bool)

(declare-fun e!541110 () Bool)

(assert (=> d!257761 (=> (not res!377964) (not e!541110))))

(declare-fun valid!997 (MutLongMap!1248) Bool)

(assert (=> d!257761 (= res!377964 (valid!997 (v!19066 (underlying!2680 lt!316439))))))

(assert (=> d!257761 (= (valid!995 lt!316439) e!541110)))

(declare-fun b!819065 () Bool)

(declare-fun res!377965 () Bool)

(assert (=> b!819065 (=> (not res!377965) (not e!541110))))

(declare-fun lambda!24146 () Int)

(declare-fun forall!2069 (List!8790 Int) Bool)

(assert (=> b!819065 (= res!377965 (forall!2069 (toList!552 (map!1797 (v!19066 (underlying!2680 lt!316439)))) lambda!24146))))

(declare-fun b!819066 () Bool)

(declare-fun allKeysSameHashInMap!45 (ListLongMap!113 Hashable!1220) Bool)

(assert (=> b!819066 (= e!541110 (allKeysSameHashInMap!45 (map!1797 (v!19066 (underlying!2680 lt!316439))) (hashF!3130 lt!316439)))))

(assert (= (and d!257761 res!377964) b!819065))

(assert (= (and b!819065 res!377965) b!819066))

(declare-fun m!1059912 () Bool)

(assert (=> d!257761 m!1059912))

(assert (=> b!819065 m!1059897))

(declare-fun m!1059914 () Bool)

(assert (=> b!819065 m!1059914))

(assert (=> b!819066 m!1059897))

(assert (=> b!819066 m!1059897))

(declare-fun m!1059916 () Bool)

(assert (=> b!819066 m!1059916))

(assert (=> b!819029 d!257761))

(declare-fun b!819089 () Bool)

(declare-fun e!541126 () Bool)

(declare-fun lt!316461 () MutLongMap!1248)

(assert (=> b!819089 (= e!541126 (is-LongMap!1248 lt!316461))))

(assert (=> b!819089 (= lt!316461 (v!19066 (underlying!2680 (getEmptyHashMap!10 lambda!24133 hashF!576 initialSize!19))))))

(declare-fun b!819088 () Bool)

(declare-fun e!541125 () Bool)

(assert (=> b!819088 (= e!541125 e!541126)))

(declare-fun d!257765 () Bool)

(assert (=> d!257765 (= true e!541125)))

(assert (= b!819088 b!819089))

(assert (= (and d!257765 (is-HashMap!1220 (getEmptyHashMap!10 lambda!24133 hashF!576 initialSize!19))) b!819088))

(declare-fun e!541120 () Bool)

(assert (=> d!257765 e!541120))

(declare-fun res!377973 () Bool)

(assert (=> d!257765 (=> (not res!377973) (not e!541120))))

(assert (=> d!257765 (= res!377973 true)))

(declare-fun lt!316457 () MutableMap!1220)

(declare-fun lambda!24151 () Int)

(declare-fun getEmptyLongMap!9 (Int (_ BitVec 32)) MutLongMap!1248)

(assert (=> d!257765 (= lt!316457 (HashMap!1220 (Cell!4936 (getEmptyLongMap!9 lambda!24151 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24133))))

(declare-fun lt!316458 () MutableMap!1220)

(assert (=> d!257765 (= lt!316458 (HashMap!1220 (Cell!4936 (getEmptyLongMap!9 lambda!24151 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24133))))

(assert (=> d!257765 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!257765 (= (getEmptyHashMap!10 lambda!24133 hashF!576 initialSize!19) lt!316458)))

(declare-fun b!819080 () Bool)

(declare-fun res!377974 () Bool)

(assert (=> b!819080 (=> (not res!377974) (not e!541120))))

(assert (=> b!819080 (= res!377974 (valid!995 lt!316458))))

(declare-fun b!819081 () Bool)

(declare-fun size!7428 (MutableMap!1220) (_ BitVec 32))

(assert (=> b!819081 (= e!541120 (= (size!7428 lt!316458) #b00000000000000000000000000000000))))

(assert (= (and d!257765 res!377973) b!819080))

(assert (= (and b!819080 res!377974) b!819081))

(declare-fun m!1059922 () Bool)

(assert (=> d!257765 m!1059922))

(assert (=> d!257765 m!1059922))

(assert (=> d!257765 m!1059851))

(declare-fun m!1059924 () Bool)

(assert (=> b!819080 m!1059924))

(declare-fun m!1059926 () Bool)

(assert (=> b!819081 m!1059926))

(assert (=> b!819029 d!257765))

(declare-fun d!257769 () Bool)

(declare-fun res!377979 () Bool)

(declare-fun e!541131 () Bool)

(assert (=> d!257769 (=> res!377979 e!541131)))

(assert (=> d!257769 (= res!377979 (is-Nil!8771 (toList!550 lt!316440)))))

(assert (=> d!257769 (= (forall!2067 (toList!550 lt!316440) lambda!24134) e!541131)))

(declare-fun b!819094 () Bool)

(declare-fun e!541132 () Bool)

(assert (=> b!819094 (= e!541131 e!541132)))

(declare-fun res!377980 () Bool)

(assert (=> b!819094 (=> (not res!377980) (not e!541132))))

(declare-fun dynLambda!4093 (Int tuple2!10272) Bool)

(assert (=> b!819094 (= res!377980 (dynLambda!4093 lambda!24134 (h!14172 (toList!550 lt!316440))))))

(declare-fun b!819095 () Bool)

(assert (=> b!819095 (= e!541132 (forall!2067 (t!92891 (toList!550 lt!316440)) lambda!24134))))

(assert (= (and d!257769 (not res!377979)) b!819094))

(assert (= (and b!819094 res!377980) b!819095))

(declare-fun b_lambda!27417 () Bool)

(assert (=> (not b_lambda!27417) (not b!819094)))

(declare-fun m!1059928 () Bool)

(assert (=> b!819094 m!1059928))

(declare-fun m!1059930 () Bool)

(assert (=> b!819095 m!1059930))

(assert (=> b!819031 d!257769))

(declare-fun d!257771 () Bool)

(declare-fun c!132778 () Bool)

(assert (=> d!257771 (= c!132778 (is-Node!2926 (c!132770 totalInput!631)))))

(declare-fun e!541137 () Bool)

(assert (=> d!257771 (= (inv!11106 (c!132770 totalInput!631)) e!541137)))

(declare-fun b!819102 () Bool)

(declare-fun inv!11110 (Conc!2926) Bool)

(assert (=> b!819102 (= e!541137 (inv!11110 (c!132770 totalInput!631)))))

(declare-fun b!819103 () Bool)

(declare-fun e!541138 () Bool)

(assert (=> b!819103 (= e!541137 e!541138)))

(declare-fun res!377983 () Bool)

(assert (=> b!819103 (= res!377983 (not (is-Leaf!4291 (c!132770 totalInput!631))))))

(assert (=> b!819103 (=> res!377983 e!541138)))

(declare-fun b!819104 () Bool)

(declare-fun inv!11111 (Conc!2926) Bool)

(assert (=> b!819104 (= e!541138 (inv!11111 (c!132770 totalInput!631)))))

(assert (= (and d!257771 c!132778) b!819102))

(assert (= (and d!257771 (not c!132778)) b!819103))

(assert (= (and b!819103 (not res!377983)) b!819104))

(declare-fun m!1059932 () Bool)

(assert (=> b!819102 m!1059932))

(declare-fun m!1059934 () Bool)

(assert (=> b!819104 m!1059934))

(assert (=> b!819032 d!257771))

(declare-fun d!257775 () Bool)

(assert (=> d!257775 (= (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!72838 d!257775))

(declare-fun d!257779 () Bool)

(declare-fun isBalanced!794 (Conc!2926) Bool)

(assert (=> d!257779 (= (inv!11107 totalInput!631) (isBalanced!794 (c!132770 totalInput!631)))))

(declare-fun bs!228547 () Bool)

(assert (= bs!228547 d!257779))

(declare-fun m!1059938 () Bool)

(assert (=> bs!228547 m!1059938))

(assert (=> start!72838 d!257779))

(declare-fun e!541144 () Bool)

(declare-fun tp!256349 () Bool)

(declare-fun tp!256351 () Bool)

(declare-fun b!819113 () Bool)

(assert (=> b!819113 (= e!541144 (and (inv!11106 (left!6482 (c!132770 totalInput!631))) tp!256349 (inv!11106 (right!6812 (c!132770 totalInput!631))) tp!256351))))

(declare-fun b!819115 () Bool)

(declare-fun e!541143 () Bool)

(declare-fun tp!256350 () Bool)

(assert (=> b!819115 (= e!541143 tp!256350)))

(declare-fun b!819114 () Bool)

(declare-fun inv!11112 (IArray!5853) Bool)

(assert (=> b!819114 (= e!541144 (and (inv!11112 (xs!5615 (c!132770 totalInput!631))) e!541143))))

(assert (=> b!819032 (= tp!256339 (and (inv!11106 (c!132770 totalInput!631)) e!541144))))

(assert (= (and b!819032 (is-Node!2926 (c!132770 totalInput!631))) b!819113))

(assert (= b!819114 b!819115))

(assert (= (and b!819032 (is-Leaf!4291 (c!132770 totalInput!631))) b!819114))

(declare-fun m!1059940 () Bool)

(assert (=> b!819113 m!1059940))

(declare-fun m!1059942 () Bool)

(assert (=> b!819113 m!1059942))

(declare-fun m!1059944 () Bool)

(assert (=> b!819114 m!1059944))

(assert (=> b!819032 m!1059865))

(declare-fun b_lambda!27419 () Bool)

(assert (= b_lambda!27417 (or b!819031 b_lambda!27419)))

(declare-fun bs!228548 () Bool)

(declare-fun d!257781 () Bool)

(assert (= bs!228548 (and d!257781 b!819031)))

(declare-fun validCacheMapFurthestNullableBody!3 (tuple2!10272 BalanceConc!5864) Bool)

(assert (=> bs!228548 (= (dynLambda!4093 lambda!24134 (h!14172 (toList!550 lt!316440))) (validCacheMapFurthestNullableBody!3 (h!14172 (toList!550 lt!316440)) totalInput!631))))

(declare-fun m!1059946 () Bool)

(assert (=> bs!228548 m!1059946))

(assert (=> b!819094 d!257781))

(push 1)

(assert (not b!819104))

(assert (not d!257779))

(assert (not b!819081))

(assert (not b_lambda!27419))

(assert (not bs!228548))

(assert (not d!257749))

(assert (not b!819102))

(assert (not d!257753))

(assert (not b!819115))

(assert (not d!257761))

(assert (not b!819114))

(assert (not b!819066))

(assert (not b!819113))

(assert (not b!819080))

(assert (not b!819059))

(assert (not b!819065))

(assert (not d!257759))

(assert (not b!819060))

(assert (not b!819032))

(assert (not d!257765))

(assert (not b!819095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

