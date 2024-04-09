; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25518 () Bool)

(assert start!25518)

(declare-fun b!265167 () Bool)

(declare-fun res!129648 () Bool)

(declare-fun e!171729 () Bool)

(assert (=> b!265167 (=> (not res!129648) (not e!171729))))

(declare-datatypes ((array!12768 0))(
  ( (array!12769 (arr!6041 (Array (_ BitVec 32) (_ BitVec 64))) (size!6393 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12768)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265167 (= res!129648 (and (= (size!6393 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6393 a!3436))))))

(declare-fun b!265168 () Bool)

(declare-fun e!171728 () Bool)

(declare-datatypes ((List!3876 0))(
  ( (Nil!3873) (Cons!3872 (h!4539 (_ BitVec 64)) (t!8966 List!3876)) )
))
(declare-fun noDuplicate!105 (List!3876) Bool)

(assert (=> b!265168 (= e!171728 (not (noDuplicate!105 Nil!3873)))))

(declare-fun b!265169 () Bool)

(declare-fun res!129647 () Bool)

(assert (=> b!265169 (=> (not res!129647) (not e!171728))))

(assert (=> b!265169 (= res!129647 (and (bvsle #b00000000000000000000000000000000 (size!6393 a!3436)) (bvslt (size!6393 a!3436) #b01111111111111111111111111111111)))))

(declare-fun res!129651 () Bool)

(assert (=> start!25518 (=> (not res!129651) (not e!171729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25518 (= res!129651 (validMask!0 mask!4002))))

(assert (=> start!25518 e!171729))

(assert (=> start!25518 true))

(declare-fun array_inv!3995 (array!12768) Bool)

(assert (=> start!25518 (array_inv!3995 a!3436)))

(declare-fun b!265170 () Bool)

(declare-fun res!129650 () Bool)

(assert (=> b!265170 (=> (not res!129650) (not e!171729))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265170 (= res!129650 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265171 () Bool)

(assert (=> b!265171 (= e!171729 e!171728)))

(declare-fun res!129649 () Bool)

(assert (=> b!265171 (=> (not res!129649) (not e!171728))))

(declare-datatypes ((SeekEntryResult!1243 0))(
  ( (MissingZero!1243 (index!7142 (_ BitVec 32))) (Found!1243 (index!7143 (_ BitVec 32))) (Intermediate!1243 (undefined!2055 Bool) (index!7144 (_ BitVec 32)) (x!25432 (_ BitVec 32))) (Undefined!1243) (MissingVacant!1243 (index!7145 (_ BitVec 32))) )
))
(declare-fun lt!134048 () SeekEntryResult!1243)

(assert (=> b!265171 (= res!129649 (or (= lt!134048 (MissingZero!1243 i!1355)) (= lt!134048 (MissingVacant!1243 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12768 (_ BitVec 32)) SeekEntryResult!1243)

(assert (=> b!265171 (= lt!134048 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265172 () Bool)

(declare-fun res!129645 () Bool)

(assert (=> b!265172 (=> (not res!129645) (not e!171729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265172 (= res!129645 (validKeyInArray!0 k0!2698))))

(declare-fun b!265173 () Bool)

(declare-fun res!129646 () Bool)

(assert (=> b!265173 (=> (not res!129646) (not e!171728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12768 (_ BitVec 32)) Bool)

(assert (=> b!265173 (= res!129646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25518 res!129651) b!265167))

(assert (= (and b!265167 res!129648) b!265172))

(assert (= (and b!265172 res!129645) b!265170))

(assert (= (and b!265170 res!129650) b!265171))

(assert (= (and b!265171 res!129649) b!265173))

(assert (= (and b!265173 res!129646) b!265169))

(assert (= (and b!265169 res!129647) b!265168))

(declare-fun m!282073 () Bool)

(assert (=> start!25518 m!282073))

(declare-fun m!282075 () Bool)

(assert (=> start!25518 m!282075))

(declare-fun m!282077 () Bool)

(assert (=> b!265168 m!282077))

(declare-fun m!282079 () Bool)

(assert (=> b!265173 m!282079))

(declare-fun m!282081 () Bool)

(assert (=> b!265172 m!282081))

(declare-fun m!282083 () Bool)

(assert (=> b!265171 m!282083))

(declare-fun m!282085 () Bool)

(assert (=> b!265170 m!282085))

(check-sat (not b!265170) (not b!265173) (not b!265172) (not b!265171) (not start!25518) (not b!265168))
(check-sat)
(get-model)

(declare-fun b!265237 () Bool)

(declare-fun e!171766 () SeekEntryResult!1243)

(declare-fun lt!134076 () SeekEntryResult!1243)

(assert (=> b!265237 (= e!171766 (Found!1243 (index!7144 lt!134076)))))

(declare-fun b!265238 () Bool)

(declare-fun e!171765 () SeekEntryResult!1243)

(assert (=> b!265238 (= e!171765 (MissingZero!1243 (index!7144 lt!134076)))))

(declare-fun b!265239 () Bool)

(declare-fun e!171764 () SeekEntryResult!1243)

(assert (=> b!265239 (= e!171764 e!171766)))

(declare-fun lt!134078 () (_ BitVec 64))

(assert (=> b!265239 (= lt!134078 (select (arr!6041 a!3436) (index!7144 lt!134076)))))

(declare-fun c!45330 () Bool)

(assert (=> b!265239 (= c!45330 (= lt!134078 k0!2698))))

(declare-fun b!265240 () Bool)

(assert (=> b!265240 (= e!171764 Undefined!1243)))

(declare-fun b!265241 () Bool)

(declare-fun c!45331 () Bool)

(assert (=> b!265241 (= c!45331 (= lt!134078 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!265241 (= e!171766 e!171765)))

(declare-fun d!64059 () Bool)

(declare-fun lt!134077 () SeekEntryResult!1243)

(get-info :version)

(assert (=> d!64059 (and (or ((_ is Undefined!1243) lt!134077) (not ((_ is Found!1243) lt!134077)) (and (bvsge (index!7143 lt!134077) #b00000000000000000000000000000000) (bvslt (index!7143 lt!134077) (size!6393 a!3436)))) (or ((_ is Undefined!1243) lt!134077) ((_ is Found!1243) lt!134077) (not ((_ is MissingZero!1243) lt!134077)) (and (bvsge (index!7142 lt!134077) #b00000000000000000000000000000000) (bvslt (index!7142 lt!134077) (size!6393 a!3436)))) (or ((_ is Undefined!1243) lt!134077) ((_ is Found!1243) lt!134077) ((_ is MissingZero!1243) lt!134077) (not ((_ is MissingVacant!1243) lt!134077)) (and (bvsge (index!7145 lt!134077) #b00000000000000000000000000000000) (bvslt (index!7145 lt!134077) (size!6393 a!3436)))) (or ((_ is Undefined!1243) lt!134077) (ite ((_ is Found!1243) lt!134077) (= (select (arr!6041 a!3436) (index!7143 lt!134077)) k0!2698) (ite ((_ is MissingZero!1243) lt!134077) (= (select (arr!6041 a!3436) (index!7142 lt!134077)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1243) lt!134077) (= (select (arr!6041 a!3436) (index!7145 lt!134077)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64059 (= lt!134077 e!171764)))

(declare-fun c!45332 () Bool)

(assert (=> d!64059 (= c!45332 (and ((_ is Intermediate!1243) lt!134076) (undefined!2055 lt!134076)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12768 (_ BitVec 32)) SeekEntryResult!1243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64059 (= lt!134076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2698 mask!4002) k0!2698 a!3436 mask!4002))))

(assert (=> d!64059 (validMask!0 mask!4002)))

(assert (=> d!64059 (= (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002) lt!134077)))

(declare-fun b!265242 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12768 (_ BitVec 32)) SeekEntryResult!1243)

(assert (=> b!265242 (= e!171765 (seekKeyOrZeroReturnVacant!0 (x!25432 lt!134076) (index!7144 lt!134076) (index!7144 lt!134076) k0!2698 a!3436 mask!4002))))

(assert (= (and d!64059 c!45332) b!265240))

(assert (= (and d!64059 (not c!45332)) b!265239))

(assert (= (and b!265239 c!45330) b!265237))

(assert (= (and b!265239 (not c!45330)) b!265241))

(assert (= (and b!265241 c!45331) b!265238))

(assert (= (and b!265241 (not c!45331)) b!265242))

(declare-fun m!282127 () Bool)

(assert (=> b!265239 m!282127))

(declare-fun m!282129 () Bool)

(assert (=> d!64059 m!282129))

(declare-fun m!282131 () Bool)

(assert (=> d!64059 m!282131))

(declare-fun m!282133 () Bool)

(assert (=> d!64059 m!282133))

(declare-fun m!282135 () Bool)

(assert (=> d!64059 m!282135))

(assert (=> d!64059 m!282073))

(assert (=> d!64059 m!282131))

(declare-fun m!282137 () Bool)

(assert (=> d!64059 m!282137))

(declare-fun m!282139 () Bool)

(assert (=> b!265242 m!282139))

(assert (=> b!265171 d!64059))

(declare-fun d!64075 () Bool)

(declare-fun res!129683 () Bool)

(declare-fun e!171771 () Bool)

(assert (=> d!64075 (=> res!129683 e!171771)))

(assert (=> d!64075 (= res!129683 (= (select (arr!6041 a!3436) #b00000000000000000000000000000000) k0!2698))))

(assert (=> d!64075 (= (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000) e!171771)))

(declare-fun b!265247 () Bool)

(declare-fun e!171772 () Bool)

(assert (=> b!265247 (= e!171771 e!171772)))

(declare-fun res!129684 () Bool)

(assert (=> b!265247 (=> (not res!129684) (not e!171772))))

(assert (=> b!265247 (= res!129684 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6393 a!3436)))))

(declare-fun b!265248 () Bool)

(assert (=> b!265248 (= e!171772 (arrayContainsKey!0 a!3436 k0!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64075 (not res!129683)) b!265247))

(assert (= (and b!265247 res!129684) b!265248))

(declare-fun m!282141 () Bool)

(assert (=> d!64075 m!282141))

(declare-fun m!282143 () Bool)

(assert (=> b!265248 m!282143))

(assert (=> b!265170 d!64075))

(declare-fun d!64077 () Bool)

(declare-fun res!129689 () Bool)

(declare-fun e!171777 () Bool)

(assert (=> d!64077 (=> res!129689 e!171777)))

(assert (=> d!64077 (= res!129689 ((_ is Nil!3873) Nil!3873))))

(assert (=> d!64077 (= (noDuplicate!105 Nil!3873) e!171777)))

(declare-fun b!265253 () Bool)

(declare-fun e!171778 () Bool)

(assert (=> b!265253 (= e!171777 e!171778)))

(declare-fun res!129690 () Bool)

(assert (=> b!265253 (=> (not res!129690) (not e!171778))))

(declare-fun contains!1916 (List!3876 (_ BitVec 64)) Bool)

(assert (=> b!265253 (= res!129690 (not (contains!1916 (t!8966 Nil!3873) (h!4539 Nil!3873))))))

(declare-fun b!265254 () Bool)

(assert (=> b!265254 (= e!171778 (noDuplicate!105 (t!8966 Nil!3873)))))

(assert (= (and d!64077 (not res!129689)) b!265253))

(assert (= (and b!265253 res!129690) b!265254))

(declare-fun m!282145 () Bool)

(assert (=> b!265253 m!282145))

(declare-fun m!282147 () Bool)

(assert (=> b!265254 m!282147))

(assert (=> b!265168 d!64077))

(declare-fun d!64079 () Bool)

(assert (=> d!64079 (= (validKeyInArray!0 k0!2698) (and (not (= k0!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265172 d!64079))

(declare-fun d!64085 () Bool)

(assert (=> d!64085 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25518 d!64085))

(declare-fun d!64095 () Bool)

(assert (=> d!64095 (= (array_inv!3995 a!3436) (bvsge (size!6393 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25518 d!64095))

(declare-fun bm!25325 () Bool)

(declare-fun call!25328 () Bool)

(assert (=> bm!25325 (= call!25328 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun d!64097 () Bool)

(declare-fun res!129726 () Bool)

(declare-fun e!171828 () Bool)

(assert (=> d!64097 (=> res!129726 e!171828)))

(assert (=> d!64097 (= res!129726 (bvsge #b00000000000000000000000000000000 (size!6393 a!3436)))))

(assert (=> d!64097 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171828)))

(declare-fun b!265317 () Bool)

(declare-fun e!171827 () Bool)

(assert (=> b!265317 (= e!171827 call!25328)))

(declare-fun b!265318 () Bool)

(declare-fun e!171829 () Bool)

(assert (=> b!265318 (= e!171827 e!171829)))

(declare-fun lt!134105 () (_ BitVec 64))

(assert (=> b!265318 (= lt!134105 (select (arr!6041 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8260 0))(
  ( (Unit!8261) )
))
(declare-fun lt!134104 () Unit!8260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12768 (_ BitVec 64) (_ BitVec 32)) Unit!8260)

(assert (=> b!265318 (= lt!134104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134105 #b00000000000000000000000000000000))))

(assert (=> b!265318 (arrayContainsKey!0 a!3436 lt!134105 #b00000000000000000000000000000000)))

(declare-fun lt!134103 () Unit!8260)

(assert (=> b!265318 (= lt!134103 lt!134104)))

(declare-fun res!129725 () Bool)

(assert (=> b!265318 (= res!129725 (= (seekEntryOrOpen!0 (select (arr!6041 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1243 #b00000000000000000000000000000000)))))

(assert (=> b!265318 (=> (not res!129725) (not e!171829))))

(declare-fun b!265319 () Bool)

(assert (=> b!265319 (= e!171829 call!25328)))

(declare-fun b!265320 () Bool)

(assert (=> b!265320 (= e!171828 e!171827)))

(declare-fun c!45347 () Bool)

(assert (=> b!265320 (= c!45347 (validKeyInArray!0 (select (arr!6041 a!3436) #b00000000000000000000000000000000)))))

(assert (= (and d!64097 (not res!129726)) b!265320))

(assert (= (and b!265320 c!45347) b!265318))

(assert (= (and b!265320 (not c!45347)) b!265317))

(assert (= (and b!265318 res!129725) b!265319))

(assert (= (or b!265319 b!265317) bm!25325))

(declare-fun m!282187 () Bool)

(assert (=> bm!25325 m!282187))

(assert (=> b!265318 m!282141))

(declare-fun m!282189 () Bool)

(assert (=> b!265318 m!282189))

(declare-fun m!282191 () Bool)

(assert (=> b!265318 m!282191))

(assert (=> b!265318 m!282141))

(declare-fun m!282193 () Bool)

(assert (=> b!265318 m!282193))

(assert (=> b!265320 m!282141))

(assert (=> b!265320 m!282141))

(declare-fun m!282195 () Bool)

(assert (=> b!265320 m!282195))

(assert (=> b!265173 d!64097))

(check-sat (not bm!25325) (not b!265242) (not b!265254) (not d!64059) (not b!265320) (not b!265318) (not b!265248) (not b!265253))
