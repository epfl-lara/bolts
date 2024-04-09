; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50770 () Bool)

(assert start!50770)

(declare-fun b!554949 () Bool)

(declare-fun e!319897 () Bool)

(declare-fun e!319898 () Bool)

(assert (=> b!554949 (= e!319897 e!319898)))

(declare-fun res!347513 () Bool)

(assert (=> b!554949 (=> (not res!347513) (not e!319898))))

(declare-datatypes ((SeekEntryResult!5236 0))(
  ( (MissingZero!5236 (index!23171 (_ BitVec 32))) (Found!5236 (index!23172 (_ BitVec 32))) (Intermediate!5236 (undefined!6048 Bool) (index!23173 (_ BitVec 32)) (x!52105 (_ BitVec 32))) (Undefined!5236) (MissingVacant!5236 (index!23174 (_ BitVec 32))) )
))
(declare-fun lt!252183 () SeekEntryResult!5236)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554949 (= res!347513 (or (= lt!252183 (MissingZero!5236 i!1132)) (= lt!252183 (MissingVacant!5236 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!34949 0))(
  ( (array!34950 (arr!16780 (Array (_ BitVec 32) (_ BitVec 64))) (size!17144 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34949)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34949 (_ BitVec 32)) SeekEntryResult!5236)

(assert (=> b!554949 (= lt!252183 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554950 () Bool)

(declare-fun res!347514 () Bool)

(assert (=> b!554950 (=> (not res!347514) (not e!319897))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!554950 (= res!347514 (and (= (size!17144 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17144 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17144 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554951 () Bool)

(declare-fun res!347515 () Bool)

(assert (=> b!554951 (=> (not res!347515) (not e!319897))))

(declare-fun arrayContainsKey!0 (array!34949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554951 (= res!347515 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!347517 () Bool)

(assert (=> start!50770 (=> (not res!347517) (not e!319897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50770 (= res!347517 (validMask!0 mask!3119))))

(assert (=> start!50770 e!319897))

(assert (=> start!50770 true))

(declare-fun array_inv!12554 (array!34949) Bool)

(assert (=> start!50770 (array_inv!12554 a!3118)))

(declare-fun b!554952 () Bool)

(declare-fun res!347511 () Bool)

(assert (=> b!554952 (=> (not res!347511) (not e!319898))))

(declare-datatypes ((List!10913 0))(
  ( (Nil!10910) (Cons!10909 (h!11894 (_ BitVec 64)) (t!17149 List!10913)) )
))
(declare-fun arrayNoDuplicates!0 (array!34949 (_ BitVec 32) List!10913) Bool)

(assert (=> b!554952 (= res!347511 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10910))))

(declare-fun b!554953 () Bool)

(declare-fun e!319900 () Bool)

(assert (=> b!554953 (= e!319900 (not true))))

(declare-fun lt!252182 () SeekEntryResult!5236)

(declare-fun lt!252185 () SeekEntryResult!5236)

(get-info :version)

(assert (=> b!554953 (and (= lt!252182 (Found!5236 j!142)) (or (undefined!6048 lt!252185) (not ((_ is Intermediate!5236) lt!252185)) (= (select (arr!16780 a!3118) (index!23173 lt!252185)) (select (arr!16780 a!3118) j!142)) (not (= (select (arr!16780 a!3118) (index!23173 lt!252185)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252182 (MissingZero!5236 (index!23173 lt!252185)))))))

(assert (=> b!554953 (= lt!252182 (seekEntryOrOpen!0 (select (arr!16780 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34949 (_ BitVec 32)) Bool)

(assert (=> b!554953 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17246 0))(
  ( (Unit!17247) )
))
(declare-fun lt!252181 () Unit!17246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17246)

(assert (=> b!554953 (= lt!252181 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554954 () Bool)

(declare-fun res!347512 () Bool)

(assert (=> b!554954 (=> (not res!347512) (not e!319898))))

(assert (=> b!554954 (= res!347512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554955 () Bool)

(declare-fun res!347519 () Bool)

(assert (=> b!554955 (=> (not res!347519) (not e!319897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554955 (= res!347519 (validKeyInArray!0 (select (arr!16780 a!3118) j!142)))))

(declare-fun b!554956 () Bool)

(assert (=> b!554956 (= e!319898 e!319900)))

(declare-fun res!347516 () Bool)

(assert (=> b!554956 (=> (not res!347516) (not e!319900))))

(declare-fun lt!252184 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34949 (_ BitVec 32)) SeekEntryResult!5236)

(assert (=> b!554956 (= res!347516 (= lt!252185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252184 (select (store (arr!16780 a!3118) i!1132 k0!1914) j!142) (array!34950 (store (arr!16780 a!3118) i!1132 k0!1914) (size!17144 a!3118)) mask!3119)))))

(declare-fun lt!252180 () (_ BitVec 32))

(assert (=> b!554956 (= lt!252185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252180 (select (arr!16780 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554956 (= lt!252184 (toIndex!0 (select (store (arr!16780 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554956 (= lt!252180 (toIndex!0 (select (arr!16780 a!3118) j!142) mask!3119))))

(declare-fun b!554957 () Bool)

(declare-fun res!347518 () Bool)

(assert (=> b!554957 (=> (not res!347518) (not e!319897))))

(assert (=> b!554957 (= res!347518 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50770 res!347517) b!554950))

(assert (= (and b!554950 res!347514) b!554955))

(assert (= (and b!554955 res!347519) b!554957))

(assert (= (and b!554957 res!347518) b!554951))

(assert (= (and b!554951 res!347515) b!554949))

(assert (= (and b!554949 res!347513) b!554954))

(assert (= (and b!554954 res!347512) b!554952))

(assert (= (and b!554952 res!347511) b!554956))

(assert (= (and b!554956 res!347516) b!554953))

(declare-fun m!532551 () Bool)

(assert (=> b!554952 m!532551))

(declare-fun m!532553 () Bool)

(assert (=> b!554949 m!532553))

(declare-fun m!532555 () Bool)

(assert (=> b!554951 m!532555))

(declare-fun m!532557 () Bool)

(assert (=> b!554955 m!532557))

(assert (=> b!554955 m!532557))

(declare-fun m!532559 () Bool)

(assert (=> b!554955 m!532559))

(declare-fun m!532561 () Bool)

(assert (=> b!554954 m!532561))

(assert (=> b!554956 m!532557))

(declare-fun m!532563 () Bool)

(assert (=> b!554956 m!532563))

(assert (=> b!554956 m!532557))

(declare-fun m!532565 () Bool)

(assert (=> b!554956 m!532565))

(declare-fun m!532567 () Bool)

(assert (=> b!554956 m!532567))

(declare-fun m!532569 () Bool)

(assert (=> b!554956 m!532569))

(assert (=> b!554956 m!532557))

(assert (=> b!554956 m!532567))

(declare-fun m!532571 () Bool)

(assert (=> b!554956 m!532571))

(assert (=> b!554956 m!532567))

(declare-fun m!532573 () Bool)

(assert (=> b!554956 m!532573))

(declare-fun m!532575 () Bool)

(assert (=> b!554957 m!532575))

(declare-fun m!532577 () Bool)

(assert (=> start!50770 m!532577))

(declare-fun m!532579 () Bool)

(assert (=> start!50770 m!532579))

(assert (=> b!554953 m!532557))

(declare-fun m!532581 () Bool)

(assert (=> b!554953 m!532581))

(declare-fun m!532583 () Bool)

(assert (=> b!554953 m!532583))

(declare-fun m!532585 () Bool)

(assert (=> b!554953 m!532585))

(assert (=> b!554953 m!532557))

(declare-fun m!532587 () Bool)

(assert (=> b!554953 m!532587))

(check-sat (not b!554952) (not b!554953) (not b!554955) (not b!554949) (not b!554951) (not b!554954) (not b!554957) (not start!50770) (not b!554956))
(check-sat)
