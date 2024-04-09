; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44738 () Bool)

(assert start!44738)

(declare-fun b!490725 () Bool)

(declare-fun res!293812 () Bool)

(declare-fun e!288414 () Bool)

(assert (=> b!490725 (=> (not res!293812) (not e!288414))))

(declare-datatypes ((array!31757 0))(
  ( (array!31758 (arr!15263 (Array (_ BitVec 32) (_ BitVec 64))) (size!15627 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31757)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31757 (_ BitVec 32)) Bool)

(assert (=> b!490725 (= res!293812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490726 () Bool)

(declare-fun e!288415 () Bool)

(assert (=> b!490726 (= e!288414 (not e!288415))))

(declare-fun res!293816 () Bool)

(assert (=> b!490726 (=> res!293816 e!288415)))

(declare-fun lt!221780 () array!31757)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221778 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3737 0))(
  ( (MissingZero!3737 (index!17127 (_ BitVec 32))) (Found!3737 (index!17128 (_ BitVec 32))) (Intermediate!3737 (undefined!4549 Bool) (index!17129 (_ BitVec 32)) (x!46246 (_ BitVec 32))) (Undefined!3737) (MissingVacant!3737 (index!17130 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31757 (_ BitVec 32)) SeekEntryResult!3737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490726 (= res!293816 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15263 a!3235) j!176) mask!3524) (select (arr!15263 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221778 mask!3524) lt!221778 lt!221780 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490726 (= lt!221778 (select (store (arr!15263 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490726 (= lt!221780 (array!31758 (store (arr!15263 a!3235) i!1204 k!2280) (size!15627 a!3235)))))

(declare-fun lt!221776 () SeekEntryResult!3737)

(assert (=> b!490726 (= lt!221776 (Found!3737 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31757 (_ BitVec 32)) SeekEntryResult!3737)

(assert (=> b!490726 (= lt!221776 (seekEntryOrOpen!0 (select (arr!15263 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490726 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14412 0))(
  ( (Unit!14413) )
))
(declare-fun lt!221777 () Unit!14412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14412)

(assert (=> b!490726 (= lt!221777 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490727 () Bool)

(declare-fun e!288412 () Bool)

(assert (=> b!490727 (= e!288412 e!288414)))

(declare-fun res!293815 () Bool)

(assert (=> b!490727 (=> (not res!293815) (not e!288414))))

(declare-fun lt!221775 () SeekEntryResult!3737)

(assert (=> b!490727 (= res!293815 (or (= lt!221775 (MissingZero!3737 i!1204)) (= lt!221775 (MissingVacant!3737 i!1204))))))

(assert (=> b!490727 (= lt!221775 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!293819 () Bool)

(assert (=> start!44738 (=> (not res!293819) (not e!288412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44738 (= res!293819 (validMask!0 mask!3524))))

(assert (=> start!44738 e!288412))

(assert (=> start!44738 true))

(declare-fun array_inv!11037 (array!31757) Bool)

(assert (=> start!44738 (array_inv!11037 a!3235)))

(declare-fun b!490728 () Bool)

(declare-fun res!293817 () Bool)

(assert (=> b!490728 (=> (not res!293817) (not e!288412))))

(assert (=> b!490728 (= res!293817 (and (= (size!15627 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15627 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15627 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490729 () Bool)

(assert (=> b!490729 (= e!288415 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!490729 (= lt!221776 (seekEntryOrOpen!0 lt!221778 lt!221780 mask!3524))))

(declare-fun lt!221779 () Unit!14412)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14412)

(assert (=> b!490729 (= lt!221779 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490730 () Bool)

(declare-fun res!293813 () Bool)

(assert (=> b!490730 (=> (not res!293813) (not e!288412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490730 (= res!293813 (validKeyInArray!0 k!2280))))

(declare-fun b!490731 () Bool)

(declare-fun res!293818 () Bool)

(assert (=> b!490731 (=> (not res!293818) (not e!288412))))

(assert (=> b!490731 (= res!293818 (validKeyInArray!0 (select (arr!15263 a!3235) j!176)))))

(declare-fun b!490732 () Bool)

(declare-fun res!293811 () Bool)

(assert (=> b!490732 (=> (not res!293811) (not e!288414))))

(declare-datatypes ((List!9474 0))(
  ( (Nil!9471) (Cons!9470 (h!10332 (_ BitVec 64)) (t!15710 List!9474)) )
))
(declare-fun arrayNoDuplicates!0 (array!31757 (_ BitVec 32) List!9474) Bool)

(assert (=> b!490732 (= res!293811 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9471))))

(declare-fun b!490733 () Bool)

(declare-fun res!293814 () Bool)

(assert (=> b!490733 (=> (not res!293814) (not e!288412))))

(declare-fun arrayContainsKey!0 (array!31757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490733 (= res!293814 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44738 res!293819) b!490728))

(assert (= (and b!490728 res!293817) b!490731))

(assert (= (and b!490731 res!293818) b!490730))

(assert (= (and b!490730 res!293813) b!490733))

(assert (= (and b!490733 res!293814) b!490727))

(assert (= (and b!490727 res!293815) b!490725))

(assert (= (and b!490725 res!293812) b!490732))

(assert (= (and b!490732 res!293811) b!490726))

(assert (= (and b!490726 (not res!293816)) b!490729))

(declare-fun m!471099 () Bool)

(assert (=> b!490726 m!471099))

(declare-fun m!471101 () Bool)

(assert (=> b!490726 m!471101))

(declare-fun m!471103 () Bool)

(assert (=> b!490726 m!471103))

(declare-fun m!471105 () Bool)

(assert (=> b!490726 m!471105))

(declare-fun m!471107 () Bool)

(assert (=> b!490726 m!471107))

(declare-fun m!471109 () Bool)

(assert (=> b!490726 m!471109))

(declare-fun m!471111 () Bool)

(assert (=> b!490726 m!471111))

(assert (=> b!490726 m!471109))

(assert (=> b!490726 m!471107))

(assert (=> b!490726 m!471109))

(declare-fun m!471113 () Bool)

(assert (=> b!490726 m!471113))

(assert (=> b!490726 m!471109))

(declare-fun m!471115 () Bool)

(assert (=> b!490726 m!471115))

(assert (=> b!490726 m!471099))

(declare-fun m!471117 () Bool)

(assert (=> b!490726 m!471117))

(declare-fun m!471119 () Bool)

(assert (=> start!44738 m!471119))

(declare-fun m!471121 () Bool)

(assert (=> start!44738 m!471121))

(declare-fun m!471123 () Bool)

(assert (=> b!490727 m!471123))

(declare-fun m!471125 () Bool)

(assert (=> b!490729 m!471125))

(declare-fun m!471127 () Bool)

(assert (=> b!490729 m!471127))

(declare-fun m!471129 () Bool)

(assert (=> b!490732 m!471129))

(assert (=> b!490731 m!471109))

(assert (=> b!490731 m!471109))

(declare-fun m!471131 () Bool)

(assert (=> b!490731 m!471131))

(declare-fun m!471133 () Bool)

(assert (=> b!490725 m!471133))

(declare-fun m!471135 () Bool)

(assert (=> b!490733 m!471135))

(declare-fun m!471137 () Bool)

(assert (=> b!490730 m!471137))

(push 1)

(assert (not b!490726))

(assert (not b!490730))

(assert (not b!490727))

(assert (not b!490733))

