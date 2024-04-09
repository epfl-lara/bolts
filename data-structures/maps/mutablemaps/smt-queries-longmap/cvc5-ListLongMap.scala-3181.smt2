; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44722 () Bool)

(assert start!44722)

(declare-fun b!490509 () Bool)

(declare-fun res!293603 () Bool)

(declare-fun e!288319 () Bool)

(assert (=> b!490509 (=> (not res!293603) (not e!288319))))

(declare-datatypes ((array!31741 0))(
  ( (array!31742 (arr!15255 (Array (_ BitVec 32) (_ BitVec 64))) (size!15619 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31741)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490509 (= res!293603 (validKeyInArray!0 (select (arr!15255 a!3235) j!176)))))

(declare-fun b!490510 () Bool)

(declare-fun res!293598 () Bool)

(assert (=> b!490510 (=> (not res!293598) (not e!288319))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!490510 (= res!293598 (validKeyInArray!0 k!2280))))

(declare-fun b!490511 () Bool)

(declare-fun e!288317 () Bool)

(assert (=> b!490511 (= e!288317 true)))

(declare-datatypes ((SeekEntryResult!3729 0))(
  ( (MissingZero!3729 (index!17095 (_ BitVec 32))) (Found!3729 (index!17096 (_ BitVec 32))) (Intermediate!3729 (undefined!4541 Bool) (index!17097 (_ BitVec 32)) (x!46222 (_ BitVec 32))) (Undefined!3729) (MissingVacant!3729 (index!17098 (_ BitVec 32))) )
))
(declare-fun lt!221631 () SeekEntryResult!3729)

(declare-fun lt!221634 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!221635 () array!31741)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31741 (_ BitVec 32)) SeekEntryResult!3729)

(assert (=> b!490511 (= lt!221631 (seekEntryOrOpen!0 lt!221634 lt!221635 mask!3524))))

(declare-datatypes ((Unit!14396 0))(
  ( (Unit!14397) )
))
(declare-fun lt!221636 () Unit!14396)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31741 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14396)

(assert (=> b!490511 (= lt!221636 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490512 () Bool)

(declare-fun res!293599 () Bool)

(assert (=> b!490512 (=> (not res!293599) (not e!288319))))

(declare-fun arrayContainsKey!0 (array!31741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490512 (= res!293599 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490513 () Bool)

(declare-fun e!288318 () Bool)

(assert (=> b!490513 (= e!288318 (not e!288317))))

(declare-fun res!293602 () Bool)

(assert (=> b!490513 (=> res!293602 e!288317)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31741 (_ BitVec 32)) SeekEntryResult!3729)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490513 (= res!293602 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15255 a!3235) j!176) mask!3524) (select (arr!15255 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221634 mask!3524) lt!221634 lt!221635 mask!3524))))))

(assert (=> b!490513 (= lt!221634 (select (store (arr!15255 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490513 (= lt!221635 (array!31742 (store (arr!15255 a!3235) i!1204 k!2280) (size!15619 a!3235)))))

(assert (=> b!490513 (= lt!221631 (Found!3729 j!176))))

(assert (=> b!490513 (= lt!221631 (seekEntryOrOpen!0 (select (arr!15255 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31741 (_ BitVec 32)) Bool)

(assert (=> b!490513 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221632 () Unit!14396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14396)

(assert (=> b!490513 (= lt!221632 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490514 () Bool)

(declare-fun res!293595 () Bool)

(assert (=> b!490514 (=> (not res!293595) (not e!288319))))

(assert (=> b!490514 (= res!293595 (and (= (size!15619 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15619 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15619 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490515 () Bool)

(declare-fun res!293597 () Bool)

(assert (=> b!490515 (=> (not res!293597) (not e!288318))))

(assert (=> b!490515 (= res!293597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!293600 () Bool)

(assert (=> start!44722 (=> (not res!293600) (not e!288319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44722 (= res!293600 (validMask!0 mask!3524))))

(assert (=> start!44722 e!288319))

(assert (=> start!44722 true))

(declare-fun array_inv!11029 (array!31741) Bool)

(assert (=> start!44722 (array_inv!11029 a!3235)))

(declare-fun b!490516 () Bool)

(assert (=> b!490516 (= e!288319 e!288318)))

(declare-fun res!293596 () Bool)

(assert (=> b!490516 (=> (not res!293596) (not e!288318))))

(declare-fun lt!221633 () SeekEntryResult!3729)

(assert (=> b!490516 (= res!293596 (or (= lt!221633 (MissingZero!3729 i!1204)) (= lt!221633 (MissingVacant!3729 i!1204))))))

(assert (=> b!490516 (= lt!221633 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490517 () Bool)

(declare-fun res!293601 () Bool)

(assert (=> b!490517 (=> (not res!293601) (not e!288318))))

(declare-datatypes ((List!9466 0))(
  ( (Nil!9463) (Cons!9462 (h!10324 (_ BitVec 64)) (t!15702 List!9466)) )
))
(declare-fun arrayNoDuplicates!0 (array!31741 (_ BitVec 32) List!9466) Bool)

(assert (=> b!490517 (= res!293601 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9463))))

(assert (= (and start!44722 res!293600) b!490514))

(assert (= (and b!490514 res!293595) b!490509))

(assert (= (and b!490509 res!293603) b!490510))

(assert (= (and b!490510 res!293598) b!490512))

(assert (= (and b!490512 res!293599) b!490516))

(assert (= (and b!490516 res!293596) b!490515))

(assert (= (and b!490515 res!293597) b!490517))

(assert (= (and b!490517 res!293601) b!490513))

(assert (= (and b!490513 (not res!293602)) b!490511))

(declare-fun m!470779 () Bool)

(assert (=> b!490516 m!470779))

(declare-fun m!470781 () Bool)

(assert (=> b!490511 m!470781))

(declare-fun m!470783 () Bool)

(assert (=> b!490511 m!470783))

(declare-fun m!470785 () Bool)

(assert (=> b!490509 m!470785))

(assert (=> b!490509 m!470785))

(declare-fun m!470787 () Bool)

(assert (=> b!490509 m!470787))

(declare-fun m!470789 () Bool)

(assert (=> b!490510 m!470789))

(declare-fun m!470791 () Bool)

(assert (=> start!44722 m!470791))

(declare-fun m!470793 () Bool)

(assert (=> start!44722 m!470793))

(declare-fun m!470795 () Bool)

(assert (=> b!490517 m!470795))

(declare-fun m!470797 () Bool)

(assert (=> b!490512 m!470797))

(declare-fun m!470799 () Bool)

(assert (=> b!490513 m!470799))

(declare-fun m!470801 () Bool)

(assert (=> b!490513 m!470801))

(declare-fun m!470803 () Bool)

(assert (=> b!490513 m!470803))

(declare-fun m!470805 () Bool)

(assert (=> b!490513 m!470805))

(assert (=> b!490513 m!470785))

(declare-fun m!470807 () Bool)

(assert (=> b!490513 m!470807))

(declare-fun m!470809 () Bool)

(assert (=> b!490513 m!470809))

(declare-fun m!470811 () Bool)

(assert (=> b!490513 m!470811))

(assert (=> b!490513 m!470785))

(assert (=> b!490513 m!470805))

(assert (=> b!490513 m!470785))

(declare-fun m!470813 () Bool)

(assert (=> b!490513 m!470813))

(assert (=> b!490513 m!470785))

(declare-fun m!470815 () Bool)

(assert (=> b!490513 m!470815))

(assert (=> b!490513 m!470809))

(declare-fun m!470817 () Bool)

(assert (=> b!490515 m!470817))

(push 1)

