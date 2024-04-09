; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50660 () Bool)

(assert start!50660)

(declare-fun b!553358 () Bool)

(declare-fun res!345920 () Bool)

(declare-fun e!319198 () Bool)

(assert (=> b!553358 (=> (not res!345920) (not e!319198))))

(declare-datatypes ((array!34839 0))(
  ( (array!34840 (arr!16725 (Array (_ BitVec 32) (_ BitVec 64))) (size!17089 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34839)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553358 (= res!345920 (validKeyInArray!0 (select (arr!16725 a!3118) j!142)))))

(declare-datatypes ((SeekEntryResult!5181 0))(
  ( (MissingZero!5181 (index!22951 (_ BitVec 32))) (Found!5181 (index!22952 (_ BitVec 32))) (Intermediate!5181 (undefined!5993 Bool) (index!22953 (_ BitVec 32)) (x!51906 (_ BitVec 32))) (Undefined!5181) (MissingVacant!5181 (index!22954 (_ BitVec 32))) )
))
(declare-fun lt!251480 () SeekEntryResult!5181)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!553359 () Bool)

(declare-fun e!319197 () Bool)

(assert (=> b!553359 (= e!319197 (not (or (not (is-Intermediate!5181 lt!251480)) (undefined!5993 lt!251480) (not (= (select (arr!16725 a!3118) (index!22953 lt!251480)) (select (arr!16725 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!319195 () Bool)

(assert (=> b!553359 e!319195))

(declare-fun res!345928 () Bool)

(assert (=> b!553359 (=> (not res!345928) (not e!319195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34839 (_ BitVec 32)) Bool)

(assert (=> b!553359 (= res!345928 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17136 0))(
  ( (Unit!17137) )
))
(declare-fun lt!251477 () Unit!17136)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17136)

(assert (=> b!553359 (= lt!251477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553360 () Bool)

(declare-fun res!345924 () Bool)

(assert (=> b!553360 (=> (not res!345924) (not e!319198))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553360 (= res!345924 (and (= (size!17089 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17089 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17089 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553361 () Bool)

(declare-fun res!345923 () Bool)

(assert (=> b!553361 (=> (not res!345923) (not e!319198))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553361 (= res!345923 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553362 () Bool)

(declare-fun e!319194 () Bool)

(assert (=> b!553362 (= e!319194 e!319197)))

(declare-fun res!345926 () Bool)

(assert (=> b!553362 (=> (not res!345926) (not e!319197))))

(declare-fun lt!251479 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34839 (_ BitVec 32)) SeekEntryResult!5181)

(assert (=> b!553362 (= res!345926 (= lt!251480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251479 (select (store (arr!16725 a!3118) i!1132 k!1914) j!142) (array!34840 (store (arr!16725 a!3118) i!1132 k!1914) (size!17089 a!3118)) mask!3119)))))

(declare-fun lt!251478 () (_ BitVec 32))

(assert (=> b!553362 (= lt!251480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251478 (select (arr!16725 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553362 (= lt!251479 (toIndex!0 (select (store (arr!16725 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553362 (= lt!251478 (toIndex!0 (select (arr!16725 a!3118) j!142) mask!3119))))

(declare-fun b!553363 () Bool)

(declare-fun res!345929 () Bool)

(assert (=> b!553363 (=> (not res!345929) (not e!319194))))

(declare-datatypes ((List!10858 0))(
  ( (Nil!10855) (Cons!10854 (h!11839 (_ BitVec 64)) (t!17094 List!10858)) )
))
(declare-fun arrayNoDuplicates!0 (array!34839 (_ BitVec 32) List!10858) Bool)

(assert (=> b!553363 (= res!345929 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10855))))

(declare-fun b!553365 () Bool)

(assert (=> b!553365 (= e!319198 e!319194)))

(declare-fun res!345922 () Bool)

(assert (=> b!553365 (=> (not res!345922) (not e!319194))))

(declare-fun lt!251476 () SeekEntryResult!5181)

(assert (=> b!553365 (= res!345922 (or (= lt!251476 (MissingZero!5181 i!1132)) (= lt!251476 (MissingVacant!5181 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34839 (_ BitVec 32)) SeekEntryResult!5181)

(assert (=> b!553365 (= lt!251476 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553366 () Bool)

(declare-fun res!345925 () Bool)

(assert (=> b!553366 (=> (not res!345925) (not e!319198))))

(assert (=> b!553366 (= res!345925 (validKeyInArray!0 k!1914))))

(declare-fun b!553367 () Bool)

(assert (=> b!553367 (= e!319195 (= (seekEntryOrOpen!0 (select (arr!16725 a!3118) j!142) a!3118 mask!3119) (Found!5181 j!142)))))

(declare-fun b!553364 () Bool)

(declare-fun res!345921 () Bool)

(assert (=> b!553364 (=> (not res!345921) (not e!319194))))

(assert (=> b!553364 (= res!345921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345927 () Bool)

(assert (=> start!50660 (=> (not res!345927) (not e!319198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50660 (= res!345927 (validMask!0 mask!3119))))

(assert (=> start!50660 e!319198))

(assert (=> start!50660 true))

(declare-fun array_inv!12499 (array!34839) Bool)

(assert (=> start!50660 (array_inv!12499 a!3118)))

(assert (= (and start!50660 res!345927) b!553360))

(assert (= (and b!553360 res!345924) b!553358))

(assert (= (and b!553358 res!345920) b!553366))

(assert (= (and b!553366 res!345925) b!553361))

(assert (= (and b!553361 res!345923) b!553365))

(assert (= (and b!553365 res!345922) b!553364))

(assert (= (and b!553364 res!345921) b!553363))

(assert (= (and b!553363 res!345929) b!553362))

(assert (= (and b!553362 res!345926) b!553359))

(assert (= (and b!553359 res!345928) b!553367))

(declare-fun m!530497 () Bool)

(assert (=> start!50660 m!530497))

(declare-fun m!530499 () Bool)

(assert (=> start!50660 m!530499))

(declare-fun m!530501 () Bool)

(assert (=> b!553366 m!530501))

(declare-fun m!530503 () Bool)

(assert (=> b!553361 m!530503))

(declare-fun m!530505 () Bool)

(assert (=> b!553359 m!530505))

(declare-fun m!530507 () Bool)

(assert (=> b!553359 m!530507))

(declare-fun m!530509 () Bool)

(assert (=> b!553359 m!530509))

(declare-fun m!530511 () Bool)

(assert (=> b!553359 m!530511))

(declare-fun m!530513 () Bool)

(assert (=> b!553363 m!530513))

(assert (=> b!553362 m!530507))

(declare-fun m!530515 () Bool)

(assert (=> b!553362 m!530515))

(assert (=> b!553362 m!530507))

(declare-fun m!530517 () Bool)

(assert (=> b!553362 m!530517))

(declare-fun m!530519 () Bool)

(assert (=> b!553362 m!530519))

(assert (=> b!553362 m!530517))

(declare-fun m!530521 () Bool)

(assert (=> b!553362 m!530521))

(assert (=> b!553362 m!530507))

(declare-fun m!530523 () Bool)

(assert (=> b!553362 m!530523))

(assert (=> b!553362 m!530517))

(declare-fun m!530525 () Bool)

(assert (=> b!553362 m!530525))

(declare-fun m!530527 () Bool)

(assert (=> b!553364 m!530527))

(assert (=> b!553358 m!530507))

(assert (=> b!553358 m!530507))

(declare-fun m!530529 () Bool)

(assert (=> b!553358 m!530529))

(declare-fun m!530531 () Bool)

(assert (=> b!553365 m!530531))

(assert (=> b!553367 m!530507))

(assert (=> b!553367 m!530507))

(declare-fun m!530533 () Bool)

(assert (=> b!553367 m!530533))

(push 1)

