; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50632 () Bool)

(assert start!50632)

(declare-fun b!552929 () Bool)

(declare-fun e!318997 () Bool)

(assert (=> b!552929 (= e!318997 (not true))))

(declare-fun e!318998 () Bool)

(assert (=> b!552929 e!318998))

(declare-fun res!345497 () Bool)

(assert (=> b!552929 (=> (not res!345497) (not e!318998))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34811 0))(
  ( (array!34812 (arr!16711 (Array (_ BitVec 32) (_ BitVec 64))) (size!17075 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34811)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34811 (_ BitVec 32)) Bool)

(assert (=> b!552929 (= res!345497 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17108 0))(
  ( (Unit!17109) )
))
(declare-fun lt!251333 () Unit!17108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17108)

(assert (=> b!552929 (= lt!251333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552931 () Bool)

(declare-fun res!345494 () Bool)

(declare-fun e!318999 () Bool)

(assert (=> b!552931 (=> (not res!345494) (not e!318999))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552931 (= res!345494 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552932 () Bool)

(assert (=> b!552932 (= e!318999 e!318997)))

(declare-fun res!345496 () Bool)

(assert (=> b!552932 (=> (not res!345496) (not e!318997))))

(declare-datatypes ((SeekEntryResult!5167 0))(
  ( (MissingZero!5167 (index!22895 (_ BitVec 32))) (Found!5167 (index!22896 (_ BitVec 32))) (Intermediate!5167 (undefined!5979 Bool) (index!22897 (_ BitVec 32)) (x!51852 (_ BitVec 32))) (Undefined!5167) (MissingVacant!5167 (index!22898 (_ BitVec 32))) )
))
(declare-fun lt!251332 () SeekEntryResult!5167)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552932 (= res!345496 (or (= lt!251332 (MissingZero!5167 i!1132)) (= lt!251332 (MissingVacant!5167 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34811 (_ BitVec 32)) SeekEntryResult!5167)

(assert (=> b!552932 (= lt!251332 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552933 () Bool)

(assert (=> b!552933 (= e!318998 (= (seekEntryOrOpen!0 (select (arr!16711 a!3118) j!142) a!3118 mask!3119) (Found!5167 j!142)))))

(declare-fun b!552934 () Bool)

(declare-fun res!345491 () Bool)

(assert (=> b!552934 (=> (not res!345491) (not e!318997))))

(assert (=> b!552934 (= res!345491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552935 () Bool)

(declare-fun res!345493 () Bool)

(assert (=> b!552935 (=> (not res!345493) (not e!318997))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34811 (_ BitVec 32)) SeekEntryResult!5167)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552935 (= res!345493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16711 a!3118) j!142) mask!3119) (select (arr!16711 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16711 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16711 a!3118) i!1132 k0!1914) j!142) (array!34812 (store (arr!16711 a!3118) i!1132 k0!1914) (size!17075 a!3118)) mask!3119)))))

(declare-fun b!552936 () Bool)

(declare-fun res!345492 () Bool)

(assert (=> b!552936 (=> (not res!345492) (not e!318999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552936 (= res!345492 (validKeyInArray!0 k0!1914))))

(declare-fun b!552930 () Bool)

(declare-fun res!345500 () Bool)

(assert (=> b!552930 (=> (not res!345500) (not e!318999))))

(assert (=> b!552930 (= res!345500 (validKeyInArray!0 (select (arr!16711 a!3118) j!142)))))

(declare-fun res!345495 () Bool)

(assert (=> start!50632 (=> (not res!345495) (not e!318999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50632 (= res!345495 (validMask!0 mask!3119))))

(assert (=> start!50632 e!318999))

(assert (=> start!50632 true))

(declare-fun array_inv!12485 (array!34811) Bool)

(assert (=> start!50632 (array_inv!12485 a!3118)))

(declare-fun b!552937 () Bool)

(declare-fun res!345499 () Bool)

(assert (=> b!552937 (=> (not res!345499) (not e!318999))))

(assert (=> b!552937 (= res!345499 (and (= (size!17075 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17075 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17075 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552938 () Bool)

(declare-fun res!345498 () Bool)

(assert (=> b!552938 (=> (not res!345498) (not e!318997))))

(declare-datatypes ((List!10844 0))(
  ( (Nil!10841) (Cons!10840 (h!11825 (_ BitVec 64)) (t!17080 List!10844)) )
))
(declare-fun arrayNoDuplicates!0 (array!34811 (_ BitVec 32) List!10844) Bool)

(assert (=> b!552938 (= res!345498 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10841))))

(assert (= (and start!50632 res!345495) b!552937))

(assert (= (and b!552937 res!345499) b!552930))

(assert (= (and b!552930 res!345500) b!552936))

(assert (= (and b!552936 res!345492) b!552931))

(assert (= (and b!552931 res!345494) b!552932))

(assert (= (and b!552932 res!345496) b!552934))

(assert (= (and b!552934 res!345491) b!552938))

(assert (= (and b!552938 res!345498) b!552935))

(assert (= (and b!552935 res!345493) b!552929))

(assert (= (and b!552929 res!345497) b!552933))

(declare-fun m!529987 () Bool)

(assert (=> b!552936 m!529987))

(declare-fun m!529989 () Bool)

(assert (=> b!552930 m!529989))

(assert (=> b!552930 m!529989))

(declare-fun m!529991 () Bool)

(assert (=> b!552930 m!529991))

(assert (=> b!552935 m!529989))

(declare-fun m!529993 () Bool)

(assert (=> b!552935 m!529993))

(assert (=> b!552935 m!529989))

(declare-fun m!529995 () Bool)

(assert (=> b!552935 m!529995))

(declare-fun m!529997 () Bool)

(assert (=> b!552935 m!529997))

(assert (=> b!552935 m!529995))

(declare-fun m!529999 () Bool)

(assert (=> b!552935 m!529999))

(assert (=> b!552935 m!529993))

(assert (=> b!552935 m!529989))

(declare-fun m!530001 () Bool)

(assert (=> b!552935 m!530001))

(declare-fun m!530003 () Bool)

(assert (=> b!552935 m!530003))

(assert (=> b!552935 m!529995))

(assert (=> b!552935 m!529997))

(declare-fun m!530005 () Bool)

(assert (=> b!552934 m!530005))

(assert (=> b!552933 m!529989))

(assert (=> b!552933 m!529989))

(declare-fun m!530007 () Bool)

(assert (=> b!552933 m!530007))

(declare-fun m!530009 () Bool)

(assert (=> b!552938 m!530009))

(declare-fun m!530011 () Bool)

(assert (=> b!552929 m!530011))

(declare-fun m!530013 () Bool)

(assert (=> b!552929 m!530013))

(declare-fun m!530015 () Bool)

(assert (=> b!552932 m!530015))

(declare-fun m!530017 () Bool)

(assert (=> b!552931 m!530017))

(declare-fun m!530019 () Bool)

(assert (=> start!50632 m!530019))

(declare-fun m!530021 () Bool)

(assert (=> start!50632 m!530021))

(check-sat (not b!552931) (not b!552934) (not b!552935) (not b!552929) (not start!50632) (not b!552932) (not b!552938) (not b!552930) (not b!552936) (not b!552933))
(check-sat)
