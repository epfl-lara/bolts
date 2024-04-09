; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12 () Bool)

(assert start!12)

(declare-fun b_free!3 () Bool)

(declare-fun b_next!3 () Bool)

(assert (=> start!12 (= b_free!3 (not b_next!3))))

(declare-fun tp!5 () Bool)

(declare-fun b_and!3 () Bool)

(assert (=> start!12 (= tp!5 b_and!3)))

(declare-fun res!4181 () Bool)

(declare-fun e!71 () Bool)

(assert (=> start!12 (=> (not res!4181) (not e!71))))

(assert (=> start!12 (= res!4181 true)))

(assert (=> start!12 e!71))

(assert (=> start!12 tp!5))

(declare-fun b!1400 () Bool)

(declare-fun e!72 () Bool)

(assert (=> b!1400 (= e!71 e!72)))

(declare-fun res!4180 () Bool)

(assert (=> b!1400 (=> res!4180 e!72)))

(declare-datatypes ((V!213 0))(
  ( (V!214 (val!1 Int)) )
))
(declare-datatypes ((ValueCell!3 0))(
  ( (ValueCellFull!3 (v!1067 V!213)) (EmptyCell!3) )
))
(declare-datatypes ((array!7 0))(
  ( (array!8 (arr!3 (Array (_ BitVec 32) ValueCell!3)) (size!48 (_ BitVec 32))) )
))
(declare-datatypes ((array!9 0))(
  ( (array!10 (arr!4 (Array (_ BitVec 32) (_ BitVec 64))) (size!49 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6 0))(
  ( (LongMapFixedSize!7 (defaultEntry!1581 Int) (mask!4133 (_ BitVec 32)) (extraKeys!1501 (_ BitVec 32)) (zeroValue!1524 V!213) (minValue!1524 V!213) (_size!34 (_ BitVec 32)) (_keys!2980 array!9) (_values!1585 array!7) (_vacant!34 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6 0))(
  ( (Cell!7 (v!1068 LongMapFixedSize!6)) )
))
(declare-datatypes ((LongMap!6 0))(
  ( (LongMap!7 (underlying!14 Cell!6)) )
))
(declare-fun lt!5 () LongMap!6)

(declare-fun valid!4 (LongMap!6) Bool)

(assert (=> b!1400 (= res!4180 (not (valid!4 lt!5)))))

(declare-fun defaultEntry!179 () Int)

(declare-fun getNewLongMapFixedSize!2 ((_ BitVec 32) Int) LongMapFixedSize!6)

(assert (=> b!1400 (= lt!5 (LongMap!7 (Cell!7 (getNewLongMapFixedSize!2 #b00000000000000000000000000001111 defaultEntry!179))))))

(declare-fun b!1401 () Bool)

(declare-fun size!50 (LongMap!6) (_ BitVec 32))

(assert (=> b!1401 (= e!72 (not (= (size!50 lt!5) #b00000000000000000000000000000000)))))

(assert (= (and start!12 res!4181) b!1400))

(assert (= (and b!1400 (not res!4180)) b!1401))

(declare-fun m!81 () Bool)

(assert (=> b!1400 m!81))

(declare-fun m!83 () Bool)

(assert (=> b!1400 m!83))

(declare-fun m!85 () Bool)

(assert (=> b!1401 m!85))

(check-sat (not b!1401) (not b!1400) b_and!3 (not b_next!3))
(check-sat b_and!3 (not b_next!3))
(get-model)

(declare-fun d!9 () Bool)

(declare-fun size!54 (LongMapFixedSize!6) (_ BitVec 32))

(assert (=> d!9 (= (size!50 lt!5) (size!54 (v!1068 (underlying!14 lt!5))))))

(declare-fun bs!6 () Bool)

(assert (= bs!6 d!9))

(declare-fun m!94 () Bool)

(assert (=> bs!6 m!94))

(assert (=> b!1401 d!9))

(declare-fun d!15 () Bool)

(declare-fun valid!8 (LongMapFixedSize!6) Bool)

(assert (=> d!15 (= (valid!4 lt!5) (valid!8 (v!1068 (underlying!14 lt!5))))))

(declare-fun bs!9 () Bool)

(assert (= bs!9 d!15))

(declare-fun m!99 () Bool)

(assert (=> bs!9 m!99))

(assert (=> b!1400 d!15))

(declare-fun b!1456 () Bool)

(declare-datatypes ((Unit!1 0))(
  ( (Unit!2) )
))
(declare-fun e!104 () Unit!1)

(declare-fun Unit!3 () Unit!1)

(assert (=> b!1456 (= e!104 Unit!3)))

(declare-fun b!1457 () Bool)

(declare-fun e!105 () Bool)

(declare-fun lt!212 () array!9)

(declare-datatypes ((tuple2!4 0))(
  ( (tuple2!5 (_1!2 (_ BitVec 64)) (_2!2 V!213)) )
))
(declare-fun lt!210 () tuple2!4)

(declare-fun arrayContainsKey!0 (array!9 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1457 (= e!105 (arrayContainsKey!0 lt!212 (_1!2 lt!210) #b00000000000000000000000000000000))))

(declare-fun b!1458 () Bool)

(declare-fun res!4205 () Bool)

(declare-fun e!103 () Bool)

(assert (=> b!1458 (=> (not res!4205) (not e!103))))

(declare-fun lt!194 () LongMapFixedSize!6)

(assert (=> b!1458 (= res!4205 (= (mask!4133 lt!194) #b00000000000000000000000000001111))))

(declare-fun b!1459 () Bool)

(declare-fun Unit!8 () Unit!1)

(assert (=> b!1459 (= e!104 Unit!8)))

(declare-fun lt!206 () LongMapFixedSize!6)

(declare-datatypes ((List!8 0))(
  ( (Nil!5) (Cons!4 (h!570 tuple2!4) (t!2015 List!8)) )
))
(declare-fun head!740 (List!8) tuple2!4)

(declare-datatypes ((ListLongMap!9 0))(
  ( (ListLongMap!10 (toList!20 List!8)) )
))
(declare-fun map!22 (LongMapFixedSize!6) ListLongMap!9)

(assert (=> b!1459 (= lt!210 (head!740 (toList!20 (map!22 lt!206))))))

(assert (=> b!1459 (= lt!212 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!203 () (_ BitVec 32))

(assert (=> b!1459 (= lt!203 #b00000000000000000000000000000000)))

(declare-fun lt!195 () Unit!1)

(declare-fun lemmaKeyInListMapIsInArray!1 (array!9 array!7 (_ BitVec 32) (_ BitVec 32) V!213 V!213 (_ BitVec 64) Int) Unit!1)

(declare-fun dynLambda!0 (Int (_ BitVec 64)) V!213)

(assert (=> b!1459 (= lt!195 (lemmaKeyInListMapIsInArray!1 lt!212 (array!8 ((as const (Array (_ BitVec 32) ValueCell!3)) EmptyCell!3) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!203 (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!2 lt!210) defaultEntry!179))))

(declare-fun c!31 () Bool)

(assert (=> b!1459 (= c!31 (and (not (= (_1!2 lt!210) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!2 lt!210) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1459 e!105))

(declare-fun lt!208 () Unit!1)

(assert (=> b!1459 (= lt!208 lt!195)))

(declare-fun lt!213 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!9 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459 (= lt!213 (arrayScanForKey!0 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!2 lt!210) #b00000000000000000000000000000000))))

(assert (=> b!1459 false))

(declare-fun b!1460 () Bool)

(assert (=> b!1460 (= e!103 (= (map!22 lt!194) (ListLongMap!10 Nil!5)))))

(declare-fun d!17 () Bool)

(assert (=> d!17 e!103))

(declare-fun res!4204 () Bool)

(assert (=> d!17 (=> (not res!4204) (not e!103))))

(assert (=> d!17 (= res!4204 (valid!8 lt!194))))

(assert (=> d!17 (= lt!194 lt!206)))

(declare-fun lt!200 () Unit!1)

(assert (=> d!17 (= lt!200 e!104)))

(declare-fun c!32 () Bool)

(assert (=> d!17 (= c!32 (not (= (map!22 lt!206) (ListLongMap!10 Nil!5))))))

(declare-fun lt!198 () Unit!1)

(declare-fun lt!207 () Unit!1)

(assert (=> d!17 (= lt!198 lt!207)))

(declare-fun lt!196 () array!9)

(declare-fun lt!214 () (_ BitVec 32))

(declare-datatypes ((List!11 0))(
  ( (Nil!8) (Cons!7 (h!573 (_ BitVec 64)) (t!2018 List!11)) )
))
(declare-fun lt!197 () List!11)

(declare-fun arrayNoDuplicates!0 (array!9 (_ BitVec 32) List!11) Bool)

(assert (=> d!17 (arrayNoDuplicates!0 lt!196 lt!214 lt!197)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!9 (_ BitVec 32) (_ BitVec 32) List!11) Unit!1)

(assert (=> d!17 (= lt!207 (lemmaArrayNoDuplicatesInAll0Array!0 lt!196 lt!214 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!197))))

(assert (=> d!17 (= lt!197 Nil!8)))

(assert (=> d!17 (= lt!214 #b00000000000000000000000000000000)))

(assert (=> d!17 (= lt!196 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!201 () Unit!1)

(declare-fun lt!199 () Unit!1)

(assert (=> d!17 (= lt!201 lt!199)))

(declare-fun lt!211 () (_ BitVec 32))

(declare-fun lt!204 () array!9)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9 (_ BitVec 32)) Bool)

(assert (=> d!17 (arrayForallSeekEntryOrOpenFound!0 lt!211 lt!204 #b00000000000000000000000000001111)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!9 (_ BitVec 32) (_ BitVec 32)) Unit!1)

(assert (=> d!17 (= lt!199 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!204 #b00000000000000000000000000001111 lt!211))))

(assert (=> d!17 (= lt!211 #b00000000000000000000000000000000)))

(assert (=> d!17 (= lt!204 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(declare-fun lt!193 () Unit!1)

(declare-fun lt!205 () Unit!1)

(assert (=> d!17 (= lt!193 lt!205)))

(declare-fun lt!209 () array!9)

(declare-fun lt!215 () (_ BitVec 32))

(declare-fun lt!202 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!9 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!17 (= (arrayCountValidKeys!0 lt!209 lt!215 lt!202) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!9 (_ BitVec 32) (_ BitVec 32)) Unit!1)

(assert (=> d!17 (= lt!205 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!209 lt!215 lt!202))))

(assert (=> d!17 (= lt!202 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!17 (= lt!215 #b00000000000000000000000000000000)))

(assert (=> d!17 (= lt!209 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))

(assert (=> d!17 (= lt!206 (LongMapFixedSize!7 defaultEntry!179 #b00000000000000000000000000001111 #b00000000000000000000000000000000 (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (array!8 ((as const (Array (_ BitVec 32) ValueCell!3)) EmptyCell!3) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!17 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!17 (= (getNewLongMapFixedSize!2 #b00000000000000000000000000001111 defaultEntry!179) lt!194)))

(declare-fun b!1461 () Bool)

(assert (=> b!1461 (= e!105 (ite (= (_1!2 lt!210) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!203 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!203 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!17 c!32) b!1459))

(assert (= (and d!17 (not c!32)) b!1456))

(assert (= (and b!1459 c!31) b!1457))

(assert (= (and b!1459 (not c!31)) b!1461))

(assert (= (and d!17 res!4204) b!1458))

(assert (= (and b!1458 res!4205) b!1460))

(declare-fun b_lambda!2 () Bool)

(assert (=> (not b_lambda!2) (not b!1459)))

(declare-fun t!2010 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and start!12 (= defaultEntry!179 defaultEntry!179) t!2010) tb!3))

(declare-fun result!2 () Bool)

(declare-fun tp_is_empty!5 () Bool)

(assert (=> tb!3 (= result!2 tp_is_empty!5)))

(assert (=> b!1459 t!2010))

(declare-fun b_and!7 () Bool)

(assert (= b_and!3 (and (=> t!2010 result!2) b_and!7)))

(declare-fun b_lambda!7 () Bool)

(assert (=> (not b_lambda!7) (not d!17)))

(assert (=> d!17 t!2010))

(declare-fun b_and!14 () Bool)

(assert (= b_and!7 (and (=> t!2010 result!2) b_and!14)))

(declare-fun m!105 () Bool)

(assert (=> b!1457 m!105))

(declare-fun m!111 () Bool)

(assert (=> b!1459 m!111))

(declare-fun m!117 () Bool)

(assert (=> b!1459 m!117))

(declare-fun m!125 () Bool)

(assert (=> b!1459 m!125))

(assert (=> b!1459 m!125))

(declare-fun m!131 () Bool)

(assert (=> b!1459 m!131))

(assert (=> b!1459 m!125))

(declare-fun m!143 () Bool)

(assert (=> b!1459 m!143))

(declare-fun m!147 () Bool)

(assert (=> b!1460 m!147))

(declare-fun m!153 () Bool)

(assert (=> d!17 m!153))

(declare-fun m!157 () Bool)

(assert (=> d!17 m!157))

(declare-fun m!162 () Bool)

(assert (=> d!17 m!162))

(declare-fun m!169 () Bool)

(assert (=> d!17 m!169))

(declare-fun m!171 () Bool)

(assert (=> d!17 m!171))

(assert (=> d!17 m!125))

(declare-fun m!175 () Bool)

(assert (=> d!17 m!175))

(declare-fun m!177 () Bool)

(assert (=> d!17 m!177))

(assert (=> d!17 m!143))

(declare-fun m!183 () Bool)

(assert (=> d!17 m!183))

(assert (=> b!1400 d!17))

(declare-fun b_lambda!13 () Bool)

(assert (= b_lambda!7 (or (and start!12 b_free!3) b_lambda!13)))

(declare-fun b_lambda!15 () Bool)

(assert (= b_lambda!2 (or (and start!12 b_free!3) b_lambda!15)))

(check-sat tp_is_empty!5 b_and!14 (not b_next!3) (not b_lambda!15) (not b!1457) (not d!15) (not b_lambda!13) (not b!1460) (not d!17) (not d!9) (not b!1459))
(check-sat b_and!14 (not b_next!3))
(get-model)

(declare-fun d!27 () Bool)

(declare-fun res!4214 () Bool)

(declare-fun e!116 () Bool)

(assert (=> d!27 (=> res!4214 e!116)))

(assert (=> d!27 (= res!4214 (= (select (arr!4 lt!212) #b00000000000000000000000000000000) (_1!2 lt!210)))))

(assert (=> d!27 (= (arrayContainsKey!0 lt!212 (_1!2 lt!210) #b00000000000000000000000000000000) e!116)))

(declare-fun b!1480 () Bool)

(declare-fun e!117 () Bool)

(assert (=> b!1480 (= e!116 e!117)))

(declare-fun res!4215 () Bool)

(assert (=> b!1480 (=> (not res!4215) (not e!117))))

(assert (=> b!1480 (= res!4215 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49 lt!212)))))

(declare-fun b!1481 () Bool)

(assert (=> b!1481 (= e!117 (arrayContainsKey!0 lt!212 (_1!2 lt!210) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!27 (not res!4214)) b!1480))

(assert (= (and b!1480 res!4215) b!1481))

(declare-fun m!197 () Bool)

(assert (=> d!27 m!197))

(declare-fun m!199 () Bool)

(assert (=> b!1481 m!199))

(assert (=> b!1457 d!27))

(declare-fun d!31 () Bool)

(declare-fun res!4233 () Bool)

(declare-fun e!126 () Bool)

(assert (=> d!31 (=> (not res!4233) (not e!126))))

(declare-fun simpleValid!2 (LongMapFixedSize!6) Bool)

(assert (=> d!31 (= res!4233 (simpleValid!2 (v!1068 (underlying!14 lt!5))))))

(assert (=> d!31 (= (valid!8 (v!1068 (underlying!14 lt!5))) e!126)))

(declare-fun b!1501 () Bool)

(declare-fun res!4234 () Bool)

(assert (=> b!1501 (=> (not res!4234) (not e!126))))

(assert (=> b!1501 (= res!4234 (= (arrayCountValidKeys!0 (_keys!2980 (v!1068 (underlying!14 lt!5))) #b00000000000000000000000000000000 (size!49 (_keys!2980 (v!1068 (underlying!14 lt!5))))) (_size!34 (v!1068 (underlying!14 lt!5)))))))

(declare-fun b!1502 () Bool)

(declare-fun res!4235 () Bool)

(assert (=> b!1502 (=> (not res!4235) (not e!126))))

(assert (=> b!1502 (= res!4235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2980 (v!1068 (underlying!14 lt!5))) (mask!4133 (v!1068 (underlying!14 lt!5)))))))

(declare-fun b!1503 () Bool)

(assert (=> b!1503 (= e!126 (arrayNoDuplicates!0 (_keys!2980 (v!1068 (underlying!14 lt!5))) #b00000000000000000000000000000000 Nil!8))))

(assert (= (and d!31 res!4233) b!1501))

(assert (= (and b!1501 res!4234) b!1502))

(assert (= (and b!1502 res!4235) b!1503))

(declare-fun m!225 () Bool)

(assert (=> d!31 m!225))

(declare-fun m!227 () Bool)

(assert (=> b!1501 m!227))

(declare-fun m!229 () Bool)

(assert (=> b!1502 m!229))

(declare-fun m!231 () Bool)

(assert (=> b!1503 m!231))

(assert (=> d!15 d!31))

(declare-fun d!43 () Bool)

(assert (=> d!43 (= (head!740 (toList!20 (map!22 lt!206))) (h!570 (toList!20 (map!22 lt!206))))))

(assert (=> b!1459 d!43))

(declare-fun d!45 () Bool)

(declare-fun getCurrentListMap!2 (array!9 array!7 (_ BitVec 32) (_ BitVec 32) V!213 V!213 (_ BitVec 32) Int) ListLongMap!9)

(assert (=> d!45 (= (map!22 lt!206) (getCurrentListMap!2 (_keys!2980 lt!206) (_values!1585 lt!206) (mask!4133 lt!206) (extraKeys!1501 lt!206) (zeroValue!1524 lt!206) (minValue!1524 lt!206) #b00000000000000000000000000000000 (defaultEntry!1581 lt!206)))))

(declare-fun bs!15 () Bool)

(assert (= bs!15 d!45))

(declare-fun m!235 () Bool)

(assert (=> bs!15 m!235))

(assert (=> b!1459 d!45))

(declare-fun d!49 () Bool)

(declare-fun e!140 () Bool)

(assert (=> d!49 e!140))

(declare-fun c!49 () Bool)

(assert (=> d!49 (= c!49 (and (not (= (_1!2 lt!210) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!2 lt!210) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!238 () Unit!1)

(declare-fun choose!130 (array!9 array!7 (_ BitVec 32) (_ BitVec 32) V!213 V!213 (_ BitVec 64) Int) Unit!1)

(assert (=> d!49 (= lt!238 (choose!130 lt!212 (array!8 ((as const (Array (_ BitVec 32) ValueCell!3)) EmptyCell!3) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!203 (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!2 lt!210) defaultEntry!179))))

(assert (=> d!49 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!49 (= (lemmaKeyInListMapIsInArray!1 lt!212 (array!8 ((as const (Array (_ BitVec 32) ValueCell!3)) EmptyCell!3) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) #b00000000000000000000000000001111 lt!203 (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!0 defaultEntry!179 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!2 lt!210) defaultEntry!179) lt!238)))

(declare-fun b!1530 () Bool)

(assert (=> b!1530 (= e!140 (arrayContainsKey!0 lt!212 (_1!2 lt!210) #b00000000000000000000000000000000))))

(declare-fun b!1531 () Bool)

(assert (=> b!1531 (= e!140 (ite (= (_1!2 lt!210) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!203 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!203 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!49 c!49) b!1530))

(assert (= (and d!49 (not c!49)) b!1531))

(assert (=> d!49 m!125))

(assert (=> d!49 m!125))

(declare-fun m!243 () Bool)

(assert (=> d!49 m!243))

(assert (=> d!49 m!175))

(assert (=> b!1530 m!105))

(assert (=> b!1459 d!49))

(declare-fun d!55 () Bool)

(declare-fun lt!245 () (_ BitVec 32))

(assert (=> d!55 (and (or (bvslt lt!245 #b00000000000000000000000000000000) (bvsge lt!245 (size!49 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (and (bvsge lt!245 #b00000000000000000000000000000000) (bvslt lt!245 (size!49 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))))) (bvsge lt!245 #b00000000000000000000000000000000) (bvslt lt!245 (size!49 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (= (select (arr!4 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) lt!245) (_1!2 lt!210)))))

(declare-fun e!153 () (_ BitVec 32))

(assert (=> d!55 (= lt!245 e!153)))

(declare-fun c!53 () Bool)

(assert (=> d!55 (= c!53 (= (select (arr!4 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!2 lt!210)))))

(assert (=> d!55 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!49 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)))) (bvslt (size!49 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!55 (= (arrayScanForKey!0 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!2 lt!210) #b00000000000000000000000000000000) lt!245)))

(declare-fun b!1553 () Bool)

(assert (=> b!1553 (= e!153 #b00000000000000000000000000000000)))

(declare-fun b!1554 () Bool)

(assert (=> b!1554 (= e!153 (arrayScanForKey!0 (array!10 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001)) (_1!2 lt!210) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55 c!53) b!1553))

(assert (= (and d!55 (not c!53)) b!1554))

(declare-fun m!267 () Bool)

(assert (=> d!55 m!267))

(declare-fun m!269 () Bool)

(assert (=> d!55 m!269))

(declare-fun m!271 () Bool)

(assert (=> b!1554 m!271))

(assert (=> b!1459 d!55))

(declare-fun call!16 () (_ BitVec 32))

(declare-fun bm!13 () Bool)

(assert (=> bm!13 (= call!16 (arrayCountValidKeys!0 lt!209 (bvadd lt!215 #b00000000000000000000000000000001) lt!202))))

(declare-fun b!1589 () Bool)

(declare-fun e!178 () (_ BitVec 32))

(assert (=> b!1589 (= e!178 call!16)))

(declare-fun d!67 () Bool)

(declare-fun lt!254 () (_ BitVec 32))

(assert (=> d!67 (and (bvsge lt!254 #b00000000000000000000000000000000) (bvsle lt!254 (bvsub (size!49 lt!209) lt!215)))))

(declare-fun e!177 () (_ BitVec 32))

(assert (=> d!67 (= lt!254 e!177)))

(declare-fun c!64 () Bool)

(assert (=> d!67 (= c!64 (bvsge lt!215 lt!202))))

(assert (=> d!67 (and (bvsle lt!215 lt!202) (bvsge lt!215 #b00000000000000000000000000000000) (bvsle lt!202 (size!49 lt!209)))))

(assert (=> d!67 (= (arrayCountValidKeys!0 lt!209 lt!215 lt!202) lt!254)))

(declare-fun b!1590 () Bool)

(assert (=> b!1590 (= e!177 #b00000000000000000000000000000000)))

(declare-fun b!1591 () Bool)

(assert (=> b!1591 (= e!178 (bvadd #b00000000000000000000000000000001 call!16))))

(declare-fun b!1592 () Bool)

(assert (=> b!1592 (= e!177 e!178)))

(declare-fun c!63 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1592 (= c!63 (validKeyInArray!0 (select (arr!4 lt!209) lt!215)))))

(assert (= (and d!67 c!64) b!1590))

(assert (= (and d!67 (not c!64)) b!1592))

(assert (= (and b!1592 c!63) b!1591))

(assert (= (and b!1592 (not c!63)) b!1589))

(assert (= (or b!1591 b!1589) bm!13))

(declare-fun m!287 () Bool)

(assert (=> bm!13 m!287))

(declare-fun m!291 () Bool)

(assert (=> b!1592 m!291))

(assert (=> b!1592 m!291))

(declare-fun m!293 () Bool)

(assert (=> b!1592 m!293))

(assert (=> d!17 d!67))

(declare-fun d!73 () Bool)

(assert (=> d!73 (= (arrayCountValidKeys!0 lt!209 lt!215 lt!202) #b00000000000000000000000000000000)))

(declare-fun lt!260 () Unit!1)

(declare-fun choose!59 (array!9 (_ BitVec 32) (_ BitVec 32)) Unit!1)

(assert (=> d!73 (= lt!260 (choose!59 lt!209 lt!215 lt!202))))

(assert (=> d!73 (bvslt (size!49 lt!209) #b01111111111111111111111111111111)))

(assert (=> d!73 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!209 lt!215 lt!202) lt!260)))

(declare-fun bs!18 () Bool)

(assert (= bs!18 d!73))

(assert (=> bs!18 m!157))

(declare-fun m!299 () Bool)

(assert (=> bs!18 m!299))

(assert (=> d!17 d!73))

(declare-fun b!1617 () Bool)

(declare-fun e!193 () Bool)

(declare-fun call!22 () Bool)

(assert (=> b!1617 (= e!193 call!22)))

(declare-fun bm!19 () Bool)

(assert (=> bm!19 (= call!22 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!211 #b00000000000000000000000000000001) lt!204 #b00000000000000000000000000001111))))

(declare-fun b!1618 () Bool)

(declare-fun e!194 () Bool)

(declare-fun e!195 () Bool)

(assert (=> b!1618 (= e!194 e!195)))

(declare-fun c!72 () Bool)

(assert (=> b!1618 (= c!72 (validKeyInArray!0 (select (arr!4 lt!204) lt!211)))))

(declare-fun b!1619 () Bool)

(assert (=> b!1619 (= e!195 e!193)))

(declare-fun lt!280 () (_ BitVec 64))

(assert (=> b!1619 (= lt!280 (select (arr!4 lt!204) lt!211))))

(declare-fun lt!279 () Unit!1)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!9 (_ BitVec 64) (_ BitVec 32)) Unit!1)

(assert (=> b!1619 (= lt!279 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!204 lt!280 lt!211))))

(assert (=> b!1619 (arrayContainsKey!0 lt!204 lt!280 #b00000000000000000000000000000000)))

(declare-fun lt!278 () Unit!1)

(assert (=> b!1619 (= lt!278 lt!279)))

(declare-fun res!4277 () Bool)

(declare-datatypes ((SeekEntryResult!3 0))(
  ( (MissingZero!3 (index!2131 (_ BitVec 32))) (Found!3 (index!2132 (_ BitVec 32))) (Intermediate!3 (undefined!815 Bool) (index!2133 (_ BitVec 32)) (x!1758 (_ BitVec 32))) (Undefined!3) (MissingVacant!3 (index!2134 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!9 (_ BitVec 32)) SeekEntryResult!3)

(assert (=> b!1619 (= res!4277 (= (seekEntryOrOpen!0 (select (arr!4 lt!204) lt!211) lt!204 #b00000000000000000000000000001111) (Found!3 lt!211)))))

(assert (=> b!1619 (=> (not res!4277) (not e!193))))

(declare-fun d!75 () Bool)

(declare-fun res!4276 () Bool)

(assert (=> d!75 (=> res!4276 e!194)))

(assert (=> d!75 (= res!4276 (bvsge lt!211 (size!49 lt!204)))))

(assert (=> d!75 (= (arrayForallSeekEntryOrOpenFound!0 lt!211 lt!204 #b00000000000000000000000000001111) e!194)))

(declare-fun b!1616 () Bool)

(assert (=> b!1616 (= e!195 call!22)))

(assert (= (and d!75 (not res!4276)) b!1618))

(assert (= (and b!1618 c!72) b!1619))

(assert (= (and b!1618 (not c!72)) b!1616))

(assert (= (and b!1619 res!4277) b!1617))

(assert (= (or b!1617 b!1616) bm!19))

(declare-fun m!323 () Bool)

(assert (=> bm!19 m!323))

(declare-fun m!325 () Bool)

(assert (=> b!1618 m!325))

(assert (=> b!1618 m!325))

(declare-fun m!327 () Bool)

(assert (=> b!1618 m!327))

(assert (=> b!1619 m!325))

(declare-fun m!329 () Bool)

(assert (=> b!1619 m!329))

(declare-fun m!331 () Bool)

(assert (=> b!1619 m!331))

(assert (=> b!1619 m!325))

(declare-fun m!333 () Bool)

(assert (=> b!1619 m!333))

(assert (=> d!17 d!75))

(declare-fun d!91 () Bool)

(assert (=> d!91 (arrayNoDuplicates!0 lt!196 lt!214 lt!197)))

(declare-fun lt!287 () Unit!1)

(declare-fun choose!111 (array!9 (_ BitVec 32) (_ BitVec 32) List!11) Unit!1)

(assert (=> d!91 (= lt!287 (choose!111 lt!196 lt!214 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!197))))

(assert (=> d!91 (= (size!49 lt!196) (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001))))

(assert (=> d!91 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!196 lt!214 (bvadd #b00000000000000000000000000001111 #b00000000000000000000000000000001) lt!197) lt!287)))

(declare-fun bs!22 () Bool)

(assert (= bs!22 d!91))

(assert (=> bs!22 m!162))

(declare-fun m!343 () Bool)

(assert (=> bs!22 m!343))

(assert (=> d!17 d!91))

(declare-fun d!97 () Bool)

(declare-fun res!4291 () Bool)

(declare-fun e!221 () Bool)

(assert (=> d!97 (=> res!4291 e!221)))

(assert (=> d!97 (= res!4291 (bvsge lt!214 (size!49 lt!196)))))

(assert (=> d!97 (= (arrayNoDuplicates!0 lt!196 lt!214 lt!197) e!221)))

(declare-fun b!1656 () Bool)

(declare-fun e!222 () Bool)

(declare-fun e!220 () Bool)

(assert (=> b!1656 (= e!222 e!220)))

(declare-fun c!85 () Bool)

(assert (=> b!1656 (= c!85 (validKeyInArray!0 (select (arr!4 lt!196) lt!214)))))

(declare-fun b!1657 () Bool)

(declare-fun call!26 () Bool)

(assert (=> b!1657 (= e!220 call!26)))

(declare-fun b!1658 () Bool)

(declare-fun e!223 () Bool)

(declare-fun contains!9 (List!11 (_ BitVec 64)) Bool)

(assert (=> b!1658 (= e!223 (contains!9 lt!197 (select (arr!4 lt!196) lt!214)))))

(declare-fun b!1659 () Bool)

(assert (=> b!1659 (= e!220 call!26)))

(declare-fun b!1660 () Bool)

(assert (=> b!1660 (= e!221 e!222)))

(declare-fun res!4292 () Bool)

(assert (=> b!1660 (=> (not res!4292) (not e!222))))

(assert (=> b!1660 (= res!4292 (not e!223))))

(declare-fun res!4290 () Bool)

(assert (=> b!1660 (=> (not res!4290) (not e!223))))

(assert (=> b!1660 (= res!4290 (validKeyInArray!0 (select (arr!4 lt!196) lt!214)))))

(declare-fun bm!23 () Bool)

(assert (=> bm!23 (= call!26 (arrayNoDuplicates!0 lt!196 (bvadd lt!214 #b00000000000000000000000000000001) (ite c!85 (Cons!7 (select (arr!4 lt!196) lt!214) lt!197) lt!197)))))

(assert (= (and d!97 (not res!4291)) b!1660))

(assert (= (and b!1660 res!4290) b!1658))

(assert (= (and b!1660 res!4292) b!1656))

(assert (= (and b!1656 c!85) b!1657))

(assert (= (and b!1656 (not c!85)) b!1659))

(assert (= (or b!1657 b!1659) bm!23))

(declare-fun m!353 () Bool)

(assert (=> b!1656 m!353))

(assert (=> b!1656 m!353))

(declare-fun m!355 () Bool)

(assert (=> b!1656 m!355))

(assert (=> b!1658 m!353))

(assert (=> b!1658 m!353))

(declare-fun m!357 () Bool)

(assert (=> b!1658 m!357))

(assert (=> b!1660 m!353))

(assert (=> b!1660 m!353))

(assert (=> b!1660 m!355))

(assert (=> bm!23 m!353))

(declare-fun m!359 () Bool)

(assert (=> bm!23 m!359))

(assert (=> d!17 d!97))

(declare-fun d!105 () Bool)

(assert (=> d!105 (arrayForallSeekEntryOrOpenFound!0 lt!211 lt!204 #b00000000000000000000000000001111)))

(declare-fun lt!296 () Unit!1)

(declare-fun choose!34 (array!9 (_ BitVec 32) (_ BitVec 32)) Unit!1)

(assert (=> d!105 (= lt!296 (choose!34 lt!204 #b00000000000000000000000000001111 lt!211))))

(assert (=> d!105 (validMask!0 #b00000000000000000000000000001111)))

(assert (=> d!105 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!204 #b00000000000000000000000000001111 lt!211) lt!296)))

(declare-fun bs!25 () Bool)

(assert (= bs!25 d!105))

(assert (=> bs!25 m!171))

(declare-fun m!375 () Bool)

(assert (=> bs!25 m!375))

(assert (=> bs!25 m!175))

(assert (=> d!17 d!105))

(declare-fun d!111 () Bool)

(assert (=> d!111 (= (validMask!0 #b00000000000000000000000000001111) true)))

(assert (=> d!17 d!111))

(assert (=> d!17 d!45))

(declare-fun d!113 () Bool)

(declare-fun res!4302 () Bool)

(declare-fun e!234 () Bool)

(assert (=> d!113 (=> (not res!4302) (not e!234))))

(assert (=> d!113 (= res!4302 (simpleValid!2 lt!194))))

(assert (=> d!113 (= (valid!8 lt!194) e!234)))

(declare-fun b!1672 () Bool)

(declare-fun res!4303 () Bool)

(assert (=> b!1672 (=> (not res!4303) (not e!234))))

(assert (=> b!1672 (= res!4303 (= (arrayCountValidKeys!0 (_keys!2980 lt!194) #b00000000000000000000000000000000 (size!49 (_keys!2980 lt!194))) (_size!34 lt!194)))))

(declare-fun b!1673 () Bool)

(declare-fun res!4304 () Bool)

(assert (=> b!1673 (=> (not res!4304) (not e!234))))

(assert (=> b!1673 (= res!4304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2980 lt!194) (mask!4133 lt!194)))))

(declare-fun b!1674 () Bool)

(assert (=> b!1674 (= e!234 (arrayNoDuplicates!0 (_keys!2980 lt!194) #b00000000000000000000000000000000 Nil!8))))

(assert (= (and d!113 res!4302) b!1672))

(assert (= (and b!1672 res!4303) b!1673))

(assert (= (and b!1673 res!4304) b!1674))

(declare-fun m!377 () Bool)

(assert (=> d!113 m!377))

(declare-fun m!379 () Bool)

(assert (=> b!1672 m!379))

(declare-fun m!381 () Bool)

(assert (=> b!1673 m!381))

(declare-fun m!383 () Bool)

(assert (=> b!1674 m!383))

(assert (=> d!17 d!113))

(declare-fun d!115 () Bool)

(assert (=> d!115 (= (size!54 (v!1068 (underlying!14 lt!5))) (bvadd (_size!34 (v!1068 (underlying!14 lt!5))) (bvsdiv (bvadd (extraKeys!1501 (v!1068 (underlying!14 lt!5))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!9 d!115))

(declare-fun d!117 () Bool)

(assert (=> d!117 (= (map!22 lt!194) (getCurrentListMap!2 (_keys!2980 lt!194) (_values!1585 lt!194) (mask!4133 lt!194) (extraKeys!1501 lt!194) (zeroValue!1524 lt!194) (minValue!1524 lt!194) #b00000000000000000000000000000000 (defaultEntry!1581 lt!194)))))

(declare-fun bs!26 () Bool)

(assert (= bs!26 d!117))

(declare-fun m!385 () Bool)

(assert (=> bs!26 m!385))

(assert (=> b!1460 d!117))

(check-sat tp_is_empty!5 b_and!14 (not b_lambda!15) (not b!1618) (not b!1503) (not b!1502) (not b!1674) (not d!105) (not d!91) (not bm!19) (not b!1530) (not b!1619) (not b!1658) (not b!1501) (not b!1660) (not b_next!3) (not d!31) (not b!1673) (not b!1481) (not b_lambda!13) (not d!113) (not d!117) (not b!1672) (not bm!23) (not d!45) (not bm!13) (not b!1592) (not b!1656) (not d!49) (not b!1554) (not d!73))
(check-sat b_and!14 (not b_next!3))
