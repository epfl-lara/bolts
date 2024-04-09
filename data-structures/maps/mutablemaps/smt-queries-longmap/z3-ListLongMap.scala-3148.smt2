; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44322 () Bool)

(assert start!44322)

(declare-fun b!487122 () Bool)

(declare-fun res!290661 () Bool)

(declare-fun e!286628 () Bool)

(assert (=> b!487122 (=> (not res!290661) (not e!286628))))

(declare-datatypes ((array!31533 0))(
  ( (array!31534 (arr!15157 (Array (_ BitVec 32) (_ BitVec 64))) (size!15521 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31533)

(declare-datatypes ((List!9368 0))(
  ( (Nil!9365) (Cons!9364 (h!10220 (_ BitVec 64)) (t!15604 List!9368)) )
))
(declare-fun arrayNoDuplicates!0 (array!31533 (_ BitVec 32) List!9368) Bool)

(assert (=> b!487122 (= res!290661 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9365))))

(declare-fun b!487123 () Bool)

(declare-fun res!290666 () Bool)

(declare-fun e!286630 () Bool)

(assert (=> b!487123 (=> (not res!290666) (not e!286630))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487123 (= res!290666 (validKeyInArray!0 (select (arr!15157 a!3235) j!176)))))

(declare-fun b!487124 () Bool)

(assert (=> b!487124 (= e!286630 e!286628)))

(declare-fun res!290663 () Bool)

(assert (=> b!487124 (=> (not res!290663) (not e!286628))))

(declare-datatypes ((SeekEntryResult!3631 0))(
  ( (MissingZero!3631 (index!16703 (_ BitVec 32))) (Found!3631 (index!16704 (_ BitVec 32))) (Intermediate!3631 (undefined!4443 Bool) (index!16705 (_ BitVec 32)) (x!45854 (_ BitVec 32))) (Undefined!3631) (MissingVacant!3631 (index!16706 (_ BitVec 32))) )
))
(declare-fun lt!219955 () SeekEntryResult!3631)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487124 (= res!290663 (or (= lt!219955 (MissingZero!3631 i!1204)) (= lt!219955 (MissingVacant!3631 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31533 (_ BitVec 32)) SeekEntryResult!3631)

(assert (=> b!487124 (= lt!219955 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487125 () Bool)

(declare-fun res!290665 () Bool)

(assert (=> b!487125 (=> (not res!290665) (not e!286630))))

(assert (=> b!487125 (= res!290665 (validKeyInArray!0 k0!2280))))

(declare-fun b!487126 () Bool)

(assert (=> b!487126 (= e!286628 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun e!286629 () Bool)

(assert (=> b!487126 e!286629))

(declare-fun res!290664 () Bool)

(assert (=> b!487126 (=> (not res!290664) (not e!286629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31533 (_ BitVec 32)) Bool)

(assert (=> b!487126 (= res!290664 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14200 0))(
  ( (Unit!14201) )
))
(declare-fun lt!219956 () Unit!14200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14200)

(assert (=> b!487126 (= lt!219956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!290658 () Bool)

(assert (=> start!44322 (=> (not res!290658) (not e!286630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44322 (= res!290658 (validMask!0 mask!3524))))

(assert (=> start!44322 e!286630))

(assert (=> start!44322 true))

(declare-fun array_inv!10931 (array!31533) Bool)

(assert (=> start!44322 (array_inv!10931 a!3235)))

(declare-fun b!487127 () Bool)

(declare-fun res!290662 () Bool)

(assert (=> b!487127 (=> (not res!290662) (not e!286628))))

(assert (=> b!487127 (= res!290662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487128 () Bool)

(declare-fun res!290659 () Bool)

(assert (=> b!487128 (=> (not res!290659) (not e!286630))))

(declare-fun arrayContainsKey!0 (array!31533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487128 (= res!290659 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487129 () Bool)

(assert (=> b!487129 (= e!286629 (= (seekEntryOrOpen!0 (select (arr!15157 a!3235) j!176) a!3235 mask!3524) (Found!3631 j!176)))))

(declare-fun b!487130 () Bool)

(declare-fun res!290660 () Bool)

(assert (=> b!487130 (=> (not res!290660) (not e!286630))))

(assert (=> b!487130 (= res!290660 (and (= (size!15521 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15521 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15521 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44322 res!290658) b!487130))

(assert (= (and b!487130 res!290660) b!487123))

(assert (= (and b!487123 res!290666) b!487125))

(assert (= (and b!487125 res!290665) b!487128))

(assert (= (and b!487128 res!290659) b!487124))

(assert (= (and b!487124 res!290663) b!487127))

(assert (= (and b!487127 res!290662) b!487122))

(assert (= (and b!487122 res!290661) b!487126))

(assert (= (and b!487126 res!290664) b!487129))

(declare-fun m!466987 () Bool)

(assert (=> b!487127 m!466987))

(declare-fun m!466989 () Bool)

(assert (=> b!487126 m!466989))

(declare-fun m!466991 () Bool)

(assert (=> b!487126 m!466991))

(declare-fun m!466993 () Bool)

(assert (=> start!44322 m!466993))

(declare-fun m!466995 () Bool)

(assert (=> start!44322 m!466995))

(declare-fun m!466997 () Bool)

(assert (=> b!487129 m!466997))

(assert (=> b!487129 m!466997))

(declare-fun m!466999 () Bool)

(assert (=> b!487129 m!466999))

(assert (=> b!487123 m!466997))

(assert (=> b!487123 m!466997))

(declare-fun m!467001 () Bool)

(assert (=> b!487123 m!467001))

(declare-fun m!467003 () Bool)

(assert (=> b!487122 m!467003))

(declare-fun m!467005 () Bool)

(assert (=> b!487124 m!467005))

(declare-fun m!467007 () Bool)

(assert (=> b!487128 m!467007))

(declare-fun m!467009 () Bool)

(assert (=> b!487125 m!467009))

(check-sat (not start!44322) (not b!487122) (not b!487126) (not b!487125) (not b!487128) (not b!487127) (not b!487123) (not b!487124) (not b!487129))
(check-sat)
