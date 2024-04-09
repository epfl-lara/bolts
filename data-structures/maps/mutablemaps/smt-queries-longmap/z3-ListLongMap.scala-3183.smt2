; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44736 () Bool)

(assert start!44736)

(declare-fun res!293790 () Bool)

(declare-fun e!288403 () Bool)

(assert (=> start!44736 (=> (not res!293790) (not e!288403))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44736 (= res!293790 (validMask!0 mask!3524))))

(assert (=> start!44736 e!288403))

(assert (=> start!44736 true))

(declare-datatypes ((array!31755 0))(
  ( (array!31756 (arr!15262 (Array (_ BitVec 32) (_ BitVec 64))) (size!15626 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31755)

(declare-fun array_inv!11036 (array!31755) Bool)

(assert (=> start!44736 (array_inv!11036 a!3235)))

(declare-fun b!490698 () Bool)

(declare-fun res!293789 () Bool)

(declare-fun e!288401 () Bool)

(assert (=> b!490698 (=> (not res!293789) (not e!288401))))

(declare-datatypes ((List!9473 0))(
  ( (Nil!9470) (Cons!9469 (h!10331 (_ BitVec 64)) (t!15709 List!9473)) )
))
(declare-fun arrayNoDuplicates!0 (array!31755 (_ BitVec 32) List!9473) Bool)

(assert (=> b!490698 (= res!293789 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9470))))

(declare-fun b!490699 () Bool)

(declare-fun res!293786 () Bool)

(assert (=> b!490699 (=> (not res!293786) (not e!288403))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490699 (= res!293786 (validKeyInArray!0 (select (arr!15262 a!3235) j!176)))))

(declare-fun b!490700 () Bool)

(declare-fun e!288400 () Bool)

(assert (=> b!490700 (= e!288401 (not e!288400))))

(declare-fun res!293792 () Bool)

(assert (=> b!490700 (=> res!293792 e!288400)))

(declare-fun lt!221758 () array!31755)

(declare-fun lt!221757 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3736 0))(
  ( (MissingZero!3736 (index!17123 (_ BitVec 32))) (Found!3736 (index!17124 (_ BitVec 32))) (Intermediate!3736 (undefined!4548 Bool) (index!17125 (_ BitVec 32)) (x!46245 (_ BitVec 32))) (Undefined!3736) (MissingVacant!3736 (index!17126 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31755 (_ BitVec 32)) SeekEntryResult!3736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490700 (= res!293792 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15262 a!3235) j!176) mask!3524) (select (arr!15262 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221757 mask!3524) lt!221757 lt!221758 mask!3524))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490700 (= lt!221757 (select (store (arr!15262 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490700 (= lt!221758 (array!31756 (store (arr!15262 a!3235) i!1204 k0!2280) (size!15626 a!3235)))))

(declare-fun lt!221762 () SeekEntryResult!3736)

(assert (=> b!490700 (= lt!221762 (Found!3736 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31755 (_ BitVec 32)) SeekEntryResult!3736)

(assert (=> b!490700 (= lt!221762 (seekEntryOrOpen!0 (select (arr!15262 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31755 (_ BitVec 32)) Bool)

(assert (=> b!490700 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14410 0))(
  ( (Unit!14411) )
))
(declare-fun lt!221759 () Unit!14410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14410)

(assert (=> b!490700 (= lt!221759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490701 () Bool)

(declare-fun res!293787 () Bool)

(assert (=> b!490701 (=> (not res!293787) (not e!288403))))

(assert (=> b!490701 (= res!293787 (and (= (size!15626 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15626 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15626 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490702 () Bool)

(declare-fun res!293785 () Bool)

(assert (=> b!490702 (=> (not res!293785) (not e!288403))))

(declare-fun arrayContainsKey!0 (array!31755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490702 (= res!293785 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490703 () Bool)

(assert (=> b!490703 (= e!288403 e!288401)))

(declare-fun res!293791 () Bool)

(assert (=> b!490703 (=> (not res!293791) (not e!288401))))

(declare-fun lt!221761 () SeekEntryResult!3736)

(assert (=> b!490703 (= res!293791 (or (= lt!221761 (MissingZero!3736 i!1204)) (= lt!221761 (MissingVacant!3736 i!1204))))))

(assert (=> b!490703 (= lt!221761 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490704 () Bool)

(declare-fun res!293784 () Bool)

(assert (=> b!490704 (=> (not res!293784) (not e!288403))))

(assert (=> b!490704 (= res!293784 (validKeyInArray!0 k0!2280))))

(declare-fun b!490705 () Bool)

(assert (=> b!490705 (= e!288400 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!490705 (= lt!221762 (seekEntryOrOpen!0 lt!221757 lt!221758 mask!3524))))

(declare-fun lt!221760 () Unit!14410)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14410)

(assert (=> b!490705 (= lt!221760 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490706 () Bool)

(declare-fun res!293788 () Bool)

(assert (=> b!490706 (=> (not res!293788) (not e!288401))))

(assert (=> b!490706 (= res!293788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44736 res!293790) b!490701))

(assert (= (and b!490701 res!293787) b!490699))

(assert (= (and b!490699 res!293786) b!490704))

(assert (= (and b!490704 res!293784) b!490702))

(assert (= (and b!490702 res!293785) b!490703))

(assert (= (and b!490703 res!293791) b!490706))

(assert (= (and b!490706 res!293788) b!490698))

(assert (= (and b!490698 res!293789) b!490700))

(assert (= (and b!490700 (not res!293792)) b!490705))

(declare-fun m!471059 () Bool)

(assert (=> b!490698 m!471059))

(declare-fun m!471061 () Bool)

(assert (=> b!490703 m!471061))

(declare-fun m!471063 () Bool)

(assert (=> b!490702 m!471063))

(declare-fun m!471065 () Bool)

(assert (=> b!490700 m!471065))

(declare-fun m!471067 () Bool)

(assert (=> b!490700 m!471067))

(declare-fun m!471069 () Bool)

(assert (=> b!490700 m!471069))

(declare-fun m!471071 () Bool)

(assert (=> b!490700 m!471071))

(declare-fun m!471073 () Bool)

(assert (=> b!490700 m!471073))

(declare-fun m!471075 () Bool)

(assert (=> b!490700 m!471075))

(assert (=> b!490700 m!471073))

(assert (=> b!490700 m!471071))

(assert (=> b!490700 m!471073))

(declare-fun m!471077 () Bool)

(assert (=> b!490700 m!471077))

(declare-fun m!471079 () Bool)

(assert (=> b!490700 m!471079))

(assert (=> b!490700 m!471073))

(assert (=> b!490700 m!471079))

(declare-fun m!471081 () Bool)

(assert (=> b!490700 m!471081))

(declare-fun m!471083 () Bool)

(assert (=> b!490700 m!471083))

(declare-fun m!471085 () Bool)

(assert (=> b!490704 m!471085))

(declare-fun m!471087 () Bool)

(assert (=> b!490705 m!471087))

(declare-fun m!471089 () Bool)

(assert (=> b!490705 m!471089))

(declare-fun m!471091 () Bool)

(assert (=> start!44736 m!471091))

(declare-fun m!471093 () Bool)

(assert (=> start!44736 m!471093))

(assert (=> b!490699 m!471073))

(assert (=> b!490699 m!471073))

(declare-fun m!471095 () Bool)

(assert (=> b!490699 m!471095))

(declare-fun m!471097 () Bool)

(assert (=> b!490706 m!471097))

(check-sat (not b!490699) (not b!490700) (not b!490705) (not b!490702) (not b!490698) (not b!490706) (not start!44736) (not b!490704) (not b!490703))
(check-sat)
