; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47470 () Bool)

(assert start!47470)

(declare-fun res!320216 () Bool)

(declare-fun e!304702 () Bool)

(assert (=> start!47470 (=> (not res!320216) (not e!304702))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47470 (= res!320216 (validMask!0 mask!3524))))

(assert (=> start!47470 e!304702))

(assert (=> start!47470 true))

(declare-datatypes ((array!33256 0))(
  ( (array!33257 (arr!15981 (Array (_ BitVec 32) (_ BitVec 64))) (size!16345 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33256)

(declare-fun array_inv!11755 (array!33256) Bool)

(assert (=> start!47470 (array_inv!11755 a!3235)))

(declare-fun b!522433 () Bool)

(declare-fun res!320213 () Bool)

(assert (=> b!522433 (=> (not res!320213) (not e!304702))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522433 (= res!320213 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522434 () Bool)

(declare-datatypes ((Unit!16286 0))(
  ( (Unit!16287) )
))
(declare-fun e!304704 () Unit!16286)

(declare-fun Unit!16288 () Unit!16286)

(assert (=> b!522434 (= e!304704 Unit!16288)))

(declare-fun lt!239688 () (_ BitVec 32))

(declare-fun lt!239689 () Unit!16286)

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4455 0))(
  ( (MissingZero!4455 (index!20023 (_ BitVec 32))) (Found!4455 (index!20024 (_ BitVec 32))) (Intermediate!4455 (undefined!5267 Bool) (index!20025 (_ BitVec 32)) (x!49028 (_ BitVec 32))) (Undefined!4455) (MissingVacant!4455 (index!20026 (_ BitVec 32))) )
))
(declare-fun lt!239686 () SeekEntryResult!4455)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16286)

(assert (=> b!522434 (= lt!239689 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239688 #b00000000000000000000000000000000 (index!20025 lt!239686) (x!49028 lt!239686) mask!3524))))

(declare-fun res!320222 () Bool)

(declare-fun lt!239685 () array!33256)

(declare-fun lt!239687 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33256 (_ BitVec 32)) SeekEntryResult!4455)

(assert (=> b!522434 (= res!320222 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239688 lt!239687 lt!239685 mask!3524) (Intermediate!4455 false (index!20025 lt!239686) (x!49028 lt!239686))))))

(declare-fun e!304708 () Bool)

(assert (=> b!522434 (=> (not res!320222) (not e!304708))))

(assert (=> b!522434 e!304708))

(declare-fun b!522435 () Bool)

(assert (=> b!522435 (= e!304708 false)))

(declare-fun b!522436 () Bool)

(declare-fun res!320219 () Bool)

(declare-fun e!304706 () Bool)

(assert (=> b!522436 (=> (not res!320219) (not e!304706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33256 (_ BitVec 32)) Bool)

(assert (=> b!522436 (= res!320219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522437 () Bool)

(declare-fun res!320218 () Bool)

(assert (=> b!522437 (=> (not res!320218) (not e!304706))))

(declare-datatypes ((List!10192 0))(
  ( (Nil!10189) (Cons!10188 (h!11110 (_ BitVec 64)) (t!16428 List!10192)) )
))
(declare-fun arrayNoDuplicates!0 (array!33256 (_ BitVec 32) List!10192) Bool)

(assert (=> b!522437 (= res!320218 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10189))))

(declare-fun b!522438 () Bool)

(assert (=> b!522438 (= e!304702 e!304706)))

(declare-fun res!320215 () Bool)

(assert (=> b!522438 (=> (not res!320215) (not e!304706))))

(declare-fun lt!239690 () SeekEntryResult!4455)

(assert (=> b!522438 (= res!320215 (or (= lt!239690 (MissingZero!4455 i!1204)) (= lt!239690 (MissingVacant!4455 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33256 (_ BitVec 32)) SeekEntryResult!4455)

(assert (=> b!522438 (= lt!239690 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522439 () Bool)

(declare-fun res!320214 () Bool)

(assert (=> b!522439 (=> (not res!320214) (not e!304702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522439 (= res!320214 (validKeyInArray!0 k!2280))))

(declare-fun b!522440 () Bool)

(declare-fun res!320221 () Bool)

(assert (=> b!522440 (=> (not res!320221) (not e!304702))))

(assert (=> b!522440 (= res!320221 (validKeyInArray!0 (select (arr!15981 a!3235) j!176)))))

(declare-fun e!304703 () Bool)

(declare-fun b!522441 () Bool)

(assert (=> b!522441 (= e!304703 (= (seekEntryOrOpen!0 (select (arr!15981 a!3235) j!176) a!3235 mask!3524) (Found!4455 j!176)))))

(declare-fun b!522442 () Bool)

(declare-fun Unit!16289 () Unit!16286)

(assert (=> b!522442 (= e!304704 Unit!16289)))

(declare-fun b!522443 () Bool)

(declare-fun res!320212 () Bool)

(declare-fun e!304707 () Bool)

(assert (=> b!522443 (=> res!320212 e!304707)))

(assert (=> b!522443 (= res!320212 (or (undefined!5267 lt!239686) (not (is-Intermediate!4455 lt!239686))))))

(declare-fun b!522444 () Bool)

(declare-fun res!320211 () Bool)

(assert (=> b!522444 (=> (not res!320211) (not e!304702))))

(assert (=> b!522444 (= res!320211 (and (= (size!16345 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16345 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16345 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522445 () Bool)

(assert (=> b!522445 (= e!304706 (not e!304707))))

(declare-fun res!320220 () Bool)

(assert (=> b!522445 (=> res!320220 e!304707)))

(declare-fun lt!239692 () (_ BitVec 32))

(assert (=> b!522445 (= res!320220 (= lt!239686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239692 lt!239687 lt!239685 mask!3524)))))

(assert (=> b!522445 (= lt!239686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239688 (select (arr!15981 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522445 (= lt!239692 (toIndex!0 lt!239687 mask!3524))))

(assert (=> b!522445 (= lt!239687 (select (store (arr!15981 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522445 (= lt!239688 (toIndex!0 (select (arr!15981 a!3235) j!176) mask!3524))))

(assert (=> b!522445 (= lt!239685 (array!33257 (store (arr!15981 a!3235) i!1204 k!2280) (size!16345 a!3235)))))

(assert (=> b!522445 e!304703))

(declare-fun res!320217 () Bool)

(assert (=> b!522445 (=> (not res!320217) (not e!304703))))

(assert (=> b!522445 (= res!320217 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239691 () Unit!16286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16286)

(assert (=> b!522445 (= lt!239691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522446 () Bool)

(assert (=> b!522446 (= e!304707 (bvsle #b00000000000000000000000000000000 (x!49028 lt!239686)))))

(assert (=> b!522446 (and (or (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239693 () Unit!16286)

(assert (=> b!522446 (= lt!239693 e!304704)))

(declare-fun c!61412 () Bool)

(assert (=> b!522446 (= c!61412 (= (select (arr!15981 a!3235) (index!20025 lt!239686)) (select (arr!15981 a!3235) j!176)))))

(assert (=> b!522446 (and (bvslt (x!49028 lt!239686) #b01111111111111111111111111111110) (or (= (select (arr!15981 a!3235) (index!20025 lt!239686)) (select (arr!15981 a!3235) j!176)) (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15981 a!3235) (index!20025 lt!239686)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47470 res!320216) b!522444))

(assert (= (and b!522444 res!320211) b!522440))

(assert (= (and b!522440 res!320221) b!522439))

(assert (= (and b!522439 res!320214) b!522433))

(assert (= (and b!522433 res!320213) b!522438))

(assert (= (and b!522438 res!320215) b!522436))

(assert (= (and b!522436 res!320219) b!522437))

(assert (= (and b!522437 res!320218) b!522445))

(assert (= (and b!522445 res!320217) b!522441))

(assert (= (and b!522445 (not res!320220)) b!522443))

(assert (= (and b!522443 (not res!320212)) b!522446))

(assert (= (and b!522446 c!61412) b!522434))

(assert (= (and b!522446 (not c!61412)) b!522442))

(assert (= (and b!522434 res!320222) b!522435))

(declare-fun m!503383 () Bool)

(assert (=> b!522441 m!503383))

(assert (=> b!522441 m!503383))

(declare-fun m!503385 () Bool)

(assert (=> b!522441 m!503385))

(declare-fun m!503387 () Bool)

(assert (=> b!522439 m!503387))

(declare-fun m!503389 () Bool)

(assert (=> b!522446 m!503389))

(assert (=> b!522446 m!503383))

(declare-fun m!503391 () Bool)

(assert (=> start!47470 m!503391))

(declare-fun m!503393 () Bool)

(assert (=> start!47470 m!503393))

(declare-fun m!503395 () Bool)

(assert (=> b!522434 m!503395))

(declare-fun m!503397 () Bool)

(assert (=> b!522434 m!503397))

(assert (=> b!522440 m!503383))

(assert (=> b!522440 m!503383))

(declare-fun m!503399 () Bool)

(assert (=> b!522440 m!503399))

(declare-fun m!503401 () Bool)

(assert (=> b!522433 m!503401))

(declare-fun m!503403 () Bool)

(assert (=> b!522445 m!503403))

(declare-fun m!503405 () Bool)

(assert (=> b!522445 m!503405))

(declare-fun m!503407 () Bool)

(assert (=> b!522445 m!503407))

(assert (=> b!522445 m!503383))

(declare-fun m!503409 () Bool)

(assert (=> b!522445 m!503409))

(assert (=> b!522445 m!503383))

(declare-fun m!503411 () Bool)

(assert (=> b!522445 m!503411))

(declare-fun m!503413 () Bool)

(assert (=> b!522445 m!503413))

(declare-fun m!503415 () Bool)

(assert (=> b!522445 m!503415))

(assert (=> b!522445 m!503383))

(declare-fun m!503417 () Bool)

(assert (=> b!522445 m!503417))

(declare-fun m!503419 () Bool)

(assert (=> b!522437 m!503419))

(declare-fun m!503421 () Bool)

(assert (=> b!522438 m!503421))

(declare-fun m!503423 () Bool)

(assert (=> b!522436 m!503423))

(push 1)

(assert (not b!522437))

(assert (not b!522436))

(assert (not b!522440))

(assert (not b!522438))

(assert (not b!522441))

(assert (not b!522434))

(assert (not b!522433))

(assert (not b!522445))

(assert (not b!522439))

(assert (not start!47470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80295 () Bool)

(declare-fun e!304780 () Bool)

(assert (=> d!80295 e!304780))

(declare-fun res!320316 () Bool)

(assert (=> d!80295 (=> (not res!320316) (not e!304780))))

(assert (=> d!80295 (= res!320316 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16345 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16345 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16345 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16345 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16345 a!3235))))))

(declare-fun lt!239774 () Unit!16286)

(declare-fun choose!47 (array!33256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16286)

(assert (=> d!80295 (= lt!239774 (choose!47 a!3235 i!1204 k!2280 j!176 lt!239688 #b00000000000000000000000000000000 (index!20025 lt!239686) (x!49028 lt!239686) mask!3524))))

(assert (=> d!80295 (validMask!0 mask!3524)))

(assert (=> d!80295 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239688 #b00000000000000000000000000000000 (index!20025 lt!239686) (x!49028 lt!239686) mask!3524) lt!239774)))

(declare-fun b!522575 () Bool)

(assert (=> b!522575 (= e!304780 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239688 (select (store (arr!15981 a!3235) i!1204 k!2280) j!176) (array!33257 (store (arr!15981 a!3235) i!1204 k!2280) (size!16345 a!3235)) mask!3524) (Intermediate!4455 false (index!20025 lt!239686) (x!49028 lt!239686))))))

(assert (= (and d!80295 res!320316) b!522575))

(declare-fun m!503533 () Bool)

(assert (=> d!80295 m!503533))

(assert (=> d!80295 m!503391))

(assert (=> b!522575 m!503403))

(assert (=> b!522575 m!503407))

(assert (=> b!522575 m!503407))

(declare-fun m!503535 () Bool)

(assert (=> b!522575 m!503535))

(assert (=> b!522434 d!80295))

(declare-fun b!522621 () Bool)

(declare-fun lt!239789 () SeekEntryResult!4455)

(assert (=> b!522621 (and (bvsge (index!20025 lt!239789) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239789) (size!16345 lt!239685)))))

(declare-fun res!320340 () Bool)

(assert (=> b!522621 (= res!320340 (= (select (arr!15981 lt!239685) (index!20025 lt!239789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!304812 () Bool)

(assert (=> b!522621 (=> res!320340 e!304812)))

(declare-fun b!522622 () Bool)

(declare-fun e!304814 () SeekEntryResult!4455)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522622 (= e!304814 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239688 #b00000000000000000000000000000000 mask!3524) lt!239687 lt!239685 mask!3524))))

(declare-fun b!522623 () Bool)

(assert (=> b!522623 (and (bvsge (index!20025 lt!239789) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239789) (size!16345 lt!239685)))))

(assert (=> b!522623 (= e!304812 (= (select (arr!15981 lt!239685) (index!20025 lt!239789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!522624 () Bool)

(assert (=> b!522624 (= e!304814 (Intermediate!4455 false lt!239688 #b00000000000000000000000000000000))))

(declare-fun d!80307 () Bool)

(declare-fun e!304815 () Bool)

(assert (=> d!80307 e!304815))

(declare-fun c!61445 () Bool)

(assert (=> d!80307 (= c!61445 (and (is-Intermediate!4455 lt!239789) (undefined!5267 lt!239789)))))

(declare-fun e!304816 () SeekEntryResult!4455)

(assert (=> d!80307 (= lt!239789 e!304816)))

(declare-fun c!61443 () Bool)

(assert (=> d!80307 (= c!61443 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!239788 () (_ BitVec 64))

(assert (=> d!80307 (= lt!239788 (select (arr!15981 lt!239685) lt!239688))))

(assert (=> d!80307 (validMask!0 mask!3524)))

(assert (=> d!80307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239688 lt!239687 lt!239685 mask!3524) lt!239789)))

(declare-fun b!522625 () Bool)

(assert (=> b!522625 (= e!304815 (bvsge (x!49028 lt!239789) #b01111111111111111111111111111110))))

(declare-fun b!522626 () Bool)

(assert (=> b!522626 (and (bvsge (index!20025 lt!239789) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239789) (size!16345 lt!239685)))))

(declare-fun res!320339 () Bool)

(assert (=> b!522626 (= res!320339 (= (select (arr!15981 lt!239685) (index!20025 lt!239789)) lt!239687))))

(assert (=> b!522626 (=> res!320339 e!304812)))

(declare-fun e!304813 () Bool)

(assert (=> b!522626 (= e!304813 e!304812)))

(declare-fun b!522627 () Bool)

(assert (=> b!522627 (= e!304816 e!304814)))

(declare-fun c!61444 () Bool)

(assert (=> b!522627 (= c!61444 (or (= lt!239788 lt!239687) (= (bvadd lt!239788 lt!239788) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522628 () Bool)

(assert (=> b!522628 (= e!304815 e!304813)))

(declare-fun res!320338 () Bool)

(assert (=> b!522628 (= res!320338 (and (is-Intermediate!4455 lt!239789) (not (undefined!5267 lt!239789)) (bvslt (x!49028 lt!239789) #b01111111111111111111111111111110) (bvsge (x!49028 lt!239789) #b00000000000000000000000000000000) (bvsge (x!49028 lt!239789) #b00000000000000000000000000000000)))))

(assert (=> b!522628 (=> (not res!320338) (not e!304813))))

(declare-fun b!522629 () Bool)

(assert (=> b!522629 (= e!304816 (Intermediate!4455 true lt!239688 #b00000000000000000000000000000000))))

(assert (= (and d!80307 c!61443) b!522629))

(assert (= (and d!80307 (not c!61443)) b!522627))

(assert (= (and b!522627 c!61444) b!522624))

(assert (= (and b!522627 (not c!61444)) b!522622))

(assert (= (and d!80307 c!61445) b!522625))

(assert (= (and d!80307 (not c!61445)) b!522628))

(assert (= (and b!522628 res!320338) b!522626))

(assert (= (and b!522626 (not res!320339)) b!522621))

(assert (= (and b!522621 (not res!320340)) b!522623))

(declare-fun m!503547 () Bool)

(assert (=> b!522623 m!503547))

(assert (=> b!522621 m!503547))

(declare-fun m!503549 () Bool)

(assert (=> d!80307 m!503549))

(assert (=> d!80307 m!503391))

(assert (=> b!522626 m!503547))

(declare-fun m!503551 () Bool)

(assert (=> b!522622 m!503551))

(assert (=> b!522622 m!503551))

(declare-fun m!503553 () Bool)

(assert (=> b!522622 m!503553))

(assert (=> b!522434 d!80307))

(declare-fun d!80313 () Bool)

(assert (=> d!80313 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!522439 d!80313))

(declare-fun d!80315 () Bool)

(assert (=> d!80315 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47470 d!80315))

(declare-fun d!80325 () Bool)

(assert (=> d!80325 (= (array_inv!11755 a!3235) (bvsge (size!16345 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47470 d!80325))

(declare-fun d!80327 () Bool)

(declare-fun res!320363 () Bool)

(declare-fun e!304856 () Bool)

(assert (=> d!80327 (=> res!320363 e!304856)))

(assert (=> d!80327 (= res!320363 (= (select (arr!15981 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80327 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!304856)))

(declare-fun b!522694 () Bool)

(declare-fun e!304857 () Bool)

(assert (=> b!522694 (= e!304856 e!304857)))

(declare-fun res!320364 () Bool)

(assert (=> b!522694 (=> (not res!320364) (not e!304857))))

(assert (=> b!522694 (= res!320364 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16345 a!3235)))))

(declare-fun b!522695 () Bool)

(assert (=> b!522695 (= e!304857 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80327 (not res!320363)) b!522694))

(assert (= (and b!522694 res!320364) b!522695))

(declare-fun m!503587 () Bool)

(assert (=> d!80327 m!503587))

(declare-fun m!503589 () Bool)

(assert (=> b!522695 m!503589))

(assert (=> b!522433 d!80327))

(declare-fun b!522751 () Bool)

(declare-fun e!304893 () SeekEntryResult!4455)

(declare-fun lt!239839 () SeekEntryResult!4455)

(assert (=> b!522751 (= e!304893 (Found!4455 (index!20025 lt!239839)))))

(declare-fun b!522752 () Bool)

(declare-fun e!304894 () SeekEntryResult!4455)

(assert (=> b!522752 (= e!304894 Undefined!4455)))

(declare-fun b!522753 () Bool)

(assert (=> b!522753 (= e!304894 e!304893)))

(declare-fun lt!239840 () (_ BitVec 64))

(assert (=> b!522753 (= lt!239840 (select (arr!15981 a!3235) (index!20025 lt!239839)))))

(declare-fun c!61486 () Bool)

(assert (=> b!522753 (= c!61486 (= lt!239840 k!2280))))

(declare-fun d!80333 () Bool)

(declare-fun lt!239841 () SeekEntryResult!4455)

(assert (=> d!80333 (and (or (is-Undefined!4455 lt!239841) (not (is-Found!4455 lt!239841)) (and (bvsge (index!20024 lt!239841) #b00000000000000000000000000000000) (bvslt (index!20024 lt!239841) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239841) (is-Found!4455 lt!239841) (not (is-MissingZero!4455 lt!239841)) (and (bvsge (index!20023 lt!239841) #b00000000000000000000000000000000) (bvslt (index!20023 lt!239841) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239841) (is-Found!4455 lt!239841) (is-MissingZero!4455 lt!239841) (not (is-MissingVacant!4455 lt!239841)) (and (bvsge (index!20026 lt!239841) #b00000000000000000000000000000000) (bvslt (index!20026 lt!239841) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239841) (ite (is-Found!4455 lt!239841) (= (select (arr!15981 a!3235) (index!20024 lt!239841)) k!2280) (ite (is-MissingZero!4455 lt!239841) (= (select (arr!15981 a!3235) (index!20023 lt!239841)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4455 lt!239841) (= (select (arr!15981 a!3235) (index!20026 lt!239841)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80333 (= lt!239841 e!304894)))

(declare-fun c!61487 () Bool)

(assert (=> d!80333 (= c!61487 (and (is-Intermediate!4455 lt!239839) (undefined!5267 lt!239839)))))

(assert (=> d!80333 (= lt!239839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80333 (validMask!0 mask!3524)))

(assert (=> d!80333 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!239841)))

(declare-fun e!304892 () SeekEntryResult!4455)

(declare-fun b!522754 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33256 (_ BitVec 32)) SeekEntryResult!4455)

(assert (=> b!522754 (= e!304892 (seekKeyOrZeroReturnVacant!0 (x!49028 lt!239839) (index!20025 lt!239839) (index!20025 lt!239839) k!2280 a!3235 mask!3524))))

(declare-fun b!522755 () Bool)

(declare-fun c!61488 () Bool)

(assert (=> b!522755 (= c!61488 (= lt!239840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522755 (= e!304893 e!304892)))

(declare-fun b!522756 () Bool)

(assert (=> b!522756 (= e!304892 (MissingZero!4455 (index!20025 lt!239839)))))

(assert (= (and d!80333 c!61487) b!522752))

(assert (= (and d!80333 (not c!61487)) b!522753))

(assert (= (and b!522753 c!61486) b!522751))

(assert (= (and b!522753 (not c!61486)) b!522755))

(assert (= (and b!522755 c!61488) b!522756))

(assert (= (and b!522755 (not c!61488)) b!522754))

(declare-fun m!503635 () Bool)

(assert (=> b!522753 m!503635))

(declare-fun m!503637 () Bool)

(assert (=> d!80333 m!503637))

(declare-fun m!503639 () Bool)

(assert (=> d!80333 m!503639))

(assert (=> d!80333 m!503639))

(declare-fun m!503641 () Bool)

(assert (=> d!80333 m!503641))

(declare-fun m!503643 () Bool)

(assert (=> d!80333 m!503643))

(declare-fun m!503645 () Bool)

(assert (=> d!80333 m!503645))

(assert (=> d!80333 m!503391))

(declare-fun m!503647 () Bool)

(assert (=> b!522754 m!503647))

(assert (=> b!522438 d!80333))

(declare-fun b!522767 () Bool)

(declare-fun e!304905 () Bool)

(declare-fun call!31821 () Bool)

(assert (=> b!522767 (= e!304905 call!31821)))

(declare-fun d!80359 () Bool)

(declare-fun res!320389 () Bool)

(declare-fun e!304904 () Bool)

(assert (=> d!80359 (=> res!320389 e!304904)))

(assert (=> d!80359 (= res!320389 (bvsge #b00000000000000000000000000000000 (size!16345 a!3235)))))

(assert (=> d!80359 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10189) e!304904)))

(declare-fun b!522768 () Bool)

(assert (=> b!522768 (= e!304905 call!31821)))

(declare-fun bm!31818 () Bool)

(declare-fun c!61491 () Bool)

(assert (=> bm!31818 (= call!31821 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61491 (Cons!10188 (select (arr!15981 a!3235) #b00000000000000000000000000000000) Nil!10189) Nil!10189)))))

(declare-fun b!522769 () Bool)

(declare-fun e!304906 () Bool)

(assert (=> b!522769 (= e!304906 e!304905)))

(assert (=> b!522769 (= c!61491 (validKeyInArray!0 (select (arr!15981 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522770 () Bool)

(assert (=> b!522770 (= e!304904 e!304906)))

(declare-fun res!320391 () Bool)

(assert (=> b!522770 (=> (not res!320391) (not e!304906))))

(declare-fun e!304903 () Bool)

(assert (=> b!522770 (= res!320391 (not e!304903))))

(declare-fun res!320390 () Bool)

(assert (=> b!522770 (=> (not res!320390) (not e!304903))))

(assert (=> b!522770 (= res!320390 (validKeyInArray!0 (select (arr!15981 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522771 () Bool)

(declare-fun contains!2770 (List!10192 (_ BitVec 64)) Bool)

(assert (=> b!522771 (= e!304903 (contains!2770 Nil!10189 (select (arr!15981 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80359 (not res!320389)) b!522770))

(assert (= (and b!522770 res!320390) b!522771))

(assert (= (and b!522770 res!320391) b!522769))

(assert (= (and b!522769 c!61491) b!522767))

(assert (= (and b!522769 (not c!61491)) b!522768))

(assert (= (or b!522767 b!522768) bm!31818))

(assert (=> bm!31818 m!503587))

(declare-fun m!503649 () Bool)

(assert (=> bm!31818 m!503649))

(assert (=> b!522769 m!503587))

(assert (=> b!522769 m!503587))

(declare-fun m!503651 () Bool)

(assert (=> b!522769 m!503651))

(assert (=> b!522770 m!503587))

(assert (=> b!522770 m!503587))

(assert (=> b!522770 m!503651))

(assert (=> b!522771 m!503587))

(assert (=> b!522771 m!503587))

(declare-fun m!503653 () Bool)

(assert (=> b!522771 m!503653))

(assert (=> b!522437 d!80359))

(declare-fun b!522792 () Bool)

(declare-fun e!304919 () Bool)

(declare-fun e!304920 () Bool)

(assert (=> b!522792 (= e!304919 e!304920)))

(declare-fun c!61500 () Bool)

(assert (=> b!522792 (= c!61500 (validKeyInArray!0 (select (arr!15981 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522793 () Bool)

(declare-fun e!304921 () Bool)

(declare-fun call!31824 () Bool)

(assert (=> b!522793 (= e!304921 call!31824)))

(declare-fun b!522794 () Bool)

(assert (=> b!522794 (= e!304920 e!304921)))

(declare-fun lt!239856 () (_ BitVec 64))

(assert (=> b!522794 (= lt!239856 (select (arr!15981 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!239855 () Unit!16286)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33256 (_ BitVec 64) (_ BitVec 32)) Unit!16286)

(assert (=> b!522794 (= lt!239855 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!239856 #b00000000000000000000000000000000))))

(assert (=> b!522794 (arrayContainsKey!0 a!3235 lt!239856 #b00000000000000000000000000000000)))

(declare-fun lt!239854 () Unit!16286)

(assert (=> b!522794 (= lt!239854 lt!239855)))

(declare-fun res!320396 () Bool)

(assert (=> b!522794 (= res!320396 (= (seekEntryOrOpen!0 (select (arr!15981 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4455 #b00000000000000000000000000000000)))))

(assert (=> b!522794 (=> (not res!320396) (not e!304921))))

(declare-fun bm!31821 () Bool)

(assert (=> bm!31821 (= call!31824 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80361 () Bool)

(declare-fun res!320397 () Bool)

(assert (=> d!80361 (=> res!320397 e!304919)))

(assert (=> d!80361 (= res!320397 (bvsge #b00000000000000000000000000000000 (size!16345 a!3235)))))

(assert (=> d!80361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!304919)))

(declare-fun b!522795 () Bool)

(assert (=> b!522795 (= e!304920 call!31824)))

(assert (= (and d!80361 (not res!320397)) b!522792))

(assert (= (and b!522792 c!61500) b!522794))

(assert (= (and b!522792 (not c!61500)) b!522795))

(assert (= (and b!522794 res!320396) b!522793))

(assert (= (or b!522793 b!522795) bm!31821))

(assert (=> b!522792 m!503587))

(assert (=> b!522792 m!503587))

(assert (=> b!522792 m!503651))

(assert (=> b!522794 m!503587))

(declare-fun m!503655 () Bool)

(assert (=> b!522794 m!503655))

(declare-fun m!503657 () Bool)

(assert (=> b!522794 m!503657))

(assert (=> b!522794 m!503587))

(declare-fun m!503659 () Bool)

(assert (=> b!522794 m!503659))

(declare-fun m!503661 () Bool)

(assert (=> bm!31821 m!503661))

(assert (=> b!522436 d!80361))

(declare-fun b!522796 () Bool)

(declare-fun e!304923 () SeekEntryResult!4455)

(declare-fun lt!239857 () SeekEntryResult!4455)

(assert (=> b!522796 (= e!304923 (Found!4455 (index!20025 lt!239857)))))

(declare-fun b!522797 () Bool)

(declare-fun e!304924 () SeekEntryResult!4455)

(assert (=> b!522797 (= e!304924 Undefined!4455)))

(declare-fun b!522798 () Bool)

(assert (=> b!522798 (= e!304924 e!304923)))

(declare-fun lt!239858 () (_ BitVec 64))

(assert (=> b!522798 (= lt!239858 (select (arr!15981 a!3235) (index!20025 lt!239857)))))

(declare-fun c!61501 () Bool)

(assert (=> b!522798 (= c!61501 (= lt!239858 (select (arr!15981 a!3235) j!176)))))

(declare-fun d!80363 () Bool)

(declare-fun lt!239859 () SeekEntryResult!4455)

(assert (=> d!80363 (and (or (is-Undefined!4455 lt!239859) (not (is-Found!4455 lt!239859)) (and (bvsge (index!20024 lt!239859) #b00000000000000000000000000000000) (bvslt (index!20024 lt!239859) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239859) (is-Found!4455 lt!239859) (not (is-MissingZero!4455 lt!239859)) (and (bvsge (index!20023 lt!239859) #b00000000000000000000000000000000) (bvslt (index!20023 lt!239859) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239859) (is-Found!4455 lt!239859) (is-MissingZero!4455 lt!239859) (not (is-MissingVacant!4455 lt!239859)) (and (bvsge (index!20026 lt!239859) #b00000000000000000000000000000000) (bvslt (index!20026 lt!239859) (size!16345 a!3235)))) (or (is-Undefined!4455 lt!239859) (ite (is-Found!4455 lt!239859) (= (select (arr!15981 a!3235) (index!20024 lt!239859)) (select (arr!15981 a!3235) j!176)) (ite (is-MissingZero!4455 lt!239859) (= (select (arr!15981 a!3235) (index!20023 lt!239859)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4455 lt!239859) (= (select (arr!15981 a!3235) (index!20026 lt!239859)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80363 (= lt!239859 e!304924)))

(declare-fun c!61502 () Bool)

(assert (=> d!80363 (= c!61502 (and (is-Intermediate!4455 lt!239857) (undefined!5267 lt!239857)))))

(assert (=> d!80363 (= lt!239857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15981 a!3235) j!176) mask!3524) (select (arr!15981 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80363 (validMask!0 mask!3524)))

(assert (=> d!80363 (= (seekEntryOrOpen!0 (select (arr!15981 a!3235) j!176) a!3235 mask!3524) lt!239859)))

(declare-fun e!304922 () SeekEntryResult!4455)

(declare-fun b!522799 () Bool)

(assert (=> b!522799 (= e!304922 (seekKeyOrZeroReturnVacant!0 (x!49028 lt!239857) (index!20025 lt!239857) (index!20025 lt!239857) (select (arr!15981 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!522800 () Bool)

(declare-fun c!61503 () Bool)

(assert (=> b!522800 (= c!61503 (= lt!239858 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522800 (= e!304923 e!304922)))

(declare-fun b!522801 () Bool)

(assert (=> b!522801 (= e!304922 (MissingZero!4455 (index!20025 lt!239857)))))

(assert (= (and d!80363 c!61502) b!522797))

(assert (= (and d!80363 (not c!61502)) b!522798))

(assert (= (and b!522798 c!61501) b!522796))

(assert (= (and b!522798 (not c!61501)) b!522800))

(assert (= (and b!522800 c!61503) b!522801))

(assert (= (and b!522800 (not c!61503)) b!522799))

(declare-fun m!503663 () Bool)

(assert (=> b!522798 m!503663))

(declare-fun m!503665 () Bool)

(assert (=> d!80363 m!503665))

(assert (=> d!80363 m!503383))

(assert (=> d!80363 m!503409))

(assert (=> d!80363 m!503409))

(assert (=> d!80363 m!503383))

(declare-fun m!503667 () Bool)

(assert (=> d!80363 m!503667))

(declare-fun m!503669 () Bool)

(assert (=> d!80363 m!503669))

(declare-fun m!503671 () Bool)

(assert (=> d!80363 m!503671))

(assert (=> d!80363 m!503391))

(assert (=> b!522799 m!503383))

(declare-fun m!503673 () Bool)

(assert (=> b!522799 m!503673))

(assert (=> b!522441 d!80363))

(declare-fun d!80365 () Bool)

(assert (=> d!80365 (= (validKeyInArray!0 (select (arr!15981 a!3235) j!176)) (and (not (= (select (arr!15981 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15981 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!522440 d!80365))

(declare-fun b!522802 () Bool)

(declare-fun lt!239861 () SeekEntryResult!4455)

(assert (=> b!522802 (and (bvsge (index!20025 lt!239861) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239861) (size!16345 lt!239685)))))

(declare-fun res!320400 () Bool)

(assert (=> b!522802 (= res!320400 (= (select (arr!15981 lt!239685) (index!20025 lt!239861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!304925 () Bool)

(assert (=> b!522802 (=> res!320400 e!304925)))

(declare-fun e!304927 () SeekEntryResult!4455)

(declare-fun b!522803 () Bool)

(assert (=> b!522803 (= e!304927 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239692 #b00000000000000000000000000000000 mask!3524) lt!239687 lt!239685 mask!3524))))

(declare-fun b!522804 () Bool)

(assert (=> b!522804 (and (bvsge (index!20025 lt!239861) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239861) (size!16345 lt!239685)))))

(assert (=> b!522804 (= e!304925 (= (select (arr!15981 lt!239685) (index!20025 lt!239861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!522805 () Bool)

(assert (=> b!522805 (= e!304927 (Intermediate!4455 false lt!239692 #b00000000000000000000000000000000))))

(declare-fun d!80367 () Bool)

(declare-fun e!304928 () Bool)

(assert (=> d!80367 e!304928))

(declare-fun c!61506 () Bool)

(assert (=> d!80367 (= c!61506 (and (is-Intermediate!4455 lt!239861) (undefined!5267 lt!239861)))))

(declare-fun e!304929 () SeekEntryResult!4455)

(assert (=> d!80367 (= lt!239861 e!304929)))

(declare-fun c!61504 () Bool)

(assert (=> d!80367 (= c!61504 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!239860 () (_ BitVec 64))

(assert (=> d!80367 (= lt!239860 (select (arr!15981 lt!239685) lt!239692))))

(assert (=> d!80367 (validMask!0 mask!3524)))

(assert (=> d!80367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239692 lt!239687 lt!239685 mask!3524) lt!239861)))

(declare-fun b!522806 () Bool)

(assert (=> b!522806 (= e!304928 (bvsge (x!49028 lt!239861) #b01111111111111111111111111111110))))

(declare-fun b!522807 () Bool)

(assert (=> b!522807 (and (bvsge (index!20025 lt!239861) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239861) (size!16345 lt!239685)))))

(declare-fun res!320399 () Bool)

(assert (=> b!522807 (= res!320399 (= (select (arr!15981 lt!239685) (index!20025 lt!239861)) lt!239687))))

(assert (=> b!522807 (=> res!320399 e!304925)))

(declare-fun e!304926 () Bool)

(assert (=> b!522807 (= e!304926 e!304925)))

(declare-fun b!522808 () Bool)

(assert (=> b!522808 (= e!304929 e!304927)))

(declare-fun c!61505 () Bool)

(assert (=> b!522808 (= c!61505 (or (= lt!239860 lt!239687) (= (bvadd lt!239860 lt!239860) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522809 () Bool)

(assert (=> b!522809 (= e!304928 e!304926)))

(declare-fun res!320398 () Bool)

(assert (=> b!522809 (= res!320398 (and (is-Intermediate!4455 lt!239861) (not (undefined!5267 lt!239861)) (bvslt (x!49028 lt!239861) #b01111111111111111111111111111110) (bvsge (x!49028 lt!239861) #b00000000000000000000000000000000) (bvsge (x!49028 lt!239861) #b00000000000000000000000000000000)))))

(assert (=> b!522809 (=> (not res!320398) (not e!304926))))

(declare-fun b!522810 () Bool)

(assert (=> b!522810 (= e!304929 (Intermediate!4455 true lt!239692 #b00000000000000000000000000000000))))

(assert (= (and d!80367 c!61504) b!522810))

(assert (= (and d!80367 (not c!61504)) b!522808))

(assert (= (and b!522808 c!61505) b!522805))

(assert (= (and b!522808 (not c!61505)) b!522803))

(assert (= (and d!80367 c!61506) b!522806))

(assert (= (and d!80367 (not c!61506)) b!522809))

(assert (= (and b!522809 res!320398) b!522807))

(assert (= (and b!522807 (not res!320399)) b!522802))

(assert (= (and b!522802 (not res!320400)) b!522804))

(declare-fun m!503675 () Bool)

(assert (=> b!522804 m!503675))

(assert (=> b!522802 m!503675))

(declare-fun m!503677 () Bool)

(assert (=> d!80367 m!503677))

(assert (=> d!80367 m!503391))

(assert (=> b!522807 m!503675))

(declare-fun m!503679 () Bool)

(assert (=> b!522803 m!503679))

(assert (=> b!522803 m!503679))

(declare-fun m!503681 () Bool)

(assert (=> b!522803 m!503681))

(assert (=> b!522445 d!80367))

(declare-fun d!80369 () Bool)

(declare-fun lt!239876 () (_ BitVec 32))

(declare-fun lt!239875 () (_ BitVec 32))

(assert (=> d!80369 (= lt!239876 (bvmul (bvxor lt!239875 (bvlshr lt!239875 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80369 (= lt!239875 ((_ extract 31 0) (bvand (bvxor (select (arr!15981 a!3235) j!176) (bvlshr (select (arr!15981 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80369 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320401 (let ((h!11115 ((_ extract 31 0) (bvand (bvxor (select (arr!15981 a!3235) j!176) (bvlshr (select (arr!15981 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49038 (bvmul (bvxor h!11115 (bvlshr h!11115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49038 (bvlshr x!49038 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320401 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320401 #b00000000000000000000000000000000))))))

(assert (=> d!80369 (= (toIndex!0 (select (arr!15981 a!3235) j!176) mask!3524) (bvand (bvxor lt!239876 (bvlshr lt!239876 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522445 d!80369))

(declare-fun b!522827 () Bool)

(declare-fun lt!239878 () SeekEntryResult!4455)

(assert (=> b!522827 (and (bvsge (index!20025 lt!239878) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239878) (size!16345 a!3235)))))

(declare-fun res!320406 () Bool)

(assert (=> b!522827 (= res!320406 (= (select (arr!15981 a!3235) (index!20025 lt!239878)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!304939 () Bool)

(assert (=> b!522827 (=> res!320406 e!304939)))

(declare-fun b!522828 () Bool)

(declare-fun e!304941 () SeekEntryResult!4455)

(assert (=> b!522828 (= e!304941 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239688 #b00000000000000000000000000000000 mask!3524) (select (arr!15981 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!522829 () Bool)

(assert (=> b!522829 (and (bvsge (index!20025 lt!239878) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239878) (size!16345 a!3235)))))

(assert (=> b!522829 (= e!304939 (= (select (arr!15981 a!3235) (index!20025 lt!239878)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!522830 () Bool)

(assert (=> b!522830 (= e!304941 (Intermediate!4455 false lt!239688 #b00000000000000000000000000000000))))

(declare-fun d!80377 () Bool)

(declare-fun e!304942 () Bool)

(assert (=> d!80377 e!304942))

(declare-fun c!61516 () Bool)

(assert (=> d!80377 (= c!61516 (and (is-Intermediate!4455 lt!239878) (undefined!5267 lt!239878)))))

(declare-fun e!304943 () SeekEntryResult!4455)

(assert (=> d!80377 (= lt!239878 e!304943)))

(declare-fun c!61514 () Bool)

(assert (=> d!80377 (= c!61514 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!239877 () (_ BitVec 64))

(assert (=> d!80377 (= lt!239877 (select (arr!15981 a!3235) lt!239688))))

(assert (=> d!80377 (validMask!0 mask!3524)))

(assert (=> d!80377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239688 (select (arr!15981 a!3235) j!176) a!3235 mask!3524) lt!239878)))

(declare-fun b!522831 () Bool)

(assert (=> b!522831 (= e!304942 (bvsge (x!49028 lt!239878) #b01111111111111111111111111111110))))

(declare-fun b!522832 () Bool)

(assert (=> b!522832 (and (bvsge (index!20025 lt!239878) #b00000000000000000000000000000000) (bvslt (index!20025 lt!239878) (size!16345 a!3235)))))

(declare-fun res!320405 () Bool)

(assert (=> b!522832 (= res!320405 (= (select (arr!15981 a!3235) (index!20025 lt!239878)) (select (arr!15981 a!3235) j!176)))))

(assert (=> b!522832 (=> res!320405 e!304939)))

(declare-fun e!304940 () Bool)

(assert (=> b!522832 (= e!304940 e!304939)))

(declare-fun b!522833 () Bool)

(assert (=> b!522833 (= e!304943 e!304941)))

(declare-fun c!61515 () Bool)

(assert (=> b!522833 (= c!61515 (or (= lt!239877 (select (arr!15981 a!3235) j!176)) (= (bvadd lt!239877 lt!239877) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522834 () Bool)

(assert (=> b!522834 (= e!304942 e!304940)))

(declare-fun res!320404 () Bool)

(assert (=> b!522834 (= res!320404 (and (is-Intermediate!4455 lt!239878) (not (undefined!5267 lt!239878)) (bvslt (x!49028 lt!239878) #b01111111111111111111111111111110) (bvsge (x!49028 lt!239878) #b00000000000000000000000000000000) (bvsge (x!49028 lt!239878) #b00000000000000000000000000000000)))))

(assert (=> b!522834 (=> (not res!320404) (not e!304940))))

(declare-fun b!522835 () Bool)

(assert (=> b!522835 (= e!304943 (Intermediate!4455 true lt!239688 #b00000000000000000000000000000000))))

(assert (= (and d!80377 c!61514) b!522835))

(assert (= (and d!80377 (not c!61514)) b!522833))

(assert (= (and b!522833 c!61515) b!522830))

(assert (= (and b!522833 (not c!61515)) b!522828))

(assert (= (and d!80377 c!61516) b!522831))

(assert (= (and d!80377 (not c!61516)) b!522834))

(assert (= (and b!522834 res!320404) b!522832))

(assert (= (and b!522832 (not res!320405)) b!522827))

(assert (= (and b!522827 (not res!320406)) b!522829))

(declare-fun m!503717 () Bool)

(assert (=> b!522829 m!503717))

(assert (=> b!522827 m!503717))

(declare-fun m!503719 () Bool)

(assert (=> d!80377 m!503719))

(assert (=> d!80377 m!503391))

(assert (=> b!522832 m!503717))

(assert (=> b!522828 m!503551))

(assert (=> b!522828 m!503551))

(assert (=> b!522828 m!503383))

(declare-fun m!503721 () Bool)

(assert (=> b!522828 m!503721))

(assert (=> b!522445 d!80377))

(declare-fun b!522840 () Bool)

(declare-fun e!304948 () Bool)

(declare-fun e!304949 () Bool)

(assert (=> b!522840 (= e!304948 e!304949)))

(declare-fun c!61517 () Bool)

(assert (=> b!522840 (= c!61517 (validKeyInArray!0 (select (arr!15981 a!3235) j!176)))))

(declare-fun b!522841 () Bool)

(declare-fun e!304950 () Bool)

(declare-fun call!31826 () Bool)

(assert (=> b!522841 (= e!304950 call!31826)))

(declare-fun b!522842 () Bool)

(assert (=> b!522842 (= e!304949 e!304950)))

(declare-fun lt!239881 () (_ BitVec 64))

(assert (=> b!522842 (= lt!239881 (select (arr!15981 a!3235) j!176))))

(declare-fun lt!239880 () Unit!16286)

(assert (=> b!522842 (= lt!239880 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!239881 j!176))))

(assert (=> b!522842 (arrayContainsKey!0 a!3235 lt!239881 #b00000000000000000000000000000000)))

(declare-fun lt!239879 () Unit!16286)

(assert (=> b!522842 (= lt!239879 lt!239880)))

(declare-fun res!320411 () Bool)

(assert (=> b!522842 (= res!320411 (= (seekEntryOrOpen!0 (select (arr!15981 a!3235) j!176) a!3235 mask!3524) (Found!4455 j!176)))))

(assert (=> b!522842 (=> (not res!320411) (not e!304950))))

(declare-fun bm!31823 () Bool)

(assert (=> bm!31823 (= call!31826 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80379 () Bool)

(declare-fun res!320412 () Bool)

(assert (=> d!80379 (=> res!320412 e!304948)))

(assert (=> d!80379 (= res!320412 (bvsge j!176 (size!16345 a!3235)))))

(assert (=> d!80379 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!304948)))

(declare-fun b!522843 () Bool)

(assert (=> b!522843 (= e!304949 call!31826)))

(assert (= (and d!80379 (not res!320412)) b!522840))

(assert (= (and b!522840 c!61517) b!522842))

(assert (= (and b!522840 (not c!61517)) b!522843))

(assert (= (and b!522842 res!320411) b!522841))

(assert (= (or b!522841 b!522843) bm!31823))

(assert (=> b!522840 m!503383))

(assert (=> b!522840 m!503383))

(assert (=> b!522840 m!503399))

(assert (=> b!522842 m!503383))

(declare-fun m!503723 () Bool)

(assert (=> b!522842 m!503723))

(declare-fun m!503725 () Bool)

(assert (=> b!522842 m!503725))

(assert (=> b!522842 m!503383))

(assert (=> b!522842 m!503385))

(declare-fun m!503727 () Bool)

(assert (=> bm!31823 m!503727))

(assert (=> b!522445 d!80379))

(declare-fun d!80381 () Bool)

(declare-fun lt!239883 () (_ BitVec 32))

(declare-fun lt!239882 () (_ BitVec 32))

(assert (=> d!80381 (= lt!239883 (bvmul (bvxor lt!239882 (bvlshr lt!239882 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80381 (= lt!239882 ((_ extract 31 0) (bvand (bvxor lt!239687 (bvlshr lt!239687 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80381 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320401 (let ((h!11115 ((_ extract 31 0) (bvand (bvxor lt!239687 (bvlshr lt!239687 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49038 (bvmul (bvxor h!11115 (bvlshr h!11115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49038 (bvlshr x!49038 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320401 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320401 #b00000000000000000000000000000000))))))

(assert (=> d!80381 (= (toIndex!0 lt!239687 mask!3524) (bvand (bvxor lt!239883 (bvlshr lt!239883 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522445 d!80381))

(declare-fun d!80383 () Bool)

(assert (=> d!80383 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!239886 () Unit!16286)

(declare-fun choose!38 (array!33256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16286)

(assert (=> d!80383 (= lt!239886 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80383 (validMask!0 mask!3524)))

(assert (=> d!80383 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!239886)))

(declare-fun bs!16436 () Bool)

(assert (= bs!16436 d!80383))

(assert (=> bs!16436 m!503411))

(declare-fun m!503731 () Bool)

(assert (=> bs!16436 m!503731))

(assert (=> bs!16436 m!503391))

(assert (=> b!522445 d!80383))

(push 1)

