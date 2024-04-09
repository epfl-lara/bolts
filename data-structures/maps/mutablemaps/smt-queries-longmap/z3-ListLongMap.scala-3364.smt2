; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46248 () Bool)

(assert start!46248)

(declare-fun b!511865 () Bool)

(declare-fun res!312681 () Bool)

(declare-fun e!299006 () Bool)

(assert (=> b!511865 (=> (not res!312681) (not e!299006))))

(declare-datatypes ((array!32862 0))(
  ( (array!32863 (arr!15805 (Array (_ BitVec 32) (_ BitVec 64))) (size!16169 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32862)

(declare-datatypes ((List!10016 0))(
  ( (Nil!10013) (Cons!10012 (h!10892 (_ BitVec 64)) (t!16252 List!10016)) )
))
(declare-fun arrayNoDuplicates!0 (array!32862 (_ BitVec 32) List!10016) Bool)

(assert (=> b!511865 (= res!312681 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10013))))

(declare-fun b!511866 () Bool)

(declare-fun res!312686 () Bool)

(declare-fun e!299007 () Bool)

(assert (=> b!511866 (=> (not res!312686) (not e!299007))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511866 (= res!312686 (validKeyInArray!0 k0!2280))))

(declare-fun b!511867 () Bool)

(declare-fun res!312679 () Bool)

(assert (=> b!511867 (=> (not res!312679) (not e!299007))))

(declare-fun arrayContainsKey!0 (array!32862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511867 (= res!312679 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511868 () Bool)

(declare-fun e!299008 () Bool)

(assert (=> b!511868 (= e!299006 (not e!299008))))

(declare-fun res!312680 () Bool)

(assert (=> b!511868 (=> res!312680 e!299008)))

(declare-datatypes ((SeekEntryResult!4279 0))(
  ( (MissingZero!4279 (index!19304 (_ BitVec 32))) (Found!4279 (index!19305 (_ BitVec 32))) (Intermediate!4279 (undefined!5091 Bool) (index!19306 (_ BitVec 32)) (x!48281 (_ BitVec 32))) (Undefined!4279) (MissingVacant!4279 (index!19307 (_ BitVec 32))) )
))
(declare-fun lt!234316 () SeekEntryResult!4279)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!234315 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32862 (_ BitVec 32)) SeekEntryResult!4279)

(assert (=> b!511868 (= res!312680 (= lt!234316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234315 (select (store (arr!15805 a!3235) i!1204 k0!2280) j!176) (array!32863 (store (arr!15805 a!3235) i!1204 k0!2280) (size!16169 a!3235)) mask!3524)))))

(declare-fun lt!234319 () (_ BitVec 32))

(assert (=> b!511868 (= lt!234316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234319 (select (arr!15805 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511868 (= lt!234315 (toIndex!0 (select (store (arr!15805 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511868 (= lt!234319 (toIndex!0 (select (arr!15805 a!3235) j!176) mask!3524))))

(declare-fun lt!234317 () SeekEntryResult!4279)

(assert (=> b!511868 (= lt!234317 (Found!4279 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32862 (_ BitVec 32)) SeekEntryResult!4279)

(assert (=> b!511868 (= lt!234317 (seekEntryOrOpen!0 (select (arr!15805 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32862 (_ BitVec 32)) Bool)

(assert (=> b!511868 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15808 0))(
  ( (Unit!15809) )
))
(declare-fun lt!234320 () Unit!15808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15808)

(assert (=> b!511868 (= lt!234320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!312685 () Bool)

(assert (=> start!46248 (=> (not res!312685) (not e!299007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46248 (= res!312685 (validMask!0 mask!3524))))

(assert (=> start!46248 e!299007))

(assert (=> start!46248 true))

(declare-fun array_inv!11579 (array!32862) Bool)

(assert (=> start!46248 (array_inv!11579 a!3235)))

(declare-fun b!511869 () Bool)

(assert (=> b!511869 (= e!299008 false)))

(assert (=> b!511869 (= lt!234317 Undefined!4279)))

(declare-fun b!511870 () Bool)

(assert (=> b!511870 (= e!299007 e!299006)))

(declare-fun res!312678 () Bool)

(assert (=> b!511870 (=> (not res!312678) (not e!299006))))

(declare-fun lt!234318 () SeekEntryResult!4279)

(assert (=> b!511870 (= res!312678 (or (= lt!234318 (MissingZero!4279 i!1204)) (= lt!234318 (MissingVacant!4279 i!1204))))))

(assert (=> b!511870 (= lt!234318 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511871 () Bool)

(declare-fun res!312682 () Bool)

(assert (=> b!511871 (=> (not res!312682) (not e!299007))))

(assert (=> b!511871 (= res!312682 (validKeyInArray!0 (select (arr!15805 a!3235) j!176)))))

(declare-fun b!511872 () Bool)

(declare-fun res!312677 () Bool)

(assert (=> b!511872 (=> (not res!312677) (not e!299006))))

(assert (=> b!511872 (= res!312677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511873 () Bool)

(declare-fun res!312683 () Bool)

(assert (=> b!511873 (=> res!312683 e!299008)))

(get-info :version)

(assert (=> b!511873 (= res!312683 (or (not ((_ is Intermediate!4279) lt!234316)) (not (undefined!5091 lt!234316))))))

(declare-fun b!511874 () Bool)

(declare-fun res!312684 () Bool)

(assert (=> b!511874 (=> (not res!312684) (not e!299007))))

(assert (=> b!511874 (= res!312684 (and (= (size!16169 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16169 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16169 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46248 res!312685) b!511874))

(assert (= (and b!511874 res!312684) b!511871))

(assert (= (and b!511871 res!312682) b!511866))

(assert (= (and b!511866 res!312686) b!511867))

(assert (= (and b!511867 res!312679) b!511870))

(assert (= (and b!511870 res!312678) b!511872))

(assert (= (and b!511872 res!312677) b!511865))

(assert (= (and b!511865 res!312681) b!511868))

(assert (= (and b!511868 (not res!312680)) b!511873))

(assert (= (and b!511873 (not res!312683)) b!511869))

(declare-fun m!493483 () Bool)

(assert (=> b!511868 m!493483))

(declare-fun m!493485 () Bool)

(assert (=> b!511868 m!493485))

(declare-fun m!493487 () Bool)

(assert (=> b!511868 m!493487))

(assert (=> b!511868 m!493487))

(declare-fun m!493489 () Bool)

(assert (=> b!511868 m!493489))

(declare-fun m!493491 () Bool)

(assert (=> b!511868 m!493491))

(declare-fun m!493493 () Bool)

(assert (=> b!511868 m!493493))

(assert (=> b!511868 m!493491))

(assert (=> b!511868 m!493491))

(declare-fun m!493495 () Bool)

(assert (=> b!511868 m!493495))

(declare-fun m!493497 () Bool)

(assert (=> b!511868 m!493497))

(assert (=> b!511868 m!493491))

(declare-fun m!493499 () Bool)

(assert (=> b!511868 m!493499))

(assert (=> b!511868 m!493487))

(declare-fun m!493501 () Bool)

(assert (=> b!511868 m!493501))

(declare-fun m!493503 () Bool)

(assert (=> start!46248 m!493503))

(declare-fun m!493505 () Bool)

(assert (=> start!46248 m!493505))

(declare-fun m!493507 () Bool)

(assert (=> b!511867 m!493507))

(declare-fun m!493509 () Bool)

(assert (=> b!511865 m!493509))

(declare-fun m!493511 () Bool)

(assert (=> b!511872 m!493511))

(declare-fun m!493513 () Bool)

(assert (=> b!511870 m!493513))

(declare-fun m!493515 () Bool)

(assert (=> b!511866 m!493515))

(assert (=> b!511871 m!493491))

(assert (=> b!511871 m!493491))

(declare-fun m!493517 () Bool)

(assert (=> b!511871 m!493517))

(check-sat (not b!511866) (not b!511867) (not b!511871) (not b!511868) (not start!46248) (not b!511865) (not b!511872) (not b!511870))
(check-sat)
