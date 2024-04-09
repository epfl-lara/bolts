; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44460 () Bool)

(assert start!44460)

(declare-fun b!487974 () Bool)

(declare-fun res!291286 () Bool)

(declare-fun e!287095 () Bool)

(assert (=> b!487974 (=> (not res!291286) (not e!287095))))

(declare-datatypes ((array!31575 0))(
  ( (array!31576 (arr!15175 (Array (_ BitVec 32) (_ BitVec 64))) (size!15539 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31575)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487974 (= res!291286 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487975 () Bool)

(declare-fun e!287096 () Bool)

(assert (=> b!487975 (= e!287096 (not true))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!220285 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487975 (= lt!220285 (toIndex!0 (select (arr!15175 a!3235) j!176) mask!3524))))

(declare-fun e!287098 () Bool)

(assert (=> b!487975 e!287098))

(declare-fun res!291287 () Bool)

(assert (=> b!487975 (=> (not res!291287) (not e!287098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31575 (_ BitVec 32)) Bool)

(assert (=> b!487975 (= res!291287 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14236 0))(
  ( (Unit!14237) )
))
(declare-fun lt!220286 () Unit!14236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14236)

(assert (=> b!487975 (= lt!220286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487976 () Bool)

(declare-fun res!291290 () Bool)

(assert (=> b!487976 (=> (not res!291290) (not e!287096))))

(declare-datatypes ((List!9386 0))(
  ( (Nil!9383) (Cons!9382 (h!10241 (_ BitVec 64)) (t!15622 List!9386)) )
))
(declare-fun arrayNoDuplicates!0 (array!31575 (_ BitVec 32) List!9386) Bool)

(assert (=> b!487976 (= res!291290 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9383))))

(declare-fun b!487977 () Bool)

(declare-fun res!291291 () Bool)

(assert (=> b!487977 (=> (not res!291291) (not e!287095))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487977 (= res!291291 (and (= (size!15539 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15539 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15539 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487978 () Bool)

(declare-fun res!291289 () Bool)

(assert (=> b!487978 (=> (not res!291289) (not e!287095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487978 (= res!291289 (validKeyInArray!0 (select (arr!15175 a!3235) j!176)))))

(declare-fun res!291293 () Bool)

(assert (=> start!44460 (=> (not res!291293) (not e!287095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44460 (= res!291293 (validMask!0 mask!3524))))

(assert (=> start!44460 e!287095))

(assert (=> start!44460 true))

(declare-fun array_inv!10949 (array!31575) Bool)

(assert (=> start!44460 (array_inv!10949 a!3235)))

(declare-fun b!487979 () Bool)

(declare-fun res!291288 () Bool)

(assert (=> b!487979 (=> (not res!291288) (not e!287096))))

(assert (=> b!487979 (= res!291288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487980 () Bool)

(declare-datatypes ((SeekEntryResult!3649 0))(
  ( (MissingZero!3649 (index!16775 (_ BitVec 32))) (Found!3649 (index!16776 (_ BitVec 32))) (Intermediate!3649 (undefined!4461 Bool) (index!16777 (_ BitVec 32)) (x!45923 (_ BitVec 32))) (Undefined!3649) (MissingVacant!3649 (index!16778 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31575 (_ BitVec 32)) SeekEntryResult!3649)

(assert (=> b!487980 (= e!287098 (= (seekEntryOrOpen!0 (select (arr!15175 a!3235) j!176) a!3235 mask!3524) (Found!3649 j!176)))))

(declare-fun b!487981 () Bool)

(assert (=> b!487981 (= e!287095 e!287096)))

(declare-fun res!291285 () Bool)

(assert (=> b!487981 (=> (not res!291285) (not e!287096))))

(declare-fun lt!220284 () SeekEntryResult!3649)

(assert (=> b!487981 (= res!291285 (or (= lt!220284 (MissingZero!3649 i!1204)) (= lt!220284 (MissingVacant!3649 i!1204))))))

(assert (=> b!487981 (= lt!220284 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487982 () Bool)

(declare-fun res!291292 () Bool)

(assert (=> b!487982 (=> (not res!291292) (not e!287095))))

(assert (=> b!487982 (= res!291292 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44460 res!291293) b!487977))

(assert (= (and b!487977 res!291291) b!487978))

(assert (= (and b!487978 res!291289) b!487982))

(assert (= (and b!487982 res!291292) b!487974))

(assert (= (and b!487974 res!291286) b!487981))

(assert (= (and b!487981 res!291285) b!487979))

(assert (= (and b!487979 res!291288) b!487976))

(assert (= (and b!487976 res!291290) b!487975))

(assert (= (and b!487975 res!291287) b!487980))

(declare-fun m!467763 () Bool)

(assert (=> b!487981 m!467763))

(declare-fun m!467765 () Bool)

(assert (=> b!487975 m!467765))

(assert (=> b!487975 m!467765))

(declare-fun m!467767 () Bool)

(assert (=> b!487975 m!467767))

(declare-fun m!467769 () Bool)

(assert (=> b!487975 m!467769))

(declare-fun m!467771 () Bool)

(assert (=> b!487975 m!467771))

(declare-fun m!467773 () Bool)

(assert (=> start!44460 m!467773))

(declare-fun m!467775 () Bool)

(assert (=> start!44460 m!467775))

(assert (=> b!487980 m!467765))

(assert (=> b!487980 m!467765))

(declare-fun m!467777 () Bool)

(assert (=> b!487980 m!467777))

(declare-fun m!467779 () Bool)

(assert (=> b!487982 m!467779))

(assert (=> b!487978 m!467765))

(assert (=> b!487978 m!467765))

(declare-fun m!467781 () Bool)

(assert (=> b!487978 m!467781))

(declare-fun m!467783 () Bool)

(assert (=> b!487976 m!467783))

(declare-fun m!467785 () Bool)

(assert (=> b!487979 m!467785))

(declare-fun m!467787 () Bool)

(assert (=> b!487974 m!467787))

(check-sat (not b!487980) (not b!487981) (not b!487975) (not b!487982) (not b!487978) (not b!487976) (not start!44460) (not b!487974) (not b!487979))
(check-sat)
