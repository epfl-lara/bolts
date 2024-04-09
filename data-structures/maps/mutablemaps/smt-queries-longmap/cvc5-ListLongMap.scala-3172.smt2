; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44668 () Bool)

(assert start!44668)

(declare-fun b!489780 () Bool)

(declare-fun res!292871 () Bool)

(declare-fun e!287992 () Bool)

(assert (=> b!489780 (=> (not res!292871) (not e!287992))))

(declare-datatypes ((array!31687 0))(
  ( (array!31688 (arr!15228 (Array (_ BitVec 32) (_ BitVec 64))) (size!15592 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31687)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489780 (= res!292871 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489781 () Bool)

(declare-fun res!292870 () Bool)

(assert (=> b!489781 (=> (not res!292870) (not e!287992))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489781 (= res!292870 (validKeyInArray!0 (select (arr!15228 a!3235) j!176)))))

(declare-fun b!489782 () Bool)

(declare-fun res!292868 () Bool)

(assert (=> b!489782 (=> (not res!292868) (not e!287992))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489782 (= res!292868 (and (= (size!15592 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15592 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15592 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489783 () Bool)

(declare-fun e!287995 () Bool)

(declare-datatypes ((SeekEntryResult!3702 0))(
  ( (MissingZero!3702 (index!16987 (_ BitVec 32))) (Found!3702 (index!16988 (_ BitVec 32))) (Intermediate!3702 (undefined!4514 Bool) (index!16989 (_ BitVec 32)) (x!46123 (_ BitVec 32))) (Undefined!3702) (MissingVacant!3702 (index!16990 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31687 (_ BitVec 32)) SeekEntryResult!3702)

(assert (=> b!489783 (= e!287995 (= (seekEntryOrOpen!0 (select (arr!15228 a!3235) j!176) a!3235 mask!3524) (Found!3702 j!176)))))

(declare-fun b!489784 () Bool)

(declare-fun res!292867 () Bool)

(assert (=> b!489784 (=> (not res!292867) (not e!287992))))

(assert (=> b!489784 (= res!292867 (validKeyInArray!0 k!2280))))

(declare-fun b!489785 () Bool)

(declare-fun res!292874 () Bool)

(declare-fun e!287994 () Bool)

(assert (=> b!489785 (=> (not res!292874) (not e!287994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31687 (_ BitVec 32)) Bool)

(assert (=> b!489785 (= res!292874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489786 () Bool)

(assert (=> b!489786 (= e!287992 e!287994)))

(declare-fun res!292869 () Bool)

(assert (=> b!489786 (=> (not res!292869) (not e!287994))))

(declare-fun lt!221147 () SeekEntryResult!3702)

(assert (=> b!489786 (= res!292869 (or (= lt!221147 (MissingZero!3702 i!1204)) (= lt!221147 (MissingVacant!3702 i!1204))))))

(assert (=> b!489786 (= lt!221147 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489787 () Bool)

(declare-fun res!292873 () Bool)

(assert (=> b!489787 (=> (not res!292873) (not e!287994))))

(declare-datatypes ((List!9439 0))(
  ( (Nil!9436) (Cons!9435 (h!10297 (_ BitVec 64)) (t!15675 List!9439)) )
))
(declare-fun arrayNoDuplicates!0 (array!31687 (_ BitVec 32) List!9439) Bool)

(assert (=> b!489787 (= res!292873 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9436))))

(declare-fun res!292872 () Bool)

(assert (=> start!44668 (=> (not res!292872) (not e!287992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44668 (= res!292872 (validMask!0 mask!3524))))

(assert (=> start!44668 e!287992))

(assert (=> start!44668 true))

(declare-fun array_inv!11002 (array!31687) Bool)

(assert (=> start!44668 (array_inv!11002 a!3235)))

(declare-fun b!489788 () Bool)

(assert (=> b!489788 (= e!287994 (not true))))

(declare-fun lt!221149 () SeekEntryResult!3702)

(declare-fun lt!221150 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31687 (_ BitVec 32)) SeekEntryResult!3702)

(assert (=> b!489788 (= lt!221149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221150 (select (store (arr!15228 a!3235) i!1204 k!2280) j!176) (array!31688 (store (arr!15228 a!3235) i!1204 k!2280) (size!15592 a!3235)) mask!3524))))

(declare-fun lt!221146 () (_ BitVec 32))

(declare-fun lt!221145 () SeekEntryResult!3702)

(assert (=> b!489788 (= lt!221145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221146 (select (arr!15228 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489788 (= lt!221150 (toIndex!0 (select (store (arr!15228 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489788 (= lt!221146 (toIndex!0 (select (arr!15228 a!3235) j!176) mask!3524))))

(assert (=> b!489788 e!287995))

(declare-fun res!292866 () Bool)

(assert (=> b!489788 (=> (not res!292866) (not e!287995))))

(assert (=> b!489788 (= res!292866 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14342 0))(
  ( (Unit!14343) )
))
(declare-fun lt!221148 () Unit!14342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14342)

(assert (=> b!489788 (= lt!221148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44668 res!292872) b!489782))

(assert (= (and b!489782 res!292868) b!489781))

(assert (= (and b!489781 res!292870) b!489784))

(assert (= (and b!489784 res!292867) b!489780))

(assert (= (and b!489780 res!292871) b!489786))

(assert (= (and b!489786 res!292869) b!489785))

(assert (= (and b!489785 res!292874) b!489787))

(assert (= (and b!489787 res!292873) b!489788))

(assert (= (and b!489788 res!292866) b!489783))

(declare-fun m!469771 () Bool)

(assert (=> b!489785 m!469771))

(declare-fun m!469773 () Bool)

(assert (=> b!489781 m!469773))

(assert (=> b!489781 m!469773))

(declare-fun m!469775 () Bool)

(assert (=> b!489781 m!469775))

(declare-fun m!469777 () Bool)

(assert (=> b!489787 m!469777))

(declare-fun m!469779 () Bool)

(assert (=> b!489788 m!469779))

(declare-fun m!469781 () Bool)

(assert (=> b!489788 m!469781))

(declare-fun m!469783 () Bool)

(assert (=> b!489788 m!469783))

(assert (=> b!489788 m!469773))

(declare-fun m!469785 () Bool)

(assert (=> b!489788 m!469785))

(assert (=> b!489788 m!469783))

(declare-fun m!469787 () Bool)

(assert (=> b!489788 m!469787))

(assert (=> b!489788 m!469773))

(declare-fun m!469789 () Bool)

(assert (=> b!489788 m!469789))

(assert (=> b!489788 m!469773))

(declare-fun m!469791 () Bool)

(assert (=> b!489788 m!469791))

(assert (=> b!489788 m!469783))

(declare-fun m!469793 () Bool)

(assert (=> b!489788 m!469793))

(declare-fun m!469795 () Bool)

(assert (=> b!489784 m!469795))

(declare-fun m!469797 () Bool)

(assert (=> b!489780 m!469797))

(declare-fun m!469799 () Bool)

(assert (=> start!44668 m!469799))

(declare-fun m!469801 () Bool)

(assert (=> start!44668 m!469801))

(assert (=> b!489783 m!469773))

(assert (=> b!489783 m!469773))

(declare-fun m!469803 () Bool)

(assert (=> b!489783 m!469803))

(declare-fun m!469805 () Bool)

(assert (=> b!489786 m!469805))

(push 1)

