; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14 () Bool)

(assert start!14)

(declare-fun b_free!5 () Bool)

(declare-fun b_next!5 () Bool)

(assert (=> start!14 (= b_free!5 (not b_next!5))))

(declare-fun tp!8 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> start!14 (= tp!8 b_and!5)))

(declare-fun res!4186 () Bool)

(declare-fun e!78 () Bool)

(assert (=> start!14 (=> (not res!4186) (not e!78))))

(assert (=> start!14 (= res!4186 true)))

(assert (=> start!14 e!78))

(assert (=> start!14 tp!8))

(declare-fun b!1406 () Bool)

(declare-fun e!77 () Bool)

(assert (=> b!1406 (= e!78 e!77)))

(declare-fun res!4187 () Bool)

(assert (=> b!1406 (=> res!4187 e!77)))

(declare-datatypes ((V!215 0))(
  ( (V!216 (val!2 Int)) )
))
(declare-datatypes ((ValueCell!4 0))(
  ( (ValueCellFull!4 (v!1069 V!215)) (EmptyCell!4) )
))
(declare-datatypes ((array!11 0))(
  ( (array!12 (arr!5 (Array (_ BitVec 32) ValueCell!4)) (size!51 (_ BitVec 32))) )
))
(declare-datatypes ((array!13 0))(
  ( (array!14 (arr!6 (Array (_ BitVec 32) (_ BitVec 64))) (size!52 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8 0))(
  ( (LongMapFixedSize!9 (defaultEntry!1582 Int) (mask!4134 (_ BitVec 32)) (extraKeys!1502 (_ BitVec 32)) (zeroValue!1525 V!215) (minValue!1525 V!215) (_size!35 (_ BitVec 32)) (_keys!2981 array!13) (_values!1586 array!11) (_vacant!35 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8 0))(
  ( (Cell!9 (v!1070 LongMapFixedSize!8)) )
))
(declare-datatypes ((LongMap!8 0))(
  ( (LongMap!9 (underlying!15 Cell!8)) )
))
(declare-fun lt!8 () LongMap!8)

(declare-fun valid!5 (LongMap!8) Bool)

(assert (=> b!1406 (= res!4187 (not (valid!5 lt!8)))))

(declare-fun defaultEntry!179 () Int)

(declare-fun getNewLongMapFixedSize!3 ((_ BitVec 32) Int) LongMapFixedSize!8)

(assert (=> b!1406 (= lt!8 (LongMap!9 (Cell!9 (getNewLongMapFixedSize!3 #b00000000000000000000000000001111 defaultEntry!179))))))

(declare-fun b!1407 () Bool)

(declare-fun size!53 (LongMap!8) (_ BitVec 32))

(assert (=> b!1407 (= e!77 (not (= (size!53 lt!8) #b00000000000000000000000000000000)))))

(assert (= (and start!14 res!4186) b!1406))

(assert (= (and b!1406 (not res!4187)) b!1407))

(declare-fun m!87 () Bool)

(assert (=> b!1406 m!87))

(declare-fun m!89 () Bool)

(assert (=> b!1406 m!89))

(declare-fun m!91 () Bool)

(assert (=> b!1407 m!91))

(push 1)

(assert (not b!1406))

(assert (not b!1407))

(assert b_and!5)

(assert (not b_next!5))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5)

(assert (not b_next!5))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7 () Bool)

(declare-fun valid!7 (LongMapFixedSize!8) Bool)

(assert (=> d!7 (= (valid!5 lt!8) (valid!7 (v!1070 (underlying!15 lt!8))))))

(declare-fun bs!8 () Bool)

(assert (= bs!8 d!7))

(declare-fun m!95 () Bool)

(assert (=> bs!8 m!95))

(assert (=> b!1406 d!7))

(declare-fun b!1450 () Bool)

(declare-fun e!101 () Bool)

(declare-datatypes ((tuple2!2 0))(
  ( (tuple2!3 (_1!1 (_ BitVec 64)) (_2!1 V!215)) )
))
(declare-fun lt!177 () tuple2!2)

(declare-fun lt!192 () (_ BitVec 32))

(assert (=> b!1450 (= e!101 (ite (= (_1!1 lt!177) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!192 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!192 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!12 () Bool)

(declare-fun e!100 () Bool)

(assert (=> d!12 e!100))

(declare-fun res!4203 () Bool)

(assert (=> d!12 (=> (not res!4203) (not e!100))))

(declare-fun lt!190 () LongMapFixedSize!8)

(assert (=> d!12 (= res!4203 (valid!7 lt!190))))

(declare-fun lt!183 () LongMapFixedSize!8)

(assert (=> d!12 (= lt!190 lt!183)))

(declare-datatypes ((Unit!6 0))(
  ( (Unit!7) )
))
(declare-fun lt!189 () Unit!6)

(declare-fun e!102 () Unit!6)

(assert (=> d!12 (= lt!189 e!102)))

(declare-fun c!29 () Bool)

(declare-datatypes ((List!7 0))(
  ( (Nil!4) (Cons!3 (h!569 tuple2!2) (t!2014 List!7)) )
))
(declare-datatypes ((ListLongMap!7 0))(
  ( (ListLongMap!8 (toList!19 List!7)) )
))
(declare-fun map!21 (LongMapFixedSize!8) ListLongMap!7)

(assert (=> d!12 (= c!29 (not (= (map!21 lt!183) (ListLongMap!8 Nil!4))))))

(declare-fun lt!171 () Unit!6)

(declare-fun lt!182 () Unit!6)

(assert (=> d!12 (= lt!171 lt!182)))

(declare-fun lt!184 () array!13)

(declare-fun lt!175 () (_ BitVec 32))

(declare-datatypes ((List!10 0))(
  ( (Nil!7) (Cons!6 (h!572 (_ BitVec 64)) (t!2017 List!10)) )
))
(declare-fun lt!170 () List!10)

(declare-fun arrayNoDuplicates!0 (array!13 (_ BitVec 32) List!10) Bool)

(assert (=> d!12 (arrayNoDuplicates!0 lt!184 lt!175 lt!170)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!13 (_ BitVec 32) (_ BitVec 32) List!10) Unit!6)

(assert (=> d!12 (= lt!182 (lemmaArrayNoDuplicatesInAll0Array!0 lt!184 lt!175 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!170))))

(assert (=> d!12 (= lt!170 Nil!7)))

(assert (=> d!12 (= lt!175 #b00000000000000000000000000000000)))

(assert (=> d!12 (= lt!184 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!179 () Unit!6)

(declare-fun lt!174 () Unit!6)

(assert (=> d!12 (= lt!179 lt!174)))

(declare-fun lt!180 () (_ BitVec 32))

(declare-fun lt!181 () array!13)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13 (_ BitVec 32)) Bool)

(assert (=> d!12 (arrayForallSeekEntryOrOpenFound!0 lt!180 lt!181 #b00000000000000000000000000001111)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!13 (_ BitVec 32) (_ BitVec 32)) Unit!6)

(assert (=> d!12 (= lt!174 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!181 #b00000000000000000000000000001111 lt!180))))

(assert (=> d!12 (= lt!180 #b00000000000000000000000000000000)))

(assert (=> d!12 (= lt!181 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!173 () Unit!6)

(declare-fun lt!178 () Unit!6)

(assert (=> d!12 (= lt!173 lt!178)))

(declare-fun lt!185 () array!13)

(declare-fun lt!172 () (_ BitVec 32))

(declare-fun lt!187 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!13 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!12 (= (arrayCountValidKeys!0 lt!185 lt!172 lt!187) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!13 (_ BitVec 32) (_ BitVec 32)) Unit!6)

(assert (=> d!12 (= lt!178 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!185 lt!172 lt!187))))

(assert (=> d!12 (= lt!187 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!12 (= lt!172 #b00000000000000000000000000000000)))

(assert (=> d!12 (= lt!185 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun dynLambda!2 (Int (_ BitVec 64)) V!215)

(assert (=> d!12 (= lt!183 (LongMapFixedSize!9 defaultEntry!179 #b00000000000000000000000000001111 #b00000000000000000000000000000000 (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (array!12 ((as const (Array (_ BitVec 32) ValueCell!4)) EmptyCell!4) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!12 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!12 (= (getNewLongMapFixedSize!3 #b00000000000000000000000000001111 defaultEntry!179) lt!190)))

(declare-fun b!1451 () Bool)

(declare-fun Unit!11 () Unit!6)

(assert (=> b!1451 (= e!102 Unit!11)))

(declare-fun b!1452 () Bool)

(declare-fun Unit!12 () Unit!6)

(assert (=> b!1452 (= e!102 Unit!12)))

(declare-fun head!742 (List!7) tuple2!2)

(assert (=> b!1452 (= lt!177 (head!742 (toList!19 (map!21 lt!183))))))

(declare-fun lt!188 () array!13)

(assert (=> b!1452 (= lt!188 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(assert (=> b!1452 (= lt!192 #b00000000000000000000000000000000)))

(declare-fun lt!176 () Unit!6)

(declare-fun lemmaKeyInListMapIsInArray!3 (array!13 array!11 (_ BitVec 32) (_ BitVec 32) V!215 V!215 (_ BitVec 64) Int) Unit!6)

(assert (=> b!1452 (= lt!176 (lemmaKeyInListMapIsInArray!3 lt!188 (array!12 ((as const (Array (_ BitVec 32) ValueCell!4)) EmptyCell!4) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!192 (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!1 lt!177) defaultEntry!179))))

(declare-fun c!30 () Bool)

(assert (=> b!1452 (= c!30 (and (not (= (_1!1 lt!177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!1 lt!177) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1452 e!101))

(declare-fun lt!191 () Unit!6)

(assert (=> b!1452 (= lt!191 lt!176)))

(declare-fun lt!186 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!13 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452 (= lt!186 (arrayScanForKey!0 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!1 lt!177) #b00000000000000000000000000000000))))

(assert (=> b!1452 false))

(declare-fun b!1453 () Bool)

(declare-fun arrayContainsKey!0 (array!13 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1453 (= e!101 (arrayContainsKey!0 lt!188 (_1!1 lt!177) #b00000000000000000000000000000000))))

(declare-fun b!1454 () Bool)

(declare-fun res!4202 () Bool)

(assert (=> b!1454 (=> (not res!4202) (not e!100))))

(assert (=> b!1454 (= res!4202 (= (mask!4134 lt!190) #b00000000000000000000000000001111))))

(declare-fun b!1455 () Bool)

(assert (=> b!1455 (= e!100 (= (map!21 lt!190) (ListLongMap!8 Nil!4)))))

(assert (= (and d!12 c!29) b!1452))

(assert (= (and d!12 (not c!29)) b!1451))

(assert (= (and b!1452 c!30) b!1453))

(assert (= (and b!1452 (not c!30)) b!1450))

(assert (= (and d!12 res!4203) b!1454))

(assert (= (and b!1454 res!4202) b!1455))

(declare-fun b_lambda!4 () Bool)

(assert (=> (not b_lambda!4) (not d!12)))

(declare-fun t!2011 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and start!14 (= defaultEntry!179 defaultEntry!179) t!2011) tb!5))

(declare-fun result!3 () Bool)

(declare-fun tp_is_empty!4 () Bool)

(assert (=> tb!5 (= result!3 tp_is_empty!4)))

(assert (=> d!12 t!2011))

(declare-fun b_and!11 () Bool)

(assert (= b_and!5 (and (=> t!2011 result!3) b_and!11)))

(declare-fun b_lambda!11 () Bool)

(assert (=> (not b_lambda!11) (not b!1452)))

(assert (=> b!1452 t!2011))

(declare-fun b_and!17 () Bool)

(assert (= b_and!11 (and (=> t!2011 result!3) b_and!17)))

(declare-fun m!101 () Bool)

(assert (=> d!12 m!101))

(declare-fun m!107 () Bool)

(assert (=> d!12 m!107))

(declare-fun m!113 () Bool)

(assert (=> d!12 m!113))

(declare-fun m!119 () Bool)

(assert (=> d!12 m!119))

(declare-fun m!121 () Bool)

(assert (=> d!12 m!121))

(declare-fun m!129 () Bool)

(assert (=> d!12 m!129))

(declare-fun m!135 () Bool)

(assert (=> d!12 m!135))

(declare-fun m!141 () Bool)

(assert (=> d!12 m!141))

(declare-fun m!145 () Bool)

(assert (=> d!12 m!145))

(declare-fun m!151 () Bool)

(assert (=> d!12 m!151))

(assert (=> b!1452 m!101))

(declare-fun m!165 () Bool)

(assert (=> b!1452 m!165))

(declare-fun m!167 () Bool)

(assert (=> b!1452 m!167))

(assert (=> b!1452 m!121))

(assert (=> b!1452 m!121))

(declare-fun m!179 () Bool)

(assert (=> b!1452 m!179))

(assert (=> b!1452 m!121))

(declare-fun m!185 () Bool)

(assert (=> b!1453 m!185))

(declare-fun m!189 () Bool)

(assert (=> b!1455 m!189))

(assert (=> b!1406 d!12))

(declare-fun d!21 () Bool)

(declare-fun size!56 (LongMapFixedSize!8) (_ BitVec 32))

(assert (=> d!21 (= (size!53 lt!8) (size!56 (v!1070 (underlying!15 lt!8))))))

(declare-fun bs!11 () Bool)

(assert (= bs!11 d!21))

(declare-fun m!193 () Bool)

(assert (=> bs!11 m!193))

(assert (=> b!1407 d!21))

(declare-fun b_lambda!21 () Bool)

(assert (= b_lambda!11 (or (and start!14 b_free!5) b_lambda!21)))

(declare-fun b_lambda!23 () Bool)

(assert (= b_lambda!4 (or (and start!14 b_free!5) b_lambda!23)))

(push 1)

(assert (not b!1455))

(assert (not b_lambda!21))

(assert (not b_lambda!23))

(assert b_and!17)

(assert (not d!21))

(assert (not b!1452))

(assert (not b!1453))

(assert tp_is_empty!4)

(assert (not d!12))

(assert (not d!7))

(assert (not b_next!5))

(check-sat)

(pop 1)

(push 1)

(assert b_and!17)

(assert (not b_next!5))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!25 () Bool)

(declare-fun getCurrentListMap!1 (array!13 array!11 (_ BitVec 32) (_ BitVec 32) V!215 V!215 (_ BitVec 32) Int) ListLongMap!7)

(assert (=> d!25 (= (map!21 lt!190) (getCurrentListMap!1 (_keys!2981 lt!190) (_values!1586 lt!190) (mask!4134 lt!190) (extraKeys!1502 lt!190) (zeroValue!1525 lt!190) (minValue!1525 lt!190) #b00000000000000000000000000000000 (defaultEntry!1582 lt!190)))))

(declare-fun bs!12 () Bool)

(assert (= bs!12 d!25))

(declare-fun m!195 () Bool)

(assert (=> bs!12 m!195))

(assert (=> b!1455 d!25))

(declare-fun d!29 () Bool)

(declare-fun res!4224 () Bool)

(declare-fun e!123 () Bool)

(assert (=> d!29 (=> (not res!4224) (not e!123))))

(declare-fun simpleValid!1 (LongMapFixedSize!8) Bool)

(assert (=> d!29 (= res!4224 (simpleValid!1 (v!1070 (underlying!15 lt!8))))))

(assert (=> d!29 (= (valid!7 (v!1070 (underlying!15 lt!8))) e!123)))

(declare-fun b!1492 () Bool)

(declare-fun res!4225 () Bool)

(assert (=> b!1492 (=> (not res!4225) (not e!123))))

(assert (=> b!1492 (= res!4225 (= (arrayCountValidKeys!0 (_keys!2981 (v!1070 (underlying!15 lt!8))) #b00000000000000000000000000000000 (size!52 (_keys!2981 (v!1070 (underlying!15 lt!8))))) (_size!35 (v!1070 (underlying!15 lt!8)))))))

(declare-fun b!1493 () Bool)

(declare-fun res!4226 () Bool)

(assert (=> b!1493 (=> (not res!4226) (not e!123))))

(assert (=> b!1493 (= res!4226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2981 (v!1070 (underlying!15 lt!8))) (mask!4134 (v!1070 (underlying!15 lt!8)))))))

(declare-fun b!1494 () Bool)

(assert (=> b!1494 (= e!123 (arrayNoDuplicates!0 (_keys!2981 (v!1070 (underlying!15 lt!8))) #b00000000000000000000000000000000 Nil!7))))

(assert (= (and d!29 res!4224) b!1492))

(assert (= (and b!1492 res!4225) b!1493))

(assert (= (and b!1493 res!4226) b!1494))

(declare-fun m!213 () Bool)

(assert (=> d!29 m!213))

(declare-fun m!215 () Bool)

(assert (=> b!1492 m!215))

(declare-fun m!217 () Bool)

(assert (=> b!1493 m!217))

(declare-fun m!219 () Bool)

(assert (=> b!1494 m!219))

(assert (=> d!7 d!29))

(declare-fun d!35 () Bool)

(assert (=> d!35 (= (head!742 (toList!19 (map!21 lt!183))) (h!569 (toList!19 (map!21 lt!183))))))

(assert (=> b!1452 d!35))

(declare-fun d!37 () Bool)

(assert (=> d!37 (= (map!21 lt!183) (getCurrentListMap!1 (_keys!2981 lt!183) (_values!1586 lt!183) (mask!4134 lt!183) (extraKeys!1502 lt!183) (zeroValue!1525 lt!183) (minValue!1525 lt!183) #b00000000000000000000000000000000 (defaultEntry!1582 lt!183)))))

(declare-fun bs!13 () Bool)

(assert (= bs!13 d!37))

(declare-fun m!221 () Bool)

(assert (=> bs!13 m!221))

(assert (=> b!1452 d!37))

(declare-fun d!39 () Bool)

(declare-fun e!133 () Bool)

(assert (=> d!39 e!133))

(declare-fun c!42 () Bool)

(assert (=> d!39 (= c!42 (and (not (= (_1!1 lt!177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!1 lt!177) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!232 () Unit!6)

(declare-fun choose!129 (array!13 array!11 (_ BitVec 32) (_ BitVec 32) V!215 V!215 (_ BitVec 64) Int) Unit!6)

(assert (=> d!39 (= lt!232 (choose!129 lt!188 (array!12 ((as const (Array (_ BitVec 32) ValueCell!4)) EmptyCell!4) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!192 (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!1 lt!177) defaultEntry!179))))

(assert (=> d!39 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!39 (= (lemmaKeyInListMapIsInArray!3 lt!188 (array!12 ((as const (Array (_ BitVec 32) ValueCell!4)) EmptyCell!4) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!192 (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!2 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!1 lt!177) defaultEntry!179) lt!232)))

(declare-fun b!1516 () Bool)

(assert (=> b!1516 (= e!133 (arrayContainsKey!0 lt!188 (_1!1 lt!177) #b00000000000000000000000000000000))))

(declare-fun b!1517 () Bool)

(assert (=> b!1517 (= e!133 (ite (= (_1!1 lt!177) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!192 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!192 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!39 c!42) b!1516))

(assert (= (and d!39 (not c!42)) b!1517))

(assert (=> d!39 m!121))

(assert (=> d!39 m!121))

(declare-fun m!233 () Bool)

(assert (=> d!39 m!233))

(assert (=> d!39 m!145))

(assert (=> b!1516 m!185))

(assert (=> b!1452 d!39))

(declare-fun d!47 () Bool)

(declare-fun lt!239 () (_ BitVec 32))

(assert (=> d!47 (and (or (bvslt lt!239 #b00000000000000000000000000000000) (bvsge lt!239 (size!52 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (and (bvsge lt!239 #b00000000000000000000000000000000) (bvslt lt!239 (size!52 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))) (bvsge lt!239 #b00000000000000000000000000000000) (bvslt lt!239 (size!52 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (= (select (arr!6 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) lt!239) (_1!1 lt!177)))))

(declare-fun e!143 () (_ BitVec 32))

(assert (=> d!47 (= lt!239 e!143)))

(declare-fun c!50 () Bool)

(assert (=> d!47 (= c!50 (= (select (arr!6 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!1 lt!177)))))

(assert (=> d!47 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!52 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (bvslt (size!52 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!47 (= (arrayScanForKey!0 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!1 lt!177) #b00000000000000000000000000000000) lt!239)))

(declare-fun b!1538 () Bool)

(assert (=> b!1538 (= e!143 #b00000000000000000000000000000000)))

(declare-fun b!1539 () Bool)

(assert (=> b!1539 (= e!143 (arrayScanForKey!0 (array!14 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!1 lt!177) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!47 c!50) b!1538))

(assert (= (and d!47 (not c!50)) b!1539))

(declare-fun m!245 () Bool)

(assert (=> d!47 m!245))

(declare-fun m!247 () Bool)

(assert (=> d!47 m!247))

(declare-fun m!257 () Bool)

(assert (=> b!1539 m!257))

(assert (=> b!1452 d!47))

(declare-fun d!59 () Bool)

(declare-fun res!4249 () Bool)

(declare-fun e!149 () Bool)

(assert (=> d!59 (=> res!4249 e!149)))

(assert (=> d!59 (= res!4249 (= (select (arr!6 lt!188) #b00000000000000000000000000000000) (_1!1 lt!177)))))

(assert (=> d!59 (= (arrayContainsKey!0 lt!188 (_1!1 lt!177) #b00000000000000000000000000000000) e!149)))

(declare-fun b!1547 () Bool)

(declare-fun e!150 () Bool)

(assert (=> b!1547 (= e!149 e!150)))

(declare-fun res!4250 () Bool)

(assert (=> b!1547 (=> (not res!4250) (not e!150))))

(assert (=> b!1547 (= res!4250 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!52 lt!188)))))

(declare-fun b!1548 () Bool)

(assert (=> b!1548 (= e!150 (arrayContainsKey!0 lt!188 (_1!1 lt!177) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59 (not res!4249)) b!1547))

(assert (= (and b!1547 res!4250) b!1548))

(declare-fun m!259 () Bool)

(assert (=> d!59 m!259))

(declare-fun m!261 () Bool)

(assert (=> b!1548 m!261))

(assert (=> b!1453 d!59))

(assert (=> d!12 d!37))

(declare-fun d!61 () Bool)

(assert (=> d!61 (arrayNoDuplicates!0 lt!184 lt!175 lt!170)))

(declare-fun lt!244 () Unit!6)

(declare-fun choose!111 (array!13 (_ BitVec 32) (_ BitVec 32) List!10) Unit!6)

(assert (=> d!61 (= lt!244 (choose!111 lt!184 lt!175 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!170))))

(assert (=> d!61 (= (size!52 lt!184) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!61 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!184 lt!175 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!170) lt!244)))

(declare-fun bs!17 () Bool)

(assert (= bs!17 d!61))

(assert (=> bs!17 m!151))

(declare-fun m!265 () Bool)

(assert (=> bs!17 m!265))

(assert (=> d!12 d!61))

(declare-fun d!65 () Bool)

(declare-fun res!4251 () Bool)

(declare-fun e!154 () Bool)

(assert (=> d!65 (=> (not res!4251) (not e!154))))

(assert (=> d!65 (= res!4251 (simpleValid!1 lt!190))))

(assert (=> d!65 (= (valid!7 lt!190) e!154)))

(declare-fun b!1555 () Bool)

(declare-fun res!4252 () Bool)

(assert (=> b!1555 (=> (not res!4252) (not e!154))))

(assert (=> b!1555 (= res!4252 (= (arrayCountValidKeys!0 (_keys!2981 lt!190) #b00000000000000000000000000000000 (size!52 (_keys!2981 lt!190))) (_size!35 lt!190)))))

(declare-fun b!1556 () Bool)

(declare-fun res!4253 () Bool)

(assert (=> b!1556 (=> (not res!4253) (not e!154))))

(assert (=> b!1556 (= res!4253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2981 lt!190) (mask!4134 lt!190)))))

(declare-fun b!1557 () Bool)

(assert (=> b!1557 (= e!154 (arrayNoDuplicates!0 (_keys!2981 lt!190) #b00000000000000000000000000000000 Nil!7))))

(assert (= (and d!65 res!4251) b!1555))

(assert (= (and b!1555 res!4252) b!1556))

(assert (= (and b!1556 res!4253) b!1557))

(declare-fun m!273 () Bool)

(assert (=> d!65 m!273))

(declare-fun m!275 () Bool)

(assert (=> b!1555 m!275))

(declare-fun m!277 () Bool)

(assert (=> b!1556 m!277))

(declare-fun m!279 () Bool)

(assert (=> b!1557 m!279))

(assert (=> d!12 d!65))

(declare-fun d!69 () Bool)

(declare-fun res!4268 () Bool)

(declare-fun e!179 () Bool)

(assert (=> d!69 (=> res!4268 e!179)))

(assert (=> d!69 (= res!4268 (bvsge lt!180 (size!52 lt!181)))))

(assert (=> d!69 (= (arrayForallSeekEntryOrOpenFound!0 lt!180 lt!181 #b00000000000000000000000000001111) e!179)))

(declare-fun b!1593 () Bool)

(declare-fun e!181 () Bool)

(assert (=> b!1593 (= e!179 e!181)))

(declare-fun c!65 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1593 (= c!65 (validKeyInArray!0 (select (arr!6 lt!181) lt!180)))))

(declare-fun bm!14 () Bool)

(declare-fun call!17 () Bool)

(assert (=> bm!14 (= call!17 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!180 #b00000000000000000000000000000001) lt!181 #b00000000000000000000000000001111))))

(declare-fun b!1594 () Bool)

(assert (=> b!1594 (= e!181 call!17)))

(declare-fun b!1595 () Bool)

(declare-fun e!180 () Bool)

(assert (=> b!1595 (= e!181 e!180)))

(declare-fun lt!257 () (_ BitVec 64))

(assert (=> b!1595 (= lt!257 (select (arr!6 lt!181) lt!180))))

(declare-fun lt!258 () Unit!6)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13 (_ BitVec 64) (_ BitVec 32)) Unit!6)

(assert (=> b!1595 (= lt!258 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!181 lt!257 lt!180))))

(assert (=> b!1595 (arrayContainsKey!0 lt!181 lt!257 #b00000000000000000000000000000000)))

(declare-fun lt!259 () Unit!6)

(assert (=> b!1595 (= lt!259 lt!258)))

(declare-fun res!4267 () Bool)

(declare-datatypes ((SeekEntryResult!4 0))(
  ( (MissingZero!4 (index!2135 (_ BitVec 32))) (Found!4 (index!2136 (_ BitVec 32))) (Intermediate!4 (undefined!816 Bool) (index!2137 (_ BitVec 32)) (x!1759 (_ BitVec 32))) (Undefined!4) (MissingVacant!4 (index!2138 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13 (_ BitVec 32)) SeekEntryResult!4)

(assert (=> b!1595 (= res!4267 (= (seekEntryOrOpen!0 (select (arr!6 lt!181) lt!180) lt!181 #b00000000000000000000000000001111) (Found!4 lt!180)))))

(assert (=> b!1595 (=> (not res!4267) (not e!180))))

(declare-fun b!1596 () Bool)

(assert (=> b!1596 (= e!180 call!17)))

(assert (= (and d!69 (not res!4268)) b!1593))

(assert (= (and b!1593 c!65) b!1595))

(assert (= (and b!1593 (not c!65)) b!1594))

(assert (= (and b!1595 res!4267) b!1596))

(assert (= (or b!1596 b!1594) bm!14))

(declare-fun m!295 () Bool)

(assert (=> b!1593 m!295))

(assert (=> b!1593 m!295))

(declare-fun m!297 () Bool)

(assert (=> b!1593 m!297))

(declare-fun m!301 () Bool)

(assert (=> bm!14 m!301))

(assert (=> b!1595 m!295))

(declare-fun m!303 () Bool)

(assert (=> b!1595 m!303))

(declare-fun m!305 () Bool)

(assert (=> b!1595 m!305))

(assert (=> b!1595 m!295))

(declare-fun m!307 () Bool)

(assert (=> b!1595 m!307))

(assert (=> d!12 d!69))

(declare-fun d!77 () Bool)

(assert (=> d!77 (= (validMask!0 #b00000000000000000000000000001111) true)))

(assert (=> d!12 d!77))

(declare-fun d!79 () Bool)

(assert (=> d!79 (= (arrayCountValidKeys!0 lt!185 lt!172 lt!187) #b00000000000000000000000000000000)))

(declare-fun lt!268 () Unit!6)

(declare-fun choose!59 (array!13 (_ BitVec 32) (_ BitVec 32)) Unit!6)

(assert (=> d!79 (= lt!268 (choose!59 lt!185 lt!172 lt!187))))

(assert (=> d!79 (bvslt (size!52 lt!185) #b01111111111111111111111111111111)))

(assert (=> d!79 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!185 lt!172 lt!187) lt!268)))

(declare-fun bs!20 () Bool)

(assert (= bs!20 d!79))

(assert (=> bs!20 m!129))

(declare-fun m!311 () Bool)

(assert (=> bs!20 m!311))

(assert (=> d!12 d!79))

(declare-fun b!1624 () Bool)

(declare-fun e!199 () (_ BitVec 32))

(declare-fun e!198 () (_ BitVec 32))

(assert (=> b!1624 (= e!199 e!198)))

(declare-fun c!75 () Bool)

(assert (=> b!1624 (= c!75 (validKeyInArray!0 (select (arr!6 lt!185) lt!172)))))

(declare-fun b!1625 () Bool)

(declare-fun call!23 () (_ BitVec 32))

(assert (=> b!1625 (= e!198 (bvadd #b00000000000000000000000000000001 call!23))))

(declare-fun b!1626 () Bool)

(assert (=> b!1626 (= e!199 #b00000000000000000000000000000000)))

(declare-fun bm!20 () Bool)

(assert (=> bm!20 (= call!23 (arrayCountValidKeys!0 lt!185 (bvadd lt!172 #b00000000000000000000000000000001) lt!187))))

(declare-fun b!1627 () Bool)

(assert (=> b!1627 (= e!198 call!23)))

(declare-fun d!83 () Bool)

(declare-fun lt!283 () (_ BitVec 32))

(assert (=> d!83 (and (bvsge lt!283 #b00000000000000000000000000000000) (bvsle lt!283 (bvsub (size!52 lt!185) lt!172)))))

(assert (=> d!83 (= lt!283 e!199)))

(declare-fun c!76 () Bool)

(assert (=> d!83 (= c!76 (bvsge lt!172 lt!187))))

(assert (=> d!83 (and (bvsle lt!172 lt!187) (bvsge lt!172 #b00000000000000000000000000000000) (bvsle lt!187 (size!52 lt!185)))))

(assert (=> d!83 (= (arrayCountValidKeys!0 lt!185 lt!172 lt!187) lt!283)))

(assert (= (and d!83 c!76) b!1626))

(assert (= (and d!83 (not c!76)) b!1624))

(assert (= (and b!1624 c!75) b!1625))

(assert (= (and b!1624 (not c!75)) b!1627))

(assert (= (or b!1625 b!1627) bm!20))

(declare-fun m!335 () Bool)

(assert (=> b!1624 m!335))

(assert (=> b!1624 m!335))

(declare-fun m!337 () Bool)

(assert (=> b!1624 m!337))

(declare-fun m!339 () Bool)

(assert (=> bm!20 m!339))

(assert (=> d!12 d!83))

(declare-fun d!93 () Bool)

(assert (=> d!93 (arrayForallSeekEntryOrOpenFound!0 lt!180 lt!181 #b00000000000000000000000000001111)))

(declare-fun lt!290 () Unit!6)

(declare-fun choose!34 (array!13 (_ BitVec 32) (_ BitVec 32)) Unit!6)

(assert (=> d!93 (= lt!290 (choose!34 lt!181 #b00000000000000000000000000001111 lt!180))))

