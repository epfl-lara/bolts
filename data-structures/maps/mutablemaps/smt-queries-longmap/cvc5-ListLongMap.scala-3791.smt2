; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51938 () Bool)

(assert start!51938)

(declare-fun b!567398 () Bool)

(declare-fun e!326478 () Bool)

(declare-fun e!326476 () Bool)

(assert (=> b!567398 (= e!326478 (not e!326476))))

(declare-fun res!358133 () Bool)

(assert (=> b!567398 (=> res!358133 e!326476)))

(declare-datatypes ((SeekEntryResult!5541 0))(
  ( (MissingZero!5541 (index!24391 (_ BitVec 32))) (Found!5541 (index!24392 (_ BitVec 32))) (Intermediate!5541 (undefined!6353 Bool) (index!24393 (_ BitVec 32)) (x!53289 (_ BitVec 32))) (Undefined!5541) (MissingVacant!5541 (index!24394 (_ BitVec 32))) )
))
(declare-fun lt!258524 () SeekEntryResult!5541)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35586 0))(
  ( (array!35587 (arr!17085 (Array (_ BitVec 32) (_ BitVec 64))) (size!17449 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35586)

(assert (=> b!567398 (= res!358133 (or (undefined!6353 lt!258524) (not (is-Intermediate!5541 lt!258524)) (not (= (select (arr!17085 a!3118) (index!24393 lt!258524)) (select (arr!17085 a!3118) j!142)))))))

(declare-fun lt!258521 () SeekEntryResult!5541)

(assert (=> b!567398 (= lt!258521 (Found!5541 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35586 (_ BitVec 32)) SeekEntryResult!5541)

(assert (=> b!567398 (= lt!258521 (seekEntryOrOpen!0 (select (arr!17085 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35586 (_ BitVec 32)) Bool)

(assert (=> b!567398 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17784 0))(
  ( (Unit!17785) )
))
(declare-fun lt!258523 () Unit!17784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17784)

(assert (=> b!567398 (= lt!258523 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567399 () Bool)

(declare-fun res!358142 () Bool)

(declare-fun e!326477 () Bool)

(assert (=> b!567399 (=> (not res!358142) (not e!326477))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567399 (= res!358142 (validKeyInArray!0 k!1914))))

(declare-fun b!567400 () Bool)

(declare-fun res!358140 () Bool)

(assert (=> b!567400 (=> (not res!358140) (not e!326477))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567400 (= res!358140 (and (= (size!17449 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17449 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17449 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567401 () Bool)

(declare-fun res!358139 () Bool)

(declare-fun e!326479 () Bool)

(assert (=> b!567401 (=> (not res!358139) (not e!326479))))

(declare-datatypes ((List!11218 0))(
  ( (Nil!11215) (Cons!11214 (h!12226 (_ BitVec 64)) (t!17454 List!11218)) )
))
(declare-fun arrayNoDuplicates!0 (array!35586 (_ BitVec 32) List!11218) Bool)

(assert (=> b!567401 (= res!358139 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11215))))

(declare-fun b!567402 () Bool)

(assert (=> b!567402 (= e!326479 e!326478)))

(declare-fun res!358141 () Bool)

(assert (=> b!567402 (=> (not res!358141) (not e!326478))))

(declare-fun lt!258522 () (_ BitVec 32))

(declare-fun lt!258520 () (_ BitVec 64))

(declare-fun lt!258525 () array!35586)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35586 (_ BitVec 32)) SeekEntryResult!5541)

(assert (=> b!567402 (= res!358141 (= lt!258524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258522 lt!258520 lt!258525 mask!3119)))))

(declare-fun lt!258526 () (_ BitVec 32))

(assert (=> b!567402 (= lt!258524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258526 (select (arr!17085 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567402 (= lt!258522 (toIndex!0 lt!258520 mask!3119))))

(assert (=> b!567402 (= lt!258520 (select (store (arr!17085 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!567402 (= lt!258526 (toIndex!0 (select (arr!17085 a!3118) j!142) mask!3119))))

(assert (=> b!567402 (= lt!258525 (array!35587 (store (arr!17085 a!3118) i!1132 k!1914) (size!17449 a!3118)))))

(declare-fun res!358136 () Bool)

(assert (=> start!51938 (=> (not res!358136) (not e!326477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51938 (= res!358136 (validMask!0 mask!3119))))

(assert (=> start!51938 e!326477))

(assert (=> start!51938 true))

(declare-fun array_inv!12859 (array!35586) Bool)

(assert (=> start!51938 (array_inv!12859 a!3118)))

(declare-fun b!567403 () Bool)

(declare-fun res!358135 () Bool)

(assert (=> b!567403 (=> (not res!358135) (not e!326477))))

(assert (=> b!567403 (= res!358135 (validKeyInArray!0 (select (arr!17085 a!3118) j!142)))))

(declare-fun b!567404 () Bool)

(assert (=> b!567404 (= e!326477 e!326479)))

(declare-fun res!358138 () Bool)

(assert (=> b!567404 (=> (not res!358138) (not e!326479))))

(declare-fun lt!258527 () SeekEntryResult!5541)

(assert (=> b!567404 (= res!358138 (or (= lt!258527 (MissingZero!5541 i!1132)) (= lt!258527 (MissingVacant!5541 i!1132))))))

(assert (=> b!567404 (= lt!258527 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567405 () Bool)

(declare-fun res!358134 () Bool)

(assert (=> b!567405 (=> (not res!358134) (not e!326477))))

(declare-fun arrayContainsKey!0 (array!35586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567405 (= res!358134 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567406 () Bool)

(assert (=> b!567406 (= e!326476 (= lt!258521 (seekEntryOrOpen!0 lt!258520 lt!258525 mask!3119)))))

(declare-fun b!567407 () Bool)

(declare-fun res!358137 () Bool)

(assert (=> b!567407 (=> (not res!358137) (not e!326479))))

(assert (=> b!567407 (= res!358137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51938 res!358136) b!567400))

(assert (= (and b!567400 res!358140) b!567403))

(assert (= (and b!567403 res!358135) b!567399))

(assert (= (and b!567399 res!358142) b!567405))

(assert (= (and b!567405 res!358134) b!567404))

(assert (= (and b!567404 res!358138) b!567407))

(assert (= (and b!567407 res!358137) b!567401))

(assert (= (and b!567401 res!358139) b!567402))

(assert (= (and b!567402 res!358141) b!567398))

(assert (= (and b!567398 (not res!358133)) b!567406))

(declare-fun m!546055 () Bool)

(assert (=> b!567406 m!546055))

(declare-fun m!546057 () Bool)

(assert (=> b!567404 m!546057))

(declare-fun m!546059 () Bool)

(assert (=> b!567401 m!546059))

(declare-fun m!546061 () Bool)

(assert (=> b!567399 m!546061))

(declare-fun m!546063 () Bool)

(assert (=> b!567407 m!546063))

(declare-fun m!546065 () Bool)

(assert (=> b!567405 m!546065))

(declare-fun m!546067 () Bool)

(assert (=> b!567403 m!546067))

(assert (=> b!567403 m!546067))

(declare-fun m!546069 () Bool)

(assert (=> b!567403 m!546069))

(assert (=> b!567398 m!546067))

(declare-fun m!546071 () Bool)

(assert (=> b!567398 m!546071))

(assert (=> b!567398 m!546067))

(declare-fun m!546073 () Bool)

(assert (=> b!567398 m!546073))

(declare-fun m!546075 () Bool)

(assert (=> b!567398 m!546075))

(declare-fun m!546077 () Bool)

(assert (=> b!567398 m!546077))

(declare-fun m!546079 () Bool)

(assert (=> b!567402 m!546079))

(assert (=> b!567402 m!546067))

(declare-fun m!546081 () Bool)

(assert (=> b!567402 m!546081))

(declare-fun m!546083 () Bool)

(assert (=> b!567402 m!546083))

(declare-fun m!546085 () Bool)

(assert (=> b!567402 m!546085))

(assert (=> b!567402 m!546067))

(declare-fun m!546087 () Bool)

(assert (=> b!567402 m!546087))

(assert (=> b!567402 m!546067))

(declare-fun m!546089 () Bool)

(assert (=> b!567402 m!546089))

(declare-fun m!546091 () Bool)

(assert (=> start!51938 m!546091))

(declare-fun m!546093 () Bool)

(assert (=> start!51938 m!546093))

(push 1)

(assert (not start!51938))

(assert (not b!567405))

(assert (not b!567404))

(assert (not b!567403))

(assert (not b!567398))

(assert (not b!567402))

(assert (not b!567399))

(assert (not b!567406))

(assert (not b!567407))

(assert (not b!567401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!567516 () Bool)

(declare-fun e!326542 () Bool)

(declare-fun lt!258601 () SeekEntryResult!5541)

(assert (=> b!567516 (= e!326542 (bvsge (x!53289 lt!258601) #b01111111111111111111111111111110))))

(declare-fun d!84183 () Bool)

(assert (=> d!84183 e!326542))

(declare-fun c!65003 () Bool)

(assert (=> d!84183 (= c!65003 (and (is-Intermediate!5541 lt!258601) (undefined!6353 lt!258601)))))

(declare-fun e!326539 () SeekEntryResult!5541)

(assert (=> d!84183 (= lt!258601 e!326539)))

(declare-fun c!65001 () Bool)

(assert (=> d!84183 (= c!65001 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258602 () (_ BitVec 64))

(assert (=> d!84183 (= lt!258602 (select (arr!17085 lt!258525) lt!258522))))

(assert (=> d!84183 (validMask!0 mask!3119)))

(assert (=> d!84183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258522 lt!258520 lt!258525 mask!3119) lt!258601)))

(declare-fun b!567517 () Bool)

(assert (=> b!567517 (and (bvsge (index!24393 lt!258601) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258601) (size!17449 lt!258525)))))

(declare-fun e!326541 () Bool)

(assert (=> b!567517 (= e!326541 (= (select (arr!17085 lt!258525) (index!24393 lt!258601)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567518 () Bool)

(assert (=> b!567518 (and (bvsge (index!24393 lt!258601) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258601) (size!17449 lt!258525)))))

(declare-fun res!358215 () Bool)

(assert (=> b!567518 (= res!358215 (= (select (arr!17085 lt!258525) (index!24393 lt!258601)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567518 (=> res!358215 e!326541)))

(declare-fun b!567519 () Bool)

(declare-fun e!326540 () SeekEntryResult!5541)

(assert (=> b!567519 (= e!326540 (Intermediate!5541 false lt!258522 #b00000000000000000000000000000000))))

(declare-fun b!567520 () Bool)

(declare-fun e!326538 () Bool)

(assert (=> b!567520 (= e!326542 e!326538)))

(declare-fun res!358217 () Bool)

(assert (=> b!567520 (= res!358217 (and (is-Intermediate!5541 lt!258601) (not (undefined!6353 lt!258601)) (bvslt (x!53289 lt!258601) #b01111111111111111111111111111110) (bvsge (x!53289 lt!258601) #b00000000000000000000000000000000) (bvsge (x!53289 lt!258601) #b00000000000000000000000000000000)))))

(assert (=> b!567520 (=> (not res!358217) (not e!326538))))

(declare-fun b!567521 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567521 (= e!326540 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258522 #b00000000000000000000000000000000 mask!3119) lt!258520 lt!258525 mask!3119))))

(declare-fun b!567522 () Bool)

(assert (=> b!567522 (= e!326539 e!326540)))

(declare-fun c!65002 () Bool)

(assert (=> b!567522 (= c!65002 (or (= lt!258602 lt!258520) (= (bvadd lt!258602 lt!258602) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!567523 () Bool)

(assert (=> b!567523 (and (bvsge (index!24393 lt!258601) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258601) (size!17449 lt!258525)))))

(declare-fun res!358216 () Bool)

(assert (=> b!567523 (= res!358216 (= (select (arr!17085 lt!258525) (index!24393 lt!258601)) lt!258520))))

(assert (=> b!567523 (=> res!358216 e!326541)))

(assert (=> b!567523 (= e!326538 e!326541)))

(declare-fun b!567524 () Bool)

(assert (=> b!567524 (= e!326539 (Intermediate!5541 true lt!258522 #b00000000000000000000000000000000))))

(assert (= (and d!84183 c!65001) b!567524))

(assert (= (and d!84183 (not c!65001)) b!567522))

(assert (= (and b!567522 c!65002) b!567519))

(assert (= (and b!567522 (not c!65002)) b!567521))

(assert (= (and d!84183 c!65003) b!567516))

(assert (= (and d!84183 (not c!65003)) b!567520))

(assert (= (and b!567520 res!358217) b!567523))

(assert (= (and b!567523 (not res!358216)) b!567518))

(assert (= (and b!567518 (not res!358215)) b!567517))

(declare-fun m!546195 () Bool)

(assert (=> b!567523 m!546195))

(declare-fun m!546197 () Bool)

(assert (=> d!84183 m!546197))

(assert (=> d!84183 m!546091))

(assert (=> b!567518 m!546195))

(assert (=> b!567517 m!546195))

(declare-fun m!546199 () Bool)

(assert (=> b!567521 m!546199))

(assert (=> b!567521 m!546199))

(declare-fun m!546201 () Bool)

(assert (=> b!567521 m!546201))

(assert (=> b!567402 d!84183))

(declare-fun b!567525 () Bool)

(declare-fun e!326547 () Bool)

(declare-fun lt!258603 () SeekEntryResult!5541)

(assert (=> b!567525 (= e!326547 (bvsge (x!53289 lt!258603) #b01111111111111111111111111111110))))

(declare-fun d!84195 () Bool)

(assert (=> d!84195 e!326547))

(declare-fun c!65006 () Bool)

(assert (=> d!84195 (= c!65006 (and (is-Intermediate!5541 lt!258603) (undefined!6353 lt!258603)))))

(declare-fun e!326544 () SeekEntryResult!5541)

(assert (=> d!84195 (= lt!258603 e!326544)))

(declare-fun c!65004 () Bool)

(assert (=> d!84195 (= c!65004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258604 () (_ BitVec 64))

(assert (=> d!84195 (= lt!258604 (select (arr!17085 a!3118) lt!258526))))

(assert (=> d!84195 (validMask!0 mask!3119)))

(assert (=> d!84195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258526 (select (arr!17085 a!3118) j!142) a!3118 mask!3119) lt!258603)))

(declare-fun b!567526 () Bool)

(assert (=> b!567526 (and (bvsge (index!24393 lt!258603) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258603) (size!17449 a!3118)))))

(declare-fun e!326546 () Bool)

(assert (=> b!567526 (= e!326546 (= (select (arr!17085 a!3118) (index!24393 lt!258603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!567527 () Bool)

(assert (=> b!567527 (and (bvsge (index!24393 lt!258603) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258603) (size!17449 a!3118)))))

(declare-fun res!358218 () Bool)

(assert (=> b!567527 (= res!358218 (= (select (arr!17085 a!3118) (index!24393 lt!258603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567527 (=> res!358218 e!326546)))

(declare-fun b!567528 () Bool)

(declare-fun e!326545 () SeekEntryResult!5541)

(assert (=> b!567528 (= e!326545 (Intermediate!5541 false lt!258526 #b00000000000000000000000000000000))))

(declare-fun b!567529 () Bool)

(declare-fun e!326543 () Bool)

(assert (=> b!567529 (= e!326547 e!326543)))

(declare-fun res!358220 () Bool)

(assert (=> b!567529 (= res!358220 (and (is-Intermediate!5541 lt!258603) (not (undefined!6353 lt!258603)) (bvslt (x!53289 lt!258603) #b01111111111111111111111111111110) (bvsge (x!53289 lt!258603) #b00000000000000000000000000000000) (bvsge (x!53289 lt!258603) #b00000000000000000000000000000000)))))

(assert (=> b!567529 (=> (not res!358220) (not e!326543))))

(declare-fun b!567530 () Bool)

(assert (=> b!567530 (= e!326545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258526 #b00000000000000000000000000000000 mask!3119) (select (arr!17085 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!567531 () Bool)

(assert (=> b!567531 (= e!326544 e!326545)))

(declare-fun c!65005 () Bool)

(assert (=> b!567531 (= c!65005 (or (= lt!258604 (select (arr!17085 a!3118) j!142)) (= (bvadd lt!258604 lt!258604) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!567532 () Bool)

(assert (=> b!567532 (and (bvsge (index!24393 lt!258603) #b00000000000000000000000000000000) (bvslt (index!24393 lt!258603) (size!17449 a!3118)))))

(declare-fun res!358219 () Bool)

(assert (=> b!567532 (= res!358219 (= (select (arr!17085 a!3118) (index!24393 lt!258603)) (select (arr!17085 a!3118) j!142)))))

(assert (=> b!567532 (=> res!358219 e!326546)))

(assert (=> b!567532 (= e!326543 e!326546)))

(declare-fun b!567533 () Bool)

(assert (=> b!567533 (= e!326544 (Intermediate!5541 true lt!258526 #b00000000000000000000000000000000))))

(assert (= (and d!84195 c!65004) b!567533))

(assert (= (and d!84195 (not c!65004)) b!567531))

(assert (= (and b!567531 c!65005) b!567528))

(assert (= (and b!567531 (not c!65005)) b!567530))

(assert (= (and d!84195 c!65006) b!567525))

(assert (= (and d!84195 (not c!65006)) b!567529))

(assert (= (and b!567529 res!358220) b!567532))

(assert (= (and b!567532 (not res!358219)) b!567527))

(assert (= (and b!567527 (not res!358218)) b!567526))

(declare-fun m!546203 () Bool)

(assert (=> b!567532 m!546203))

(declare-fun m!546205 () Bool)

(assert (=> d!84195 m!546205))

(assert (=> d!84195 m!546091))

(assert (=> b!567527 m!546203))

(assert (=> b!567526 m!546203))

(declare-fun m!546207 () Bool)

(assert (=> b!567530 m!546207))

(assert (=> b!567530 m!546207))

(assert (=> b!567530 m!546067))

(declare-fun m!546209 () Bool)

(assert (=> b!567530 m!546209))

(assert (=> b!567402 d!84195))

(declare-fun d!84197 () Bool)

(declare-fun lt!258610 () (_ BitVec 32))

(declare-fun lt!258609 () (_ BitVec 32))

(assert (=> d!84197 (= lt!258610 (bvmul (bvxor lt!258609 (bvlshr lt!258609 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84197 (= lt!258609 ((_ extract 31 0) (bvand (bvxor lt!258520 (bvlshr lt!258520 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84197 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358221 (let ((h!12229 ((_ extract 31 0) (bvand (bvxor lt!258520 (bvlshr lt!258520 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53293 (bvmul (bvxor h!12229 (bvlshr h!12229 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53293 (bvlshr x!53293 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358221 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358221 #b00000000000000000000000000000000))))))

(assert (=> d!84197 (= (toIndex!0 lt!258520 mask!3119) (bvand (bvxor lt!258610 (bvlshr lt!258610 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567402 d!84197))

(declare-fun d!84199 () Bool)

(declare-fun lt!258612 () (_ BitVec 32))

(declare-fun lt!258611 () (_ BitVec 32))

(assert (=> d!84199 (= lt!258612 (bvmul (bvxor lt!258611 (bvlshr lt!258611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84199 (= lt!258611 ((_ extract 31 0) (bvand (bvxor (select (arr!17085 a!3118) j!142) (bvlshr (select (arr!17085 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84199 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358221 (let ((h!12229 ((_ extract 31 0) (bvand (bvxor (select (arr!17085 a!3118) j!142) (bvlshr (select (arr!17085 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53293 (bvmul (bvxor h!12229 (bvlshr h!12229 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53293 (bvlshr x!53293 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358221 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358221 #b00000000000000000000000000000000))))))

(assert (=> d!84199 (= (toIndex!0 (select (arr!17085 a!3118) j!142) mask!3119) (bvand (bvxor lt!258612 (bvlshr lt!258612 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567402 d!84199))

(declare-fun d!84201 () Bool)

(assert (=> d!84201 (= (validKeyInArray!0 (select (arr!17085 a!3118) j!142)) (and (not (= (select (arr!17085 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17085 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567403 d!84201))

(declare-fun b!567588 () Bool)

(declare-fun c!65032 () Bool)

(declare-fun lt!258636 () (_ BitVec 64))

(assert (=> b!567588 (= c!65032 (= lt!258636 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326578 () SeekEntryResult!5541)

(declare-fun e!326577 () SeekEntryResult!5541)

(assert (=> b!567588 (= e!326578 e!326577)))

(declare-fun b!567589 () Bool)

(declare-fun lt!258637 () SeekEntryResult!5541)

(assert (=> b!567589 (= e!326577 (MissingZero!5541 (index!24393 lt!258637)))))

(declare-fun b!567590 () Bool)

(declare-fun e!326576 () SeekEntryResult!5541)

(assert (=> b!567590 (= e!326576 e!326578)))

(assert (=> b!567590 (= lt!258636 (select (arr!17085 lt!258525) (index!24393 lt!258637)))))

(declare-fun c!65031 () Bool)

(assert (=> b!567590 (= c!65031 (= lt!258636 lt!258520))))

(declare-fun b!567591 () Bool)

(assert (=> b!567591 (= e!326578 (Found!5541 (index!24393 lt!258637)))))

(declare-fun b!567592 () Bool)

(assert (=> b!567592 (= e!326576 Undefined!5541)))

(declare-fun b!567593 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35586 (_ BitVec 32)) SeekEntryResult!5541)

(assert (=> b!567593 (= e!326577 (seekKeyOrZeroReturnVacant!0 (x!53289 lt!258637) (index!24393 lt!258637) (index!24393 lt!258637) lt!258520 lt!258525 mask!3119))))

(declare-fun d!84203 () Bool)

(declare-fun lt!258635 () SeekEntryResult!5541)

(assert (=> d!84203 (and (or (is-Undefined!5541 lt!258635) (not (is-Found!5541 lt!258635)) (and (bvsge (index!24392 lt!258635) #b00000000000000000000000000000000) (bvslt (index!24392 lt!258635) (size!17449 lt!258525)))) (or (is-Undefined!5541 lt!258635) (is-Found!5541 lt!258635) (not (is-MissingZero!5541 lt!258635)) (and (bvsge (index!24391 lt!258635) #b00000000000000000000000000000000) (bvslt (index!24391 lt!258635) (size!17449 lt!258525)))) (or (is-Undefined!5541 lt!258635) (is-Found!5541 lt!258635) (is-MissingZero!5541 lt!258635) (not (is-MissingVacant!5541 lt!258635)) (and (bvsge (index!24394 lt!258635) #b00000000000000000000000000000000) (bvslt (index!24394 lt!258635) (size!17449 lt!258525)))) (or (is-Undefined!5541 lt!258635) (ite (is-Found!5541 lt!258635) (= (select (arr!17085 lt!258525) (index!24392 lt!258635)) lt!258520) (ite (is-MissingZero!5541 lt!258635) (= (select (arr!17085 lt!258525) (index!24391 lt!258635)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5541 lt!258635) (= (select (arr!17085 lt!258525) (index!24394 lt!258635)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84203 (= lt!258635 e!326576)))

(declare-fun c!65033 () Bool)

(assert (=> d!84203 (= c!65033 (and (is-Intermediate!5541 lt!258637) (undefined!6353 lt!258637)))))

(assert (=> d!84203 (= lt!258637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!258520 mask!3119) lt!258520 lt!258525 mask!3119))))

(assert (=> d!84203 (validMask!0 mask!3119)))

(assert (=> d!84203 (= (seekEntryOrOpen!0 lt!258520 lt!258525 mask!3119) lt!258635)))

(assert (= (and d!84203 c!65033) b!567592))

(assert (= (and d!84203 (not c!65033)) b!567590))

(assert (= (and b!567590 c!65031) b!567591))

(assert (= (and b!567590 (not c!65031)) b!567588))

(assert (= (and b!567588 c!65032) b!567589))

(assert (= (and b!567588 (not c!65032)) b!567593))

(declare-fun m!546235 () Bool)

(assert (=> b!567590 m!546235))

(declare-fun m!546237 () Bool)

(assert (=> b!567593 m!546237))

(assert (=> d!84203 m!546079))

(declare-fun m!546239 () Bool)

(assert (=> d!84203 m!546239))

(assert (=> d!84203 m!546079))

(declare-fun m!546241 () Bool)

(assert (=> d!84203 m!546241))

(declare-fun m!546243 () Bool)

(assert (=> d!84203 m!546243))

(assert (=> d!84203 m!546091))

(declare-fun m!546245 () Bool)

(assert (=> d!84203 m!546245))

(assert (=> b!567406 d!84203))

(declare-fun d!84209 () Bool)

(declare-fun res!358245 () Bool)

(declare-fun e!326606 () Bool)

(assert (=> d!84209 (=> res!358245 e!326606)))

(assert (=> d!84209 (= res!358245 (bvsge #b00000000000000000000000000000000 (size!17449 a!3118)))))

(assert (=> d!84209 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11215) e!326606)))

(declare-fun bm!32521 () Bool)

(declare-fun call!32524 () Bool)

(declare-fun c!65044 () Bool)

(assert (=> bm!32521 (= call!32524 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65044 (Cons!11214 (select (arr!17085 a!3118) #b00000000000000000000000000000000) Nil!11215) Nil!11215)))))

(declare-fun b!567630 () Bool)

(declare-fun e!326604 () Bool)

(assert (=> b!567630 (= e!326604 call!32524)))

(declare-fun b!567631 () Bool)

(declare-fun e!326603 () Bool)

(assert (=> b!567631 (= e!326603 e!326604)))

(assert (=> b!567631 (= c!65044 (validKeyInArray!0 (select (arr!17085 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567632 () Bool)

(assert (=> b!567632 (= e!326606 e!326603)))

(declare-fun res!358244 () Bool)

(assert (=> b!567632 (=> (not res!358244) (not e!326603))))

(declare-fun e!326605 () Bool)

(assert (=> b!567632 (= res!358244 (not e!326605))))

(declare-fun res!358246 () Bool)

(assert (=> b!567632 (=> (not res!358246) (not e!326605))))

(assert (=> b!567632 (= res!358246 (validKeyInArray!0 (select (arr!17085 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567633 () Bool)

(declare-fun contains!2874 (List!11218 (_ BitVec 64)) Bool)

(assert (=> b!567633 (= e!326605 (contains!2874 Nil!11215 (select (arr!17085 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567634 () Bool)

(assert (=> b!567634 (= e!326604 call!32524)))

(assert (= (and d!84209 (not res!358245)) b!567632))

(assert (= (and b!567632 res!358246) b!567633))

(assert (= (and b!567632 res!358244) b!567631))

(assert (= (and b!567631 c!65044) b!567634))

(assert (= (and b!567631 (not c!65044)) b!567630))

(assert (= (or b!567634 b!567630) bm!32521))

(declare-fun m!546255 () Bool)

(assert (=> bm!32521 m!546255))

(declare-fun m!546261 () Bool)

(assert (=> bm!32521 m!546261))

(assert (=> b!567631 m!546255))

(assert (=> b!567631 m!546255))

(declare-fun m!546263 () Bool)

(assert (=> b!567631 m!546263))

(assert (=> b!567632 m!546255))

(assert (=> b!567632 m!546255))

(assert (=> b!567632 m!546263))

(assert (=> b!567633 m!546255))

(assert (=> b!567633 m!546255))

(declare-fun m!546267 () Bool)

(assert (=> b!567633 m!546267))

(assert (=> b!567401 d!84209))

(declare-fun b!567653 () Bool)

(declare-fun e!326620 () Bool)

(declare-fun call!32528 () Bool)

(assert (=> b!567653 (= e!326620 call!32528)))

(declare-fun b!567654 () Bool)

(declare-fun e!326621 () Bool)

(assert (=> b!567654 (= e!326621 e!326620)))

(declare-fun lt!258671 () (_ BitVec 64))

(assert (=> b!567654 (= lt!258671 (select (arr!17085 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258672 () Unit!17784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35586 (_ BitVec 64) (_ BitVec 32)) Unit!17784)

(assert (=> b!567654 (= lt!258672 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258671 #b00000000000000000000000000000000))))

(assert (=> b!567654 (arrayContainsKey!0 a!3118 lt!258671 #b00000000000000000000000000000000)))

(declare-fun lt!258673 () Unit!17784)

(assert (=> b!567654 (= lt!258673 lt!258672)))

(declare-fun res!358255 () Bool)

(assert (=> b!567654 (= res!358255 (= (seekEntryOrOpen!0 (select (arr!17085 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5541 #b00000000000000000000000000000000)))))

(assert (=> b!567654 (=> (not res!358255) (not e!326620))))

(declare-fun b!567655 () Bool)

(assert (=> b!567655 (= e!326621 call!32528)))

(declare-fun b!567656 () Bool)

(declare-fun e!326619 () Bool)

(assert (=> b!567656 (= e!326619 e!326621)))

(declare-fun c!65051 () Bool)

(assert (=> b!567656 (= c!65051 (validKeyInArray!0 (select (arr!17085 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84213 () Bool)

(declare-fun res!358254 () Bool)

(assert (=> d!84213 (=> res!358254 e!326619)))

(assert (=> d!84213 (= res!358254 (bvsge #b00000000000000000000000000000000 (size!17449 a!3118)))))

(assert (=> d!84213 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326619)))

(declare-fun bm!32525 () Bool)

(assert (=> bm!32525 (= call!32528 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!84213 (not res!358254)) b!567656))

(assert (= (and b!567656 c!65051) b!567654))

(assert (= (and b!567656 (not c!65051)) b!567655))

(assert (= (and b!567654 res!358255) b!567653))

(assert (= (or b!567653 b!567655) bm!32525))

(assert (=> b!567654 m!546255))

(declare-fun m!546279 () Bool)

(assert (=> b!567654 m!546279))

(declare-fun m!546281 () Bool)

(assert (=> b!567654 m!546281))

(assert (=> b!567654 m!546255))

(declare-fun m!546283 () Bool)

(assert (=> b!567654 m!546283))

(assert (=> b!567656 m!546255))

(assert (=> b!567656 m!546255))

(assert (=> b!567656 m!546263))

(declare-fun m!546289 () Bool)

(assert (=> bm!32525 m!546289))

(assert (=> b!567407 d!84213))

(declare-fun d!84225 () Bool)

(declare-fun res!358266 () Bool)

(declare-fun e!326633 () Bool)

(assert (=> d!84225 (=> res!358266 e!326633)))

(assert (=> d!84225 (= res!358266 (= (select (arr!17085 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84225 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326633)))

(declare-fun b!567669 () Bool)

(declare-fun e!326634 () Bool)

(assert (=> b!567669 (= e!326633 e!326634)))

(declare-fun res!358267 () Bool)

(assert (=> b!567669 (=> (not res!358267) (not e!326634))))

(assert (=> b!567669 (= res!358267 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17449 a!3118)))))

(declare-fun b!567670 () Bool)

(assert (=> b!567670 (= e!326634 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84225 (not res!358266)) b!567669))

(assert (= (and b!567669 res!358267) b!567670))

(assert (=> d!84225 m!546255))

(declare-fun m!546313 () Bool)

(assert (=> b!567670 m!546313))

(assert (=> b!567405 d!84225))

(declare-fun b!567671 () Bool)

(declare-fun c!65054 () Bool)

(declare-fun lt!258678 () (_ BitVec 64))

(assert (=> b!567671 (= c!65054 (= lt!258678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326637 () SeekEntryResult!5541)

(declare-fun e!326636 () SeekEntryResult!5541)

(assert (=> b!567671 (= e!326637 e!326636)))

(declare-fun b!567672 () Bool)

(declare-fun lt!258679 () SeekEntryResult!5541)

(assert (=> b!567672 (= e!326636 (MissingZero!5541 (index!24393 lt!258679)))))

(declare-fun b!567673 () Bool)

(declare-fun e!326635 () SeekEntryResult!5541)

(assert (=> b!567673 (= e!326635 e!326637)))

(assert (=> b!567673 (= lt!258678 (select (arr!17085 a!3118) (index!24393 lt!258679)))))

(declare-fun c!65053 () Bool)

(assert (=> b!567673 (= c!65053 (= lt!258678 (select (arr!17085 a!3118) j!142)))))

(declare-fun b!567674 () Bool)

(assert (=> b!567674 (= e!326637 (Found!5541 (index!24393 lt!258679)))))

(declare-fun b!567675 () Bool)

(assert (=> b!567675 (= e!326635 Undefined!5541)))

(declare-fun b!567676 () Bool)

(assert (=> b!567676 (= e!326636 (seekKeyOrZeroReturnVacant!0 (x!53289 lt!258679) (index!24393 lt!258679) (index!24393 lt!258679) (select (arr!17085 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84231 () Bool)

(declare-fun lt!258677 () SeekEntryResult!5541)

(assert (=> d!84231 (and (or (is-Undefined!5541 lt!258677) (not (is-Found!5541 lt!258677)) (and (bvsge (index!24392 lt!258677) #b00000000000000000000000000000000) (bvslt (index!24392 lt!258677) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258677) (is-Found!5541 lt!258677) (not (is-MissingZero!5541 lt!258677)) (and (bvsge (index!24391 lt!258677) #b00000000000000000000000000000000) (bvslt (index!24391 lt!258677) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258677) (is-Found!5541 lt!258677) (is-MissingZero!5541 lt!258677) (not (is-MissingVacant!5541 lt!258677)) (and (bvsge (index!24394 lt!258677) #b00000000000000000000000000000000) (bvslt (index!24394 lt!258677) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258677) (ite (is-Found!5541 lt!258677) (= (select (arr!17085 a!3118) (index!24392 lt!258677)) (select (arr!17085 a!3118) j!142)) (ite (is-MissingZero!5541 lt!258677) (= (select (arr!17085 a!3118) (index!24391 lt!258677)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5541 lt!258677) (= (select (arr!17085 a!3118) (index!24394 lt!258677)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84231 (= lt!258677 e!326635)))

(declare-fun c!65055 () Bool)

(assert (=> d!84231 (= c!65055 (and (is-Intermediate!5541 lt!258679) (undefined!6353 lt!258679)))))

(assert (=> d!84231 (= lt!258679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17085 a!3118) j!142) mask!3119) (select (arr!17085 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84231 (validMask!0 mask!3119)))

(assert (=> d!84231 (= (seekEntryOrOpen!0 (select (arr!17085 a!3118) j!142) a!3118 mask!3119) lt!258677)))

(assert (= (and d!84231 c!65055) b!567675))

(assert (= (and d!84231 (not c!65055)) b!567673))

(assert (= (and b!567673 c!65053) b!567674))

(assert (= (and b!567673 (not c!65053)) b!567671))

(assert (= (and b!567671 c!65054) b!567672))

(assert (= (and b!567671 (not c!65054)) b!567676))

(declare-fun m!546315 () Bool)

(assert (=> b!567673 m!546315))

(assert (=> b!567676 m!546067))

(declare-fun m!546319 () Bool)

(assert (=> b!567676 m!546319))

(assert (=> d!84231 m!546087))

(assert (=> d!84231 m!546067))

(declare-fun m!546323 () Bool)

(assert (=> d!84231 m!546323))

(assert (=> d!84231 m!546067))

(assert (=> d!84231 m!546087))

(declare-fun m!546325 () Bool)

(assert (=> d!84231 m!546325))

(declare-fun m!546327 () Bool)

(assert (=> d!84231 m!546327))

(assert (=> d!84231 m!546091))

(declare-fun m!546329 () Bool)

(assert (=> d!84231 m!546329))

(assert (=> b!567398 d!84231))

(declare-fun b!567681 () Bool)

(declare-fun e!326643 () Bool)

(declare-fun call!32530 () Bool)

(assert (=> b!567681 (= e!326643 call!32530)))

(declare-fun b!567682 () Bool)

(declare-fun e!326644 () Bool)

(assert (=> b!567682 (= e!326644 e!326643)))

(declare-fun lt!258680 () (_ BitVec 64))

(assert (=> b!567682 (= lt!258680 (select (arr!17085 a!3118) j!142))))

(declare-fun lt!258681 () Unit!17784)

(assert (=> b!567682 (= lt!258681 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258680 j!142))))

(assert (=> b!567682 (arrayContainsKey!0 a!3118 lt!258680 #b00000000000000000000000000000000)))

(declare-fun lt!258682 () Unit!17784)

(assert (=> b!567682 (= lt!258682 lt!258681)))

(declare-fun res!358273 () Bool)

(assert (=> b!567682 (= res!358273 (= (seekEntryOrOpen!0 (select (arr!17085 a!3118) j!142) a!3118 mask!3119) (Found!5541 j!142)))))

(assert (=> b!567682 (=> (not res!358273) (not e!326643))))

(declare-fun b!567683 () Bool)

(assert (=> b!567683 (= e!326644 call!32530)))

(declare-fun b!567684 () Bool)

(declare-fun e!326642 () Bool)

(assert (=> b!567684 (= e!326642 e!326644)))

(declare-fun c!65056 () Bool)

(assert (=> b!567684 (= c!65056 (validKeyInArray!0 (select (arr!17085 a!3118) j!142)))))

(declare-fun d!84235 () Bool)

(declare-fun res!358272 () Bool)

(assert (=> d!84235 (=> res!358272 e!326642)))

(assert (=> d!84235 (= res!358272 (bvsge j!142 (size!17449 a!3118)))))

(assert (=> d!84235 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326642)))

(declare-fun bm!32527 () Bool)

(assert (=> bm!32527 (= call!32530 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!84235 (not res!358272)) b!567684))

(assert (= (and b!567684 c!65056) b!567682))

(assert (= (and b!567684 (not c!65056)) b!567683))

(assert (= (and b!567682 res!358273) b!567681))

(assert (= (or b!567681 b!567683) bm!32527))

(assert (=> b!567682 m!546067))

(declare-fun m!546331 () Bool)

(assert (=> b!567682 m!546331))

(declare-fun m!546333 () Bool)

(assert (=> b!567682 m!546333))

(assert (=> b!567682 m!546067))

(assert (=> b!567682 m!546073))

(assert (=> b!567684 m!546067))

(assert (=> b!567684 m!546067))

(assert (=> b!567684 m!546069))

(declare-fun m!546335 () Bool)

(assert (=> bm!32527 m!546335))

(assert (=> b!567398 d!84235))

(declare-fun d!84237 () Bool)

(assert (=> d!84237 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258685 () Unit!17784)

(declare-fun choose!38 (array!35586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17784)

(assert (=> d!84237 (= lt!258685 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84237 (validMask!0 mask!3119)))

(assert (=> d!84237 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258685)))

(declare-fun bs!17621 () Bool)

(assert (= bs!17621 d!84237))

(assert (=> bs!17621 m!546077))

(declare-fun m!546339 () Bool)

(assert (=> bs!17621 m!546339))

(assert (=> bs!17621 m!546091))

(assert (=> b!567398 d!84237))

(declare-fun b!567699 () Bool)

(declare-fun c!65060 () Bool)

(declare-fun lt!258687 () (_ BitVec 64))

(assert (=> b!567699 (= c!65060 (= lt!258687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326659 () SeekEntryResult!5541)

(declare-fun e!326658 () SeekEntryResult!5541)

(assert (=> b!567699 (= e!326659 e!326658)))

(declare-fun b!567700 () Bool)

(declare-fun lt!258688 () SeekEntryResult!5541)

(assert (=> b!567700 (= e!326658 (MissingZero!5541 (index!24393 lt!258688)))))

(declare-fun b!567701 () Bool)

(declare-fun e!326657 () SeekEntryResult!5541)

(assert (=> b!567701 (= e!326657 e!326659)))

(assert (=> b!567701 (= lt!258687 (select (arr!17085 a!3118) (index!24393 lt!258688)))))

(declare-fun c!65059 () Bool)

(assert (=> b!567701 (= c!65059 (= lt!258687 k!1914))))

(declare-fun b!567702 () Bool)

(assert (=> b!567702 (= e!326659 (Found!5541 (index!24393 lt!258688)))))

(declare-fun b!567703 () Bool)

(assert (=> b!567703 (= e!326657 Undefined!5541)))

(declare-fun b!567704 () Bool)

(assert (=> b!567704 (= e!326658 (seekKeyOrZeroReturnVacant!0 (x!53289 lt!258688) (index!24393 lt!258688) (index!24393 lt!258688) k!1914 a!3118 mask!3119))))

(declare-fun d!84241 () Bool)

(declare-fun lt!258686 () SeekEntryResult!5541)

(assert (=> d!84241 (and (or (is-Undefined!5541 lt!258686) (not (is-Found!5541 lt!258686)) (and (bvsge (index!24392 lt!258686) #b00000000000000000000000000000000) (bvslt (index!24392 lt!258686) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258686) (is-Found!5541 lt!258686) (not (is-MissingZero!5541 lt!258686)) (and (bvsge (index!24391 lt!258686) #b00000000000000000000000000000000) (bvslt (index!24391 lt!258686) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258686) (is-Found!5541 lt!258686) (is-MissingZero!5541 lt!258686) (not (is-MissingVacant!5541 lt!258686)) (and (bvsge (index!24394 lt!258686) #b00000000000000000000000000000000) (bvslt (index!24394 lt!258686) (size!17449 a!3118)))) (or (is-Undefined!5541 lt!258686) (ite (is-Found!5541 lt!258686) (= (select (arr!17085 a!3118) (index!24392 lt!258686)) k!1914) (ite (is-MissingZero!5541 lt!258686) (= (select (arr!17085 a!3118) (index!24391 lt!258686)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5541 lt!258686) (= (select (arr!17085 a!3118) (index!24394 lt!258686)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84241 (= lt!258686 e!326657)))

(declare-fun c!65061 () Bool)

(assert (=> d!84241 (= c!65061 (and (is-Intermediate!5541 lt!258688) (undefined!6353 lt!258688)))))

(assert (=> d!84241 (= lt!258688 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84241 (validMask!0 mask!3119)))

(assert (=> d!84241 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258686)))

(assert (= (and d!84241 c!65061) b!567703))

(assert (= (and d!84241 (not c!65061)) b!567701))

(assert (= (and b!567701 c!65059) b!567702))

(assert (= (and b!567701 (not c!65059)) b!567699))

(assert (= (and b!567699 c!65060) b!567700))

(assert (= (and b!567699 (not c!65060)) b!567704))

(declare-fun m!546341 () Bool)

(assert (=> b!567701 m!546341))

(declare-fun m!546343 () Bool)

(assert (=> b!567704 m!546343))

(declare-fun m!546345 () Bool)

(assert (=> d!84241 m!546345))

(declare-fun m!546347 () Bool)

(assert (=> d!84241 m!546347))

(assert (=> d!84241 m!546345))

(declare-fun m!546349 () Bool)

(assert (=> d!84241 m!546349))

(declare-fun m!546351 () Bool)

(assert (=> d!84241 m!546351))

(assert (=> d!84241 m!546091))

(declare-fun m!546353 () Bool)

(assert (=> d!84241 m!546353))

(assert (=> b!567404 d!84241))

(declare-fun d!84243 () Bool)

(assert (=> d!84243 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51938 d!84243))

(declare-fun d!84251 () Bool)

(assert (=> d!84251 (= (array_inv!12859 a!3118) (bvsge (size!17449 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51938 d!84251))

(declare-fun d!84255 () Bool)

(assert (=> d!84255 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567399 d!84255))

(push 1)

(assert (not d!84195))

(assert (not d!84237))

(assert (not b!567670))

(assert (not bm!32527))

(assert (not b!567633))

(assert (not b!567704))

(assert (not d!84203))

(assert (not b!567530))

(assert (not d!84183))

(assert (not bm!32525))

(assert (not bm!32521))

(assert (not b!567656))

(assert (not b!567593))

(assert (not d!84231))

(assert (not b!567676))

(assert (not b!567682))

(assert (not b!567521))

(assert (not b!567684))

(assert (not b!567654))

(assert (not d!84241))

(assert (not b!567632))

(assert (not b!567631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

