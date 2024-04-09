; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51476 () Bool)

(assert start!51476)

(declare-fun b!562407 () Bool)

(declare-fun e!324122 () Bool)

(declare-fun e!324121 () Bool)

(assert (=> b!562407 (= e!324122 e!324121)))

(declare-fun res!353717 () Bool)

(assert (=> b!562407 (=> (not res!353717) (not e!324121))))

(declare-datatypes ((SeekEntryResult!5400 0))(
  ( (MissingZero!5400 (index!23827 (_ BitVec 32))) (Found!5400 (index!23828 (_ BitVec 32))) (Intermediate!5400 (undefined!6212 Bool) (index!23829 (_ BitVec 32)) (x!52754 (_ BitVec 32))) (Undefined!5400) (MissingVacant!5400 (index!23830 (_ BitVec 32))) )
))
(declare-fun lt!256394 () SeekEntryResult!5400)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562407 (= res!353717 (or (= lt!256394 (MissingZero!5400 i!1132)) (= lt!256394 (MissingVacant!5400 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35295 0))(
  ( (array!35296 (arr!16944 (Array (_ BitVec 32) (_ BitVec 64))) (size!17308 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35295)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35295 (_ BitVec 32)) SeekEntryResult!5400)

(assert (=> b!562407 (= lt!256394 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562408 () Bool)

(declare-fun e!324123 () Bool)

(declare-fun e!324125 () Bool)

(assert (=> b!562408 (= e!324123 (not e!324125))))

(declare-fun res!353719 () Bool)

(assert (=> b!562408 (=> res!353719 e!324125)))

(declare-fun lt!256392 () SeekEntryResult!5400)

(assert (=> b!562408 (= res!353719 (or (undefined!6212 lt!256392) (not (is-Intermediate!5400 lt!256392))))))

(declare-fun lt!256391 () SeekEntryResult!5400)

(declare-fun lt!256397 () SeekEntryResult!5400)

(assert (=> b!562408 (= lt!256391 lt!256397)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562408 (= lt!256397 (Found!5400 j!142))))

(assert (=> b!562408 (= lt!256391 (seekEntryOrOpen!0 (select (arr!16944 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35295 (_ BitVec 32)) Bool)

(assert (=> b!562408 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17574 0))(
  ( (Unit!17575) )
))
(declare-fun lt!256395 () Unit!17574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17574)

(assert (=> b!562408 (= lt!256395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562409 () Bool)

(declare-fun res!353715 () Bool)

(assert (=> b!562409 (=> (not res!353715) (not e!324122))))

(assert (=> b!562409 (= res!353715 (and (= (size!17308 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17308 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17308 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562410 () Bool)

(declare-fun e!324124 () Bool)

(assert (=> b!562410 (= e!324125 e!324124)))

(declare-fun res!353710 () Bool)

(assert (=> b!562410 (=> res!353710 e!324124)))

(declare-fun lt!256403 () (_ BitVec 64))

(assert (=> b!562410 (= res!353710 (or (= lt!256403 (select (arr!16944 a!3118) j!142)) (= lt!256403 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562410 (= lt!256403 (select (arr!16944 a!3118) (index!23829 lt!256392)))))

(declare-fun b!562411 () Bool)

(declare-fun res!353713 () Bool)

(assert (=> b!562411 (=> (not res!353713) (not e!324122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562411 (= res!353713 (validKeyInArray!0 (select (arr!16944 a!3118) j!142)))))

(declare-fun b!562412 () Bool)

(declare-fun res!353711 () Bool)

(assert (=> b!562412 (=> (not res!353711) (not e!324121))))

(declare-datatypes ((List!11077 0))(
  ( (Nil!11074) (Cons!11073 (h!12076 (_ BitVec 64)) (t!17313 List!11077)) )
))
(declare-fun arrayNoDuplicates!0 (array!35295 (_ BitVec 32) List!11077) Bool)

(assert (=> b!562412 (= res!353711 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11074))))

(declare-fun b!562413 () Bool)

(declare-fun e!324127 () Bool)

(assert (=> b!562413 (= e!324124 e!324127)))

(declare-fun res!353709 () Bool)

(assert (=> b!562413 (=> res!353709 e!324127)))

(declare-fun lt!256400 () SeekEntryResult!5400)

(assert (=> b!562413 (= res!353709 (or (bvslt (index!23829 lt!256392) #b00000000000000000000000000000000) (bvsge (index!23829 lt!256392) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52754 lt!256392) #b01111111111111111111111111111110) (bvslt (x!52754 lt!256392) #b00000000000000000000000000000000) (not (= lt!256403 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16944 a!3118) i!1132 k!1914) (index!23829 lt!256392)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256400 lt!256397))))))

(declare-fun lt!256401 () SeekEntryResult!5400)

(declare-fun lt!256393 () SeekEntryResult!5400)

(assert (=> b!562413 (= lt!256401 lt!256393)))

(declare-fun lt!256390 () array!35295)

(declare-fun lt!256402 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35295 (_ BitVec 32)) SeekEntryResult!5400)

(assert (=> b!562413 (= lt!256393 (seekKeyOrZeroReturnVacant!0 (x!52754 lt!256392) (index!23829 lt!256392) (index!23829 lt!256392) lt!256402 lt!256390 mask!3119))))

(assert (=> b!562413 (= lt!256401 (seekEntryOrOpen!0 lt!256402 lt!256390 mask!3119))))

(assert (=> b!562413 (= lt!256391 lt!256400)))

(assert (=> b!562413 (= lt!256400 (seekKeyOrZeroReturnVacant!0 (x!52754 lt!256392) (index!23829 lt!256392) (index!23829 lt!256392) (select (arr!16944 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562414 () Bool)

(declare-fun res!353716 () Bool)

(assert (=> b!562414 (=> (not res!353716) (not e!324121))))

(assert (=> b!562414 (= res!353716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562415 () Bool)

(declare-fun res!353718 () Bool)

(assert (=> b!562415 (=> (not res!353718) (not e!324122))))

(assert (=> b!562415 (= res!353718 (validKeyInArray!0 k!1914))))

(declare-fun b!562416 () Bool)

(assert (=> b!562416 (= e!324127 true)))

(assert (=> b!562416 (= lt!256400 lt!256393)))

(declare-fun lt!256396 () Unit!17574)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17574)

(assert (=> b!562416 (= lt!256396 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52754 lt!256392) (index!23829 lt!256392) (index!23829 lt!256392) mask!3119))))

(declare-fun res!353714 () Bool)

(assert (=> start!51476 (=> (not res!353714) (not e!324122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51476 (= res!353714 (validMask!0 mask!3119))))

(assert (=> start!51476 e!324122))

(assert (=> start!51476 true))

(declare-fun array_inv!12718 (array!35295) Bool)

(assert (=> start!51476 (array_inv!12718 a!3118)))

(declare-fun b!562417 () Bool)

(assert (=> b!562417 (= e!324121 e!324123)))

(declare-fun res!353720 () Bool)

(assert (=> b!562417 (=> (not res!353720) (not e!324123))))

(declare-fun lt!256398 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35295 (_ BitVec 32)) SeekEntryResult!5400)

(assert (=> b!562417 (= res!353720 (= lt!256392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256398 lt!256402 lt!256390 mask!3119)))))

(declare-fun lt!256399 () (_ BitVec 32))

(assert (=> b!562417 (= lt!256392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256399 (select (arr!16944 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562417 (= lt!256398 (toIndex!0 lt!256402 mask!3119))))

(assert (=> b!562417 (= lt!256402 (select (store (arr!16944 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562417 (= lt!256399 (toIndex!0 (select (arr!16944 a!3118) j!142) mask!3119))))

(assert (=> b!562417 (= lt!256390 (array!35296 (store (arr!16944 a!3118) i!1132 k!1914) (size!17308 a!3118)))))

(declare-fun b!562418 () Bool)

(declare-fun res!353712 () Bool)

(assert (=> b!562418 (=> (not res!353712) (not e!324122))))

(declare-fun arrayContainsKey!0 (array!35295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562418 (= res!353712 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51476 res!353714) b!562409))

(assert (= (and b!562409 res!353715) b!562411))

(assert (= (and b!562411 res!353713) b!562415))

(assert (= (and b!562415 res!353718) b!562418))

(assert (= (and b!562418 res!353712) b!562407))

(assert (= (and b!562407 res!353717) b!562414))

(assert (= (and b!562414 res!353716) b!562412))

(assert (= (and b!562412 res!353711) b!562417))

(assert (= (and b!562417 res!353720) b!562408))

(assert (= (and b!562408 (not res!353719)) b!562410))

(assert (= (and b!562410 (not res!353710)) b!562413))

(assert (= (and b!562413 (not res!353709)) b!562416))

(declare-fun m!540535 () Bool)

(assert (=> b!562411 m!540535))

(assert (=> b!562411 m!540535))

(declare-fun m!540537 () Bool)

(assert (=> b!562411 m!540537))

(assert (=> b!562417 m!540535))

(declare-fun m!540539 () Bool)

(assert (=> b!562417 m!540539))

(assert (=> b!562417 m!540535))

(declare-fun m!540541 () Bool)

(assert (=> b!562417 m!540541))

(assert (=> b!562417 m!540535))

(declare-fun m!540543 () Bool)

(assert (=> b!562417 m!540543))

(declare-fun m!540545 () Bool)

(assert (=> b!562417 m!540545))

(declare-fun m!540547 () Bool)

(assert (=> b!562417 m!540547))

(declare-fun m!540549 () Bool)

(assert (=> b!562417 m!540549))

(declare-fun m!540551 () Bool)

(assert (=> b!562412 m!540551))

(declare-fun m!540553 () Bool)

(assert (=> b!562407 m!540553))

(assert (=> b!562408 m!540535))

(assert (=> b!562408 m!540535))

(declare-fun m!540555 () Bool)

(assert (=> b!562408 m!540555))

(declare-fun m!540557 () Bool)

(assert (=> b!562408 m!540557))

(declare-fun m!540559 () Bool)

(assert (=> b!562408 m!540559))

(declare-fun m!540561 () Bool)

(assert (=> start!51476 m!540561))

(declare-fun m!540563 () Bool)

(assert (=> start!51476 m!540563))

(declare-fun m!540565 () Bool)

(assert (=> b!562415 m!540565))

(declare-fun m!540567 () Bool)

(assert (=> b!562418 m!540567))

(declare-fun m!540569 () Bool)

(assert (=> b!562416 m!540569))

(assert (=> b!562410 m!540535))

(declare-fun m!540571 () Bool)

(assert (=> b!562410 m!540571))

(declare-fun m!540573 () Bool)

(assert (=> b!562414 m!540573))

(assert (=> b!562413 m!540535))

(declare-fun m!540575 () Bool)

(assert (=> b!562413 m!540575))

(declare-fun m!540577 () Bool)

(assert (=> b!562413 m!540577))

(assert (=> b!562413 m!540545))

(declare-fun m!540579 () Bool)

(assert (=> b!562413 m!540579))

(assert (=> b!562413 m!540535))

(declare-fun m!540581 () Bool)

(assert (=> b!562413 m!540581))

(push 1)

