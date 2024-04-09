; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52706 () Bool)

(assert start!52706)

(declare-fun b!574466 () Bool)

(declare-fun res!363317 () Bool)

(declare-fun e!330531 () Bool)

(assert (=> b!574466 (=> (not res!363317) (not e!330531))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35868 0))(
  ( (array!35869 (arr!17214 (Array (_ BitVec 32) (_ BitVec 64))) (size!17578 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35868)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!574466 (= res!363317 (and (= (size!17578 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17578 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17578 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!574467 () Bool)

(declare-fun res!363307 () Bool)

(declare-fun e!330527 () Bool)

(assert (=> b!574467 (=> (not res!363307) (not e!330527))))

(declare-datatypes ((List!11347 0))(
  ( (Nil!11344) (Cons!11343 (h!12379 (_ BitVec 64)) (t!17583 List!11347)) )
))
(declare-fun arrayNoDuplicates!0 (array!35868 (_ BitVec 32) List!11347) Bool)

(assert (=> b!574467 (= res!363307 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11344))))

(declare-fun b!574468 () Bool)

(declare-fun res!363314 () Bool)

(assert (=> b!574468 (=> (not res!363314) (not e!330531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574468 (= res!363314 (validKeyInArray!0 (select (arr!17214 a!3118) j!142)))))

(declare-fun res!363312 () Bool)

(assert (=> start!52706 (=> (not res!363312) (not e!330531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52706 (= res!363312 (validMask!0 mask!3119))))

(assert (=> start!52706 e!330531))

(assert (=> start!52706 true))

(declare-fun array_inv!12988 (array!35868) Bool)

(assert (=> start!52706 (array_inv!12988 a!3118)))

(declare-fun b!574469 () Bool)

(declare-fun e!330528 () Bool)

(declare-fun e!330529 () Bool)

(assert (=> b!574469 (= e!330528 e!330529)))

(declare-fun res!363305 () Bool)

(assert (=> b!574469 (=> (not res!363305) (not e!330529))))

(declare-datatypes ((SeekEntryResult!5670 0))(
  ( (MissingZero!5670 (index!24907 (_ BitVec 32))) (Found!5670 (index!24908 (_ BitVec 32))) (Intermediate!5670 (undefined!6482 Bool) (index!24909 (_ BitVec 32)) (x!53825 (_ BitVec 32))) (Undefined!5670) (MissingVacant!5670 (index!24910 (_ BitVec 32))) )
))
(declare-fun lt!262435 () SeekEntryResult!5670)

(declare-fun lt!262434 () SeekEntryResult!5670)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35868 (_ BitVec 32)) SeekEntryResult!5670)

(assert (=> b!574469 (= res!363305 (= lt!262434 (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262435) (index!24909 lt!262435) (index!24909 lt!262435) (select (arr!17214 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!574470 () Bool)

(declare-fun e!330525 () Bool)

(assert (=> b!574470 (= e!330525 e!330528)))

(declare-fun res!363313 () Bool)

(assert (=> b!574470 (=> res!363313 e!330528)))

(declare-fun lt!262438 () (_ BitVec 64))

(assert (=> b!574470 (= res!363313 (or (= lt!262438 (select (arr!17214 a!3118) j!142)) (= lt!262438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574470 (= lt!262438 (select (arr!17214 a!3118) (index!24909 lt!262435)))))

(declare-fun b!574471 () Bool)

(assert (=> b!574471 (= e!330531 e!330527)))

(declare-fun res!363315 () Bool)

(assert (=> b!574471 (=> (not res!363315) (not e!330527))))

(declare-fun lt!262439 () SeekEntryResult!5670)

(assert (=> b!574471 (= res!363315 (or (= lt!262439 (MissingZero!5670 i!1132)) (= lt!262439 (MissingVacant!5670 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35868 (_ BitVec 32)) SeekEntryResult!5670)

(assert (=> b!574471 (= lt!262439 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!574472 () Bool)

(declare-fun res!363316 () Bool)

(assert (=> b!574472 (=> (not res!363316) (not e!330531))))

(assert (=> b!574472 (= res!363316 (validKeyInArray!0 k!1914))))

(declare-fun b!574473 () Bool)

(declare-fun res!363311 () Bool)

(assert (=> b!574473 (=> (not res!363311) (not e!330527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35868 (_ BitVec 32)) Bool)

(assert (=> b!574473 (= res!363311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun lt!262437 () array!35868)

(declare-fun lt!262433 () (_ BitVec 64))

(declare-fun b!574474 () Bool)

(assert (=> b!574474 (= e!330529 (= (seekEntryOrOpen!0 lt!262433 lt!262437 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262435) (index!24909 lt!262435) (index!24909 lt!262435) lt!262433 lt!262437 mask!3119)))))

(declare-fun b!574475 () Bool)

(declare-fun e!330526 () Bool)

(assert (=> b!574475 (= e!330526 e!330525)))

(declare-fun res!363308 () Bool)

(assert (=> b!574475 (=> res!363308 e!330525)))

(assert (=> b!574475 (= res!363308 (or (undefined!6482 lt!262435) (not (is-Intermediate!5670 lt!262435))))))

(declare-fun b!574476 () Bool)

(declare-fun e!330532 () Bool)

(assert (=> b!574476 (= e!330532 (not (or (undefined!6482 lt!262435) (not (is-Intermediate!5670 lt!262435)) (let ((bdg!18025 (select (arr!17214 a!3118) (index!24909 lt!262435)))) (or (= bdg!18025 (select (arr!17214 a!3118) j!142)) (= bdg!18025 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24909 lt!262435) #b00000000000000000000000000000000) (bvsge (index!24909 lt!262435) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53825 lt!262435) #b01111111111111111111111111111110) (bvslt (x!53825 lt!262435) #b00000000000000000000000000000000) (not (= bdg!18025 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (store (arr!17214 a!3118) i!1132 k!1914) (index!24909 lt!262435)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!574476 e!330526))

(declare-fun res!363310 () Bool)

(assert (=> b!574476 (=> (not res!363310) (not e!330526))))

(assert (=> b!574476 (= res!363310 (= lt!262434 (Found!5670 j!142)))))

(assert (=> b!574476 (= lt!262434 (seekEntryOrOpen!0 (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!574476 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18042 0))(
  ( (Unit!18043) )
))
(declare-fun lt!262431 () Unit!18042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18042)

(assert (=> b!574476 (= lt!262431 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574477 () Bool)

(assert (=> b!574477 (= e!330527 e!330532)))

(declare-fun res!363309 () Bool)

(assert (=> b!574477 (=> (not res!363309) (not e!330532))))

(declare-fun lt!262432 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35868 (_ BitVec 32)) SeekEntryResult!5670)

(assert (=> b!574477 (= res!363309 (= lt!262435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262432 lt!262433 lt!262437 mask!3119)))))

(declare-fun lt!262436 () (_ BitVec 32))

(assert (=> b!574477 (= lt!262435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262436 (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574477 (= lt!262432 (toIndex!0 lt!262433 mask!3119))))

(assert (=> b!574477 (= lt!262433 (select (store (arr!17214 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!574477 (= lt!262436 (toIndex!0 (select (arr!17214 a!3118) j!142) mask!3119))))

(assert (=> b!574477 (= lt!262437 (array!35869 (store (arr!17214 a!3118) i!1132 k!1914) (size!17578 a!3118)))))

(declare-fun b!574478 () Bool)

(declare-fun res!363306 () Bool)

(assert (=> b!574478 (=> (not res!363306) (not e!330531))))

(declare-fun arrayContainsKey!0 (array!35868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574478 (= res!363306 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52706 res!363312) b!574466))

(assert (= (and b!574466 res!363317) b!574468))

(assert (= (and b!574468 res!363314) b!574472))

(assert (= (and b!574472 res!363316) b!574478))

(assert (= (and b!574478 res!363306) b!574471))

(assert (= (and b!574471 res!363315) b!574473))

(assert (= (and b!574473 res!363311) b!574467))

(assert (= (and b!574467 res!363307) b!574477))

(assert (= (and b!574477 res!363309) b!574476))

(assert (= (and b!574476 res!363310) b!574475))

(assert (= (and b!574475 (not res!363308)) b!574470))

(assert (= (and b!574470 (not res!363313)) b!574469))

(assert (= (and b!574469 res!363305) b!574474))

(declare-fun m!553339 () Bool)

(assert (=> b!574473 m!553339))

(declare-fun m!553341 () Bool)

(assert (=> b!574474 m!553341))

(declare-fun m!553343 () Bool)

(assert (=> b!574474 m!553343))

(declare-fun m!553345 () Bool)

(assert (=> b!574478 m!553345))

(declare-fun m!553347 () Bool)

(assert (=> b!574476 m!553347))

(declare-fun m!553349 () Bool)

(assert (=> b!574476 m!553349))

(declare-fun m!553351 () Bool)

(assert (=> b!574476 m!553351))

(declare-fun m!553353 () Bool)

(assert (=> b!574476 m!553353))

(declare-fun m!553355 () Bool)

(assert (=> b!574476 m!553355))

(declare-fun m!553357 () Bool)

(assert (=> b!574476 m!553357))

(assert (=> b!574476 m!553351))

(declare-fun m!553359 () Bool)

(assert (=> b!574476 m!553359))

(assert (=> b!574470 m!553351))

(assert (=> b!574470 m!553347))

(assert (=> b!574468 m!553351))

(assert (=> b!574468 m!553351))

(declare-fun m!553361 () Bool)

(assert (=> b!574468 m!553361))

(declare-fun m!553363 () Bool)

(assert (=> b!574471 m!553363))

(assert (=> b!574477 m!553351))

(declare-fun m!553365 () Bool)

(assert (=> b!574477 m!553365))

(assert (=> b!574477 m!553351))

(declare-fun m!553367 () Bool)

(assert (=> b!574477 m!553367))

(declare-fun m!553369 () Bool)

(assert (=> b!574477 m!553369))

(declare-fun m!553371 () Bool)

(assert (=> b!574477 m!553371))

(assert (=> b!574477 m!553355))

(declare-fun m!553373 () Bool)

(assert (=> b!574477 m!553373))

(assert (=> b!574477 m!553351))

(declare-fun m!553375 () Bool)

(assert (=> start!52706 m!553375))

(declare-fun m!553377 () Bool)

(assert (=> start!52706 m!553377))

(assert (=> b!574469 m!553351))

(assert (=> b!574469 m!553351))

(declare-fun m!553379 () Bool)

(assert (=> b!574469 m!553379))

(declare-fun m!553381 () Bool)

(assert (=> b!574472 m!553381))

(declare-fun m!553383 () Bool)

(assert (=> b!574467 m!553383))

(push 1)

(assert (not b!574474))

(assert (not b!574473))

(assert (not b!574467))

(assert (not b!574476))

(assert (not b!574468))

(assert (not b!574469))

(assert (not b!574471))

(assert (not b!574472))

(assert (not start!52706))

(assert (not b!574477))

(assert (not b!574478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!574662 () Bool)

(declare-fun e!330644 () SeekEntryResult!5670)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574662 (= e!330644 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262432 #b00000000000000000000000000000000 mask!3119) lt!262433 lt!262437 mask!3119))))

(declare-fun b!574663 () Bool)

(declare-fun lt!262530 () SeekEntryResult!5670)

(assert (=> b!574663 (and (bvsge (index!24909 lt!262530) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262530) (size!17578 lt!262437)))))

(declare-fun res!363426 () Bool)

(assert (=> b!574663 (= res!363426 (= (select (arr!17214 lt!262437) (index!24909 lt!262530)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330642 () Bool)

(assert (=> b!574663 (=> res!363426 e!330642)))

(declare-fun b!574664 () Bool)

(declare-fun e!330643 () SeekEntryResult!5670)

(assert (=> b!574664 (= e!330643 (Intermediate!5670 true lt!262432 #b00000000000000000000000000000000))))

(declare-fun b!574665 () Bool)

(assert (=> b!574665 (and (bvsge (index!24909 lt!262530) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262530) (size!17578 lt!262437)))))

(declare-fun res!363424 () Bool)

(assert (=> b!574665 (= res!363424 (= (select (arr!17214 lt!262437) (index!24909 lt!262530)) lt!262433))))

(assert (=> b!574665 (=> res!363424 e!330642)))

(declare-fun e!330641 () Bool)

(assert (=> b!574665 (= e!330641 e!330642)))

(declare-fun d!85087 () Bool)

(declare-fun e!330645 () Bool)

(assert (=> d!85087 e!330645))

(declare-fun c!65982 () Bool)

(assert (=> d!85087 (= c!65982 (and (is-Intermediate!5670 lt!262530) (undefined!6482 lt!262530)))))

(assert (=> d!85087 (= lt!262530 e!330643)))

(declare-fun c!65983 () Bool)

(assert (=> d!85087 (= c!65983 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262529 () (_ BitVec 64))

(assert (=> d!85087 (= lt!262529 (select (arr!17214 lt!262437) lt!262432))))

(assert (=> d!85087 (validMask!0 mask!3119)))

(assert (=> d!85087 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262432 lt!262433 lt!262437 mask!3119) lt!262530)))

(declare-fun b!574666 () Bool)

(assert (=> b!574666 (= e!330645 (bvsge (x!53825 lt!262530) #b01111111111111111111111111111110))))

(declare-fun b!574667 () Bool)

(assert (=> b!574667 (= e!330643 e!330644)))

(declare-fun c!65984 () Bool)

(assert (=> b!574667 (= c!65984 (or (= lt!262529 lt!262433) (= (bvadd lt!262529 lt!262529) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574668 () Bool)

(assert (=> b!574668 (= e!330644 (Intermediate!5670 false lt!262432 #b00000000000000000000000000000000))))

(declare-fun b!574669 () Bool)

(assert (=> b!574669 (and (bvsge (index!24909 lt!262530) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262530) (size!17578 lt!262437)))))

(assert (=> b!574669 (= e!330642 (= (select (arr!17214 lt!262437) (index!24909 lt!262530)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574670 () Bool)

(assert (=> b!574670 (= e!330645 e!330641)))

(declare-fun res!363425 () Bool)

(assert (=> b!574670 (= res!363425 (and (is-Intermediate!5670 lt!262530) (not (undefined!6482 lt!262530)) (bvslt (x!53825 lt!262530) #b01111111111111111111111111111110) (bvsge (x!53825 lt!262530) #b00000000000000000000000000000000) (bvsge (x!53825 lt!262530) #b00000000000000000000000000000000)))))

(assert (=> b!574670 (=> (not res!363425) (not e!330641))))

(assert (= (and d!85087 c!65983) b!574664))

(assert (= (and d!85087 (not c!65983)) b!574667))

(assert (= (and b!574667 c!65984) b!574668))

(assert (= (and b!574667 (not c!65984)) b!574662))

(assert (= (and d!85087 c!65982) b!574666))

(assert (= (and d!85087 (not c!65982)) b!574670))

(assert (= (and b!574670 res!363425) b!574665))

(assert (= (and b!574665 (not res!363424)) b!574663))

(assert (= (and b!574663 (not res!363426)) b!574669))

(declare-fun m!553521 () Bool)

(assert (=> b!574663 m!553521))

(assert (=> b!574669 m!553521))

(assert (=> b!574665 m!553521))

(declare-fun m!553523 () Bool)

(assert (=> d!85087 m!553523))

(assert (=> d!85087 m!553375))

(declare-fun m!553525 () Bool)

(assert (=> b!574662 m!553525))

(assert (=> b!574662 m!553525))

(declare-fun m!553527 () Bool)

(assert (=> b!574662 m!553527))

(assert (=> b!574477 d!85087))

(declare-fun e!330655 () SeekEntryResult!5670)

(declare-fun b!574679 () Bool)

(assert (=> b!574679 (= e!330655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262436 #b00000000000000000000000000000000 mask!3119) (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574680 () Bool)

(declare-fun lt!262538 () SeekEntryResult!5670)

(assert (=> b!574680 (and (bvsge (index!24909 lt!262538) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262538) (size!17578 a!3118)))))

(declare-fun res!363433 () Bool)

(assert (=> b!574680 (= res!363433 (= (select (arr!17214 a!3118) (index!24909 lt!262538)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330653 () Bool)

(assert (=> b!574680 (=> res!363433 e!330653)))

(declare-fun b!574681 () Bool)

(declare-fun e!330654 () SeekEntryResult!5670)

(assert (=> b!574681 (= e!330654 (Intermediate!5670 true lt!262436 #b00000000000000000000000000000000))))

(declare-fun b!574682 () Bool)

(assert (=> b!574682 (and (bvsge (index!24909 lt!262538) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262538) (size!17578 a!3118)))))

(declare-fun res!363431 () Bool)

(assert (=> b!574682 (= res!363431 (= (select (arr!17214 a!3118) (index!24909 lt!262538)) (select (arr!17214 a!3118) j!142)))))

(assert (=> b!574682 (=> res!363431 e!330653)))

(declare-fun e!330652 () Bool)

(assert (=> b!574682 (= e!330652 e!330653)))

(declare-fun d!85097 () Bool)

(declare-fun e!330656 () Bool)

(assert (=> d!85097 e!330656))

(declare-fun c!65987 () Bool)

(assert (=> d!85097 (= c!65987 (and (is-Intermediate!5670 lt!262538) (undefined!6482 lt!262538)))))

(assert (=> d!85097 (= lt!262538 e!330654)))

(declare-fun c!65988 () Bool)

(assert (=> d!85097 (= c!65988 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262537 () (_ BitVec 64))

(assert (=> d!85097 (= lt!262537 (select (arr!17214 a!3118) lt!262436))))

(assert (=> d!85097 (validMask!0 mask!3119)))

(assert (=> d!85097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262436 (select (arr!17214 a!3118) j!142) a!3118 mask!3119) lt!262538)))

(declare-fun b!574683 () Bool)

(assert (=> b!574683 (= e!330656 (bvsge (x!53825 lt!262538) #b01111111111111111111111111111110))))

(declare-fun b!574684 () Bool)

(assert (=> b!574684 (= e!330654 e!330655)))

(declare-fun c!65989 () Bool)

(assert (=> b!574684 (= c!65989 (or (= lt!262537 (select (arr!17214 a!3118) j!142)) (= (bvadd lt!262537 lt!262537) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574685 () Bool)

(assert (=> b!574685 (= e!330655 (Intermediate!5670 false lt!262436 #b00000000000000000000000000000000))))

(declare-fun b!574686 () Bool)

(assert (=> b!574686 (and (bvsge (index!24909 lt!262538) #b00000000000000000000000000000000) (bvslt (index!24909 lt!262538) (size!17578 a!3118)))))

(assert (=> b!574686 (= e!330653 (= (select (arr!17214 a!3118) (index!24909 lt!262538)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574687 () Bool)

(assert (=> b!574687 (= e!330656 e!330652)))

(declare-fun res!363432 () Bool)

(assert (=> b!574687 (= res!363432 (and (is-Intermediate!5670 lt!262538) (not (undefined!6482 lt!262538)) (bvslt (x!53825 lt!262538) #b01111111111111111111111111111110) (bvsge (x!53825 lt!262538) #b00000000000000000000000000000000) (bvsge (x!53825 lt!262538) #b00000000000000000000000000000000)))))

(assert (=> b!574687 (=> (not res!363432) (not e!330652))))

(assert (= (and d!85097 c!65988) b!574681))

(assert (= (and d!85097 (not c!65988)) b!574684))

(assert (= (and b!574684 c!65989) b!574685))

(assert (= (and b!574684 (not c!65989)) b!574679))

(assert (= (and d!85097 c!65987) b!574683))

(assert (= (and d!85097 (not c!65987)) b!574687))

(assert (= (and b!574687 res!363432) b!574682))

(assert (= (and b!574682 (not res!363431)) b!574680))

(assert (= (and b!574680 (not res!363433)) b!574686))

(declare-fun m!553529 () Bool)

(assert (=> b!574680 m!553529))

(assert (=> b!574686 m!553529))

(assert (=> b!574682 m!553529))

(declare-fun m!553531 () Bool)

(assert (=> d!85097 m!553531))

(assert (=> d!85097 m!553375))

(declare-fun m!553533 () Bool)

(assert (=> b!574679 m!553533))

(assert (=> b!574679 m!553533))

(assert (=> b!574679 m!553351))

(declare-fun m!553535 () Bool)

(assert (=> b!574679 m!553535))

(assert (=> b!574477 d!85097))

(declare-fun d!85099 () Bool)

(declare-fun lt!262547 () (_ BitVec 32))

(declare-fun lt!262546 () (_ BitVec 32))

(assert (=> d!85099 (= lt!262547 (bvmul (bvxor lt!262546 (bvlshr lt!262546 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85099 (= lt!262546 ((_ extract 31 0) (bvand (bvxor lt!262433 (bvlshr lt!262433 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85099 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363434 (let ((h!12383 ((_ extract 31 0) (bvand (bvxor lt!262433 (bvlshr lt!262433 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53832 (bvmul (bvxor h!12383 (bvlshr h!12383 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53832 (bvlshr x!53832 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363434 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363434 #b00000000000000000000000000000000))))))

(assert (=> d!85099 (= (toIndex!0 lt!262433 mask!3119) (bvand (bvxor lt!262547 (bvlshr lt!262547 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574477 d!85099))

(declare-fun d!85103 () Bool)

(declare-fun lt!262549 () (_ BitVec 32))

(declare-fun lt!262548 () (_ BitVec 32))

(assert (=> d!85103 (= lt!262549 (bvmul (bvxor lt!262548 (bvlshr lt!262548 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85103 (= lt!262548 ((_ extract 31 0) (bvand (bvxor (select (arr!17214 a!3118) j!142) (bvlshr (select (arr!17214 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85103 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363434 (let ((h!12383 ((_ extract 31 0) (bvand (bvxor (select (arr!17214 a!3118) j!142) (bvlshr (select (arr!17214 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53832 (bvmul (bvxor h!12383 (bvlshr h!12383 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53832 (bvlshr x!53832 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363434 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363434 #b00000000000000000000000000000000))))))

(assert (=> d!85103 (= (toIndex!0 (select (arr!17214 a!3118) j!142) mask!3119) (bvand (bvxor lt!262549 (bvlshr lt!262549 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574477 d!85103))

(declare-fun b!574756 () Bool)

(declare-fun e!330699 () SeekEntryResult!5670)

(declare-fun lt!262585 () SeekEntryResult!5670)

(assert (=> b!574756 (= e!330699 (Found!5670 (index!24909 lt!262585)))))

(declare-fun b!574757 () Bool)

(declare-fun e!330700 () SeekEntryResult!5670)

(assert (=> b!574757 (= e!330700 (MissingZero!5670 (index!24909 lt!262585)))))

(declare-fun b!574758 () Bool)

(assert (=> b!574758 (= e!330700 (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262585) (index!24909 lt!262585) (index!24909 lt!262585) k!1914 a!3118 mask!3119))))

(declare-fun b!574759 () Bool)

(declare-fun e!330701 () SeekEntryResult!5670)

(assert (=> b!574759 (= e!330701 Undefined!5670)))

(declare-fun b!574760 () Bool)

(assert (=> b!574760 (= e!330701 e!330699)))

(declare-fun lt!262586 () (_ BitVec 64))

(assert (=> b!574760 (= lt!262586 (select (arr!17214 a!3118) (index!24909 lt!262585)))))

(declare-fun c!66018 () Bool)

(assert (=> b!574760 (= c!66018 (= lt!262586 k!1914))))

(declare-fun b!574761 () Bool)

(declare-fun c!66016 () Bool)

(assert (=> b!574761 (= c!66016 (= lt!262586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574761 (= e!330699 e!330700)))

(declare-fun d!85105 () Bool)

(declare-fun lt!262584 () SeekEntryResult!5670)

(assert (=> d!85105 (and (or (is-Undefined!5670 lt!262584) (not (is-Found!5670 lt!262584)) (and (bvsge (index!24908 lt!262584) #b00000000000000000000000000000000) (bvslt (index!24908 lt!262584) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262584) (is-Found!5670 lt!262584) (not (is-MissingZero!5670 lt!262584)) (and (bvsge (index!24907 lt!262584) #b00000000000000000000000000000000) (bvslt (index!24907 lt!262584) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262584) (is-Found!5670 lt!262584) (is-MissingZero!5670 lt!262584) (not (is-MissingVacant!5670 lt!262584)) (and (bvsge (index!24910 lt!262584) #b00000000000000000000000000000000) (bvslt (index!24910 lt!262584) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262584) (ite (is-Found!5670 lt!262584) (= (select (arr!17214 a!3118) (index!24908 lt!262584)) k!1914) (ite (is-MissingZero!5670 lt!262584) (= (select (arr!17214 a!3118) (index!24907 lt!262584)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5670 lt!262584) (= (select (arr!17214 a!3118) (index!24910 lt!262584)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85105 (= lt!262584 e!330701)))

(declare-fun c!66017 () Bool)

(assert (=> d!85105 (= c!66017 (and (is-Intermediate!5670 lt!262585) (undefined!6482 lt!262585)))))

(assert (=> d!85105 (= lt!262585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85105 (validMask!0 mask!3119)))

(assert (=> d!85105 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!262584)))

(assert (= (and d!85105 c!66017) b!574759))

(assert (= (and d!85105 (not c!66017)) b!574760))

(assert (= (and b!574760 c!66018) b!574756))

(assert (= (and b!574760 (not c!66018)) b!574761))

(assert (= (and b!574761 c!66016) b!574757))

(assert (= (and b!574761 (not c!66016)) b!574758))

(declare-fun m!553573 () Bool)

(assert (=> b!574758 m!553573))

(declare-fun m!553575 () Bool)

(assert (=> b!574760 m!553575))

(declare-fun m!553577 () Bool)

(assert (=> d!85105 m!553577))

(declare-fun m!553579 () Bool)

(assert (=> d!85105 m!553579))

(assert (=> d!85105 m!553375))

(assert (=> d!85105 m!553577))

(declare-fun m!553581 () Bool)

(assert (=> d!85105 m!553581))

(declare-fun m!553583 () Bool)

(assert (=> d!85105 m!553583))

(declare-fun m!553585 () Bool)

(assert (=> d!85105 m!553585))

(assert (=> b!574471 d!85105))

(declare-fun b!574762 () Bool)

(declare-fun e!330702 () SeekEntryResult!5670)

(declare-fun lt!262591 () SeekEntryResult!5670)

(assert (=> b!574762 (= e!330702 (Found!5670 (index!24909 lt!262591)))))

(declare-fun b!574763 () Bool)

(declare-fun e!330703 () SeekEntryResult!5670)

(assert (=> b!574763 (= e!330703 (MissingZero!5670 (index!24909 lt!262591)))))

(declare-fun b!574764 () Bool)

(assert (=> b!574764 (= e!330703 (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262591) (index!24909 lt!262591) (index!24909 lt!262591) (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574765 () Bool)

(declare-fun e!330704 () SeekEntryResult!5670)

(assert (=> b!574765 (= e!330704 Undefined!5670)))

(declare-fun b!574766 () Bool)

(assert (=> b!574766 (= e!330704 e!330702)))

(declare-fun lt!262592 () (_ BitVec 64))

(assert (=> b!574766 (= lt!262592 (select (arr!17214 a!3118) (index!24909 lt!262591)))))

(declare-fun c!66021 () Bool)

(assert (=> b!574766 (= c!66021 (= lt!262592 (select (arr!17214 a!3118) j!142)))))

(declare-fun b!574767 () Bool)

(declare-fun c!66019 () Bool)

(assert (=> b!574767 (= c!66019 (= lt!262592 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574767 (= e!330702 e!330703)))

(declare-fun d!85121 () Bool)

(declare-fun lt!262590 () SeekEntryResult!5670)

(assert (=> d!85121 (and (or (is-Undefined!5670 lt!262590) (not (is-Found!5670 lt!262590)) (and (bvsge (index!24908 lt!262590) #b00000000000000000000000000000000) (bvslt (index!24908 lt!262590) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262590) (is-Found!5670 lt!262590) (not (is-MissingZero!5670 lt!262590)) (and (bvsge (index!24907 lt!262590) #b00000000000000000000000000000000) (bvslt (index!24907 lt!262590) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262590) (is-Found!5670 lt!262590) (is-MissingZero!5670 lt!262590) (not (is-MissingVacant!5670 lt!262590)) (and (bvsge (index!24910 lt!262590) #b00000000000000000000000000000000) (bvslt (index!24910 lt!262590) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262590) (ite (is-Found!5670 lt!262590) (= (select (arr!17214 a!3118) (index!24908 lt!262590)) (select (arr!17214 a!3118) j!142)) (ite (is-MissingZero!5670 lt!262590) (= (select (arr!17214 a!3118) (index!24907 lt!262590)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5670 lt!262590) (= (select (arr!17214 a!3118) (index!24910 lt!262590)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85121 (= lt!262590 e!330704)))

(declare-fun c!66020 () Bool)

(assert (=> d!85121 (= c!66020 (and (is-Intermediate!5670 lt!262591) (undefined!6482 lt!262591)))))

(assert (=> d!85121 (= lt!262591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17214 a!3118) j!142) mask!3119) (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85121 (validMask!0 mask!3119)))

(assert (=> d!85121 (= (seekEntryOrOpen!0 (select (arr!17214 a!3118) j!142) a!3118 mask!3119) lt!262590)))

(assert (= (and d!85121 c!66020) b!574765))

(assert (= (and d!85121 (not c!66020)) b!574766))

(assert (= (and b!574766 c!66021) b!574762))

(assert (= (and b!574766 (not c!66021)) b!574767))

(assert (= (and b!574767 c!66019) b!574763))

(assert (= (and b!574767 (not c!66019)) b!574764))

(assert (=> b!574764 m!553351))

(declare-fun m!553589 () Bool)

(assert (=> b!574764 m!553589))

(declare-fun m!553591 () Bool)

(assert (=> b!574766 m!553591))

(assert (=> d!85121 m!553351))

(assert (=> d!85121 m!553365))

(declare-fun m!553593 () Bool)

(assert (=> d!85121 m!553593))

(assert (=> d!85121 m!553375))

(assert (=> d!85121 m!553365))

(assert (=> d!85121 m!553351))

(declare-fun m!553595 () Bool)

(assert (=> d!85121 m!553595))

(declare-fun m!553597 () Bool)

(assert (=> d!85121 m!553597))

(declare-fun m!553599 () Bool)

(assert (=> d!85121 m!553599))

(assert (=> b!574476 d!85121))

(declare-fun call!32697 () Bool)

(declare-fun bm!32694 () Bool)

(assert (=> bm!32694 (= call!32697 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574824 () Bool)

(declare-fun e!330738 () Bool)

(assert (=> b!574824 (= e!330738 call!32697)))

(declare-fun d!85126 () Bool)

(declare-fun res!363461 () Bool)

(declare-fun e!330740 () Bool)

(assert (=> d!85126 (=> res!363461 e!330740)))

(assert (=> d!85126 (= res!363461 (bvsge j!142 (size!17578 a!3118)))))

(assert (=> d!85126 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330740)))

(declare-fun b!574825 () Bool)

(declare-fun e!330739 () Bool)

(assert (=> b!574825 (= e!330739 e!330738)))

(declare-fun lt!262619 () (_ BitVec 64))

(assert (=> b!574825 (= lt!262619 (select (arr!17214 a!3118) j!142))))

(declare-fun lt!262617 () Unit!18042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35868 (_ BitVec 64) (_ BitVec 32)) Unit!18042)

(assert (=> b!574825 (= lt!262617 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262619 j!142))))

(assert (=> b!574825 (arrayContainsKey!0 a!3118 lt!262619 #b00000000000000000000000000000000)))

(declare-fun lt!262618 () Unit!18042)

(assert (=> b!574825 (= lt!262618 lt!262617)))

(declare-fun res!363462 () Bool)

(assert (=> b!574825 (= res!363462 (= (seekEntryOrOpen!0 (select (arr!17214 a!3118) j!142) a!3118 mask!3119) (Found!5670 j!142)))))

(assert (=> b!574825 (=> (not res!363462) (not e!330738))))

(declare-fun b!574826 () Bool)

(assert (=> b!574826 (= e!330739 call!32697)))

(declare-fun b!574827 () Bool)

(assert (=> b!574827 (= e!330740 e!330739)))

(declare-fun c!66045 () Bool)

(assert (=> b!574827 (= c!66045 (validKeyInArray!0 (select (arr!17214 a!3118) j!142)))))

(assert (= (and d!85126 (not res!363461)) b!574827))

(assert (= (and b!574827 c!66045) b!574825))

(assert (= (and b!574827 (not c!66045)) b!574826))

(assert (= (and b!574825 res!363462) b!574824))

(assert (= (or b!574824 b!574826) bm!32694))

(declare-fun m!553681 () Bool)

(assert (=> bm!32694 m!553681))

(assert (=> b!574825 m!553351))

(declare-fun m!553683 () Bool)

(assert (=> b!574825 m!553683))

(declare-fun m!553685 () Bool)

(assert (=> b!574825 m!553685))

(assert (=> b!574825 m!553351))

(assert (=> b!574825 m!553359))

(assert (=> b!574827 m!553351))

(assert (=> b!574827 m!553351))

(assert (=> b!574827 m!553361))

(assert (=> b!574476 d!85126))

(declare-fun d!85147 () Bool)

(assert (=> d!85147 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262625 () Unit!18042)

(declare-fun choose!38 (array!35868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18042)

(assert (=> d!85147 (= lt!262625 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85147 (validMask!0 mask!3119)))

(assert (=> d!85147 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262625)))

(declare-fun bs!17774 () Bool)

(assert (= bs!17774 d!85147))

(assert (=> bs!17774 m!553353))

(declare-fun m!553701 () Bool)

(assert (=> bs!17774 m!553701))

(assert (=> bs!17774 m!553375))

(assert (=> b!574476 d!85147))

(declare-fun d!85151 () Bool)

(assert (=> d!85151 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52706 d!85151))

(declare-fun d!85157 () Bool)

(assert (=> d!85157 (= (array_inv!12988 a!3118) (bvsge (size!17578 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52706 d!85157))

(declare-fun b!574895 () Bool)

(declare-fun e!330783 () SeekEntryResult!5670)

(assert (=> b!574895 (= e!330783 (Found!5670 (index!24909 lt!262435)))))

(declare-fun b!574896 () Bool)

(declare-fun e!330782 () SeekEntryResult!5670)

(assert (=> b!574896 (= e!330782 (MissingVacant!5670 (index!24909 lt!262435)))))

(declare-fun b!574897 () Bool)

(declare-fun e!330784 () SeekEntryResult!5670)

(assert (=> b!574897 (= e!330784 e!330783)))

(declare-fun lt!262646 () (_ BitVec 64))

(declare-fun c!66070 () Bool)

(assert (=> b!574897 (= c!66070 (= lt!262646 (select (arr!17214 a!3118) j!142)))))

(declare-fun b!574898 () Bool)

(declare-fun c!66068 () Bool)

(assert (=> b!574898 (= c!66068 (= lt!262646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574898 (= e!330783 e!330782)))

(declare-fun b!574900 () Bool)

(assert (=> b!574900 (= e!330784 Undefined!5670)))

(declare-fun d!85159 () Bool)

(declare-fun lt!262647 () SeekEntryResult!5670)

(assert (=> d!85159 (and (or (is-Undefined!5670 lt!262647) (not (is-Found!5670 lt!262647)) (and (bvsge (index!24908 lt!262647) #b00000000000000000000000000000000) (bvslt (index!24908 lt!262647) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262647) (is-Found!5670 lt!262647) (not (is-MissingVacant!5670 lt!262647)) (not (= (index!24910 lt!262647) (index!24909 lt!262435))) (and (bvsge (index!24910 lt!262647) #b00000000000000000000000000000000) (bvslt (index!24910 lt!262647) (size!17578 a!3118)))) (or (is-Undefined!5670 lt!262647) (ite (is-Found!5670 lt!262647) (= (select (arr!17214 a!3118) (index!24908 lt!262647)) (select (arr!17214 a!3118) j!142)) (and (is-MissingVacant!5670 lt!262647) (= (index!24910 lt!262647) (index!24909 lt!262435)) (= (select (arr!17214 a!3118) (index!24910 lt!262647)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85159 (= lt!262647 e!330784)))

(declare-fun c!66069 () Bool)

(assert (=> d!85159 (= c!66069 (bvsge (x!53825 lt!262435) #b01111111111111111111111111111110))))

(assert (=> d!85159 (= lt!262646 (select (arr!17214 a!3118) (index!24909 lt!262435)))))

(assert (=> d!85159 (validMask!0 mask!3119)))

(assert (=> d!85159 (= (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262435) (index!24909 lt!262435) (index!24909 lt!262435) (select (arr!17214 a!3118) j!142) a!3118 mask!3119) lt!262647)))

(declare-fun b!574899 () Bool)

(assert (=> b!574899 (= e!330782 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53825 lt!262435) #b00000000000000000000000000000001) (nextIndex!0 (index!24909 lt!262435) (x!53825 lt!262435) mask!3119) (index!24909 lt!262435) (select (arr!17214 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!85159 c!66069) b!574900))

(assert (= (and d!85159 (not c!66069)) b!574897))

(assert (= (and b!574897 c!66070) b!574895))

(assert (= (and b!574897 (not c!66070)) b!574898))

(assert (= (and b!574898 c!66068) b!574896))

(assert (= (and b!574898 (not c!66068)) b!574899))

(declare-fun m!553719 () Bool)

(assert (=> d!85159 m!553719))

(declare-fun m!553721 () Bool)

(assert (=> d!85159 m!553721))

(assert (=> d!85159 m!553347))

(assert (=> d!85159 m!553375))

(declare-fun m!553723 () Bool)

(assert (=> b!574899 m!553723))

(assert (=> b!574899 m!553723))

(assert (=> b!574899 m!553351))

(declare-fun m!553725 () Bool)

(assert (=> b!574899 m!553725))

(assert (=> b!574469 d!85159))

(declare-fun b!574901 () Bool)

(declare-fun e!330785 () SeekEntryResult!5670)

(declare-fun lt!262649 () SeekEntryResult!5670)

(assert (=> b!574901 (= e!330785 (Found!5670 (index!24909 lt!262649)))))

(declare-fun b!574902 () Bool)

(declare-fun e!330786 () SeekEntryResult!5670)

(assert (=> b!574902 (= e!330786 (MissingZero!5670 (index!24909 lt!262649)))))

(declare-fun b!574903 () Bool)

(assert (=> b!574903 (= e!330786 (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262649) (index!24909 lt!262649) (index!24909 lt!262649) lt!262433 lt!262437 mask!3119))))

(declare-fun b!574904 () Bool)

(declare-fun e!330787 () SeekEntryResult!5670)

(assert (=> b!574904 (= e!330787 Undefined!5670)))

(declare-fun b!574905 () Bool)

(assert (=> b!574905 (= e!330787 e!330785)))

(declare-fun lt!262650 () (_ BitVec 64))

(assert (=> b!574905 (= lt!262650 (select (arr!17214 lt!262437) (index!24909 lt!262649)))))

(declare-fun c!66073 () Bool)

(assert (=> b!574905 (= c!66073 (= lt!262650 lt!262433))))

(declare-fun b!574906 () Bool)

(declare-fun c!66071 () Bool)

(assert (=> b!574906 (= c!66071 (= lt!262650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574906 (= e!330785 e!330786)))

(declare-fun d!85163 () Bool)

(declare-fun lt!262648 () SeekEntryResult!5670)

(assert (=> d!85163 (and (or (is-Undefined!5670 lt!262648) (not (is-Found!5670 lt!262648)) (and (bvsge (index!24908 lt!262648) #b00000000000000000000000000000000) (bvslt (index!24908 lt!262648) (size!17578 lt!262437)))) (or (is-Undefined!5670 lt!262648) (is-Found!5670 lt!262648) (not (is-MissingZero!5670 lt!262648)) (and (bvsge (index!24907 lt!262648) #b00000000000000000000000000000000) (bvslt (index!24907 lt!262648) (size!17578 lt!262437)))) (or (is-Undefined!5670 lt!262648) (is-Found!5670 lt!262648) (is-MissingZero!5670 lt!262648) (not (is-MissingVacant!5670 lt!262648)) (and (bvsge (index!24910 lt!262648) #b00000000000000000000000000000000) (bvslt (index!24910 lt!262648) (size!17578 lt!262437)))) (or (is-Undefined!5670 lt!262648) (ite (is-Found!5670 lt!262648) (= (select (arr!17214 lt!262437) (index!24908 lt!262648)) lt!262433) (ite (is-MissingZero!5670 lt!262648) (= (select (arr!17214 lt!262437) (index!24907 lt!262648)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5670 lt!262648) (= (select (arr!17214 lt!262437) (index!24910 lt!262648)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85163 (= lt!262648 e!330787)))

(declare-fun c!66072 () Bool)

(assert (=> d!85163 (= c!66072 (and (is-Intermediate!5670 lt!262649) (undefined!6482 lt!262649)))))

(assert (=> d!85163 (= lt!262649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262433 mask!3119) lt!262433 lt!262437 mask!3119))))

(assert (=> d!85163 (validMask!0 mask!3119)))

(assert (=> d!85163 (= (seekEntryOrOpen!0 lt!262433 lt!262437 mask!3119) lt!262648)))

(assert (= (and d!85163 c!66072) b!574904))

(assert (= (and d!85163 (not c!66072)) b!574905))

(assert (= (and b!574905 c!66073) b!574901))

(assert (= (and b!574905 (not c!66073)) b!574906))

(assert (= (and b!574906 c!66071) b!574902))

(assert (= (and b!574906 (not c!66071)) b!574903))

(declare-fun m!553727 () Bool)

(assert (=> b!574903 m!553727))

(declare-fun m!553729 () Bool)

(assert (=> b!574905 m!553729))

(assert (=> d!85163 m!553373))

(declare-fun m!553731 () Bool)

(assert (=> d!85163 m!553731))

(assert (=> d!85163 m!553375))

(assert (=> d!85163 m!553373))

(declare-fun m!553733 () Bool)

(assert (=> d!85163 m!553733))

(declare-fun m!553735 () Bool)

(assert (=> d!85163 m!553735))

(declare-fun m!553737 () Bool)

(assert (=> d!85163 m!553737))

(assert (=> b!574474 d!85163))

(declare-fun b!574907 () Bool)

(declare-fun e!330789 () SeekEntryResult!5670)

(assert (=> b!574907 (= e!330789 (Found!5670 (index!24909 lt!262435)))))

(declare-fun b!574908 () Bool)

(declare-fun e!330788 () SeekEntryResult!5670)

(assert (=> b!574908 (= e!330788 (MissingVacant!5670 (index!24909 lt!262435)))))

(declare-fun b!574909 () Bool)

(declare-fun e!330790 () SeekEntryResult!5670)

(assert (=> b!574909 (= e!330790 e!330789)))

(declare-fun c!66076 () Bool)

(declare-fun lt!262651 () (_ BitVec 64))

(assert (=> b!574909 (= c!66076 (= lt!262651 lt!262433))))

(declare-fun b!574910 () Bool)

(declare-fun c!66074 () Bool)

(assert (=> b!574910 (= c!66074 (= lt!262651 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574910 (= e!330789 e!330788)))

(declare-fun b!574912 () Bool)

(assert (=> b!574912 (= e!330790 Undefined!5670)))

(declare-fun lt!262652 () SeekEntryResult!5670)

(declare-fun d!85165 () Bool)

(assert (=> d!85165 (and (or (is-Undefined!5670 lt!262652) (not (is-Found!5670 lt!262652)) (and (bvsge (index!24908 lt!262652) #b00000000000000000000000000000000) (bvslt (index!24908 lt!262652) (size!17578 lt!262437)))) (or (is-Undefined!5670 lt!262652) (is-Found!5670 lt!262652) (not (is-MissingVacant!5670 lt!262652)) (not (= (index!24910 lt!262652) (index!24909 lt!262435))) (and (bvsge (index!24910 lt!262652) #b00000000000000000000000000000000) (bvslt (index!24910 lt!262652) (size!17578 lt!262437)))) (or (is-Undefined!5670 lt!262652) (ite (is-Found!5670 lt!262652) (= (select (arr!17214 lt!262437) (index!24908 lt!262652)) lt!262433) (and (is-MissingVacant!5670 lt!262652) (= (index!24910 lt!262652) (index!24909 lt!262435)) (= (select (arr!17214 lt!262437) (index!24910 lt!262652)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85165 (= lt!262652 e!330790)))

(declare-fun c!66075 () Bool)

(assert (=> d!85165 (= c!66075 (bvsge (x!53825 lt!262435) #b01111111111111111111111111111110))))

(assert (=> d!85165 (= lt!262651 (select (arr!17214 lt!262437) (index!24909 lt!262435)))))

(assert (=> d!85165 (validMask!0 mask!3119)))

(assert (=> d!85165 (= (seekKeyOrZeroReturnVacant!0 (x!53825 lt!262435) (index!24909 lt!262435) (index!24909 lt!262435) lt!262433 lt!262437 mask!3119) lt!262652)))

(declare-fun b!574911 () Bool)

(assert (=> b!574911 (= e!330788 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53825 lt!262435) #b00000000000000000000000000000001) (nextIndex!0 (index!24909 lt!262435) (x!53825 lt!262435) mask!3119) (index!24909 lt!262435) lt!262433 lt!262437 mask!3119))))

(assert (= (and d!85165 c!66075) b!574912))

(assert (= (and d!85165 (not c!66075)) b!574909))

(assert (= (and b!574909 c!66076) b!574907))

(assert (= (and b!574909 (not c!66076)) b!574910))

(assert (= (and b!574910 c!66074) b!574908))

(assert (= (and b!574910 (not c!66074)) b!574911))

(declare-fun m!553739 () Bool)

(assert (=> d!85165 m!553739))

(declare-fun m!553741 () Bool)

(assert (=> d!85165 m!553741))

(declare-fun m!553743 () Bool)

(assert (=> d!85165 m!553743))

(assert (=> d!85165 m!553375))

(assert (=> b!574911 m!553723))

(assert (=> b!574911 m!553723))

(declare-fun m!553745 () Bool)

(assert (=> b!574911 m!553745))

(assert (=> b!574474 d!85165))

(declare-fun d!85167 () Bool)

(assert (=> d!85167 (= (validKeyInArray!0 (select (arr!17214 a!3118) j!142)) (and (not (= (select (arr!17214 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17214 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574468 d!85167))

(declare-fun bm!32699 () Bool)

(declare-fun call!32702 () Bool)

(assert (=> bm!32699 (= call!32702 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574913 () Bool)

(declare-fun e!330791 () Bool)

(assert (=> b!574913 (= e!330791 call!32702)))

(declare-fun d!85169 () Bool)

(declare-fun res!363487 () Bool)

(declare-fun e!330793 () Bool)

(assert (=> d!85169 (=> res!363487 e!330793)))

(assert (=> d!85169 (= res!363487 (bvsge #b00000000000000000000000000000000 (size!17578 a!3118)))))

(assert (=> d!85169 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330793)))

(declare-fun b!574914 () Bool)

(declare-fun e!330792 () Bool)

(assert (=> b!574914 (= e!330792 e!330791)))

(declare-fun lt!262655 () (_ BitVec 64))

(assert (=> b!574914 (= lt!262655 (select (arr!17214 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262653 () Unit!18042)

(assert (=> b!574914 (= lt!262653 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262655 #b00000000000000000000000000000000))))

(assert (=> b!574914 (arrayContainsKey!0 a!3118 lt!262655 #b00000000000000000000000000000000)))

(declare-fun lt!262654 () Unit!18042)

(assert (=> b!574914 (= lt!262654 lt!262653)))

(declare-fun res!363488 () Bool)

(assert (=> b!574914 (= res!363488 (= (seekEntryOrOpen!0 (select (arr!17214 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5670 #b00000000000000000000000000000000)))))

(assert (=> b!574914 (=> (not res!363488) (not e!330791))))

(declare-fun b!574915 () Bool)

(assert (=> b!574915 (= e!330792 call!32702)))

(declare-fun b!574916 () Bool)

(assert (=> b!574916 (= e!330793 e!330792)))

(declare-fun c!66077 () Bool)

(assert (=> b!574916 (= c!66077 (validKeyInArray!0 (select (arr!17214 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!85169 (not res!363487)) b!574916))

(assert (= (and b!574916 c!66077) b!574914))

(assert (= (and b!574916 (not c!66077)) b!574915))

(assert (= (and b!574914 res!363488) b!574913))

(assert (= (or b!574913 b!574915) bm!32699))

(declare-fun m!553747 () Bool)

(assert (=> bm!32699 m!553747))

(declare-fun m!553749 () Bool)

(assert (=> b!574914 m!553749))

(declare-fun m!553751 () Bool)

(assert (=> b!574914 m!553751))

(declare-fun m!553753 () Bool)

(assert (=> b!574914 m!553753))

(assert (=> b!574914 m!553749))

(declare-fun m!553755 () Bool)

(assert (=> b!574914 m!553755))

(assert (=> b!574916 m!553749))

(assert (=> b!574916 m!553749))

(declare-fun m!553757 () Bool)

(assert (=> b!574916 m!553757))

(assert (=> b!574473 d!85169))

(declare-fun d!85171 () Bool)

(declare-fun res!363493 () Bool)

(declare-fun e!330798 () Bool)

(assert (=> d!85171 (=> res!363493 e!330798)))

(assert (=> d!85171 (= res!363493 (= (select (arr!17214 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85171 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!330798)))

(declare-fun b!574921 () Bool)

(declare-fun e!330799 () Bool)

(assert (=> b!574921 (= e!330798 e!330799)))

(declare-fun res!363494 () Bool)

(assert (=> b!574921 (=> (not res!363494) (not e!330799))))

(assert (=> b!574921 (= res!363494 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17578 a!3118)))))

(declare-fun b!574922 () Bool)

(assert (=> b!574922 (= e!330799 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85171 (not res!363493)) b!574921))

(assert (= (and b!574921 res!363494) b!574922))

(assert (=> d!85171 m!553749))

(declare-fun m!553759 () Bool)

(assert (=> b!574922 m!553759))

(assert (=> b!574478 d!85171))

(declare-fun b!574933 () Bool)

