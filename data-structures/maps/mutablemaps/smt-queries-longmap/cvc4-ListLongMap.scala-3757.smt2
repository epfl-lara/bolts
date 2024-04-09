; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51558 () Bool)

(assert start!51558)

(declare-fun b!563758 () Bool)

(declare-fun e!324817 () Bool)

(declare-fun e!324813 () Bool)

(assert (=> b!563758 (= e!324817 e!324813)))

(declare-fun res!355070 () Bool)

(assert (=> b!563758 (=> (not res!355070) (not e!324813))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5441 0))(
  ( (MissingZero!5441 (index!23991 (_ BitVec 32))) (Found!5441 (index!23992 (_ BitVec 32))) (Intermediate!5441 (undefined!6253 Bool) (index!23993 (_ BitVec 32)) (x!52899 (_ BitVec 32))) (Undefined!5441) (MissingVacant!5441 (index!23994 (_ BitVec 32))) )
))
(declare-fun lt!257366 () SeekEntryResult!5441)

(declare-fun lt!257369 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35377 0))(
  ( (array!35378 (arr!16985 (Array (_ BitVec 32) (_ BitVec 64))) (size!17349 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35377)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35377 (_ BitVec 32)) SeekEntryResult!5441)

(assert (=> b!563758 (= res!355070 (= lt!257366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257369 (select (store (arr!16985 a!3118) i!1132 k!1914) j!142) (array!35378 (store (arr!16985 a!3118) i!1132 k!1914) (size!17349 a!3118)) mask!3119)))))

(declare-fun lt!257365 () (_ BitVec 32))

(assert (=> b!563758 (= lt!257366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257365 (select (arr!16985 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563758 (= lt!257369 (toIndex!0 (select (store (arr!16985 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563758 (= lt!257365 (toIndex!0 (select (arr!16985 a!3118) j!142) mask!3119))))

(declare-fun b!563760 () Bool)

(declare-fun res!355065 () Bool)

(declare-fun e!324814 () Bool)

(assert (=> b!563760 (=> (not res!355065) (not e!324814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563760 (= res!355065 (validKeyInArray!0 (select (arr!16985 a!3118) j!142)))))

(declare-fun b!563761 () Bool)

(declare-fun res!355062 () Bool)

(assert (=> b!563761 (=> (not res!355062) (not e!324817))))

(declare-datatypes ((List!11118 0))(
  ( (Nil!11115) (Cons!11114 (h!12117 (_ BitVec 64)) (t!17354 List!11118)) )
))
(declare-fun arrayNoDuplicates!0 (array!35377 (_ BitVec 32) List!11118) Bool)

(assert (=> b!563761 (= res!355062 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11115))))

(declare-fun b!563762 () Bool)

(declare-fun res!355061 () Bool)

(assert (=> b!563762 (=> (not res!355061) (not e!324814))))

(declare-fun arrayContainsKey!0 (array!35377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563762 (= res!355061 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563763 () Bool)

(declare-fun res!355063 () Bool)

(assert (=> b!563763 (=> (not res!355063) (not e!324817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35377 (_ BitVec 32)) Bool)

(assert (=> b!563763 (= res!355063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!324812 () Bool)

(declare-fun b!563764 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35377 (_ BitVec 32)) SeekEntryResult!5441)

(assert (=> b!563764 (= e!324812 (= (seekEntryOrOpen!0 (select (arr!16985 a!3118) j!142) a!3118 mask!3119) (Found!5441 j!142)))))

(declare-fun res!355066 () Bool)

(assert (=> start!51558 (=> (not res!355066) (not e!324814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51558 (= res!355066 (validMask!0 mask!3119))))

(assert (=> start!51558 e!324814))

(assert (=> start!51558 true))

(declare-fun array_inv!12759 (array!35377) Bool)

(assert (=> start!51558 (array_inv!12759 a!3118)))

(declare-fun b!563759 () Bool)

(declare-fun res!355067 () Bool)

(assert (=> b!563759 (=> (not res!355067) (not e!324814))))

(assert (=> b!563759 (= res!355067 (and (= (size!17349 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17349 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17349 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563765 () Bool)

(declare-fun res!355060 () Bool)

(assert (=> b!563765 (=> (not res!355060) (not e!324814))))

(assert (=> b!563765 (= res!355060 (validKeyInArray!0 k!1914))))

(declare-fun e!324815 () Bool)

(declare-fun b!563766 () Bool)

(assert (=> b!563766 (= e!324815 (validKeyInArray!0 (select (store (arr!16985 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!563767 () Bool)

(assert (=> b!563767 (= e!324813 (not e!324815))))

(declare-fun res!355069 () Bool)

(assert (=> b!563767 (=> res!355069 e!324815)))

(declare-fun lt!257368 () Bool)

(assert (=> b!563767 (= res!355069 (or (and (not lt!257368) (undefined!6253 lt!257366)) (and (not lt!257368) (not (undefined!6253 lt!257366))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!563767 (= lt!257368 (not (is-Intermediate!5441 lt!257366)))))

(assert (=> b!563767 e!324812))

(declare-fun res!355064 () Bool)

(assert (=> b!563767 (=> (not res!355064) (not e!324812))))

(assert (=> b!563767 (= res!355064 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17656 0))(
  ( (Unit!17657) )
))
(declare-fun lt!257367 () Unit!17656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17656)

(assert (=> b!563767 (= lt!257367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563768 () Bool)

(assert (=> b!563768 (= e!324814 e!324817)))

(declare-fun res!355068 () Bool)

(assert (=> b!563768 (=> (not res!355068) (not e!324817))))

(declare-fun lt!257364 () SeekEntryResult!5441)

(assert (=> b!563768 (= res!355068 (or (= lt!257364 (MissingZero!5441 i!1132)) (= lt!257364 (MissingVacant!5441 i!1132))))))

(assert (=> b!563768 (= lt!257364 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51558 res!355066) b!563759))

(assert (= (and b!563759 res!355067) b!563760))

(assert (= (and b!563760 res!355065) b!563765))

(assert (= (and b!563765 res!355060) b!563762))

(assert (= (and b!563762 res!355061) b!563768))

(assert (= (and b!563768 res!355068) b!563763))

(assert (= (and b!563763 res!355063) b!563761))

(assert (= (and b!563761 res!355062) b!563758))

(assert (= (and b!563758 res!355070) b!563767))

(assert (= (and b!563767 res!355064) b!563764))

(assert (= (and b!563767 (not res!355069)) b!563766))

(declare-fun m!542237 () Bool)

(assert (=> b!563764 m!542237))

(assert (=> b!563764 m!542237))

(declare-fun m!542239 () Bool)

(assert (=> b!563764 m!542239))

(declare-fun m!542241 () Bool)

(assert (=> b!563762 m!542241))

(declare-fun m!542243 () Bool)

(assert (=> b!563767 m!542243))

(declare-fun m!542245 () Bool)

(assert (=> b!563767 m!542245))

(declare-fun m!542247 () Bool)

(assert (=> b!563763 m!542247))

(declare-fun m!542249 () Bool)

(assert (=> b!563765 m!542249))

(assert (=> b!563758 m!542237))

(declare-fun m!542251 () Bool)

(assert (=> b!563758 m!542251))

(assert (=> b!563758 m!542237))

(declare-fun m!542253 () Bool)

(assert (=> b!563758 m!542253))

(assert (=> b!563758 m!542237))

(declare-fun m!542255 () Bool)

(assert (=> b!563758 m!542255))

(declare-fun m!542257 () Bool)

(assert (=> b!563758 m!542257))

(assert (=> b!563758 m!542253))

(declare-fun m!542259 () Bool)

(assert (=> b!563758 m!542259))

(assert (=> b!563758 m!542253))

(declare-fun m!542261 () Bool)

(assert (=> b!563758 m!542261))

(declare-fun m!542263 () Bool)

(assert (=> b!563768 m!542263))

(declare-fun m!542265 () Bool)

(assert (=> b!563761 m!542265))

(assert (=> b!563760 m!542237))

(assert (=> b!563760 m!542237))

(declare-fun m!542267 () Bool)

(assert (=> b!563760 m!542267))

(declare-fun m!542269 () Bool)

(assert (=> start!51558 m!542269))

(declare-fun m!542271 () Bool)

(assert (=> start!51558 m!542271))

(assert (=> b!563766 m!542257))

(assert (=> b!563766 m!542253))

(assert (=> b!563766 m!542253))

(declare-fun m!542273 () Bool)

(assert (=> b!563766 m!542273))

(push 1)

