; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52416 () Bool)

(assert start!52416)

(declare-fun b!571529 () Bool)

(declare-fun res!361193 () Bool)

(declare-fun e!328729 () Bool)

(assert (=> b!571529 (=> (not res!361193) (not e!328729))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571529 (= res!361193 (validKeyInArray!0 k!1914))))

(declare-fun b!571530 () Bool)

(declare-fun e!328733 () Bool)

(declare-fun e!328730 () Bool)

(assert (=> b!571530 (= e!328733 e!328730)))

(declare-fun res!361187 () Bool)

(assert (=> b!571530 (=> res!361187 e!328730)))

(declare-datatypes ((array!35767 0))(
  ( (array!35768 (arr!17168 (Array (_ BitVec 32) (_ BitVec 64))) (size!17532 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35767)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260709 () (_ BitVec 64))

(assert (=> b!571530 (= res!361187 (or (= lt!260709 (select (arr!17168 a!3118) j!142)) (= lt!260709 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5624 0))(
  ( (MissingZero!5624 (index!24723 (_ BitVec 32))) (Found!5624 (index!24724 (_ BitVec 32))) (Intermediate!5624 (undefined!6436 Bool) (index!24725 (_ BitVec 32)) (x!53624 (_ BitVec 32))) (Undefined!5624) (MissingVacant!5624 (index!24726 (_ BitVec 32))) )
))
(declare-fun lt!260707 () SeekEntryResult!5624)

(assert (=> b!571530 (= lt!260709 (select (arr!17168 a!3118) (index!24725 lt!260707)))))

(declare-fun b!571531 () Bool)

(declare-fun res!361197 () Bool)

(declare-fun e!328732 () Bool)

(assert (=> b!571531 (=> (not res!361197) (not e!328732))))

(declare-datatypes ((List!11301 0))(
  ( (Nil!11298) (Cons!11297 (h!12324 (_ BitVec 64)) (t!17537 List!11301)) )
))
(declare-fun arrayNoDuplicates!0 (array!35767 (_ BitVec 32) List!11301) Bool)

(assert (=> b!571531 (= res!361197 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11298))))

(declare-fun b!571532 () Bool)

(declare-fun res!361196 () Bool)

(assert (=> b!571532 (=> (not res!361196) (not e!328729))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571532 (= res!361196 (and (= (size!17532 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17532 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17532 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571533 () Bool)

(declare-fun res!361189 () Bool)

(assert (=> b!571533 (=> (not res!361189) (not e!328732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35767 (_ BitVec 32)) Bool)

(assert (=> b!571533 (= res!361189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571534 () Bool)

(declare-fun res!361190 () Bool)

(assert (=> b!571534 (=> (not res!361190) (not e!328729))))

(assert (=> b!571534 (= res!361190 (validKeyInArray!0 (select (arr!17168 a!3118) j!142)))))

(declare-fun res!361194 () Bool)

(assert (=> start!52416 (=> (not res!361194) (not e!328729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52416 (= res!361194 (validMask!0 mask!3119))))

(assert (=> start!52416 e!328729))

(assert (=> start!52416 true))

(declare-fun array_inv!12942 (array!35767) Bool)

(assert (=> start!52416 (array_inv!12942 a!3118)))

(declare-fun b!571535 () Bool)

(assert (=> b!571535 (= e!328729 e!328732)))

(declare-fun res!361198 () Bool)

(assert (=> b!571535 (=> (not res!361198) (not e!328732))))

(declare-fun lt!260703 () SeekEntryResult!5624)

(assert (=> b!571535 (= res!361198 (or (= lt!260703 (MissingZero!5624 i!1132)) (= lt!260703 (MissingVacant!5624 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35767 (_ BitVec 32)) SeekEntryResult!5624)

(assert (=> b!571535 (= lt!260703 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun e!328734 () Bool)

(declare-fun b!571536 () Bool)

(declare-fun lt!260705 () (_ BitVec 64))

(declare-fun lt!260710 () array!35767)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35767 (_ BitVec 32)) SeekEntryResult!5624)

(assert (=> b!571536 (= e!328734 (= (seekEntryOrOpen!0 lt!260705 lt!260710 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53624 lt!260707) (index!24725 lt!260707) (index!24725 lt!260707) lt!260705 lt!260710 mask!3119)))))

(declare-fun b!571537 () Bool)

(declare-fun res!361195 () Bool)

(assert (=> b!571537 (=> (not res!361195) (not e!328729))))

(declare-fun arrayContainsKey!0 (array!35767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571537 (= res!361195 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571538 () Bool)

(declare-fun e!328731 () Bool)

(assert (=> b!571538 (= e!328731 e!328733)))

(declare-fun res!361188 () Bool)

(assert (=> b!571538 (=> res!361188 e!328733)))

(assert (=> b!571538 (= res!361188 (or (undefined!6436 lt!260707) (not (is-Intermediate!5624 lt!260707))))))

(declare-fun b!571539 () Bool)

(assert (=> b!571539 (= e!328730 e!328734)))

(declare-fun res!361192 () Bool)

(assert (=> b!571539 (=> (not res!361192) (not e!328734))))

(declare-fun lt!260708 () SeekEntryResult!5624)

(assert (=> b!571539 (= res!361192 (= lt!260708 (seekKeyOrZeroReturnVacant!0 (x!53624 lt!260707) (index!24725 lt!260707) (index!24725 lt!260707) (select (arr!17168 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571540 () Bool)

(declare-fun e!328728 () Bool)

(assert (=> b!571540 (= e!328732 e!328728)))

(declare-fun res!361191 () Bool)

(assert (=> b!571540 (=> (not res!361191) (not e!328728))))

(declare-fun lt!260711 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35767 (_ BitVec 32)) SeekEntryResult!5624)

(assert (=> b!571540 (= res!361191 (= lt!260707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260711 lt!260705 lt!260710 mask!3119)))))

(declare-fun lt!260706 () (_ BitVec 32))

(assert (=> b!571540 (= lt!260707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260706 (select (arr!17168 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571540 (= lt!260711 (toIndex!0 lt!260705 mask!3119))))

(assert (=> b!571540 (= lt!260705 (select (store (arr!17168 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571540 (= lt!260706 (toIndex!0 (select (arr!17168 a!3118) j!142) mask!3119))))

(assert (=> b!571540 (= lt!260710 (array!35768 (store (arr!17168 a!3118) i!1132 k!1914) (size!17532 a!3118)))))

(declare-fun b!571541 () Bool)

(assert (=> b!571541 (= e!328728 (not true))))

(assert (=> b!571541 e!328731))

(declare-fun res!361199 () Bool)

(assert (=> b!571541 (=> (not res!361199) (not e!328731))))

(assert (=> b!571541 (= res!361199 (= lt!260708 (Found!5624 j!142)))))

(assert (=> b!571541 (= lt!260708 (seekEntryOrOpen!0 (select (arr!17168 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571541 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17950 0))(
  ( (Unit!17951) )
))
(declare-fun lt!260704 () Unit!17950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17950)

(assert (=> b!571541 (= lt!260704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52416 res!361194) b!571532))

(assert (= (and b!571532 res!361196) b!571534))

(assert (= (and b!571534 res!361190) b!571529))

(assert (= (and b!571529 res!361193) b!571537))

(assert (= (and b!571537 res!361195) b!571535))

(assert (= (and b!571535 res!361198) b!571533))

(assert (= (and b!571533 res!361189) b!571531))

(assert (= (and b!571531 res!361197) b!571540))

(assert (= (and b!571540 res!361191) b!571541))

(assert (= (and b!571541 res!361199) b!571538))

(assert (= (and b!571538 (not res!361188)) b!571530))

(assert (= (and b!571530 (not res!361187)) b!571539))

(assert (= (and b!571539 res!361192) b!571536))

(declare-fun m!550451 () Bool)

(assert (=> b!571529 m!550451))

(declare-fun m!550453 () Bool)

(assert (=> b!571540 m!550453))

(declare-fun m!550455 () Bool)

(assert (=> b!571540 m!550455))

(assert (=> b!571540 m!550453))

(declare-fun m!550457 () Bool)

(assert (=> b!571540 m!550457))

(declare-fun m!550459 () Bool)

(assert (=> b!571540 m!550459))

(declare-fun m!550461 () Bool)

(assert (=> b!571540 m!550461))

(assert (=> b!571540 m!550453))

(declare-fun m!550463 () Bool)

(assert (=> b!571540 m!550463))

(declare-fun m!550465 () Bool)

(assert (=> b!571540 m!550465))

(declare-fun m!550467 () Bool)

(assert (=> b!571537 m!550467))

(declare-fun m!550469 () Bool)

(assert (=> b!571535 m!550469))

(declare-fun m!550471 () Bool)

(assert (=> b!571531 m!550471))

(assert (=> b!571541 m!550453))

(assert (=> b!571541 m!550453))

(declare-fun m!550473 () Bool)

(assert (=> b!571541 m!550473))

(declare-fun m!550475 () Bool)

(assert (=> b!571541 m!550475))

(declare-fun m!550477 () Bool)

(assert (=> b!571541 m!550477))

(declare-fun m!550479 () Bool)

(assert (=> b!571533 m!550479))

(assert (=> b!571534 m!550453))

(assert (=> b!571534 m!550453))

(declare-fun m!550481 () Bool)

(assert (=> b!571534 m!550481))

(assert (=> b!571530 m!550453))

(declare-fun m!550483 () Bool)

(assert (=> b!571530 m!550483))

(declare-fun m!550485 () Bool)

(assert (=> start!52416 m!550485))

(declare-fun m!550487 () Bool)

(assert (=> start!52416 m!550487))

(assert (=> b!571539 m!550453))

(assert (=> b!571539 m!550453))

(declare-fun m!550489 () Bool)

(assert (=> b!571539 m!550489))

(declare-fun m!550491 () Bool)

(assert (=> b!571536 m!550491))

(declare-fun m!550493 () Bool)

(assert (=> b!571536 m!550493))

(push 1)

