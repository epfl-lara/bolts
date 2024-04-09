; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50342 () Bool)

(assert start!50342)

(declare-fun b!550397 () Bool)

(declare-fun res!343514 () Bool)

(declare-fun e!317737 () Bool)

(assert (=> b!550397 (=> (not res!343514) (not e!317737))))

(declare-datatypes ((array!34692 0))(
  ( (array!34693 (arr!16656 (Array (_ BitVec 32) (_ BitVec 64))) (size!17020 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34692)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550397 (= res!343514 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550398 () Bool)

(declare-fun res!343515 () Bool)

(assert (=> b!550398 (=> (not res!343515) (not e!317737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550398 (= res!343515 (validKeyInArray!0 k!1914))))

(declare-fun b!550399 () Bool)

(declare-fun e!317734 () Bool)

(assert (=> b!550399 (= e!317737 e!317734)))

(declare-fun res!343510 () Bool)

(assert (=> b!550399 (=> (not res!343510) (not e!317734))))

(declare-datatypes ((SeekEntryResult!5112 0))(
  ( (MissingZero!5112 (index!22675 (_ BitVec 32))) (Found!5112 (index!22676 (_ BitVec 32))) (Intermediate!5112 (undefined!5924 Bool) (index!22677 (_ BitVec 32)) (x!51635 (_ BitVec 32))) (Undefined!5112) (MissingVacant!5112 (index!22678 (_ BitVec 32))) )
))
(declare-fun lt!250544 () SeekEntryResult!5112)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550399 (= res!343510 (or (= lt!250544 (MissingZero!5112 i!1132)) (= lt!250544 (MissingVacant!5112 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34692 (_ BitVec 32)) SeekEntryResult!5112)

(assert (=> b!550399 (= lt!250544 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550400 () Bool)

(assert (=> b!550400 (= e!317734 (not true))))

(declare-fun e!317735 () Bool)

(assert (=> b!550400 e!317735))

(declare-fun res!343511 () Bool)

(assert (=> b!550400 (=> (not res!343511) (not e!317735))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34692 (_ BitVec 32)) Bool)

(assert (=> b!550400 (= res!343511 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16998 0))(
  ( (Unit!16999) )
))
(declare-fun lt!250543 () Unit!16998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16998)

(assert (=> b!550400 (= lt!250543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550401 () Bool)

(declare-fun res!343513 () Bool)

(assert (=> b!550401 (=> (not res!343513) (not e!317734))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34692 (_ BitVec 32)) SeekEntryResult!5112)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550401 (= res!343513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16656 a!3118) j!142) mask!3119) (select (arr!16656 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16656 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16656 a!3118) i!1132 k!1914) j!142) (array!34693 (store (arr!16656 a!3118) i!1132 k!1914) (size!17020 a!3118)) mask!3119)))))

(declare-fun b!550402 () Bool)

(declare-fun res!343512 () Bool)

(assert (=> b!550402 (=> (not res!343512) (not e!317734))))

(declare-datatypes ((List!10789 0))(
  ( (Nil!10786) (Cons!10785 (h!11761 (_ BitVec 64)) (t!17025 List!10789)) )
))
(declare-fun arrayNoDuplicates!0 (array!34692 (_ BitVec 32) List!10789) Bool)

(assert (=> b!550402 (= res!343512 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10786))))

(declare-fun b!550403 () Bool)

(declare-fun res!343508 () Bool)

(assert (=> b!550403 (=> (not res!343508) (not e!317737))))

(assert (=> b!550403 (= res!343508 (validKeyInArray!0 (select (arr!16656 a!3118) j!142)))))

(declare-fun b!550404 () Bool)

(declare-fun res!343509 () Bool)

(assert (=> b!550404 (=> (not res!343509) (not e!317737))))

(assert (=> b!550404 (= res!343509 (and (= (size!17020 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17020 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17020 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550406 () Bool)

(assert (=> b!550406 (= e!317735 (= (seekEntryOrOpen!0 (select (arr!16656 a!3118) j!142) a!3118 mask!3119) (Found!5112 j!142)))))

(declare-fun res!343516 () Bool)

(assert (=> start!50342 (=> (not res!343516) (not e!317737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50342 (= res!343516 (validMask!0 mask!3119))))

(assert (=> start!50342 e!317737))

(assert (=> start!50342 true))

(declare-fun array_inv!12430 (array!34692) Bool)

(assert (=> start!50342 (array_inv!12430 a!3118)))

(declare-fun b!550405 () Bool)

(declare-fun res!343517 () Bool)

(assert (=> b!550405 (=> (not res!343517) (not e!317734))))

(assert (=> b!550405 (= res!343517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50342 res!343516) b!550404))

(assert (= (and b!550404 res!343509) b!550403))

(assert (= (and b!550403 res!343508) b!550398))

(assert (= (and b!550398 res!343515) b!550397))

(assert (= (and b!550397 res!343514) b!550399))

(assert (= (and b!550399 res!343510) b!550405))

(assert (= (and b!550405 res!343517) b!550402))

(assert (= (and b!550402 res!343512) b!550401))

(assert (= (and b!550401 res!343513) b!550400))

(assert (= (and b!550400 res!343511) b!550406))

(declare-fun m!527395 () Bool)

(assert (=> b!550400 m!527395))

(declare-fun m!527397 () Bool)

(assert (=> b!550400 m!527397))

(declare-fun m!527399 () Bool)

(assert (=> b!550397 m!527399))

(declare-fun m!527401 () Bool)

(assert (=> b!550406 m!527401))

(assert (=> b!550406 m!527401))

(declare-fun m!527403 () Bool)

(assert (=> b!550406 m!527403))

(declare-fun m!527405 () Bool)

(assert (=> b!550399 m!527405))

(declare-fun m!527407 () Bool)

(assert (=> b!550398 m!527407))

(assert (=> b!550403 m!527401))

(assert (=> b!550403 m!527401))

(declare-fun m!527409 () Bool)

(assert (=> b!550403 m!527409))

(declare-fun m!527411 () Bool)

(assert (=> start!50342 m!527411))

(declare-fun m!527413 () Bool)

(assert (=> start!50342 m!527413))

(declare-fun m!527415 () Bool)

(assert (=> b!550402 m!527415))

(declare-fun m!527417 () Bool)

(assert (=> b!550405 m!527417))

(assert (=> b!550401 m!527401))

(declare-fun m!527419 () Bool)

(assert (=> b!550401 m!527419))

(assert (=> b!550401 m!527401))

(declare-fun m!527421 () Bool)

(assert (=> b!550401 m!527421))

(declare-fun m!527423 () Bool)

(assert (=> b!550401 m!527423))

(assert (=> b!550401 m!527421))

(declare-fun m!527425 () Bool)

(assert (=> b!550401 m!527425))

(assert (=> b!550401 m!527419))

(assert (=> b!550401 m!527401))

(declare-fun m!527427 () Bool)

(assert (=> b!550401 m!527427))

(declare-fun m!527429 () Bool)

(assert (=> b!550401 m!527429))

(assert (=> b!550401 m!527421))

(assert (=> b!550401 m!527423))

(push 1)

