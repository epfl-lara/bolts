; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6046 () Bool)

(assert start!6046)

(declare-fun b_free!1447 () Bool)

(declare-fun b_next!1447 () Bool)

(assert (=> start!6046 (= b_free!1447 (not b_next!1447))))

(declare-fun tp!5858 () Bool)

(declare-fun b_and!2553 () Bool)

(assert (=> start!6046 (= tp!5858 b_and!2553)))

(declare-fun res!25047 () Bool)

(declare-fun e!26600 () Bool)

(assert (=> start!6046 (=> (not res!25047) (not e!26600))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6046 (= res!25047 (validMask!0 mask!853))))

(assert (=> start!6046 e!26600))

(assert (=> start!6046 true))

(assert (=> start!6046 tp!5858))

(declare-fun b!42071 () Bool)

(declare-fun e!26601 () Bool)

(assert (=> b!42071 (= e!26600 (not e!26601))))

(declare-fun res!25048 () Bool)

(assert (=> b!42071 (=> res!25048 e!26601)))

(declare-datatypes ((V!2209 0))(
  ( (V!2210 (val!957 Int)) )
))
(declare-datatypes ((tuple2!1572 0))(
  ( (tuple2!1573 (_1!796 (_ BitVec 64)) (_2!796 V!2209)) )
))
(declare-datatypes ((List!1152 0))(
  ( (Nil!1149) (Cons!1148 (h!1725 tuple2!1572) (t!4103 List!1152)) )
))
(declare-datatypes ((ListLongMap!1153 0))(
  ( (ListLongMap!1154 (toList!592 List!1152)) )
))
(declare-fun lt!17260 () ListLongMap!1153)

(assert (=> b!42071 (= res!25048 (= lt!17260 (ListLongMap!1154 Nil!1149)))))

(declare-datatypes ((array!2755 0))(
  ( (array!2756 (arr!1321 (Array (_ BitVec 32) (_ BitVec 64))) (size!1479 (_ BitVec 32))) )
))
(declare-fun lt!17261 () array!2755)

(declare-fun lt!17258 () V!2209)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!671 0))(
  ( (ValueCellFull!671 (v!2040 V!2209)) (EmptyCell!671) )
))
(declare-datatypes ((array!2757 0))(
  ( (array!2758 (arr!1322 (Array (_ BitVec 32) ValueCell!671)) (size!1480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!322 0))(
  ( (LongMapFixedSize!323 (defaultEntry!1854 Int) (mask!5288 (_ BitVec 32)) (extraKeys!1745 (_ BitVec 32)) (zeroValue!1772 V!2209) (minValue!1772 V!2209) (_size!210 (_ BitVec 32)) (_keys!3367 array!2755) (_values!1837 array!2757) (_vacant!210 (_ BitVec 32))) )
))
(declare-fun map!762 (LongMapFixedSize!322) ListLongMap!1153)

(assert (=> b!42071 (= lt!17260 (map!762 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1153 0))(
  ( (Nil!1150) (Cons!1149 (h!1726 (_ BitVec 64)) (t!4104 List!1153)) )
))
(declare-fun arrayNoDuplicates!0 (array!2755 (_ BitVec 32) List!1153) Bool)

(assert (=> b!42071 (arrayNoDuplicates!0 lt!17261 #b00000000000000000000000000000000 Nil!1150)))

(declare-datatypes ((Unit!1085 0))(
  ( (Unit!1086) )
))
(declare-fun lt!17262 () Unit!1085)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2755 (_ BitVec 32) (_ BitVec 32) List!1153) Unit!1085)

(assert (=> b!42071 (= lt!17262 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2755 (_ BitVec 32)) Bool)

(assert (=> b!42071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17261 mask!853)))

(declare-fun lt!17263 () Unit!1085)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2755 (_ BitVec 32) (_ BitVec 32)) Unit!1085)

(assert (=> b!42071 (= lt!17263 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17261 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2755 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42071 (= (arrayCountValidKeys!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17259 () Unit!1085)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2755 (_ BitVec 32) (_ BitVec 32)) Unit!1085)

(assert (=> b!42071 (= lt!17259 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42071 (= lt!17261 (array!2756 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!232 (Int (_ BitVec 64)) V!2209)

(assert (=> b!42071 (= lt!17258 (dynLambda!232 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42072 () Bool)

(declare-fun isEmpty!274 (List!1152) Bool)

(assert (=> b!42072 (= e!26601 (not (isEmpty!274 (toList!592 lt!17260))))))

(assert (= (and start!6046 res!25047) b!42071))

(assert (= (and b!42071 (not res!25048)) b!42072))

(declare-fun b_lambda!2197 () Bool)

(assert (=> (not b_lambda!2197) (not b!42071)))

(declare-fun t!4102 () Bool)

(declare-fun tb!937 () Bool)

(assert (=> (and start!6046 (= defaultEntry!470 defaultEntry!470) t!4102) tb!937))

(declare-fun result!1617 () Bool)

(declare-fun tp_is_empty!1837 () Bool)

(assert (=> tb!937 (= result!1617 tp_is_empty!1837)))

(assert (=> b!42071 t!4102))

(declare-fun b_and!2555 () Bool)

(assert (= b_and!2553 (and (=> t!4102 result!1617) b_and!2555)))

(declare-fun m!35675 () Bool)

(assert (=> start!6046 m!35675))

(declare-fun m!35677 () Bool)

(assert (=> b!42071 m!35677))

(declare-fun m!35679 () Bool)

(assert (=> b!42071 m!35679))

(declare-fun m!35681 () Bool)

(assert (=> b!42071 m!35681))

(declare-fun m!35683 () Bool)

(assert (=> b!42071 m!35683))

(declare-fun m!35685 () Bool)

(assert (=> b!42071 m!35685))

(declare-fun m!35687 () Bool)

(assert (=> b!42071 m!35687))

(declare-fun m!35689 () Bool)

(assert (=> b!42071 m!35689))

(declare-fun m!35691 () Bool)

(assert (=> b!42071 m!35691))

(declare-fun m!35693 () Bool)

(assert (=> b!42072 m!35693))

(push 1)

(assert (not b_lambda!2197))

(assert (not b!42072))

(assert (not start!6046))

(assert (not b_next!1447))

(assert b_and!2555)

(assert tp_is_empty!1837)

(assert (not b!42071))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2555)

(assert (not b_next!1447))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2203 () Bool)

(assert (= b_lambda!2197 (or (and start!6046 b_free!1447) b_lambda!2203)))

(push 1)

(assert (not b_lambda!2203))

(assert (not b!42072))

(assert (not start!6046))

(assert (not b_next!1447))

(assert b_and!2555)

(assert tp_is_empty!1837)

(assert (not b!42071))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2555)

(assert (not b_next!1447))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7557 () Bool)

(assert (=> d!7557 (= (isEmpty!274 (toList!592 lt!17260)) (is-Nil!1149 (toList!592 lt!17260)))))

(assert (=> b!42072 d!7557))

(declare-fun d!7559 () Bool)

(declare-fun getCurrentListMap!344 (array!2755 array!2757 (_ BitVec 32) (_ BitVec 32) V!2209 V!2209 (_ BitVec 32) Int) ListLongMap!1153)

(assert (=> d!7559 (= (map!762 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!344 (_keys!3367 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1837 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5288 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1745 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1772 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1772 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1854 (LongMapFixedSize!323 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17258 lt!17258 #b00000000000000000000000000000000 lt!17261 (array!2758 ((as const (Array (_ BitVec 32) ValueCell!671)) EmptyCell!671) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1810 () Bool)

(assert (= bs!1810 d!7559))

(declare-fun m!35735 () Bool)

(assert (=> bs!1810 m!35735))

(assert (=> b!42071 d!7559))

(declare-fun d!7565 () Bool)

(assert (=> d!7565 (arrayNoDuplicates!0 lt!17261 #b00000000000000000000000000000000 Nil!1150)))

(declare-fun lt!17302 () Unit!1085)

(declare-fun choose!111 (array!2755 (_ BitVec 32) (_ BitVec 32) List!1153) Unit!1085)

(assert (=> d!7565 (= lt!17302 (choose!111 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1150))))

(assert (=> d!7565 (= (size!1479 lt!17261) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7565 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1150) lt!17302)))

(declare-fun bs!1811 () Bool)

(assert (= bs!1811 d!7565))

(assert (=> bs!1811 m!35681))

(declare-fun m!35737 () Bool)

(assert (=> bs!1811 m!35737))

(assert (=> b!42071 d!7565))

(declare-fun b!42114 () Bool)

(declare-fun e!26633 () Bool)

(declare-fun e!26634 () Bool)

(assert (=> b!42114 (= e!26633 e!26634)))

(declare-fun lt!17312 () (_ BitVec 64))

(assert (=> b!42114 (= lt!17312 (select (arr!1321 lt!17261) #b00000000000000000000000000000000))))

(declare-fun lt!17313 () Unit!1085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2755 (_ BitVec 64) (_ BitVec 32)) Unit!1085)

(assert (=> b!42114 (= lt!17313 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17261 lt!17312 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42114 (arrayContainsKey!0 lt!17261 lt!17312 #b00000000000000000000000000000000)))

(declare-fun lt!17314 () Unit!1085)

(assert (=> b!42114 (= lt!17314 lt!17313)))

(declare-fun res!25075 () Bool)

(declare-datatypes ((SeekEntryResult!189 0))(
  ( (MissingZero!189 (index!2878 (_ BitVec 32))) (Found!189 (index!2879 (_ BitVec 32))) (Intermediate!189 (undefined!1001 Bool) (index!2880 (_ BitVec 32)) (x!8018 (_ BitVec 32))) (Undefined!189) (MissingVacant!189 (index!2881 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2755 (_ BitVec 32)) SeekEntryResult!189)

(assert (=> b!42114 (= res!25075 (= (seekEntryOrOpen!0 (select (arr!1321 lt!17261) #b00000000000000000000000000000000) lt!17261 mask!853) (Found!189 #b00000000000000000000000000000000)))))

(assert (=> b!42114 (=> (not res!25075) (not e!26634))))

(declare-fun d!7569 () Bool)

(declare-fun res!25074 () Bool)

(declare-fun e!26632 () Bool)

(assert (=> d!7569 (=> res!25074 e!26632)))

(assert (=> d!7569 (= res!25074 (bvsge #b00000000000000000000000000000000 (size!1479 lt!17261)))))

(assert (=> d!7569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17261 mask!853) e!26632)))

(declare-fun bm!3263 () Bool)

(declare-fun call!3266 () Bool)

(assert (=> bm!3263 (= call!3266 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17261 mask!853))))

(declare-fun b!42115 () Bool)

(assert (=> b!42115 (= e!26632 e!26633)))

(declare-fun c!5269 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42115 (= c!5269 (validKeyInArray!0 (select (arr!1321 lt!17261) #b00000000000000000000000000000000)))))

(declare-fun b!42116 () Bool)

(assert (=> b!42116 (= e!26633 call!3266)))

(declare-fun b!42117 () Bool)

(assert (=> b!42117 (= e!26634 call!3266)))

(assert (= (and d!7569 (not res!25074)) b!42115))

(assert (= (and b!42115 c!5269) b!42114))

(assert (= (and b!42115 (not c!5269)) b!42116))

(assert (= (and b!42114 res!25075) b!42117))

(assert (= (or b!42117 b!42116) bm!3263))

(declare-fun m!35749 () Bool)

(assert (=> b!42114 m!35749))

(declare-fun m!35751 () Bool)

(assert (=> b!42114 m!35751))

(declare-fun m!35753 () Bool)

(assert (=> b!42114 m!35753))

(assert (=> b!42114 m!35749))

(declare-fun m!35755 () Bool)

(assert (=> b!42114 m!35755))

(declare-fun m!35757 () Bool)

(assert (=> bm!3263 m!35757))

(assert (=> b!42115 m!35749))

(assert (=> b!42115 m!35749))

(declare-fun m!35759 () Bool)

(assert (=> b!42115 m!35759))

(assert (=> b!42071 d!7569))

(declare-fun d!7579 () Bool)

(assert (=> d!7579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17261 mask!853)))

(declare-fun lt!17323 () Unit!1085)

(declare-fun choose!34 (array!2755 (_ BitVec 32) (_ BitVec 32)) Unit!1085)

(assert (=> d!7579 (= lt!17323 (choose!34 lt!17261 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7579 (validMask!0 mask!853)))

(assert (=> d!7579 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17261 mask!853 #b00000000000000000000000000000000) lt!17323)))

(declare-fun bs!1815 () Bool)

(assert (= bs!1815 d!7579))

(assert (=> bs!1815 m!35689))

(declare-fun m!35765 () Bool)

(assert (=> bs!1815 m!35765))

(assert (=> bs!1815 m!35675))

(assert (=> b!42071 d!7579))

(declare-fun b!42140 () Bool)

(declare-fun e!26655 () Bool)

(declare-fun e!26653 () Bool)

(assert (=> b!42140 (= e!26655 e!26653)))

(declare-fun res!25089 () Bool)

(assert (=> b!42140 (=> (not res!25089) (not e!26653))))

(declare-fun e!26652 () Bool)

(assert (=> b!42140 (= res!25089 (not e!26652))))

(declare-fun res!25090 () Bool)

(assert (=> b!42140 (=> (not res!25090) (not e!26652))))

(assert (=> b!42140 (= res!25090 (validKeyInArray!0 (select (arr!1321 lt!17261) #b00000000000000000000000000000000)))))

(declare-fun d!7585 () Bool)

(declare-fun res!25088 () Bool)

(assert (=> d!7585 (=> res!25088 e!26655)))

(assert (=> d!7585 (= res!25088 (bvsge #b00000000000000000000000000000000 (size!1479 lt!17261)))))

(assert (=> d!7585 (= (arrayNoDuplicates!0 lt!17261 #b00000000000000000000000000000000 Nil!1150) e!26655)))

(declare-fun b!42141 () Bool)

(declare-fun e!26654 () Bool)

(declare-fun call!3272 () Bool)

(assert (=> b!42141 (= e!26654 call!3272)))

(declare-fun b!42142 () Bool)

(declare-fun contains!553 (List!1153 (_ BitVec 64)) Bool)

(assert (=> b!42142 (= e!26652 (contains!553 Nil!1150 (select (arr!1321 lt!17261) #b00000000000000000000000000000000)))))

(declare-fun bm!3269 () Bool)

(declare-fun c!5275 () Bool)

(assert (=> bm!3269 (= call!3272 (arrayNoDuplicates!0 lt!17261 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5275 (Cons!1149 (select (arr!1321 lt!17261) #b00000000000000000000000000000000) Nil!1150) Nil!1150)))))

(declare-fun b!42143 () Bool)

(assert (=> b!42143 (= e!26653 e!26654)))

(assert (=> b!42143 (= c!5275 (validKeyInArray!0 (select (arr!1321 lt!17261) #b00000000000000000000000000000000)))))

(declare-fun b!42144 () Bool)

(assert (=> b!42144 (= e!26654 call!3272)))

(assert (= (and d!7585 (not res!25088)) b!42140))

(assert (= (and b!42140 res!25090) b!42142))

(assert (= (and b!42140 res!25089) b!42143))

(assert (= (and b!42143 c!5275) b!42141))

(assert (= (and b!42143 (not c!5275)) b!42144))

(assert (= (or b!42141 b!42144) bm!3269))

(assert (=> b!42140 m!35749))

(assert (=> b!42140 m!35749))

(assert (=> b!42140 m!35759))

(assert (=> b!42142 m!35749))

(assert (=> b!42142 m!35749))

(declare-fun m!35781 () Bool)

(assert (=> b!42142 m!35781))

(assert (=> bm!3269 m!35749))

(declare-fun m!35783 () Bool)

(assert (=> bm!3269 m!35783))

(assert (=> b!42143 m!35749))

(assert (=> b!42143 m!35749))

(assert (=> b!42143 m!35759))

(assert (=> b!42071 d!7585))

(declare-fun b!42165 () Bool)

(declare-fun e!26670 () (_ BitVec 32))

(declare-fun e!26669 () (_ BitVec 32))

(assert (=> b!42165 (= e!26670 e!26669)))

(declare-fun c!5284 () Bool)

(assert (=> b!42165 (= c!5284 (validKeyInArray!0 (select (arr!1321 lt!17261) #b00000000000000000000000000000000)))))

(declare-fun b!42166 () Bool)

(declare-fun call!3278 () (_ BitVec 32))

(assert (=> b!42166 (= e!26669 call!3278)))

(declare-fun b!42167 () Bool)

(assert (=> b!42167 (= e!26669 (bvadd #b00000000000000000000000000000001 call!3278))))

(declare-fun d!7591 () Bool)

(declare-fun lt!17347 () (_ BitVec 32))

(assert (=> d!7591 (and (bvsge lt!17347 #b00000000000000000000000000000000) (bvsle lt!17347 (bvsub (size!1479 lt!17261) #b00000000000000000000000000000000)))))

(assert (=> d!7591 (= lt!17347 e!26670)))

(declare-fun c!5283 () Bool)

(assert (=> d!7591 (= c!5283 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7591 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1479 lt!17261)))))

(assert (=> d!7591 (= (arrayCountValidKeys!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17347)))

(declare-fun b!42168 () Bool)

(assert (=> b!42168 (= e!26670 #b00000000000000000000000000000000)))

(declare-fun bm!3275 () Bool)

(assert (=> bm!3275 (= call!3278 (arrayCountValidKeys!0 lt!17261 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7591 c!5283) b!42168))

(assert (= (and d!7591 (not c!5283)) b!42165))

(assert (= (and b!42165 c!5284) b!42167))

(assert (= (and b!42165 (not c!5284)) b!42166))

(assert (= (or b!42167 b!42166) bm!3275))

(assert (=> b!42165 m!35749))

(assert (=> b!42165 m!35749))

(assert (=> b!42165 m!35759))

(declare-fun m!35795 () Bool)

(assert (=> bm!3275 m!35795))

(assert (=> b!42071 d!7591))

(declare-fun d!7597 () Bool)

(assert (=> d!7597 (= (arrayCountValidKeys!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17352 () Unit!1085)

(declare-fun choose!59 (array!2755 (_ BitVec 32) (_ BitVec 32)) Unit!1085)

(assert (=> d!7597 (= lt!17352 (choose!59 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7597 (bvslt (size!1479 lt!17261) #b01111111111111111111111111111111)))

(assert (=> d!7597 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17261 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17352)))

(declare-fun bs!1818 () Bool)

(assert (= bs!1818 d!7597))

(assert (=> bs!1818 m!35691))

(declare-fun m!35797 () Bool)

(assert (=> bs!1818 m!35797))

(assert (=> b!42071 d!7597))

(declare-fun d!7599 () Bool)

(assert (=> d!7599 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6046 d!7599))

(push 1)

(assert (not b!42143))

(assert (not b!42165))

(assert (not bm!3269))

(assert (not b!42142))

(assert (not d!7597))

(assert (not b_next!1447))

(assert (not b!42140))

(assert (not b!42114))

(assert (not d!7579))

(assert (not d!7559))

(assert (not d!7565))

(assert (not b_lambda!2203))

(assert (not b!42115))

(assert (not bm!3275))

(assert (not bm!3263))

(assert tp_is_empty!1837)

(assert b_and!2555)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2555)

(assert (not b_next!1447))

(check-sat)

