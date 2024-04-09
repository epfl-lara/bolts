; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46716 () Bool)

(assert start!46716)

(declare-fun b!515317 () Bool)

(declare-fun e!300874 () Bool)

(declare-fun e!300873 () Bool)

(assert (=> b!515317 (= e!300874 e!300873)))

(declare-fun res!315039 () Bool)

(assert (=> b!515317 (=> (not res!315039) (not e!300873))))

(declare-datatypes ((SeekEntryResult!4333 0))(
  ( (MissingZero!4333 (index!19520 (_ BitVec 32))) (Found!4333 (index!19521 (_ BitVec 32))) (Intermediate!4333 (undefined!5145 Bool) (index!19522 (_ BitVec 32)) (x!48515 (_ BitVec 32))) (Undefined!4333) (MissingVacant!4333 (index!19523 (_ BitVec 32))) )
))
(declare-fun lt!235960 () SeekEntryResult!4333)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515317 (= res!315039 (or (= lt!235960 (MissingZero!4333 i!1204)) (= lt!235960 (MissingVacant!4333 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32988 0))(
  ( (array!32989 (arr!15859 (Array (_ BitVec 32) (_ BitVec 64))) (size!16223 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32988)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32988 (_ BitVec 32)) SeekEntryResult!4333)

(assert (=> b!515317 (= lt!235960 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515318 () Bool)

(declare-fun res!315033 () Bool)

(assert (=> b!515318 (=> (not res!315033) (not e!300873))))

(declare-datatypes ((List!10070 0))(
  ( (Nil!10067) (Cons!10066 (h!10964 (_ BitVec 64)) (t!16306 List!10070)) )
))
(declare-fun arrayNoDuplicates!0 (array!32988 (_ BitVec 32) List!10070) Bool)

(assert (=> b!515318 (= res!315033 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10067))))

(declare-fun b!515319 () Bool)

(declare-fun res!315040 () Bool)

(assert (=> b!515319 (=> (not res!315040) (not e!300874))))

(declare-fun arrayContainsKey!0 (array!32988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515319 (= res!315040 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun e!300877 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!515320 () Bool)

(assert (=> b!515320 (= e!300877 (= (seekEntryOrOpen!0 (select (arr!15859 a!3235) j!176) a!3235 mask!3524) (Found!4333 j!176)))))

(declare-fun b!515321 () Bool)

(declare-fun e!300875 () Bool)

(assert (=> b!515321 (= e!300875 true)))

(declare-fun lt!235957 () SeekEntryResult!4333)

(assert (=> b!515321 (and (bvslt (x!48515 lt!235957) #b01111111111111111111111111111110) (or (= (select (arr!15859 a!3235) (index!19522 lt!235957)) (select (arr!15859 a!3235) j!176)) (= (select (arr!15859 a!3235) (index!19522 lt!235957)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15859 a!3235) (index!19522 lt!235957)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515322 () Bool)

(assert (=> b!515322 (= e!300873 (not e!300875))))

(declare-fun res!315037 () Bool)

(assert (=> b!515322 (=> res!315037 e!300875)))

(declare-fun lt!235961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32988 (_ BitVec 32)) SeekEntryResult!4333)

(assert (=> b!515322 (= res!315037 (= lt!235957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235961 (select (store (arr!15859 a!3235) i!1204 k0!2280) j!176) (array!32989 (store (arr!15859 a!3235) i!1204 k0!2280) (size!16223 a!3235)) mask!3524)))))

(declare-fun lt!235958 () (_ BitVec 32))

(assert (=> b!515322 (= lt!235957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235958 (select (arr!15859 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515322 (= lt!235961 (toIndex!0 (select (store (arr!15859 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515322 (= lt!235958 (toIndex!0 (select (arr!15859 a!3235) j!176) mask!3524))))

(assert (=> b!515322 e!300877))

(declare-fun res!315036 () Bool)

(assert (=> b!515322 (=> (not res!315036) (not e!300877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32988 (_ BitVec 32)) Bool)

(assert (=> b!515322 (= res!315036 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15916 0))(
  ( (Unit!15917) )
))
(declare-fun lt!235959 () Unit!15916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32988 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15916)

(assert (=> b!515322 (= lt!235959 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515323 () Bool)

(declare-fun res!315034 () Bool)

(assert (=> b!515323 (=> (not res!315034) (not e!300874))))

(assert (=> b!515323 (= res!315034 (and (= (size!16223 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16223 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16223 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515324 () Bool)

(declare-fun res!315035 () Bool)

(assert (=> b!515324 (=> (not res!315035) (not e!300874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515324 (= res!315035 (validKeyInArray!0 k0!2280))))

(declare-fun b!515325 () Bool)

(declare-fun res!315032 () Bool)

(assert (=> b!515325 (=> res!315032 e!300875)))

(get-info :version)

(assert (=> b!515325 (= res!315032 (or (undefined!5145 lt!235957) (not ((_ is Intermediate!4333) lt!235957))))))

(declare-fun res!315041 () Bool)

(assert (=> start!46716 (=> (not res!315041) (not e!300874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46716 (= res!315041 (validMask!0 mask!3524))))

(assert (=> start!46716 e!300874))

(assert (=> start!46716 true))

(declare-fun array_inv!11633 (array!32988) Bool)

(assert (=> start!46716 (array_inv!11633 a!3235)))

(declare-fun b!515326 () Bool)

(declare-fun res!315038 () Bool)

(assert (=> b!515326 (=> (not res!315038) (not e!300873))))

(assert (=> b!515326 (= res!315038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515327 () Bool)

(declare-fun res!315031 () Bool)

(assert (=> b!515327 (=> (not res!315031) (not e!300874))))

(assert (=> b!515327 (= res!315031 (validKeyInArray!0 (select (arr!15859 a!3235) j!176)))))

(assert (= (and start!46716 res!315041) b!515323))

(assert (= (and b!515323 res!315034) b!515327))

(assert (= (and b!515327 res!315031) b!515324))

(assert (= (and b!515324 res!315035) b!515319))

(assert (= (and b!515319 res!315040) b!515317))

(assert (= (and b!515317 res!315039) b!515326))

(assert (= (and b!515326 res!315038) b!515318))

(assert (= (and b!515318 res!315033) b!515322))

(assert (= (and b!515322 res!315036) b!515320))

(assert (= (and b!515322 (not res!315037)) b!515325))

(assert (= (and b!515325 (not res!315032)) b!515321))

(declare-fun m!496701 () Bool)

(assert (=> b!515326 m!496701))

(declare-fun m!496703 () Bool)

(assert (=> b!515327 m!496703))

(assert (=> b!515327 m!496703))

(declare-fun m!496705 () Bool)

(assert (=> b!515327 m!496705))

(assert (=> b!515320 m!496703))

(assert (=> b!515320 m!496703))

(declare-fun m!496707 () Bool)

(assert (=> b!515320 m!496707))

(declare-fun m!496709 () Bool)

(assert (=> b!515324 m!496709))

(declare-fun m!496711 () Bool)

(assert (=> b!515317 m!496711))

(declare-fun m!496713 () Bool)

(assert (=> b!515322 m!496713))

(declare-fun m!496715 () Bool)

(assert (=> b!515322 m!496715))

(declare-fun m!496717 () Bool)

(assert (=> b!515322 m!496717))

(declare-fun m!496719 () Bool)

(assert (=> b!515322 m!496719))

(assert (=> b!515322 m!496715))

(assert (=> b!515322 m!496703))

(declare-fun m!496721 () Bool)

(assert (=> b!515322 m!496721))

(assert (=> b!515322 m!496703))

(declare-fun m!496723 () Bool)

(assert (=> b!515322 m!496723))

(assert (=> b!515322 m!496703))

(declare-fun m!496725 () Bool)

(assert (=> b!515322 m!496725))

(assert (=> b!515322 m!496715))

(declare-fun m!496727 () Bool)

(assert (=> b!515322 m!496727))

(declare-fun m!496729 () Bool)

(assert (=> b!515318 m!496729))

(declare-fun m!496731 () Bool)

(assert (=> start!46716 m!496731))

(declare-fun m!496733 () Bool)

(assert (=> start!46716 m!496733))

(declare-fun m!496735 () Bool)

(assert (=> b!515321 m!496735))

(assert (=> b!515321 m!496703))

(declare-fun m!496737 () Bool)

(assert (=> b!515319 m!496737))

(check-sat (not b!515317) (not b!515326) (not b!515320) (not b!515322) (not start!46716) (not b!515318) (not b!515324) (not b!515319) (not b!515327))
(check-sat)
