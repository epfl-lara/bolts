; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46708 () Bool)

(assert start!46708)

(declare-fun b!515185 () Bool)

(declare-fun res!314901 () Bool)

(declare-fun e!300813 () Bool)

(assert (=> b!515185 (=> (not res!314901) (not e!300813))))

(declare-datatypes ((array!32980 0))(
  ( (array!32981 (arr!15855 (Array (_ BitVec 32) (_ BitVec 64))) (size!16219 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32980)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32980 (_ BitVec 32)) Bool)

(assert (=> b!515185 (= res!314901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515186 () Bool)

(declare-fun res!314907 () Bool)

(declare-fun e!300817 () Bool)

(assert (=> b!515186 (=> (not res!314907) (not e!300817))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515186 (= res!314907 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515187 () Bool)

(declare-fun res!314900 () Bool)

(assert (=> b!515187 (=> (not res!314900) (not e!300817))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515187 (= res!314900 (and (= (size!16219 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16219 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16219 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515188 () Bool)

(declare-fun res!314905 () Bool)

(assert (=> b!515188 (=> (not res!314905) (not e!300817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515188 (= res!314905 (validKeyInArray!0 (select (arr!15855 a!3235) j!176)))))

(declare-fun res!314899 () Bool)

(assert (=> start!46708 (=> (not res!314899) (not e!300817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46708 (= res!314899 (validMask!0 mask!3524))))

(assert (=> start!46708 e!300817))

(assert (=> start!46708 true))

(declare-fun array_inv!11629 (array!32980) Bool)

(assert (=> start!46708 (array_inv!11629 a!3235)))

(declare-fun b!515189 () Bool)

(declare-fun res!314908 () Bool)

(assert (=> b!515189 (=> (not res!314908) (not e!300817))))

(assert (=> b!515189 (= res!314908 (validKeyInArray!0 k!2280))))

(declare-fun b!515190 () Bool)

(declare-fun res!314904 () Bool)

(assert (=> b!515190 (=> (not res!314904) (not e!300813))))

(declare-datatypes ((List!10066 0))(
  ( (Nil!10063) (Cons!10062 (h!10960 (_ BitVec 64)) (t!16302 List!10066)) )
))
(declare-fun arrayNoDuplicates!0 (array!32980 (_ BitVec 32) List!10066) Bool)

(assert (=> b!515190 (= res!314904 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10063))))

(declare-fun b!515191 () Bool)

(declare-fun e!300815 () Bool)

(assert (=> b!515191 (= e!300815 true)))

(declare-datatypes ((SeekEntryResult!4329 0))(
  ( (MissingZero!4329 (index!19504 (_ BitVec 32))) (Found!4329 (index!19505 (_ BitVec 32))) (Intermediate!4329 (undefined!5141 Bool) (index!19506 (_ BitVec 32)) (x!48503 (_ BitVec 32))) (Undefined!4329) (MissingVacant!4329 (index!19507 (_ BitVec 32))) )
))
(declare-fun lt!235897 () SeekEntryResult!4329)

(assert (=> b!515191 (and (bvslt (x!48503 lt!235897) #b01111111111111111111111111111110) (or (= (select (arr!15855 a!3235) (index!19506 lt!235897)) (select (arr!15855 a!3235) j!176)) (= (select (arr!15855 a!3235) (index!19506 lt!235897)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15855 a!3235) (index!19506 lt!235897)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!300814 () Bool)

(declare-fun b!515192 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32980 (_ BitVec 32)) SeekEntryResult!4329)

(assert (=> b!515192 (= e!300814 (= (seekEntryOrOpen!0 (select (arr!15855 a!3235) j!176) a!3235 mask!3524) (Found!4329 j!176)))))

(declare-fun b!515193 () Bool)

(assert (=> b!515193 (= e!300817 e!300813)))

(declare-fun res!314903 () Bool)

(assert (=> b!515193 (=> (not res!314903) (not e!300813))))

(declare-fun lt!235900 () SeekEntryResult!4329)

(assert (=> b!515193 (= res!314903 (or (= lt!235900 (MissingZero!4329 i!1204)) (= lt!235900 (MissingVacant!4329 i!1204))))))

(assert (=> b!515193 (= lt!235900 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515194 () Bool)

(declare-fun res!314906 () Bool)

(assert (=> b!515194 (=> res!314906 e!300815)))

(assert (=> b!515194 (= res!314906 (or (undefined!5141 lt!235897) (not (is-Intermediate!4329 lt!235897))))))

(declare-fun b!515195 () Bool)

(assert (=> b!515195 (= e!300813 (not e!300815))))

(declare-fun res!314902 () Bool)

(assert (=> b!515195 (=> res!314902 e!300815)))

(declare-fun lt!235898 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32980 (_ BitVec 32)) SeekEntryResult!4329)

(assert (=> b!515195 (= res!314902 (= lt!235897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235898 (select (store (arr!15855 a!3235) i!1204 k!2280) j!176) (array!32981 (store (arr!15855 a!3235) i!1204 k!2280) (size!16219 a!3235)) mask!3524)))))

(declare-fun lt!235899 () (_ BitVec 32))

(assert (=> b!515195 (= lt!235897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235899 (select (arr!15855 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515195 (= lt!235898 (toIndex!0 (select (store (arr!15855 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515195 (= lt!235899 (toIndex!0 (select (arr!15855 a!3235) j!176) mask!3524))))

(assert (=> b!515195 e!300814))

(declare-fun res!314909 () Bool)

(assert (=> b!515195 (=> (not res!314909) (not e!300814))))

(assert (=> b!515195 (= res!314909 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15908 0))(
  ( (Unit!15909) )
))
(declare-fun lt!235901 () Unit!15908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32980 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15908)

(assert (=> b!515195 (= lt!235901 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46708 res!314899) b!515187))

(assert (= (and b!515187 res!314900) b!515188))

(assert (= (and b!515188 res!314905) b!515189))

(assert (= (and b!515189 res!314908) b!515186))

(assert (= (and b!515186 res!314907) b!515193))

(assert (= (and b!515193 res!314903) b!515185))

(assert (= (and b!515185 res!314901) b!515190))

(assert (= (and b!515190 res!314904) b!515195))

(assert (= (and b!515195 res!314909) b!515192))

(assert (= (and b!515195 (not res!314902)) b!515194))

(assert (= (and b!515194 (not res!314906)) b!515191))

(declare-fun m!496549 () Bool)

(assert (=> b!515185 m!496549))

(declare-fun m!496551 () Bool)

(assert (=> b!515190 m!496551))

(declare-fun m!496553 () Bool)

(assert (=> b!515188 m!496553))

(assert (=> b!515188 m!496553))

(declare-fun m!496555 () Bool)

(assert (=> b!515188 m!496555))

(declare-fun m!496557 () Bool)

(assert (=> start!46708 m!496557))

(declare-fun m!496559 () Bool)

(assert (=> start!46708 m!496559))

(assert (=> b!515195 m!496553))

(declare-fun m!496561 () Bool)

(assert (=> b!515195 m!496561))

(declare-fun m!496563 () Bool)

(assert (=> b!515195 m!496563))

(declare-fun m!496565 () Bool)

(assert (=> b!515195 m!496565))

(declare-fun m!496567 () Bool)

(assert (=> b!515195 m!496567))

(assert (=> b!515195 m!496553))

(declare-fun m!496569 () Bool)

(assert (=> b!515195 m!496569))

(assert (=> b!515195 m!496553))

(declare-fun m!496571 () Bool)

(assert (=> b!515195 m!496571))

(assert (=> b!515195 m!496567))

(declare-fun m!496573 () Bool)

(assert (=> b!515195 m!496573))

(assert (=> b!515195 m!496567))

(declare-fun m!496575 () Bool)

(assert (=> b!515195 m!496575))

(declare-fun m!496577 () Bool)

(assert (=> b!515189 m!496577))

(declare-fun m!496579 () Bool)

(assert (=> b!515191 m!496579))

(assert (=> b!515191 m!496553))

(declare-fun m!496581 () Bool)

(assert (=> b!515193 m!496581))

(declare-fun m!496583 () Bool)

(assert (=> b!515186 m!496583))

(assert (=> b!515192 m!496553))

(assert (=> b!515192 m!496553))

(declare-fun m!496585 () Bool)

(assert (=> b!515192 m!496585))

(push 1)

