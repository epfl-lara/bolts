; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131234 () Bool)

(assert start!131234)

(declare-fun b!1539098 () Bool)

(declare-fun res!1056217 () Bool)

(declare-fun e!856123 () Bool)

(assert (=> b!1539098 (=> (not res!1056217) (not e!856123))))

(declare-datatypes ((array!102226 0))(
  ( (array!102227 (arr!49323 (Array (_ BitVec 32) (_ BitVec 64))) (size!49874 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102226)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539098 (= res!1056217 (validKeyInArray!0 (select (arr!49323 a!2792) j!64)))))

(declare-fun b!1539099 () Bool)

(declare-fun res!1056214 () Bool)

(assert (=> b!1539099 (=> (not res!1056214) (not e!856123))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539099 (= res!1056214 (not (= (select (arr!49323 a!2792) index!463) (select (arr!49323 a!2792) j!64))))))

(declare-fun b!1539100 () Bool)

(declare-fun res!1056219 () Bool)

(assert (=> b!1539100 (=> (not res!1056219) (not e!856123))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539100 (= res!1056219 (and (= (size!49874 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49874 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49874 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539101 () Bool)

(declare-fun res!1056220 () Bool)

(assert (=> b!1539101 (=> (not res!1056220) (not e!856123))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13472 0))(
  ( (MissingZero!13472 (index!56282 (_ BitVec 32))) (Found!13472 (index!56283 (_ BitVec 32))) (Intermediate!13472 (undefined!14284 Bool) (index!56284 (_ BitVec 32)) (x!138008 (_ BitVec 32))) (Undefined!13472) (MissingVacant!13472 (index!56285 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102226 (_ BitVec 32)) SeekEntryResult!13472)

(assert (=> b!1539101 (= res!1056220 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49323 a!2792) j!64) a!2792 mask!2480) (Found!13472 j!64)))))

(declare-fun b!1539102 () Bool)

(declare-fun res!1056218 () Bool)

(assert (=> b!1539102 (=> (not res!1056218) (not e!856123))))

(declare-datatypes ((List!35977 0))(
  ( (Nil!35974) (Cons!35973 (h!37419 (_ BitVec 64)) (t!50678 List!35977)) )
))
(declare-fun arrayNoDuplicates!0 (array!102226 (_ BitVec 32) List!35977) Bool)

(assert (=> b!1539102 (= res!1056218 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35974))))

(declare-fun b!1539103 () Bool)

(declare-fun res!1056221 () Bool)

(assert (=> b!1539103 (=> (not res!1056221) (not e!856123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102226 (_ BitVec 32)) Bool)

(assert (=> b!1539103 (= res!1056221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539104 () Bool)

(declare-fun res!1056216 () Bool)

(assert (=> b!1539104 (=> (not res!1056216) (not e!856123))))

(assert (=> b!1539104 (= res!1056216 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49874 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49874 a!2792)) (= (select (arr!49323 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1056222 () Bool)

(assert (=> start!131234 (=> (not res!1056222) (not e!856123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131234 (= res!1056222 (validMask!0 mask!2480))))

(assert (=> start!131234 e!856123))

(assert (=> start!131234 true))

(declare-fun array_inv!38268 (array!102226) Bool)

(assert (=> start!131234 (array_inv!38268 a!2792)))

(declare-fun b!1539105 () Bool)

(assert (=> b!1539105 (= e!856123 (or (bvslt (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110)))))

(declare-fun lt!664909 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539105 (= lt!664909 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539106 () Bool)

(declare-fun res!1056215 () Bool)

(assert (=> b!1539106 (=> (not res!1056215) (not e!856123))))

(assert (=> b!1539106 (= res!1056215 (validKeyInArray!0 (select (arr!49323 a!2792) i!951)))))

(assert (= (and start!131234 res!1056222) b!1539100))

(assert (= (and b!1539100 res!1056219) b!1539106))

(assert (= (and b!1539106 res!1056215) b!1539098))

(assert (= (and b!1539098 res!1056217) b!1539103))

(assert (= (and b!1539103 res!1056221) b!1539102))

(assert (= (and b!1539102 res!1056218) b!1539104))

(assert (= (and b!1539104 res!1056216) b!1539101))

(assert (= (and b!1539101 res!1056220) b!1539099))

(assert (= (and b!1539099 res!1056214) b!1539105))

(declare-fun m!1421493 () Bool)

(assert (=> b!1539102 m!1421493))

(declare-fun m!1421495 () Bool)

(assert (=> b!1539105 m!1421495))

(declare-fun m!1421497 () Bool)

(assert (=> b!1539099 m!1421497))

(declare-fun m!1421499 () Bool)

(assert (=> b!1539099 m!1421499))

(declare-fun m!1421501 () Bool)

(assert (=> b!1539103 m!1421501))

(declare-fun m!1421503 () Bool)

(assert (=> start!131234 m!1421503))

(declare-fun m!1421505 () Bool)

(assert (=> start!131234 m!1421505))

(assert (=> b!1539101 m!1421499))

(assert (=> b!1539101 m!1421499))

(declare-fun m!1421507 () Bool)

(assert (=> b!1539101 m!1421507))

(declare-fun m!1421509 () Bool)

(assert (=> b!1539106 m!1421509))

(assert (=> b!1539106 m!1421509))

(declare-fun m!1421511 () Bool)

(assert (=> b!1539106 m!1421511))

(assert (=> b!1539098 m!1421499))

(assert (=> b!1539098 m!1421499))

(declare-fun m!1421513 () Bool)

(assert (=> b!1539098 m!1421513))

(declare-fun m!1421515 () Bool)

(assert (=> b!1539104 m!1421515))

(push 1)

(assert (not b!1539101))

(assert (not b!1539105))

(assert (not b!1539098))

(assert (not start!131234))

(assert (not b!1539103))

(assert (not b!1539102))

(assert (not b!1539106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!160295 () Bool)

(declare-fun lt!664912 () (_ BitVec 32))

(assert (=> d!160295 (and (bvsge lt!664912 #b00000000000000000000000000000000) (bvslt lt!664912 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160295 (= lt!664912 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160295 (validMask!0 mask!2480)))

(assert (=> d!160295 (= (nextIndex!0 index!463 x!510 mask!2480) lt!664912)))

(declare-fun bs!44177 () Bool)

(assert (= bs!44177 d!160295))

(declare-fun m!1421525 () Bool)

(assert (=> bs!44177 m!1421525))

(assert (=> bs!44177 m!1421503))

(assert (=> b!1539105 d!160295))

(declare-fun b!1539167 () Bool)

(declare-fun c!141024 () Bool)

(declare-fun lt!664927 () (_ BitVec 64))

(assert (=> b!1539167 (= c!141024 (= lt!664927 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856166 () SeekEntryResult!13472)

(declare-fun e!856164 () SeekEntryResult!13472)

(assert (=> b!1539167 (= e!856166 e!856164)))

(declare-fun b!1539168 () Bool)

(declare-fun e!856165 () SeekEntryResult!13472)

(assert (=> b!1539168 (= e!856165 e!856166)))

(declare-fun c!141025 () Bool)

(assert (=> b!1539168 (= c!141025 (= lt!664927 (select (arr!49323 a!2792) j!64)))))

(declare-fun d!160297 () Bool)

(declare-fun lt!664926 () SeekEntryResult!13472)

(assert (=> d!160297 (and (or (is-Undefined!13472 lt!664926) (not (is-Found!13472 lt!664926)) (and (bvsge (index!56283 lt!664926) #b00000000000000000000000000000000) (bvslt (index!56283 lt!664926) (size!49874 a!2792)))) (or (is-Undefined!13472 lt!664926) (is-Found!13472 lt!664926) (not (is-MissingVacant!13472 lt!664926)) (not (= (index!56285 lt!664926) vacantIndex!5)) (and (bvsge (index!56285 lt!664926) #b00000000000000000000000000000000) (bvslt (index!56285 lt!664926) (size!49874 a!2792)))) (or (is-Undefined!13472 lt!664926) (ite (is-Found!13472 lt!664926) (= (select (arr!49323 a!2792) (index!56283 lt!664926)) (select (arr!49323 a!2792) j!64)) (and (is-MissingVacant!13472 lt!664926) (= (index!56285 lt!664926) vacantIndex!5) (= (select (arr!49323 a!2792) (index!56285 lt!664926)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160297 (= lt!664926 e!856165)))

(declare-fun c!141026 () Bool)

(assert (=> d!160297 (= c!141026 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160297 (= lt!664927 (select (arr!49323 a!2792) index!463))))

(assert (=> d!160297 (validMask!0 mask!2480)))

(assert (=> d!160297 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49323 a!2792) j!64) a!2792 mask!2480) lt!664926)))

(declare-fun b!1539169 () Bool)

(assert (=> b!1539169 (= e!856165 Undefined!13472)))

(declare-fun b!1539170 () Bool)

(assert (=> b!1539170 (= e!856166 (Found!13472 index!463))))

(declare-fun b!1539171 () Bool)

(assert (=> b!1539171 (= e!856164 (MissingVacant!13472 vacantIndex!5))))

(declare-fun b!1539172 () Bool)

(assert (=> b!1539172 (= e!856164 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49323 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and d!160297 c!141026) b!1539169))

(assert (= (and d!160297 (not c!141026)) b!1539168))

(assert (= (and b!1539168 c!141025) b!1539170))

(assert (= (and b!1539168 (not c!141025)) b!1539167))

(assert (= (and b!1539167 c!141024) b!1539171))

(assert (= (and b!1539167 (not c!141024)) b!1539172))

(declare-fun m!1421543 () Bool)

(assert (=> d!160297 m!1421543))

(declare-fun m!1421545 () Bool)

(assert (=> d!160297 m!1421545))

(assert (=> d!160297 m!1421497))

(assert (=> d!160297 m!1421503))

(assert (=> b!1539172 m!1421495))

(assert (=> b!1539172 m!1421495))

(assert (=> b!1539172 m!1421499))

(declare-fun m!1421547 () Bool)

(assert (=> b!1539172 m!1421547))

(assert (=> b!1539101 d!160297))

(declare-fun d!160311 () Bool)

(assert (=> d!160311 (= (validKeyInArray!0 (select (arr!49323 a!2792) i!951)) (and (not (= (select (arr!49323 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49323 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539106 d!160311))

(declare-fun d!160313 () Bool)

(assert (=> d!160313 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131234 d!160313))

(declare-fun d!160321 () Bool)

(assert (=> d!160321 (= (array_inv!38268 a!2792) (bvsge (size!49874 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131234 d!160321))

(declare-fun b!1539207 () Bool)

(declare-fun e!856193 () Bool)

(declare-fun call!68610 () Bool)

(assert (=> b!1539207 (= e!856193 call!68610)))

(declare-fun b!1539208 () Bool)

(declare-fun e!856195 () Bool)

(declare-fun e!856194 () Bool)

(assert (=> b!1539208 (= e!856195 e!856194)))

(declare-fun res!1056259 () Bool)

(assert (=> b!1539208 (=> (not res!1056259) (not e!856194))))

(declare-fun e!856196 () Bool)

(assert (=> b!1539208 (= res!1056259 (not e!856196))))

(declare-fun res!1056261 () Bool)

(assert (=> b!1539208 (=> (not res!1056261) (not e!856196))))

(assert (=> b!1539208 (= res!1056261 (validKeyInArray!0 (select (arr!49323 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160323 () Bool)

(declare-fun res!1056260 () Bool)

(assert (=> d!160323 (=> res!1056260 e!856195)))

(assert (=> d!160323 (= res!1056260 (bvsge #b00000000000000000000000000000000 (size!49874 a!2792)))))

(assert (=> d!160323 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35974) e!856195)))

(declare-fun b!1539209 () Bool)

(declare-fun contains!10026 (List!35977 (_ BitVec 64)) Bool)

(assert (=> b!1539209 (= e!856196 (contains!10026 Nil!35974 (select (arr!49323 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539210 () Bool)

(assert (=> b!1539210 (= e!856193 call!68610)))

(declare-fun b!1539211 () Bool)

(assert (=> b!1539211 (= e!856194 e!856193)))

(declare-fun c!141035 () Bool)

(assert (=> b!1539211 (= c!141035 (validKeyInArray!0 (select (arr!49323 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68607 () Bool)

(assert (=> bm!68607 (= call!68610 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141035 (Cons!35973 (select (arr!49323 a!2792) #b00000000000000000000000000000000) Nil!35974) Nil!35974)))))

(assert (= (and d!160323 (not res!1056260)) b!1539208))

