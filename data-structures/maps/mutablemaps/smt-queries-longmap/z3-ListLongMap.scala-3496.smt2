; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48510 () Bool)

(assert start!48510)

(declare-fun b!532514 () Bool)

(declare-fun res!328019 () Bool)

(declare-fun e!309995 () Bool)

(assert (=> b!532514 (=> (not res!328019) (not e!309995))))

(declare-datatypes ((array!33729 0))(
  ( (array!33730 (arr!16201 (Array (_ BitVec 32) (_ BitVec 64))) (size!16565 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33729)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33729 (_ BitVec 32)) Bool)

(assert (=> b!532514 (= res!328019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532515 () Bool)

(declare-fun res!328012 () Bool)

(assert (=> b!532515 (=> (not res!328012) (not e!309995))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4666 0))(
  ( (MissingZero!4666 (index!20888 (_ BitVec 32))) (Found!4666 (index!20889 (_ BitVec 32))) (Intermediate!4666 (undefined!5478 Bool) (index!20890 (_ BitVec 32)) (x!49886 (_ BitVec 32))) (Undefined!4666) (MissingVacant!4666 (index!20891 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33729 (_ BitVec 32)) SeekEntryResult!4666)

(assert (=> b!532515 (= res!328012 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16201 a!3154) j!147) a!3154 mask!3216) (Intermediate!4666 false resIndex!32 resX!32)))))

(declare-fun b!532516 () Bool)

(declare-fun res!328013 () Bool)

(declare-fun e!309996 () Bool)

(assert (=> b!532516 (=> (not res!328013) (not e!309996))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532516 (= res!328013 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532517 () Bool)

(declare-fun res!328016 () Bool)

(assert (=> b!532517 (=> (not res!328016) (not e!309995))))

(declare-datatypes ((List!10373 0))(
  ( (Nil!10370) (Cons!10369 (h!11309 (_ BitVec 64)) (t!16609 List!10373)) )
))
(declare-fun arrayNoDuplicates!0 (array!33729 (_ BitVec 32) List!10373) Bool)

(assert (=> b!532517 (= res!328016 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10370))))

(declare-fun b!532518 () Bool)

(declare-fun res!328014 () Bool)

(assert (=> b!532518 (=> (not res!328014) (not e!309996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532518 (= res!328014 (validKeyInArray!0 (select (arr!16201 a!3154) j!147)))))

(declare-fun b!532519 () Bool)

(assert (=> b!532519 (= e!309996 e!309995)))

(declare-fun res!328017 () Bool)

(assert (=> b!532519 (=> (not res!328017) (not e!309995))))

(declare-fun lt!245228 () SeekEntryResult!4666)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532519 (= res!328017 (or (= lt!245228 (MissingZero!4666 i!1153)) (= lt!245228 (MissingVacant!4666 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33729 (_ BitVec 32)) SeekEntryResult!4666)

(assert (=> b!532519 (= lt!245228 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!328015 () Bool)

(assert (=> start!48510 (=> (not res!328015) (not e!309996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48510 (= res!328015 (validMask!0 mask!3216))))

(assert (=> start!48510 e!309996))

(assert (=> start!48510 true))

(declare-fun array_inv!11975 (array!33729) Bool)

(assert (=> start!48510 (array_inv!11975 a!3154)))

(declare-fun b!532520 () Bool)

(declare-fun res!328018 () Bool)

(assert (=> b!532520 (=> (not res!328018) (not e!309996))))

(assert (=> b!532520 (= res!328018 (and (= (size!16565 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16565 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16565 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532521 () Bool)

(declare-fun res!328011 () Bool)

(assert (=> b!532521 (=> (not res!328011) (not e!309996))))

(assert (=> b!532521 (= res!328011 (validKeyInArray!0 k0!1998))))

(declare-fun b!532522 () Bool)

(declare-fun res!328010 () Bool)

(assert (=> b!532522 (=> (not res!328010) (not e!309995))))

(assert (=> b!532522 (= res!328010 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16565 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16565 a!3154)) (= (select (arr!16201 a!3154) resIndex!32) (select (arr!16201 a!3154) j!147))))))

(declare-fun b!532523 () Bool)

(declare-fun lt!245227 () (_ BitVec 32))

(assert (=> b!532523 (= e!309995 (and (bvsge mask!3216 #b00000000000000000000000000000000) (or (bvslt lt!245227 #b00000000000000000000000000000000) (bvsge lt!245227 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532523 (= lt!245227 (toIndex!0 (select (arr!16201 a!3154) j!147) mask!3216))))

(assert (= (and start!48510 res!328015) b!532520))

(assert (= (and b!532520 res!328018) b!532518))

(assert (= (and b!532518 res!328014) b!532521))

(assert (= (and b!532521 res!328011) b!532516))

(assert (= (and b!532516 res!328013) b!532519))

(assert (= (and b!532519 res!328017) b!532514))

(assert (= (and b!532514 res!328019) b!532517))

(assert (= (and b!532517 res!328016) b!532522))

(assert (= (and b!532522 res!328010) b!532515))

(assert (= (and b!532515 res!328012) b!532523))

(declare-fun m!512647 () Bool)

(assert (=> b!532521 m!512647))

(declare-fun m!512649 () Bool)

(assert (=> b!532518 m!512649))

(assert (=> b!532518 m!512649))

(declare-fun m!512651 () Bool)

(assert (=> b!532518 m!512651))

(declare-fun m!512653 () Bool)

(assert (=> b!532517 m!512653))

(declare-fun m!512655 () Bool)

(assert (=> b!532522 m!512655))

(assert (=> b!532522 m!512649))

(assert (=> b!532515 m!512649))

(assert (=> b!532515 m!512649))

(declare-fun m!512657 () Bool)

(assert (=> b!532515 m!512657))

(declare-fun m!512659 () Bool)

(assert (=> b!532514 m!512659))

(declare-fun m!512661 () Bool)

(assert (=> start!48510 m!512661))

(declare-fun m!512663 () Bool)

(assert (=> start!48510 m!512663))

(declare-fun m!512665 () Bool)

(assert (=> b!532516 m!512665))

(assert (=> b!532523 m!512649))

(assert (=> b!532523 m!512649))

(declare-fun m!512667 () Bool)

(assert (=> b!532523 m!512667))

(declare-fun m!512669 () Bool)

(assert (=> b!532519 m!512669))

(check-sat (not b!532516) (not b!532521) (not b!532515) (not b!532523) (not b!532517) (not b!532514) (not start!48510) (not b!532518) (not b!532519))
(check-sat)
(get-model)

(declare-fun d!81281 () Bool)

(assert (=> d!81281 (= (validKeyInArray!0 (select (arr!16201 a!3154) j!147)) (and (not (= (select (arr!16201 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16201 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532518 d!81281))

(declare-fun d!81283 () Bool)

(declare-fun lt!245241 () SeekEntryResult!4666)

(get-info :version)

(assert (=> d!81283 (and (or ((_ is Undefined!4666) lt!245241) (not ((_ is Found!4666) lt!245241)) (and (bvsge (index!20889 lt!245241) #b00000000000000000000000000000000) (bvslt (index!20889 lt!245241) (size!16565 a!3154)))) (or ((_ is Undefined!4666) lt!245241) ((_ is Found!4666) lt!245241) (not ((_ is MissingZero!4666) lt!245241)) (and (bvsge (index!20888 lt!245241) #b00000000000000000000000000000000) (bvslt (index!20888 lt!245241) (size!16565 a!3154)))) (or ((_ is Undefined!4666) lt!245241) ((_ is Found!4666) lt!245241) ((_ is MissingZero!4666) lt!245241) (not ((_ is MissingVacant!4666) lt!245241)) (and (bvsge (index!20891 lt!245241) #b00000000000000000000000000000000) (bvslt (index!20891 lt!245241) (size!16565 a!3154)))) (or ((_ is Undefined!4666) lt!245241) (ite ((_ is Found!4666) lt!245241) (= (select (arr!16201 a!3154) (index!20889 lt!245241)) k0!1998) (ite ((_ is MissingZero!4666) lt!245241) (= (select (arr!16201 a!3154) (index!20888 lt!245241)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4666) lt!245241) (= (select (arr!16201 a!3154) (index!20891 lt!245241)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!310014 () SeekEntryResult!4666)

(assert (=> d!81283 (= lt!245241 e!310014)))

(declare-fun c!62568 () Bool)

(declare-fun lt!245242 () SeekEntryResult!4666)

(assert (=> d!81283 (= c!62568 (and ((_ is Intermediate!4666) lt!245242) (undefined!5478 lt!245242)))))

(assert (=> d!81283 (= lt!245242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81283 (validMask!0 mask!3216)))

(assert (=> d!81283 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!245241)))

(declare-fun e!310013 () SeekEntryResult!4666)

(declare-fun b!532566 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33729 (_ BitVec 32)) SeekEntryResult!4666)

(assert (=> b!532566 (= e!310013 (seekKeyOrZeroReturnVacant!0 (x!49886 lt!245242) (index!20890 lt!245242) (index!20890 lt!245242) k0!1998 a!3154 mask!3216))))

(declare-fun b!532567 () Bool)

(declare-fun c!62570 () Bool)

(declare-fun lt!245243 () (_ BitVec 64))

(assert (=> b!532567 (= c!62570 (= lt!245243 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!310015 () SeekEntryResult!4666)

(assert (=> b!532567 (= e!310015 e!310013)))

(declare-fun b!532568 () Bool)

(assert (=> b!532568 (= e!310014 Undefined!4666)))

(declare-fun b!532569 () Bool)

(assert (=> b!532569 (= e!310014 e!310015)))

(assert (=> b!532569 (= lt!245243 (select (arr!16201 a!3154) (index!20890 lt!245242)))))

(declare-fun c!62569 () Bool)

(assert (=> b!532569 (= c!62569 (= lt!245243 k0!1998))))

(declare-fun b!532570 () Bool)

(assert (=> b!532570 (= e!310015 (Found!4666 (index!20890 lt!245242)))))

(declare-fun b!532571 () Bool)

(assert (=> b!532571 (= e!310013 (MissingZero!4666 (index!20890 lt!245242)))))

(assert (= (and d!81283 c!62568) b!532568))

(assert (= (and d!81283 (not c!62568)) b!532569))

(assert (= (and b!532569 c!62569) b!532570))

(assert (= (and b!532569 (not c!62569)) b!532567))

(assert (= (and b!532567 c!62570) b!532571))

(assert (= (and b!532567 (not c!62570)) b!532566))

(declare-fun m!512695 () Bool)

(assert (=> d!81283 m!512695))

(declare-fun m!512697 () Bool)

(assert (=> d!81283 m!512697))

(assert (=> d!81283 m!512697))

(declare-fun m!512699 () Bool)

(assert (=> d!81283 m!512699))

(assert (=> d!81283 m!512661))

(declare-fun m!512701 () Bool)

(assert (=> d!81283 m!512701))

(declare-fun m!512703 () Bool)

(assert (=> d!81283 m!512703))

(declare-fun m!512705 () Bool)

(assert (=> b!532566 m!512705))

(declare-fun m!512707 () Bool)

(assert (=> b!532569 m!512707))

(assert (=> b!532519 d!81283))

(declare-fun b!532600 () Bool)

(declare-fun e!310032 () Bool)

(declare-fun call!31979 () Bool)

(assert (=> b!532600 (= e!310032 call!31979)))

(declare-fun b!532601 () Bool)

(declare-fun e!310034 () Bool)

(assert (=> b!532601 (= e!310034 call!31979)))

(declare-fun b!532602 () Bool)

(declare-fun e!310033 () Bool)

(assert (=> b!532602 (= e!310033 e!310032)))

(declare-fun c!62583 () Bool)

(assert (=> b!532602 (= c!62583 (validKeyInArray!0 (select (arr!16201 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31976 () Bool)

(assert (=> bm!31976 (= call!31979 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!81289 () Bool)

(declare-fun res!328055 () Bool)

(assert (=> d!81289 (=> res!328055 e!310033)))

(assert (=> d!81289 (= res!328055 (bvsge #b00000000000000000000000000000000 (size!16565 a!3154)))))

(assert (=> d!81289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!310033)))

(declare-fun b!532603 () Bool)

(assert (=> b!532603 (= e!310032 e!310034)))

(declare-fun lt!245260 () (_ BitVec 64))

(assert (=> b!532603 (= lt!245260 (select (arr!16201 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16816 0))(
  ( (Unit!16817) )
))
(declare-fun lt!245261 () Unit!16816)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33729 (_ BitVec 64) (_ BitVec 32)) Unit!16816)

(assert (=> b!532603 (= lt!245261 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!245260 #b00000000000000000000000000000000))))

(assert (=> b!532603 (arrayContainsKey!0 a!3154 lt!245260 #b00000000000000000000000000000000)))

(declare-fun lt!245262 () Unit!16816)

(assert (=> b!532603 (= lt!245262 lt!245261)))

(declare-fun res!328054 () Bool)

(assert (=> b!532603 (= res!328054 (= (seekEntryOrOpen!0 (select (arr!16201 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4666 #b00000000000000000000000000000000)))))

(assert (=> b!532603 (=> (not res!328054) (not e!310034))))

(assert (= (and d!81289 (not res!328055)) b!532602))

(assert (= (and b!532602 c!62583) b!532603))

(assert (= (and b!532602 (not c!62583)) b!532600))

(assert (= (and b!532603 res!328054) b!532601))

(assert (= (or b!532601 b!532600) bm!31976))

(declare-fun m!512709 () Bool)

(assert (=> b!532602 m!512709))

(assert (=> b!532602 m!512709))

(declare-fun m!512711 () Bool)

(assert (=> b!532602 m!512711))

(declare-fun m!512713 () Bool)

(assert (=> bm!31976 m!512713))

(assert (=> b!532603 m!512709))

(declare-fun m!512715 () Bool)

(assert (=> b!532603 m!512715))

(declare-fun m!512717 () Bool)

(assert (=> b!532603 m!512717))

(assert (=> b!532603 m!512709))

(declare-fun m!512719 () Bool)

(assert (=> b!532603 m!512719))

(assert (=> b!532514 d!81289))

(declare-fun e!310089 () SeekEntryResult!4666)

(declare-fun b!532692 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532692 (= e!310089 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16201 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!532693 () Bool)

(declare-fun e!310092 () SeekEntryResult!4666)

(assert (=> b!532693 (= e!310092 e!310089)))

(declare-fun c!62615 () Bool)

(declare-fun lt!245297 () (_ BitVec 64))

(assert (=> b!532693 (= c!62615 (or (= lt!245297 (select (arr!16201 a!3154) j!147)) (= (bvadd lt!245297 lt!245297) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!532694 () Bool)

(declare-fun lt!245296 () SeekEntryResult!4666)

(assert (=> b!532694 (and (bvsge (index!20890 lt!245296) #b00000000000000000000000000000000) (bvslt (index!20890 lt!245296) (size!16565 a!3154)))))

(declare-fun e!310091 () Bool)

(assert (=> b!532694 (= e!310091 (= (select (arr!16201 a!3154) (index!20890 lt!245296)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!532695 () Bool)

(assert (=> b!532695 (= e!310092 (Intermediate!4666 true index!1177 x!1030))))

(declare-fun d!81291 () Bool)

(declare-fun e!310093 () Bool)

(assert (=> d!81291 e!310093))

(declare-fun c!62614 () Bool)

(assert (=> d!81291 (= c!62614 (and ((_ is Intermediate!4666) lt!245296) (undefined!5478 lt!245296)))))

(assert (=> d!81291 (= lt!245296 e!310092)))

(declare-fun c!62613 () Bool)

(assert (=> d!81291 (= c!62613 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81291 (= lt!245297 (select (arr!16201 a!3154) index!1177))))

(assert (=> d!81291 (validMask!0 mask!3216)))

(assert (=> d!81291 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16201 a!3154) j!147) a!3154 mask!3216) lt!245296)))

(declare-fun b!532696 () Bool)

(assert (=> b!532696 (and (bvsge (index!20890 lt!245296) #b00000000000000000000000000000000) (bvslt (index!20890 lt!245296) (size!16565 a!3154)))))

(declare-fun res!328087 () Bool)

(assert (=> b!532696 (= res!328087 (= (select (arr!16201 a!3154) (index!20890 lt!245296)) (select (arr!16201 a!3154) j!147)))))

(assert (=> b!532696 (=> res!328087 e!310091)))

(declare-fun e!310090 () Bool)

(assert (=> b!532696 (= e!310090 e!310091)))

(declare-fun b!532697 () Bool)

(assert (=> b!532697 (= e!310089 (Intermediate!4666 false index!1177 x!1030))))

(declare-fun b!532698 () Bool)

(assert (=> b!532698 (= e!310093 e!310090)))

(declare-fun res!328088 () Bool)

(assert (=> b!532698 (= res!328088 (and ((_ is Intermediate!4666) lt!245296) (not (undefined!5478 lt!245296)) (bvslt (x!49886 lt!245296) #b01111111111111111111111111111110) (bvsge (x!49886 lt!245296) #b00000000000000000000000000000000) (bvsge (x!49886 lt!245296) x!1030)))))

(assert (=> b!532698 (=> (not res!328088) (not e!310090))))

(declare-fun b!532699 () Bool)

(assert (=> b!532699 (= e!310093 (bvsge (x!49886 lt!245296) #b01111111111111111111111111111110))))

(declare-fun b!532700 () Bool)

(assert (=> b!532700 (and (bvsge (index!20890 lt!245296) #b00000000000000000000000000000000) (bvslt (index!20890 lt!245296) (size!16565 a!3154)))))

(declare-fun res!328089 () Bool)

(assert (=> b!532700 (= res!328089 (= (select (arr!16201 a!3154) (index!20890 lt!245296)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532700 (=> res!328089 e!310091)))

(assert (= (and d!81291 c!62613) b!532695))

(assert (= (and d!81291 (not c!62613)) b!532693))

(assert (= (and b!532693 c!62615) b!532697))

(assert (= (and b!532693 (not c!62615)) b!532692))

(assert (= (and d!81291 c!62614) b!532699))

(assert (= (and d!81291 (not c!62614)) b!532698))

(assert (= (and b!532698 res!328088) b!532696))

(assert (= (and b!532696 (not res!328087)) b!532700))

(assert (= (and b!532700 (not res!328089)) b!532694))

(declare-fun m!512773 () Bool)

(assert (=> b!532692 m!512773))

(assert (=> b!532692 m!512773))

(assert (=> b!532692 m!512649))

(declare-fun m!512775 () Bool)

(assert (=> b!532692 m!512775))

(declare-fun m!512777 () Bool)

(assert (=> b!532696 m!512777))

(assert (=> b!532694 m!512777))

(assert (=> b!532700 m!512777))

(declare-fun m!512779 () Bool)

(assert (=> d!81291 m!512779))

(assert (=> d!81291 m!512661))

(assert (=> b!532515 d!81291))

(declare-fun d!81311 () Bool)

(assert (=> d!81311 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532521 d!81311))

(declare-fun d!81313 () Bool)

(declare-fun res!328103 () Bool)

(declare-fun e!310110 () Bool)

(assert (=> d!81313 (=> res!328103 e!310110)))

(assert (=> d!81313 (= res!328103 (= (select (arr!16201 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81313 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!310110)))

(declare-fun b!532720 () Bool)

(declare-fun e!310111 () Bool)

(assert (=> b!532720 (= e!310110 e!310111)))

(declare-fun res!328104 () Bool)

(assert (=> b!532720 (=> (not res!328104) (not e!310111))))

(assert (=> b!532720 (= res!328104 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16565 a!3154)))))

(declare-fun b!532721 () Bool)

(assert (=> b!532721 (= e!310111 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81313 (not res!328103)) b!532720))

(assert (= (and b!532720 res!328104) b!532721))

(assert (=> d!81313 m!512709))

(declare-fun m!512789 () Bool)

(assert (=> b!532721 m!512789))

(assert (=> b!532516 d!81313))

(declare-fun bm!31991 () Bool)

(declare-fun call!31994 () Bool)

(declare-fun c!62624 () Bool)

(assert (=> bm!31991 (= call!31994 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62624 (Cons!10369 (select (arr!16201 a!3154) #b00000000000000000000000000000000) Nil!10370) Nil!10370)))))

(declare-fun b!532756 () Bool)

(declare-fun e!310141 () Bool)

(declare-fun e!310143 () Bool)

(assert (=> b!532756 (= e!310141 e!310143)))

(assert (=> b!532756 (= c!62624 (validKeyInArray!0 (select (arr!16201 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81323 () Bool)

(declare-fun res!328130 () Bool)

(declare-fun e!310144 () Bool)

(assert (=> d!81323 (=> res!328130 e!310144)))

(assert (=> d!81323 (= res!328130 (bvsge #b00000000000000000000000000000000 (size!16565 a!3154)))))

(assert (=> d!81323 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10370) e!310144)))

(declare-fun b!532757 () Bool)

(assert (=> b!532757 (= e!310143 call!31994)))

(declare-fun b!532758 () Bool)

(assert (=> b!532758 (= e!310144 e!310141)))

(declare-fun res!328131 () Bool)

(assert (=> b!532758 (=> (not res!328131) (not e!310141))))

(declare-fun e!310142 () Bool)

(assert (=> b!532758 (= res!328131 (not e!310142))))

(declare-fun res!328129 () Bool)

(assert (=> b!532758 (=> (not res!328129) (not e!310142))))

(assert (=> b!532758 (= res!328129 (validKeyInArray!0 (select (arr!16201 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532759 () Bool)

(declare-fun contains!2797 (List!10373 (_ BitVec 64)) Bool)

(assert (=> b!532759 (= e!310142 (contains!2797 Nil!10370 (select (arr!16201 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532760 () Bool)

(assert (=> b!532760 (= e!310143 call!31994)))

(assert (= (and d!81323 (not res!328130)) b!532758))

(assert (= (and b!532758 res!328129) b!532759))

(assert (= (and b!532758 res!328131) b!532756))

(assert (= (and b!532756 c!62624) b!532760))

(assert (= (and b!532756 (not c!62624)) b!532757))

(assert (= (or b!532760 b!532757) bm!31991))

(assert (=> bm!31991 m!512709))

(declare-fun m!512803 () Bool)

(assert (=> bm!31991 m!512803))

(assert (=> b!532756 m!512709))

(assert (=> b!532756 m!512709))

(assert (=> b!532756 m!512711))

(assert (=> b!532758 m!512709))

(assert (=> b!532758 m!512709))

(assert (=> b!532758 m!512711))

(assert (=> b!532759 m!512709))

(assert (=> b!532759 m!512709))

(declare-fun m!512805 () Bool)

(assert (=> b!532759 m!512805))

(assert (=> b!532517 d!81323))

(declare-fun d!81331 () Bool)

(declare-fun lt!245316 () (_ BitVec 32))

(declare-fun lt!245315 () (_ BitVec 32))

(assert (=> d!81331 (= lt!245316 (bvmul (bvxor lt!245315 (bvlshr lt!245315 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81331 (= lt!245315 ((_ extract 31 0) (bvand (bvxor (select (arr!16201 a!3154) j!147) (bvlshr (select (arr!16201 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81331 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!328132 (let ((h!11312 ((_ extract 31 0) (bvand (bvxor (select (arr!16201 a!3154) j!147) (bvlshr (select (arr!16201 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49891 (bvmul (bvxor h!11312 (bvlshr h!11312 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49891 (bvlshr x!49891 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!328132 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!328132 #b00000000000000000000000000000000))))))

(assert (=> d!81331 (= (toIndex!0 (select (arr!16201 a!3154) j!147) mask!3216) (bvand (bvxor lt!245316 (bvlshr lt!245316 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!532523 d!81331))

(declare-fun d!81337 () Bool)

(assert (=> d!81337 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48510 d!81337))

(declare-fun d!81339 () Bool)

(assert (=> d!81339 (= (array_inv!11975 a!3154) (bvsge (size!16565 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48510 d!81339))

(check-sat (not d!81291) (not bm!31991) (not b!532759) (not b!532603) (not b!532602) (not d!81283) (not b!532756) (not b!532692) (not b!532566) (not b!532758) (not b!532721) (not bm!31976))
(check-sat)
