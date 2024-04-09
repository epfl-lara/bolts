; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51610 () Bool)

(assert start!51610)

(declare-fun b!564367 () Bool)

(declare-fun res!355670 () Bool)

(declare-fun e!325058 () Bool)

(assert (=> b!564367 (=> (not res!355670) (not e!325058))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564367 (= res!355670 (validKeyInArray!0 k0!1914))))

(declare-fun b!564368 () Bool)

(declare-fun res!355676 () Bool)

(declare-fun e!325060 () Bool)

(assert (=> b!564368 (=> (not res!355676) (not e!325060))))

(declare-datatypes ((array!35429 0))(
  ( (array!35430 (arr!17011 (Array (_ BitVec 32) (_ BitVec 64))) (size!17375 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35429)

(declare-datatypes ((List!11144 0))(
  ( (Nil!11141) (Cons!11140 (h!12143 (_ BitVec 64)) (t!17380 List!11144)) )
))
(declare-fun arrayNoDuplicates!0 (array!35429 (_ BitVec 32) List!11144) Bool)

(assert (=> b!564368 (= res!355676 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11141))))

(declare-fun b!564369 () Bool)

(declare-fun res!355675 () Bool)

(assert (=> b!564369 (=> (not res!355675) (not e!325058))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564369 (= res!355675 (validKeyInArray!0 (select (arr!17011 a!3118) j!142)))))

(declare-fun b!564370 () Bool)

(assert (=> b!564370 (= e!325058 e!325060)))

(declare-fun res!355671 () Bool)

(assert (=> b!564370 (=> (not res!355671) (not e!325060))))

(declare-datatypes ((SeekEntryResult!5467 0))(
  ( (MissingZero!5467 (index!24095 (_ BitVec 32))) (Found!5467 (index!24096 (_ BitVec 32))) (Intermediate!5467 (undefined!6279 Bool) (index!24097 (_ BitVec 32)) (x!52997 (_ BitVec 32))) (Undefined!5467) (MissingVacant!5467 (index!24098 (_ BitVec 32))) )
))
(declare-fun lt!257539 () SeekEntryResult!5467)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564370 (= res!355671 (or (= lt!257539 (MissingZero!5467 i!1132)) (= lt!257539 (MissingVacant!5467 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35429 (_ BitVec 32)) SeekEntryResult!5467)

(assert (=> b!564370 (= lt!257539 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564371 () Bool)

(declare-fun res!355674 () Bool)

(assert (=> b!564371 (=> (not res!355674) (not e!325058))))

(declare-fun arrayContainsKey!0 (array!35429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564371 (= res!355674 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!355673 () Bool)

(assert (=> start!51610 (=> (not res!355673) (not e!325058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51610 (= res!355673 (validMask!0 mask!3119))))

(assert (=> start!51610 e!325058))

(assert (=> start!51610 true))

(declare-fun array_inv!12785 (array!35429) Bool)

(assert (=> start!51610 (array_inv!12785 a!3118)))

(declare-fun b!564372 () Bool)

(declare-fun res!355669 () Bool)

(assert (=> b!564372 (=> (not res!355669) (not e!325058))))

(assert (=> b!564372 (= res!355669 (and (= (size!17375 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17375 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17375 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564373 () Bool)

(declare-fun res!355672 () Bool)

(assert (=> b!564373 (=> (not res!355672) (not e!325060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35429 (_ BitVec 32)) Bool)

(assert (=> b!564373 (= res!355672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564374 () Bool)

(assert (=> b!564374 (= e!325060 false)))

(declare-fun lt!257543 () SeekEntryResult!5467)

(declare-fun lt!257540 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35429 (_ BitVec 32)) SeekEntryResult!5467)

(assert (=> b!564374 (= lt!257543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257540 (select (store (arr!17011 a!3118) i!1132 k0!1914) j!142) (array!35430 (store (arr!17011 a!3118) i!1132 k0!1914) (size!17375 a!3118)) mask!3119))))

(declare-fun lt!257542 () (_ BitVec 32))

(declare-fun lt!257541 () SeekEntryResult!5467)

(assert (=> b!564374 (= lt!257541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257542 (select (arr!17011 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564374 (= lt!257540 (toIndex!0 (select (store (arr!17011 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!564374 (= lt!257542 (toIndex!0 (select (arr!17011 a!3118) j!142) mask!3119))))

(assert (= (and start!51610 res!355673) b!564372))

(assert (= (and b!564372 res!355669) b!564369))

(assert (= (and b!564369 res!355675) b!564367))

(assert (= (and b!564367 res!355670) b!564371))

(assert (= (and b!564371 res!355674) b!564370))

(assert (= (and b!564370 res!355671) b!564373))

(assert (= (and b!564373 res!355672) b!564368))

(assert (= (and b!564368 res!355676) b!564374))

(declare-fun m!542833 () Bool)

(assert (=> b!564370 m!542833))

(declare-fun m!542835 () Bool)

(assert (=> b!564367 m!542835))

(declare-fun m!542837 () Bool)

(assert (=> start!51610 m!542837))

(declare-fun m!542839 () Bool)

(assert (=> start!51610 m!542839))

(declare-fun m!542841 () Bool)

(assert (=> b!564369 m!542841))

(assert (=> b!564369 m!542841))

(declare-fun m!542843 () Bool)

(assert (=> b!564369 m!542843))

(declare-fun m!542845 () Bool)

(assert (=> b!564368 m!542845))

(assert (=> b!564374 m!542841))

(declare-fun m!542847 () Bool)

(assert (=> b!564374 m!542847))

(declare-fun m!542849 () Bool)

(assert (=> b!564374 m!542849))

(declare-fun m!542851 () Bool)

(assert (=> b!564374 m!542851))

(assert (=> b!564374 m!542841))

(declare-fun m!542853 () Bool)

(assert (=> b!564374 m!542853))

(assert (=> b!564374 m!542841))

(assert (=> b!564374 m!542849))

(declare-fun m!542855 () Bool)

(assert (=> b!564374 m!542855))

(assert (=> b!564374 m!542849))

(declare-fun m!542857 () Bool)

(assert (=> b!564374 m!542857))

(declare-fun m!542859 () Bool)

(assert (=> b!564371 m!542859))

(declare-fun m!542861 () Bool)

(assert (=> b!564373 m!542861))

(check-sat (not b!564368) (not b!564374) (not start!51610) (not b!564369) (not b!564373) (not b!564370) (not b!564367) (not b!564371))
(check-sat)
