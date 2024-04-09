; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50746 () Bool)

(assert start!50746)

(declare-fun b!554625 () Bool)

(declare-fun res!347193 () Bool)

(declare-fun e!319756 () Bool)

(assert (=> b!554625 (=> (not res!347193) (not e!319756))))

(declare-datatypes ((array!34925 0))(
  ( (array!34926 (arr!16768 (Array (_ BitVec 32) (_ BitVec 64))) (size!17132 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34925)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554625 (= res!347193 (validKeyInArray!0 (select (arr!16768 a!3118) j!142)))))

(declare-datatypes ((SeekEntryResult!5224 0))(
  ( (MissingZero!5224 (index!23123 (_ BitVec 32))) (Found!5224 (index!23124 (_ BitVec 32))) (Intermediate!5224 (undefined!6036 Bool) (index!23125 (_ BitVec 32)) (x!52061 (_ BitVec 32))) (Undefined!5224) (MissingVacant!5224 (index!23126 (_ BitVec 32))) )
))
(declare-fun lt!251968 () SeekEntryResult!5224)

(declare-fun e!319753 () Bool)

(declare-fun b!554626 () Bool)

(get-info :version)

(assert (=> b!554626 (= e!319753 (not (or (undefined!6036 lt!251968) (not ((_ is Intermediate!5224) lt!251968)) (= (select (arr!16768 a!3118) (index!23125 lt!251968)) (select (arr!16768 a!3118) j!142)) (not (= (select (arr!16768 a!3118) (index!23125 lt!251968)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17132 a!3118)))))))

(declare-fun lt!251965 () SeekEntryResult!5224)

(assert (=> b!554626 (and (= lt!251965 (Found!5224 j!142)) (or (undefined!6036 lt!251968) (not ((_ is Intermediate!5224) lt!251968)) (= (select (arr!16768 a!3118) (index!23125 lt!251968)) (select (arr!16768 a!3118) j!142)) (not (= (select (arr!16768 a!3118) (index!23125 lt!251968)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251965 (MissingZero!5224 (index!23125 lt!251968)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34925 (_ BitVec 32)) SeekEntryResult!5224)

(assert (=> b!554626 (= lt!251965 (seekEntryOrOpen!0 (select (arr!16768 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34925 (_ BitVec 32)) Bool)

(assert (=> b!554626 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17222 0))(
  ( (Unit!17223) )
))
(declare-fun lt!251969 () Unit!17222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17222)

(assert (=> b!554626 (= lt!251969 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554627 () Bool)

(declare-fun res!347188 () Bool)

(declare-fun e!319755 () Bool)

(assert (=> b!554627 (=> (not res!347188) (not e!319755))))

(assert (=> b!554627 (= res!347188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554628 () Bool)

(declare-fun res!347190 () Bool)

(assert (=> b!554628 (=> (not res!347190) (not e!319756))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554628 (= res!347190 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554630 () Bool)

(declare-fun res!347189 () Bool)

(assert (=> b!554630 (=> (not res!347189) (not e!319756))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554630 (= res!347189 (and (= (size!17132 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17132 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17132 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554631 () Bool)

(declare-fun res!347194 () Bool)

(assert (=> b!554631 (=> (not res!347194) (not e!319756))))

(assert (=> b!554631 (= res!347194 (validKeyInArray!0 k0!1914))))

(declare-fun b!554632 () Bool)

(assert (=> b!554632 (= e!319755 e!319753)))

(declare-fun res!347195 () Bool)

(assert (=> b!554632 (=> (not res!347195) (not e!319753))))

(declare-fun lt!251964 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34925 (_ BitVec 32)) SeekEntryResult!5224)

(assert (=> b!554632 (= res!347195 (= lt!251968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251964 (select (store (arr!16768 a!3118) i!1132 k0!1914) j!142) (array!34926 (store (arr!16768 a!3118) i!1132 k0!1914) (size!17132 a!3118)) mask!3119)))))

(declare-fun lt!251966 () (_ BitVec 32))

(assert (=> b!554632 (= lt!251968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251966 (select (arr!16768 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554632 (= lt!251964 (toIndex!0 (select (store (arr!16768 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554632 (= lt!251966 (toIndex!0 (select (arr!16768 a!3118) j!142) mask!3119))))

(declare-fun b!554633 () Bool)

(declare-fun res!347191 () Bool)

(assert (=> b!554633 (=> (not res!347191) (not e!319755))))

(declare-datatypes ((List!10901 0))(
  ( (Nil!10898) (Cons!10897 (h!11882 (_ BitVec 64)) (t!17137 List!10901)) )
))
(declare-fun arrayNoDuplicates!0 (array!34925 (_ BitVec 32) List!10901) Bool)

(assert (=> b!554633 (= res!347191 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10898))))

(declare-fun b!554629 () Bool)

(assert (=> b!554629 (= e!319756 e!319755)))

(declare-fun res!347187 () Bool)

(assert (=> b!554629 (=> (not res!347187) (not e!319755))))

(declare-fun lt!251967 () SeekEntryResult!5224)

(assert (=> b!554629 (= res!347187 (or (= lt!251967 (MissingZero!5224 i!1132)) (= lt!251967 (MissingVacant!5224 i!1132))))))

(assert (=> b!554629 (= lt!251967 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!347192 () Bool)

(assert (=> start!50746 (=> (not res!347192) (not e!319756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50746 (= res!347192 (validMask!0 mask!3119))))

(assert (=> start!50746 e!319756))

(assert (=> start!50746 true))

(declare-fun array_inv!12542 (array!34925) Bool)

(assert (=> start!50746 (array_inv!12542 a!3118)))

(assert (= (and start!50746 res!347192) b!554630))

(assert (= (and b!554630 res!347189) b!554625))

(assert (= (and b!554625 res!347193) b!554631))

(assert (= (and b!554631 res!347194) b!554628))

(assert (= (and b!554628 res!347190) b!554629))

(assert (= (and b!554629 res!347187) b!554627))

(assert (= (and b!554627 res!347188) b!554633))

(assert (= (and b!554633 res!347191) b!554632))

(assert (= (and b!554632 res!347195) b!554626))

(declare-fun m!532095 () Bool)

(assert (=> b!554629 m!532095))

(declare-fun m!532097 () Bool)

(assert (=> b!554632 m!532097))

(declare-fun m!532099 () Bool)

(assert (=> b!554632 m!532099))

(assert (=> b!554632 m!532097))

(declare-fun m!532101 () Bool)

(assert (=> b!554632 m!532101))

(declare-fun m!532103 () Bool)

(assert (=> b!554632 m!532103))

(declare-fun m!532105 () Bool)

(assert (=> b!554632 m!532105))

(assert (=> b!554632 m!532101))

(declare-fun m!532107 () Bool)

(assert (=> b!554632 m!532107))

(assert (=> b!554632 m!532097))

(declare-fun m!532109 () Bool)

(assert (=> b!554632 m!532109))

(assert (=> b!554632 m!532101))

(declare-fun m!532111 () Bool)

(assert (=> b!554633 m!532111))

(declare-fun m!532113 () Bool)

(assert (=> start!50746 m!532113))

(declare-fun m!532115 () Bool)

(assert (=> start!50746 m!532115))

(assert (=> b!554626 m!532097))

(declare-fun m!532117 () Bool)

(assert (=> b!554626 m!532117))

(declare-fun m!532119 () Bool)

(assert (=> b!554626 m!532119))

(declare-fun m!532121 () Bool)

(assert (=> b!554626 m!532121))

(assert (=> b!554626 m!532097))

(declare-fun m!532123 () Bool)

(assert (=> b!554626 m!532123))

(declare-fun m!532125 () Bool)

(assert (=> b!554628 m!532125))

(declare-fun m!532127 () Bool)

(assert (=> b!554631 m!532127))

(declare-fun m!532129 () Bool)

(assert (=> b!554627 m!532129))

(assert (=> b!554625 m!532097))

(assert (=> b!554625 m!532097))

(declare-fun m!532131 () Bool)

(assert (=> b!554625 m!532131))

(check-sat (not start!50746) (not b!554632) (not b!554628) (not b!554625) (not b!554627) (not b!554626) (not b!554631) (not b!554629) (not b!554633))
(check-sat)
