; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51376 () Bool)

(assert start!51376)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!322943 () Bool)

(declare-fun b!560477 () Bool)

(declare-datatypes ((array!35195 0))(
  ( (array!35196 (arr!16894 (Array (_ BitVec 32) (_ BitVec 64))) (size!17258 (_ BitVec 32))) )
))
(declare-fun lt!254948 () array!35195)

(declare-datatypes ((SeekEntryResult!5350 0))(
  ( (MissingZero!5350 (index!23627 (_ BitVec 32))) (Found!5350 (index!23628 (_ BitVec 32))) (Intermediate!5350 (undefined!6162 Bool) (index!23629 (_ BitVec 32)) (x!52568 (_ BitVec 32))) (Undefined!5350) (MissingVacant!5350 (index!23630 (_ BitVec 32))) )
))
(declare-fun lt!254944 () SeekEntryResult!5350)

(declare-fun lt!254945 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35195 (_ BitVec 32)) SeekEntryResult!5350)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35195 (_ BitVec 32)) SeekEntryResult!5350)

(assert (=> b!560477 (= e!322943 (= (seekEntryOrOpen!0 lt!254945 lt!254948 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52568 lt!254944) (index!23629 lt!254944) (index!23629 lt!254944) lt!254945 lt!254948 mask!3119)))))

(declare-fun res!351780 () Bool)

(declare-fun e!322947 () Bool)

(assert (=> start!51376 (=> (not res!351780) (not e!322947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51376 (= res!351780 (validMask!0 mask!3119))))

(assert (=> start!51376 e!322947))

(assert (=> start!51376 true))

(declare-fun a!3118 () array!35195)

(declare-fun array_inv!12668 (array!35195) Bool)

(assert (=> start!51376 (array_inv!12668 a!3118)))

(declare-fun b!560478 () Bool)

(declare-fun e!322942 () Bool)

(assert (=> b!560478 (= e!322942 e!322943)))

(declare-fun res!351787 () Bool)

(assert (=> b!560478 (=> (not res!351787) (not e!322943))))

(declare-fun lt!254943 () SeekEntryResult!5350)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560478 (= res!351787 (= lt!254943 (seekKeyOrZeroReturnVacant!0 (x!52568 lt!254944) (index!23629 lt!254944) (index!23629 lt!254944) (select (arr!16894 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560479 () Bool)

(declare-fun res!351781 () Bool)

(declare-fun e!322945 () Bool)

(assert (=> b!560479 (=> (not res!351781) (not e!322945))))

(declare-datatypes ((List!11027 0))(
  ( (Nil!11024) (Cons!11023 (h!12026 (_ BitVec 64)) (t!17263 List!11027)) )
))
(declare-fun arrayNoDuplicates!0 (array!35195 (_ BitVec 32) List!11027) Bool)

(assert (=> b!560479 (= res!351781 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11024))))

(declare-fun b!560480 () Bool)

(declare-fun e!322946 () Bool)

(assert (=> b!560480 (= e!322945 e!322946)))

(declare-fun res!351784 () Bool)

(assert (=> b!560480 (=> (not res!351784) (not e!322946))))

(declare-fun lt!254942 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35195 (_ BitVec 32)) SeekEntryResult!5350)

(assert (=> b!560480 (= res!351784 (= lt!254944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254942 lt!254945 lt!254948 mask!3119)))))

(declare-fun lt!254941 () (_ BitVec 32))

(assert (=> b!560480 (= lt!254944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254941 (select (arr!16894 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560480 (= lt!254942 (toIndex!0 lt!254945 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560480 (= lt!254945 (select (store (arr!16894 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560480 (= lt!254941 (toIndex!0 (select (arr!16894 a!3118) j!142) mask!3119))))

(assert (=> b!560480 (= lt!254948 (array!35196 (store (arr!16894 a!3118) i!1132 k0!1914) (size!17258 a!3118)))))

(declare-fun b!560481 () Bool)

(declare-fun res!351786 () Bool)

(assert (=> b!560481 (=> (not res!351786) (not e!322945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35195 (_ BitVec 32)) Bool)

(assert (=> b!560481 (= res!351786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560482 () Bool)

(declare-fun e!322941 () Bool)

(assert (=> b!560482 (= e!322941 e!322942)))

(declare-fun res!351790 () Bool)

(assert (=> b!560482 (=> res!351790 e!322942)))

(declare-fun lt!254947 () (_ BitVec 64))

(assert (=> b!560482 (= res!351790 (or (= lt!254947 (select (arr!16894 a!3118) j!142)) (= lt!254947 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560482 (= lt!254947 (select (arr!16894 a!3118) (index!23629 lt!254944)))))

(declare-fun b!560483 () Bool)

(assert (=> b!560483 (= e!322947 e!322945)))

(declare-fun res!351785 () Bool)

(assert (=> b!560483 (=> (not res!351785) (not e!322945))))

(declare-fun lt!254940 () SeekEntryResult!5350)

(assert (=> b!560483 (= res!351785 (or (= lt!254940 (MissingZero!5350 i!1132)) (= lt!254940 (MissingVacant!5350 i!1132))))))

(assert (=> b!560483 (= lt!254940 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560484 () Bool)

(declare-fun res!351783 () Bool)

(assert (=> b!560484 (=> (not res!351783) (not e!322947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560484 (= res!351783 (validKeyInArray!0 (select (arr!16894 a!3118) j!142)))))

(declare-fun b!560485 () Bool)

(declare-fun e!322944 () Bool)

(assert (=> b!560485 (= e!322944 e!322941)))

(declare-fun res!351789 () Bool)

(assert (=> b!560485 (=> res!351789 e!322941)))

(get-info :version)

(assert (=> b!560485 (= res!351789 (or (undefined!6162 lt!254944) (not ((_ is Intermediate!5350) lt!254944))))))

(declare-fun b!560486 () Bool)

(declare-fun res!351788 () Bool)

(assert (=> b!560486 (=> (not res!351788) (not e!322947))))

(assert (=> b!560486 (= res!351788 (validKeyInArray!0 k0!1914))))

(declare-fun b!560487 () Bool)

(declare-fun res!351779 () Bool)

(assert (=> b!560487 (=> (not res!351779) (not e!322947))))

(assert (=> b!560487 (= res!351779 (and (= (size!17258 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17258 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17258 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560488 () Bool)

(declare-fun res!351791 () Bool)

(assert (=> b!560488 (=> (not res!351791) (not e!322947))))

(declare-fun arrayContainsKey!0 (array!35195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560488 (= res!351791 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560489 () Bool)

(assert (=> b!560489 (= e!322946 (not true))))

(assert (=> b!560489 e!322944))

(declare-fun res!351782 () Bool)

(assert (=> b!560489 (=> (not res!351782) (not e!322944))))

(assert (=> b!560489 (= res!351782 (= lt!254943 (Found!5350 j!142)))))

(assert (=> b!560489 (= lt!254943 (seekEntryOrOpen!0 (select (arr!16894 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560489 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17474 0))(
  ( (Unit!17475) )
))
(declare-fun lt!254946 () Unit!17474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17474)

(assert (=> b!560489 (= lt!254946 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51376 res!351780) b!560487))

(assert (= (and b!560487 res!351779) b!560484))

(assert (= (and b!560484 res!351783) b!560486))

(assert (= (and b!560486 res!351788) b!560488))

(assert (= (and b!560488 res!351791) b!560483))

(assert (= (and b!560483 res!351785) b!560481))

(assert (= (and b!560481 res!351786) b!560479))

(assert (= (and b!560479 res!351781) b!560480))

(assert (= (and b!560480 res!351784) b!560489))

(assert (= (and b!560489 res!351782) b!560485))

(assert (= (and b!560485 (not res!351789)) b!560482))

(assert (= (and b!560482 (not res!351790)) b!560478))

(assert (= (and b!560478 res!351787) b!560477))

(declare-fun m!538311 () Bool)

(assert (=> b!560488 m!538311))

(declare-fun m!538313 () Bool)

(assert (=> b!560483 m!538313))

(declare-fun m!538315 () Bool)

(assert (=> b!560481 m!538315))

(declare-fun m!538317 () Bool)

(assert (=> b!560477 m!538317))

(declare-fun m!538319 () Bool)

(assert (=> b!560477 m!538319))

(declare-fun m!538321 () Bool)

(assert (=> b!560489 m!538321))

(assert (=> b!560489 m!538321))

(declare-fun m!538323 () Bool)

(assert (=> b!560489 m!538323))

(declare-fun m!538325 () Bool)

(assert (=> b!560489 m!538325))

(declare-fun m!538327 () Bool)

(assert (=> b!560489 m!538327))

(declare-fun m!538329 () Bool)

(assert (=> b!560486 m!538329))

(assert (=> b!560480 m!538321))

(declare-fun m!538331 () Bool)

(assert (=> b!560480 m!538331))

(assert (=> b!560480 m!538321))

(declare-fun m!538333 () Bool)

(assert (=> b!560480 m!538333))

(assert (=> b!560480 m!538321))

(declare-fun m!538335 () Bool)

(assert (=> b!560480 m!538335))

(declare-fun m!538337 () Bool)

(assert (=> b!560480 m!538337))

(declare-fun m!538339 () Bool)

(assert (=> b!560480 m!538339))

(declare-fun m!538341 () Bool)

(assert (=> b!560480 m!538341))

(assert (=> b!560484 m!538321))

(assert (=> b!560484 m!538321))

(declare-fun m!538343 () Bool)

(assert (=> b!560484 m!538343))

(assert (=> b!560482 m!538321))

(declare-fun m!538345 () Bool)

(assert (=> b!560482 m!538345))

(declare-fun m!538347 () Bool)

(assert (=> b!560479 m!538347))

(declare-fun m!538349 () Bool)

(assert (=> start!51376 m!538349))

(declare-fun m!538351 () Bool)

(assert (=> start!51376 m!538351))

(assert (=> b!560478 m!538321))

(assert (=> b!560478 m!538321))

(declare-fun m!538353 () Bool)

(assert (=> b!560478 m!538353))

(check-sat (not b!560478) (not b!560481) (not b!560479) (not b!560483) (not b!560489) (not b!560488) (not b!560477) (not b!560486) (not start!51376) (not b!560484) (not b!560480))
(check-sat)
