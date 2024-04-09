; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51524 () Bool)

(assert start!51524)

(declare-fun b!563240 () Bool)

(declare-fun res!354549 () Bool)

(declare-fun e!324584 () Bool)

(assert (=> b!563240 (=> (not res!354549) (not e!324584))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563240 (= res!354549 (validKeyInArray!0 k!1914))))

(declare-fun b!563241 () Bool)

(declare-fun e!324585 () Bool)

(assert (=> b!563241 (= e!324584 e!324585)))

(declare-fun res!354550 () Bool)

(assert (=> b!563241 (=> (not res!354550) (not e!324585))))

(declare-datatypes ((SeekEntryResult!5424 0))(
  ( (MissingZero!5424 (index!23923 (_ BitVec 32))) (Found!5424 (index!23924 (_ BitVec 32))) (Intermediate!5424 (undefined!6236 Bool) (index!23925 (_ BitVec 32)) (x!52842 (_ BitVec 32))) (Undefined!5424) (MissingVacant!5424 (index!23926 (_ BitVec 32))) )
))
(declare-fun lt!257195 () SeekEntryResult!5424)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563241 (= res!354550 (or (= lt!257195 (MissingZero!5424 i!1132)) (= lt!257195 (MissingVacant!5424 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35343 0))(
  ( (array!35344 (arr!16968 (Array (_ BitVec 32) (_ BitVec 64))) (size!17332 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35343)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35343 (_ BitVec 32)) SeekEntryResult!5424)

(assert (=> b!563241 (= lt!257195 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563242 () Bool)

(declare-fun res!354544 () Bool)

(assert (=> b!563242 (=> (not res!354544) (not e!324585))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35343 (_ BitVec 32)) SeekEntryResult!5424)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563242 (= res!354544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16968 a!3118) j!142) mask!3119) (select (arr!16968 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16968 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16968 a!3118) i!1132 k!1914) j!142) (array!35344 (store (arr!16968 a!3118) i!1132 k!1914) (size!17332 a!3118)) mask!3119)))))

(declare-fun b!563243 () Bool)

(declare-fun res!354546 () Bool)

(assert (=> b!563243 (=> (not res!354546) (not e!324585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35343 (_ BitVec 32)) Bool)

(assert (=> b!563243 (= res!354546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563244 () Bool)

(declare-fun res!354551 () Bool)

(assert (=> b!563244 (=> (not res!354551) (not e!324585))))

(declare-datatypes ((List!11101 0))(
  ( (Nil!11098) (Cons!11097 (h!12100 (_ BitVec 64)) (t!17337 List!11101)) )
))
(declare-fun arrayNoDuplicates!0 (array!35343 (_ BitVec 32) List!11101) Bool)

(assert (=> b!563244 (= res!354551 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11098))))

(declare-fun b!563245 () Bool)

(declare-fun res!354548 () Bool)

(assert (=> b!563245 (=> (not res!354548) (not e!324584))))

(declare-fun arrayContainsKey!0 (array!35343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563245 (= res!354548 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563246 () Bool)

(assert (=> b!563246 (= e!324585 (not true))))

(declare-fun e!324583 () Bool)

(assert (=> b!563246 e!324583))

(declare-fun res!354542 () Bool)

(assert (=> b!563246 (=> (not res!354542) (not e!324583))))

(assert (=> b!563246 (= res!354542 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17622 0))(
  ( (Unit!17623) )
))
(declare-fun lt!257194 () Unit!17622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35343 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17622)

(assert (=> b!563246 (= lt!257194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!354545 () Bool)

(assert (=> start!51524 (=> (not res!354545) (not e!324584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51524 (= res!354545 (validMask!0 mask!3119))))

(assert (=> start!51524 e!324584))

(assert (=> start!51524 true))

(declare-fun array_inv!12742 (array!35343) Bool)

(assert (=> start!51524 (array_inv!12742 a!3118)))

(declare-fun b!563247 () Bool)

(assert (=> b!563247 (= e!324583 (= (seekEntryOrOpen!0 (select (arr!16968 a!3118) j!142) a!3118 mask!3119) (Found!5424 j!142)))))

(declare-fun b!563248 () Bool)

(declare-fun res!354547 () Bool)

(assert (=> b!563248 (=> (not res!354547) (not e!324584))))

(assert (=> b!563248 (= res!354547 (validKeyInArray!0 (select (arr!16968 a!3118) j!142)))))

(declare-fun b!563249 () Bool)

(declare-fun res!354543 () Bool)

(assert (=> b!563249 (=> (not res!354543) (not e!324584))))

(assert (=> b!563249 (= res!354543 (and (= (size!17332 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17332 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17332 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51524 res!354545) b!563249))

(assert (= (and b!563249 res!354543) b!563248))

(assert (= (and b!563248 res!354547) b!563240))

(assert (= (and b!563240 res!354549) b!563245))

(assert (= (and b!563245 res!354548) b!563241))

(assert (= (and b!563241 res!354550) b!563243))

(assert (= (and b!563243 res!354546) b!563244))

(assert (= (and b!563244 res!354551) b!563242))

(assert (= (and b!563242 res!354544) b!563246))

(assert (= (and b!563246 res!354542) b!563247))

(declare-fun m!541621 () Bool)

(assert (=> b!563243 m!541621))

(declare-fun m!541623 () Bool)

(assert (=> b!563247 m!541623))

(assert (=> b!563247 m!541623))

(declare-fun m!541625 () Bool)

(assert (=> b!563247 m!541625))

(declare-fun m!541627 () Bool)

(assert (=> b!563240 m!541627))

(declare-fun m!541629 () Bool)

(assert (=> b!563245 m!541629))

(assert (=> b!563242 m!541623))

(declare-fun m!541631 () Bool)

(assert (=> b!563242 m!541631))

(assert (=> b!563242 m!541623))

(declare-fun m!541633 () Bool)

(assert (=> b!563242 m!541633))

(declare-fun m!541635 () Bool)

(assert (=> b!563242 m!541635))

(assert (=> b!563242 m!541633))

(declare-fun m!541637 () Bool)

(assert (=> b!563242 m!541637))

(assert (=> b!563242 m!541631))

(assert (=> b!563242 m!541623))

(declare-fun m!541639 () Bool)

(assert (=> b!563242 m!541639))

(declare-fun m!541641 () Bool)

(assert (=> b!563242 m!541641))

(assert (=> b!563242 m!541633))

(assert (=> b!563242 m!541635))

(declare-fun m!541643 () Bool)

(assert (=> start!51524 m!541643))

(declare-fun m!541645 () Bool)

(assert (=> start!51524 m!541645))

(declare-fun m!541647 () Bool)

(assert (=> b!563241 m!541647))

(declare-fun m!541649 () Bool)

(assert (=> b!563246 m!541649))

(declare-fun m!541651 () Bool)

(assert (=> b!563246 m!541651))

(declare-fun m!541653 () Bool)

(assert (=> b!563244 m!541653))

(assert (=> b!563248 m!541623))

(assert (=> b!563248 m!541623))

(declare-fun m!541655 () Bool)

(assert (=> b!563248 m!541655))

(push 1)

