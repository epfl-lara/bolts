; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51714 () Bool)

(assert start!51714)

(declare-fun res!356362 () Bool)

(declare-fun e!325452 () Bool)

(assert (=> start!51714 (=> (not res!356362) (not e!325452))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51714 (= res!356362 (validMask!0 mask!3119))))

(assert (=> start!51714 e!325452))

(assert (=> start!51714 true))

(declare-datatypes ((array!35476 0))(
  ( (array!35477 (arr!17033 (Array (_ BitVec 32) (_ BitVec 64))) (size!17397 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35476)

(declare-fun array_inv!12807 (array!35476) Bool)

(assert (=> start!51714 (array_inv!12807 a!3118)))

(declare-fun b!565238 () Bool)

(declare-fun e!325450 () Bool)

(assert (=> b!565238 (= e!325450 (not true))))

(declare-fun e!325453 () Bool)

(assert (=> b!565238 e!325453))

(declare-fun res!356366 () Bool)

(assert (=> b!565238 (=> (not res!356366) (not e!325453))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35476 (_ BitVec 32)) Bool)

(assert (=> b!565238 (= res!356366 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17680 0))(
  ( (Unit!17681) )
))
(declare-fun lt!257849 () Unit!17680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17680)

(assert (=> b!565238 (= lt!257849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565239 () Bool)

(declare-fun res!356359 () Bool)

(assert (=> b!565239 (=> (not res!356359) (not e!325452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565239 (= res!356359 (validKeyInArray!0 (select (arr!17033 a!3118) j!142)))))

(declare-fun b!565240 () Bool)

(declare-fun res!356363 () Bool)

(assert (=> b!565240 (=> (not res!356363) (not e!325450))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5489 0))(
  ( (MissingZero!5489 (index!24183 (_ BitVec 32))) (Found!5489 (index!24184 (_ BitVec 32))) (Intermediate!5489 (undefined!6301 Bool) (index!24185 (_ BitVec 32)) (x!53081 (_ BitVec 32))) (Undefined!5489) (MissingVacant!5489 (index!24186 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35476 (_ BitVec 32)) SeekEntryResult!5489)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565240 (= res!356363 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17033 a!3118) j!142) mask!3119) (select (arr!17033 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17033 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17033 a!3118) i!1132 k!1914) j!142) (array!35477 (store (arr!17033 a!3118) i!1132 k!1914) (size!17397 a!3118)) mask!3119)))))

(declare-fun b!565241 () Bool)

(declare-fun res!356361 () Bool)

(assert (=> b!565241 (=> (not res!356361) (not e!325452))))

(assert (=> b!565241 (= res!356361 (validKeyInArray!0 k!1914))))

(declare-fun b!565242 () Bool)

(declare-fun res!356365 () Bool)

(assert (=> b!565242 (=> (not res!356365) (not e!325450))))

(declare-datatypes ((List!11166 0))(
  ( (Nil!11163) (Cons!11162 (h!12168 (_ BitVec 64)) (t!17402 List!11166)) )
))
(declare-fun arrayNoDuplicates!0 (array!35476 (_ BitVec 32) List!11166) Bool)

(assert (=> b!565242 (= res!356365 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11163))))

(declare-fun b!565243 () Bool)

(declare-fun res!356357 () Bool)

(assert (=> b!565243 (=> (not res!356357) (not e!325452))))

(assert (=> b!565243 (= res!356357 (and (= (size!17397 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17397 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17397 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565244 () Bool)

(declare-fun res!356358 () Bool)

(assert (=> b!565244 (=> (not res!356358) (not e!325450))))

(assert (=> b!565244 (= res!356358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565245 () Bool)

(declare-fun res!356364 () Bool)

(assert (=> b!565245 (=> (not res!356364) (not e!325452))))

(declare-fun arrayContainsKey!0 (array!35476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565245 (= res!356364 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565246 () Bool)

(assert (=> b!565246 (= e!325452 e!325450)))

(declare-fun res!356360 () Bool)

(assert (=> b!565246 (=> (not res!356360) (not e!325450))))

(declare-fun lt!257848 () SeekEntryResult!5489)

(assert (=> b!565246 (= res!356360 (or (= lt!257848 (MissingZero!5489 i!1132)) (= lt!257848 (MissingVacant!5489 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35476 (_ BitVec 32)) SeekEntryResult!5489)

(assert (=> b!565246 (= lt!257848 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565247 () Bool)

(assert (=> b!565247 (= e!325453 (= (seekEntryOrOpen!0 (select (arr!17033 a!3118) j!142) a!3118 mask!3119) (Found!5489 j!142)))))

(assert (= (and start!51714 res!356362) b!565243))

(assert (= (and b!565243 res!356357) b!565239))

(assert (= (and b!565239 res!356359) b!565241))

(assert (= (and b!565241 res!356361) b!565245))

(assert (= (and b!565245 res!356364) b!565246))

(assert (= (and b!565246 res!356360) b!565244))

(assert (= (and b!565244 res!356358) b!565242))

(assert (= (and b!565242 res!356365) b!565240))

(assert (= (and b!565240 res!356363) b!565238))

(assert (= (and b!565238 res!356366) b!565247))

(declare-fun m!543733 () Bool)

(assert (=> b!565247 m!543733))

(assert (=> b!565247 m!543733))

(declare-fun m!543735 () Bool)

(assert (=> b!565247 m!543735))

(declare-fun m!543737 () Bool)

(assert (=> b!565246 m!543737))

(declare-fun m!543739 () Bool)

(assert (=> b!565242 m!543739))

(declare-fun m!543741 () Bool)

(assert (=> b!565241 m!543741))

(declare-fun m!543743 () Bool)

(assert (=> start!51714 m!543743))

(declare-fun m!543745 () Bool)

(assert (=> start!51714 m!543745))

(declare-fun m!543747 () Bool)

(assert (=> b!565245 m!543747))

(assert (=> b!565239 m!543733))

(assert (=> b!565239 m!543733))

(declare-fun m!543749 () Bool)

(assert (=> b!565239 m!543749))

(declare-fun m!543751 () Bool)

(assert (=> b!565238 m!543751))

(declare-fun m!543753 () Bool)

(assert (=> b!565238 m!543753))

(declare-fun m!543755 () Bool)

(assert (=> b!565244 m!543755))

(assert (=> b!565240 m!543733))

(declare-fun m!543757 () Bool)

(assert (=> b!565240 m!543757))

(assert (=> b!565240 m!543733))

(declare-fun m!543759 () Bool)

(assert (=> b!565240 m!543759))

(declare-fun m!543761 () Bool)

(assert (=> b!565240 m!543761))

(assert (=> b!565240 m!543759))

(declare-fun m!543763 () Bool)

(assert (=> b!565240 m!543763))

(assert (=> b!565240 m!543757))

(assert (=> b!565240 m!543733))

(declare-fun m!543765 () Bool)

(assert (=> b!565240 m!543765))

(declare-fun m!543767 () Bool)

(assert (=> b!565240 m!543767))

(assert (=> b!565240 m!543759))

(assert (=> b!565240 m!543761))

(push 1)

