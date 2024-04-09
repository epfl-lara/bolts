; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51560 () Bool)

(assert start!51560)

(declare-fun b!563789 () Bool)

(declare-fun e!324826 () Bool)

(declare-fun e!324828 () Bool)

(assert (=> b!563789 (= e!324826 e!324828)))

(declare-fun res!355094 () Bool)

(assert (=> b!563789 (=> (not res!355094) (not e!324828))))

(declare-datatypes ((SeekEntryResult!5442 0))(
  ( (MissingZero!5442 (index!23995 (_ BitVec 32))) (Found!5442 (index!23996 (_ BitVec 32))) (Intermediate!5442 (undefined!6254 Bool) (index!23997 (_ BitVec 32)) (x!52908 (_ BitVec 32))) (Undefined!5442) (MissingVacant!5442 (index!23998 (_ BitVec 32))) )
))
(declare-fun lt!257375 () SeekEntryResult!5442)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563789 (= res!355094 (or (= lt!257375 (MissingZero!5442 i!1132)) (= lt!257375 (MissingVacant!5442 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35379 0))(
  ( (array!35380 (arr!16986 (Array (_ BitVec 32) (_ BitVec 64))) (size!17350 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35379)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35379 (_ BitVec 32)) SeekEntryResult!5442)

(assert (=> b!563789 (= lt!257375 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!355093 () Bool)

(assert (=> start!51560 (=> (not res!355093) (not e!324826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51560 (= res!355093 (validMask!0 mask!3119))))

(assert (=> start!51560 e!324826))

(assert (=> start!51560 true))

(declare-fun array_inv!12760 (array!35379) Bool)

(assert (=> start!51560 (array_inv!12760 a!3118)))

(declare-fun b!563790 () Bool)

(declare-fun res!355096 () Bool)

(assert (=> b!563790 (=> (not res!355096) (not e!324828))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35379 (_ BitVec 32)) SeekEntryResult!5442)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563790 (= res!355096 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16986 a!3118) j!142) mask!3119) (select (arr!16986 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16986 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16986 a!3118) i!1132 k!1914) j!142) (array!35380 (store (arr!16986 a!3118) i!1132 k!1914) (size!17350 a!3118)) mask!3119)))))

(declare-fun b!563791 () Bool)

(declare-fun res!355091 () Bool)

(assert (=> b!563791 (=> (not res!355091) (not e!324826))))

(assert (=> b!563791 (= res!355091 (and (= (size!17350 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17350 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17350 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563792 () Bool)

(assert (=> b!563792 (= e!324828 (not true))))

(declare-fun e!324827 () Bool)

(assert (=> b!563792 e!324827))

(declare-fun res!355100 () Bool)

(assert (=> b!563792 (=> (not res!355100) (not e!324827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35379 (_ BitVec 32)) Bool)

(assert (=> b!563792 (= res!355100 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17658 0))(
  ( (Unit!17659) )
))
(declare-fun lt!257374 () Unit!17658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17658)

(assert (=> b!563792 (= lt!257374 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563793 () Bool)

(declare-fun res!355098 () Bool)

(assert (=> b!563793 (=> (not res!355098) (not e!324828))))

(assert (=> b!563793 (= res!355098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563794 () Bool)

(declare-fun res!355099 () Bool)

(assert (=> b!563794 (=> (not res!355099) (not e!324828))))

(declare-datatypes ((List!11119 0))(
  ( (Nil!11116) (Cons!11115 (h!12118 (_ BitVec 64)) (t!17355 List!11119)) )
))
(declare-fun arrayNoDuplicates!0 (array!35379 (_ BitVec 32) List!11119) Bool)

(assert (=> b!563794 (= res!355099 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11116))))

(declare-fun b!563795 () Bool)

(declare-fun res!355097 () Bool)

(assert (=> b!563795 (=> (not res!355097) (not e!324826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563795 (= res!355097 (validKeyInArray!0 k!1914))))

(declare-fun b!563796 () Bool)

(assert (=> b!563796 (= e!324827 (= (seekEntryOrOpen!0 (select (arr!16986 a!3118) j!142) a!3118 mask!3119) (Found!5442 j!142)))))

(declare-fun b!563797 () Bool)

(declare-fun res!355092 () Bool)

(assert (=> b!563797 (=> (not res!355092) (not e!324826))))

(assert (=> b!563797 (= res!355092 (validKeyInArray!0 (select (arr!16986 a!3118) j!142)))))

(declare-fun b!563798 () Bool)

(declare-fun res!355095 () Bool)

(assert (=> b!563798 (=> (not res!355095) (not e!324826))))

(declare-fun arrayContainsKey!0 (array!35379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563798 (= res!355095 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51560 res!355093) b!563791))

(assert (= (and b!563791 res!355091) b!563797))

(assert (= (and b!563797 res!355092) b!563795))

(assert (= (and b!563795 res!355097) b!563798))

(assert (= (and b!563798 res!355095) b!563789))

(assert (= (and b!563789 res!355094) b!563793))

(assert (= (and b!563793 res!355098) b!563794))

(assert (= (and b!563794 res!355099) b!563790))

(assert (= (and b!563790 res!355096) b!563792))

(assert (= (and b!563792 res!355100) b!563796))

(declare-fun m!542275 () Bool)

(assert (=> b!563793 m!542275))

(declare-fun m!542277 () Bool)

(assert (=> start!51560 m!542277))

(declare-fun m!542279 () Bool)

(assert (=> start!51560 m!542279))

(declare-fun m!542281 () Bool)

(assert (=> b!563797 m!542281))

(assert (=> b!563797 m!542281))

(declare-fun m!542283 () Bool)

(assert (=> b!563797 m!542283))

(declare-fun m!542285 () Bool)

(assert (=> b!563794 m!542285))

(declare-fun m!542287 () Bool)

(assert (=> b!563795 m!542287))

(assert (=> b!563796 m!542281))

(assert (=> b!563796 m!542281))

(declare-fun m!542289 () Bool)

(assert (=> b!563796 m!542289))

(declare-fun m!542291 () Bool)

(assert (=> b!563789 m!542291))

(declare-fun m!542293 () Bool)

(assert (=> b!563798 m!542293))

(declare-fun m!542295 () Bool)

(assert (=> b!563792 m!542295))

(declare-fun m!542297 () Bool)

(assert (=> b!563792 m!542297))

(assert (=> b!563790 m!542281))

(declare-fun m!542299 () Bool)

(assert (=> b!563790 m!542299))

(assert (=> b!563790 m!542281))

(declare-fun m!542301 () Bool)

(assert (=> b!563790 m!542301))

(declare-fun m!542303 () Bool)

(assert (=> b!563790 m!542303))

(assert (=> b!563790 m!542301))

(declare-fun m!542305 () Bool)

(assert (=> b!563790 m!542305))

(assert (=> b!563790 m!542299))

(assert (=> b!563790 m!542281))

(declare-fun m!542307 () Bool)

(assert (=> b!563790 m!542307))

(declare-fun m!542309 () Bool)

(assert (=> b!563790 m!542309))

(assert (=> b!563790 m!542301))

(assert (=> b!563790 m!542303))

(push 1)

