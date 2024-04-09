; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45228 () Bool)

(assert start!45228)

(declare-fun b!496225 () Bool)

(declare-fun e!291009 () Bool)

(declare-fun e!291008 () Bool)

(assert (=> b!496225 (= e!291009 (not e!291008))))

(declare-fun res!298765 () Bool)

(assert (=> b!496225 (=> res!298765 e!291008)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32076 0))(
  ( (array!32077 (arr!15418 (Array (_ BitVec 32) (_ BitVec 64))) (size!15782 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32076)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3892 0))(
  ( (MissingZero!3892 (index!17747 (_ BitVec 32))) (Found!3892 (index!17748 (_ BitVec 32))) (Intermediate!3892 (undefined!4704 Bool) (index!17749 (_ BitVec 32)) (x!46835 (_ BitVec 32))) (Undefined!3892) (MissingVacant!3892 (index!17750 (_ BitVec 32))) )
))
(declare-fun lt!224697 () SeekEntryResult!3892)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!224695 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32076 (_ BitVec 32)) SeekEntryResult!3892)

(assert (=> b!496225 (= res!298765 (= lt!224697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224695 (select (store (arr!15418 a!3235) i!1204 k0!2280) j!176) (array!32077 (store (arr!15418 a!3235) i!1204 k0!2280) (size!15782 a!3235)) mask!3524)))))

(declare-fun lt!224699 () (_ BitVec 32))

(assert (=> b!496225 (= lt!224697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224699 (select (arr!15418 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496225 (= lt!224695 (toIndex!0 (select (store (arr!15418 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496225 (= lt!224699 (toIndex!0 (select (arr!15418 a!3235) j!176) mask!3524))))

(declare-fun e!291007 () Bool)

(assert (=> b!496225 e!291007))

(declare-fun res!298766 () Bool)

(assert (=> b!496225 (=> (not res!298766) (not e!291007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32076 (_ BitVec 32)) Bool)

(assert (=> b!496225 (= res!298766 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14722 0))(
  ( (Unit!14723) )
))
(declare-fun lt!224696 () Unit!14722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32076 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14722)

(assert (=> b!496225 (= lt!224696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496226 () Bool)

(declare-fun res!298770 () Bool)

(assert (=> b!496226 (=> res!298770 e!291008)))

(get-info :version)

(assert (=> b!496226 (= res!298770 (or (undefined!4704 lt!224697) (not ((_ is Intermediate!3892) lt!224697))))))

(declare-fun b!496227 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32076 (_ BitVec 32)) SeekEntryResult!3892)

(assert (=> b!496227 (= e!291007 (= (seekEntryOrOpen!0 (select (arr!15418 a!3235) j!176) a!3235 mask!3524) (Found!3892 j!176)))))

(declare-fun b!496228 () Bool)

(assert (=> b!496228 (= e!291008 true)))

(assert (=> b!496228 (and (bvslt (x!46835 lt!224697) #b01111111111111111111111111111110) (or (= (select (arr!15418 a!3235) (index!17749 lt!224697)) (select (arr!15418 a!3235) j!176)) (= (select (arr!15418 a!3235) (index!17749 lt!224697)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15418 a!3235) (index!17749 lt!224697)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496229 () Bool)

(declare-fun res!298772 () Bool)

(declare-fun e!291010 () Bool)

(assert (=> b!496229 (=> (not res!298772) (not e!291010))))

(declare-fun arrayContainsKey!0 (array!32076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496229 (= res!298772 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!298769 () Bool)

(assert (=> start!45228 (=> (not res!298769) (not e!291010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45228 (= res!298769 (validMask!0 mask!3524))))

(assert (=> start!45228 e!291010))

(assert (=> start!45228 true))

(declare-fun array_inv!11192 (array!32076) Bool)

(assert (=> start!45228 (array_inv!11192 a!3235)))

(declare-fun b!496230 () Bool)

(declare-fun res!298771 () Bool)

(assert (=> b!496230 (=> (not res!298771) (not e!291010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496230 (= res!298771 (validKeyInArray!0 (select (arr!15418 a!3235) j!176)))))

(declare-fun b!496231 () Bool)

(declare-fun res!298763 () Bool)

(assert (=> b!496231 (=> (not res!298763) (not e!291010))))

(assert (=> b!496231 (= res!298763 (and (= (size!15782 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15782 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15782 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496232 () Bool)

(declare-fun res!298762 () Bool)

(assert (=> b!496232 (=> (not res!298762) (not e!291009))))

(declare-datatypes ((List!9629 0))(
  ( (Nil!9626) (Cons!9625 (h!10496 (_ BitVec 64)) (t!15865 List!9629)) )
))
(declare-fun arrayNoDuplicates!0 (array!32076 (_ BitVec 32) List!9629) Bool)

(assert (=> b!496232 (= res!298762 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9626))))

(declare-fun b!496233 () Bool)

(declare-fun res!298767 () Bool)

(assert (=> b!496233 (=> (not res!298767) (not e!291009))))

(assert (=> b!496233 (= res!298767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496234 () Bool)

(declare-fun res!298768 () Bool)

(assert (=> b!496234 (=> (not res!298768) (not e!291010))))

(assert (=> b!496234 (= res!298768 (validKeyInArray!0 k0!2280))))

(declare-fun b!496235 () Bool)

(assert (=> b!496235 (= e!291010 e!291009)))

(declare-fun res!298764 () Bool)

(assert (=> b!496235 (=> (not res!298764) (not e!291009))))

(declare-fun lt!224698 () SeekEntryResult!3892)

(assert (=> b!496235 (= res!298764 (or (= lt!224698 (MissingZero!3892 i!1204)) (= lt!224698 (MissingVacant!3892 i!1204))))))

(assert (=> b!496235 (= lt!224698 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45228 res!298769) b!496231))

(assert (= (and b!496231 res!298763) b!496230))

(assert (= (and b!496230 res!298771) b!496234))

(assert (= (and b!496234 res!298768) b!496229))

(assert (= (and b!496229 res!298772) b!496235))

(assert (= (and b!496235 res!298764) b!496233))

(assert (= (and b!496233 res!298767) b!496232))

(assert (= (and b!496232 res!298762) b!496225))

(assert (= (and b!496225 res!298766) b!496227))

(assert (= (and b!496225 (not res!298765)) b!496226))

(assert (= (and b!496226 (not res!298770)) b!496228))

(declare-fun m!477495 () Bool)

(assert (=> b!496235 m!477495))

(declare-fun m!477497 () Bool)

(assert (=> b!496230 m!477497))

(assert (=> b!496230 m!477497))

(declare-fun m!477499 () Bool)

(assert (=> b!496230 m!477499))

(declare-fun m!477501 () Bool)

(assert (=> b!496233 m!477501))

(assert (=> b!496227 m!477497))

(assert (=> b!496227 m!477497))

(declare-fun m!477503 () Bool)

(assert (=> b!496227 m!477503))

(declare-fun m!477505 () Bool)

(assert (=> b!496229 m!477505))

(declare-fun m!477507 () Bool)

(assert (=> b!496225 m!477507))

(declare-fun m!477509 () Bool)

(assert (=> b!496225 m!477509))

(declare-fun m!477511 () Bool)

(assert (=> b!496225 m!477511))

(assert (=> b!496225 m!477497))

(declare-fun m!477513 () Bool)

(assert (=> b!496225 m!477513))

(assert (=> b!496225 m!477497))

(declare-fun m!477515 () Bool)

(assert (=> b!496225 m!477515))

(assert (=> b!496225 m!477497))

(declare-fun m!477517 () Bool)

(assert (=> b!496225 m!477517))

(assert (=> b!496225 m!477511))

(declare-fun m!477519 () Bool)

(assert (=> b!496225 m!477519))

(assert (=> b!496225 m!477511))

(declare-fun m!477521 () Bool)

(assert (=> b!496225 m!477521))

(declare-fun m!477523 () Bool)

(assert (=> start!45228 m!477523))

(declare-fun m!477525 () Bool)

(assert (=> start!45228 m!477525))

(declare-fun m!477527 () Bool)

(assert (=> b!496234 m!477527))

(declare-fun m!477529 () Bool)

(assert (=> b!496232 m!477529))

(declare-fun m!477531 () Bool)

(assert (=> b!496228 m!477531))

(assert (=> b!496228 m!477497))

(check-sat (not b!496235) (not b!496233) (not b!496227) (not start!45228) (not b!496230) (not b!496232) (not b!496229) (not b!496225) (not b!496234))
(check-sat)
