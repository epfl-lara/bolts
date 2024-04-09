; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51600 () Bool)

(assert start!51600)

(declare-fun b!564247 () Bool)

(declare-fun e!325014 () Bool)

(declare-fun e!325013 () Bool)

(assert (=> b!564247 (= e!325014 e!325013)))

(declare-fun res!355555 () Bool)

(assert (=> b!564247 (=> (not res!355555) (not e!325013))))

(declare-datatypes ((SeekEntryResult!5462 0))(
  ( (MissingZero!5462 (index!24075 (_ BitVec 32))) (Found!5462 (index!24076 (_ BitVec 32))) (Intermediate!5462 (undefined!6274 Bool) (index!24077 (_ BitVec 32)) (x!52976 (_ BitVec 32))) (Undefined!5462) (MissingVacant!5462 (index!24078 (_ BitVec 32))) )
))
(declare-fun lt!257494 () SeekEntryResult!5462)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564247 (= res!355555 (or (= lt!257494 (MissingZero!5462 i!1132)) (= lt!257494 (MissingVacant!5462 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35419 0))(
  ( (array!35420 (arr!17006 (Array (_ BitVec 32) (_ BitVec 64))) (size!17370 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35419)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35419 (_ BitVec 32)) SeekEntryResult!5462)

(assert (=> b!564247 (= lt!257494 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564248 () Bool)

(declare-fun res!355552 () Bool)

(assert (=> b!564248 (=> (not res!355552) (not e!325014))))

(declare-fun arrayContainsKey!0 (array!35419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564248 (= res!355552 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564249 () Bool)

(declare-fun res!355554 () Bool)

(assert (=> b!564249 (=> (not res!355554) (not e!325014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564249 (= res!355554 (validKeyInArray!0 k!1914))))

(declare-fun res!355549 () Bool)

(assert (=> start!51600 (=> (not res!355549) (not e!325014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51600 (= res!355549 (validMask!0 mask!3119))))

(assert (=> start!51600 e!325014))

(assert (=> start!51600 true))

(declare-fun array_inv!12780 (array!35419) Bool)

(assert (=> start!51600 (array_inv!12780 a!3118)))

(declare-fun b!564250 () Bool)

(declare-fun res!355550 () Bool)

(assert (=> b!564250 (=> (not res!355550) (not e!325014))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564250 (= res!355550 (and (= (size!17370 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17370 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17370 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564251 () Bool)

(declare-fun res!355553 () Bool)

(assert (=> b!564251 (=> (not res!355553) (not e!325013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35419 (_ BitVec 32)) Bool)

(assert (=> b!564251 (= res!355553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564252 () Bool)

(assert (=> b!564252 (= e!325013 false)))

(declare-fun lt!257495 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564252 (= lt!257495 (toIndex!0 (select (store (arr!17006 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!564253 () Bool)

(declare-fun res!355556 () Bool)

(assert (=> b!564253 (=> (not res!355556) (not e!325013))))

(declare-datatypes ((List!11139 0))(
  ( (Nil!11136) (Cons!11135 (h!12138 (_ BitVec 64)) (t!17375 List!11139)) )
))
(declare-fun arrayNoDuplicates!0 (array!35419 (_ BitVec 32) List!11139) Bool)

(assert (=> b!564253 (= res!355556 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11136))))

(declare-fun b!564254 () Bool)

(declare-fun res!355551 () Bool)

(assert (=> b!564254 (=> (not res!355551) (not e!325014))))

(assert (=> b!564254 (= res!355551 (validKeyInArray!0 (select (arr!17006 a!3118) j!142)))))

(assert (= (and start!51600 res!355549) b!564250))

(assert (= (and b!564250 res!355550) b!564254))

(assert (= (and b!564254 res!355551) b!564249))

(assert (= (and b!564249 res!355554) b!564248))

(assert (= (and b!564248 res!355552) b!564247))

(assert (= (and b!564247 res!355555) b!564251))

(assert (= (and b!564251 res!355553) b!564253))

(assert (= (and b!564253 res!355556) b!564252))

(declare-fun m!542707 () Bool)

(assert (=> b!564249 m!542707))

(declare-fun m!542709 () Bool)

(assert (=> b!564252 m!542709))

(declare-fun m!542711 () Bool)

(assert (=> b!564252 m!542711))

(assert (=> b!564252 m!542711))

(declare-fun m!542713 () Bool)

(assert (=> b!564252 m!542713))

(declare-fun m!542715 () Bool)

(assert (=> b!564254 m!542715))

(assert (=> b!564254 m!542715))

(declare-fun m!542717 () Bool)

(assert (=> b!564254 m!542717))

(declare-fun m!542719 () Bool)

(assert (=> b!564248 m!542719))

(declare-fun m!542721 () Bool)

(assert (=> b!564247 m!542721))

(declare-fun m!542723 () Bool)

(assert (=> b!564251 m!542723))

(declare-fun m!542725 () Bool)

(assert (=> b!564253 m!542725))

(declare-fun m!542727 () Bool)

(assert (=> start!51600 m!542727))

(declare-fun m!542729 () Bool)

(assert (=> start!51600 m!542729))

(push 1)

(assert (not b!564249))

(assert (not b!564248))

(assert (not b!564251))

(assert (not b!564252))

