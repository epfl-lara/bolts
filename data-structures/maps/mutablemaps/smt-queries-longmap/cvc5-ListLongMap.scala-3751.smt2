; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51518 () Bool)

(assert start!51518)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!324543 () Bool)

(declare-fun lt!257153 () Bool)

(declare-fun b!563150 () Bool)

(declare-datatypes ((SeekEntryResult!5421 0))(
  ( (MissingZero!5421 (index!23911 (_ BitVec 32))) (Found!5421 (index!23912 (_ BitVec 32))) (Intermediate!5421 (undefined!6233 Bool) (index!23913 (_ BitVec 32)) (x!52831 (_ BitVec 32))) (Undefined!5421) (MissingVacant!5421 (index!23914 (_ BitVec 32))) )
))
(declare-fun lt!257148 () SeekEntryResult!5421)

(assert (=> b!563150 (= e!324543 (not (or (and (not lt!257153) (undefined!6233 lt!257148)) (and (not lt!257153) (not (undefined!6233 lt!257148))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!563150 (= lt!257153 (not (is-Intermediate!5421 lt!257148)))))

(declare-fun e!324542 () Bool)

(assert (=> b!563150 e!324542))

(declare-fun res!354460 () Bool)

(assert (=> b!563150 (=> (not res!354460) (not e!324542))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35337 0))(
  ( (array!35338 (arr!16965 (Array (_ BitVec 32) (_ BitVec 64))) (size!17329 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35337)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35337 (_ BitVec 32)) Bool)

(assert (=> b!563150 (= res!354460 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17616 0))(
  ( (Unit!17617) )
))
(declare-fun lt!257149 () Unit!17616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17616)

(assert (=> b!563150 (= lt!257149 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563151 () Bool)

(declare-fun res!354458 () Bool)

(declare-fun e!324540 () Bool)

(assert (=> b!563151 (=> (not res!354458) (not e!324540))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563151 (= res!354458 (validKeyInArray!0 k!1914))))

(declare-fun b!563152 () Bool)

(declare-fun res!354455 () Bool)

(declare-fun e!324544 () Bool)

(assert (=> b!563152 (=> (not res!354455) (not e!324544))))

(declare-datatypes ((List!11098 0))(
  ( (Nil!11095) (Cons!11094 (h!12097 (_ BitVec 64)) (t!17334 List!11098)) )
))
(declare-fun arrayNoDuplicates!0 (array!35337 (_ BitVec 32) List!11098) Bool)

(assert (=> b!563152 (= res!354455 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11095))))

(declare-fun b!563153 () Bool)

(declare-fun res!354461 () Bool)

(assert (=> b!563153 (=> (not res!354461) (not e!324544))))

(assert (=> b!563153 (= res!354461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!354459 () Bool)

(assert (=> start!51518 (=> (not res!354459) (not e!324540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51518 (= res!354459 (validMask!0 mask!3119))))

(assert (=> start!51518 e!324540))

(assert (=> start!51518 true))

(declare-fun array_inv!12739 (array!35337) Bool)

(assert (=> start!51518 (array_inv!12739 a!3118)))

(declare-fun b!563154 () Bool)

(declare-fun res!354457 () Bool)

(assert (=> b!563154 (=> (not res!354457) (not e!324540))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563154 (= res!354457 (and (= (size!17329 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17329 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17329 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563155 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35337 (_ BitVec 32)) SeekEntryResult!5421)

(assert (=> b!563155 (= e!324542 (= (seekEntryOrOpen!0 (select (arr!16965 a!3118) j!142) a!3118 mask!3119) (Found!5421 j!142)))))

(declare-fun b!563156 () Bool)

(assert (=> b!563156 (= e!324544 e!324543)))

(declare-fun res!354453 () Bool)

(assert (=> b!563156 (=> (not res!354453) (not e!324543))))

(declare-fun lt!257151 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35337 (_ BitVec 32)) SeekEntryResult!5421)

(assert (=> b!563156 (= res!354453 (= lt!257148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257151 (select (store (arr!16965 a!3118) i!1132 k!1914) j!142) (array!35338 (store (arr!16965 a!3118) i!1132 k!1914) (size!17329 a!3118)) mask!3119)))))

(declare-fun lt!257152 () (_ BitVec 32))

(assert (=> b!563156 (= lt!257148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257152 (select (arr!16965 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563156 (= lt!257151 (toIndex!0 (select (store (arr!16965 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563156 (= lt!257152 (toIndex!0 (select (arr!16965 a!3118) j!142) mask!3119))))

(declare-fun b!563157 () Bool)

(assert (=> b!563157 (= e!324540 e!324544)))

(declare-fun res!354456 () Bool)

(assert (=> b!563157 (=> (not res!354456) (not e!324544))))

(declare-fun lt!257150 () SeekEntryResult!5421)

(assert (=> b!563157 (= res!354456 (or (= lt!257150 (MissingZero!5421 i!1132)) (= lt!257150 (MissingVacant!5421 i!1132))))))

(assert (=> b!563157 (= lt!257150 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563158 () Bool)

(declare-fun res!354452 () Bool)

(assert (=> b!563158 (=> (not res!354452) (not e!324540))))

(assert (=> b!563158 (= res!354452 (validKeyInArray!0 (select (arr!16965 a!3118) j!142)))))

(declare-fun b!563159 () Bool)

(declare-fun res!354454 () Bool)

(assert (=> b!563159 (=> (not res!354454) (not e!324540))))

(declare-fun arrayContainsKey!0 (array!35337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563159 (= res!354454 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51518 res!354459) b!563154))

(assert (= (and b!563154 res!354457) b!563158))

(assert (= (and b!563158 res!354452) b!563151))

(assert (= (and b!563151 res!354458) b!563159))

(assert (= (and b!563159 res!354454) b!563157))

(assert (= (and b!563157 res!354456) b!563153))

(assert (= (and b!563153 res!354461) b!563152))

(assert (= (and b!563152 res!354455) b!563156))

(assert (= (and b!563156 res!354453) b!563150))

(assert (= (and b!563150 res!354460) b!563155))

(declare-fun m!541513 () Bool)

(assert (=> start!51518 m!541513))

(declare-fun m!541515 () Bool)

(assert (=> start!51518 m!541515))

(declare-fun m!541517 () Bool)

(assert (=> b!563156 m!541517))

(declare-fun m!541519 () Bool)

(assert (=> b!563156 m!541519))

(declare-fun m!541521 () Bool)

(assert (=> b!563156 m!541521))

(declare-fun m!541523 () Bool)

(assert (=> b!563156 m!541523))

(assert (=> b!563156 m!541517))

(assert (=> b!563156 m!541521))

(assert (=> b!563156 m!541521))

(declare-fun m!541525 () Bool)

(assert (=> b!563156 m!541525))

(assert (=> b!563156 m!541517))

(declare-fun m!541527 () Bool)

(assert (=> b!563156 m!541527))

(declare-fun m!541529 () Bool)

(assert (=> b!563156 m!541529))

(declare-fun m!541531 () Bool)

(assert (=> b!563153 m!541531))

(declare-fun m!541533 () Bool)

(assert (=> b!563152 m!541533))

(declare-fun m!541535 () Bool)

(assert (=> b!563151 m!541535))

(declare-fun m!541537 () Bool)

(assert (=> b!563159 m!541537))

(declare-fun m!541539 () Bool)

(assert (=> b!563150 m!541539))

(declare-fun m!541541 () Bool)

(assert (=> b!563150 m!541541))

(assert (=> b!563155 m!541517))

(assert (=> b!563155 m!541517))

(declare-fun m!541543 () Bool)

(assert (=> b!563155 m!541543))

(declare-fun m!541545 () Bool)

(assert (=> b!563157 m!541545))

(assert (=> b!563158 m!541517))

(assert (=> b!563158 m!541517))

(declare-fun m!541547 () Bool)

(assert (=> b!563158 m!541547))

(push 1)

