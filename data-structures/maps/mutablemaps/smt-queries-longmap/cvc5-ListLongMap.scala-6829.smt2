; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85996 () Bool)

(assert start!85996)

(declare-fun b!995960 () Bool)

(declare-fun e!561997 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!441068 () (_ BitVec 32))

(assert (=> b!995960 (= e!561997 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441068 #b00000000000000000000000000000000) (bvsge lt!441068 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((array!62998 0))(
  ( (array!62999 (arr!30328 (Array (_ BitVec 32) (_ BitVec 64))) (size!30831 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995960 (= lt!441068 (toIndex!0 (select (arr!30328 a!3219) j!170) mask!3464))))

(declare-fun b!995961 () Bool)

(declare-fun res!666323 () Bool)

(assert (=> b!995961 (=> (not res!666323) (not e!561997))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995961 (= res!666323 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30831 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30831 a!3219))))))

(declare-fun b!995962 () Bool)

(declare-fun e!561996 () Bool)

(assert (=> b!995962 (= e!561996 e!561997)))

(declare-fun res!666321 () Bool)

(assert (=> b!995962 (=> (not res!666321) (not e!561997))))

(declare-datatypes ((SeekEntryResult!9260 0))(
  ( (MissingZero!9260 (index!39410 (_ BitVec 32))) (Found!9260 (index!39411 (_ BitVec 32))) (Intermediate!9260 (undefined!10072 Bool) (index!39412 (_ BitVec 32)) (x!86878 (_ BitVec 32))) (Undefined!9260) (MissingVacant!9260 (index!39413 (_ BitVec 32))) )
))
(declare-fun lt!441069 () SeekEntryResult!9260)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995962 (= res!666321 (or (= lt!441069 (MissingVacant!9260 i!1194)) (= lt!441069 (MissingZero!9260 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62998 (_ BitVec 32)) SeekEntryResult!9260)

(assert (=> b!995962 (= lt!441069 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995963 () Bool)

(declare-fun res!666322 () Bool)

(assert (=> b!995963 (=> (not res!666322) (not e!561997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62998 (_ BitVec 32)) Bool)

(assert (=> b!995963 (= res!666322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995964 () Bool)

(declare-fun res!666320 () Bool)

(assert (=> b!995964 (=> (not res!666320) (not e!561997))))

(declare-datatypes ((List!21130 0))(
  ( (Nil!21127) (Cons!21126 (h!22288 (_ BitVec 64)) (t!30139 List!21130)) )
))
(declare-fun arrayNoDuplicates!0 (array!62998 (_ BitVec 32) List!21130) Bool)

(assert (=> b!995964 (= res!666320 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21127))))

(declare-fun b!995965 () Bool)

(declare-fun res!666318 () Bool)

(assert (=> b!995965 (=> (not res!666318) (not e!561996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995965 (= res!666318 (validKeyInArray!0 k!2224))))

(declare-fun b!995966 () Bool)

(declare-fun res!666324 () Bool)

(assert (=> b!995966 (=> (not res!666324) (not e!561996))))

(assert (=> b!995966 (= res!666324 (and (= (size!30831 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30831 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30831 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!666317 () Bool)

(assert (=> start!85996 (=> (not res!666317) (not e!561996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85996 (= res!666317 (validMask!0 mask!3464))))

(assert (=> start!85996 e!561996))

(declare-fun array_inv!23318 (array!62998) Bool)

(assert (=> start!85996 (array_inv!23318 a!3219)))

(assert (=> start!85996 true))

(declare-fun b!995967 () Bool)

(declare-fun res!666319 () Bool)

(assert (=> b!995967 (=> (not res!666319) (not e!561996))))

(declare-fun arrayContainsKey!0 (array!62998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995967 (= res!666319 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995968 () Bool)

(declare-fun res!666325 () Bool)

(assert (=> b!995968 (=> (not res!666325) (not e!561996))))

(assert (=> b!995968 (= res!666325 (validKeyInArray!0 (select (arr!30328 a!3219) j!170)))))

(assert (= (and start!85996 res!666317) b!995966))

(assert (= (and b!995966 res!666324) b!995968))

(assert (= (and b!995968 res!666325) b!995965))

(assert (= (and b!995965 res!666318) b!995967))

(assert (= (and b!995967 res!666319) b!995962))

(assert (= (and b!995962 res!666321) b!995963))

(assert (= (and b!995963 res!666322) b!995964))

(assert (= (and b!995964 res!666320) b!995961))

(assert (= (and b!995961 res!666323) b!995960))

(declare-fun m!923301 () Bool)

(assert (=> b!995964 m!923301))

(declare-fun m!923303 () Bool)

(assert (=> b!995967 m!923303))

(declare-fun m!923305 () Bool)

(assert (=> b!995960 m!923305))

(assert (=> b!995960 m!923305))

(declare-fun m!923307 () Bool)

(assert (=> b!995960 m!923307))

(declare-fun m!923309 () Bool)

(assert (=> b!995962 m!923309))

(declare-fun m!923311 () Bool)

(assert (=> b!995963 m!923311))

(declare-fun m!923313 () Bool)

(assert (=> start!85996 m!923313))

(declare-fun m!923315 () Bool)

(assert (=> start!85996 m!923315))

(assert (=> b!995968 m!923305))

(assert (=> b!995968 m!923305))

(declare-fun m!923317 () Bool)

(assert (=> b!995968 m!923317))

(declare-fun m!923319 () Bool)

(assert (=> b!995965 m!923319))

(push 1)

(assert (not b!995963))

(assert (not b!995965))

(assert (not start!85996))

(assert (not b!995967))

(assert (not b!995964))

(assert (not b!995968))

(assert (not b!995960))

(assert (not b!995962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!996033 () Bool)

(declare-fun e!562023 () Bool)

(declare-fun e!562024 () Bool)

(assert (=> b!996033 (= e!562023 e!562024)))

(declare-fun lt!441100 () (_ BitVec 64))

(assert (=> b!996033 (= lt!441100 (select (arr!30328 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32916 0))(
  ( (Unit!32917) )
))
(declare-fun lt!441098 () Unit!32916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62998 (_ BitVec 64) (_ BitVec 32)) Unit!32916)

(assert (=> b!996033 (= lt!441098 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441100 #b00000000000000000000000000000000))))

(assert (=> b!996033 (arrayContainsKey!0 a!3219 lt!441100 #b00000000000000000000000000000000)))

(declare-fun lt!441099 () Unit!32916)

(assert (=> b!996033 (= lt!441099 lt!441098)))

(declare-fun res!666386 () Bool)

(assert (=> b!996033 (= res!666386 (= (seekEntryOrOpen!0 (select (arr!30328 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9260 #b00000000000000000000000000000000)))))

(assert (=> b!996033 (=> (not res!666386) (not e!562024))))

(declare-fun b!996034 () Bool)

(declare-fun e!562025 () Bool)

(assert (=> b!996034 (= e!562025 e!562023)))

(declare-fun c!100965 () Bool)

(assert (=> b!996034 (= c!100965 (validKeyInArray!0 (select (arr!30328 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996035 () Bool)

(declare-fun call!42226 () Bool)

(assert (=> b!996035 (= e!562024 call!42226)))

(declare-fun b!996036 () Bool)

(assert (=> b!996036 (= e!562023 call!42226)))

(declare-fun d!118901 () Bool)

(declare-fun res!666385 () Bool)

(assert (=> d!118901 (=> res!666385 e!562025)))

(assert (=> d!118901 (= res!666385 (bvsge #b00000000000000000000000000000000 (size!30831 a!3219)))))

(assert (=> d!118901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562025)))

(declare-fun bm!42223 () Bool)

(assert (=> bm!42223 (= call!42226 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!118901 (not res!666385)) b!996034))

(assert (= (and b!996034 c!100965) b!996033))

(assert (= (and b!996034 (not c!100965)) b!996036))

(assert (= (and b!996033 res!666386) b!996035))

(assert (= (or b!996035 b!996036) bm!42223))

(declare-fun m!923361 () Bool)

(assert (=> b!996033 m!923361))

(declare-fun m!923363 () Bool)

(assert (=> b!996033 m!923363))

(declare-fun m!923365 () Bool)

(assert (=> b!996033 m!923365))

(assert (=> b!996033 m!923361))

(declare-fun m!923367 () Bool)

(assert (=> b!996033 m!923367))

(assert (=> b!996034 m!923361))

(assert (=> b!996034 m!923361))

(declare-fun m!923369 () Bool)

(assert (=> b!996034 m!923369))

(declare-fun m!923371 () Bool)

(assert (=> bm!42223 m!923371))

(assert (=> b!995963 d!118901))

(declare-fun d!118903 () Bool)

(assert (=> d!118903 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85996 d!118903))

(declare-fun d!118909 () Bool)

(assert (=> d!118909 (= (array_inv!23318 a!3219) (bvsge (size!30831 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85996 d!118909))

(declare-fun d!118911 () Bool)

(assert (=> d!118911 (= (validKeyInArray!0 (select (arr!30328 a!3219) j!170)) (and (not (= (select (arr!30328 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30328 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995968 d!118911))

(declare-fun d!118913 () Bool)

(declare-fun lt!441128 () SeekEntryResult!9260)

(assert (=> d!118913 (and (or (is-Undefined!9260 lt!441128) (not (is-Found!9260 lt!441128)) (and (bvsge (index!39411 lt!441128) #b00000000000000000000000000000000) (bvslt (index!39411 lt!441128) (size!30831 a!3219)))) (or (is-Undefined!9260 lt!441128) (is-Found!9260 lt!441128) (not (is-MissingZero!9260 lt!441128)) (and (bvsge (index!39410 lt!441128) #b00000000000000000000000000000000) (bvslt (index!39410 lt!441128) (size!30831 a!3219)))) (or (is-Undefined!9260 lt!441128) (is-Found!9260 lt!441128) (is-MissingZero!9260 lt!441128) (not (is-MissingVacant!9260 lt!441128)) (and (bvsge (index!39413 lt!441128) #b00000000000000000000000000000000) (bvslt (index!39413 lt!441128) (size!30831 a!3219)))) (or (is-Undefined!9260 lt!441128) (ite (is-Found!9260 lt!441128) (= (select (arr!30328 a!3219) (index!39411 lt!441128)) k!2224) (ite (is-MissingZero!9260 lt!441128) (= (select (arr!30328 a!3219) (index!39410 lt!441128)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9260 lt!441128) (= (select (arr!30328 a!3219) (index!39413 lt!441128)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!562082 () SeekEntryResult!9260)

(assert (=> d!118913 (= lt!441128 e!562082)))

(declare-fun c!100998 () Bool)

(declare-fun lt!441129 () SeekEntryResult!9260)

(assert (=> d!118913 (= c!100998 (and (is-Intermediate!9260 lt!441129) (undefined!10072 lt!441129)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62998 (_ BitVec 32)) SeekEntryResult!9260)

(assert (=> d!118913 (= lt!441129 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118913 (validMask!0 mask!3464)))

(assert (=> d!118913 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441128)))

(declare-fun b!996121 () Bool)

(declare-fun e!562081 () SeekEntryResult!9260)

(assert (=> b!996121 (= e!562081 (MissingZero!9260 (index!39412 lt!441129)))))

(declare-fun b!996122 () Bool)

(declare-fun c!100999 () Bool)

(declare-fun lt!441127 () (_ BitVec 64))

(assert (=> b!996122 (= c!100999 (= lt!441127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562080 () SeekEntryResult!9260)

(assert (=> b!996122 (= e!562080 e!562081)))

(declare-fun b!996123 () Bool)

(assert (=> b!996123 (= e!562082 Undefined!9260)))

(declare-fun b!996124 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62998 (_ BitVec 32)) SeekEntryResult!9260)

(assert (=> b!996124 (= e!562081 (seekKeyOrZeroReturnVacant!0 (x!86878 lt!441129) (index!39412 lt!441129) (index!39412 lt!441129) k!2224 a!3219 mask!3464))))

(declare-fun b!996125 () Bool)

(assert (=> b!996125 (= e!562080 (Found!9260 (index!39412 lt!441129)))))

(declare-fun b!996126 () Bool)

(assert (=> b!996126 (= e!562082 e!562080)))

(assert (=> b!996126 (= lt!441127 (select (arr!30328 a!3219) (index!39412 lt!441129)))))

(declare-fun c!101000 () Bool)

(assert (=> b!996126 (= c!101000 (= lt!441127 k!2224))))

(assert (= (and d!118913 c!100998) b!996123))

(assert (= (and d!118913 (not c!100998)) b!996126))

(assert (= (and b!996126 c!101000) b!996125))

(assert (= (and b!996126 (not c!101000)) b!996122))

(assert (= (and b!996122 c!100999) b!996121))

(assert (= (and b!996122 (not c!100999)) b!996124))

(declare-fun m!923417 () Bool)

(assert (=> d!118913 m!923417))

(declare-fun m!923419 () Bool)

(assert (=> d!118913 m!923419))

(declare-fun m!923421 () Bool)

(assert (=> d!118913 m!923421))

(declare-fun m!923423 () Bool)

(assert (=> d!118913 m!923423))

(assert (=> d!118913 m!923313))

(assert (=> d!118913 m!923417))

(declare-fun m!923425 () Bool)

(assert (=> d!118913 m!923425))

(declare-fun m!923429 () Bool)

(assert (=> b!996124 m!923429))

(declare-fun m!923433 () Bool)

(assert (=> b!996126 m!923433))

(assert (=> b!995962 d!118913))

(declare-fun d!118927 () Bool)

(declare-fun res!666424 () Bool)

(declare-fun e!562101 () Bool)

(assert (=> d!118927 (=> res!666424 e!562101)))

(assert (=> d!118927 (= res!666424 (bvsge #b00000000000000000000000000000000 (size!30831 a!3219)))))

(assert (=> d!118927 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21127) e!562101)))

(declare-fun b!996147 () Bool)

(declare-fun e!562102 () Bool)

(assert (=> b!996147 (= e!562101 e!562102)))

(declare-fun res!666425 () Bool)

(assert (=> b!996147 (=> (not res!666425) (not e!562102))))

(declare-fun e!562103 () Bool)

(assert (=> b!996147 (= res!666425 (not e!562103))))

(declare-fun res!666426 () Bool)

(assert (=> b!996147 (=> (not res!666426) (not e!562103))))

(assert (=> b!996147 (= res!666426 (validKeyInArray!0 (select (arr!30328 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996148 () Bool)

(declare-fun e!562100 () Bool)

(declare-fun call!42238 () Bool)

(assert (=> b!996148 (= e!562100 call!42238)))

(declare-fun b!996149 () Bool)

(assert (=> b!996149 (= e!562100 call!42238)))

(declare-fun b!996150 () Bool)

(assert (=> b!996150 (= e!562102 e!562100)))

(declare-fun c!101004 () Bool)

(assert (=> b!996150 (= c!101004 (validKeyInArray!0 (select (arr!30328 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42235 () Bool)

(assert (=> bm!42235 (= call!42238 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101004 (Cons!21126 (select (arr!30328 a!3219) #b00000000000000000000000000000000) Nil!21127) Nil!21127)))))

(declare-fun b!996151 () Bool)

(declare-fun contains!5874 (List!21130 (_ BitVec 64)) Bool)

(assert (=> b!996151 (= e!562103 (contains!5874 Nil!21127 (select (arr!30328 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118927 (not res!666424)) b!996147))

(assert (= (and b!996147 res!666426) b!996151))

(assert (= (and b!996147 res!666425) b!996150))

(assert (= (and b!996150 c!101004) b!996148))

(assert (= (and b!996150 (not c!101004)) b!996149))

(assert (= (or b!996148 b!996149) bm!42235))

(assert (=> b!996147 m!923361))

(assert (=> b!996147 m!923361))

(assert (=> b!996147 m!923369))

(assert (=> b!996150 m!923361))

(assert (=> b!996150 m!923361))

(assert (=> b!996150 m!923369))

(assert (=> bm!42235 m!923361))

(declare-fun m!923441 () Bool)

(assert (=> bm!42235 m!923441))

(assert (=> b!996151 m!923361))

(assert (=> b!996151 m!923361))

(declare-fun m!923443 () Bool)

(assert (=> b!996151 m!923443))

(assert (=> b!995964 d!118927))

(declare-fun d!118937 () Bool)

(declare-fun lt!441144 () (_ BitVec 32))

(declare-fun lt!441143 () (_ BitVec 32))

(assert (=> d!118937 (= lt!441144 (bvmul (bvxor lt!441143 (bvlshr lt!441143 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!118937 (= lt!441143 ((_ extract 31 0) (bvand (bvxor (select (arr!30328 a!3219) j!170) (bvlshr (select (arr!30328 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!118937 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!666427 (let ((h!22293 ((_ extract 31 0) (bvand (bvxor (select (arr!30328 a!3219) j!170) (bvlshr (select (arr!30328 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86883 (bvmul (bvxor h!22293 (bvlshr h!22293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86883 (bvlshr x!86883 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!666427 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!666427 #b00000000000000000000000000000000))))))

(assert (=> d!118937 (= (toIndex!0 (select (arr!30328 a!3219) j!170) mask!3464) (bvand (bvxor lt!441144 (bvlshr lt!441144 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!995960 d!118937))

(declare-fun d!118939 () Bool)

(assert (=> d!118939 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995965 d!118939))

(declare-fun d!118941 () Bool)

(declare-fun res!666432 () Bool)

(declare-fun e!562108 () Bool)

(assert (=> d!118941 (=> res!666432 e!562108)))

(assert (=> d!118941 (= res!666432 (= (select (arr!30328 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118941 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!562108)))

(declare-fun b!996156 () Bool)

(declare-fun e!562109 () Bool)

(assert (=> b!996156 (= e!562108 e!562109)))

(declare-fun res!666433 () Bool)

(assert (=> b!996156 (=> (not res!666433) (not e!562109))))

(assert (=> b!996156 (= res!666433 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30831 a!3219)))))

(declare-fun b!996157 () Bool)

(assert (=> b!996157 (= e!562109 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118941 (not res!666432)) b!996156))

(assert (= (and b!996156 res!666433) b!996157))

(assert (=> d!118941 m!923361))

(declare-fun m!923445 () Bool)

(assert (=> b!996157 m!923445))

(assert (=> b!995967 d!118941))

(push 1)

(assert (not bm!42235))

(assert (not d!118913))

(assert (not b!996157))

(assert (not b!996124))

(assert (not b!996034))

(assert (not bm!42223))

(assert (not b!996150))

(assert (not b!996147))

(assert (not b!996033))

(assert (not b!996151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

