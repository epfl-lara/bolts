; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51564 () Bool)

(assert start!51564)

(declare-fun b!563849 () Bool)

(declare-fun res!355152 () Bool)

(declare-fun e!324852 () Bool)

(assert (=> b!563849 (=> (not res!355152) (not e!324852))))

(declare-datatypes ((array!35383 0))(
  ( (array!35384 (arr!16988 (Array (_ BitVec 32) (_ BitVec 64))) (size!17352 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35383)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563849 (= res!355152 (validKeyInArray!0 (select (arr!16988 a!3118) j!142)))))

(declare-fun b!563850 () Bool)

(declare-fun e!324851 () Bool)

(assert (=> b!563850 (= e!324851 (not true))))

(declare-fun e!324850 () Bool)

(assert (=> b!563850 e!324850))

(declare-fun res!355157 () Bool)

(assert (=> b!563850 (=> (not res!355157) (not e!324850))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35383 (_ BitVec 32)) Bool)

(assert (=> b!563850 (= res!355157 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17662 0))(
  ( (Unit!17663) )
))
(declare-fun lt!257387 () Unit!17662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35383 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17662)

(assert (=> b!563850 (= lt!257387 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563852 () Bool)

(declare-fun res!355154 () Bool)

(assert (=> b!563852 (=> (not res!355154) (not e!324852))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563852 (= res!355154 (and (= (size!17352 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17352 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17352 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563853 () Bool)

(assert (=> b!563853 (= e!324852 e!324851)))

(declare-fun res!355153 () Bool)

(assert (=> b!563853 (=> (not res!355153) (not e!324851))))

(declare-datatypes ((SeekEntryResult!5444 0))(
  ( (MissingZero!5444 (index!24003 (_ BitVec 32))) (Found!5444 (index!24004 (_ BitVec 32))) (Intermediate!5444 (undefined!6256 Bool) (index!24005 (_ BitVec 32)) (x!52910 (_ BitVec 32))) (Undefined!5444) (MissingVacant!5444 (index!24006 (_ BitVec 32))) )
))
(declare-fun lt!257386 () SeekEntryResult!5444)

(assert (=> b!563853 (= res!355153 (or (= lt!257386 (MissingZero!5444 i!1132)) (= lt!257386 (MissingVacant!5444 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35383 (_ BitVec 32)) SeekEntryResult!5444)

(assert (=> b!563853 (= lt!257386 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563854 () Bool)

(assert (=> b!563854 (= e!324850 (= (seekEntryOrOpen!0 (select (arr!16988 a!3118) j!142) a!3118 mask!3119) (Found!5444 j!142)))))

(declare-fun b!563855 () Bool)

(declare-fun res!355155 () Bool)

(assert (=> b!563855 (=> (not res!355155) (not e!324852))))

(declare-fun arrayContainsKey!0 (array!35383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563855 (= res!355155 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563856 () Bool)

(declare-fun res!355160 () Bool)

(assert (=> b!563856 (=> (not res!355160) (not e!324852))))

(assert (=> b!563856 (= res!355160 (validKeyInArray!0 k!1914))))

(declare-fun b!563857 () Bool)

(declare-fun res!355151 () Bool)

(assert (=> b!563857 (=> (not res!355151) (not e!324851))))

(assert (=> b!563857 (= res!355151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563858 () Bool)

(declare-fun res!355158 () Bool)

(assert (=> b!563858 (=> (not res!355158) (not e!324851))))

(declare-datatypes ((List!11121 0))(
  ( (Nil!11118) (Cons!11117 (h!12120 (_ BitVec 64)) (t!17357 List!11121)) )
))
(declare-fun arrayNoDuplicates!0 (array!35383 (_ BitVec 32) List!11121) Bool)

(assert (=> b!563858 (= res!355158 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11118))))

(declare-fun res!355159 () Bool)

(assert (=> start!51564 (=> (not res!355159) (not e!324852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51564 (= res!355159 (validMask!0 mask!3119))))

(assert (=> start!51564 e!324852))

(assert (=> start!51564 true))

(declare-fun array_inv!12762 (array!35383) Bool)

(assert (=> start!51564 (array_inv!12762 a!3118)))

(declare-fun b!563851 () Bool)

(declare-fun res!355156 () Bool)

(assert (=> b!563851 (=> (not res!355156) (not e!324851))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35383 (_ BitVec 32)) SeekEntryResult!5444)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563851 (= res!355156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16988 a!3118) j!142) mask!3119) (select (arr!16988 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16988 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16988 a!3118) i!1132 k!1914) j!142) (array!35384 (store (arr!16988 a!3118) i!1132 k!1914) (size!17352 a!3118)) mask!3119)))))

(assert (= (and start!51564 res!355159) b!563852))

(assert (= (and b!563852 res!355154) b!563849))

(assert (= (and b!563849 res!355152) b!563856))

(assert (= (and b!563856 res!355160) b!563855))

(assert (= (and b!563855 res!355155) b!563853))

(assert (= (and b!563853 res!355153) b!563857))

(assert (= (and b!563857 res!355151) b!563858))

(assert (= (and b!563858 res!355158) b!563851))

(assert (= (and b!563851 res!355156) b!563850))

(assert (= (and b!563850 res!355157) b!563854))

(declare-fun m!542347 () Bool)

(assert (=> b!563851 m!542347))

(declare-fun m!542349 () Bool)

(assert (=> b!563851 m!542349))

(assert (=> b!563851 m!542347))

(declare-fun m!542351 () Bool)

(assert (=> b!563851 m!542351))

(declare-fun m!542353 () Bool)

(assert (=> b!563851 m!542353))

(assert (=> b!563851 m!542351))

(declare-fun m!542355 () Bool)

(assert (=> b!563851 m!542355))

(assert (=> b!563851 m!542349))

(assert (=> b!563851 m!542347))

(declare-fun m!542357 () Bool)

(assert (=> b!563851 m!542357))

(declare-fun m!542359 () Bool)

(assert (=> b!563851 m!542359))

(assert (=> b!563851 m!542351))

(assert (=> b!563851 m!542353))

(assert (=> b!563849 m!542347))

(assert (=> b!563849 m!542347))

(declare-fun m!542361 () Bool)

(assert (=> b!563849 m!542361))

(declare-fun m!542363 () Bool)

(assert (=> start!51564 m!542363))

(declare-fun m!542365 () Bool)

(assert (=> start!51564 m!542365))

(declare-fun m!542367 () Bool)

(assert (=> b!563856 m!542367))

(declare-fun m!542369 () Bool)

(assert (=> b!563850 m!542369))

(declare-fun m!542371 () Bool)

(assert (=> b!563850 m!542371))

(declare-fun m!542373 () Bool)

(assert (=> b!563855 m!542373))

(declare-fun m!542375 () Bool)

(assert (=> b!563858 m!542375))

(declare-fun m!542377 () Bool)

(assert (=> b!563853 m!542377))

(declare-fun m!542379 () Bool)

(assert (=> b!563857 m!542379))

(assert (=> b!563854 m!542347))

(assert (=> b!563854 m!542347))

(declare-fun m!542381 () Bool)

(assert (=> b!563854 m!542381))

(push 1)

