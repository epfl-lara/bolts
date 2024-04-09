; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44894 () Bool)

(assert start!44894)

(declare-fun b!492365 () Bool)

(declare-fun res!295274 () Bool)

(declare-fun e!289229 () Bool)

(assert (=> b!492365 (=> (not res!295274) (not e!289229))))

(declare-datatypes ((array!31856 0))(
  ( (array!31857 (arr!15311 (Array (_ BitVec 32) (_ BitVec 64))) (size!15675 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31856)

(declare-datatypes ((List!9522 0))(
  ( (Nil!9519) (Cons!9518 (h!10383 (_ BitVec 64)) (t!15758 List!9522)) )
))
(declare-fun arrayNoDuplicates!0 (array!31856 (_ BitVec 32) List!9522) Bool)

(assert (=> b!492365 (= res!295274 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9519))))

(declare-fun e!289230 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!492366 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3785 0))(
  ( (MissingZero!3785 (index!17319 (_ BitVec 32))) (Found!3785 (index!17320 (_ BitVec 32))) (Intermediate!3785 (undefined!4597 Bool) (index!17321 (_ BitVec 32)) (x!46428 (_ BitVec 32))) (Undefined!3785) (MissingVacant!3785 (index!17322 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31856 (_ BitVec 32)) SeekEntryResult!3785)

(assert (=> b!492366 (= e!289230 (= (seekEntryOrOpen!0 (select (arr!15311 a!3235) j!176) a!3235 mask!3524) (Found!3785 j!176)))))

(declare-fun b!492367 () Bool)

(declare-fun res!295276 () Bool)

(assert (=> b!492367 (=> (not res!295276) (not e!289229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31856 (_ BitVec 32)) Bool)

(assert (=> b!492367 (= res!295276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492368 () Bool)

(declare-fun e!289227 () Bool)

(assert (=> b!492368 (= e!289229 (not e!289227))))

(declare-fun res!295271 () Bool)

(assert (=> b!492368 (=> res!295271 e!289227)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!222637 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31856 (_ BitVec 32)) SeekEntryResult!3785)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492368 (= res!295271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222637 (select (arr!15311 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)) mask!3524)))))

(assert (=> b!492368 (= lt!222637 (toIndex!0 (select (arr!15311 a!3235) j!176) mask!3524))))

(assert (=> b!492368 e!289230))

(declare-fun res!295270 () Bool)

(assert (=> b!492368 (=> (not res!295270) (not e!289230))))

(assert (=> b!492368 (= res!295270 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14508 0))(
  ( (Unit!14509) )
))
(declare-fun lt!222638 () Unit!14508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14508)

(assert (=> b!492368 (= lt!222638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492369 () Bool)

(declare-fun e!289231 () Bool)

(assert (=> b!492369 (= e!289231 e!289229)))

(declare-fun res!295275 () Bool)

(assert (=> b!492369 (=> (not res!295275) (not e!289229))))

(declare-fun lt!222636 () SeekEntryResult!3785)

(assert (=> b!492369 (= res!295275 (or (= lt!222636 (MissingZero!3785 i!1204)) (= lt!222636 (MissingVacant!3785 i!1204))))))

(assert (=> b!492369 (= lt!222636 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492370 () Bool)

(declare-fun res!295269 () Bool)

(assert (=> b!492370 (=> (not res!295269) (not e!289231))))

(declare-fun arrayContainsKey!0 (array!31856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492370 (= res!295269 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492372 () Bool)

(declare-fun res!295268 () Bool)

(assert (=> b!492372 (=> (not res!295268) (not e!289231))))

(assert (=> b!492372 (= res!295268 (and (= (size!15675 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15675 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15675 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492373 () Bool)

(assert (=> b!492373 (= e!289227 (or (bvslt mask!3524 #b00000000000000000000000000000000) (and (bvsge lt!222637 #b00000000000000000000000000000000) (bvslt lt!222637 (bvadd #b00000000000000000000000000000001 mask!3524)))))))

(declare-fun b!492374 () Bool)

(declare-fun res!295272 () Bool)

(assert (=> b!492374 (=> (not res!295272) (not e!289231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492374 (= res!295272 (validKeyInArray!0 (select (arr!15311 a!3235) j!176)))))

(declare-fun res!295273 () Bool)

(assert (=> start!44894 (=> (not res!295273) (not e!289231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44894 (= res!295273 (validMask!0 mask!3524))))

(assert (=> start!44894 e!289231))

(assert (=> start!44894 true))

(declare-fun array_inv!11085 (array!31856) Bool)

(assert (=> start!44894 (array_inv!11085 a!3235)))

(declare-fun b!492371 () Bool)

(declare-fun res!295277 () Bool)

(assert (=> b!492371 (=> (not res!295277) (not e!289231))))

(assert (=> b!492371 (= res!295277 (validKeyInArray!0 k!2280))))

(assert (= (and start!44894 res!295273) b!492372))

(assert (= (and b!492372 res!295268) b!492374))

(assert (= (and b!492374 res!295272) b!492371))

(assert (= (and b!492371 res!295277) b!492370))

(assert (= (and b!492370 res!295269) b!492369))

(assert (= (and b!492369 res!295275) b!492367))

(assert (= (and b!492367 res!295276) b!492365))

(assert (= (and b!492365 res!295274) b!492368))

(assert (= (and b!492368 res!295270) b!492366))

(assert (= (and b!492368 (not res!295271)) b!492373))

(declare-fun m!473161 () Bool)

(assert (=> start!44894 m!473161))

(declare-fun m!473163 () Bool)

(assert (=> start!44894 m!473163))

(declare-fun m!473165 () Bool)

(assert (=> b!492371 m!473165))

(declare-fun m!473167 () Bool)

(assert (=> b!492368 m!473167))

(declare-fun m!473169 () Bool)

(assert (=> b!492368 m!473169))

(declare-fun m!473171 () Bool)

(assert (=> b!492368 m!473171))

(declare-fun m!473173 () Bool)

(assert (=> b!492368 m!473173))

(declare-fun m!473175 () Bool)

(assert (=> b!492368 m!473175))

(assert (=> b!492368 m!473167))

(declare-fun m!473177 () Bool)

(assert (=> b!492368 m!473177))

(declare-fun m!473179 () Bool)

(assert (=> b!492368 m!473179))

(assert (=> b!492368 m!473175))

(declare-fun m!473181 () Bool)

(assert (=> b!492368 m!473181))

(assert (=> b!492368 m!473167))

(declare-fun m!473183 () Bool)

(assert (=> b!492368 m!473183))

(assert (=> b!492368 m!473175))

(assert (=> b!492368 m!473179))

(declare-fun m!473185 () Bool)

(assert (=> b!492370 m!473185))

(assert (=> b!492374 m!473167))

(assert (=> b!492374 m!473167))

(declare-fun m!473187 () Bool)

(assert (=> b!492374 m!473187))

(declare-fun m!473189 () Bool)

(assert (=> b!492369 m!473189))

(assert (=> b!492366 m!473167))

(assert (=> b!492366 m!473167))

(declare-fun m!473191 () Bool)

(assert (=> b!492366 m!473191))

(declare-fun m!473193 () Bool)

(assert (=> b!492365 m!473193))

(declare-fun m!473195 () Bool)

(assert (=> b!492367 m!473195))

(push 1)

(assert (not b!492371))

(assert (not start!44894))

(assert (not b!492369))

(assert (not b!492370))

(assert (not b!492368))

(assert (not b!492374))

(assert (not b!492365))

(assert (not b!492366))

(assert (not b!492367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77979 () Bool)

(assert (=> d!77979 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492371 d!77979))

(declare-fun b!492433 () Bool)

(declare-fun e!289266 () SeekEntryResult!3785)

(assert (=> b!492433 (= e!289266 Undefined!3785)))

(declare-fun d!77981 () Bool)

(declare-fun lt!222679 () SeekEntryResult!3785)

(assert (=> d!77981 (and (or (is-Undefined!3785 lt!222679) (not (is-Found!3785 lt!222679)) (and (bvsge (index!17320 lt!222679) #b00000000000000000000000000000000) (bvslt (index!17320 lt!222679) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222679) (is-Found!3785 lt!222679) (not (is-MissingZero!3785 lt!222679)) (and (bvsge (index!17319 lt!222679) #b00000000000000000000000000000000) (bvslt (index!17319 lt!222679) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222679) (is-Found!3785 lt!222679) (is-MissingZero!3785 lt!222679) (not (is-MissingVacant!3785 lt!222679)) (and (bvsge (index!17322 lt!222679) #b00000000000000000000000000000000) (bvslt (index!17322 lt!222679) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222679) (ite (is-Found!3785 lt!222679) (= (select (arr!15311 a!3235) (index!17320 lt!222679)) (select (arr!15311 a!3235) j!176)) (ite (is-MissingZero!3785 lt!222679) (= (select (arr!15311 a!3235) (index!17319 lt!222679)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3785 lt!222679) (= (select (arr!15311 a!3235) (index!17322 lt!222679)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77981 (= lt!222679 e!289266)))

(declare-fun c!58848 () Bool)

(declare-fun lt!222680 () SeekEntryResult!3785)

(assert (=> d!77981 (= c!58848 (and (is-Intermediate!3785 lt!222680) (undefined!4597 lt!222680)))))

(assert (=> d!77981 (= lt!222680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15311 a!3235) j!176) mask!3524) (select (arr!15311 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77981 (validMask!0 mask!3524)))

(assert (=> d!77981 (= (seekEntryOrOpen!0 (select (arr!15311 a!3235) j!176) a!3235 mask!3524) lt!222679)))

(declare-fun b!492434 () Bool)

(declare-fun e!289265 () SeekEntryResult!3785)

(assert (=> b!492434 (= e!289266 e!289265)))

(declare-fun lt!222678 () (_ BitVec 64))

(assert (=> b!492434 (= lt!222678 (select (arr!15311 a!3235) (index!17321 lt!222680)))))

(declare-fun c!58846 () Bool)

(assert (=> b!492434 (= c!58846 (= lt!222678 (select (arr!15311 a!3235) j!176)))))

(declare-fun b!492435 () Bool)

(declare-fun e!289267 () SeekEntryResult!3785)

(assert (=> b!492435 (= e!289267 (MissingZero!3785 (index!17321 lt!222680)))))

(declare-fun b!492436 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31856 (_ BitVec 32)) SeekEntryResult!3785)

(assert (=> b!492436 (= e!289267 (seekKeyOrZeroReturnVacant!0 (x!46428 lt!222680) (index!17321 lt!222680) (index!17321 lt!222680) (select (arr!15311 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492437 () Bool)

(declare-fun c!58847 () Bool)

(assert (=> b!492437 (= c!58847 (= lt!222678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492437 (= e!289265 e!289267)))

(declare-fun b!492438 () Bool)

(assert (=> b!492438 (= e!289265 (Found!3785 (index!17321 lt!222680)))))

(assert (= (and d!77981 c!58848) b!492433))

(assert (= (and d!77981 (not c!58848)) b!492434))

(assert (= (and b!492434 c!58846) b!492438))

(assert (= (and b!492434 (not c!58846)) b!492437))

(assert (= (and b!492437 c!58847) b!492435))

(assert (= (and b!492437 (not c!58847)) b!492436))

(assert (=> d!77981 m!473167))

(assert (=> d!77981 m!473177))

(assert (=> d!77981 m!473177))

(assert (=> d!77981 m!473167))

(declare-fun m!473227 () Bool)

(assert (=> d!77981 m!473227))

(declare-fun m!473229 () Bool)

(assert (=> d!77981 m!473229))

(declare-fun m!473231 () Bool)

(assert (=> d!77981 m!473231))

(assert (=> d!77981 m!473161))

(declare-fun m!473233 () Bool)

(assert (=> d!77981 m!473233))

(declare-fun m!473235 () Bool)

(assert (=> b!492434 m!473235))

(assert (=> b!492436 m!473167))

(declare-fun m!473237 () Bool)

(assert (=> b!492436 m!473237))

(assert (=> b!492366 d!77981))

(declare-fun d!77991 () Bool)

(declare-fun res!295291 () Bool)

(declare-fun e!289275 () Bool)

(assert (=> d!77991 (=> res!295291 e!289275)))

(assert (=> d!77991 (= res!295291 (= (select (arr!15311 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77991 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!289275)))

(declare-fun b!492449 () Bool)

(declare-fun e!289276 () Bool)

(assert (=> b!492449 (= e!289275 e!289276)))

(declare-fun res!295292 () Bool)

(assert (=> b!492449 (=> (not res!295292) (not e!289276))))

(assert (=> b!492449 (= res!295292 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15675 a!3235)))))

(declare-fun b!492450 () Bool)

(assert (=> b!492450 (= e!289276 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77991 (not res!295291)) b!492449))

(assert (= (and b!492449 res!295292) b!492450))

(declare-fun m!473251 () Bool)

(assert (=> d!77991 m!473251))

(declare-fun m!473253 () Bool)

(assert (=> b!492450 m!473253))

(assert (=> b!492370 d!77991))

(declare-fun d!77995 () Bool)

(assert (=> d!77995 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44894 d!77995))

(declare-fun d!78001 () Bool)

(assert (=> d!78001 (= (array_inv!11085 a!3235) (bvsge (size!15675 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44894 d!78001))

(declare-fun bm!31391 () Bool)

(declare-fun call!31394 () Bool)

(declare-fun c!58868 () Bool)

(assert (=> bm!31391 (= call!31394 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58868 (Cons!9518 (select (arr!15311 a!3235) #b00000000000000000000000000000000) Nil!9519) Nil!9519)))))

(declare-fun d!78005 () Bool)

(declare-fun res!295318 () Bool)

(declare-fun e!289313 () Bool)

(assert (=> d!78005 (=> res!295318 e!289313)))

(assert (=> d!78005 (= res!295318 (bvsge #b00000000000000000000000000000000 (size!15675 a!3235)))))

(assert (=> d!78005 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9519) e!289313)))

(declare-fun b!492507 () Bool)

(declare-fun e!289316 () Bool)

(assert (=> b!492507 (= e!289316 call!31394)))

(declare-fun b!492508 () Bool)

(declare-fun e!289314 () Bool)

(declare-fun contains!2716 (List!9522 (_ BitVec 64)) Bool)

(assert (=> b!492508 (= e!289314 (contains!2716 Nil!9519 (select (arr!15311 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492509 () Bool)

(declare-fun e!289315 () Bool)

(assert (=> b!492509 (= e!289315 e!289316)))

(assert (=> b!492509 (= c!58868 (validKeyInArray!0 (select (arr!15311 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492510 () Bool)

(assert (=> b!492510 (= e!289313 e!289315)))

(declare-fun res!295317 () Bool)

(assert (=> b!492510 (=> (not res!295317) (not e!289315))))

(assert (=> b!492510 (= res!295317 (not e!289314))))

(declare-fun res!295319 () Bool)

(assert (=> b!492510 (=> (not res!295319) (not e!289314))))

(assert (=> b!492510 (= res!295319 (validKeyInArray!0 (select (arr!15311 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492511 () Bool)

(assert (=> b!492511 (= e!289316 call!31394)))

(assert (= (and d!78005 (not res!295318)) b!492510))

(assert (= (and b!492510 res!295319) b!492508))

(assert (= (and b!492510 res!295317) b!492509))

(assert (= (and b!492509 c!58868) b!492511))

(assert (= (and b!492509 (not c!58868)) b!492507))

(assert (= (or b!492511 b!492507) bm!31391))

(assert (=> bm!31391 m!473251))

(declare-fun m!473273 () Bool)

(assert (=> bm!31391 m!473273))

(assert (=> b!492508 m!473251))

(assert (=> b!492508 m!473251))

(declare-fun m!473275 () Bool)

(assert (=> b!492508 m!473275))

(assert (=> b!492509 m!473251))

(assert (=> b!492509 m!473251))

(declare-fun m!473277 () Bool)

(assert (=> b!492509 m!473277))

(assert (=> b!492510 m!473251))

(assert (=> b!492510 m!473251))

(assert (=> b!492510 m!473277))

(assert (=> b!492365 d!78005))

(declare-fun d!78017 () Bool)

(declare-fun lt!222702 () (_ BitVec 32))

(declare-fun lt!222701 () (_ BitVec 32))

(assert (=> d!78017 (= lt!222702 (bvmul (bvxor lt!222701 (bvlshr lt!222701 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78017 (= lt!222701 ((_ extract 31 0) (bvand (bvxor (select (arr!15311 a!3235) j!176) (bvlshr (select (arr!15311 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78017 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295323 (let ((h!10385 ((_ extract 31 0) (bvand (bvxor (select (arr!15311 a!3235) j!176) (bvlshr (select (arr!15311 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46431 (bvmul (bvxor h!10385 (bvlshr h!10385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46431 (bvlshr x!46431 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295323 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295323 #b00000000000000000000000000000000))))))

(assert (=> d!78017 (= (toIndex!0 (select (arr!15311 a!3235) j!176) mask!3524) (bvand (bvxor lt!222702 (bvlshr lt!222702 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492368 d!78017))

(declare-fun b!492590 () Bool)

(declare-fun lt!222731 () SeekEntryResult!3785)

(assert (=> b!492590 (and (bvsge (index!17321 lt!222731) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222731) (size!15675 a!3235)))))

(declare-fun e!289377 () Bool)

(assert (=> b!492590 (= e!289377 (= (select (arr!15311 a!3235) (index!17321 lt!222731)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492591 () Bool)

(assert (=> b!492591 (and (bvsge (index!17321 lt!222731) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222731) (size!15675 a!3235)))))

(declare-fun res!295360 () Bool)

(assert (=> b!492591 (= res!295360 (= (select (arr!15311 a!3235) (index!17321 lt!222731)) (select (arr!15311 a!3235) j!176)))))

(assert (=> b!492591 (=> res!295360 e!289377)))

(declare-fun e!289374 () Bool)

(assert (=> b!492591 (= e!289374 e!289377)))

(declare-fun b!492592 () Bool)

(declare-fun e!289375 () Bool)

(assert (=> b!492592 (= e!289375 (bvsge (x!46428 lt!222731) #b01111111111111111111111111111110))))

(declare-fun b!492593 () Bool)

(declare-fun e!289373 () SeekEntryResult!3785)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492593 (= e!289373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!222637 #b00000000000000000000000000000000 mask!3524) (select (arr!15311 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!492594 () Bool)

(declare-fun e!289376 () SeekEntryResult!3785)

(assert (=> b!492594 (= e!289376 e!289373)))

(declare-fun lt!222732 () (_ BitVec 64))

(declare-fun c!58889 () Bool)

(assert (=> b!492594 (= c!58889 (or (= lt!222732 (select (arr!15311 a!3235) j!176)) (= (bvadd lt!222732 lt!222732) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!78023 () Bool)

(assert (=> d!78023 e!289375))

(declare-fun c!58891 () Bool)

(assert (=> d!78023 (= c!58891 (and (is-Intermediate!3785 lt!222731) (undefined!4597 lt!222731)))))

(assert (=> d!78023 (= lt!222731 e!289376)))

(declare-fun c!58890 () Bool)

(assert (=> d!78023 (= c!58890 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78023 (= lt!222732 (select (arr!15311 a!3235) lt!222637))))

(assert (=> d!78023 (validMask!0 mask!3524)))

(assert (=> d!78023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222637 (select (arr!15311 a!3235) j!176) a!3235 mask!3524) lt!222731)))

(declare-fun b!492595 () Bool)

(assert (=> b!492595 (= e!289373 (Intermediate!3785 false lt!222637 #b00000000000000000000000000000000))))

(declare-fun b!492596 () Bool)

(assert (=> b!492596 (= e!289376 (Intermediate!3785 true lt!222637 #b00000000000000000000000000000000))))

(declare-fun b!492597 () Bool)

(assert (=> b!492597 (= e!289375 e!289374)))

(declare-fun res!295362 () Bool)

(assert (=> b!492597 (= res!295362 (and (is-Intermediate!3785 lt!222731) (not (undefined!4597 lt!222731)) (bvslt (x!46428 lt!222731) #b01111111111111111111111111111110) (bvsge (x!46428 lt!222731) #b00000000000000000000000000000000) (bvsge (x!46428 lt!222731) #b00000000000000000000000000000000)))))

(assert (=> b!492597 (=> (not res!295362) (not e!289374))))

(declare-fun b!492598 () Bool)

(assert (=> b!492598 (and (bvsge (index!17321 lt!222731) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222731) (size!15675 a!3235)))))

(declare-fun res!295361 () Bool)

(assert (=> b!492598 (= res!295361 (= (select (arr!15311 a!3235) (index!17321 lt!222731)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492598 (=> res!295361 e!289377)))

(assert (= (and d!78023 c!58890) b!492596))

(assert (= (and d!78023 (not c!58890)) b!492594))

(assert (= (and b!492594 c!58889) b!492595))

(assert (= (and b!492594 (not c!58889)) b!492593))

(assert (= (and d!78023 c!58891) b!492592))

(assert (= (and d!78023 (not c!58891)) b!492597))

(assert (= (and b!492597 res!295362) b!492591))

(assert (= (and b!492591 (not res!295360)) b!492598))

(assert (= (and b!492598 (not res!295361)) b!492590))

(declare-fun m!473337 () Bool)

(assert (=> b!492598 m!473337))

(assert (=> b!492590 m!473337))

(declare-fun m!473339 () Bool)

(assert (=> d!78023 m!473339))

(assert (=> d!78023 m!473161))

(assert (=> b!492591 m!473337))

(declare-fun m!473341 () Bool)

(assert (=> b!492593 m!473341))

(assert (=> b!492593 m!473341))

(assert (=> b!492593 m!473167))

(declare-fun m!473343 () Bool)

(assert (=> b!492593 m!473343))

(assert (=> b!492368 d!78023))

(declare-fun b!492608 () Bool)

(declare-fun e!289386 () Bool)

(declare-fun call!31405 () Bool)

(assert (=> b!492608 (= e!289386 call!31405)))

(declare-fun b!492609 () Bool)

(declare-fun e!289384 () Bool)

(assert (=> b!492609 (= e!289384 e!289386)))

(declare-fun c!58894 () Bool)

(assert (=> b!492609 (= c!58894 (validKeyInArray!0 (select (arr!15311 a!3235) j!176)))))

(declare-fun b!492610 () Bool)

(declare-fun e!289385 () Bool)

(assert (=> b!492610 (= e!289386 e!289385)))

(declare-fun lt!222739 () (_ BitVec 64))

(assert (=> b!492610 (= lt!222739 (select (arr!15311 a!3235) j!176))))

(declare-fun lt!222740 () Unit!14508)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31856 (_ BitVec 64) (_ BitVec 32)) Unit!14508)

(assert (=> b!492610 (= lt!222740 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222739 j!176))))

(assert (=> b!492610 (arrayContainsKey!0 a!3235 lt!222739 #b00000000000000000000000000000000)))

(declare-fun lt!222741 () Unit!14508)

(assert (=> b!492610 (= lt!222741 lt!222740)))

(declare-fun res!295367 () Bool)

(assert (=> b!492610 (= res!295367 (= (seekEntryOrOpen!0 (select (arr!15311 a!3235) j!176) a!3235 mask!3524) (Found!3785 j!176)))))

(assert (=> b!492610 (=> (not res!295367) (not e!289385))))

(declare-fun bm!31402 () Bool)

(assert (=> bm!31402 (= call!31405 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!492607 () Bool)

(assert (=> b!492607 (= e!289385 call!31405)))

(declare-fun d!78045 () Bool)

(declare-fun res!295368 () Bool)

(assert (=> d!78045 (=> res!295368 e!289384)))

(assert (=> d!78045 (= res!295368 (bvsge j!176 (size!15675 a!3235)))))

(assert (=> d!78045 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!289384)))

(assert (= (and d!78045 (not res!295368)) b!492609))

(assert (= (and b!492609 c!58894) b!492610))

(assert (= (and b!492609 (not c!58894)) b!492608))

(assert (= (and b!492610 res!295367) b!492607))

(assert (= (or b!492607 b!492608) bm!31402))

(assert (=> b!492609 m!473167))

(assert (=> b!492609 m!473167))

(assert (=> b!492609 m!473187))

(assert (=> b!492610 m!473167))

(declare-fun m!473345 () Bool)

(assert (=> b!492610 m!473345))

(declare-fun m!473347 () Bool)

(assert (=> b!492610 m!473347))

(assert (=> b!492610 m!473167))

(assert (=> b!492610 m!473191))

(declare-fun m!473349 () Bool)

(assert (=> bm!31402 m!473349))

(assert (=> b!492368 d!78045))

(declare-fun d!78047 () Bool)

(assert (=> d!78047 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222748 () Unit!14508)

(declare-fun choose!38 (array!31856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14508)

(assert (=> d!78047 (= lt!222748 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78047 (validMask!0 mask!3524)))

(assert (=> d!78047 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222748)))

(declare-fun bs!15700 () Bool)

(assert (= bs!15700 d!78047))

(assert (=> bs!15700 m!473183))

(declare-fun m!473351 () Bool)

(assert (=> bs!15700 m!473351))

(assert (=> bs!15700 m!473161))

(assert (=> b!492368 d!78047))

(declare-fun d!78049 () Bool)

(declare-fun lt!222750 () (_ BitVec 32))

(declare-fun lt!222749 () (_ BitVec 32))

(assert (=> d!78049 (= lt!222750 (bvmul (bvxor lt!222749 (bvlshr lt!222749 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78049 (= lt!222749 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78049 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!295323 (let ((h!10385 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46431 (bvmul (bvxor h!10385 (bvlshr h!10385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46431 (bvlshr x!46431 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!295323 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!295323 #b00000000000000000000000000000000))))))

(assert (=> d!78049 (= (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!222750 (bvlshr lt!222750 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!492368 d!78049))

(declare-fun lt!222751 () SeekEntryResult!3785)

(declare-fun b!492629 () Bool)

(assert (=> b!492629 (and (bvsge (index!17321 lt!222751) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222751) (size!15675 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)))))))

(declare-fun e!289401 () Bool)

(assert (=> b!492629 (= e!289401 (= (select (arr!15311 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235))) (index!17321 lt!222751)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!492630 () Bool)

(assert (=> b!492630 (and (bvsge (index!17321 lt!222751) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222751) (size!15675 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)))))))

(declare-fun res!295375 () Bool)

(assert (=> b!492630 (= res!295375 (= (select (arr!15311 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235))) (index!17321 lt!222751)) (select (store (arr!15311 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!492630 (=> res!295375 e!289401)))

(declare-fun e!289398 () Bool)

(assert (=> b!492630 (= e!289398 e!289401)))

(declare-fun b!492631 () Bool)

(declare-fun e!289399 () Bool)

(assert (=> b!492631 (= e!289399 (bvsge (x!46428 lt!222751) #b01111111111111111111111111111110))))

(declare-fun b!492632 () Bool)

(declare-fun e!289397 () SeekEntryResult!3785)

(assert (=> b!492632 (= e!289397 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)) mask!3524))))

(declare-fun b!492633 () Bool)

(declare-fun e!289400 () SeekEntryResult!3785)

(assert (=> b!492633 (= e!289400 e!289397)))

(declare-fun c!58901 () Bool)

(declare-fun lt!222752 () (_ BitVec 64))

(assert (=> b!492633 (= c!58901 (or (= lt!222752 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!222752 lt!222752) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!78051 () Bool)

(assert (=> d!78051 e!289399))

(declare-fun c!58903 () Bool)

(assert (=> d!78051 (= c!58903 (and (is-Intermediate!3785 lt!222751) (undefined!4597 lt!222751)))))

(assert (=> d!78051 (= lt!222751 e!289400)))

(declare-fun c!58902 () Bool)

(assert (=> d!78051 (= c!58902 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78051 (= lt!222752 (select (arr!15311 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235))) (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524)))))

(assert (=> d!78051 (validMask!0 mask!3524)))

(assert (=> d!78051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)) mask!3524) lt!222751)))

(declare-fun b!492634 () Bool)

(assert (=> b!492634 (= e!289397 (Intermediate!3785 false (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492635 () Bool)

(assert (=> b!492635 (= e!289400 (Intermediate!3785 true (toIndex!0 (select (store (arr!15311 a!3235) i!1204 k!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!492636 () Bool)

(assert (=> b!492636 (= e!289399 e!289398)))

(declare-fun res!295377 () Bool)

(assert (=> b!492636 (= res!295377 (and (is-Intermediate!3785 lt!222751) (not (undefined!4597 lt!222751)) (bvslt (x!46428 lt!222751) #b01111111111111111111111111111110) (bvsge (x!46428 lt!222751) #b00000000000000000000000000000000) (bvsge (x!46428 lt!222751) #b00000000000000000000000000000000)))))

(assert (=> b!492636 (=> (not res!295377) (not e!289398))))

(declare-fun b!492637 () Bool)

(assert (=> b!492637 (and (bvsge (index!17321 lt!222751) #b00000000000000000000000000000000) (bvslt (index!17321 lt!222751) (size!15675 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235)))))))

(declare-fun res!295376 () Bool)

(assert (=> b!492637 (= res!295376 (= (select (arr!15311 (array!31857 (store (arr!15311 a!3235) i!1204 k!2280) (size!15675 a!3235))) (index!17321 lt!222751)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492637 (=> res!295376 e!289401)))

(assert (= (and d!78051 c!58902) b!492635))

(assert (= (and d!78051 (not c!58902)) b!492633))

(assert (= (and b!492633 c!58901) b!492634))

(assert (= (and b!492633 (not c!58901)) b!492632))

(assert (= (and d!78051 c!58903) b!492631))

(assert (= (and d!78051 (not c!58903)) b!492636))

(assert (= (and b!492636 res!295377) b!492630))

(assert (= (and b!492630 (not res!295375)) b!492637))

(assert (= (and b!492637 (not res!295376)) b!492629))

(declare-fun m!473353 () Bool)

(assert (=> b!492637 m!473353))

(assert (=> b!492629 m!473353))

(assert (=> d!78051 m!473179))

(declare-fun m!473355 () Bool)

(assert (=> d!78051 m!473355))

(assert (=> d!78051 m!473161))

(assert (=> b!492630 m!473353))

(assert (=> b!492632 m!473179))

(declare-fun m!473357 () Bool)

(assert (=> b!492632 m!473357))

(assert (=> b!492632 m!473357))

(assert (=> b!492632 m!473175))

(declare-fun m!473359 () Bool)

(assert (=> b!492632 m!473359))

(assert (=> b!492368 d!78051))

(declare-fun d!78053 () Bool)

(assert (=> d!78053 (= (validKeyInArray!0 (select (arr!15311 a!3235) j!176)) (and (not (= (select (arr!15311 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15311 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!492374 d!78053))

(declare-fun b!492638 () Bool)

(declare-fun e!289403 () SeekEntryResult!3785)

(assert (=> b!492638 (= e!289403 Undefined!3785)))

(declare-fun d!78055 () Bool)

(declare-fun lt!222754 () SeekEntryResult!3785)

(assert (=> d!78055 (and (or (is-Undefined!3785 lt!222754) (not (is-Found!3785 lt!222754)) (and (bvsge (index!17320 lt!222754) #b00000000000000000000000000000000) (bvslt (index!17320 lt!222754) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222754) (is-Found!3785 lt!222754) (not (is-MissingZero!3785 lt!222754)) (and (bvsge (index!17319 lt!222754) #b00000000000000000000000000000000) (bvslt (index!17319 lt!222754) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222754) (is-Found!3785 lt!222754) (is-MissingZero!3785 lt!222754) (not (is-MissingVacant!3785 lt!222754)) (and (bvsge (index!17322 lt!222754) #b00000000000000000000000000000000) (bvslt (index!17322 lt!222754) (size!15675 a!3235)))) (or (is-Undefined!3785 lt!222754) (ite (is-Found!3785 lt!222754) (= (select (arr!15311 a!3235) (index!17320 lt!222754)) k!2280) (ite (is-MissingZero!3785 lt!222754) (= (select (arr!15311 a!3235) (index!17319 lt!222754)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3785 lt!222754) (= (select (arr!15311 a!3235) (index!17322 lt!222754)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78055 (= lt!222754 e!289403)))

(declare-fun c!58906 () Bool)

(declare-fun lt!222755 () SeekEntryResult!3785)

(assert (=> d!78055 (= c!58906 (and (is-Intermediate!3785 lt!222755) (undefined!4597 lt!222755)))))

(assert (=> d!78055 (= lt!222755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78055 (validMask!0 mask!3524)))

(assert (=> d!78055 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!222754)))

(declare-fun b!492639 () Bool)

(declare-fun e!289402 () SeekEntryResult!3785)

(assert (=> b!492639 (= e!289403 e!289402)))

(declare-fun lt!222753 () (_ BitVec 64))

(assert (=> b!492639 (= lt!222753 (select (arr!15311 a!3235) (index!17321 lt!222755)))))

(declare-fun c!58904 () Bool)

(assert (=> b!492639 (= c!58904 (= lt!222753 k!2280))))

(declare-fun b!492640 () Bool)

(declare-fun e!289404 () SeekEntryResult!3785)

(assert (=> b!492640 (= e!289404 (MissingZero!3785 (index!17321 lt!222755)))))

(declare-fun b!492641 () Bool)

(assert (=> b!492641 (= e!289404 (seekKeyOrZeroReturnVacant!0 (x!46428 lt!222755) (index!17321 lt!222755) (index!17321 lt!222755) k!2280 a!3235 mask!3524))))

(declare-fun b!492642 () Bool)

(declare-fun c!58905 () Bool)

(assert (=> b!492642 (= c!58905 (= lt!222753 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!492642 (= e!289402 e!289404)))

(declare-fun b!492643 () Bool)

(assert (=> b!492643 (= e!289402 (Found!3785 (index!17321 lt!222755)))))

(assert (= (and d!78055 c!58906) b!492638))

(assert (= (and d!78055 (not c!58906)) b!492639))

(assert (= (and b!492639 c!58904) b!492643))

(assert (= (and b!492639 (not c!58904)) b!492642))

(assert (= (and b!492642 c!58905) b!492640))

(assert (= (and b!492642 (not c!58905)) b!492641))

(declare-fun m!473361 () Bool)

(assert (=> d!78055 m!473361))

(assert (=> d!78055 m!473361))

(declare-fun m!473363 () Bool)

(assert (=> d!78055 m!473363))

(declare-fun m!473365 () Bool)

(assert (=> d!78055 m!473365))

(declare-fun m!473367 () Bool)

(assert (=> d!78055 m!473367))

(assert (=> d!78055 m!473161))

(declare-fun m!473369 () Bool)

(assert (=> d!78055 m!473369))

(declare-fun m!473371 () Bool)

(assert (=> b!492639 m!473371))

(declare-fun m!473373 () Bool)

(assert (=> b!492641 m!473373))

(assert (=> b!492369 d!78055))

(declare-fun b!492654 () Bool)

(declare-fun e!289412 () Bool)

(declare-fun call!31406 () Bool)

(assert (=> b!492654 (= e!289412 call!31406)))

(declare-fun b!492655 () Bool)

(declare-fun e!289410 () Bool)

(assert (=> b!492655 (= e!289410 e!289412)))

(declare-fun c!58910 () Bool)

(assert (=> b!492655 (= c!58910 (validKeyInArray!0 (select (arr!15311 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!492656 () Bool)

(declare-fun e!289411 () Bool)

(assert (=> b!492656 (= e!289412 e!289411)))

(declare-fun lt!222758 () (_ BitVec 64))

(assert (=> b!492656 (= lt!222758 (select (arr!15311 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222759 () Unit!14508)

(assert (=> b!492656 (= lt!222759 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222758 #b00000000000000000000000000000000))))

(assert (=> b!492656 (arrayContainsKey!0 a!3235 lt!222758 #b00000000000000000000000000000000)))

(declare-fun lt!222760 () Unit!14508)

(assert (=> b!492656 (= lt!222760 lt!222759)))

(declare-fun res!295381 () Bool)

(assert (=> b!492656 (= res!295381 (= (seekEntryOrOpen!0 (select (arr!15311 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3785 #b00000000000000000000000000000000)))))

(assert (=> b!492656 (=> (not res!295381) (not e!289411))))

(declare-fun bm!31403 () Bool)

(assert (=> bm!31403 (= call!31406 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!492653 () Bool)

(assert (=> b!492653 (= e!289411 call!31406)))

(declare-fun d!78057 () Bool)

(declare-fun res!295382 () Bool)

(assert (=> d!78057 (=> res!295382 e!289410)))

(assert (=> d!78057 (= res!295382 (bvsge #b00000000000000000000000000000000 (size!15675 a!3235)))))

(assert (=> d!78057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!289410)))

(assert (= (and d!78057 (not res!295382)) b!492655))

(assert (= (and b!492655 c!58910) b!492656))

(assert (= (and b!492655 (not c!58910)) b!492654))

(assert (= (and b!492656 res!295381) b!492653))

(assert (= (or b!492653 b!492654) bm!31403))

(assert (=> b!492655 m!473251))

(assert (=> b!492655 m!473251))

(assert (=> b!492655 m!473277))

(assert (=> b!492656 m!473251))

(declare-fun m!473375 () Bool)

(assert (=> b!492656 m!473375))

(declare-fun m!473377 () Bool)

(assert (=> b!492656 m!473377))

(assert (=> b!492656 m!473251))

(declare-fun m!473379 () Bool)

(assert (=> b!492656 m!473379))

(declare-fun m!473381 () Bool)

(assert (=> bm!31403 m!473381))

(assert (=> b!492367 d!78057))

(push 1)

