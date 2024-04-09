; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50658 () Bool)

(assert start!50658)

(declare-fun res!345891 () Bool)

(declare-fun e!319182 () Bool)

(assert (=> start!50658 (=> (not res!345891) (not e!319182))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50658 (= res!345891 (validMask!0 mask!3119))))

(assert (=> start!50658 e!319182))

(assert (=> start!50658 true))

(declare-datatypes ((array!34837 0))(
  ( (array!34838 (arr!16724 (Array (_ BitVec 32) (_ BitVec 64))) (size!17088 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34837)

(declare-fun array_inv!12498 (array!34837) Bool)

(assert (=> start!50658 (array_inv!12498 a!3118)))

(declare-fun b!553328 () Bool)

(declare-fun res!345893 () Bool)

(assert (=> b!553328 (=> (not res!345893) (not e!319182))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553328 (= res!345893 (validKeyInArray!0 (select (arr!16724 a!3118) j!142)))))

(declare-fun b!553329 () Bool)

(declare-fun res!345899 () Bool)

(assert (=> b!553329 (=> (not res!345899) (not e!319182))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553329 (= res!345899 (and (= (size!17088 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17088 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17088 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553330 () Bool)

(declare-fun res!345894 () Bool)

(declare-fun e!319181 () Bool)

(assert (=> b!553330 (=> (not res!345894) (not e!319181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34837 (_ BitVec 32)) Bool)

(assert (=> b!553330 (= res!345894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553331 () Bool)

(declare-fun res!345892 () Bool)

(assert (=> b!553331 (=> (not res!345892) (not e!319181))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5180 0))(
  ( (MissingZero!5180 (index!22947 (_ BitVec 32))) (Found!5180 (index!22948 (_ BitVec 32))) (Intermediate!5180 (undefined!5992 Bool) (index!22949 (_ BitVec 32)) (x!51897 (_ BitVec 32))) (Undefined!5180) (MissingVacant!5180 (index!22950 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34837 (_ BitVec 32)) SeekEntryResult!5180)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553331 (= res!345892 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16724 a!3118) j!142) mask!3119) (select (arr!16724 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16724 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16724 a!3118) i!1132 k!1914) j!142) (array!34838 (store (arr!16724 a!3118) i!1132 k!1914) (size!17088 a!3118)) mask!3119)))))

(declare-fun b!553332 () Bool)

(declare-fun res!345898 () Bool)

(assert (=> b!553332 (=> (not res!345898) (not e!319182))))

(assert (=> b!553332 (= res!345898 (validKeyInArray!0 k!1914))))

(declare-fun b!553333 () Bool)

(declare-fun e!319183 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34837 (_ BitVec 32)) SeekEntryResult!5180)

(assert (=> b!553333 (= e!319183 (= (seekEntryOrOpen!0 (select (arr!16724 a!3118) j!142) a!3118 mask!3119) (Found!5180 j!142)))))

(declare-fun b!553334 () Bool)

(assert (=> b!553334 (= e!319181 (not true))))

(assert (=> b!553334 e!319183))

(declare-fun res!345896 () Bool)

(assert (=> b!553334 (=> (not res!345896) (not e!319183))))

(assert (=> b!553334 (= res!345896 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17134 0))(
  ( (Unit!17135) )
))
(declare-fun lt!251464 () Unit!17134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17134)

(assert (=> b!553334 (= lt!251464 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553335 () Bool)

(assert (=> b!553335 (= e!319182 e!319181)))

(declare-fun res!345897 () Bool)

(assert (=> b!553335 (=> (not res!345897) (not e!319181))))

(declare-fun lt!251465 () SeekEntryResult!5180)

(assert (=> b!553335 (= res!345897 (or (= lt!251465 (MissingZero!5180 i!1132)) (= lt!251465 (MissingVacant!5180 i!1132))))))

(assert (=> b!553335 (= lt!251465 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553336 () Bool)

(declare-fun res!345895 () Bool)

(assert (=> b!553336 (=> (not res!345895) (not e!319182))))

(declare-fun arrayContainsKey!0 (array!34837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553336 (= res!345895 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553337 () Bool)

(declare-fun res!345890 () Bool)

(assert (=> b!553337 (=> (not res!345890) (not e!319181))))

(declare-datatypes ((List!10857 0))(
  ( (Nil!10854) (Cons!10853 (h!11838 (_ BitVec 64)) (t!17093 List!10857)) )
))
(declare-fun arrayNoDuplicates!0 (array!34837 (_ BitVec 32) List!10857) Bool)

(assert (=> b!553337 (= res!345890 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10854))))

(assert (= (and start!50658 res!345891) b!553329))

(assert (= (and b!553329 res!345899) b!553328))

(assert (= (and b!553328 res!345893) b!553332))

(assert (= (and b!553332 res!345898) b!553336))

(assert (= (and b!553336 res!345895) b!553335))

(assert (= (and b!553335 res!345897) b!553330))

(assert (= (and b!553330 res!345894) b!553337))

(assert (= (and b!553337 res!345890) b!553331))

(assert (= (and b!553331 res!345892) b!553334))

(assert (= (and b!553334 res!345896) b!553333))

(declare-fun m!530461 () Bool)

(assert (=> b!553334 m!530461))

(declare-fun m!530463 () Bool)

(assert (=> b!553334 m!530463))

(declare-fun m!530465 () Bool)

(assert (=> b!553330 m!530465))

(declare-fun m!530467 () Bool)

(assert (=> b!553337 m!530467))

(declare-fun m!530469 () Bool)

(assert (=> b!553328 m!530469))

(assert (=> b!553328 m!530469))

(declare-fun m!530471 () Bool)

(assert (=> b!553328 m!530471))

(declare-fun m!530473 () Bool)

(assert (=> b!553332 m!530473))

(assert (=> b!553333 m!530469))

(assert (=> b!553333 m!530469))

(declare-fun m!530475 () Bool)

(assert (=> b!553333 m!530475))

(declare-fun m!530477 () Bool)

(assert (=> b!553335 m!530477))

(declare-fun m!530479 () Bool)

(assert (=> b!553336 m!530479))

(declare-fun m!530481 () Bool)

(assert (=> start!50658 m!530481))

(declare-fun m!530483 () Bool)

(assert (=> start!50658 m!530483))

(assert (=> b!553331 m!530469))

(declare-fun m!530485 () Bool)

(assert (=> b!553331 m!530485))

(assert (=> b!553331 m!530469))

(declare-fun m!530487 () Bool)

(assert (=> b!553331 m!530487))

(declare-fun m!530489 () Bool)

(assert (=> b!553331 m!530489))

(assert (=> b!553331 m!530487))

(declare-fun m!530491 () Bool)

(assert (=> b!553331 m!530491))

(assert (=> b!553331 m!530485))

(assert (=> b!553331 m!530469))

(declare-fun m!530493 () Bool)

(assert (=> b!553331 m!530493))

(declare-fun m!530495 () Bool)

(assert (=> b!553331 m!530495))

(assert (=> b!553331 m!530487))

(assert (=> b!553331 m!530489))

(push 1)

