; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46492 () Bool)

(assert start!46492)

(declare-fun b!513718 () Bool)

(declare-fun e!299987 () Bool)

(declare-fun e!299986 () Bool)

(assert (=> b!513718 (= e!299987 e!299986)))

(declare-fun res!313982 () Bool)

(assert (=> b!513718 (=> (not res!313982) (not e!299986))))

(declare-datatypes ((SeekEntryResult!4311 0))(
  ( (MissingZero!4311 (index!19432 (_ BitVec 32))) (Found!4311 (index!19433 (_ BitVec 32))) (Intermediate!4311 (undefined!5123 Bool) (index!19434 (_ BitVec 32)) (x!48419 (_ BitVec 32))) (Undefined!4311) (MissingVacant!4311 (index!19435 (_ BitVec 32))) )
))
(declare-fun lt!235242 () SeekEntryResult!4311)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!513718 (= res!313982 (or (= lt!235242 (MissingZero!4311 i!1204)) (= lt!235242 (MissingVacant!4311 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32935 0))(
  ( (array!32936 (arr!15837 (Array (_ BitVec 32) (_ BitVec 64))) (size!16201 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32935)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32935 (_ BitVec 32)) SeekEntryResult!4311)

(assert (=> b!513718 (= lt!235242 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!513719 () Bool)

(declare-fun res!313989 () Bool)

(assert (=> b!513719 (=> (not res!313989) (not e!299986))))

(declare-datatypes ((List!10048 0))(
  ( (Nil!10045) (Cons!10044 (h!10933 (_ BitVec 64)) (t!16284 List!10048)) )
))
(declare-fun arrayNoDuplicates!0 (array!32935 (_ BitVec 32) List!10048) Bool)

(assert (=> b!513719 (= res!313989 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10045))))

(declare-fun b!513720 () Bool)

(declare-fun res!313988 () Bool)

(assert (=> b!513720 (=> (not res!313988) (not e!299986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32935 (_ BitVec 32)) Bool)

(assert (=> b!513720 (= res!313988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513721 () Bool)

(declare-fun res!313990 () Bool)

(declare-fun e!299989 () Bool)

(assert (=> b!513721 (=> res!313990 e!299989)))

(declare-fun lt!235244 () SeekEntryResult!4311)

(assert (=> b!513721 (= res!313990 (or (undefined!5123 lt!235244) (not (is-Intermediate!4311 lt!235244))))))

(declare-fun b!513722 () Bool)

(declare-fun res!313991 () Bool)

(assert (=> b!513722 (=> (not res!313991) (not e!299987))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!513722 (= res!313991 (and (= (size!16201 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16201 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16201 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513723 () Bool)

(declare-fun res!313984 () Bool)

(assert (=> b!513723 (=> (not res!313984) (not e!299987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513723 (= res!313984 (validKeyInArray!0 k!2280))))

(declare-fun res!313985 () Bool)

(assert (=> start!46492 (=> (not res!313985) (not e!299987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46492 (= res!313985 (validMask!0 mask!3524))))

(assert (=> start!46492 e!299987))

(assert (=> start!46492 true))

(declare-fun array_inv!11611 (array!32935) Bool)

(assert (=> start!46492 (array_inv!11611 a!3235)))

(declare-fun b!513724 () Bool)

(declare-fun res!313987 () Bool)

(assert (=> b!513724 (=> (not res!313987) (not e!299987))))

(declare-fun arrayContainsKey!0 (array!32935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513724 (= res!313987 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513725 () Bool)

(declare-fun res!313986 () Bool)

(assert (=> b!513725 (=> (not res!313986) (not e!299987))))

(assert (=> b!513725 (= res!313986 (validKeyInArray!0 (select (arr!15837 a!3235) j!176)))))

(declare-fun e!299988 () Bool)

(declare-fun b!513726 () Bool)

(assert (=> b!513726 (= e!299988 (= (seekEntryOrOpen!0 (select (arr!15837 a!3235) j!176) a!3235 mask!3524) (Found!4311 j!176)))))

(declare-fun b!513727 () Bool)

(assert (=> b!513727 (= e!299989 (or (= (select (arr!15837 a!3235) (index!19434 lt!235244)) (select (arr!15837 a!3235) j!176)) (= (select (arr!15837 a!3235) (index!19434 lt!235244)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19434 lt!235244) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235244) (size!16201 a!3235)))))))

(assert (=> b!513727 (bvslt (x!48419 lt!235244) #b01111111111111111111111111111110)))

(declare-fun b!513728 () Bool)

(assert (=> b!513728 (= e!299986 (not e!299989))))

(declare-fun res!313981 () Bool)

(assert (=> b!513728 (=> res!313981 e!299989)))

(declare-fun lt!235240 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32935 (_ BitVec 32)) SeekEntryResult!4311)

(assert (=> b!513728 (= res!313981 (= lt!235244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235240 (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)) mask!3524)))))

(declare-fun lt!235241 () (_ BitVec 32))

(assert (=> b!513728 (= lt!235244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235241 (select (arr!15837 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513728 (= lt!235240 (toIndex!0 (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513728 (= lt!235241 (toIndex!0 (select (arr!15837 a!3235) j!176) mask!3524))))

(assert (=> b!513728 e!299988))

(declare-fun res!313983 () Bool)

(assert (=> b!513728 (=> (not res!313983) (not e!299988))))

(assert (=> b!513728 (= res!313983 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15872 0))(
  ( (Unit!15873) )
))
(declare-fun lt!235243 () Unit!15872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15872)

(assert (=> b!513728 (= lt!235243 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46492 res!313985) b!513722))

(assert (= (and b!513722 res!313991) b!513725))

(assert (= (and b!513725 res!313986) b!513723))

(assert (= (and b!513723 res!313984) b!513724))

(assert (= (and b!513724 res!313987) b!513718))

(assert (= (and b!513718 res!313982) b!513720))

(assert (= (and b!513720 res!313988) b!513719))

(assert (= (and b!513719 res!313989) b!513728))

(assert (= (and b!513728 res!313983) b!513726))

(assert (= (and b!513728 (not res!313981)) b!513721))

(assert (= (and b!513721 (not res!313990)) b!513727))

(declare-fun m!495253 () Bool)

(assert (=> b!513727 m!495253))

(declare-fun m!495255 () Bool)

(assert (=> b!513727 m!495255))

(assert (=> b!513725 m!495255))

(assert (=> b!513725 m!495255))

(declare-fun m!495257 () Bool)

(assert (=> b!513725 m!495257))

(declare-fun m!495259 () Bool)

(assert (=> b!513719 m!495259))

(declare-fun m!495261 () Bool)

(assert (=> b!513720 m!495261))

(declare-fun m!495263 () Bool)

(assert (=> b!513724 m!495263))

(assert (=> b!513726 m!495255))

(assert (=> b!513726 m!495255))

(declare-fun m!495265 () Bool)

(assert (=> b!513726 m!495265))

(declare-fun m!495267 () Bool)

(assert (=> b!513718 m!495267))

(declare-fun m!495269 () Bool)

(assert (=> start!46492 m!495269))

(declare-fun m!495271 () Bool)

(assert (=> start!46492 m!495271))

(declare-fun m!495273 () Bool)

(assert (=> b!513723 m!495273))

(declare-fun m!495275 () Bool)

(assert (=> b!513728 m!495275))

(declare-fun m!495277 () Bool)

(assert (=> b!513728 m!495277))

(declare-fun m!495279 () Bool)

(assert (=> b!513728 m!495279))

(assert (=> b!513728 m!495255))

(declare-fun m!495281 () Bool)

(assert (=> b!513728 m!495281))

(assert (=> b!513728 m!495255))

(declare-fun m!495283 () Bool)

(assert (=> b!513728 m!495283))

(assert (=> b!513728 m!495255))

(declare-fun m!495285 () Bool)

(assert (=> b!513728 m!495285))

(assert (=> b!513728 m!495279))

(declare-fun m!495287 () Bool)

(assert (=> b!513728 m!495287))

(assert (=> b!513728 m!495279))

(declare-fun m!495289 () Bool)

(assert (=> b!513728 m!495289))

(push 1)

(assert (not start!46492))

(assert (not b!513725))

(assert (not b!513718))

(assert (not b!513723))

(assert (not b!513726))

(assert (not b!513724))

(assert (not b!513719))

(assert (not b!513728))

(assert (not b!513720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79147 () Bool)

(assert (=> d!79147 (= (validKeyInArray!0 (select (arr!15837 a!3235) j!176)) (and (not (= (select (arr!15837 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15837 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513725 d!79147))

(declare-fun bm!31574 () Bool)

(declare-fun call!31577 () Bool)

(assert (=> bm!31574 (= call!31577 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513821 () Bool)

(declare-fun e!300037 () Bool)

(assert (=> b!513821 (= e!300037 call!31577)))

(declare-fun b!513822 () Bool)

(declare-fun e!300035 () Bool)

(assert (=> b!513822 (= e!300035 call!31577)))

(declare-fun d!79149 () Bool)

(declare-fun res!314064 () Bool)

(declare-fun e!300036 () Bool)

(assert (=> d!79149 (=> res!314064 e!300036)))

(assert (=> d!79149 (= res!314064 (bvsge #b00000000000000000000000000000000 (size!16201 a!3235)))))

(assert (=> d!79149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300036)))

(declare-fun b!513823 () Bool)

(assert (=> b!513823 (= e!300036 e!300035)))

(declare-fun c!60164 () Bool)

(assert (=> b!513823 (= c!60164 (validKeyInArray!0 (select (arr!15837 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513824 () Bool)

(assert (=> b!513824 (= e!300035 e!300037)))

(declare-fun lt!235303 () (_ BitVec 64))

(assert (=> b!513824 (= lt!235303 (select (arr!15837 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235302 () Unit!15872)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32935 (_ BitVec 64) (_ BitVec 32)) Unit!15872)

(assert (=> b!513824 (= lt!235302 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235303 #b00000000000000000000000000000000))))

(assert (=> b!513824 (arrayContainsKey!0 a!3235 lt!235303 #b00000000000000000000000000000000)))

(declare-fun lt!235301 () Unit!15872)

(assert (=> b!513824 (= lt!235301 lt!235302)))

(declare-fun res!314063 () Bool)

(assert (=> b!513824 (= res!314063 (= (seekEntryOrOpen!0 (select (arr!15837 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4311 #b00000000000000000000000000000000)))))

(assert (=> b!513824 (=> (not res!314063) (not e!300037))))

(assert (= (and d!79149 (not res!314064)) b!513823))

(assert (= (and b!513823 c!60164) b!513824))

(assert (= (and b!513823 (not c!60164)) b!513822))

(assert (= (and b!513824 res!314063) b!513821))

(assert (= (or b!513821 b!513822) bm!31574))

(declare-fun m!495381 () Bool)

(assert (=> bm!31574 m!495381))

(declare-fun m!495383 () Bool)

(assert (=> b!513823 m!495383))

(assert (=> b!513823 m!495383))

(declare-fun m!495385 () Bool)

(assert (=> b!513823 m!495385))

(assert (=> b!513824 m!495383))

(declare-fun m!495387 () Bool)

(assert (=> b!513824 m!495387))

(declare-fun m!495389 () Bool)

(assert (=> b!513824 m!495389))

(assert (=> b!513824 m!495383))

(declare-fun m!495391 () Bool)

(assert (=> b!513824 m!495391))

(assert (=> b!513720 d!79149))

(declare-fun b!513891 () Bool)

(declare-fun e!300075 () SeekEntryResult!4311)

(declare-fun lt!235329 () SeekEntryResult!4311)

(assert (=> b!513891 (= e!300075 (MissingZero!4311 (index!19434 lt!235329)))))

(declare-fun b!513893 () Bool)

(declare-fun c!60194 () Bool)

(declare-fun lt!235328 () (_ BitVec 64))

(assert (=> b!513893 (= c!60194 (= lt!235328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300074 () SeekEntryResult!4311)

(assert (=> b!513893 (= e!300074 e!300075)))

(declare-fun b!513894 () Bool)

(assert (=> b!513894 (= e!300074 (Found!4311 (index!19434 lt!235329)))))

(declare-fun b!513895 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32935 (_ BitVec 32)) SeekEntryResult!4311)

(assert (=> b!513895 (= e!300075 (seekKeyOrZeroReturnVacant!0 (x!48419 lt!235329) (index!19434 lt!235329) (index!19434 lt!235329) (select (arr!15837 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513896 () Bool)

(declare-fun e!300073 () SeekEntryResult!4311)

(assert (=> b!513896 (= e!300073 e!300074)))

(assert (=> b!513896 (= lt!235328 (select (arr!15837 a!3235) (index!19434 lt!235329)))))

(declare-fun c!60193 () Bool)

(assert (=> b!513896 (= c!60193 (= lt!235328 (select (arr!15837 a!3235) j!176)))))

(declare-fun d!79161 () Bool)

(declare-fun lt!235327 () SeekEntryResult!4311)

(assert (=> d!79161 (and (or (is-Undefined!4311 lt!235327) (not (is-Found!4311 lt!235327)) (and (bvsge (index!19433 lt!235327) #b00000000000000000000000000000000) (bvslt (index!19433 lt!235327) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235327) (is-Found!4311 lt!235327) (not (is-MissingZero!4311 lt!235327)) (and (bvsge (index!19432 lt!235327) #b00000000000000000000000000000000) (bvslt (index!19432 lt!235327) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235327) (is-Found!4311 lt!235327) (is-MissingZero!4311 lt!235327) (not (is-MissingVacant!4311 lt!235327)) (and (bvsge (index!19435 lt!235327) #b00000000000000000000000000000000) (bvslt (index!19435 lt!235327) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235327) (ite (is-Found!4311 lt!235327) (= (select (arr!15837 a!3235) (index!19433 lt!235327)) (select (arr!15837 a!3235) j!176)) (ite (is-MissingZero!4311 lt!235327) (= (select (arr!15837 a!3235) (index!19432 lt!235327)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4311 lt!235327) (= (select (arr!15837 a!3235) (index!19435 lt!235327)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79161 (= lt!235327 e!300073)))

(declare-fun c!60192 () Bool)

(assert (=> d!79161 (= c!60192 (and (is-Intermediate!4311 lt!235329) (undefined!5123 lt!235329)))))

(assert (=> d!79161 (= lt!235329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15837 a!3235) j!176) mask!3524) (select (arr!15837 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79161 (validMask!0 mask!3524)))

(assert (=> d!79161 (= (seekEntryOrOpen!0 (select (arr!15837 a!3235) j!176) a!3235 mask!3524) lt!235327)))

(declare-fun b!513892 () Bool)

(assert (=> b!513892 (= e!300073 Undefined!4311)))

(assert (= (and d!79161 c!60192) b!513892))

(assert (= (and d!79161 (not c!60192)) b!513896))

(assert (= (and b!513896 c!60193) b!513894))

(assert (= (and b!513896 (not c!60193)) b!513893))

(assert (= (and b!513893 c!60194) b!513891))

(assert (= (and b!513893 (not c!60194)) b!513895))

(assert (=> b!513895 m!495255))

(declare-fun m!495421 () Bool)

(assert (=> b!513895 m!495421))

(declare-fun m!495423 () Bool)

(assert (=> b!513896 m!495423))

(assert (=> d!79161 m!495255))

(assert (=> d!79161 m!495281))

(declare-fun m!495425 () Bool)

(assert (=> d!79161 m!495425))

(declare-fun m!495427 () Bool)

(assert (=> d!79161 m!495427))

(declare-fun m!495429 () Bool)

(assert (=> d!79161 m!495429))

(assert (=> d!79161 m!495269))

(assert (=> d!79161 m!495281))

(assert (=> d!79161 m!495255))

(declare-fun m!495431 () Bool)

(assert (=> d!79161 m!495431))

(assert (=> b!513726 d!79161))

(declare-fun d!79169 () Bool)

(declare-fun res!314081 () Bool)

(declare-fun e!300080 () Bool)

(assert (=> d!79169 (=> res!314081 e!300080)))

(assert (=> d!79169 (= res!314081 (= (select (arr!15837 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79169 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300080)))

(declare-fun b!513901 () Bool)

(declare-fun e!300081 () Bool)

(assert (=> b!513901 (= e!300080 e!300081)))

(declare-fun res!314082 () Bool)

(assert (=> b!513901 (=> (not res!314082) (not e!300081))))

(assert (=> b!513901 (= res!314082 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16201 a!3235)))))

(declare-fun b!513902 () Bool)

(assert (=> b!513902 (= e!300081 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79169 (not res!314081)) b!513901))

(assert (= (and b!513901 res!314082) b!513902))

(assert (=> d!79169 m!495383))

(declare-fun m!495433 () Bool)

(assert (=> b!513902 m!495433))

(assert (=> b!513724 d!79169))

(declare-fun bm!31581 () Bool)

(declare-fun call!31584 () Bool)

(declare-fun c!60201 () Bool)

(assert (=> bm!31581 (= call!31584 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60201 (Cons!10044 (select (arr!15837 a!3235) #b00000000000000000000000000000000) Nil!10045) Nil!10045)))))

(declare-fun b!513929 () Bool)

(declare-fun e!300103 () Bool)

(declare-fun contains!2739 (List!10048 (_ BitVec 64)) Bool)

(assert (=> b!513929 (= e!300103 (contains!2739 Nil!10045 (select (arr!15837 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513930 () Bool)

(declare-fun e!300102 () Bool)

(declare-fun e!300105 () Bool)

(assert (=> b!513930 (= e!300102 e!300105)))

(declare-fun res!314099 () Bool)

(assert (=> b!513930 (=> (not res!314099) (not e!300105))))

(assert (=> b!513930 (= res!314099 (not e!300103))))

(declare-fun res!314098 () Bool)

(assert (=> b!513930 (=> (not res!314098) (not e!300103))))

(assert (=> b!513930 (= res!314098 (validKeyInArray!0 (select (arr!15837 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79171 () Bool)

(declare-fun res!314097 () Bool)

(assert (=> d!79171 (=> res!314097 e!300102)))

(assert (=> d!79171 (= res!314097 (bvsge #b00000000000000000000000000000000 (size!16201 a!3235)))))

(assert (=> d!79171 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10045) e!300102)))

(declare-fun b!513931 () Bool)

(declare-fun e!300104 () Bool)

(assert (=> b!513931 (= e!300104 call!31584)))

(declare-fun b!513932 () Bool)

(assert (=> b!513932 (= e!300105 e!300104)))

(assert (=> b!513932 (= c!60201 (validKeyInArray!0 (select (arr!15837 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513933 () Bool)

(assert (=> b!513933 (= e!300104 call!31584)))

(assert (= (and d!79171 (not res!314097)) b!513930))

(assert (= (and b!513930 res!314098) b!513929))

(assert (= (and b!513930 res!314099) b!513932))

(assert (= (and b!513932 c!60201) b!513931))

(assert (= (and b!513932 (not c!60201)) b!513933))

(assert (= (or b!513931 b!513933) bm!31581))

(assert (=> bm!31581 m!495383))

(declare-fun m!495453 () Bool)

(assert (=> bm!31581 m!495453))

(assert (=> b!513929 m!495383))

(assert (=> b!513929 m!495383))

(declare-fun m!495455 () Bool)

(assert (=> b!513929 m!495455))

(assert (=> b!513930 m!495383))

(assert (=> b!513930 m!495383))

(assert (=> b!513930 m!495385))

(assert (=> b!513932 m!495383))

(assert (=> b!513932 m!495383))

(assert (=> b!513932 m!495385))

(assert (=> b!513719 d!79171))

(declare-fun d!79179 () Bool)

(declare-fun lt!235351 () (_ BitVec 32))

(declare-fun lt!235350 () (_ BitVec 32))

(assert (=> d!79179 (= lt!235351 (bvmul (bvxor lt!235350 (bvlshr lt!235350 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79179 (= lt!235350 ((_ extract 31 0) (bvand (bvxor (select (arr!15837 a!3235) j!176) (bvlshr (select (arr!15837 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79179 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314100 (let ((h!10937 ((_ extract 31 0) (bvand (bvxor (select (arr!15837 a!3235) j!176) (bvlshr (select (arr!15837 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48425 (bvmul (bvxor h!10937 (bvlshr h!10937 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48425 (bvlshr x!48425 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314100 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314100 #b00000000000000000000000000000000))))))

(assert (=> d!79179 (= (toIndex!0 (select (arr!15837 a!3235) j!176) mask!3524) (bvand (bvxor lt!235351 (bvlshr lt!235351 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513728 d!79179))

(declare-fun b!514027 () Bool)

(declare-fun e!300167 () Bool)

(declare-fun lt!235379 () SeekEntryResult!4311)

(assert (=> b!514027 (= e!300167 (bvsge (x!48419 lt!235379) #b01111111111111111111111111111110))))

(declare-fun b!514028 () Bool)

(declare-fun e!300168 () SeekEntryResult!4311)

(declare-fun e!300170 () SeekEntryResult!4311)

(assert (=> b!514028 (= e!300168 e!300170)))

(declare-fun c!60230 () Bool)

(declare-fun lt!235378 () (_ BitVec 64))

(assert (=> b!514028 (= c!60230 (or (= lt!235378 (select (arr!15837 a!3235) j!176)) (= (bvadd lt!235378 lt!235378) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514029 () Bool)

(assert (=> b!514029 (and (bvsge (index!19434 lt!235379) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235379) (size!16201 a!3235)))))

(declare-fun res!314143 () Bool)

(assert (=> b!514029 (= res!314143 (= (select (arr!15837 a!3235) (index!19434 lt!235379)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300166 () Bool)

(assert (=> b!514029 (=> res!314143 e!300166)))

(declare-fun b!514030 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514030 (= e!300170 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235241 #b00000000000000000000000000000000 mask!3524) (select (arr!15837 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514031 () Bool)

(assert (=> b!514031 (and (bvsge (index!19434 lt!235379) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235379) (size!16201 a!3235)))))

(assert (=> b!514031 (= e!300166 (= (select (arr!15837 a!3235) (index!19434 lt!235379)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514032 () Bool)

(declare-fun e!300169 () Bool)

(assert (=> b!514032 (= e!300167 e!300169)))

(declare-fun res!314141 () Bool)

(assert (=> b!514032 (= res!314141 (and (is-Intermediate!4311 lt!235379) (not (undefined!5123 lt!235379)) (bvslt (x!48419 lt!235379) #b01111111111111111111111111111110) (bvsge (x!48419 lt!235379) #b00000000000000000000000000000000) (bvsge (x!48419 lt!235379) #b00000000000000000000000000000000)))))

(assert (=> b!514032 (=> (not res!314141) (not e!300169))))

(declare-fun b!514033 () Bool)

(assert (=> b!514033 (= e!300170 (Intermediate!4311 false lt!235241 #b00000000000000000000000000000000))))

(declare-fun b!514034 () Bool)

(assert (=> b!514034 (and (bvsge (index!19434 lt!235379) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235379) (size!16201 a!3235)))))

(declare-fun res!314142 () Bool)

(assert (=> b!514034 (= res!314142 (= (select (arr!15837 a!3235) (index!19434 lt!235379)) (select (arr!15837 a!3235) j!176)))))

(assert (=> b!514034 (=> res!314142 e!300166)))

(assert (=> b!514034 (= e!300169 e!300166)))

(declare-fun d!79181 () Bool)

(assert (=> d!79181 e!300167))

(declare-fun c!60231 () Bool)

(assert (=> d!79181 (= c!60231 (and (is-Intermediate!4311 lt!235379) (undefined!5123 lt!235379)))))

(assert (=> d!79181 (= lt!235379 e!300168)))

(declare-fun c!60229 () Bool)

(assert (=> d!79181 (= c!60229 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79181 (= lt!235378 (select (arr!15837 a!3235) lt!235241))))

(assert (=> d!79181 (validMask!0 mask!3524)))

(assert (=> d!79181 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235241 (select (arr!15837 a!3235) j!176) a!3235 mask!3524) lt!235379)))

(declare-fun b!514035 () Bool)

(assert (=> b!514035 (= e!300168 (Intermediate!4311 true lt!235241 #b00000000000000000000000000000000))))

(assert (= (and d!79181 c!60229) b!514035))

(assert (= (and d!79181 (not c!60229)) b!514028))

(assert (= (and b!514028 c!60230) b!514033))

(assert (= (and b!514028 (not c!60230)) b!514030))

(assert (= (and d!79181 c!60231) b!514027))

(assert (= (and d!79181 (not c!60231)) b!514032))

(assert (= (and b!514032 res!314141) b!514034))

(assert (= (and b!514034 (not res!314142)) b!514029))

(assert (= (and b!514029 (not res!314143)) b!514031))

(declare-fun m!495499 () Bool)

(assert (=> d!79181 m!495499))

(assert (=> d!79181 m!495269))

(declare-fun m!495501 () Bool)

(assert (=> b!514029 m!495501))

(declare-fun m!495503 () Bool)

(assert (=> b!514030 m!495503))

(assert (=> b!514030 m!495503))

(assert (=> b!514030 m!495255))

(declare-fun m!495505 () Bool)

(assert (=> b!514030 m!495505))

(assert (=> b!514031 m!495501))

(assert (=> b!514034 m!495501))

(assert (=> b!513728 d!79181))

(declare-fun bm!31588 () Bool)

(declare-fun call!31591 () Bool)

(assert (=> bm!31588 (= call!31591 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514036 () Bool)

(declare-fun e!300173 () Bool)

(assert (=> b!514036 (= e!300173 call!31591)))

(declare-fun b!514037 () Bool)

(declare-fun e!300171 () Bool)

(assert (=> b!514037 (= e!300171 call!31591)))

(declare-fun d!79201 () Bool)

(declare-fun res!314145 () Bool)

(declare-fun e!300172 () Bool)

(assert (=> d!79201 (=> res!314145 e!300172)))

(assert (=> d!79201 (= res!314145 (bvsge j!176 (size!16201 a!3235)))))

(assert (=> d!79201 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300172)))

(declare-fun b!514038 () Bool)

(assert (=> b!514038 (= e!300172 e!300171)))

(declare-fun c!60232 () Bool)

(assert (=> b!514038 (= c!60232 (validKeyInArray!0 (select (arr!15837 a!3235) j!176)))))

(declare-fun b!514039 () Bool)

(assert (=> b!514039 (= e!300171 e!300173)))

(declare-fun lt!235382 () (_ BitVec 64))

(assert (=> b!514039 (= lt!235382 (select (arr!15837 a!3235) j!176))))

(declare-fun lt!235381 () Unit!15872)

(assert (=> b!514039 (= lt!235381 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235382 j!176))))

(assert (=> b!514039 (arrayContainsKey!0 a!3235 lt!235382 #b00000000000000000000000000000000)))

(declare-fun lt!235380 () Unit!15872)

(assert (=> b!514039 (= lt!235380 lt!235381)))

(declare-fun res!314144 () Bool)

(assert (=> b!514039 (= res!314144 (= (seekEntryOrOpen!0 (select (arr!15837 a!3235) j!176) a!3235 mask!3524) (Found!4311 j!176)))))

(assert (=> b!514039 (=> (not res!314144) (not e!300173))))

(assert (= (and d!79201 (not res!314145)) b!514038))

(assert (= (and b!514038 c!60232) b!514039))

(assert (= (and b!514038 (not c!60232)) b!514037))

(assert (= (and b!514039 res!314144) b!514036))

(assert (= (or b!514036 b!514037) bm!31588))

(declare-fun m!495507 () Bool)

(assert (=> bm!31588 m!495507))

(assert (=> b!514038 m!495255))

(assert (=> b!514038 m!495255))

(assert (=> b!514038 m!495257))

(assert (=> b!514039 m!495255))

(declare-fun m!495509 () Bool)

(assert (=> b!514039 m!495509))

(declare-fun m!495511 () Bool)

(assert (=> b!514039 m!495511))

(assert (=> b!514039 m!495255))

(assert (=> b!514039 m!495265))

(assert (=> b!513728 d!79201))

(declare-fun b!514040 () Bool)

(declare-fun e!300175 () Bool)

(declare-fun lt!235387 () SeekEntryResult!4311)

(assert (=> b!514040 (= e!300175 (bvsge (x!48419 lt!235387) #b01111111111111111111111111111110))))

(declare-fun b!514041 () Bool)

(declare-fun e!300176 () SeekEntryResult!4311)

(declare-fun e!300178 () SeekEntryResult!4311)

(assert (=> b!514041 (= e!300176 e!300178)))

(declare-fun c!60234 () Bool)

(declare-fun lt!235386 () (_ BitVec 64))

(assert (=> b!514041 (= c!60234 (or (= lt!235386 (select (store (arr!15837 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235386 lt!235386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514042 () Bool)

(assert (=> b!514042 (and (bvsge (index!19434 lt!235387) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235387) (size!16201 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)))))))

(declare-fun res!314148 () Bool)

(assert (=> b!514042 (= res!314148 (= (select (arr!15837 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235))) (index!19434 lt!235387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300174 () Bool)

(assert (=> b!514042 (=> res!314148 e!300174)))

(declare-fun b!514043 () Bool)

(assert (=> b!514043 (= e!300178 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235240 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)) mask!3524))))

(declare-fun b!514044 () Bool)

(assert (=> b!514044 (and (bvsge (index!19434 lt!235387) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235387) (size!16201 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)))))))

(assert (=> b!514044 (= e!300174 (= (select (arr!15837 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235))) (index!19434 lt!235387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514045 () Bool)

(declare-fun e!300177 () Bool)

(assert (=> b!514045 (= e!300175 e!300177)))

(declare-fun res!314146 () Bool)

(assert (=> b!514045 (= res!314146 (and (is-Intermediate!4311 lt!235387) (not (undefined!5123 lt!235387)) (bvslt (x!48419 lt!235387) #b01111111111111111111111111111110) (bvsge (x!48419 lt!235387) #b00000000000000000000000000000000) (bvsge (x!48419 lt!235387) #b00000000000000000000000000000000)))))

(assert (=> b!514045 (=> (not res!314146) (not e!300177))))

(declare-fun b!514046 () Bool)

(assert (=> b!514046 (= e!300178 (Intermediate!4311 false lt!235240 #b00000000000000000000000000000000))))

(declare-fun b!514047 () Bool)

(assert (=> b!514047 (and (bvsge (index!19434 lt!235387) #b00000000000000000000000000000000) (bvslt (index!19434 lt!235387) (size!16201 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)))))))

(declare-fun res!314147 () Bool)

(assert (=> b!514047 (= res!314147 (= (select (arr!15837 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235))) (index!19434 lt!235387)) (select (store (arr!15837 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!514047 (=> res!314147 e!300174)))

(assert (=> b!514047 (= e!300177 e!300174)))

(declare-fun d!79203 () Bool)

(assert (=> d!79203 e!300175))

(declare-fun c!60235 () Bool)

(assert (=> d!79203 (= c!60235 (and (is-Intermediate!4311 lt!235387) (undefined!5123 lt!235387)))))

(assert (=> d!79203 (= lt!235387 e!300176)))

(declare-fun c!60233 () Bool)

(assert (=> d!79203 (= c!60233 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79203 (= lt!235386 (select (arr!15837 (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235))) lt!235240))))

(assert (=> d!79203 (validMask!0 mask!3524)))

(assert (=> d!79203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235240 (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) (array!32936 (store (arr!15837 a!3235) i!1204 k!2280) (size!16201 a!3235)) mask!3524) lt!235387)))

(declare-fun b!514048 () Bool)

(assert (=> b!514048 (= e!300176 (Intermediate!4311 true lt!235240 #b00000000000000000000000000000000))))

(assert (= (and d!79203 c!60233) b!514048))

(assert (= (and d!79203 (not c!60233)) b!514041))

(assert (= (and b!514041 c!60234) b!514046))

(assert (= (and b!514041 (not c!60234)) b!514043))

(assert (= (and d!79203 c!60235) b!514040))

(assert (= (and d!79203 (not c!60235)) b!514045))

(assert (= (and b!514045 res!314146) b!514047))

(assert (= (and b!514047 (not res!314147)) b!514042))

(assert (= (and b!514042 (not res!314148)) b!514044))

(declare-fun m!495515 () Bool)

(assert (=> d!79203 m!495515))

(assert (=> d!79203 m!495269))

(declare-fun m!495518 () Bool)

(assert (=> b!514042 m!495518))

(declare-fun m!495521 () Bool)

(assert (=> b!514043 m!495521))

(assert (=> b!514043 m!495521))

(assert (=> b!514043 m!495279))

(declare-fun m!495527 () Bool)

(assert (=> b!514043 m!495527))

(assert (=> b!514044 m!495518))

(assert (=> b!514047 m!495518))

(assert (=> b!513728 d!79203))

(declare-fun d!79209 () Bool)

(assert (=> d!79209 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235398 () Unit!15872)

(declare-fun choose!38 (array!32935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15872)

(assert (=> d!79209 (= lt!235398 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79209 (validMask!0 mask!3524)))

(assert (=> d!79209 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235398)))

(declare-fun bs!16259 () Bool)

(assert (= bs!16259 d!79209))

(assert (=> bs!16259 m!495285))

(declare-fun m!495551 () Bool)

(assert (=> bs!16259 m!495551))

(assert (=> bs!16259 m!495269))

(assert (=> b!513728 d!79209))

(declare-fun d!79217 () Bool)

(declare-fun lt!235400 () (_ BitVec 32))

(declare-fun lt!235399 () (_ BitVec 32))

(assert (=> d!79217 (= lt!235400 (bvmul (bvxor lt!235399 (bvlshr lt!235399 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79217 (= lt!235399 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79217 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314100 (let ((h!10937 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48425 (bvmul (bvxor h!10937 (bvlshr h!10937 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48425 (bvlshr x!48425 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314100 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314100 #b00000000000000000000000000000000))))))

(assert (=> d!79217 (= (toIndex!0 (select (store (arr!15837 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235400 (bvlshr lt!235400 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513728 d!79217))

(declare-fun d!79219 () Bool)

(assert (=> d!79219 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46492 d!79219))

(declare-fun d!79225 () Bool)

(assert (=> d!79225 (= (array_inv!11611 a!3235) (bvsge (size!16201 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46492 d!79225))

(declare-fun d!79227 () Bool)

(assert (=> d!79227 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513723 d!79227))

(declare-fun b!514080 () Bool)

(declare-fun e!300205 () SeekEntryResult!4311)

(declare-fun lt!235403 () SeekEntryResult!4311)

(assert (=> b!514080 (= e!300205 (MissingZero!4311 (index!19434 lt!235403)))))

(declare-fun b!514082 () Bool)

(declare-fun c!60245 () Bool)

(declare-fun lt!235402 () (_ BitVec 64))

(assert (=> b!514082 (= c!60245 (= lt!235402 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300204 () SeekEntryResult!4311)

(assert (=> b!514082 (= e!300204 e!300205)))

(declare-fun b!514083 () Bool)

(assert (=> b!514083 (= e!300204 (Found!4311 (index!19434 lt!235403)))))

(declare-fun b!514084 () Bool)

(assert (=> b!514084 (= e!300205 (seekKeyOrZeroReturnVacant!0 (x!48419 lt!235403) (index!19434 lt!235403) (index!19434 lt!235403) k!2280 a!3235 mask!3524))))

(declare-fun b!514085 () Bool)

(declare-fun e!300203 () SeekEntryResult!4311)

(assert (=> b!514085 (= e!300203 e!300204)))

(assert (=> b!514085 (= lt!235402 (select (arr!15837 a!3235) (index!19434 lt!235403)))))

(declare-fun c!60244 () Bool)

(assert (=> b!514085 (= c!60244 (= lt!235402 k!2280))))

(declare-fun d!79229 () Bool)

(declare-fun lt!235401 () SeekEntryResult!4311)

(assert (=> d!79229 (and (or (is-Undefined!4311 lt!235401) (not (is-Found!4311 lt!235401)) (and (bvsge (index!19433 lt!235401) #b00000000000000000000000000000000) (bvslt (index!19433 lt!235401) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235401) (is-Found!4311 lt!235401) (not (is-MissingZero!4311 lt!235401)) (and (bvsge (index!19432 lt!235401) #b00000000000000000000000000000000) (bvslt (index!19432 lt!235401) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235401) (is-Found!4311 lt!235401) (is-MissingZero!4311 lt!235401) (not (is-MissingVacant!4311 lt!235401)) (and (bvsge (index!19435 lt!235401) #b00000000000000000000000000000000) (bvslt (index!19435 lt!235401) (size!16201 a!3235)))) (or (is-Undefined!4311 lt!235401) (ite (is-Found!4311 lt!235401) (= (select (arr!15837 a!3235) (index!19433 lt!235401)) k!2280) (ite (is-MissingZero!4311 lt!235401) (= (select (arr!15837 a!3235) (index!19432 lt!235401)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4311 lt!235401) (= (select (arr!15837 a!3235) (index!19435 lt!235401)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79229 (= lt!235401 e!300203)))

(declare-fun c!60243 () Bool)

(assert (=> d!79229 (= c!60243 (and (is-Intermediate!4311 lt!235403) (undefined!5123 lt!235403)))))

(assert (=> d!79229 (= lt!235403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79229 (validMask!0 mask!3524)))

(assert (=> d!79229 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235401)))

(declare-fun b!514081 () Bool)

(assert (=> b!514081 (= e!300203 Undefined!4311)))

(assert (= (and d!79229 c!60243) b!514081))

(assert (= (and d!79229 (not c!60243)) b!514085))

(assert (= (and b!514085 c!60244) b!514083))

(assert (= (and b!514085 (not c!60244)) b!514082))

(assert (= (and b!514082 c!60245) b!514080))

(assert (= (and b!514082 (not c!60245)) b!514084))

(declare-fun m!495557 () Bool)

(assert (=> b!514084 m!495557))

(declare-fun m!495559 () Bool)

(assert (=> b!514085 m!495559))

(declare-fun m!495561 () Bool)

(assert (=> d!79229 m!495561))

(declare-fun m!495563 () Bool)

(assert (=> d!79229 m!495563))

(declare-fun m!495565 () Bool)

(assert (=> d!79229 m!495565))

(declare-fun m!495567 () Bool)

(assert (=> d!79229 m!495567))

(assert (=> d!79229 m!495269))

(assert (=> d!79229 m!495561))

(declare-fun m!495569 () Bool)

(assert (=> d!79229 m!495569))

(assert (=> b!513718 d!79229))

(push 1)

(assert (not b!513824))

(assert (not bm!31574))

(assert (not d!79229))

(assert (not b!513902))

(assert (not b!514030))

(assert (not d!79161))

(assert (not d!79209))

(assert (not b!513823))

(assert (not b!514039))

(assert (not b!513930))

(assert (not b!513895))

(assert (not b!513932))

(assert (not b!513929))

(assert (not b!514084))

(assert (not d!79203))

(assert (not b!514043))

(assert (not d!79181))

(assert (not b!514038))

(assert (not bm!31581))

(assert (not bm!31588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

