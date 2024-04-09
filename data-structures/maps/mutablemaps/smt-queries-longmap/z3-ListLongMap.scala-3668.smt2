; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50644 () Bool)

(assert start!50644)

(declare-fun b!553109 () Bool)

(declare-fun e!319080 () Bool)

(assert (=> b!553109 (= e!319080 (not true))))

(declare-fun e!319078 () Bool)

(assert (=> b!553109 e!319078))

(declare-fun res!345676 () Bool)

(assert (=> b!553109 (=> (not res!345676) (not e!319078))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34823 0))(
  ( (array!34824 (arr!16717 (Array (_ BitVec 32) (_ BitVec 64))) (size!17081 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34823)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34823 (_ BitVec 32)) Bool)

(assert (=> b!553109 (= res!345676 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17120 0))(
  ( (Unit!17121) )
))
(declare-fun lt!251395 () Unit!17120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34823 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17120)

(assert (=> b!553109 (= lt!251395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553110 () Bool)

(declare-fun res!345677 () Bool)

(assert (=> b!553110 (=> (not res!345677) (not e!319080))))

(declare-datatypes ((List!10850 0))(
  ( (Nil!10847) (Cons!10846 (h!11831 (_ BitVec 64)) (t!17086 List!10850)) )
))
(declare-fun arrayNoDuplicates!0 (array!34823 (_ BitVec 32) List!10850) Bool)

(assert (=> b!553110 (= res!345677 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10847))))

(declare-fun res!345675 () Bool)

(declare-fun e!319079 () Bool)

(assert (=> start!50644 (=> (not res!345675) (not e!319079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50644 (= res!345675 (validMask!0 mask!3119))))

(assert (=> start!50644 e!319079))

(assert (=> start!50644 true))

(declare-fun array_inv!12491 (array!34823) Bool)

(assert (=> start!50644 (array_inv!12491 a!3118)))

(declare-fun b!553111 () Bool)

(declare-fun res!345673 () Bool)

(assert (=> b!553111 (=> (not res!345673) (not e!319080))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5173 0))(
  ( (MissingZero!5173 (index!22919 (_ BitVec 32))) (Found!5173 (index!22920 (_ BitVec 32))) (Intermediate!5173 (undefined!5985 Bool) (index!22921 (_ BitVec 32)) (x!51874 (_ BitVec 32))) (Undefined!5173) (MissingVacant!5173 (index!22922 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34823 (_ BitVec 32)) SeekEntryResult!5173)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553111 (= res!345673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16717 a!3118) j!142) mask!3119) (select (arr!16717 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16717 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16717 a!3118) i!1132 k0!1914) j!142) (array!34824 (store (arr!16717 a!3118) i!1132 k0!1914) (size!17081 a!3118)) mask!3119)))))

(declare-fun b!553112 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34823 (_ BitVec 32)) SeekEntryResult!5173)

(assert (=> b!553112 (= e!319078 (= (seekEntryOrOpen!0 (select (arr!16717 a!3118) j!142) a!3118 mask!3119) (Found!5173 j!142)))))

(declare-fun b!553113 () Bool)

(declare-fun res!345678 () Bool)

(assert (=> b!553113 (=> (not res!345678) (not e!319079))))

(declare-fun arrayContainsKey!0 (array!34823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553113 (= res!345678 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553114 () Bool)

(declare-fun res!345680 () Bool)

(assert (=> b!553114 (=> (not res!345680) (not e!319079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553114 (= res!345680 (validKeyInArray!0 k0!1914))))

(declare-fun b!553115 () Bool)

(declare-fun res!345672 () Bool)

(assert (=> b!553115 (=> (not res!345672) (not e!319080))))

(assert (=> b!553115 (= res!345672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553116 () Bool)

(declare-fun res!345674 () Bool)

(assert (=> b!553116 (=> (not res!345674) (not e!319079))))

(assert (=> b!553116 (= res!345674 (and (= (size!17081 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17081 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17081 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553117 () Bool)

(declare-fun res!345679 () Bool)

(assert (=> b!553117 (=> (not res!345679) (not e!319079))))

(assert (=> b!553117 (= res!345679 (validKeyInArray!0 (select (arr!16717 a!3118) j!142)))))

(declare-fun b!553118 () Bool)

(assert (=> b!553118 (= e!319079 e!319080)))

(declare-fun res!345671 () Bool)

(assert (=> b!553118 (=> (not res!345671) (not e!319080))))

(declare-fun lt!251396 () SeekEntryResult!5173)

(assert (=> b!553118 (= res!345671 (or (= lt!251396 (MissingZero!5173 i!1132)) (= lt!251396 (MissingVacant!5173 i!1132))))))

(assert (=> b!553118 (= lt!251396 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50644 res!345675) b!553116))

(assert (= (and b!553116 res!345674) b!553117))

(assert (= (and b!553117 res!345679) b!553114))

(assert (= (and b!553114 res!345680) b!553113))

(assert (= (and b!553113 res!345678) b!553118))

(assert (= (and b!553118 res!345671) b!553115))

(assert (= (and b!553115 res!345672) b!553110))

(assert (= (and b!553110 res!345677) b!553111))

(assert (= (and b!553111 res!345673) b!553109))

(assert (= (and b!553109 res!345676) b!553112))

(declare-fun m!530203 () Bool)

(assert (=> b!553118 m!530203))

(declare-fun m!530205 () Bool)

(assert (=> b!553112 m!530205))

(assert (=> b!553112 m!530205))

(declare-fun m!530207 () Bool)

(assert (=> b!553112 m!530207))

(declare-fun m!530209 () Bool)

(assert (=> b!553109 m!530209))

(declare-fun m!530211 () Bool)

(assert (=> b!553109 m!530211))

(assert (=> b!553111 m!530205))

(declare-fun m!530213 () Bool)

(assert (=> b!553111 m!530213))

(assert (=> b!553111 m!530205))

(declare-fun m!530215 () Bool)

(assert (=> b!553111 m!530215))

(declare-fun m!530217 () Bool)

(assert (=> b!553111 m!530217))

(assert (=> b!553111 m!530215))

(declare-fun m!530219 () Bool)

(assert (=> b!553111 m!530219))

(assert (=> b!553111 m!530213))

(assert (=> b!553111 m!530205))

(declare-fun m!530221 () Bool)

(assert (=> b!553111 m!530221))

(declare-fun m!530223 () Bool)

(assert (=> b!553111 m!530223))

(assert (=> b!553111 m!530215))

(assert (=> b!553111 m!530217))

(declare-fun m!530225 () Bool)

(assert (=> b!553110 m!530225))

(declare-fun m!530227 () Bool)

(assert (=> b!553114 m!530227))

(declare-fun m!530229 () Bool)

(assert (=> start!50644 m!530229))

(declare-fun m!530231 () Bool)

(assert (=> start!50644 m!530231))

(declare-fun m!530233 () Bool)

(assert (=> b!553113 m!530233))

(assert (=> b!553117 m!530205))

(assert (=> b!553117 m!530205))

(declare-fun m!530235 () Bool)

(assert (=> b!553117 m!530235))

(declare-fun m!530237 () Bool)

(assert (=> b!553115 m!530237))

(check-sat (not b!553115) (not b!553118) (not b!553113) (not b!553114) (not start!50644) (not b!553117) (not b!553109) (not b!553110) (not b!553111) (not b!553112))
(check-sat)
