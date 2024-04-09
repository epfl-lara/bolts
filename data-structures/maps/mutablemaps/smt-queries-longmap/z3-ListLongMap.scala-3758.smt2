; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51562 () Bool)

(assert start!51562)

(declare-fun b!563819 () Bool)

(declare-fun res!355124 () Bool)

(declare-fun e!324841 () Bool)

(assert (=> b!563819 (=> (not res!355124) (not e!324841))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35381 0))(
  ( (array!35382 (arr!16987 (Array (_ BitVec 32) (_ BitVec 64))) (size!17351 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35381)

(assert (=> b!563819 (= res!355124 (and (= (size!17351 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17351 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17351 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563821 () Bool)

(declare-fun e!324839 () Bool)

(assert (=> b!563821 (= e!324839 (not true))))

(declare-fun e!324840 () Bool)

(assert (=> b!563821 e!324840))

(declare-fun res!355126 () Bool)

(assert (=> b!563821 (=> (not res!355126) (not e!324840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35381 (_ BitVec 32)) Bool)

(assert (=> b!563821 (= res!355126 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17660 0))(
  ( (Unit!17661) )
))
(declare-fun lt!257381 () Unit!17660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17660)

(assert (=> b!563821 (= lt!257381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563822 () Bool)

(declare-fun res!355127 () Bool)

(assert (=> b!563822 (=> (not res!355127) (not e!324839))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5443 0))(
  ( (MissingZero!5443 (index!23999 (_ BitVec 32))) (Found!5443 (index!24000 (_ BitVec 32))) (Intermediate!5443 (undefined!6255 Bool) (index!24001 (_ BitVec 32)) (x!52909 (_ BitVec 32))) (Undefined!5443) (MissingVacant!5443 (index!24002 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35381 (_ BitVec 32)) SeekEntryResult!5443)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563822 (= res!355127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16987 a!3118) j!142) mask!3119) (select (arr!16987 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16987 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16987 a!3118) i!1132 k0!1914) j!142) (array!35382 (store (arr!16987 a!3118) i!1132 k0!1914) (size!17351 a!3118)) mask!3119)))))

(declare-fun b!563823 () Bool)

(assert (=> b!563823 (= e!324841 e!324839)))

(declare-fun res!355130 () Bool)

(assert (=> b!563823 (=> (not res!355130) (not e!324839))))

(declare-fun lt!257380 () SeekEntryResult!5443)

(assert (=> b!563823 (= res!355130 (or (= lt!257380 (MissingZero!5443 i!1132)) (= lt!257380 (MissingVacant!5443 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35381 (_ BitVec 32)) SeekEntryResult!5443)

(assert (=> b!563823 (= lt!257380 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563824 () Bool)

(declare-fun res!355125 () Bool)

(assert (=> b!563824 (=> (not res!355125) (not e!324841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563824 (= res!355125 (validKeyInArray!0 k0!1914))))

(declare-fun b!563825 () Bool)

(declare-fun res!355121 () Bool)

(assert (=> b!563825 (=> (not res!355121) (not e!324839))))

(assert (=> b!563825 (= res!355121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563826 () Bool)

(declare-fun res!355128 () Bool)

(assert (=> b!563826 (=> (not res!355128) (not e!324841))))

(declare-fun arrayContainsKey!0 (array!35381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563826 (= res!355128 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563827 () Bool)

(assert (=> b!563827 (= e!324840 (= (seekEntryOrOpen!0 (select (arr!16987 a!3118) j!142) a!3118 mask!3119) (Found!5443 j!142)))))

(declare-fun b!563828 () Bool)

(declare-fun res!355122 () Bool)

(assert (=> b!563828 (=> (not res!355122) (not e!324841))))

(assert (=> b!563828 (= res!355122 (validKeyInArray!0 (select (arr!16987 a!3118) j!142)))))

(declare-fun b!563820 () Bool)

(declare-fun res!355123 () Bool)

(assert (=> b!563820 (=> (not res!355123) (not e!324839))))

(declare-datatypes ((List!11120 0))(
  ( (Nil!11117) (Cons!11116 (h!12119 (_ BitVec 64)) (t!17356 List!11120)) )
))
(declare-fun arrayNoDuplicates!0 (array!35381 (_ BitVec 32) List!11120) Bool)

(assert (=> b!563820 (= res!355123 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11117))))

(declare-fun res!355129 () Bool)

(assert (=> start!51562 (=> (not res!355129) (not e!324841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51562 (= res!355129 (validMask!0 mask!3119))))

(assert (=> start!51562 e!324841))

(assert (=> start!51562 true))

(declare-fun array_inv!12761 (array!35381) Bool)

(assert (=> start!51562 (array_inv!12761 a!3118)))

(assert (= (and start!51562 res!355129) b!563819))

(assert (= (and b!563819 res!355124) b!563828))

(assert (= (and b!563828 res!355122) b!563824))

(assert (= (and b!563824 res!355125) b!563826))

(assert (= (and b!563826 res!355128) b!563823))

(assert (= (and b!563823 res!355130) b!563825))

(assert (= (and b!563825 res!355121) b!563820))

(assert (= (and b!563820 res!355123) b!563822))

(assert (= (and b!563822 res!355127) b!563821))

(assert (= (and b!563821 res!355126) b!563827))

(declare-fun m!542311 () Bool)

(assert (=> start!51562 m!542311))

(declare-fun m!542313 () Bool)

(assert (=> start!51562 m!542313))

(declare-fun m!542315 () Bool)

(assert (=> b!563820 m!542315))

(declare-fun m!542317 () Bool)

(assert (=> b!563824 m!542317))

(declare-fun m!542319 () Bool)

(assert (=> b!563826 m!542319))

(declare-fun m!542321 () Bool)

(assert (=> b!563821 m!542321))

(declare-fun m!542323 () Bool)

(assert (=> b!563821 m!542323))

(declare-fun m!542325 () Bool)

(assert (=> b!563825 m!542325))

(declare-fun m!542327 () Bool)

(assert (=> b!563823 m!542327))

(declare-fun m!542329 () Bool)

(assert (=> b!563827 m!542329))

(assert (=> b!563827 m!542329))

(declare-fun m!542331 () Bool)

(assert (=> b!563827 m!542331))

(assert (=> b!563828 m!542329))

(assert (=> b!563828 m!542329))

(declare-fun m!542333 () Bool)

(assert (=> b!563828 m!542333))

(assert (=> b!563822 m!542329))

(declare-fun m!542335 () Bool)

(assert (=> b!563822 m!542335))

(assert (=> b!563822 m!542329))

(declare-fun m!542337 () Bool)

(assert (=> b!563822 m!542337))

(declare-fun m!542339 () Bool)

(assert (=> b!563822 m!542339))

(assert (=> b!563822 m!542337))

(declare-fun m!542341 () Bool)

(assert (=> b!563822 m!542341))

(assert (=> b!563822 m!542335))

(assert (=> b!563822 m!542329))

(declare-fun m!542343 () Bool)

(assert (=> b!563822 m!542343))

(declare-fun m!542345 () Bool)

(assert (=> b!563822 m!542345))

(assert (=> b!563822 m!542337))

(assert (=> b!563822 m!542339))

(check-sat (not b!563823) (not b!563824) (not b!563821) (not b!563828) (not start!51562) (not b!563826) (not b!563825) (not b!563822) (not b!563827) (not b!563820))
(check-sat)
