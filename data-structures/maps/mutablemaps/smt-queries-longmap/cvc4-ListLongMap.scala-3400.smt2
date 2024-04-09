; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47006 () Bool)

(assert start!47006)

(declare-fun b!518005 () Bool)

(declare-fun res!317174 () Bool)

(declare-fun e!302258 () Bool)

(assert (=> b!518005 (=> (not res!317174) (not e!302258))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518005 (= res!317174 (validKeyInArray!0 k!2280))))

(declare-fun b!518006 () Bool)

(declare-fun e!302259 () Bool)

(assert (=> b!518006 (= e!302259 true)))

(declare-datatypes ((SeekEntryResult!4388 0))(
  ( (MissingZero!4388 (index!19740 (_ BitVec 32))) (Found!4388 (index!19741 (_ BitVec 32))) (Intermediate!4388 (undefined!5200 Bool) (index!19742 (_ BitVec 32)) (x!48732 (_ BitVec 32))) (Undefined!4388) (MissingVacant!4388 (index!19743 (_ BitVec 32))) )
))
(declare-fun lt!237169 () SeekEntryResult!4388)

(declare-datatypes ((array!33107 0))(
  ( (array!33108 (arr!15914 (Array (_ BitVec 32) (_ BitVec 64))) (size!16278 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33107)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!518006 (and (bvslt (x!48732 lt!237169) #b01111111111111111111111111111110) (or (= (select (arr!15914 a!3235) (index!19742 lt!237169)) (select (arr!15914 a!3235) j!176)) (= (select (arr!15914 a!3235) (index!19742 lt!237169)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15914 a!3235) (index!19742 lt!237169)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!518007 () Bool)

(declare-fun e!302260 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33107 (_ BitVec 32)) SeekEntryResult!4388)

(assert (=> b!518007 (= e!302260 (= (seekEntryOrOpen!0 (select (arr!15914 a!3235) j!176) a!3235 mask!3524) (Found!4388 j!176)))))

(declare-fun b!518008 () Bool)

(declare-fun res!317177 () Bool)

(assert (=> b!518008 (=> res!317177 e!302259)))

(assert (=> b!518008 (= res!317177 (or (undefined!5200 lt!237169) (not (is-Intermediate!4388 lt!237169))))))

(declare-fun b!518009 () Bool)

(declare-fun res!317179 () Bool)

(assert (=> b!518009 (=> (not res!317179) (not e!302258))))

(declare-fun arrayContainsKey!0 (array!33107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518009 (= res!317179 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518010 () Bool)

(declare-fun res!317170 () Bool)

(assert (=> b!518010 (=> (not res!317170) (not e!302258))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518010 (= res!317170 (and (= (size!16278 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16278 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16278 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!317178 () Bool)

(assert (=> start!47006 (=> (not res!317178) (not e!302258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47006 (= res!317178 (validMask!0 mask!3524))))

(assert (=> start!47006 e!302258))

(assert (=> start!47006 true))

(declare-fun array_inv!11688 (array!33107) Bool)

(assert (=> start!47006 (array_inv!11688 a!3235)))

(declare-fun b!518011 () Bool)

(declare-fun res!317173 () Bool)

(declare-fun e!302256 () Bool)

(assert (=> b!518011 (=> (not res!317173) (not e!302256))))

(declare-datatypes ((List!10125 0))(
  ( (Nil!10122) (Cons!10121 (h!11028 (_ BitVec 64)) (t!16361 List!10125)) )
))
(declare-fun arrayNoDuplicates!0 (array!33107 (_ BitVec 32) List!10125) Bool)

(assert (=> b!518011 (= res!317173 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10122))))

(declare-fun b!518012 () Bool)

(declare-fun res!317176 () Bool)

(assert (=> b!518012 (=> (not res!317176) (not e!302258))))

(assert (=> b!518012 (= res!317176 (validKeyInArray!0 (select (arr!15914 a!3235) j!176)))))

(declare-fun b!518013 () Bool)

(assert (=> b!518013 (= e!302256 (not e!302259))))

(declare-fun res!317180 () Bool)

(assert (=> b!518013 (=> res!317180 e!302259)))

(declare-fun lt!237171 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33107 (_ BitVec 32)) SeekEntryResult!4388)

(assert (=> b!518013 (= res!317180 (= lt!237169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237171 (select (store (arr!15914 a!3235) i!1204 k!2280) j!176) (array!33108 (store (arr!15914 a!3235) i!1204 k!2280) (size!16278 a!3235)) mask!3524)))))

(declare-fun lt!237170 () (_ BitVec 32))

(assert (=> b!518013 (= lt!237169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237170 (select (arr!15914 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518013 (= lt!237171 (toIndex!0 (select (store (arr!15914 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!518013 (= lt!237170 (toIndex!0 (select (arr!15914 a!3235) j!176) mask!3524))))

(assert (=> b!518013 e!302260))

(declare-fun res!317172 () Bool)

(assert (=> b!518013 (=> (not res!317172) (not e!302260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33107 (_ BitVec 32)) Bool)

(assert (=> b!518013 (= res!317172 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16026 0))(
  ( (Unit!16027) )
))
(declare-fun lt!237172 () Unit!16026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16026)

(assert (=> b!518013 (= lt!237172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518014 () Bool)

(declare-fun res!317175 () Bool)

(assert (=> b!518014 (=> (not res!317175) (not e!302256))))

(assert (=> b!518014 (= res!317175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!518015 () Bool)

(assert (=> b!518015 (= e!302258 e!302256)))

(declare-fun res!317171 () Bool)

(assert (=> b!518015 (=> (not res!317171) (not e!302256))))

(declare-fun lt!237173 () SeekEntryResult!4388)

(assert (=> b!518015 (= res!317171 (or (= lt!237173 (MissingZero!4388 i!1204)) (= lt!237173 (MissingVacant!4388 i!1204))))))

(assert (=> b!518015 (= lt!237173 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!47006 res!317178) b!518010))

(assert (= (and b!518010 res!317170) b!518012))

(assert (= (and b!518012 res!317176) b!518005))

(assert (= (and b!518005 res!317174) b!518009))

(assert (= (and b!518009 res!317179) b!518015))

(assert (= (and b!518015 res!317171) b!518014))

(assert (= (and b!518014 res!317175) b!518011))

(assert (= (and b!518011 res!317173) b!518013))

(assert (= (and b!518013 res!317172) b!518007))

(assert (= (and b!518013 (not res!317180)) b!518008))

(assert (= (and b!518008 (not res!317177)) b!518006))

(declare-fun m!499403 () Bool)

(assert (=> b!518007 m!499403))

(assert (=> b!518007 m!499403))

(declare-fun m!499405 () Bool)

(assert (=> b!518007 m!499405))

(declare-fun m!499407 () Bool)

(assert (=> b!518013 m!499407))

(assert (=> b!518013 m!499403))

(declare-fun m!499409 () Bool)

(assert (=> b!518013 m!499409))

(assert (=> b!518013 m!499403))

(declare-fun m!499411 () Bool)

(assert (=> b!518013 m!499411))

(declare-fun m!499413 () Bool)

(assert (=> b!518013 m!499413))

(declare-fun m!499415 () Bool)

(assert (=> b!518013 m!499415))

(assert (=> b!518013 m!499413))

(declare-fun m!499417 () Bool)

(assert (=> b!518013 m!499417))

(declare-fun m!499419 () Bool)

(assert (=> b!518013 m!499419))

(assert (=> b!518013 m!499403))

(declare-fun m!499421 () Bool)

(assert (=> b!518013 m!499421))

(assert (=> b!518013 m!499413))

(declare-fun m!499423 () Bool)

(assert (=> start!47006 m!499423))

(declare-fun m!499425 () Bool)

(assert (=> start!47006 m!499425))

(declare-fun m!499427 () Bool)

(assert (=> b!518014 m!499427))

(declare-fun m!499429 () Bool)

(assert (=> b!518005 m!499429))

(declare-fun m!499431 () Bool)

(assert (=> b!518015 m!499431))

(declare-fun m!499433 () Bool)

(assert (=> b!518011 m!499433))

(assert (=> b!518012 m!499403))

(assert (=> b!518012 m!499403))

(declare-fun m!499435 () Bool)

(assert (=> b!518012 m!499435))

(declare-fun m!499437 () Bool)

(assert (=> b!518009 m!499437))

(declare-fun m!499439 () Bool)

(assert (=> b!518006 m!499439))

(assert (=> b!518006 m!499403))

(push 1)

