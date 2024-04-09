; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51722 () Bool)

(assert start!51722)

(declare-fun b!565358 () Bool)

(declare-fun res!356484 () Bool)

(declare-fun e!325500 () Bool)

(assert (=> b!565358 (=> (not res!356484) (not e!325500))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35484 0))(
  ( (array!35485 (arr!17037 (Array (_ BitVec 32) (_ BitVec 64))) (size!17401 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35484)

(assert (=> b!565358 (= res!356484 (and (= (size!17401 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17401 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17401 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565359 () Bool)

(declare-fun res!356483 () Bool)

(declare-fun e!325498 () Bool)

(assert (=> b!565359 (=> (not res!356483) (not e!325498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35484 (_ BitVec 32)) Bool)

(assert (=> b!565359 (= res!356483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565360 () Bool)

(declare-fun res!356477 () Bool)

(assert (=> b!565360 (=> (not res!356477) (not e!325498))))

(declare-datatypes ((List!11170 0))(
  ( (Nil!11167) (Cons!11166 (h!12172 (_ BitVec 64)) (t!17406 List!11170)) )
))
(declare-fun arrayNoDuplicates!0 (array!35484 (_ BitVec 32) List!11170) Bool)

(assert (=> b!565360 (= res!356477 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11167))))

(declare-fun res!356478 () Bool)

(assert (=> start!51722 (=> (not res!356478) (not e!325500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51722 (= res!356478 (validMask!0 mask!3119))))

(assert (=> start!51722 e!325500))

(assert (=> start!51722 true))

(declare-fun array_inv!12811 (array!35484) Bool)

(assert (=> start!51722 (array_inv!12811 a!3118)))

(declare-fun b!565361 () Bool)

(declare-fun res!356481 () Bool)

(assert (=> b!565361 (=> (not res!356481) (not e!325500))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565361 (= res!356481 (validKeyInArray!0 k!1914))))

(declare-fun e!325499 () Bool)

(declare-fun b!565362 () Bool)

(declare-datatypes ((SeekEntryResult!5493 0))(
  ( (MissingZero!5493 (index!24199 (_ BitVec 32))) (Found!5493 (index!24200 (_ BitVec 32))) (Intermediate!5493 (undefined!6305 Bool) (index!24201 (_ BitVec 32)) (x!53101 (_ BitVec 32))) (Undefined!5493) (MissingVacant!5493 (index!24202 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35484 (_ BitVec 32)) SeekEntryResult!5493)

(assert (=> b!565362 (= e!325499 (= (seekEntryOrOpen!0 (select (arr!17037 a!3118) j!142) a!3118 mask!3119) (Found!5493 j!142)))))

(declare-fun b!565363 () Bool)

(declare-fun res!356480 () Bool)

(assert (=> b!565363 (=> (not res!356480) (not e!325500))))

(assert (=> b!565363 (= res!356480 (validKeyInArray!0 (select (arr!17037 a!3118) j!142)))))

(declare-fun b!565364 () Bool)

(declare-fun res!356486 () Bool)

(assert (=> b!565364 (=> (not res!356486) (not e!325500))))

(declare-fun arrayContainsKey!0 (array!35484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565364 (= res!356486 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565365 () Bool)

(assert (=> b!565365 (= e!325498 (not true))))

(assert (=> b!565365 e!325499))

(declare-fun res!356482 () Bool)

(assert (=> b!565365 (=> (not res!356482) (not e!325499))))

(assert (=> b!565365 (= res!356482 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17688 0))(
  ( (Unit!17689) )
))
(declare-fun lt!257873 () Unit!17688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17688)

(assert (=> b!565365 (= lt!257873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565366 () Bool)

(declare-fun res!356485 () Bool)

(assert (=> b!565366 (=> (not res!356485) (not e!325498))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35484 (_ BitVec 32)) SeekEntryResult!5493)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565366 (= res!356485 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17037 a!3118) j!142) mask!3119) (select (arr!17037 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17037 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17037 a!3118) i!1132 k!1914) j!142) (array!35485 (store (arr!17037 a!3118) i!1132 k!1914) (size!17401 a!3118)) mask!3119)))))

(declare-fun b!565367 () Bool)

(assert (=> b!565367 (= e!325500 e!325498)))

(declare-fun res!356479 () Bool)

(assert (=> b!565367 (=> (not res!356479) (not e!325498))))

(declare-fun lt!257872 () SeekEntryResult!5493)

(assert (=> b!565367 (= res!356479 (or (= lt!257872 (MissingZero!5493 i!1132)) (= lt!257872 (MissingVacant!5493 i!1132))))))

(assert (=> b!565367 (= lt!257872 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51722 res!356478) b!565358))

(assert (= (and b!565358 res!356484) b!565363))

(assert (= (and b!565363 res!356480) b!565361))

(assert (= (and b!565361 res!356481) b!565364))

(assert (= (and b!565364 res!356486) b!565367))

(assert (= (and b!565367 res!356479) b!565359))

(assert (= (and b!565359 res!356483) b!565360))

(assert (= (and b!565360 res!356477) b!565366))

(assert (= (and b!565366 res!356485) b!565365))

(assert (= (and b!565365 res!356482) b!565362))

(declare-fun m!543877 () Bool)

(assert (=> b!565359 m!543877))

(declare-fun m!543879 () Bool)

(assert (=> b!565366 m!543879))

(declare-fun m!543881 () Bool)

(assert (=> b!565366 m!543881))

(assert (=> b!565366 m!543879))

(declare-fun m!543883 () Bool)

(assert (=> b!565366 m!543883))

(declare-fun m!543885 () Bool)

(assert (=> b!565366 m!543885))

(assert (=> b!565366 m!543883))

(declare-fun m!543887 () Bool)

(assert (=> b!565366 m!543887))

(assert (=> b!565366 m!543881))

(assert (=> b!565366 m!543879))

(declare-fun m!543889 () Bool)

(assert (=> b!565366 m!543889))

(declare-fun m!543891 () Bool)

(assert (=> b!565366 m!543891))

(assert (=> b!565366 m!543883))

(assert (=> b!565366 m!543885))

(assert (=> b!565362 m!543879))

(assert (=> b!565362 m!543879))

(declare-fun m!543893 () Bool)

(assert (=> b!565362 m!543893))

(declare-fun m!543895 () Bool)

(assert (=> b!565364 m!543895))

(declare-fun m!543897 () Bool)

(assert (=> b!565367 m!543897))

(declare-fun m!543899 () Bool)

(assert (=> b!565365 m!543899))

(declare-fun m!543901 () Bool)

(assert (=> b!565365 m!543901))

(declare-fun m!543903 () Bool)

(assert (=> b!565361 m!543903))

(declare-fun m!543905 () Bool)

(assert (=> b!565360 m!543905))

(declare-fun m!543907 () Bool)

(assert (=> start!51722 m!543907))

(declare-fun m!543909 () Bool)

(assert (=> start!51722 m!543909))

(assert (=> b!565363 m!543879))

(assert (=> b!565363 m!543879))

(declare-fun m!543911 () Bool)

(assert (=> b!565363 m!543911))

(push 1)

