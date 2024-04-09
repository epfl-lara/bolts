; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45254 () Bool)

(assert start!45254)

(declare-fun res!299191 () Bool)

(declare-fun e!291204 () Bool)

(assert (=> start!45254 (=> (not res!299191) (not e!291204))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45254 (= res!299191 (validMask!0 mask!3524))))

(assert (=> start!45254 e!291204))

(assert (=> start!45254 true))

(declare-datatypes ((array!32102 0))(
  ( (array!32103 (arr!15431 (Array (_ BitVec 32) (_ BitVec 64))) (size!15795 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32102)

(declare-fun array_inv!11205 (array!32102) Bool)

(assert (=> start!45254 (array_inv!11205 a!3235)))

(declare-fun b!496654 () Bool)

(declare-fun res!299201 () Bool)

(declare-fun e!291203 () Bool)

(assert (=> b!496654 (=> (not res!299201) (not e!291203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32102 (_ BitVec 32)) Bool)

(assert (=> b!496654 (= res!299201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496655 () Bool)

(declare-fun res!299198 () Bool)

(declare-fun e!291201 () Bool)

(assert (=> b!496655 (=> res!299198 e!291201)))

(declare-datatypes ((SeekEntryResult!3905 0))(
  ( (MissingZero!3905 (index!17799 (_ BitVec 32))) (Found!3905 (index!17800 (_ BitVec 32))) (Intermediate!3905 (undefined!4717 Bool) (index!17801 (_ BitVec 32)) (x!46880 (_ BitVec 32))) (Undefined!3905) (MissingVacant!3905 (index!17802 (_ BitVec 32))) )
))
(declare-fun lt!224890 () SeekEntryResult!3905)

(assert (=> b!496655 (= res!299198 (or (undefined!4717 lt!224890) (not (is-Intermediate!3905 lt!224890))))))

(declare-fun b!496656 () Bool)

(declare-fun res!299196 () Bool)

(assert (=> b!496656 (=> (not res!299196) (not e!291204))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496656 (= res!299196 (and (= (size!15795 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15795 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15795 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496657 () Bool)

(declare-fun res!299192 () Bool)

(assert (=> b!496657 (=> (not res!299192) (not e!291204))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496657 (= res!299192 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496658 () Bool)

(assert (=> b!496658 (= e!291201 true)))

(assert (=> b!496658 (and (bvslt (x!46880 lt!224890) #b01111111111111111111111111111110) (or (= (select (arr!15431 a!3235) (index!17801 lt!224890)) (select (arr!15431 a!3235) j!176)) (= (select (arr!15431 a!3235) (index!17801 lt!224890)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15431 a!3235) (index!17801 lt!224890)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496659 () Bool)

(assert (=> b!496659 (= e!291204 e!291203)))

(declare-fun res!299200 () Bool)

(assert (=> b!496659 (=> (not res!299200) (not e!291203))))

(declare-fun lt!224891 () SeekEntryResult!3905)

(assert (=> b!496659 (= res!299200 (or (= lt!224891 (MissingZero!3905 i!1204)) (= lt!224891 (MissingVacant!3905 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32102 (_ BitVec 32)) SeekEntryResult!3905)

(assert (=> b!496659 (= lt!224891 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496660 () Bool)

(declare-fun res!299195 () Bool)

(assert (=> b!496660 (=> (not res!299195) (not e!291204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496660 (= res!299195 (validKeyInArray!0 k!2280))))

(declare-fun e!291202 () Bool)

(declare-fun b!496661 () Bool)

(assert (=> b!496661 (= e!291202 (= (seekEntryOrOpen!0 (select (arr!15431 a!3235) j!176) a!3235 mask!3524) (Found!3905 j!176)))))

(declare-fun b!496662 () Bool)

(assert (=> b!496662 (= e!291203 (not e!291201))))

(declare-fun res!299199 () Bool)

(assert (=> b!496662 (=> res!299199 e!291201)))

(declare-fun lt!224892 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32102 (_ BitVec 32)) SeekEntryResult!3905)

(assert (=> b!496662 (= res!299199 (= lt!224890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224892 (select (store (arr!15431 a!3235) i!1204 k!2280) j!176) (array!32103 (store (arr!15431 a!3235) i!1204 k!2280) (size!15795 a!3235)) mask!3524)))))

(declare-fun lt!224894 () (_ BitVec 32))

(assert (=> b!496662 (= lt!224890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224894 (select (arr!15431 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496662 (= lt!224892 (toIndex!0 (select (store (arr!15431 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496662 (= lt!224894 (toIndex!0 (select (arr!15431 a!3235) j!176) mask!3524))))

(assert (=> b!496662 e!291202))

(declare-fun res!299194 () Bool)

(assert (=> b!496662 (=> (not res!299194) (not e!291202))))

(assert (=> b!496662 (= res!299194 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14748 0))(
  ( (Unit!14749) )
))
(declare-fun lt!224893 () Unit!14748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32102 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14748)

(assert (=> b!496662 (= lt!224893 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496663 () Bool)

(declare-fun res!299197 () Bool)

(assert (=> b!496663 (=> (not res!299197) (not e!291203))))

(declare-datatypes ((List!9642 0))(
  ( (Nil!9639) (Cons!9638 (h!10509 (_ BitVec 64)) (t!15878 List!9642)) )
))
(declare-fun arrayNoDuplicates!0 (array!32102 (_ BitVec 32) List!9642) Bool)

(assert (=> b!496663 (= res!299197 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9639))))

(declare-fun b!496664 () Bool)

(declare-fun res!299193 () Bool)

(assert (=> b!496664 (=> (not res!299193) (not e!291204))))

(assert (=> b!496664 (= res!299193 (validKeyInArray!0 (select (arr!15431 a!3235) j!176)))))

(assert (= (and start!45254 res!299191) b!496656))

(assert (= (and b!496656 res!299196) b!496664))

(assert (= (and b!496664 res!299193) b!496660))

(assert (= (and b!496660 res!299195) b!496657))

(assert (= (and b!496657 res!299192) b!496659))

(assert (= (and b!496659 res!299200) b!496654))

(assert (= (and b!496654 res!299201) b!496663))

(assert (= (and b!496663 res!299197) b!496662))

(assert (= (and b!496662 res!299194) b!496661))

(assert (= (and b!496662 (not res!299199)) b!496655))

(assert (= (and b!496655 (not res!299198)) b!496658))

(declare-fun m!477989 () Bool)

(assert (=> b!496658 m!477989))

(declare-fun m!477991 () Bool)

(assert (=> b!496658 m!477991))

(declare-fun m!477993 () Bool)

(assert (=> start!45254 m!477993))

(declare-fun m!477995 () Bool)

(assert (=> start!45254 m!477995))

(declare-fun m!477997 () Bool)

(assert (=> b!496657 m!477997))

(declare-fun m!477999 () Bool)

(assert (=> b!496659 m!477999))

(assert (=> b!496664 m!477991))

(assert (=> b!496664 m!477991))

(declare-fun m!478001 () Bool)

(assert (=> b!496664 m!478001))

(assert (=> b!496661 m!477991))

(assert (=> b!496661 m!477991))

(declare-fun m!478003 () Bool)

(assert (=> b!496661 m!478003))

(declare-fun m!478005 () Bool)

(assert (=> b!496662 m!478005))

(declare-fun m!478007 () Bool)

(assert (=> b!496662 m!478007))

(declare-fun m!478009 () Bool)

(assert (=> b!496662 m!478009))

(assert (=> b!496662 m!477991))

(declare-fun m!478011 () Bool)

(assert (=> b!496662 m!478011))

(declare-fun m!478013 () Bool)

(assert (=> b!496662 m!478013))

(assert (=> b!496662 m!478009))

(declare-fun m!478015 () Bool)

(assert (=> b!496662 m!478015))

(assert (=> b!496662 m!477991))

(declare-fun m!478017 () Bool)

(assert (=> b!496662 m!478017))

(assert (=> b!496662 m!478009))

(declare-fun m!478019 () Bool)

(assert (=> b!496662 m!478019))

(assert (=> b!496662 m!477991))

(declare-fun m!478021 () Bool)

(assert (=> b!496654 m!478021))

(declare-fun m!478023 () Bool)

(assert (=> b!496660 m!478023))

(declare-fun m!478025 () Bool)

(assert (=> b!496663 m!478025))

(push 1)

