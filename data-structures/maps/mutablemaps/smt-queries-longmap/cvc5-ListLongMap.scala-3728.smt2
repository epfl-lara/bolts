; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51380 () Bool)

(assert start!51380)

(declare-fun b!560555 () Bool)

(declare-fun res!351869 () Bool)

(declare-fun e!322989 () Bool)

(assert (=> b!560555 (=> (not res!351869) (not e!322989))))

(declare-datatypes ((array!35199 0))(
  ( (array!35200 (arr!16896 (Array (_ BitVec 32) (_ BitVec 64))) (size!17260 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35199)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560555 (= res!351869 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!351858 () Bool)

(assert (=> start!51380 (=> (not res!351858) (not e!322989))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51380 (= res!351858 (validMask!0 mask!3119))))

(assert (=> start!51380 e!322989))

(assert (=> start!51380 true))

(declare-fun array_inv!12670 (array!35199) Bool)

(assert (=> start!51380 (array_inv!12670 a!3118)))

(declare-fun b!560556 () Bool)

(declare-fun e!322990 () Bool)

(assert (=> b!560556 (= e!322990 (not true))))

(declare-fun e!322993 () Bool)

(assert (=> b!560556 e!322993))

(declare-fun res!351857 () Bool)

(assert (=> b!560556 (=> (not res!351857) (not e!322993))))

(declare-datatypes ((SeekEntryResult!5352 0))(
  ( (MissingZero!5352 (index!23635 (_ BitVec 32))) (Found!5352 (index!23636 (_ BitVec 32))) (Intermediate!5352 (undefined!6164 Bool) (index!23637 (_ BitVec 32)) (x!52578 (_ BitVec 32))) (Undefined!5352) (MissingVacant!5352 (index!23638 (_ BitVec 32))) )
))
(declare-fun lt!255002 () SeekEntryResult!5352)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560556 (= res!351857 (= lt!255002 (Found!5352 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35199 (_ BitVec 32)) SeekEntryResult!5352)

(assert (=> b!560556 (= lt!255002 (seekEntryOrOpen!0 (select (arr!16896 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35199 (_ BitVec 32)) Bool)

(assert (=> b!560556 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17478 0))(
  ( (Unit!17479) )
))
(declare-fun lt!254995 () Unit!17478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17478)

(assert (=> b!560556 (= lt!254995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560557 () Bool)

(declare-fun res!351865 () Bool)

(declare-fun e!322994 () Bool)

(assert (=> b!560557 (=> (not res!351865) (not e!322994))))

(assert (=> b!560557 (= res!351865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560558 () Bool)

(declare-fun e!322992 () Bool)

(declare-fun e!322995 () Bool)

(assert (=> b!560558 (= e!322992 e!322995)))

(declare-fun res!351862 () Bool)

(assert (=> b!560558 (=> res!351862 e!322995)))

(declare-fun lt!254999 () (_ BitVec 64))

(assert (=> b!560558 (= res!351862 (or (= lt!254999 (select (arr!16896 a!3118) j!142)) (= lt!254999 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!254997 () SeekEntryResult!5352)

(assert (=> b!560558 (= lt!254999 (select (arr!16896 a!3118) (index!23637 lt!254997)))))

(declare-fun b!560559 () Bool)

(declare-fun res!351861 () Bool)

(assert (=> b!560559 (=> (not res!351861) (not e!322994))))

(declare-datatypes ((List!11029 0))(
  ( (Nil!11026) (Cons!11025 (h!12028 (_ BitVec 64)) (t!17265 List!11029)) )
))
(declare-fun arrayNoDuplicates!0 (array!35199 (_ BitVec 32) List!11029) Bool)

(assert (=> b!560559 (= res!351861 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11026))))

(declare-fun b!560560 () Bool)

(declare-fun lt!255000 () (_ BitVec 64))

(declare-fun e!322996 () Bool)

(declare-fun lt!254996 () array!35199)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35199 (_ BitVec 32)) SeekEntryResult!5352)

(assert (=> b!560560 (= e!322996 (= (seekEntryOrOpen!0 lt!255000 lt!254996 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52578 lt!254997) (index!23637 lt!254997) (index!23637 lt!254997) lt!255000 lt!254996 mask!3119)))))

(declare-fun b!560561 () Bool)

(assert (=> b!560561 (= e!322994 e!322990)))

(declare-fun res!351868 () Bool)

(assert (=> b!560561 (=> (not res!351868) (not e!322990))))

(declare-fun lt!254998 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35199 (_ BitVec 32)) SeekEntryResult!5352)

(assert (=> b!560561 (= res!351868 (= lt!254997 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254998 lt!255000 lt!254996 mask!3119)))))

(declare-fun lt!255001 () (_ BitVec 32))

(assert (=> b!560561 (= lt!254997 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255001 (select (arr!16896 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560561 (= lt!254998 (toIndex!0 lt!255000 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560561 (= lt!255000 (select (store (arr!16896 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560561 (= lt!255001 (toIndex!0 (select (arr!16896 a!3118) j!142) mask!3119))))

(assert (=> b!560561 (= lt!254996 (array!35200 (store (arr!16896 a!3118) i!1132 k!1914) (size!17260 a!3118)))))

(declare-fun b!560562 () Bool)

(declare-fun res!351860 () Bool)

(assert (=> b!560562 (=> (not res!351860) (not e!322989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560562 (= res!351860 (validKeyInArray!0 (select (arr!16896 a!3118) j!142)))))

(declare-fun b!560563 () Bool)

(declare-fun res!351866 () Bool)

(assert (=> b!560563 (=> (not res!351866) (not e!322989))))

(assert (=> b!560563 (= res!351866 (and (= (size!17260 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17260 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17260 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560564 () Bool)

(assert (=> b!560564 (= e!322993 e!322992)))

(declare-fun res!351864 () Bool)

(assert (=> b!560564 (=> res!351864 e!322992)))

(assert (=> b!560564 (= res!351864 (or (undefined!6164 lt!254997) (not (is-Intermediate!5352 lt!254997))))))

(declare-fun b!560565 () Bool)

(declare-fun res!351863 () Bool)

(assert (=> b!560565 (=> (not res!351863) (not e!322989))))

(assert (=> b!560565 (= res!351863 (validKeyInArray!0 k!1914))))

(declare-fun b!560566 () Bool)

(assert (=> b!560566 (= e!322995 e!322996)))

(declare-fun res!351859 () Bool)

(assert (=> b!560566 (=> (not res!351859) (not e!322996))))

(assert (=> b!560566 (= res!351859 (= lt!255002 (seekKeyOrZeroReturnVacant!0 (x!52578 lt!254997) (index!23637 lt!254997) (index!23637 lt!254997) (select (arr!16896 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560567 () Bool)

(assert (=> b!560567 (= e!322989 e!322994)))

(declare-fun res!351867 () Bool)

(assert (=> b!560567 (=> (not res!351867) (not e!322994))))

(declare-fun lt!254994 () SeekEntryResult!5352)

(assert (=> b!560567 (= res!351867 (or (= lt!254994 (MissingZero!5352 i!1132)) (= lt!254994 (MissingVacant!5352 i!1132))))))

(assert (=> b!560567 (= lt!254994 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51380 res!351858) b!560563))

(assert (= (and b!560563 res!351866) b!560562))

(assert (= (and b!560562 res!351860) b!560565))

(assert (= (and b!560565 res!351863) b!560555))

(assert (= (and b!560555 res!351869) b!560567))

(assert (= (and b!560567 res!351867) b!560557))

(assert (= (and b!560557 res!351865) b!560559))

(assert (= (and b!560559 res!351861) b!560561))

(assert (= (and b!560561 res!351868) b!560556))

(assert (= (and b!560556 res!351857) b!560564))

(assert (= (and b!560564 (not res!351864)) b!560558))

(assert (= (and b!560558 (not res!351862)) b!560566))

(assert (= (and b!560566 res!351859) b!560560))

(declare-fun m!538399 () Bool)

(assert (=> b!560558 m!538399))

(declare-fun m!538401 () Bool)

(assert (=> b!560558 m!538401))

(declare-fun m!538403 () Bool)

(assert (=> b!560555 m!538403))

(declare-fun m!538405 () Bool)

(assert (=> b!560567 m!538405))

(declare-fun m!538407 () Bool)

(assert (=> b!560557 m!538407))

(assert (=> b!560556 m!538399))

(assert (=> b!560556 m!538399))

(declare-fun m!538409 () Bool)

(assert (=> b!560556 m!538409))

(declare-fun m!538411 () Bool)

(assert (=> b!560556 m!538411))

(declare-fun m!538413 () Bool)

(assert (=> b!560556 m!538413))

(declare-fun m!538415 () Bool)

(assert (=> b!560560 m!538415))

(declare-fun m!538417 () Bool)

(assert (=> b!560560 m!538417))

(assert (=> b!560566 m!538399))

(assert (=> b!560566 m!538399))

(declare-fun m!538419 () Bool)

(assert (=> b!560566 m!538419))

(assert (=> b!560561 m!538399))

(declare-fun m!538421 () Bool)

(assert (=> b!560561 m!538421))

(assert (=> b!560561 m!538399))

(declare-fun m!538423 () Bool)

(assert (=> b!560561 m!538423))

(declare-fun m!538425 () Bool)

(assert (=> b!560561 m!538425))

(declare-fun m!538427 () Bool)

(assert (=> b!560561 m!538427))

(assert (=> b!560561 m!538399))

(declare-fun m!538429 () Bool)

(assert (=> b!560561 m!538429))

(declare-fun m!538431 () Bool)

(assert (=> b!560561 m!538431))

(declare-fun m!538433 () Bool)

(assert (=> b!560565 m!538433))

(declare-fun m!538435 () Bool)

(assert (=> start!51380 m!538435))

(declare-fun m!538437 () Bool)

(assert (=> start!51380 m!538437))

(declare-fun m!538439 () Bool)

(assert (=> b!560559 m!538439))

(assert (=> b!560562 m!538399))

(assert (=> b!560562 m!538399))

(declare-fun m!538441 () Bool)

(assert (=> b!560562 m!538441))

(push 1)

