; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46722 () Bool)

(assert start!46722)

(declare-fun res!315135 () Bool)

(declare-fun e!300920 () Bool)

(assert (=> start!46722 (=> (not res!315135) (not e!300920))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46722 (= res!315135 (validMask!0 mask!3524))))

(assert (=> start!46722 e!300920))

(assert (=> start!46722 true))

(declare-datatypes ((array!32994 0))(
  ( (array!32995 (arr!15862 (Array (_ BitVec 32) (_ BitVec 64))) (size!16226 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32994)

(declare-fun array_inv!11636 (array!32994) Bool)

(assert (=> start!46722 (array_inv!11636 a!3235)))

(declare-fun b!515416 () Bool)

(declare-fun res!315134 () Bool)

(declare-fun e!300919 () Bool)

(assert (=> b!515416 (=> (not res!315134) (not e!300919))))

(declare-datatypes ((List!10073 0))(
  ( (Nil!10070) (Cons!10069 (h!10967 (_ BitVec 64)) (t!16309 List!10073)) )
))
(declare-fun arrayNoDuplicates!0 (array!32994 (_ BitVec 32) List!10073) Bool)

(assert (=> b!515416 (= res!315134 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10070))))

(declare-fun b!515417 () Bool)

(declare-fun res!315132 () Bool)

(assert (=> b!515417 (=> (not res!315132) (not e!300920))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515417 (= res!315132 (and (= (size!16226 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16226 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16226 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515418 () Bool)

(declare-fun res!315140 () Bool)

(declare-fun e!300922 () Bool)

(assert (=> b!515418 (=> res!315140 e!300922)))

(declare-datatypes ((SeekEntryResult!4336 0))(
  ( (MissingZero!4336 (index!19532 (_ BitVec 32))) (Found!4336 (index!19533 (_ BitVec 32))) (Intermediate!4336 (undefined!5148 Bool) (index!19534 (_ BitVec 32)) (x!48526 (_ BitVec 32))) (Undefined!4336) (MissingVacant!4336 (index!19535 (_ BitVec 32))) )
))
(declare-fun lt!236005 () SeekEntryResult!4336)

(get-info :version)

(assert (=> b!515418 (= res!315140 (or (undefined!5148 lt!236005) (not ((_ is Intermediate!4336) lt!236005))))))

(declare-fun b!515419 () Bool)

(declare-fun res!315136 () Bool)

(assert (=> b!515419 (=> (not res!315136) (not e!300920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515419 (= res!315136 (validKeyInArray!0 (select (arr!15862 a!3235) j!176)))))

(declare-fun e!300921 () Bool)

(declare-fun b!515420 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32994 (_ BitVec 32)) SeekEntryResult!4336)

(assert (=> b!515420 (= e!300921 (= (seekEntryOrOpen!0 (select (arr!15862 a!3235) j!176) a!3235 mask!3524) (Found!4336 j!176)))))

(declare-fun b!515421 () Bool)

(assert (=> b!515421 (= e!300920 e!300919)))

(declare-fun res!315137 () Bool)

(assert (=> b!515421 (=> (not res!315137) (not e!300919))))

(declare-fun lt!236002 () SeekEntryResult!4336)

(assert (=> b!515421 (= res!315137 (or (= lt!236002 (MissingZero!4336 i!1204)) (= lt!236002 (MissingVacant!4336 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!515421 (= lt!236002 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515422 () Bool)

(declare-fun res!315131 () Bool)

(assert (=> b!515422 (=> (not res!315131) (not e!300920))))

(assert (=> b!515422 (= res!315131 (validKeyInArray!0 k0!2280))))

(declare-fun b!515423 () Bool)

(assert (=> b!515423 (= e!300919 (not e!300922))))

(declare-fun res!315138 () Bool)

(assert (=> b!515423 (=> res!315138 e!300922)))

(declare-fun lt!236006 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32994 (_ BitVec 32)) SeekEntryResult!4336)

(assert (=> b!515423 (= res!315138 (= lt!236005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236006 (select (store (arr!15862 a!3235) i!1204 k0!2280) j!176) (array!32995 (store (arr!15862 a!3235) i!1204 k0!2280) (size!16226 a!3235)) mask!3524)))))

(declare-fun lt!236003 () (_ BitVec 32))

(assert (=> b!515423 (= lt!236005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236003 (select (arr!15862 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515423 (= lt!236006 (toIndex!0 (select (store (arr!15862 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515423 (= lt!236003 (toIndex!0 (select (arr!15862 a!3235) j!176) mask!3524))))

(assert (=> b!515423 e!300921))

(declare-fun res!315139 () Bool)

(assert (=> b!515423 (=> (not res!315139) (not e!300921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32994 (_ BitVec 32)) Bool)

(assert (=> b!515423 (= res!315139 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15922 0))(
  ( (Unit!15923) )
))
(declare-fun lt!236004 () Unit!15922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32994 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15922)

(assert (=> b!515423 (= lt!236004 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515424 () Bool)

(assert (=> b!515424 (= e!300922 true)))

(assert (=> b!515424 (and (bvslt (x!48526 lt!236005) #b01111111111111111111111111111110) (or (= (select (arr!15862 a!3235) (index!19534 lt!236005)) (select (arr!15862 a!3235) j!176)) (= (select (arr!15862 a!3235) (index!19534 lt!236005)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15862 a!3235) (index!19534 lt!236005)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515425 () Bool)

(declare-fun res!315133 () Bool)

(assert (=> b!515425 (=> (not res!315133) (not e!300919))))

(assert (=> b!515425 (= res!315133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515426 () Bool)

(declare-fun res!315130 () Bool)

(assert (=> b!515426 (=> (not res!315130) (not e!300920))))

(declare-fun arrayContainsKey!0 (array!32994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515426 (= res!315130 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46722 res!315135) b!515417))

(assert (= (and b!515417 res!315132) b!515419))

(assert (= (and b!515419 res!315136) b!515422))

(assert (= (and b!515422 res!315131) b!515426))

(assert (= (and b!515426 res!315130) b!515421))

(assert (= (and b!515421 res!315137) b!515425))

(assert (= (and b!515425 res!315133) b!515416))

(assert (= (and b!515416 res!315134) b!515423))

(assert (= (and b!515423 res!315139) b!515420))

(assert (= (and b!515423 (not res!315138)) b!515418))

(assert (= (and b!515418 (not res!315140)) b!515424))

(declare-fun m!496815 () Bool)

(assert (=> b!515416 m!496815))

(declare-fun m!496817 () Bool)

(assert (=> b!515422 m!496817))

(declare-fun m!496819 () Bool)

(assert (=> start!46722 m!496819))

(declare-fun m!496821 () Bool)

(assert (=> start!46722 m!496821))

(declare-fun m!496823 () Bool)

(assert (=> b!515426 m!496823))

(declare-fun m!496825 () Bool)

(assert (=> b!515424 m!496825))

(declare-fun m!496827 () Bool)

(assert (=> b!515424 m!496827))

(declare-fun m!496829 () Bool)

(assert (=> b!515421 m!496829))

(assert (=> b!515419 m!496827))

(assert (=> b!515419 m!496827))

(declare-fun m!496831 () Bool)

(assert (=> b!515419 m!496831))

(declare-fun m!496833 () Bool)

(assert (=> b!515425 m!496833))

(assert (=> b!515420 m!496827))

(assert (=> b!515420 m!496827))

(declare-fun m!496835 () Bool)

(assert (=> b!515420 m!496835))

(assert (=> b!515423 m!496827))

(declare-fun m!496837 () Bool)

(assert (=> b!515423 m!496837))

(declare-fun m!496839 () Bool)

(assert (=> b!515423 m!496839))

(declare-fun m!496841 () Bool)

(assert (=> b!515423 m!496841))

(declare-fun m!496843 () Bool)

(assert (=> b!515423 m!496843))

(assert (=> b!515423 m!496843))

(declare-fun m!496845 () Bool)

(assert (=> b!515423 m!496845))

(assert (=> b!515423 m!496827))

(declare-fun m!496847 () Bool)

(assert (=> b!515423 m!496847))

(assert (=> b!515423 m!496827))

(declare-fun m!496849 () Bool)

(assert (=> b!515423 m!496849))

(assert (=> b!515423 m!496843))

(declare-fun m!496851 () Bool)

(assert (=> b!515423 m!496851))

(check-sat (not b!515426) (not b!515420) (not b!515421) (not start!46722) (not b!515425) (not b!515422) (not b!515419) (not b!515423) (not b!515416))
(check-sat)
