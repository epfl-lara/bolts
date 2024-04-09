; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10 () Bool)

(assert start!10)

(declare-fun b_free!1 () Bool)

(declare-fun b_next!1 () Bool)

(assert (=> start!10 (= b_free!1 (not b_next!1))))

(declare-fun tp!2 () Bool)

(declare-fun b_and!1 () Bool)

(assert (=> start!10 (= tp!2 b_and!1)))

(declare-fun res!4175 () Bool)

(declare-fun e!65 () Bool)

(assert (=> start!10 (=> (not res!4175) (not e!65))))

(assert (=> start!10 (= res!4175 true)))

(assert (=> start!10 e!65))

(assert (=> start!10 tp!2))

(declare-fun b!1394 () Bool)

(declare-fun e!66 () Bool)

(assert (=> b!1394 (= e!65 e!66)))

(declare-fun res!4174 () Bool)

(assert (=> b!1394 (=> res!4174 e!66)))

(declare-datatypes ((V!211 0))(
  ( (V!212 (val!0 Int)) )
))
(declare-datatypes ((ValueCell!2 0))(
  ( (ValueCellFull!2 (v!1065 V!211)) (EmptyCell!2) )
))
(declare-datatypes ((array!3 0))(
  ( (array!4 (arr!1 (Array (_ BitVec 32) ValueCell!2)) (size!45 (_ BitVec 32))) )
))
(declare-datatypes ((array!5 0))(
  ( (array!6 (arr!2 (Array (_ BitVec 32) (_ BitVec 64))) (size!46 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4 0))(
  ( (LongMapFixedSize!5 (defaultEntry!1580 Int) (mask!4132 (_ BitVec 32)) (extraKeys!1500 (_ BitVec 32)) (zeroValue!1523 V!211) (minValue!1523 V!211) (_size!33 (_ BitVec 32)) (_keys!2979 array!5) (_values!1584 array!3) (_vacant!33 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4 0))(
  ( (Cell!5 (v!1066 LongMapFixedSize!4)) )
))
(declare-datatypes ((LongMap!4 0))(
  ( (LongMap!5 (underlying!13 Cell!4)) )
))
(declare-fun lt!2 () LongMap!4)

(declare-fun valid!3 (LongMap!4) Bool)

(assert (=> b!1394 (= res!4174 (not (valid!3 lt!2)))))

(declare-fun defaultEntry!179 () Int)

(declare-fun getNewLongMapFixedSize!1 ((_ BitVec 32) Int) LongMapFixedSize!4)

(assert (=> b!1394 (= lt!2 (LongMap!5 (Cell!5 (getNewLongMapFixedSize!1 #b00000000000000000000000000001111 defaultEntry!179))))))

(declare-fun b!1395 () Bool)

(declare-fun size!47 (LongMap!4) (_ BitVec 32))

(assert (=> b!1395 (= e!66 (not (= (size!47 lt!2) #b00000000000000000000000000000000)))))

(assert (= (and start!10 res!4175) b!1394))

(assert (= (and b!1394 (not res!4174)) b!1395))

(declare-fun m!75 () Bool)

(assert (=> b!1394 m!75))

(declare-fun m!77 () Bool)

(assert (=> b!1394 m!77))

(declare-fun m!79 () Bool)

(assert (=> b!1395 m!79))

(push 1)

(assert (not b!1394))

(assert (not b!1395))

(assert b_and!1)

(assert (not b_next!1))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1)

(assert (not b_next!1))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6 () Bool)

(declare-fun valid!6 (LongMapFixedSize!4) Bool)

(assert (=> d!6 (= (valid!3 lt!2) (valid!6 (v!1066 (underlying!13 lt!2))))))

(declare-fun bs!7 () Bool)

(assert (= bs!7 d!6))

(declare-fun m!97 () Bool)

(assert (=> bs!7 m!97))

(assert (=> b!1394 d!6))

(declare-fun b!1444 () Bool)

(declare-fun e!97 () Bool)

(declare-datatypes ((tuple2!0 0))(
  ( (tuple2!1 (_1!0 (_ BitVec 64)) (_2!0 V!211)) )
))
(declare-fun lt!155 () tuple2!0)

(declare-fun lt!159 () (_ BitVec 32))

(assert (=> b!1444 (= e!97 (ite (= (_1!0 lt!155) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!159 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!159 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1445 () Bool)

(declare-fun lt!148 () array!5)

(declare-fun arrayContainsKey!0 (array!5 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1445 (= e!97 (arrayContainsKey!0 lt!148 (_1!0 lt!155) #b00000000000000000000000000000000))))

(declare-fun d!14 () Bool)

(declare-fun e!98 () Bool)

(assert (=> d!14 e!98))

(declare-fun res!4201 () Bool)

(assert (=> d!14 (=> (not res!4201) (not e!98))))

(declare-fun lt!157 () LongMapFixedSize!4)

(assert (=> d!14 (= res!4201 (valid!6 lt!157))))

(declare-fun lt!166 () LongMapFixedSize!4)

(assert (=> d!14 (= lt!157 lt!166)))

(declare-datatypes ((Unit!4 0))(
  ( (Unit!5) )
))
(declare-fun lt!158 () Unit!4)

(declare-fun e!99 () Unit!4)

(assert (=> d!14 (= lt!158 e!99)))

(declare-fun c!28 () Bool)

(declare-datatypes ((List!6 0))(
  ( (Nil!3) (Cons!2 (h!568 tuple2!0) (t!2013 List!6)) )
))
(declare-datatypes ((ListLongMap!5 0))(
  ( (ListLongMap!6 (toList!18 List!6)) )
))
(declare-fun map!20 (LongMapFixedSize!4) ListLongMap!5)

(assert (=> d!14 (= c!28 (not (= (map!20 lt!166) (ListLongMap!6 Nil!3))))))

(declare-fun lt!165 () Unit!4)

(declare-fun lt!156 () Unit!4)

(assert (=> d!14 (= lt!165 lt!156)))

(declare-fun lt!169 () array!5)

(declare-fun lt!147 () (_ BitVec 32))

(declare-datatypes ((List!9 0))(
  ( (Nil!6) (Cons!5 (h!571 (_ BitVec 64)) (t!2016 List!9)) )
))
(declare-fun lt!151 () List!9)

(declare-fun arrayNoDuplicates!0 (array!5 (_ BitVec 32) List!9) Bool)

(assert (=> d!14 (arrayNoDuplicates!0 lt!169 lt!147 lt!151)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!5 (_ BitVec 32) (_ BitVec 32) List!9) Unit!4)

(assert (=> d!14 (= lt!156 (lemmaArrayNoDuplicatesInAll0Array!0 lt!169 lt!147 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!151))))

(assert (=> d!14 (= lt!151 Nil!6)))

(assert (=> d!14 (= lt!147 #b00000000000000000000000000000000)))

(assert (=> d!14 (= lt!169 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!163 () Unit!4)

(declare-fun lt!160 () Unit!4)

(assert (=> d!14 (= lt!163 lt!160)))

(declare-fun lt!168 () (_ BitVec 32))

(declare-fun lt!154 () array!5)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5 (_ BitVec 32)) Bool)

(assert (=> d!14 (arrayForallSeekEntryOrOpenFound!0 lt!168 lt!154 #b00000000000000000000000000001111)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!5 (_ BitVec 32) (_ BitVec 32)) Unit!4)

(assert (=> d!14 (= lt!160 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!154 #b00000000000000000000000000001111 lt!168))))

(assert (=> d!14 (= lt!168 #b00000000000000000000000000000000)))

(assert (=> d!14 (= lt!154 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!162 () Unit!4)

(declare-fun lt!161 () Unit!4)

(assert (=> d!14 (= lt!162 lt!161)))

(declare-fun lt!149 () array!5)

(declare-fun lt!150 () (_ BitVec 32))

(declare-fun lt!164 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!5 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!14 (= (arrayCountValidKeys!0 lt!149 lt!150 lt!164) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!5 (_ BitVec 32) (_ BitVec 32)) Unit!4)

(assert (=> d!14 (= lt!161 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!149 lt!150 lt!164))))

(assert (=> d!14 (= lt!164 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!14 (= lt!150 #b00000000000000000000000000000000)))

(assert (=> d!14 (= lt!149 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun dynLambda!1 (Int (_ BitVec 64)) V!211)

(assert (=> d!14 (= lt!166 (LongMapFixedSize!5 defaultEntry!179 #b00000000000000000000000000001111 #b00000000000000000000000000000000 (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (array!4 ((as const (Array (_ BitVec 32) ValueCell!2)) EmptyCell!2) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!14 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!14 (= (getNewLongMapFixedSize!1 #b00000000000000000000000000001111 defaultEntry!179) lt!157)))

(declare-fun b!1446 () Bool)

(declare-fun res!4200 () Bool)

(assert (=> b!1446 (=> (not res!4200) (not e!98))))

(assert (=> b!1446 (= res!4200 (= (mask!4132 lt!157) #b00000000000000000000000000001111))))

(declare-fun b!1447 () Bool)

(assert (=> b!1447 (= e!98 (= (map!20 lt!157) (ListLongMap!6 Nil!3)))))

(declare-fun b!1448 () Bool)

(declare-fun Unit!9 () Unit!4)

(assert (=> b!1448 (= e!99 Unit!9)))

(declare-fun b!1449 () Bool)

(declare-fun Unit!10 () Unit!4)

(assert (=> b!1449 (= e!99 Unit!10)))

(declare-fun head!741 (List!6) tuple2!0)

(assert (=> b!1449 (= lt!155 (head!741 (toList!18 (map!20 lt!166))))))

(assert (=> b!1449 (= lt!148 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(assert (=> b!1449 (= lt!159 #b00000000000000000000000000000000)))

(declare-fun lt!152 () Unit!4)

(declare-fun lemmaKeyInListMapIsInArray!2 (array!5 array!3 (_ BitVec 32) (_ BitVec 32) V!211 V!211 (_ BitVec 64) Int) Unit!4)

(assert (=> b!1449 (= lt!152 (lemmaKeyInListMapIsInArray!2 lt!148 (array!4 ((as const (Array (_ BitVec 32) ValueCell!2)) EmptyCell!2) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!159 (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!0 lt!155) defaultEntry!179))))

(declare-fun c!27 () Bool)

(assert (=> b!1449 (= c!27 (and (not (= (_1!0 lt!155) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!0 lt!155) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449 e!97))

(declare-fun lt!153 () Unit!4)

(assert (=> b!1449 (= lt!153 lt!152)))

(declare-fun lt!167 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!5 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449 (= lt!167 (arrayScanForKey!0 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!0 lt!155) #b00000000000000000000000000000000))))

(assert (=> b!1449 false))

(assert (= (and d!14 c!28) b!1449))

(assert (= (and d!14 (not c!28)) b!1448))

(assert (= (and b!1449 c!27) b!1445))

(assert (= (and b!1449 (not c!27)) b!1444))

(assert (= (and d!14 res!4201) b!1446))

(assert (= (and b!1446 res!4200) b!1447))

(declare-fun b_lambda!5 () Bool)

(assert (=> (not b_lambda!5) (not d!14)))

(declare-fun t!2012 () Bool)

(declare-fun tb!4 () Bool)

(assert (=> (and start!10 (= defaultEntry!179 defaultEntry!179) t!2012) tb!4))

(declare-fun result!5 () Bool)

(declare-fun tp_is_empty!2 () Bool)

(assert (=> tb!4 (= result!5 tp_is_empty!2)))

(assert (=> d!14 t!2012))

(declare-fun b_and!9 () Bool)

(assert (= b_and!1 (and (=> t!2012 result!5) b_and!9)))

(declare-fun b_lambda!9 () Bool)

(assert (=> (not b_lambda!9) (not b!1449)))

(assert (=> b!1449 t!2012))

(declare-fun b_and!15 () Bool)

(assert (= b_and!9 (and (=> t!2012 result!5) b_and!15)))

(declare-fun m!104 () Bool)

(assert (=> b!1445 m!104))

(declare-fun m!109 () Bool)

(assert (=> d!14 m!109))

(declare-fun m!115 () Bool)

(assert (=> d!14 m!115))

(declare-fun m!123 () Bool)

(assert (=> d!14 m!123))

(declare-fun m!127 () Bool)

(assert (=> d!14 m!127))

(declare-fun m!133 () Bool)

(assert (=> d!14 m!133))

(declare-fun m!137 () Bool)

(assert (=> d!14 m!137))

(declare-fun m!139 () Bool)

(assert (=> d!14 m!139))

(declare-fun m!149 () Bool)

(assert (=> d!14 m!149))

(declare-fun m!155 () Bool)

(assert (=> d!14 m!155))

(declare-fun m!159 () Bool)

(assert (=> d!14 m!159))

(declare-fun m!163 () Bool)

(assert (=> b!1447 m!163))

(assert (=> b!1449 m!115))

(declare-fun m!173 () Bool)

(assert (=> b!1449 m!173))

(assert (=> b!1449 m!133))

(assert (=> b!1449 m!115))

(assert (=> b!1449 m!115))

(declare-fun m!181 () Bool)

(assert (=> b!1449 m!181))

(declare-fun m!187 () Bool)

(assert (=> b!1449 m!187))

(assert (=> b!1394 d!14))

(declare-fun d!19 () Bool)

(declare-fun size!55 (LongMapFixedSize!4) (_ BitVec 32))

(assert (=> d!19 (= (size!47 lt!2) (size!55 (v!1066 (underlying!13 lt!2))))))

(declare-fun bs!10 () Bool)

(assert (= bs!10 d!19))

(declare-fun m!191 () Bool)

(assert (=> bs!10 m!191))

(assert (=> b!1395 d!19))

(declare-fun b_lambda!17 () Bool)

(assert (= b_lambda!5 (or (and start!10 b_free!1) b_lambda!17)))

(declare-fun b_lambda!19 () Bool)

(assert (= b_lambda!9 (or (and start!10 b_free!1) b_lambda!19)))

(push 1)

(assert (not b_lambda!19))

(assert (not b!1445))

(assert (not b!1447))

(assert (not d!14))

(assert (not d!6))

(assert tp_is_empty!2)

(assert (not d!19))

(assert b_and!15)

(assert (not b!1449))

(assert (not b_next!1))

(assert (not b_lambda!17))

(check-sat)

(pop 1)

(push 1)

(assert b_and!15)

(assert (not b_next!1))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1488 () Bool)

(declare-fun e!121 () Bool)

(declare-fun e!120 () Bool)

(assert (=> b!1488 (= e!121 e!120)))

(declare-fun c!35 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488 (= c!35 (validKeyInArray!0 (select (arr!2 lt!154) lt!168)))))

(declare-fun b!1489 () Bool)

(declare-fun e!122 () Bool)

(assert (=> b!1489 (= e!120 e!122)))

(declare-fun lt!222 () (_ BitVec 64))

(assert (=> b!1489 (= lt!222 (select (arr!2 lt!154) lt!168))))

(declare-fun lt!223 () Unit!4)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5 (_ BitVec 64) (_ BitVec 32)) Unit!4)

(assert (=> b!1489 (= lt!223 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!154 lt!222 lt!168))))

(assert (=> b!1489 (arrayContainsKey!0 lt!154 lt!222 #b00000000000000000000000000000000)))

(declare-fun lt!224 () Unit!4)

(assert (=> b!1489 (= lt!224 lt!223)))

(declare-fun res!4222 () Bool)

(declare-datatypes ((SeekEntryResult!2 0))(
  ( (MissingZero!2 (index!2127 (_ BitVec 32))) (Found!2 (index!2128 (_ BitVec 32))) (Intermediate!2 (undefined!814 Bool) (index!2129 (_ BitVec 32)) (x!1757 (_ BitVec 32))) (Undefined!2) (MissingVacant!2 (index!2130 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5 (_ BitVec 32)) SeekEntryResult!2)

(assert (=> b!1489 (= res!4222 (= (seekEntryOrOpen!0 (select (arr!2 lt!154) lt!168) lt!154 #b00000000000000000000000000001111) (Found!2 lt!168)))))

(assert (=> b!1489 (=> (not res!4222) (not e!122))))

(declare-fun d!23 () Bool)

(declare-fun res!4223 () Bool)

(assert (=> d!23 (=> res!4223 e!121)))

(assert (=> d!23 (= res!4223 (bvsge lt!168 (size!46 lt!154)))))

(assert (=> d!23 (= (arrayForallSeekEntryOrOpenFound!0 lt!168 lt!154 #b00000000000000000000000000001111) e!121)))

(declare-fun b!1490 () Bool)

(declare-fun call!5 () Bool)

(assert (=> b!1490 (= e!122 call!5)))

(declare-fun b!1491 () Bool)

(assert (=> b!1491 (= e!120 call!5)))

(declare-fun bm!2 () Bool)

(assert (=> bm!2 (= call!5 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!168 #b00000000000000000000000000000001) lt!154 #b00000000000000000000000000001111))))

(assert (= (and d!23 (not res!4223)) b!1488))

(assert (= (and b!1488 c!35) b!1489))

(assert (= (and b!1488 (not c!35)) b!1491))

(assert (= (and b!1489 res!4222) b!1490))

(assert (= (or b!1490 b!1491) bm!2))

(declare-fun m!201 () Bool)

(assert (=> b!1488 m!201))

(assert (=> b!1488 m!201))

(declare-fun m!203 () Bool)

(assert (=> b!1488 m!203))

(assert (=> b!1489 m!201))

(declare-fun m!205 () Bool)

(assert (=> b!1489 m!205))

(declare-fun m!207 () Bool)

(assert (=> b!1489 m!207))

(assert (=> b!1489 m!201))

(declare-fun m!209 () Bool)

(assert (=> b!1489 m!209))

(declare-fun m!211 () Bool)

(assert (=> bm!2 m!211))

(assert (=> d!14 d!23))

(declare-fun d!33 () Bool)

(assert (=> d!33 (= (arrayCountValidKeys!0 lt!149 lt!150 lt!164) #b00000000000000000000000000000000)))

(declare-fun lt!227 () Unit!4)

(declare-fun choose!59 (array!5 (_ BitVec 32) (_ BitVec 32)) Unit!4)

(assert (=> d!33 (= lt!227 (choose!59 lt!149 lt!150 lt!164))))

(assert (=> d!33 (bvslt (size!46 lt!149) #b01111111111111111111111111111111)))

(assert (=> d!33 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!149 lt!150 lt!164) lt!227)))

(declare-fun bs!14 () Bool)

(assert (= bs!14 d!33))

(assert (=> bs!14 m!109))

(declare-fun m!223 () Bool)

(assert (=> bs!14 m!223))

(assert (=> d!14 d!33))

(declare-fun d!41 () Bool)

(declare-fun lt!233 () (_ BitVec 32))

(assert (=> d!41 (and (bvsge lt!233 #b00000000000000000000000000000000) (bvsle lt!233 (bvsub (size!46 lt!149) lt!150)))))

(declare-fun e!134 () (_ BitVec 32))

(assert (=> d!41 (= lt!233 e!134)))

(declare-fun c!43 () Bool)

(assert (=> d!41 (= c!43 (bvsge lt!150 lt!164))))

(assert (=> d!41 (and (bvsle lt!150 lt!164) (bvsge lt!150 #b00000000000000000000000000000000) (bvsle lt!164 (size!46 lt!149)))))

(assert (=> d!41 (= (arrayCountValidKeys!0 lt!149 lt!150 lt!164) lt!233)))

(declare-fun b!1518 () Bool)

(assert (=> b!1518 (= e!134 #b00000000000000000000000000000000)))

(declare-fun b!1519 () Bool)

(declare-fun e!135 () (_ BitVec 32))

(assert (=> b!1519 (= e!134 e!135)))

(declare-fun c!44 () Bool)

(assert (=> b!1519 (= c!44 (validKeyInArray!0 (select (arr!2 lt!149) lt!150)))))

(declare-fun b!1520 () Bool)

(declare-fun call!8 () (_ BitVec 32))

(assert (=> b!1520 (= e!135 (bvadd #b00000000000000000000000000000001 call!8))))

(declare-fun bm!5 () Bool)

(assert (=> bm!5 (= call!8 (arrayCountValidKeys!0 lt!149 (bvadd lt!150 #b00000000000000000000000000000001) lt!164))))

(declare-fun b!1521 () Bool)

(assert (=> b!1521 (= e!135 call!8)))

(assert (= (and d!41 c!43) b!1518))

(assert (= (and d!41 (not c!43)) b!1519))

(assert (= (and b!1519 c!44) b!1520))

(assert (= (and b!1519 (not c!44)) b!1521))

(assert (= (or b!1520 b!1521) bm!5))

(declare-fun m!237 () Bool)

(assert (=> b!1519 m!237))

(assert (=> b!1519 m!237))

(declare-fun m!239 () Bool)

(assert (=> b!1519 m!239))

(declare-fun m!241 () Bool)

(assert (=> bm!5 m!241))

(assert (=> d!14 d!41))

(declare-fun d!51 () Bool)

(assert (=> d!51 (= (validMask!0 #b00000000000000000000000000001111) true)))

(assert (=> d!14 d!51))

(declare-fun d!53 () Bool)

(declare-fun res!4242 () Bool)

(declare-fun e!144 () Bool)

(assert (=> d!53 (=> (not res!4242) (not e!144))))

(declare-fun simpleValid!3 (LongMapFixedSize!4) Bool)

(assert (=> d!53 (= res!4242 (simpleValid!3 lt!157))))

(assert (=> d!53 (= (valid!6 lt!157) e!144)))

(declare-fun b!1540 () Bool)

(declare-fun res!4243 () Bool)

(assert (=> b!1540 (=> (not res!4243) (not e!144))))

(assert (=> b!1540 (= res!4243 (= (arrayCountValidKeys!0 (_keys!2979 lt!157) #b00000000000000000000000000000000 (size!46 (_keys!2979 lt!157))) (_size!33 lt!157)))))

(declare-fun b!1541 () Bool)

(declare-fun res!4244 () Bool)

(assert (=> b!1541 (=> (not res!4244) (not e!144))))

(assert (=> b!1541 (= res!4244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2979 lt!157) (mask!4132 lt!157)))))

(declare-fun b!1542 () Bool)

(assert (=> b!1542 (= e!144 (arrayNoDuplicates!0 (_keys!2979 lt!157) #b00000000000000000000000000000000 Nil!6))))

(assert (= (and d!53 res!4242) b!1540))

(assert (= (and b!1540 res!4243) b!1541))

(assert (= (and b!1541 res!4244) b!1542))

(declare-fun m!249 () Bool)

(assert (=> d!53 m!249))

(declare-fun m!251 () Bool)

(assert (=> b!1540 m!251))

(declare-fun m!253 () Bool)

(assert (=> b!1541 m!253))

(declare-fun m!255 () Bool)

(assert (=> b!1542 m!255))

(assert (=> d!14 d!53))

(declare-fun d!57 () Bool)

(declare-fun getCurrentListMap!3 (array!5 array!3 (_ BitVec 32) (_ BitVec 32) V!211 V!211 (_ BitVec 32) Int) ListLongMap!5)

(assert (=> d!57 (= (map!20 lt!166) (getCurrentListMap!3 (_keys!2979 lt!166) (_values!1584 lt!166) (mask!4132 lt!166) (extraKeys!1500 lt!166) (zeroValue!1523 lt!166) (minValue!1523 lt!166) #b00000000000000000000000000000000 (defaultEntry!1580 lt!166)))))

(declare-fun bs!16 () Bool)

(assert (= bs!16 d!57))

(declare-fun m!263 () Bool)

(assert (=> bs!16 m!263))

(assert (=> d!14 d!57))

(declare-fun d!63 () Bool)

(declare-fun res!4264 () Bool)

(declare-fun e!171 () Bool)

(assert (=> d!63 (=> res!4264 e!171)))

(assert (=> d!63 (= res!4264 (bvsge lt!147 (size!46 lt!169)))))

(assert (=> d!63 (= (arrayNoDuplicates!0 lt!169 lt!147 lt!151) e!171)))

(declare-fun b!1582 () Bool)

(declare-fun e!173 () Bool)

(declare-fun call!13 () Bool)

(assert (=> b!1582 (= e!173 call!13)))

(declare-fun b!1583 () Bool)

(declare-fun e!172 () Bool)

(declare-fun contains!8 (List!9 (_ BitVec 64)) Bool)

(assert (=> b!1583 (= e!172 (contains!8 lt!151 (select (arr!2 lt!169) lt!147)))))

(declare-fun b!1584 () Bool)

(declare-fun e!174 () Bool)

(assert (=> b!1584 (= e!171 e!174)))

(declare-fun res!4263 () Bool)

(assert (=> b!1584 (=> (not res!4263) (not e!174))))

(assert (=> b!1584 (= res!4263 (not e!172))))

(declare-fun res!4262 () Bool)

(assert (=> b!1584 (=> (not res!4262) (not e!172))))

(assert (=> b!1584 (= res!4262 (validKeyInArray!0 (select (arr!2 lt!169) lt!147)))))

(declare-fun b!1585 () Bool)

(assert (=> b!1585 (= e!174 e!173)))

(declare-fun c!62 () Bool)

(assert (=> b!1585 (= c!62 (validKeyInArray!0 (select (arr!2 lt!169) lt!147)))))

(declare-fun bm!10 () Bool)

(assert (=> bm!10 (= call!13 (arrayNoDuplicates!0 lt!169 (bvadd lt!147 #b00000000000000000000000000000001) (ite c!62 (Cons!5 (select (arr!2 lt!169) lt!147) lt!151) lt!151)))))

(declare-fun b!1586 () Bool)

(assert (=> b!1586 (= e!173 call!13)))

(assert (= (and d!63 (not res!4264)) b!1584))

(assert (= (and b!1584 res!4262) b!1583))

(assert (= (and b!1584 res!4263) b!1585))

(assert (= (and b!1585 c!62) b!1582))

(assert (= (and b!1585 (not c!62)) b!1586))

(assert (= (or b!1582 b!1586) bm!10))

(declare-fun m!281 () Bool)

(assert (=> b!1583 m!281))

(assert (=> b!1583 m!281))

(declare-fun m!283 () Bool)

(assert (=> b!1583 m!283))

(assert (=> b!1584 m!281))

(assert (=> b!1584 m!281))

(declare-fun m!285 () Bool)

(assert (=> b!1584 m!285))

(assert (=> b!1585 m!281))

(assert (=> b!1585 m!281))

(assert (=> b!1585 m!285))

(assert (=> bm!10 m!281))

(declare-fun m!289 () Bool)

(assert (=> bm!10 m!289))

(assert (=> d!14 d!63))

(declare-fun d!71 () Bool)

(assert (=> d!71 (arrayForallSeekEntryOrOpenFound!0 lt!168 lt!154 #b00000000000000000000000000001111)))

(declare-fun lt!263 () Unit!4)

(declare-fun choose!34 (array!5 (_ BitVec 32) (_ BitVec 32)) Unit!4)

(assert (=> d!71 (= lt!263 (choose!34 lt!154 #b00000000000000000000000000001111 lt!168))))

(assert (=> d!71 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!71 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!154 #b00000000000000000000000000001111 lt!168) lt!263)))

(declare-fun bs!19 () Bool)

(assert (= bs!19 d!71))

(assert (=> bs!19 m!139))

(declare-fun m!309 () Bool)

(assert (=> bs!19 m!309))

(assert (=> bs!19 m!137))

(assert (=> d!14 d!71))

(declare-fun d!81 () Bool)

(assert (=> d!81 (arrayNoDuplicates!0 lt!169 lt!147 lt!151)))

(declare-fun lt!269 () Unit!4)

(declare-fun choose!111 (array!5 (_ BitVec 32) (_ BitVec 32) List!9) Unit!4)

(assert (=> d!81 (= lt!269 (choose!111 lt!169 lt!147 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!151))))

(assert (=> d!81 (= (size!46 lt!169) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!81 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!169 lt!147 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!151) lt!269)))

(declare-fun bs!21 () Bool)

(assert (= bs!21 d!81))

(assert (=> bs!21 m!149))

(declare-fun m!313 () Bool)

(assert (=> bs!21 m!313))

(assert (=> d!14 d!81))

(declare-fun d!85 () Bool)

(declare-fun res!4269 () Bool)

(declare-fun e!182 () Bool)

(assert (=> d!85 (=> (not res!4269) (not e!182))))

(assert (=> d!85 (= res!4269 (simpleValid!3 (v!1066 (underlying!13 lt!2))))))

(assert (=> d!85 (= (valid!6 (v!1066 (underlying!13 lt!2))) e!182)))

(declare-fun b!1597 () Bool)

(declare-fun res!4270 () Bool)

(assert (=> b!1597 (=> (not res!4270) (not e!182))))

(assert (=> b!1597 (= res!4270 (= (arrayCountValidKeys!0 (_keys!2979 (v!1066 (underlying!13 lt!2))) #b00000000000000000000000000000000 (size!46 (_keys!2979 (v!1066 (underlying!13 lt!2))))) (_size!33 (v!1066 (underlying!13 lt!2)))))))

(declare-fun b!1598 () Bool)

(declare-fun res!4271 () Bool)

(assert (=> b!1598 (=> (not res!4271) (not e!182))))

(assert (=> b!1598 (= res!4271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2979 (v!1066 (underlying!13 lt!2))) (mask!4132 (v!1066 (underlying!13 lt!2)))))))

(declare-fun b!1599 () Bool)

(assert (=> b!1599 (= e!182 (arrayNoDuplicates!0 (_keys!2979 (v!1066 (underlying!13 lt!2))) #b00000000000000000000000000000000 Nil!6))))

(assert (= (and d!85 res!4269) b!1597))

(assert (= (and b!1597 res!4270) b!1598))

(assert (= (and b!1598 res!4271) b!1599))

(declare-fun m!315 () Bool)

(assert (=> d!85 m!315))

(declare-fun m!317 () Bool)

(assert (=> b!1597 m!317))

(declare-fun m!319 () Bool)

(assert (=> b!1598 m!319))

(declare-fun m!321 () Bool)

(assert (=> b!1599 m!321))

(assert (=> d!6 d!85))

(declare-fun d!87 () Bool)

(assert (=> d!87 (= (head!741 (toList!18 (map!20 lt!166))) (h!568 (toList!18 (map!20 lt!166))))))

(assert (=> b!1449 d!87))

(assert (=> b!1449 d!57))

(declare-fun d!89 () Bool)

(declare-fun e!200 () Bool)

(assert (=> d!89 e!200))

(declare-fun c!77 () Bool)

(assert (=> d!89 (= c!77 (and (not (= (_1!0 lt!155) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!0 lt!155) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!284 () Unit!4)

(declare-fun choose!131 (array!5 array!3 (_ BitVec 32) (_ BitVec 32) V!211 V!211 (_ BitVec 64) Int) Unit!4)

(assert (=> d!89 (= lt!284 (choose!131 lt!148 (array!4 ((as const (Array (_ BitVec 32) ValueCell!2)) EmptyCell!2) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!159 (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!0 lt!155) defaultEntry!179))))

(assert (=> d!89 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!89 (= (lemmaKeyInListMapIsInArray!2 lt!148 (array!4 ((as const (Array (_ BitVec 32) ValueCell!2)) EmptyCell!2) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!159 (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!1 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!0 lt!155) defaultEntry!179) lt!284)))

(declare-fun b!1628 () Bool)

(assert (=> b!1628 (= e!200 (arrayContainsKey!0 lt!148 (_1!0 lt!155) #b00000000000000000000000000000000))))

(declare-fun b!1629 () Bool)

(assert (=> b!1629 (= e!200 (ite (= (_1!0 lt!155) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!159 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!159 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!89 c!77) b!1628))

(assert (= (and d!89 (not c!77)) b!1629))

(assert (=> d!89 m!115))

(assert (=> d!89 m!115))

(declare-fun m!341 () Bool)

(assert (=> d!89 m!341))

(assert (=> d!89 m!137))

(assert (=> b!1628 m!104))

(assert (=> b!1449 d!89))

(declare-fun d!95 () Bool)

(declare-fun lt!293 () (_ BitVec 32))

(assert (=> d!95 (and (or (bvslt lt!293 #b00000000000000000000000000000000) (bvsge lt!293 (size!46 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (and (bvsge lt!293 #b00000000000000000000000000000000) (bvslt lt!293 (size!46 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))) (bvsge lt!293 #b00000000000000000000000000000000) (bvslt lt!293 (size!46 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (= (select (arr!2 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) lt!293) (_1!0 lt!155)))))

(declare-fun e!215 () (_ BitVec 32))

(assert (=> d!95 (= lt!293 e!215)))

(declare-fun c!82 () Bool)

(assert (=> d!95 (= c!82 (= (select (arr!2 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!0 lt!155)))))

(assert (=> d!95 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!46 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (bvslt (size!46 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!95 (= (arrayScanForKey!0 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!0 lt!155) #b00000000000000000000000000000000) lt!293)))

(declare-fun b!1646 () Bool)

(assert (=> b!1646 (= e!215 #b00000000000000000000000000000000)))

(declare-fun b!1647 () Bool)

(assert (=> b!1647 (= e!215 (arrayScanForKey!0 (array!6 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!0 lt!155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95 c!82) b!1646))

(assert (= (and d!95 (not c!82)) b!1647))

(declare-fun m!347 () Bool)

(assert (=> d!95 m!347))

(declare-fun m!349 () Bool)

(assert (=> d!95 m!349))

(declare-fun m!351 () Bool)

(assert (=> b!1647 m!351))

(assert (=> b!1449 d!95))

(declare-fun d!101 () Bool)

(assert (=> d!101 (= (size!55 (v!1066 (underlying!13 lt!2))) (bvadd (_size!33 (v!1066 (underlying!13 lt!2))) (bvsdiv (bvadd (extraKeys!1500 (v!1066 (underlying!13 lt!2))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!19 d!101))

(declare-fun d!103 () Bool)

(declare-fun res!4300 () Bool)

(declare-fun e!232 () Bool)

(assert (=> d!103 (=> res!4300 e!232)))

(assert (=> d!103 (= res!4300 (= (select (arr!2 lt!148) #b00000000000000000000000000000000) (_1!0 lt!155)))))

(assert (=> d!103 (= (arrayContainsKey!0 lt!148 (_1!0 lt!155) #b00000000000000000000000000000000) e!232)))

(declare-fun b!1670 () Bool)

(declare-fun e!233 () Bool)

(assert (=> b!1670 (= e!232 e!233)))

(declare-fun res!4301 () Bool)

(assert (=> b!1670 (=> (not res!4301) (not e!233))))

(assert (=> b!1670 (= res!4301 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46 lt!148)))))

(declare-fun b!1671 () Bool)

(assert (=> b!1671 (= e!233 (arrayContainsKey!0 lt!148 (_1!0 lt!155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103 (not res!4300)) b!1670))

(assert (= (and b!1670 res!4301) b!1671))

(declare-fun m!369 () Bool)

(assert (=> d!103 m!369))

(declare-fun m!371 () Bool)

(assert (=> b!1671 m!371))

(assert (=> b!1445 d!103))

(declare-fun d!109 () Bool)

(assert (=> d!109 (= (map!20 lt!157) (getCurrentListMap!3 (_keys!2979 lt!157) (_values!1584 lt!157) (mask!4132 lt!157) (extraKeys!1500 lt!157) (zeroValue!1523 lt!157) (minValue!1523 lt!157) #b00000000000000000000000000000000 (defaultEntry!1580 lt!157)))))

(declare-fun bs!24 () Bool)

(assert (= bs!24 d!109))

(declare-fun m!373 () Bool)

(assert (=> bs!24 m!373))

(assert (=> b!1447 d!109))

(push 1)

