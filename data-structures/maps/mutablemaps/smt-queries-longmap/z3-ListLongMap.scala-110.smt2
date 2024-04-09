; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1820 () Bool)

(assert start!1820)

(declare-fun b_free!465 () Bool)

(declare-fun b_next!465 () Bool)

(assert (=> start!1820 (= b_free!465 (not b_next!465))))

(declare-fun tp!2117 () Bool)

(declare-fun b_and!863 () Bool)

(assert (=> start!1820 (= tp!2117 b_and!863)))

(declare-fun res!10158 () Bool)

(declare-fun e!7609 () Bool)

(assert (=> start!1820 (=> (not res!10158) (not e!7609))))

(declare-fun initialSize!1 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1820 (= res!10158 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(assert (=> start!1820 e!7609))

(assert (=> start!1820 true))

(assert (=> start!1820 tp!2117))

(declare-fun b!12697 () Bool)

(declare-fun e!7610 () Bool)

(assert (=> b!12697 (= e!7609 e!7610)))

(declare-fun res!10159 () Bool)

(assert (=> b!12697 (=> res!10159 e!7610)))

(declare-datatypes ((array!869 0))(
  ( (array!870 (arr!417 (Array (_ BitVec 32) (_ BitVec 64))) (size!480 (_ BitVec 32))) )
))
(declare-datatypes ((V!863 0))(
  ( (V!864 (val!328 Int)) )
))
(declare-datatypes ((ValueCell!219 0))(
  ( (ValueCellFull!219 (v!1384 V!863)) (EmptyCell!219) )
))
(declare-datatypes ((array!871 0))(
  ( (array!872 (arr!418 (Array (_ BitVec 32) ValueCell!219)) (size!481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!24 0))(
  ( (LongMapFixedSize!25 (defaultEntry!1616 Int) (mask!4435 (_ BitVec 32)) (extraKeys!1533 (_ BitVec 32)) (zeroValue!1556 V!863) (minValue!1556 V!863) (_size!43 (_ BitVec 32)) (_keys!3038 array!869) (_values!1617 array!871) (_vacant!43 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!24 0))(
  ( (Cell!25 (v!1385 LongMapFixedSize!24)) )
))
(declare-datatypes ((LongMap!24 0))(
  ( (LongMap!25 (underlying!23 Cell!24)) )
))
(declare-fun lt!3189 () LongMap!24)

(declare-fun valid!17 (LongMap!24) Bool)

(assert (=> b!12697 (= res!10159 (not (valid!17 lt!3189)))))

(declare-fun defaultEntry!183 () Int)

(declare-fun getNewLongMapFixedSize!5 ((_ BitVec 32) Int) LongMapFixedSize!24)

(assert (=> b!12697 (= lt!3189 (LongMap!25 (Cell!25 (getNewLongMapFixedSize!5 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183))))))

(declare-fun b!12698 () Bool)

(declare-fun size!482 (LongMap!24) (_ BitVec 32))

(assert (=> b!12698 (= e!7610 (not (= (size!482 lt!3189) #b00000000000000000000000000000000)))))

(assert (= (and start!1820 res!10158) b!12697))

(assert (= (and b!12697 (not res!10159)) b!12698))

(declare-fun m!8605 () Bool)

(assert (=> start!1820 m!8605))

(declare-fun m!8607 () Bool)

(assert (=> b!12697 m!8607))

(declare-fun m!8609 () Bool)

(assert (=> b!12697 m!8609))

(declare-fun m!8611 () Bool)

(assert (=> b!12698 m!8611))

(check-sat (not start!1820) (not b_next!465) (not b!12697) (not b!12698) b_and!863)
(check-sat b_and!863 (not b_next!465))
(get-model)

(declare-fun d!1823 () Bool)

(declare-fun valid!19 (LongMapFixedSize!24) Bool)

(assert (=> d!1823 (= (valid!17 lt!3189) (valid!19 (v!1385 (underlying!23 lt!3189))))))

(declare-fun bs!486 () Bool)

(assert (= bs!486 d!1823))

(declare-fun m!8627 () Bool)

(assert (=> bs!486 m!8627))

(assert (=> b!12697 d!1823))

(declare-fun d!1829 () Bool)

(declare-fun e!7636 () Bool)

(assert (=> d!1829 e!7636))

(declare-fun res!10180 () Bool)

(assert (=> d!1829 (=> (not res!10180) (not e!7636))))

(declare-fun lt!3331 () LongMapFixedSize!24)

(assert (=> d!1829 (= res!10180 (valid!19 lt!3331))))

(declare-fun lt!3376 () LongMapFixedSize!24)

(assert (=> d!1829 (= lt!3331 lt!3376)))

(declare-datatypes ((Unit!274 0))(
  ( (Unit!275) )
))
(declare-fun lt!3336 () Unit!274)

(declare-fun e!7639 () Unit!274)

(assert (=> d!1829 (= lt!3336 e!7639)))

(declare-fun c!1157 () Bool)

(declare-datatypes ((tuple2!438 0))(
  ( (tuple2!439 (_1!219 (_ BitVec 64)) (_2!219 V!863)) )
))
(declare-datatypes ((List!374 0))(
  ( (Nil!371) (Cons!370 (h!936 tuple2!438) (t!2767 List!374)) )
))
(declare-datatypes ((ListLongMap!375 0))(
  ( (ListLongMap!376 (toList!203 List!374)) )
))
(declare-fun map!241 (LongMapFixedSize!24) ListLongMap!375)

(assert (=> d!1829 (= c!1157 (not (= (map!241 lt!3376) (ListLongMap!376 Nil!371))))))

(declare-fun lt!3371 () Unit!274)

(declare-fun lt!3348 () Unit!274)

(assert (=> d!1829 (= lt!3371 lt!3348)))

(declare-fun lt!3334 () array!869)

(declare-fun lt!3367 () (_ BitVec 32))

(declare-datatypes ((List!376 0))(
  ( (Nil!373) (Cons!372 (h!938 (_ BitVec 64)) (t!2769 List!376)) )
))
(declare-fun lt!3342 () List!376)

(declare-fun arrayNoDuplicates!0 (array!869 (_ BitVec 32) List!376) Bool)

(assert (=> d!1829 (arrayNoDuplicates!0 lt!3334 lt!3367 lt!3342)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!869 (_ BitVec 32) (_ BitVec 32) List!376) Unit!274)

(assert (=> d!1829 (= lt!3348 (lemmaArrayNoDuplicatesInAll0Array!0 lt!3334 lt!3367 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3342))))

(assert (=> d!1829 (= lt!3342 Nil!373)))

(assert (=> d!1829 (= lt!3367 #b00000000000000000000000000000000)))

(assert (=> d!1829 (= lt!3334 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3339 () Unit!274)

(declare-fun lt!3374 () Unit!274)

(assert (=> d!1829 (= lt!3339 lt!3374)))

(declare-fun lt!3373 () (_ BitVec 32))

(declare-fun lt!3358 () array!869)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!869 (_ BitVec 32)) Bool)

(assert (=> d!1829 (arrayForallSeekEntryOrOpenFound!0 lt!3373 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!869 (_ BitVec 32) (_ BitVec 32)) Unit!274)

(assert (=> d!1829 (= lt!3374 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3373))))

(assert (=> d!1829 (= lt!3373 #b00000000000000000000000000000000)))

(assert (=> d!1829 (= lt!3358 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3346 () Unit!274)

(declare-fun lt!3356 () Unit!274)

(assert (=> d!1829 (= lt!3346 lt!3356)))

(declare-fun lt!3337 () array!869)

(declare-fun lt!3369 () (_ BitVec 32))

(declare-fun lt!3349 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!869 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1829 (= (arrayCountValidKeys!0 lt!3337 lt!3369 lt!3349) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!869 (_ BitVec 32) (_ BitVec 32)) Unit!274)

(assert (=> d!1829 (= lt!3356 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!3337 lt!3369 lt!3349))))

(assert (=> d!1829 (= lt!3349 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!1829 (= lt!3369 #b00000000000000000000000000000000)))

(assert (=> d!1829 (= lt!3337 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!80 (Int (_ BitVec 64)) V!863)

(assert (=> d!1829 (= lt!3376 (LongMapFixedSize!25 defaultEntry!183 (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000000 (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!872 ((as const (Array (_ BitVec 32) ValueCell!219)) EmptyCell!219) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!1829 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1829 (= (getNewLongMapFixedSize!5 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183) lt!3331)))

(declare-fun b!12742 () Bool)

(declare-fun e!7640 () Bool)

(declare-fun lt!3363 () array!869)

(declare-fun lt!3351 () tuple2!438)

(declare-fun arrayContainsKey!0 (array!869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!12742 (= e!7640 (arrayContainsKey!0 lt!3363 (_1!219 lt!3351) #b00000000000000000000000000000000))))

(declare-fun b!12744 () Bool)

(declare-fun res!10178 () Bool)

(assert (=> b!12744 (=> (not res!10178) (not e!7636))))

(assert (=> b!12744 (= res!10178 (= (mask!4435 lt!3331) (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(declare-fun b!12746 () Bool)

(declare-fun lt!3354 () (_ BitVec 32))

(assert (=> b!12746 (= e!7640 (ite (= (_1!219 lt!3351) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!3354 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!3354 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!12748 () Bool)

(assert (=> b!12748 (= e!7636 (= (map!241 lt!3331) (ListLongMap!376 Nil!371)))))

(declare-fun b!12750 () Bool)

(declare-fun Unit!282 () Unit!274)

(assert (=> b!12750 (= e!7639 Unit!282)))

(declare-fun b!12752 () Bool)

(declare-fun Unit!283 () Unit!274)

(assert (=> b!12752 (= e!7639 Unit!283)))

(declare-fun head!781 (List!374) tuple2!438)

(assert (=> b!12752 (= lt!3351 (head!781 (toList!203 (map!241 lt!3376))))))

(assert (=> b!12752 (= lt!3363 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> b!12752 (= lt!3354 #b00000000000000000000000000000000)))

(declare-fun lt!3365 () Unit!274)

(declare-fun lemmaKeyInListMapIsInArray!80 (array!869 array!871 (_ BitVec 32) (_ BitVec 32) V!863 V!863 (_ BitVec 64) Int) Unit!274)

(assert (=> b!12752 (= lt!3365 (lemmaKeyInListMapIsInArray!80 lt!3363 (array!872 ((as const (Array (_ BitVec 32) ValueCell!219)) EmptyCell!219) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3354 (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!219 lt!3351) defaultEntry!183))))

(declare-fun c!1155 () Bool)

(assert (=> b!12752 (= c!1155 (and (not (= (_1!219 lt!3351) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!219 lt!3351) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!12752 e!7640))

(declare-fun lt!3344 () Unit!274)

(assert (=> b!12752 (= lt!3344 lt!3365)))

(declare-fun lt!3360 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!869 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!12752 (= lt!3360 (arrayScanForKey!0 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!219 lt!3351) #b00000000000000000000000000000000))))

(assert (=> b!12752 false))

(assert (= (and d!1829 c!1157) b!12752))

(assert (= (and d!1829 (not c!1157)) b!12750))

(assert (= (and b!12752 c!1155) b!12742))

(assert (= (and b!12752 (not c!1155)) b!12746))

(assert (= (and d!1829 res!10180) b!12744))

(assert (= (and b!12744 res!10178) b!12748))

(declare-fun b_lambda!839 () Bool)

(assert (=> (not b_lambda!839) (not d!1829)))

(declare-fun t!2763 () Bool)

(declare-fun tb!388 () Bool)

(assert (=> (and start!1820 (= defaultEntry!183 defaultEntry!183) t!2763) tb!388))

(declare-fun result!611 () Bool)

(declare-fun tp_is_empty!639 () Bool)

(assert (=> tb!388 (= result!611 tp_is_empty!639)))

(assert (=> d!1829 t!2763))

(declare-fun b_and!869 () Bool)

(assert (= b_and!863 (and (=> t!2763 result!611) b_and!869)))

(declare-fun b_lambda!844 () Bool)

(assert (=> (not b_lambda!844) (not b!12752)))

(assert (=> b!12752 t!2763))

(declare-fun b_and!873 () Bool)

(assert (= b_and!869 (and (=> t!2763 result!611) b_and!873)))

(declare-fun m!8629 () Bool)

(assert (=> d!1829 m!8629))

(declare-fun m!8633 () Bool)

(assert (=> d!1829 m!8633))

(declare-fun m!8636 () Bool)

(assert (=> d!1829 m!8636))

(declare-fun m!8639 () Bool)

(assert (=> d!1829 m!8639))

(declare-fun m!8641 () Bool)

(assert (=> d!1829 m!8641))

(declare-fun m!8643 () Bool)

(assert (=> d!1829 m!8643))

(declare-fun m!8647 () Bool)

(assert (=> d!1829 m!8647))

(declare-fun m!8651 () Bool)

(assert (=> d!1829 m!8651))

(assert (=> d!1829 m!8605))

(declare-fun m!8657 () Bool)

(assert (=> d!1829 m!8657))

(declare-fun m!8661 () Bool)

(assert (=> b!12742 m!8661))

(declare-fun m!8665 () Bool)

(assert (=> b!12748 m!8665))

(assert (=> b!12752 m!8641))

(assert (=> b!12752 m!8641))

(declare-fun m!8675 () Bool)

(assert (=> b!12752 m!8675))

(assert (=> b!12752 m!8641))

(assert (=> b!12752 m!8651))

(declare-fun m!8679 () Bool)

(assert (=> b!12752 m!8679))

(declare-fun m!8683 () Bool)

(assert (=> b!12752 m!8683))

(assert (=> b!12697 d!1829))

(declare-fun d!1833 () Bool)

(assert (=> d!1833 (= (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!1820 d!1833))

(declare-fun d!1837 () Bool)

(declare-fun size!487 (LongMapFixedSize!24) (_ BitVec 32))

(assert (=> d!1837 (= (size!482 lt!3189) (size!487 (v!1385 (underlying!23 lt!3189))))))

(declare-fun bs!487 () Bool)

(assert (= bs!487 d!1837))

(declare-fun m!8713 () Bool)

(assert (=> bs!487 m!8713))

(assert (=> b!12698 d!1837))

(declare-fun b_lambda!855 () Bool)

(assert (= b_lambda!844 (or (and start!1820 b_free!465) b_lambda!855)))

(declare-fun b_lambda!857 () Bool)

(assert (= b_lambda!839 (or (and start!1820 b_free!465) b_lambda!857)))

(check-sat b_and!873 (not b_lambda!855) (not b!12742) (not b!12748) (not d!1823) (not b_next!465) (not d!1837) (not b!12752) tp_is_empty!639 (not b_lambda!857) (not d!1829))
(check-sat b_and!873 (not b_next!465))
(get-model)

(declare-fun d!1841 () Bool)

(declare-fun res!10190 () Bool)

(declare-fun e!7646 () Bool)

(assert (=> d!1841 (=> (not res!10190) (not e!7646))))

(declare-fun simpleValid!5 (LongMapFixedSize!24) Bool)

(assert (=> d!1841 (= res!10190 (simpleValid!5 lt!3331))))

(assert (=> d!1841 (= (valid!19 lt!3331) e!7646)))

(declare-fun b!12771 () Bool)

(declare-fun res!10191 () Bool)

(assert (=> b!12771 (=> (not res!10191) (not e!7646))))

(assert (=> b!12771 (= res!10191 (= (arrayCountValidKeys!0 (_keys!3038 lt!3331) #b00000000000000000000000000000000 (size!480 (_keys!3038 lt!3331))) (_size!43 lt!3331)))))

(declare-fun b!12772 () Bool)

(declare-fun res!10192 () Bool)

(assert (=> b!12772 (=> (not res!10192) (not e!7646))))

(assert (=> b!12772 (= res!10192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3038 lt!3331) (mask!4435 lt!3331)))))

(declare-fun b!12773 () Bool)

(assert (=> b!12773 (= e!7646 (arrayNoDuplicates!0 (_keys!3038 lt!3331) #b00000000000000000000000000000000 Nil!373))))

(assert (= (and d!1841 res!10190) b!12771))

(assert (= (and b!12771 res!10191) b!12772))

(assert (= (and b!12772 res!10192) b!12773))

(declare-fun m!8717 () Bool)

(assert (=> d!1841 m!8717))

(declare-fun m!8719 () Bool)

(assert (=> b!12771 m!8719))

(declare-fun m!8721 () Bool)

(assert (=> b!12772 m!8721))

(declare-fun m!8723 () Bool)

(assert (=> b!12773 m!8723))

(assert (=> d!1829 d!1841))

(declare-fun d!1843 () Bool)

(assert (=> d!1843 (= (arrayCountValidKeys!0 lt!3337 lt!3369 lt!3349) #b00000000000000000000000000000000)))

(declare-fun lt!3402 () Unit!274)

(declare-fun choose!59 (array!869 (_ BitVec 32) (_ BitVec 32)) Unit!274)

(assert (=> d!1843 (= lt!3402 (choose!59 lt!3337 lt!3369 lt!3349))))

(assert (=> d!1843 (bvslt (size!480 lt!3337) #b01111111111111111111111111111111)))

(assert (=> d!1843 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!3337 lt!3369 lt!3349) lt!3402)))

(declare-fun bs!489 () Bool)

(assert (= bs!489 d!1843))

(assert (=> bs!489 m!8643))

(declare-fun m!8725 () Bool)

(assert (=> bs!489 m!8725))

(assert (=> d!1829 d!1843))

(assert (=> d!1829 d!1833))

(declare-fun d!1845 () Bool)

(assert (=> d!1845 (arrayNoDuplicates!0 lt!3334 lt!3367 lt!3342)))

(declare-fun lt!3405 () Unit!274)

(declare-fun choose!111 (array!869 (_ BitVec 32) (_ BitVec 32) List!376) Unit!274)

(assert (=> d!1845 (= lt!3405 (choose!111 lt!3334 lt!3367 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3342))))

(assert (=> d!1845 (= (size!480 lt!3334) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!1845 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!3334 lt!3367 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3342) lt!3405)))

(declare-fun bs!490 () Bool)

(assert (= bs!490 d!1845))

(assert (=> bs!490 m!8647))

(declare-fun m!8727 () Bool)

(assert (=> bs!490 m!8727))

(assert (=> d!1829 d!1845))

(declare-fun d!1847 () Bool)

(declare-fun lt!3408 () (_ BitVec 32))

(assert (=> d!1847 (and (bvsge lt!3408 #b00000000000000000000000000000000) (bvsle lt!3408 (bvsub (size!480 lt!3337) lt!3369)))))

(declare-fun e!7657 () (_ BitVec 32))

(assert (=> d!1847 (= lt!3408 e!7657)))

(declare-fun c!1166 () Bool)

(assert (=> d!1847 (= c!1166 (bvsge lt!3369 lt!3349))))

(assert (=> d!1847 (and (bvsle lt!3369 lt!3349) (bvsge lt!3369 #b00000000000000000000000000000000) (bvsle lt!3349 (size!480 lt!3337)))))

(assert (=> d!1847 (= (arrayCountValidKeys!0 lt!3337 lt!3369 lt!3349) lt!3408)))

(declare-fun b!12788 () Bool)

(declare-fun e!7658 () (_ BitVec 32))

(assert (=> b!12788 (= e!7657 e!7658)))

(declare-fun c!1165 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!12788 (= c!1165 (validKeyInArray!0 (select (arr!417 lt!3337) lt!3369)))))

(declare-fun call!323 () (_ BitVec 32))

(declare-fun bm!320 () Bool)

(assert (=> bm!320 (= call!323 (arrayCountValidKeys!0 lt!3337 (bvadd lt!3369 #b00000000000000000000000000000001) lt!3349))))

(declare-fun b!12789 () Bool)

(assert (=> b!12789 (= e!7658 (bvadd #b00000000000000000000000000000001 call!323))))

(declare-fun b!12790 () Bool)

(assert (=> b!12790 (= e!7657 #b00000000000000000000000000000000)))

(declare-fun b!12791 () Bool)

(assert (=> b!12791 (= e!7658 call!323)))

(assert (= (and d!1847 c!1166) b!12790))

(assert (= (and d!1847 (not c!1166)) b!12788))

(assert (= (and b!12788 c!1165) b!12789))

(assert (= (and b!12788 (not c!1165)) b!12791))

(assert (= (or b!12789 b!12791) bm!320))

(declare-fun m!8733 () Bool)

(assert (=> b!12788 m!8733))

(assert (=> b!12788 m!8733))

(declare-fun m!8735 () Bool)

(assert (=> b!12788 m!8735))

(declare-fun m!8737 () Bool)

(assert (=> bm!320 m!8737))

(assert (=> d!1829 d!1847))

(declare-fun b!12808 () Bool)

(declare-fun e!7670 () Bool)

(declare-fun e!7669 () Bool)

(assert (=> b!12808 (= e!7670 e!7669)))

(declare-fun c!1169 () Bool)

(assert (=> b!12808 (= c!1169 (validKeyInArray!0 (select (arr!417 lt!3334) lt!3367)))))

(declare-fun b!12809 () Bool)

(declare-fun call!326 () Bool)

(assert (=> b!12809 (= e!7669 call!326)))

(declare-fun bm!323 () Bool)

(assert (=> bm!323 (= call!326 (arrayNoDuplicates!0 lt!3334 (bvadd lt!3367 #b00000000000000000000000000000001) (ite c!1169 (Cons!372 (select (arr!417 lt!3334) lt!3367) lt!3342) lt!3342)))))

(declare-fun d!1853 () Bool)

(declare-fun res!10211 () Bool)

(declare-fun e!7672 () Bool)

(assert (=> d!1853 (=> res!10211 e!7672)))

(assert (=> d!1853 (= res!10211 (bvsge lt!3367 (size!480 lt!3334)))))

(assert (=> d!1853 (= (arrayNoDuplicates!0 lt!3334 lt!3367 lt!3342) e!7672)))

(declare-fun b!12810 () Bool)

(assert (=> b!12810 (= e!7669 call!326)))

(declare-fun e!7671 () Bool)

(declare-fun b!12811 () Bool)

(declare-fun contains!179 (List!376 (_ BitVec 64)) Bool)

(assert (=> b!12811 (= e!7671 (contains!179 lt!3342 (select (arr!417 lt!3334) lt!3367)))))

(declare-fun b!12812 () Bool)

(assert (=> b!12812 (= e!7672 e!7670)))

(declare-fun res!10212 () Bool)

(assert (=> b!12812 (=> (not res!10212) (not e!7670))))

(assert (=> b!12812 (= res!10212 (not e!7671))))

(declare-fun res!10213 () Bool)

(assert (=> b!12812 (=> (not res!10213) (not e!7671))))

(assert (=> b!12812 (= res!10213 (validKeyInArray!0 (select (arr!417 lt!3334) lt!3367)))))

(assert (= (and d!1853 (not res!10211)) b!12812))

(assert (= (and b!12812 res!10213) b!12811))

(assert (= (and b!12812 res!10212) b!12808))

(assert (= (and b!12808 c!1169) b!12809))

(assert (= (and b!12808 (not c!1169)) b!12810))

(assert (= (or b!12809 b!12810) bm!323))

(declare-fun m!8743 () Bool)

(assert (=> b!12808 m!8743))

(assert (=> b!12808 m!8743))

(declare-fun m!8747 () Bool)

(assert (=> b!12808 m!8747))

(assert (=> bm!323 m!8743))

(declare-fun m!8751 () Bool)

(assert (=> bm!323 m!8751))

(assert (=> b!12811 m!8743))

(assert (=> b!12811 m!8743))

(declare-fun m!8753 () Bool)

(assert (=> b!12811 m!8753))

(assert (=> b!12812 m!8743))

(assert (=> b!12812 m!8743))

(assert (=> b!12812 m!8747))

(assert (=> d!1829 d!1853))

(declare-fun d!1859 () Bool)

(assert (=> d!1859 (arrayForallSeekEntryOrOpenFound!0 lt!3373 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(declare-fun lt!3411 () Unit!274)

(declare-fun choose!34 (array!869 (_ BitVec 32) (_ BitVec 32)) Unit!274)

(assert (=> d!1859 (= lt!3411 (choose!34 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3373))))

(assert (=> d!1859 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1859 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3373) lt!3411)))

(declare-fun bs!491 () Bool)

(assert (= bs!491 d!1859))

(assert (=> bs!491 m!8633))

(declare-fun m!8755 () Bool)

(assert (=> bs!491 m!8755))

(assert (=> bs!491 m!8605))

(assert (=> d!1829 d!1859))

(declare-fun d!1863 () Bool)

(declare-fun res!10227 () Bool)

(declare-fun e!7690 () Bool)

(assert (=> d!1863 (=> res!10227 e!7690)))

(assert (=> d!1863 (= res!10227 (bvsge lt!3373 (size!480 lt!3358)))))

(assert (=> d!1863 (= (arrayForallSeekEntryOrOpenFound!0 lt!3373 lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001)) e!7690)))

(declare-fun bm!326 () Bool)

(declare-fun call!329 () Bool)

(assert (=> bm!326 (= call!329 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!3373 #b00000000000000000000000000000001) lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(declare-fun b!12834 () Bool)

(declare-fun e!7689 () Bool)

(assert (=> b!12834 (= e!7690 e!7689)))

(declare-fun c!1174 () Bool)

(assert (=> b!12834 (= c!1174 (validKeyInArray!0 (select (arr!417 lt!3358) lt!3373)))))

(declare-fun b!12835 () Bool)

(assert (=> b!12835 (= e!7689 call!329)))

(declare-fun b!12836 () Bool)

(declare-fun e!7688 () Bool)

(assert (=> b!12836 (= e!7688 call!329)))

(declare-fun b!12837 () Bool)

(assert (=> b!12837 (= e!7689 e!7688)))

(declare-fun lt!3422 () (_ BitVec 64))

(assert (=> b!12837 (= lt!3422 (select (arr!417 lt!3358) lt!3373))))

(declare-fun lt!3420 () Unit!274)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!869 (_ BitVec 64) (_ BitVec 32)) Unit!274)

(assert (=> b!12837 (= lt!3420 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!3358 lt!3422 lt!3373))))

(assert (=> b!12837 (arrayContainsKey!0 lt!3358 lt!3422 #b00000000000000000000000000000000)))

(declare-fun lt!3421 () Unit!274)

(assert (=> b!12837 (= lt!3421 lt!3420)))

(declare-fun res!10228 () Bool)

(declare-datatypes ((SeekEntryResult!45 0))(
  ( (MissingZero!45 (index!2299 (_ BitVec 32))) (Found!45 (index!2300 (_ BitVec 32))) (Intermediate!45 (undefined!857 Bool) (index!2301 (_ BitVec 32)) (x!3361 (_ BitVec 32))) (Undefined!45) (MissingVacant!45 (index!2302 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!869 (_ BitVec 32)) SeekEntryResult!45)

(assert (=> b!12837 (= res!10228 (= (seekEntryOrOpen!0 (select (arr!417 lt!3358) lt!3373) lt!3358 (bvsub initialSize!1 #b00000000000000000000000000000001)) (Found!45 lt!3373)))))

(assert (=> b!12837 (=> (not res!10228) (not e!7688))))

(assert (= (and d!1863 (not res!10227)) b!12834))

(assert (= (and b!12834 c!1174) b!12837))

(assert (= (and b!12834 (not c!1174)) b!12835))

(assert (= (and b!12837 res!10228) b!12836))

(assert (= (or b!12836 b!12835) bm!326))

(declare-fun m!8763 () Bool)

(assert (=> bm!326 m!8763))

(declare-fun m!8765 () Bool)

(assert (=> b!12834 m!8765))

(assert (=> b!12834 m!8765))

(declare-fun m!8767 () Bool)

(assert (=> b!12834 m!8767))

(assert (=> b!12837 m!8765))

(declare-fun m!8769 () Bool)

(assert (=> b!12837 m!8769))

(declare-fun m!8771 () Bool)

(assert (=> b!12837 m!8771))

(assert (=> b!12837 m!8765))

(declare-fun m!8773 () Bool)

(assert (=> b!12837 m!8773))

(assert (=> d!1829 d!1863))

(declare-fun d!1871 () Bool)

(declare-fun getCurrentListMap!108 (array!869 array!871 (_ BitVec 32) (_ BitVec 32) V!863 V!863 (_ BitVec 32) Int) ListLongMap!375)

(assert (=> d!1871 (= (map!241 lt!3376) (getCurrentListMap!108 (_keys!3038 lt!3376) (_values!1617 lt!3376) (mask!4435 lt!3376) (extraKeys!1533 lt!3376) (zeroValue!1556 lt!3376) (minValue!1556 lt!3376) #b00000000000000000000000000000000 (defaultEntry!1616 lt!3376)))))

(declare-fun bs!495 () Bool)

(assert (= bs!495 d!1871))

(declare-fun m!8781 () Bool)

(assert (=> bs!495 m!8781))

(assert (=> d!1829 d!1871))

(declare-fun d!1881 () Bool)

(assert (=> d!1881 (= (map!241 lt!3331) (getCurrentListMap!108 (_keys!3038 lt!3331) (_values!1617 lt!3331) (mask!4435 lt!3331) (extraKeys!1533 lt!3331) (zeroValue!1556 lt!3331) (minValue!1556 lt!3331) #b00000000000000000000000000000000 (defaultEntry!1616 lt!3331)))))

(declare-fun bs!496 () Bool)

(assert (= bs!496 d!1881))

(declare-fun m!8785 () Bool)

(assert (=> bs!496 m!8785))

(assert (=> b!12748 d!1881))

(declare-fun d!1883 () Bool)

(declare-fun res!10233 () Bool)

(declare-fun e!7699 () Bool)

(assert (=> d!1883 (=> res!10233 e!7699)))

(assert (=> d!1883 (= res!10233 (= (select (arr!417 lt!3363) #b00000000000000000000000000000000) (_1!219 lt!3351)))))

(assert (=> d!1883 (= (arrayContainsKey!0 lt!3363 (_1!219 lt!3351) #b00000000000000000000000000000000) e!7699)))

(declare-fun b!12850 () Bool)

(declare-fun e!7700 () Bool)

(assert (=> b!12850 (= e!7699 e!7700)))

(declare-fun res!10234 () Bool)

(assert (=> b!12850 (=> (not res!10234) (not e!7700))))

(assert (=> b!12850 (= res!10234 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!480 lt!3363)))))

(declare-fun b!12851 () Bool)

(assert (=> b!12851 (= e!7700 (arrayContainsKey!0 lt!3363 (_1!219 lt!3351) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1883 (not res!10233)) b!12850))

(assert (= (and b!12850 res!10234) b!12851))

(declare-fun m!8791 () Bool)

(assert (=> d!1883 m!8791))

(declare-fun m!8793 () Bool)

(assert (=> b!12851 m!8793))

(assert (=> b!12742 d!1883))

(declare-fun d!1887 () Bool)

(declare-fun res!10235 () Bool)

(declare-fun e!7701 () Bool)

(assert (=> d!1887 (=> (not res!10235) (not e!7701))))

(assert (=> d!1887 (= res!10235 (simpleValid!5 (v!1385 (underlying!23 lt!3189))))))

(assert (=> d!1887 (= (valid!19 (v!1385 (underlying!23 lt!3189))) e!7701)))

(declare-fun b!12852 () Bool)

(declare-fun res!10236 () Bool)

(assert (=> b!12852 (=> (not res!10236) (not e!7701))))

(assert (=> b!12852 (= res!10236 (= (arrayCountValidKeys!0 (_keys!3038 (v!1385 (underlying!23 lt!3189))) #b00000000000000000000000000000000 (size!480 (_keys!3038 (v!1385 (underlying!23 lt!3189))))) (_size!43 (v!1385 (underlying!23 lt!3189)))))))

(declare-fun b!12853 () Bool)

(declare-fun res!10237 () Bool)

(assert (=> b!12853 (=> (not res!10237) (not e!7701))))

(assert (=> b!12853 (= res!10237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3038 (v!1385 (underlying!23 lt!3189))) (mask!4435 (v!1385 (underlying!23 lt!3189)))))))

(declare-fun b!12854 () Bool)

(assert (=> b!12854 (= e!7701 (arrayNoDuplicates!0 (_keys!3038 (v!1385 (underlying!23 lt!3189))) #b00000000000000000000000000000000 Nil!373))))

(assert (= (and d!1887 res!10235) b!12852))

(assert (= (and b!12852 res!10236) b!12853))

(assert (= (and b!12853 res!10237) b!12854))

(declare-fun m!8795 () Bool)

(assert (=> d!1887 m!8795))

(declare-fun m!8797 () Bool)

(assert (=> b!12852 m!8797))

(declare-fun m!8799 () Bool)

(assert (=> b!12853 m!8799))

(declare-fun m!8801 () Bool)

(assert (=> b!12854 m!8801))

(assert (=> d!1823 d!1887))

(declare-fun d!1889 () Bool)

(assert (=> d!1889 (= (size!487 (v!1385 (underlying!23 lt!3189))) (bvadd (_size!43 (v!1385 (underlying!23 lt!3189))) (bvsdiv (bvadd (extraKeys!1533 (v!1385 (underlying!23 lt!3189))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!1837 d!1889))

(declare-fun d!1891 () Bool)

(assert (=> d!1891 (= (head!781 (toList!203 (map!241 lt!3376))) (h!936 (toList!203 (map!241 lt!3376))))))

(assert (=> b!12752 d!1891))

(assert (=> b!12752 d!1871))

(declare-fun d!1893 () Bool)

(declare-fun e!7718 () Bool)

(assert (=> d!1893 e!7718))

(declare-fun c!1189 () Bool)

(assert (=> d!1893 (= c!1189 (and (not (= (_1!219 lt!3351) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!219 lt!3351) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!3443 () Unit!274)

(declare-fun choose!168 (array!869 array!871 (_ BitVec 32) (_ BitVec 32) V!863 V!863 (_ BitVec 64) Int) Unit!274)

(assert (=> d!1893 (= lt!3443 (choose!168 lt!3363 (array!872 ((as const (Array (_ BitVec 32) ValueCell!219)) EmptyCell!219) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3354 (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!219 lt!3351) defaultEntry!183))))

(assert (=> d!1893 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1893 (= (lemmaKeyInListMapIsInArray!80 lt!3363 (array!872 ((as const (Array (_ BitVec 32) ValueCell!219)) EmptyCell!219) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3354 (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!80 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!219 lt!3351) defaultEntry!183) lt!3443)))

(declare-fun b!12881 () Bool)

(assert (=> b!12881 (= e!7718 (arrayContainsKey!0 lt!3363 (_1!219 lt!3351) #b00000000000000000000000000000000))))

(declare-fun b!12882 () Bool)

(assert (=> b!12882 (= e!7718 (ite (= (_1!219 lt!3351) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!3354 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!3354 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1893 c!1189) b!12881))

(assert (= (and d!1893 (not c!1189)) b!12882))

(assert (=> d!1893 m!8641))

(assert (=> d!1893 m!8641))

(declare-fun m!8817 () Bool)

(assert (=> d!1893 m!8817))

(assert (=> d!1893 m!8605))

(assert (=> b!12881 m!8661))

(assert (=> b!12752 d!1893))

(declare-fun d!1899 () Bool)

(declare-fun lt!3452 () (_ BitVec 32))

(assert (=> d!1899 (and (or (bvslt lt!3452 #b00000000000000000000000000000000) (bvsge lt!3452 (size!480 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!3452 #b00000000000000000000000000000000) (bvslt lt!3452 (size!480 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!3452 #b00000000000000000000000000000000) (bvslt lt!3452 (size!480 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!417 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!3452) (_1!219 lt!3351)))))

(declare-fun e!7734 () (_ BitVec 32))

(assert (=> d!1899 (= lt!3452 e!7734)))

(declare-fun c!1199 () Bool)

(assert (=> d!1899 (= c!1199 (= (select (arr!417 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!219 lt!3351)))))

(assert (=> d!1899 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!480 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!480 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!1899 (= (arrayScanForKey!0 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!219 lt!3351) #b00000000000000000000000000000000) lt!3452)))

(declare-fun b!12907 () Bool)

(assert (=> b!12907 (= e!7734 #b00000000000000000000000000000000)))

(declare-fun b!12908 () Bool)

(assert (=> b!12908 (= e!7734 (arrayScanForKey!0 (array!870 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!219 lt!3351) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1899 c!1199) b!12907))

(assert (= (and d!1899 (not c!1199)) b!12908))

(declare-fun m!8827 () Bool)

(assert (=> d!1899 m!8827))

(declare-fun m!8829 () Bool)

(assert (=> d!1899 m!8829))

(declare-fun m!8831 () Bool)

(assert (=> b!12908 m!8831))

(assert (=> b!12752 d!1899))

(check-sat (not b!12812) (not d!1887) (not d!1845) (not b!12853) (not b_next!465) (not b!12881) (not bm!326) (not bm!323) (not d!1871) (not bm!320) tp_is_empty!639 (not b!12808) (not b!12837) (not b_lambda!857) (not b!12852) (not d!1881) b_and!873 (not b!12772) (not b!12908) (not b_lambda!855) (not b!12771) (not d!1859) (not b!12851) (not d!1893) (not d!1841) (not b!12773) (not b!12834) (not b!12811) (not d!1843) (not b!12788) (not b!12854))
(check-sat b_and!873 (not b_next!465))
