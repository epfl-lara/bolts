; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48294 () Bool)

(assert start!48294)

(declare-fun b!530977 () Bool)

(declare-fun res!326763 () Bool)

(declare-fun e!309280 () Bool)

(assert (=> b!530977 (=> (not res!326763) (not e!309280))))

(declare-datatypes ((array!33642 0))(
  ( (array!33643 (arr!16162 (Array (_ BitVec 32) (_ BitVec 64))) (size!16526 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33642)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530977 (= res!326763 (validKeyInArray!0 (select (arr!16162 a!3154) j!147)))))

(declare-fun b!530978 () Bool)

(declare-fun res!326761 () Bool)

(assert (=> b!530978 (=> (not res!326761) (not e!309280))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!530978 (= res!326761 (validKeyInArray!0 k0!1998))))

(declare-fun b!530979 () Bool)

(declare-fun res!326768 () Bool)

(assert (=> b!530979 (=> (not res!326768) (not e!309280))))

(declare-fun arrayContainsKey!0 (array!33642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530979 (= res!326768 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530980 () Bool)

(declare-fun e!309278 () Bool)

(assert (=> b!530980 (= e!309280 e!309278)))

(declare-fun res!326762 () Bool)

(assert (=> b!530980 (=> (not res!326762) (not e!309278))))

(declare-datatypes ((SeekEntryResult!4627 0))(
  ( (MissingZero!4627 (index!20732 (_ BitVec 32))) (Found!4627 (index!20733 (_ BitVec 32))) (Intermediate!4627 (undefined!5439 Bool) (index!20734 (_ BitVec 32)) (x!49740 (_ BitVec 32))) (Undefined!4627) (MissingVacant!4627 (index!20735 (_ BitVec 32))) )
))
(declare-fun lt!244859 () SeekEntryResult!4627)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530980 (= res!326762 (or (= lt!244859 (MissingZero!4627 i!1153)) (= lt!244859 (MissingVacant!4627 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33642 (_ BitVec 32)) SeekEntryResult!4627)

(assert (=> b!530980 (= lt!244859 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530981 () Bool)

(declare-fun res!326764 () Bool)

(assert (=> b!530981 (=> (not res!326764) (not e!309278))))

(assert (=> b!530981 (= res!326764 (and (bvsle #b00000000000000000000000000000000 (size!16526 a!3154)) (bvslt (size!16526 a!3154) #b01111111111111111111111111111111)))))

(declare-fun res!326767 () Bool)

(assert (=> start!48294 (=> (not res!326767) (not e!309280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48294 (= res!326767 (validMask!0 mask!3216))))

(assert (=> start!48294 e!309280))

(assert (=> start!48294 true))

(declare-fun array_inv!11936 (array!33642) Bool)

(assert (=> start!48294 (array_inv!11936 a!3154)))

(declare-fun b!530982 () Bool)

(declare-fun res!326766 () Bool)

(assert (=> b!530982 (=> (not res!326766) (not e!309280))))

(assert (=> b!530982 (= res!326766 (and (= (size!16526 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16526 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16526 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530983 () Bool)

(declare-fun res!326765 () Bool)

(assert (=> b!530983 (=> (not res!326765) (not e!309278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33642 (_ BitVec 32)) Bool)

(assert (=> b!530983 (= res!326765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530984 () Bool)

(declare-datatypes ((List!10334 0))(
  ( (Nil!10331) (Cons!10330 (h!11270 (_ BitVec 64)) (t!16570 List!10334)) )
))
(declare-fun noDuplicate!215 (List!10334) Bool)

(assert (=> b!530984 (= e!309278 (not (noDuplicate!215 Nil!10331)))))

(assert (= (and start!48294 res!326767) b!530982))

(assert (= (and b!530982 res!326766) b!530977))

(assert (= (and b!530977 res!326763) b!530978))

(assert (= (and b!530978 res!326761) b!530979))

(assert (= (and b!530979 res!326768) b!530980))

(assert (= (and b!530980 res!326762) b!530983))

(assert (= (and b!530983 res!326765) b!530981))

(assert (= (and b!530981 res!326764) b!530984))

(declare-fun m!511489 () Bool)

(assert (=> b!530983 m!511489))

(declare-fun m!511491 () Bool)

(assert (=> start!48294 m!511491))

(declare-fun m!511493 () Bool)

(assert (=> start!48294 m!511493))

(declare-fun m!511495 () Bool)

(assert (=> b!530977 m!511495))

(assert (=> b!530977 m!511495))

(declare-fun m!511497 () Bool)

(assert (=> b!530977 m!511497))

(declare-fun m!511499 () Bool)

(assert (=> b!530979 m!511499))

(declare-fun m!511501 () Bool)

(assert (=> b!530984 m!511501))

(declare-fun m!511503 () Bool)

(assert (=> b!530980 m!511503))

(declare-fun m!511505 () Bool)

(assert (=> b!530978 m!511505))

(check-sat (not b!530977) (not b!530980) (not b!530979) (not b!530983) (not start!48294) (not b!530984) (not b!530978))
(check-sat)
(get-model)

(declare-fun d!81095 () Bool)

(assert (=> d!81095 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48294 d!81095))

(declare-fun d!81107 () Bool)

(assert (=> d!81107 (= (array_inv!11936 a!3154) (bvsge (size!16526 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48294 d!81107))

(declare-fun d!81109 () Bool)

(assert (=> d!81109 (= (validKeyInArray!0 (select (arr!16162 a!3154) j!147)) (and (not (= (select (arr!16162 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16162 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530977 d!81109))

(declare-fun d!81111 () Bool)

(assert (=> d!81111 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530978 d!81111))

(declare-fun b!531053 () Bool)

(declare-fun e!309320 () Bool)

(declare-fun e!309321 () Bool)

(assert (=> b!531053 (= e!309320 e!309321)))

(declare-fun c!62432 () Bool)

(assert (=> b!531053 (= c!62432 (validKeyInArray!0 (select (arr!16162 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!531054 () Bool)

(declare-fun call!31946 () Bool)

(assert (=> b!531054 (= e!309321 call!31946)))

(declare-fun b!531056 () Bool)

(declare-fun e!309322 () Bool)

(assert (=> b!531056 (= e!309322 call!31946)))

(declare-fun bm!31943 () Bool)

(assert (=> bm!31943 (= call!31946 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!531055 () Bool)

(assert (=> b!531055 (= e!309321 e!309322)))

(declare-fun lt!244887 () (_ BitVec 64))

(assert (=> b!531055 (= lt!244887 (select (arr!16162 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16802 0))(
  ( (Unit!16803) )
))
(declare-fun lt!244889 () Unit!16802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33642 (_ BitVec 64) (_ BitVec 32)) Unit!16802)

(assert (=> b!531055 (= lt!244889 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244887 #b00000000000000000000000000000000))))

(assert (=> b!531055 (arrayContainsKey!0 a!3154 lt!244887 #b00000000000000000000000000000000)))

(declare-fun lt!244888 () Unit!16802)

(assert (=> b!531055 (= lt!244888 lt!244889)))

(declare-fun res!326810 () Bool)

(assert (=> b!531055 (= res!326810 (= (seekEntryOrOpen!0 (select (arr!16162 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4627 #b00000000000000000000000000000000)))))

(assert (=> b!531055 (=> (not res!326810) (not e!309322))))

(declare-fun d!81113 () Bool)

(declare-fun res!326809 () Bool)

(assert (=> d!81113 (=> res!326809 e!309320)))

(assert (=> d!81113 (= res!326809 (bvsge #b00000000000000000000000000000000 (size!16526 a!3154)))))

(assert (=> d!81113 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309320)))

(assert (= (and d!81113 (not res!326809)) b!531053))

(assert (= (and b!531053 c!62432) b!531055))

(assert (= (and b!531053 (not c!62432)) b!531054))

(assert (= (and b!531055 res!326810) b!531056))

(assert (= (or b!531056 b!531054) bm!31943))

(declare-fun m!511555 () Bool)

(assert (=> b!531053 m!511555))

(assert (=> b!531053 m!511555))

(declare-fun m!511557 () Bool)

(assert (=> b!531053 m!511557))

(declare-fun m!511559 () Bool)

(assert (=> bm!31943 m!511559))

(assert (=> b!531055 m!511555))

(declare-fun m!511561 () Bool)

(assert (=> b!531055 m!511561))

(declare-fun m!511563 () Bool)

(assert (=> b!531055 m!511563))

(assert (=> b!531055 m!511555))

(declare-fun m!511565 () Bool)

(assert (=> b!531055 m!511565))

(assert (=> b!530983 d!81113))

(declare-fun d!81117 () Bool)

(declare-fun res!326819 () Bool)

(declare-fun e!309339 () Bool)

(assert (=> d!81117 (=> res!326819 e!309339)))

(get-info :version)

(assert (=> d!81117 (= res!326819 ((_ is Nil!10331) Nil!10331))))

(assert (=> d!81117 (= (noDuplicate!215 Nil!10331) e!309339)))

(declare-fun b!531081 () Bool)

(declare-fun e!309340 () Bool)

(assert (=> b!531081 (= e!309339 e!309340)))

(declare-fun res!326820 () Bool)

(assert (=> b!531081 (=> (not res!326820) (not e!309340))))

(declare-fun contains!2787 (List!10334 (_ BitVec 64)) Bool)

(assert (=> b!531081 (= res!326820 (not (contains!2787 (t!16570 Nil!10331) (h!11270 Nil!10331))))))

(declare-fun b!531082 () Bool)

(assert (=> b!531082 (= e!309340 (noDuplicate!215 (t!16570 Nil!10331)))))

(assert (= (and d!81117 (not res!326819)) b!531081))

(assert (= (and b!531081 res!326820) b!531082))

(declare-fun m!511567 () Bool)

(assert (=> b!531081 m!511567))

(declare-fun m!511569 () Bool)

(assert (=> b!531082 m!511569))

(assert (=> b!530984 d!81117))

(declare-fun d!81119 () Bool)

(declare-fun res!326827 () Bool)

(declare-fun e!309351 () Bool)

(assert (=> d!81119 (=> res!326827 e!309351)))

(assert (=> d!81119 (= res!326827 (= (select (arr!16162 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81119 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!309351)))

(declare-fun b!531097 () Bool)

(declare-fun e!309352 () Bool)

(assert (=> b!531097 (= e!309351 e!309352)))

(declare-fun res!326828 () Bool)

(assert (=> b!531097 (=> (not res!326828) (not e!309352))))

(assert (=> b!531097 (= res!326828 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16526 a!3154)))))

(declare-fun b!531098 () Bool)

(assert (=> b!531098 (= e!309352 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81119 (not res!326827)) b!531097))

(assert (= (and b!531097 res!326828) b!531098))

(assert (=> d!81119 m!511555))

(declare-fun m!511583 () Bool)

(assert (=> b!531098 m!511583))

(assert (=> b!530979 d!81119))

(declare-fun d!81123 () Bool)

(declare-fun lt!244916 () SeekEntryResult!4627)

(assert (=> d!81123 (and (or ((_ is Undefined!4627) lt!244916) (not ((_ is Found!4627) lt!244916)) (and (bvsge (index!20733 lt!244916) #b00000000000000000000000000000000) (bvslt (index!20733 lt!244916) (size!16526 a!3154)))) (or ((_ is Undefined!4627) lt!244916) ((_ is Found!4627) lt!244916) (not ((_ is MissingZero!4627) lt!244916)) (and (bvsge (index!20732 lt!244916) #b00000000000000000000000000000000) (bvslt (index!20732 lt!244916) (size!16526 a!3154)))) (or ((_ is Undefined!4627) lt!244916) ((_ is Found!4627) lt!244916) ((_ is MissingZero!4627) lt!244916) (not ((_ is MissingVacant!4627) lt!244916)) (and (bvsge (index!20735 lt!244916) #b00000000000000000000000000000000) (bvslt (index!20735 lt!244916) (size!16526 a!3154)))) (or ((_ is Undefined!4627) lt!244916) (ite ((_ is Found!4627) lt!244916) (= (select (arr!16162 a!3154) (index!20733 lt!244916)) k0!1998) (ite ((_ is MissingZero!4627) lt!244916) (= (select (arr!16162 a!3154) (index!20732 lt!244916)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4627) lt!244916) (= (select (arr!16162 a!3154) (index!20735 lt!244916)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!309379 () SeekEntryResult!4627)

(assert (=> d!81123 (= lt!244916 e!309379)))

(declare-fun c!62451 () Bool)

(declare-fun lt!244914 () SeekEntryResult!4627)

(assert (=> d!81123 (= c!62451 (and ((_ is Intermediate!4627) lt!244914) (undefined!5439 lt!244914)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33642 (_ BitVec 32)) SeekEntryResult!4627)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81123 (= lt!244914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81123 (validMask!0 mask!3216)))

(assert (=> d!81123 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!244916)))

(declare-fun b!531129 () Bool)

(declare-fun e!309378 () SeekEntryResult!4627)

(assert (=> b!531129 (= e!309378 (MissingZero!4627 (index!20734 lt!244914)))))

(declare-fun b!531130 () Bool)

(declare-fun c!62452 () Bool)

(declare-fun lt!244915 () (_ BitVec 64))

(assert (=> b!531130 (= c!62452 (= lt!244915 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309377 () SeekEntryResult!4627)

(assert (=> b!531130 (= e!309377 e!309378)))

(declare-fun b!531131 () Bool)

(assert (=> b!531131 (= e!309377 (Found!4627 (index!20734 lt!244914)))))

(declare-fun b!531132 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33642 (_ BitVec 32)) SeekEntryResult!4627)

(assert (=> b!531132 (= e!309378 (seekKeyOrZeroReturnVacant!0 (x!49740 lt!244914) (index!20734 lt!244914) (index!20734 lt!244914) k0!1998 a!3154 mask!3216))))

(declare-fun b!531133 () Bool)

(assert (=> b!531133 (= e!309379 e!309377)))

(assert (=> b!531133 (= lt!244915 (select (arr!16162 a!3154) (index!20734 lt!244914)))))

(declare-fun c!62453 () Bool)

(assert (=> b!531133 (= c!62453 (= lt!244915 k0!1998))))

(declare-fun b!531134 () Bool)

(assert (=> b!531134 (= e!309379 Undefined!4627)))

(assert (= (and d!81123 c!62451) b!531134))

(assert (= (and d!81123 (not c!62451)) b!531133))

(assert (= (and b!531133 c!62453) b!531131))

(assert (= (and b!531133 (not c!62453)) b!531130))

(assert (= (and b!531130 c!62452) b!531129))

(assert (= (and b!531130 (not c!62452)) b!531132))

(assert (=> d!81123 m!511491))

(declare-fun m!511607 () Bool)

(assert (=> d!81123 m!511607))

(declare-fun m!511609 () Bool)

(assert (=> d!81123 m!511609))

(declare-fun m!511611 () Bool)

(assert (=> d!81123 m!511611))

(declare-fun m!511613 () Bool)

(assert (=> d!81123 m!511613))

(declare-fun m!511615 () Bool)

(assert (=> d!81123 m!511615))

(assert (=> d!81123 m!511611))

(declare-fun m!511617 () Bool)

(assert (=> b!531132 m!511617))

(declare-fun m!511619 () Bool)

