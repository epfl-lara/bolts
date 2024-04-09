; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50800 () Bool)

(assert start!50800)

(declare-fun b!555354 () Bool)

(declare-fun res!347916 () Bool)

(declare-fun e!320079 () Bool)

(assert (=> b!555354 (=> (not res!347916) (not e!320079))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34979 0))(
  ( (array!34980 (arr!16795 (Array (_ BitVec 32) (_ BitVec 64))) (size!17159 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34979)

(assert (=> b!555354 (= res!347916 (and (= (size!17159 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17159 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17159 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555355 () Bool)

(declare-fun res!347920 () Bool)

(declare-fun e!320078 () Bool)

(assert (=> b!555355 (=> (not res!347920) (not e!320078))))

(declare-datatypes ((List!10928 0))(
  ( (Nil!10925) (Cons!10924 (h!11909 (_ BitVec 64)) (t!17164 List!10928)) )
))
(declare-fun arrayNoDuplicates!0 (array!34979 (_ BitVec 32) List!10928) Bool)

(assert (=> b!555355 (= res!347920 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10925))))

(declare-fun b!555356 () Bool)

(declare-fun res!347918 () Bool)

(assert (=> b!555356 (=> (not res!347918) (not e!320079))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555356 (= res!347918 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555357 () Bool)

(declare-fun res!347917 () Bool)

(assert (=> b!555357 (=> (not res!347917) (not e!320079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555357 (= res!347917 (validKeyInArray!0 (select (arr!16795 a!3118) j!142)))))

(declare-fun res!347923 () Bool)

(assert (=> start!50800 (=> (not res!347923) (not e!320079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50800 (= res!347923 (validMask!0 mask!3119))))

(assert (=> start!50800 e!320079))

(assert (=> start!50800 true))

(declare-fun array_inv!12569 (array!34979) Bool)

(assert (=> start!50800 (array_inv!12569 a!3118)))

(declare-fun b!555358 () Bool)

(declare-fun res!347921 () Bool)

(assert (=> b!555358 (=> (not res!347921) (not e!320078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34979 (_ BitVec 32)) Bool)

(assert (=> b!555358 (= res!347921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555359 () Bool)

(assert (=> b!555359 (= e!320079 e!320078)))

(declare-fun res!347922 () Bool)

(assert (=> b!555359 (=> (not res!347922) (not e!320078))))

(declare-datatypes ((SeekEntryResult!5251 0))(
  ( (MissingZero!5251 (index!23231 (_ BitVec 32))) (Found!5251 (index!23232 (_ BitVec 32))) (Intermediate!5251 (undefined!6063 Bool) (index!23233 (_ BitVec 32)) (x!52160 (_ BitVec 32))) (Undefined!5251) (MissingVacant!5251 (index!23234 (_ BitVec 32))) )
))
(declare-fun lt!252452 () SeekEntryResult!5251)

(assert (=> b!555359 (= res!347922 (or (= lt!252452 (MissingZero!5251 i!1132)) (= lt!252452 (MissingVacant!5251 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34979 (_ BitVec 32)) SeekEntryResult!5251)

(assert (=> b!555359 (= lt!252452 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555360 () Bool)

(declare-fun e!320077 () Bool)

(assert (=> b!555360 (= e!320078 e!320077)))

(declare-fun res!347919 () Bool)

(assert (=> b!555360 (=> (not res!347919) (not e!320077))))

(declare-fun lt!252455 () (_ BitVec 32))

(declare-fun lt!252450 () SeekEntryResult!5251)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34979 (_ BitVec 32)) SeekEntryResult!5251)

(assert (=> b!555360 (= res!347919 (= lt!252450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252455 (select (store (arr!16795 a!3118) i!1132 k0!1914) j!142) (array!34980 (store (arr!16795 a!3118) i!1132 k0!1914) (size!17159 a!3118)) mask!3119)))))

(declare-fun lt!252454 () (_ BitVec 32))

(assert (=> b!555360 (= lt!252450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252454 (select (arr!16795 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555360 (= lt!252455 (toIndex!0 (select (store (arr!16795 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555360 (= lt!252454 (toIndex!0 (select (arr!16795 a!3118) j!142) mask!3119))))

(declare-fun b!555361 () Bool)

(assert (=> b!555361 (= e!320077 (not true))))

(declare-fun lt!252451 () SeekEntryResult!5251)

(get-info :version)

(assert (=> b!555361 (and (= lt!252451 (Found!5251 j!142)) (or (undefined!6063 lt!252450) (not ((_ is Intermediate!5251) lt!252450)) (= (select (arr!16795 a!3118) (index!23233 lt!252450)) (select (arr!16795 a!3118) j!142)) (not (= (select (arr!16795 a!3118) (index!23233 lt!252450)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252451 (MissingZero!5251 (index!23233 lt!252450)))))))

(assert (=> b!555361 (= lt!252451 (seekEntryOrOpen!0 (select (arr!16795 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555361 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17276 0))(
  ( (Unit!17277) )
))
(declare-fun lt!252453 () Unit!17276)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17276)

(assert (=> b!555361 (= lt!252453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555362 () Bool)

(declare-fun res!347924 () Bool)

(assert (=> b!555362 (=> (not res!347924) (not e!320079))))

(assert (=> b!555362 (= res!347924 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50800 res!347923) b!555354))

(assert (= (and b!555354 res!347916) b!555357))

(assert (= (and b!555357 res!347917) b!555362))

(assert (= (and b!555362 res!347924) b!555356))

(assert (= (and b!555356 res!347918) b!555359))

(assert (= (and b!555359 res!347922) b!555358))

(assert (= (and b!555358 res!347921) b!555355))

(assert (= (and b!555355 res!347920) b!555360))

(assert (= (and b!555360 res!347919) b!555361))

(declare-fun m!533121 () Bool)

(assert (=> b!555357 m!533121))

(assert (=> b!555357 m!533121))

(declare-fun m!533123 () Bool)

(assert (=> b!555357 m!533123))

(assert (=> b!555360 m!533121))

(declare-fun m!533125 () Bool)

(assert (=> b!555360 m!533125))

(assert (=> b!555360 m!533121))

(declare-fun m!533127 () Bool)

(assert (=> b!555360 m!533127))

(declare-fun m!533129 () Bool)

(assert (=> b!555360 m!533129))

(assert (=> b!555360 m!533121))

(declare-fun m!533131 () Bool)

(assert (=> b!555360 m!533131))

(assert (=> b!555360 m!533127))

(declare-fun m!533133 () Bool)

(assert (=> b!555360 m!533133))

(assert (=> b!555360 m!533127))

(declare-fun m!533135 () Bool)

(assert (=> b!555360 m!533135))

(assert (=> b!555361 m!533121))

(declare-fun m!533137 () Bool)

(assert (=> b!555361 m!533137))

(declare-fun m!533139 () Bool)

(assert (=> b!555361 m!533139))

(declare-fun m!533141 () Bool)

(assert (=> b!555361 m!533141))

(assert (=> b!555361 m!533121))

(declare-fun m!533143 () Bool)

(assert (=> b!555361 m!533143))

(declare-fun m!533145 () Bool)

(assert (=> b!555356 m!533145))

(declare-fun m!533147 () Bool)

(assert (=> b!555358 m!533147))

(declare-fun m!533149 () Bool)

(assert (=> b!555359 m!533149))

(declare-fun m!533151 () Bool)

(assert (=> b!555362 m!533151))

(declare-fun m!533153 () Bool)

(assert (=> b!555355 m!533153))

(declare-fun m!533155 () Bool)

(assert (=> start!50800 m!533155))

(declare-fun m!533157 () Bool)

(assert (=> start!50800 m!533157))

(check-sat (not b!555356) (not b!555360) (not b!555362) (not start!50800) (not b!555359) (not b!555357) (not b!555355) (not b!555361) (not b!555358))
(check-sat)
