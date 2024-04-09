; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6660 () Bool)

(assert start!6660)

(declare-fun b_free!1509 () Bool)

(declare-fun b_next!1509 () Bool)

(assert (=> start!6660 (= b_free!1509 (not b_next!1509))))

(declare-fun tp!5951 () Bool)

(declare-fun b_and!2701 () Bool)

(assert (=> start!6660 (= tp!5951 b_and!2701)))

(declare-fun b!43908 () Bool)

(declare-fun res!25969 () Bool)

(declare-fun e!27832 () Bool)

(assert (=> b!43908 (=> res!25969 e!27832)))

(declare-datatypes ((V!2319 0))(
  ( (V!2320 (val!988 Int)) )
))
(declare-datatypes ((tuple2!1634 0))(
  ( (tuple2!1635 (_1!827 (_ BitVec 64)) (_2!827 V!2319)) )
))
(declare-datatypes ((List!1220 0))(
  ( (Nil!1217) (Cons!1216 (h!1793 tuple2!1634) (t!4239 List!1220)) )
))
(declare-datatypes ((ListLongMap!1215 0))(
  ( (ListLongMap!1216 (toList!623 List!1220)) )
))
(declare-fun lt!19132 () ListLongMap!1215)

(declare-fun isEmpty!290 (List!1220) Bool)

(assert (=> b!43908 (= res!25969 (isEmpty!290 (toList!623 lt!19132)))))

(declare-fun b!43907 () Bool)

(declare-fun e!27833 () Bool)

(assert (=> b!43907 (= e!27833 (not e!27832))))

(declare-fun res!25967 () Bool)

(assert (=> b!43907 (=> res!25967 e!27832)))

(assert (=> b!43907 (= res!25967 (= lt!19132 (ListLongMap!1216 Nil!1217)))))

(declare-datatypes ((array!2939 0))(
  ( (array!2940 (arr!1413 (Array (_ BitVec 32) (_ BitVec 64))) (size!1610 (_ BitVec 32))) )
))
(declare-fun lt!19131 () array!2939)

(declare-datatypes ((ValueCell!702 0))(
  ( (ValueCellFull!702 (v!2083 V!2319)) (EmptyCell!702) )
))
(declare-datatypes ((array!2941 0))(
  ( (array!2942 (arr!1414 (Array (_ BitVec 32) ValueCell!702)) (size!1611 (_ BitVec 32))) )
))
(declare-fun lt!19127 () array!2941)

(declare-fun lt!19129 () V!2319)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!384 0))(
  ( (LongMapFixedSize!385 (defaultEntry!1891 Int) (mask!5457 (_ BitVec 32)) (extraKeys!1782 (_ BitVec 32)) (zeroValue!1809 V!2319) (minValue!1809 V!2319) (_size!241 (_ BitVec 32)) (_keys!3452 array!2939) (_values!1874 array!2941) (_vacant!241 (_ BitVec 32))) )
))
(declare-fun map!841 (LongMapFixedSize!384) ListLongMap!1215)

(assert (=> b!43907 (= lt!19132 (map!841 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1221 0))(
  ( (Nil!1218) (Cons!1217 (h!1794 (_ BitVec 64)) (t!4240 List!1221)) )
))
(declare-fun arrayNoDuplicates!0 (array!2939 (_ BitVec 32) List!1221) Bool)

(assert (=> b!43907 (arrayNoDuplicates!0 lt!19131 #b00000000000000000000000000000000 Nil!1218)))

(declare-datatypes ((Unit!1225 0))(
  ( (Unit!1226) )
))
(declare-fun lt!19126 () Unit!1225)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2939 (_ BitVec 32) (_ BitVec 32) List!1221) Unit!1225)

(assert (=> b!43907 (= lt!19126 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2939 (_ BitVec 32)) Bool)

(assert (=> b!43907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19131 mask!853)))

(declare-fun lt!19123 () Unit!1225)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2939 (_ BitVec 32) (_ BitVec 32)) Unit!1225)

(assert (=> b!43907 (= lt!19123 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19131 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2939 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43907 (= (arrayCountValidKeys!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19128 () Unit!1225)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2939 (_ BitVec 32) (_ BitVec 32)) Unit!1225)

(assert (=> b!43907 (= lt!19128 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43907 (= lt!19127 (array!2942 ((as const (Array (_ BitVec 32) ValueCell!702)) EmptyCell!702) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43907 (= lt!19131 (array!2940 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!263 (Int (_ BitVec 64)) V!2319)

(assert (=> b!43907 (= lt!19129 (dynLambda!263 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43909 () Bool)

(assert (=> b!43909 (= e!27832 false)))

(declare-fun lt!19124 () (_ BitVec 32))

(declare-fun lt!19125 () tuple2!1634)

(declare-fun arrayScanForKey!0 (array!2939 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43909 (= lt!19124 (arrayScanForKey!0 lt!19131 (_1!827 lt!19125) #b00000000000000000000000000000000))))

(declare-fun e!27834 () Bool)

(assert (=> b!43909 e!27834))

(declare-fun res!25968 () Bool)

(assert (=> b!43909 (=> (not res!25968) (not e!27834))))

(assert (=> b!43909 (= res!25968 (and (not (= (_1!827 lt!19125) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!827 lt!19125) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19130 () Unit!1225)

(declare-fun lemmaKeyInListMapIsInArray!106 (array!2939 array!2941 (_ BitVec 32) (_ BitVec 32) V!2319 V!2319 (_ BitVec 64) Int) Unit!1225)

(assert (=> b!43909 (= lt!19130 (lemmaKeyInListMapIsInArray!106 lt!19131 lt!19127 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 (_1!827 lt!19125) defaultEntry!470))))

(declare-fun head!891 (List!1220) tuple2!1634)

(assert (=> b!43909 (= lt!19125 (head!891 (toList!623 lt!19132)))))

(declare-fun b!43910 () Bool)

(declare-fun arrayContainsKey!0 (array!2939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43910 (= e!27834 (arrayContainsKey!0 lt!19131 (_1!827 lt!19125) #b00000000000000000000000000000000))))

(declare-fun res!25966 () Bool)

(assert (=> start!6660 (=> (not res!25966) (not e!27833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6660 (= res!25966 (validMask!0 mask!853))))

(assert (=> start!6660 e!27833))

(assert (=> start!6660 true))

(assert (=> start!6660 tp!5951))

(assert (= (and start!6660 res!25966) b!43907))

(assert (= (and b!43907 (not res!25967)) b!43908))

(assert (= (and b!43908 (not res!25969)) b!43909))

(assert (= (and b!43909 res!25968) b!43910))

(declare-fun b_lambda!2319 () Bool)

(assert (=> (not b_lambda!2319) (not b!43907)))

(declare-fun t!4238 () Bool)

(declare-fun tb!1005 () Bool)

(assert (=> (and start!6660 (= defaultEntry!470 defaultEntry!470) t!4238) tb!1005))

(declare-fun result!1747 () Bool)

(declare-fun tp_is_empty!1899 () Bool)

(assert (=> tb!1005 (= result!1747 tp_is_empty!1899)))

(assert (=> b!43907 t!4238))

(declare-fun b_and!2703 () Bool)

(assert (= b_and!2701 (and (=> t!4238 result!1747) b_and!2703)))

(declare-fun m!38169 () Bool)

(assert (=> b!43909 m!38169))

(declare-fun m!38171 () Bool)

(assert (=> b!43909 m!38171))

(declare-fun m!38173 () Bool)

(assert (=> b!43909 m!38173))

(declare-fun m!38175 () Bool)

(assert (=> b!43908 m!38175))

(declare-fun m!38177 () Bool)

(assert (=> b!43907 m!38177))

(declare-fun m!38179 () Bool)

(assert (=> b!43907 m!38179))

(declare-fun m!38181 () Bool)

(assert (=> b!43907 m!38181))

(declare-fun m!38183 () Bool)

(assert (=> b!43907 m!38183))

(declare-fun m!38185 () Bool)

(assert (=> b!43907 m!38185))

(declare-fun m!38187 () Bool)

(assert (=> b!43907 m!38187))

(declare-fun m!38189 () Bool)

(assert (=> b!43907 m!38189))

(declare-fun m!38191 () Bool)

(assert (=> b!43907 m!38191))

(declare-fun m!38193 () Bool)

(assert (=> start!6660 m!38193))

(declare-fun m!38195 () Bool)

(assert (=> b!43910 m!38195))

(check-sat tp_is_empty!1899 (not b!43908) (not b_lambda!2319) (not b!43910) (not b!43909) (not b!43907) (not start!6660) (not b_next!1509) b_and!2703)
(check-sat b_and!2703 (not b_next!1509))
(get-model)

(declare-fun b_lambda!2327 () Bool)

(assert (= b_lambda!2319 (or (and start!6660 b_free!1509) b_lambda!2327)))

(check-sat tp_is_empty!1899 (not b!43908) (not b!43910) (not b!43909) (not start!6660) (not b_next!1509) b_and!2703 (not b_lambda!2327) (not b!43907))
(check-sat b_and!2703 (not b_next!1509))
(get-model)

(declare-fun d!8233 () Bool)

(declare-fun res!25998 () Bool)

(declare-fun e!27860 () Bool)

(assert (=> d!8233 (=> res!25998 e!27860)))

(assert (=> d!8233 (= res!25998 (= (select (arr!1413 lt!19131) #b00000000000000000000000000000000) (_1!827 lt!19125)))))

(assert (=> d!8233 (= (arrayContainsKey!0 lt!19131 (_1!827 lt!19125) #b00000000000000000000000000000000) e!27860)))

(declare-fun b!43943 () Bool)

(declare-fun e!27861 () Bool)

(assert (=> b!43943 (= e!27860 e!27861)))

(declare-fun res!25999 () Bool)

(assert (=> b!43943 (=> (not res!25999) (not e!27861))))

(assert (=> b!43943 (= res!25999 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1610 lt!19131)))))

(declare-fun b!43944 () Bool)

(assert (=> b!43944 (= e!27861 (arrayContainsKey!0 lt!19131 (_1!827 lt!19125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8233 (not res!25998)) b!43943))

(assert (= (and b!43943 res!25999) b!43944))

(declare-fun m!38233 () Bool)

(assert (=> d!8233 m!38233))

(declare-fun m!38235 () Bool)

(assert (=> b!43944 m!38235))

(assert (=> b!43910 d!8233))

(declare-fun d!8235 () Bool)

(assert (=> d!8235 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6660 d!8235))

(declare-fun bm!3529 () Bool)

(declare-fun call!3532 () (_ BitVec 32))

(assert (=> bm!3529 (= call!3532 (arrayCountValidKeys!0 lt!19131 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!43985 () Bool)

(declare-fun e!27883 () (_ BitVec 32))

(assert (=> b!43985 (= e!27883 call!3532)))

(declare-fun b!43986 () Bool)

(declare-fun e!27882 () (_ BitVec 32))

(assert (=> b!43986 (= e!27882 e!27883)))

(declare-fun c!5713 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43986 (= c!5713 (validKeyInArray!0 (select (arr!1413 lt!19131) #b00000000000000000000000000000000)))))

(declare-fun b!43987 () Bool)

(assert (=> b!43987 (= e!27883 (bvadd #b00000000000000000000000000000001 call!3532))))

(declare-fun b!43988 () Bool)

(assert (=> b!43988 (= e!27882 #b00000000000000000000000000000000)))

(declare-fun d!8241 () Bool)

(declare-fun lt!19179 () (_ BitVec 32))

(assert (=> d!8241 (and (bvsge lt!19179 #b00000000000000000000000000000000) (bvsle lt!19179 (bvsub (size!1610 lt!19131) #b00000000000000000000000000000000)))))

(assert (=> d!8241 (= lt!19179 e!27882)))

(declare-fun c!5714 () Bool)

(assert (=> d!8241 (= c!5714 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8241 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1610 lt!19131)))))

(assert (=> d!8241 (= (arrayCountValidKeys!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19179)))

(assert (= (and d!8241 c!5714) b!43988))

(assert (= (and d!8241 (not c!5714)) b!43986))

(assert (= (and b!43986 c!5713) b!43987))

(assert (= (and b!43986 (not c!5713)) b!43985))

(assert (= (or b!43987 b!43985) bm!3529))

(declare-fun m!38251 () Bool)

(assert (=> bm!3529 m!38251))

(assert (=> b!43986 m!38233))

(assert (=> b!43986 m!38233))

(declare-fun m!38253 () Bool)

(assert (=> b!43986 m!38253))

(assert (=> b!43907 d!8241))

(declare-fun d!8251 () Bool)

(declare-fun getCurrentListMap!354 (array!2939 array!2941 (_ BitVec 32) (_ BitVec 32) V!2319 V!2319 (_ BitVec 32) Int) ListLongMap!1215)

(assert (=> d!8251 (= (map!841 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (getCurrentListMap!354 (_keys!3452 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (_values!1874 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (mask!5457 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (extraKeys!1782 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (zeroValue!1809 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) (minValue!1809 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1891 (LongMapFixedSize!385 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 #b00000000000000000000000000000000 lt!19131 lt!19127 #b00000000000000000000000000000000))))))

(declare-fun bs!1994 () Bool)

(assert (= bs!1994 d!8251))

(declare-fun m!38263 () Bool)

(assert (=> bs!1994 m!38263))

(assert (=> b!43907 d!8251))

(declare-fun d!8259 () Bool)

(assert (=> d!8259 (arrayNoDuplicates!0 lt!19131 #b00000000000000000000000000000000 Nil!1218)))

(declare-fun lt!19195 () Unit!1225)

(declare-fun choose!111 (array!2939 (_ BitVec 32) (_ BitVec 32) List!1221) Unit!1225)

(assert (=> d!8259 (= lt!19195 (choose!111 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1218))))

(assert (=> d!8259 (= (size!1610 lt!19131) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!8259 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1218) lt!19195)))

(declare-fun bs!1995 () Bool)

(assert (= bs!1995 d!8259))

(assert (=> bs!1995 m!38189))

(declare-fun m!38269 () Bool)

(assert (=> bs!1995 m!38269))

(assert (=> b!43907 d!8259))

(declare-fun d!8263 () Bool)

(assert (=> d!8263 (= (arrayCountValidKeys!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19201 () Unit!1225)

(declare-fun choose!59 (array!2939 (_ BitVec 32) (_ BitVec 32)) Unit!1225)

(assert (=> d!8263 (= lt!19201 (choose!59 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8263 (bvslt (size!1610 lt!19131) #b01111111111111111111111111111111)))

(assert (=> d!8263 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19131 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19201)))

(declare-fun bs!1996 () Bool)

(assert (= bs!1996 d!8263))

(assert (=> bs!1996 m!38179))

(declare-fun m!38271 () Bool)

(assert (=> bs!1996 m!38271))

(assert (=> b!43907 d!8263))

(declare-fun d!8265 () Bool)

(assert (=> d!8265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19131 mask!853)))

(declare-fun lt!19210 () Unit!1225)

(declare-fun choose!34 (array!2939 (_ BitVec 32) (_ BitVec 32)) Unit!1225)

(assert (=> d!8265 (= lt!19210 (choose!34 lt!19131 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!8265 (validMask!0 mask!853)))

(assert (=> d!8265 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19131 mask!853 #b00000000000000000000000000000000) lt!19210)))

(declare-fun bs!1997 () Bool)

(assert (= bs!1997 d!8265))

(assert (=> bs!1997 m!38187))

(declare-fun m!38281 () Bool)

(assert (=> bs!1997 m!38281))

(assert (=> bs!1997 m!38193))

(assert (=> b!43907 d!8265))

(declare-fun bm!3545 () Bool)

(declare-fun call!3548 () Bool)

(declare-fun c!5731 () Bool)

(assert (=> bm!3545 (= call!3548 (arrayNoDuplicates!0 lt!19131 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5731 (Cons!1217 (select (arr!1413 lt!19131) #b00000000000000000000000000000000) Nil!1218) Nil!1218)))))

(declare-fun b!44057 () Bool)

(declare-fun e!27936 () Bool)

(assert (=> b!44057 (= e!27936 call!3548)))

(declare-fun b!44058 () Bool)

(assert (=> b!44058 (= e!27936 call!3548)))

(declare-fun b!44059 () Bool)

(declare-fun e!27937 () Bool)

(declare-fun e!27939 () Bool)

(assert (=> b!44059 (= e!27937 e!27939)))

(declare-fun res!26036 () Bool)

(assert (=> b!44059 (=> (not res!26036) (not e!27939))))

(declare-fun e!27938 () Bool)

(assert (=> b!44059 (= res!26036 (not e!27938))))

(declare-fun res!26037 () Bool)

(assert (=> b!44059 (=> (not res!26037) (not e!27938))))

(assert (=> b!44059 (= res!26037 (validKeyInArray!0 (select (arr!1413 lt!19131) #b00000000000000000000000000000000)))))

(declare-fun d!8269 () Bool)

(declare-fun res!26038 () Bool)

(assert (=> d!8269 (=> res!26038 e!27937)))

(assert (=> d!8269 (= res!26038 (bvsge #b00000000000000000000000000000000 (size!1610 lt!19131)))))

(assert (=> d!8269 (= (arrayNoDuplicates!0 lt!19131 #b00000000000000000000000000000000 Nil!1218) e!27937)))

(declare-fun b!44060 () Bool)

(declare-fun contains!574 (List!1221 (_ BitVec 64)) Bool)

(assert (=> b!44060 (= e!27938 (contains!574 Nil!1218 (select (arr!1413 lt!19131) #b00000000000000000000000000000000)))))

(declare-fun b!44061 () Bool)

(assert (=> b!44061 (= e!27939 e!27936)))

(assert (=> b!44061 (= c!5731 (validKeyInArray!0 (select (arr!1413 lt!19131) #b00000000000000000000000000000000)))))

(assert (= (and d!8269 (not res!26038)) b!44059))

(assert (= (and b!44059 res!26037) b!44060))

(assert (= (and b!44059 res!26036) b!44061))

(assert (= (and b!44061 c!5731) b!44057))

(assert (= (and b!44061 (not c!5731)) b!44058))

(assert (= (or b!44057 b!44058) bm!3545))

(assert (=> bm!3545 m!38233))

(declare-fun m!38297 () Bool)

(assert (=> bm!3545 m!38297))

(assert (=> b!44059 m!38233))

(assert (=> b!44059 m!38233))

(assert (=> b!44059 m!38253))

(assert (=> b!44060 m!38233))

(assert (=> b!44060 m!38233))

(declare-fun m!38299 () Bool)

(assert (=> b!44060 m!38299))

(assert (=> b!44061 m!38233))

(assert (=> b!44061 m!38233))

(assert (=> b!44061 m!38253))

(assert (=> b!43907 d!8269))

(declare-fun d!8277 () Bool)

(declare-fun res!26043 () Bool)

(declare-fun e!27946 () Bool)

(assert (=> d!8277 (=> res!26043 e!27946)))

(assert (=> d!8277 (= res!26043 (bvsge #b00000000000000000000000000000000 (size!1610 lt!19131)))))

(assert (=> d!8277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19131 mask!853) e!27946)))

(declare-fun b!44070 () Bool)

(declare-fun e!27947 () Bool)

(declare-fun e!27948 () Bool)

(assert (=> b!44070 (= e!27947 e!27948)))

(declare-fun lt!19229 () (_ BitVec 64))

(assert (=> b!44070 (= lt!19229 (select (arr!1413 lt!19131) #b00000000000000000000000000000000))))

(declare-fun lt!19231 () Unit!1225)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2939 (_ BitVec 64) (_ BitVec 32)) Unit!1225)

(assert (=> b!44070 (= lt!19231 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19131 lt!19229 #b00000000000000000000000000000000))))

(assert (=> b!44070 (arrayContainsKey!0 lt!19131 lt!19229 #b00000000000000000000000000000000)))

(declare-fun lt!19230 () Unit!1225)

(assert (=> b!44070 (= lt!19230 lt!19231)))

(declare-fun res!26044 () Bool)

(declare-datatypes ((SeekEntryResult!211 0))(
  ( (MissingZero!211 (index!2966 (_ BitVec 32))) (Found!211 (index!2967 (_ BitVec 32))) (Intermediate!211 (undefined!1023 Bool) (index!2968 (_ BitVec 32)) (x!8332 (_ BitVec 32))) (Undefined!211) (MissingVacant!211 (index!2969 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2939 (_ BitVec 32)) SeekEntryResult!211)

(assert (=> b!44070 (= res!26044 (= (seekEntryOrOpen!0 (select (arr!1413 lt!19131) #b00000000000000000000000000000000) lt!19131 mask!853) (Found!211 #b00000000000000000000000000000000)))))

(assert (=> b!44070 (=> (not res!26044) (not e!27948))))

(declare-fun bm!3548 () Bool)

(declare-fun call!3551 () Bool)

(assert (=> bm!3548 (= call!3551 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19131 mask!853))))

(declare-fun b!44071 () Bool)

(assert (=> b!44071 (= e!27946 e!27947)))

(declare-fun c!5734 () Bool)

(assert (=> b!44071 (= c!5734 (validKeyInArray!0 (select (arr!1413 lt!19131) #b00000000000000000000000000000000)))))

(declare-fun b!44072 () Bool)

(assert (=> b!44072 (= e!27948 call!3551)))

(declare-fun b!44073 () Bool)

(assert (=> b!44073 (= e!27947 call!3551)))

(assert (= (and d!8277 (not res!26043)) b!44071))

(assert (= (and b!44071 c!5734) b!44070))

(assert (= (and b!44071 (not c!5734)) b!44073))

(assert (= (and b!44070 res!26044) b!44072))

(assert (= (or b!44072 b!44073) bm!3548))

(assert (=> b!44070 m!38233))

(declare-fun m!38305 () Bool)

(assert (=> b!44070 m!38305))

(declare-fun m!38307 () Bool)

(assert (=> b!44070 m!38307))

(assert (=> b!44070 m!38233))

(declare-fun m!38309 () Bool)

(assert (=> b!44070 m!38309))

(declare-fun m!38311 () Bool)

(assert (=> bm!3548 m!38311))

(assert (=> b!44071 m!38233))

(assert (=> b!44071 m!38233))

(assert (=> b!44071 m!38253))

(assert (=> b!43907 d!8277))

(declare-fun d!8285 () Bool)

(declare-fun lt!19237 () (_ BitVec 32))

(assert (=> d!8285 (and (or (bvslt lt!19237 #b00000000000000000000000000000000) (bvsge lt!19237 (size!1610 lt!19131)) (and (bvsge lt!19237 #b00000000000000000000000000000000) (bvslt lt!19237 (size!1610 lt!19131)))) (bvsge lt!19237 #b00000000000000000000000000000000) (bvslt lt!19237 (size!1610 lt!19131)) (= (select (arr!1413 lt!19131) lt!19237) (_1!827 lt!19125)))))

(declare-fun e!27954 () (_ BitVec 32))

(assert (=> d!8285 (= lt!19237 e!27954)))

(declare-fun c!5740 () Bool)

(assert (=> d!8285 (= c!5740 (= (select (arr!1413 lt!19131) #b00000000000000000000000000000000) (_1!827 lt!19125)))))

(assert (=> d!8285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1610 lt!19131)) (bvslt (size!1610 lt!19131) #b01111111111111111111111111111111))))

(assert (=> d!8285 (= (arrayScanForKey!0 lt!19131 (_1!827 lt!19125) #b00000000000000000000000000000000) lt!19237)))

(declare-fun b!44084 () Bool)

(assert (=> b!44084 (= e!27954 #b00000000000000000000000000000000)))

(declare-fun b!44085 () Bool)

(assert (=> b!44085 (= e!27954 (arrayScanForKey!0 lt!19131 (_1!827 lt!19125) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8285 c!5740) b!44084))

(assert (= (and d!8285 (not c!5740)) b!44085))

(declare-fun m!38319 () Bool)

(assert (=> d!8285 m!38319))

(assert (=> d!8285 m!38233))

(declare-fun m!38321 () Bool)

(assert (=> b!44085 m!38321))

(assert (=> b!43909 d!8285))

(declare-fun d!8291 () Bool)

(declare-fun e!27960 () Bool)

(assert (=> d!8291 e!27960))

(declare-fun c!5746 () Bool)

(assert (=> d!8291 (= c!5746 (and (not (= (_1!827 lt!19125) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!827 lt!19125) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19243 () Unit!1225)

(declare-fun choose!268 (array!2939 array!2941 (_ BitVec 32) (_ BitVec 32) V!2319 V!2319 (_ BitVec 64) Int) Unit!1225)

(assert (=> d!8291 (= lt!19243 (choose!268 lt!19131 lt!19127 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 (_1!827 lt!19125) defaultEntry!470))))

(assert (=> d!8291 (validMask!0 mask!853)))

(assert (=> d!8291 (= (lemmaKeyInListMapIsInArray!106 lt!19131 lt!19127 mask!853 #b00000000000000000000000000000000 lt!19129 lt!19129 (_1!827 lt!19125) defaultEntry!470) lt!19243)))

(declare-fun b!44096 () Bool)

(assert (=> b!44096 (= e!27960 (arrayContainsKey!0 lt!19131 (_1!827 lt!19125) #b00000000000000000000000000000000))))

(declare-fun b!44097 () Bool)

(assert (=> b!44097 (= e!27960 (ite (= (_1!827 lt!19125) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8291 c!5746) b!44096))

(assert (= (and d!8291 (not c!5746)) b!44097))

(declare-fun m!38325 () Bool)

(assert (=> d!8291 m!38325))

(assert (=> d!8291 m!38193))

(assert (=> b!44096 m!38195))

(assert (=> b!43909 d!8291))

(declare-fun d!8297 () Bool)

(assert (=> d!8297 (= (head!891 (toList!623 lt!19132)) (h!1793 (toList!623 lt!19132)))))

(assert (=> b!43909 d!8297))

(declare-fun d!8299 () Bool)

(get-info :version)

(assert (=> d!8299 (= (isEmpty!290 (toList!623 lt!19132)) ((_ is Nil!1217) (toList!623 lt!19132)))))

(assert (=> b!43908 d!8299))

(check-sat (not d!8251) tp_is_empty!1899 (not d!8263) (not b!44070) (not b!43986) (not b!44071) (not bm!3545) (not b!43944) (not b!44059) (not d!8291) (not d!8259) (not b!44061) (not b!44085) (not bm!3548) (not b!44096) (not bm!3529) (not d!8265) (not b_next!1509) b_and!2703 (not b_lambda!2327) (not b!44060))
(check-sat b_and!2703 (not b_next!1509))
