; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51366 () Bool)

(assert start!51366)

(declare-fun b!560282 () Bool)

(declare-fun res!351588 () Bool)

(declare-fun e!322827 () Bool)

(assert (=> b!560282 (=> (not res!351588) (not e!322827))))

(declare-datatypes ((array!35185 0))(
  ( (array!35186 (arr!16889 (Array (_ BitVec 32) (_ BitVec 64))) (size!17253 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35185)

(declare-datatypes ((List!11022 0))(
  ( (Nil!11019) (Cons!11018 (h!12021 (_ BitVec 64)) (t!17258 List!11022)) )
))
(declare-fun arrayNoDuplicates!0 (array!35185 (_ BitVec 32) List!11022) Bool)

(assert (=> b!560282 (= res!351588 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11019))))

(declare-fun b!560283 () Bool)

(declare-fun e!322823 () Bool)

(declare-fun e!322822 () Bool)

(assert (=> b!560283 (= e!322823 e!322822)))

(declare-fun res!351596 () Bool)

(assert (=> b!560283 (=> res!351596 e!322822)))

(declare-datatypes ((SeekEntryResult!5345 0))(
  ( (MissingZero!5345 (index!23607 (_ BitVec 32))) (Found!5345 (index!23608 (_ BitVec 32))) (Intermediate!5345 (undefined!6157 Bool) (index!23609 (_ BitVec 32)) (x!52547 (_ BitVec 32))) (Undefined!5345) (MissingVacant!5345 (index!23610 (_ BitVec 32))) )
))
(declare-fun lt!254810 () SeekEntryResult!5345)

(assert (=> b!560283 (= res!351596 (or (undefined!6157 lt!254810) (not (is-Intermediate!5345 lt!254810))))))

(declare-fun b!560284 () Bool)

(declare-fun e!322826 () Bool)

(assert (=> b!560284 (= e!322826 e!322827)))

(declare-fun res!351587 () Bool)

(assert (=> b!560284 (=> (not res!351587) (not e!322827))))

(declare-fun lt!254806 () SeekEntryResult!5345)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560284 (= res!351587 (or (= lt!254806 (MissingZero!5345 i!1132)) (= lt!254806 (MissingVacant!5345 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35185 (_ BitVec 32)) SeekEntryResult!5345)

(assert (=> b!560284 (= lt!254806 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560285 () Bool)

(declare-fun res!351586 () Bool)

(assert (=> b!560285 (=> (not res!351586) (not e!322826))))

(declare-fun arrayContainsKey!0 (array!35185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560285 (= res!351586 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560286 () Bool)

(declare-fun res!351594 () Bool)

(assert (=> b!560286 (=> (not res!351594) (not e!322826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560286 (= res!351594 (validKeyInArray!0 k!1914))))

(declare-fun res!351589 () Bool)

(assert (=> start!51366 (=> (not res!351589) (not e!322826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51366 (= res!351589 (validMask!0 mask!3119))))

(assert (=> start!51366 e!322826))

(assert (=> start!51366 true))

(declare-fun array_inv!12663 (array!35185) Bool)

(assert (=> start!51366 (array_inv!12663 a!3118)))

(declare-fun b!560287 () Bool)

(declare-fun e!322821 () Bool)

(assert (=> b!560287 (= e!322821 (not true))))

(assert (=> b!560287 e!322823))

(declare-fun res!351595 () Bool)

(assert (=> b!560287 (=> (not res!351595) (not e!322823))))

(declare-fun lt!254805 () SeekEntryResult!5345)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560287 (= res!351595 (= lt!254805 (Found!5345 j!142)))))

(assert (=> b!560287 (= lt!254805 (seekEntryOrOpen!0 (select (arr!16889 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35185 (_ BitVec 32)) Bool)

(assert (=> b!560287 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17464 0))(
  ( (Unit!17465) )
))
(declare-fun lt!254812 () Unit!17464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17464)

(assert (=> b!560287 (= lt!254812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560288 () Bool)

(assert (=> b!560288 (= e!322827 e!322821)))

(declare-fun res!351593 () Bool)

(assert (=> b!560288 (=> (not res!351593) (not e!322821))))

(declare-fun lt!254807 () (_ BitVec 64))

(declare-fun lt!254811 () array!35185)

(declare-fun lt!254808 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35185 (_ BitVec 32)) SeekEntryResult!5345)

(assert (=> b!560288 (= res!351593 (= lt!254810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254808 lt!254807 lt!254811 mask!3119)))))

(declare-fun lt!254813 () (_ BitVec 32))

(assert (=> b!560288 (= lt!254810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254813 (select (arr!16889 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560288 (= lt!254808 (toIndex!0 lt!254807 mask!3119))))

(assert (=> b!560288 (= lt!254807 (select (store (arr!16889 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560288 (= lt!254813 (toIndex!0 (select (arr!16889 a!3118) j!142) mask!3119))))

(assert (=> b!560288 (= lt!254811 (array!35186 (store (arr!16889 a!3118) i!1132 k!1914) (size!17253 a!3118)))))

(declare-fun b!560289 () Bool)

(declare-fun e!322824 () Bool)

(assert (=> b!560289 (= e!322822 e!322824)))

(declare-fun res!351584 () Bool)

(assert (=> b!560289 (=> res!351584 e!322824)))

(declare-fun lt!254809 () (_ BitVec 64))

(assert (=> b!560289 (= res!351584 (or (= lt!254809 (select (arr!16889 a!3118) j!142)) (= lt!254809 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560289 (= lt!254809 (select (arr!16889 a!3118) (index!23609 lt!254810)))))

(declare-fun b!560290 () Bool)

(declare-fun res!351592 () Bool)

(assert (=> b!560290 (=> (not res!351592) (not e!322826))))

(assert (=> b!560290 (= res!351592 (and (= (size!17253 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17253 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17253 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560291 () Bool)

(declare-fun res!351590 () Bool)

(assert (=> b!560291 (=> (not res!351590) (not e!322827))))

(assert (=> b!560291 (= res!351590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560292 () Bool)

(declare-fun e!322825 () Bool)

(assert (=> b!560292 (= e!322824 e!322825)))

(declare-fun res!351591 () Bool)

(assert (=> b!560292 (=> (not res!351591) (not e!322825))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35185 (_ BitVec 32)) SeekEntryResult!5345)

(assert (=> b!560292 (= res!351591 (= lt!254805 (seekKeyOrZeroReturnVacant!0 (x!52547 lt!254810) (index!23609 lt!254810) (index!23609 lt!254810) (select (arr!16889 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560293 () Bool)

(assert (=> b!560293 (= e!322825 (= (seekEntryOrOpen!0 lt!254807 lt!254811 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52547 lt!254810) (index!23609 lt!254810) (index!23609 lt!254810) lt!254807 lt!254811 mask!3119)))))

(declare-fun b!560294 () Bool)

(declare-fun res!351585 () Bool)

(assert (=> b!560294 (=> (not res!351585) (not e!322826))))

(assert (=> b!560294 (= res!351585 (validKeyInArray!0 (select (arr!16889 a!3118) j!142)))))

(assert (= (and start!51366 res!351589) b!560290))

(assert (= (and b!560290 res!351592) b!560294))

(assert (= (and b!560294 res!351585) b!560286))

(assert (= (and b!560286 res!351594) b!560285))

(assert (= (and b!560285 res!351586) b!560284))

(assert (= (and b!560284 res!351587) b!560291))

(assert (= (and b!560291 res!351590) b!560282))

(assert (= (and b!560282 res!351588) b!560288))

(assert (= (and b!560288 res!351593) b!560287))

(assert (= (and b!560287 res!351595) b!560283))

(assert (= (and b!560283 (not res!351596)) b!560289))

(assert (= (and b!560289 (not res!351584)) b!560292))

(assert (= (and b!560292 res!351591) b!560293))

(declare-fun m!538091 () Bool)

(assert (=> b!560293 m!538091))

(declare-fun m!538093 () Bool)

(assert (=> b!560293 m!538093))

(declare-fun m!538095 () Bool)

(assert (=> b!560292 m!538095))

(assert (=> b!560292 m!538095))

(declare-fun m!538097 () Bool)

(assert (=> b!560292 m!538097))

(declare-fun m!538099 () Bool)

(assert (=> b!560284 m!538099))

(declare-fun m!538101 () Bool)

(assert (=> start!51366 m!538101))

(declare-fun m!538103 () Bool)

(assert (=> start!51366 m!538103))

(assert (=> b!560288 m!538095))

(declare-fun m!538105 () Bool)

(assert (=> b!560288 m!538105))

(declare-fun m!538107 () Bool)

(assert (=> b!560288 m!538107))

(assert (=> b!560288 m!538095))

(assert (=> b!560288 m!538095))

(declare-fun m!538109 () Bool)

(assert (=> b!560288 m!538109))

(declare-fun m!538111 () Bool)

(assert (=> b!560288 m!538111))

(declare-fun m!538113 () Bool)

(assert (=> b!560288 m!538113))

(declare-fun m!538115 () Bool)

(assert (=> b!560288 m!538115))

(declare-fun m!538117 () Bool)

(assert (=> b!560286 m!538117))

(declare-fun m!538119 () Bool)

(assert (=> b!560285 m!538119))

(assert (=> b!560287 m!538095))

(assert (=> b!560287 m!538095))

(declare-fun m!538121 () Bool)

(assert (=> b!560287 m!538121))

(declare-fun m!538123 () Bool)

(assert (=> b!560287 m!538123))

(declare-fun m!538125 () Bool)

(assert (=> b!560287 m!538125))

(assert (=> b!560294 m!538095))

(assert (=> b!560294 m!538095))

(declare-fun m!538127 () Bool)

(assert (=> b!560294 m!538127))

(declare-fun m!538129 () Bool)

(assert (=> b!560291 m!538129))

(declare-fun m!538131 () Bool)

(assert (=> b!560282 m!538131))

(assert (=> b!560289 m!538095))

(declare-fun m!538133 () Bool)

(assert (=> b!560289 m!538133))

(push 1)

