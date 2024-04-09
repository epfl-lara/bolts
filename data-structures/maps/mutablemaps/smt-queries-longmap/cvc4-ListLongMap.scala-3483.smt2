; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48296 () Bool)

(assert start!48296)

(declare-fun b!531002 () Bool)

(declare-fun res!326785 () Bool)

(declare-fun e!309288 () Bool)

(assert (=> b!531002 (=> (not res!326785) (not e!309288))))

(declare-datatypes ((array!33644 0))(
  ( (array!33645 (arr!16163 (Array (_ BitVec 32) (_ BitVec 64))) (size!16527 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33644)

(assert (=> b!531002 (= res!326785 (and (bvsle #b00000000000000000000000000000000 (size!16527 a!3154)) (bvslt (size!16527 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!531003 () Bool)

(declare-datatypes ((List!10335 0))(
  ( (Nil!10332) (Cons!10331 (h!11271 (_ BitVec 64)) (t!16571 List!10335)) )
))
(declare-fun noDuplicate!216 (List!10335) Bool)

(assert (=> b!531003 (= e!309288 (not (noDuplicate!216 Nil!10332)))))

(declare-fun b!531004 () Bool)

(declare-fun res!326789 () Bool)

(declare-fun e!309287 () Bool)

(assert (=> b!531004 (=> (not res!326789) (not e!309287))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531004 (= res!326789 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531005 () Bool)

(declare-fun res!326791 () Bool)

(assert (=> b!531005 (=> (not res!326791) (not e!309287))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531005 (= res!326791 (validKeyInArray!0 (select (arr!16163 a!3154) j!147)))))

(declare-fun b!531006 () Bool)

(declare-fun res!326790 () Bool)

(assert (=> b!531006 (=> (not res!326790) (not e!309288))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33644 (_ BitVec 32)) Bool)

(assert (=> b!531006 (= res!326790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531007 () Bool)

(declare-fun res!326792 () Bool)

(assert (=> b!531007 (=> (not res!326792) (not e!309287))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531007 (= res!326792 (and (= (size!16527 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16527 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16527 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531008 () Bool)

(declare-fun res!326788 () Bool)

(assert (=> b!531008 (=> (not res!326788) (not e!309287))))

(assert (=> b!531008 (= res!326788 (validKeyInArray!0 k!1998))))

(declare-fun res!326786 () Bool)

(assert (=> start!48296 (=> (not res!326786) (not e!309287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48296 (= res!326786 (validMask!0 mask!3216))))

(assert (=> start!48296 e!309287))

(assert (=> start!48296 true))

(declare-fun array_inv!11937 (array!33644) Bool)

(assert (=> start!48296 (array_inv!11937 a!3154)))

(declare-fun b!531001 () Bool)

(assert (=> b!531001 (= e!309287 e!309288)))

(declare-fun res!326787 () Bool)

(assert (=> b!531001 (=> (not res!326787) (not e!309288))))

(declare-datatypes ((SeekEntryResult!4628 0))(
  ( (MissingZero!4628 (index!20736 (_ BitVec 32))) (Found!4628 (index!20737 (_ BitVec 32))) (Intermediate!4628 (undefined!5440 Bool) (index!20738 (_ BitVec 32)) (x!49741 (_ BitVec 32))) (Undefined!4628) (MissingVacant!4628 (index!20739 (_ BitVec 32))) )
))
(declare-fun lt!244862 () SeekEntryResult!4628)

(assert (=> b!531001 (= res!326787 (or (= lt!244862 (MissingZero!4628 i!1153)) (= lt!244862 (MissingVacant!4628 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33644 (_ BitVec 32)) SeekEntryResult!4628)

(assert (=> b!531001 (= lt!244862 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48296 res!326786) b!531007))

(assert (= (and b!531007 res!326792) b!531005))

(assert (= (and b!531005 res!326791) b!531008))

(assert (= (and b!531008 res!326788) b!531004))

(assert (= (and b!531004 res!326789) b!531001))

(assert (= (and b!531001 res!326787) b!531006))

(assert (= (and b!531006 res!326790) b!531002))

(assert (= (and b!531002 res!326785) b!531003))

(declare-fun m!511507 () Bool)

(assert (=> b!531004 m!511507))

(declare-fun m!511509 () Bool)

(assert (=> b!531003 m!511509))

(declare-fun m!511511 () Bool)

(assert (=> b!531006 m!511511))

(declare-fun m!511513 () Bool)

(assert (=> b!531008 m!511513))

(declare-fun m!511515 () Bool)

(assert (=> b!531001 m!511515))

(declare-fun m!511517 () Bool)

(assert (=> start!48296 m!511517))

(declare-fun m!511519 () Bool)

(assert (=> start!48296 m!511519))

(declare-fun m!511521 () Bool)

(assert (=> b!531005 m!511521))

(assert (=> b!531005 m!511521))

(declare-fun m!511523 () Bool)

(assert (=> b!531005 m!511523))

(push 1)

(assert (not b!531005))

(assert (not b!531003))

(assert (not b!531001))

(assert (not b!531006))

(assert (not start!48296))

(assert (not b!531004))

(assert (not b!531008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81097 () Bool)

(assert (=> d!81097 (= (validKeyInArray!0 (select (arr!16163 a!3154) j!147)) (and (not (= (select (arr!16163 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16163 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531005 d!81097))

(declare-fun b!531039 () Bool)

(declare-fun e!309311 () SeekEntryResult!4628)

(assert (=> b!531039 (= e!309311 Undefined!4628)))

(declare-fun d!81099 () Bool)

(declare-fun lt!244879 () SeekEntryResult!4628)

(assert (=> d!81099 (and (or (is-Undefined!4628 lt!244879) (not (is-Found!4628 lt!244879)) (and (bvsge (index!20737 lt!244879) #b00000000000000000000000000000000) (bvslt (index!20737 lt!244879) (size!16527 a!3154)))) (or (is-Undefined!4628 lt!244879) (is-Found!4628 lt!244879) (not (is-MissingZero!4628 lt!244879)) (and (bvsge (index!20736 lt!244879) #b00000000000000000000000000000000) (bvslt (index!20736 lt!244879) (size!16527 a!3154)))) (or (is-Undefined!4628 lt!244879) (is-Found!4628 lt!244879) (is-MissingZero!4628 lt!244879) (not (is-MissingVacant!4628 lt!244879)) (and (bvsge (index!20739 lt!244879) #b00000000000000000000000000000000) (bvslt (index!20739 lt!244879) (size!16527 a!3154)))) (or (is-Undefined!4628 lt!244879) (ite (is-Found!4628 lt!244879) (= (select (arr!16163 a!3154) (index!20737 lt!244879)) k!1998) (ite (is-MissingZero!4628 lt!244879) (= (select (arr!16163 a!3154) (index!20736 lt!244879)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4628 lt!244879) (= (select (arr!16163 a!3154) (index!20739 lt!244879)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81099 (= lt!244879 e!309311)))

(declare-fun c!62429 () Bool)

(declare-fun lt!244878 () SeekEntryResult!4628)

(assert (=> d!81099 (= c!62429 (and (is-Intermediate!4628 lt!244878) (undefined!5440 lt!244878)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33644 (_ BitVec 32)) SeekEntryResult!4628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81099 (= lt!244878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81099 (validMask!0 mask!3216)))

(assert (=> d!81099 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!244879)))

(declare-fun b!531040 () Bool)

(declare-fun e!309313 () SeekEntryResult!4628)

(assert (=> b!531040 (= e!309313 (MissingZero!4628 (index!20738 lt!244878)))))

(declare-fun b!531041 () Bool)

(declare-fun c!62427 () Bool)

(declare-fun lt!244880 () (_ BitVec 64))

(assert (=> b!531041 (= c!62427 (= lt!244880 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309312 () SeekEntryResult!4628)

(assert (=> b!531041 (= e!309312 e!309313)))

(declare-fun b!531042 () Bool)

(assert (=> b!531042 (= e!309312 (Found!4628 (index!20738 lt!244878)))))

(declare-fun b!531043 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33644 (_ BitVec 32)) SeekEntryResult!4628)

(assert (=> b!531043 (= e!309313 (seekKeyOrZeroReturnVacant!0 (x!49741 lt!244878) (index!20738 lt!244878) (index!20738 lt!244878) k!1998 a!3154 mask!3216))))

(declare-fun b!531044 () Bool)

(assert (=> b!531044 (= e!309311 e!309312)))

(assert (=> b!531044 (= lt!244880 (select (arr!16163 a!3154) (index!20738 lt!244878)))))

(declare-fun c!62428 () Bool)

(assert (=> b!531044 (= c!62428 (= lt!244880 k!1998))))

(assert (= (and d!81099 c!62429) b!531039))

(assert (= (and d!81099 (not c!62429)) b!531044))

(assert (= (and b!531044 c!62428) b!531042))

(assert (= (and b!531044 (not c!62428)) b!531041))

(assert (= (and b!531041 c!62427) b!531040))

(assert (= (and b!531041 (not c!62427)) b!531043))

(declare-fun m!511541 () Bool)

(assert (=> d!81099 m!511541))

(declare-fun m!511543 () Bool)

(assert (=> d!81099 m!511543))

(declare-fun m!511545 () Bool)

(assert (=> d!81099 m!511545))

(assert (=> d!81099 m!511517))

(declare-fun m!511547 () Bool)

(assert (=> d!81099 m!511547))

(assert (=> d!81099 m!511547))

(declare-fun m!511549 () Bool)

(assert (=> d!81099 m!511549))

(declare-fun m!511551 () Bool)

(assert (=> b!531043 m!511551))

(declare-fun m!511553 () Bool)

(assert (=> b!531044 m!511553))

(assert (=> b!531001 d!81099))

(declare-fun b!531087 () Bool)

(declare-fun e!309345 () Bool)

(declare-fun e!309346 () Bool)

(assert (=> b!531087 (= e!309345 e!309346)))

(declare-fun c!62441 () Bool)

(assert (=> b!531087 (= c!62441 (validKeyInArray!0 (select (arr!16163 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81115 () Bool)

(declare-fun res!326826 () Bool)

(assert (=> d!81115 (=> res!326826 e!309345)))

(assert (=> d!81115 (= res!326826 (bvsge #b00000000000000000000000000000000 (size!16527 a!3154)))))

(assert (=> d!81115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309345)))

(declare-fun bm!31946 () Bool)

(declare-fun call!31949 () Bool)

(assert (=> bm!31946 (= call!31949 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!531088 () Bool)

(assert (=> b!531088 (= e!309346 call!31949)))

(declare-fun b!531089 () Bool)

(declare-fun e!309347 () Bool)

(assert (=> b!531089 (= e!309347 call!31949)))

(declare-fun b!531090 () Bool)

(assert (=> b!531090 (= e!309346 e!309347)))

(declare-fun lt!244904 () (_ BitVec 64))

(assert (=> b!531090 (= lt!244904 (select (arr!16163 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16804 0))(
  ( (Unit!16805) )
))
(declare-fun lt!244903 () Unit!16804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33644 (_ BitVec 64) (_ BitVec 32)) Unit!16804)

(assert (=> b!531090 (= lt!244903 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244904 #b00000000000000000000000000000000))))

(assert (=> b!531090 (arrayContainsKey!0 a!3154 lt!244904 #b00000000000000000000000000000000)))

(declare-fun lt!244902 () Unit!16804)

(assert (=> b!531090 (= lt!244902 lt!244903)))

(declare-fun res!326825 () Bool)

(assert (=> b!531090 (= res!326825 (= (seekEntryOrOpen!0 (select (arr!16163 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4628 #b00000000000000000000000000000000)))))

(assert (=> b!531090 (=> (not res!326825) (not e!309347))))

(assert (= (and d!81115 (not res!326826)) b!531087))

(assert (= (and b!531087 c!62441) b!531090))

(assert (= (and b!531087 (not c!62441)) b!531088))

(assert (= (and b!531090 res!326825) b!531089))

(assert (= (or b!531089 b!531088) bm!31946))

(declare-fun m!511571 () Bool)

(assert (=> b!531087 m!511571))

(assert (=> b!531087 m!511571))

(declare-fun m!511573 () Bool)

(assert (=> b!531087 m!511573))

(declare-fun m!511575 () Bool)

(assert (=> bm!31946 m!511575))

(assert (=> b!531090 m!511571))

(declare-fun m!511577 () Bool)

(assert (=> b!531090 m!511577))

(declare-fun m!511579 () Bool)

(assert (=> b!531090 m!511579))

(assert (=> b!531090 m!511571))

(declare-fun m!511581 () Bool)

(assert (=> b!531090 m!511581))

(assert (=> b!531006 d!81115))

(declare-fun d!81121 () Bool)

(assert (=> d!81121 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48296 d!81121))

(declare-fun d!81129 () Bool)

(assert (=> d!81129 (= (array_inv!11937 a!3154) (bvsge (size!16527 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48296 d!81129))

(declare-fun d!81131 () Bool)

(declare-fun res!326839 () Bool)

(declare-fun e!309363 () Bool)

(assert (=> d!81131 (=> res!326839 e!309363)))

(assert (=> d!81131 (= res!326839 (is-Nil!10332 Nil!10332))))

(assert (=> d!81131 (= (noDuplicate!216 Nil!10332) e!309363)))

(declare-fun b!531109 () Bool)

(declare-fun e!309364 () Bool)

(assert (=> b!531109 (= e!309363 e!309364)))

(declare-fun res!326840 () Bool)

(assert (=> b!531109 (=> (not res!326840) (not e!309364))))

(declare-fun contains!2788 (List!10335 (_ BitVec 64)) Bool)

(assert (=> b!531109 (= res!326840 (not (contains!2788 (t!16571 Nil!10332) (h!11271 Nil!10332))))))

(declare-fun b!531110 () Bool)

(assert (=> b!531110 (= e!309364 (noDuplicate!216 (t!16571 Nil!10332)))))

(assert (= (and d!81131 (not res!326839)) b!531109))

(assert (= (and b!531109 res!326840) b!531110))

(declare-fun m!511601 () Bool)

(assert (=> b!531109 m!511601))

(declare-fun m!511603 () Bool)

(assert (=> b!531110 m!511603))

(assert (=> b!531003 d!81131))

(declare-fun d!81133 () Bool)

(assert (=> d!81133 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531008 d!81133))

(declare-fun d!81135 () Bool)

(declare-fun res!326845 () Bool)

(declare-fun e!309369 () Bool)

(assert (=> d!81135 (=> res!326845 e!309369)))

(assert (=> d!81135 (= res!326845 (= (select (arr!16163 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81135 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309369)))

(declare-fun b!531115 () Bool)

(declare-fun e!309370 () Bool)

(assert (=> b!531115 (= e!309369 e!309370)))

(declare-fun res!326846 () Bool)

(assert (=> b!531115 (=> (not res!326846) (not e!309370))))

(assert (=> b!531115 (= res!326846 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16527 a!3154)))))

(declare-fun b!531116 () Bool)

(assert (=> b!531116 (= e!309370 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81135 (not res!326845)) b!531115))

(assert (= (and b!531115 res!326846) b!531116))

(assert (=> d!81135 m!511571))

(declare-fun m!511605 () Bool)

(assert (=> b!531116 m!511605))

(assert (=> b!531004 d!81135))

(push 1)

