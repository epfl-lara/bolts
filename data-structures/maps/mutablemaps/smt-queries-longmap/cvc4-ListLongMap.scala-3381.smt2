; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46712 () Bool)

(assert start!46712)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32984 0))(
  ( (array!32985 (arr!15857 (Array (_ BitVec 32) (_ BitVec 64))) (size!16221 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32984)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!515251 () Bool)

(declare-fun e!300843 () Bool)

(declare-datatypes ((SeekEntryResult!4331 0))(
  ( (MissingZero!4331 (index!19512 (_ BitVec 32))) (Found!4331 (index!19513 (_ BitVec 32))) (Intermediate!4331 (undefined!5143 Bool) (index!19514 (_ BitVec 32)) (x!48505 (_ BitVec 32))) (Undefined!4331) (MissingVacant!4331 (index!19515 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32984 (_ BitVec 32)) SeekEntryResult!4331)

(assert (=> b!515251 (= e!300843 (= (seekEntryOrOpen!0 (select (arr!15857 a!3235) j!176) a!3235 mask!3524) (Found!4331 j!176)))))

(declare-fun b!515252 () Bool)

(declare-fun res!314974 () Bool)

(declare-fun e!300846 () Bool)

(assert (=> b!515252 (=> (not res!314974) (not e!300846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32984 (_ BitVec 32)) Bool)

(assert (=> b!515252 (= res!314974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515253 () Bool)

(declare-fun res!314972 () Bool)

(declare-fun e!300847 () Bool)

(assert (=> b!515253 (=> (not res!314972) (not e!300847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515253 (= res!314972 (validKeyInArray!0 (select (arr!15857 a!3235) j!176)))))

(declare-fun res!314970 () Bool)

(assert (=> start!46712 (=> (not res!314970) (not e!300847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46712 (= res!314970 (validMask!0 mask!3524))))

(assert (=> start!46712 e!300847))

(assert (=> start!46712 true))

(declare-fun array_inv!11631 (array!32984) Bool)

(assert (=> start!46712 (array_inv!11631 a!3235)))

(declare-fun b!515254 () Bool)

(declare-fun res!314975 () Bool)

(assert (=> b!515254 (=> (not res!314975) (not e!300847))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515254 (= res!314975 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515255 () Bool)

(assert (=> b!515255 (= e!300847 e!300846)))

(declare-fun res!314973 () Bool)

(assert (=> b!515255 (=> (not res!314973) (not e!300846))))

(declare-fun lt!235927 () SeekEntryResult!4331)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515255 (= res!314973 (or (= lt!235927 (MissingZero!4331 i!1204)) (= lt!235927 (MissingVacant!4331 i!1204))))))

(assert (=> b!515255 (= lt!235927 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515256 () Bool)

(declare-fun e!300844 () Bool)

(assert (=> b!515256 (= e!300846 (not e!300844))))

(declare-fun res!314969 () Bool)

(assert (=> b!515256 (=> res!314969 e!300844)))

(declare-fun lt!235931 () SeekEntryResult!4331)

(declare-fun lt!235930 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32984 (_ BitVec 32)) SeekEntryResult!4331)

(assert (=> b!515256 (= res!314969 (= lt!235931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235930 (select (store (arr!15857 a!3235) i!1204 k!2280) j!176) (array!32985 (store (arr!15857 a!3235) i!1204 k!2280) (size!16221 a!3235)) mask!3524)))))

(declare-fun lt!235929 () (_ BitVec 32))

(assert (=> b!515256 (= lt!235931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235929 (select (arr!15857 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515256 (= lt!235930 (toIndex!0 (select (store (arr!15857 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515256 (= lt!235929 (toIndex!0 (select (arr!15857 a!3235) j!176) mask!3524))))

(assert (=> b!515256 e!300843))

(declare-fun res!314968 () Bool)

(assert (=> b!515256 (=> (not res!314968) (not e!300843))))

(assert (=> b!515256 (= res!314968 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15912 0))(
  ( (Unit!15913) )
))
(declare-fun lt!235928 () Unit!15912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32984 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15912)

(assert (=> b!515256 (= lt!235928 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515257 () Bool)

(declare-fun res!314971 () Bool)

(assert (=> b!515257 (=> (not res!314971) (not e!300847))))

(assert (=> b!515257 (= res!314971 (and (= (size!16221 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16221 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16221 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515258 () Bool)

(declare-fun res!314966 () Bool)

(assert (=> b!515258 (=> (not res!314966) (not e!300846))))

(declare-datatypes ((List!10068 0))(
  ( (Nil!10065) (Cons!10064 (h!10962 (_ BitVec 64)) (t!16304 List!10068)) )
))
(declare-fun arrayNoDuplicates!0 (array!32984 (_ BitVec 32) List!10068) Bool)

(assert (=> b!515258 (= res!314966 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10065))))

(declare-fun b!515259 () Bool)

(declare-fun res!314967 () Bool)

(assert (=> b!515259 (=> (not res!314967) (not e!300847))))

(assert (=> b!515259 (= res!314967 (validKeyInArray!0 k!2280))))

(declare-fun b!515260 () Bool)

(declare-fun res!314965 () Bool)

(assert (=> b!515260 (=> res!314965 e!300844)))

(assert (=> b!515260 (= res!314965 (or (undefined!5143 lt!235931) (not (is-Intermediate!4331 lt!235931))))))

(declare-fun b!515261 () Bool)

(assert (=> b!515261 (= e!300844 true)))

(assert (=> b!515261 (and (bvslt (x!48505 lt!235931) #b01111111111111111111111111111110) (or (= (select (arr!15857 a!3235) (index!19514 lt!235931)) (select (arr!15857 a!3235) j!176)) (= (select (arr!15857 a!3235) (index!19514 lt!235931)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15857 a!3235) (index!19514 lt!235931)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46712 res!314970) b!515257))

(assert (= (and b!515257 res!314971) b!515253))

(assert (= (and b!515253 res!314972) b!515259))

(assert (= (and b!515259 res!314967) b!515254))

(assert (= (and b!515254 res!314975) b!515255))

(assert (= (and b!515255 res!314973) b!515252))

(assert (= (and b!515252 res!314974) b!515258))

(assert (= (and b!515258 res!314966) b!515256))

(assert (= (and b!515256 res!314968) b!515251))

(assert (= (and b!515256 (not res!314969)) b!515260))

(assert (= (and b!515260 (not res!314965)) b!515261))

(declare-fun m!496625 () Bool)

(assert (=> b!515255 m!496625))

(declare-fun m!496627 () Bool)

(assert (=> b!515258 m!496627))

(declare-fun m!496629 () Bool)

(assert (=> b!515251 m!496629))

(assert (=> b!515251 m!496629))

(declare-fun m!496631 () Bool)

(assert (=> b!515251 m!496631))

(assert (=> b!515253 m!496629))

(assert (=> b!515253 m!496629))

(declare-fun m!496633 () Bool)

(assert (=> b!515253 m!496633))

(declare-fun m!496635 () Bool)

(assert (=> b!515252 m!496635))

(declare-fun m!496637 () Bool)

(assert (=> start!46712 m!496637))

(declare-fun m!496639 () Bool)

(assert (=> start!46712 m!496639))

(declare-fun m!496641 () Bool)

(assert (=> b!515254 m!496641))

(declare-fun m!496643 () Bool)

(assert (=> b!515261 m!496643))

(assert (=> b!515261 m!496629))

(assert (=> b!515256 m!496629))

(declare-fun m!496645 () Bool)

(assert (=> b!515256 m!496645))

(declare-fun m!496647 () Bool)

(assert (=> b!515256 m!496647))

(declare-fun m!496649 () Bool)

(assert (=> b!515256 m!496649))

(declare-fun m!496651 () Bool)

(assert (=> b!515256 m!496651))

(assert (=> b!515256 m!496651))

(declare-fun m!496653 () Bool)

(assert (=> b!515256 m!496653))

(assert (=> b!515256 m!496629))

(declare-fun m!496655 () Bool)

(assert (=> b!515256 m!496655))

(assert (=> b!515256 m!496629))

(declare-fun m!496657 () Bool)

(assert (=> b!515256 m!496657))

(assert (=> b!515256 m!496651))

(declare-fun m!496659 () Bool)

(assert (=> b!515256 m!496659))

(declare-fun m!496661 () Bool)

(assert (=> b!515259 m!496661))

(push 1)

