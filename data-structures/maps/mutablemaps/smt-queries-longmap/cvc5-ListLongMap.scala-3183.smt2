; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44734 () Bool)

(assert start!44734)

(declare-fun b!490671 () Bool)

(declare-fun res!293757 () Bool)

(declare-fun e!288391 () Bool)

(assert (=> b!490671 (=> (not res!293757) (not e!288391))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31753 0))(
  ( (array!31754 (arr!15261 (Array (_ BitVec 32) (_ BitVec 64))) (size!15625 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31753)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490671 (= res!293757 (and (= (size!15625 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15625 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15625 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490672 () Bool)

(declare-fun e!288390 () Bool)

(assert (=> b!490672 (= e!288390 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!221743 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3735 0))(
  ( (MissingZero!3735 (index!17119 (_ BitVec 32))) (Found!3735 (index!17120 (_ BitVec 32))) (Intermediate!3735 (undefined!4547 Bool) (index!17121 (_ BitVec 32)) (x!46244 (_ BitVec 32))) (Undefined!3735) (MissingVacant!3735 (index!17122 (_ BitVec 32))) )
))
(declare-fun lt!221739 () SeekEntryResult!3735)

(declare-fun lt!221742 () array!31753)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31753 (_ BitVec 32)) SeekEntryResult!3735)

(assert (=> b!490672 (= lt!221739 (seekEntryOrOpen!0 lt!221743 lt!221742 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!14408 0))(
  ( (Unit!14409) )
))
(declare-fun lt!221744 () Unit!14408)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31753 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14408)

(assert (=> b!490672 (= lt!221744 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490673 () Bool)

(declare-fun res!293758 () Bool)

(declare-fun e!288389 () Bool)

(assert (=> b!490673 (=> (not res!293758) (not e!288389))))

(declare-datatypes ((List!9472 0))(
  ( (Nil!9469) (Cons!9468 (h!10330 (_ BitVec 64)) (t!15708 List!9472)) )
))
(declare-fun arrayNoDuplicates!0 (array!31753 (_ BitVec 32) List!9472) Bool)

(assert (=> b!490673 (= res!293758 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9469))))

(declare-fun b!490674 () Bool)

(declare-fun res!293764 () Bool)

(assert (=> b!490674 (=> (not res!293764) (not e!288389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31753 (_ BitVec 32)) Bool)

(assert (=> b!490674 (= res!293764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490676 () Bool)

(assert (=> b!490676 (= e!288391 e!288389)))

(declare-fun res!293762 () Bool)

(assert (=> b!490676 (=> (not res!293762) (not e!288389))))

(declare-fun lt!221740 () SeekEntryResult!3735)

(assert (=> b!490676 (= res!293762 (or (= lt!221740 (MissingZero!3735 i!1204)) (= lt!221740 (MissingVacant!3735 i!1204))))))

(assert (=> b!490676 (= lt!221740 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490677 () Bool)

(declare-fun res!293761 () Bool)

(assert (=> b!490677 (=> (not res!293761) (not e!288391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490677 (= res!293761 (validKeyInArray!0 k!2280))))

(declare-fun b!490678 () Bool)

(declare-fun res!293759 () Bool)

(assert (=> b!490678 (=> (not res!293759) (not e!288391))))

(declare-fun arrayContainsKey!0 (array!31753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490678 (= res!293759 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490679 () Bool)

(declare-fun res!293765 () Bool)

(assert (=> b!490679 (=> (not res!293765) (not e!288391))))

(assert (=> b!490679 (= res!293765 (validKeyInArray!0 (select (arr!15261 a!3235) j!176)))))

(declare-fun res!293760 () Bool)

(assert (=> start!44734 (=> (not res!293760) (not e!288391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44734 (= res!293760 (validMask!0 mask!3524))))

(assert (=> start!44734 e!288391))

(assert (=> start!44734 true))

(declare-fun array_inv!11035 (array!31753) Bool)

(assert (=> start!44734 (array_inv!11035 a!3235)))

(declare-fun b!490675 () Bool)

(assert (=> b!490675 (= e!288389 (not e!288390))))

(declare-fun res!293763 () Bool)

(assert (=> b!490675 (=> res!293763 e!288390)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31753 (_ BitVec 32)) SeekEntryResult!3735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490675 (= res!293763 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15261 a!3235) j!176) mask!3524) (select (arr!15261 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221743 mask!3524) lt!221743 lt!221742 mask!3524))))))

(assert (=> b!490675 (= lt!221743 (select (store (arr!15261 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490675 (= lt!221742 (array!31754 (store (arr!15261 a!3235) i!1204 k!2280) (size!15625 a!3235)))))

(assert (=> b!490675 (= lt!221739 (Found!3735 j!176))))

(assert (=> b!490675 (= lt!221739 (seekEntryOrOpen!0 (select (arr!15261 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490675 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221741 () Unit!14408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14408)

(assert (=> b!490675 (= lt!221741 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44734 res!293760) b!490671))

(assert (= (and b!490671 res!293757) b!490679))

(assert (= (and b!490679 res!293765) b!490677))

(assert (= (and b!490677 res!293761) b!490678))

(assert (= (and b!490678 res!293759) b!490676))

(assert (= (and b!490676 res!293762) b!490674))

(assert (= (and b!490674 res!293764) b!490673))

(assert (= (and b!490673 res!293758) b!490675))

(assert (= (and b!490675 (not res!293763)) b!490672))

(declare-fun m!471019 () Bool)

(assert (=> b!490672 m!471019))

(declare-fun m!471021 () Bool)

(assert (=> b!490672 m!471021))

(declare-fun m!471023 () Bool)

(assert (=> b!490677 m!471023))

(declare-fun m!471025 () Bool)

(assert (=> b!490676 m!471025))

(declare-fun m!471027 () Bool)

(assert (=> b!490675 m!471027))

(declare-fun m!471029 () Bool)

(assert (=> b!490675 m!471029))

(declare-fun m!471031 () Bool)

(assert (=> b!490675 m!471031))

(declare-fun m!471033 () Bool)

(assert (=> b!490675 m!471033))

(declare-fun m!471035 () Bool)

(assert (=> b!490675 m!471035))

(declare-fun m!471037 () Bool)

(assert (=> b!490675 m!471037))

(declare-fun m!471039 () Bool)

(assert (=> b!490675 m!471039))

(assert (=> b!490675 m!471037))

(assert (=> b!490675 m!471035))

(assert (=> b!490675 m!471037))

(declare-fun m!471041 () Bool)

(assert (=> b!490675 m!471041))

(assert (=> b!490675 m!471037))

(declare-fun m!471043 () Bool)

(assert (=> b!490675 m!471043))

(assert (=> b!490675 m!471027))

(declare-fun m!471045 () Bool)

(assert (=> b!490675 m!471045))

(declare-fun m!471047 () Bool)

(assert (=> b!490673 m!471047))

(assert (=> b!490679 m!471037))

(assert (=> b!490679 m!471037))

(declare-fun m!471049 () Bool)

(assert (=> b!490679 m!471049))

(declare-fun m!471051 () Bool)

(assert (=> b!490678 m!471051))

(declare-fun m!471053 () Bool)

(assert (=> b!490674 m!471053))

(declare-fun m!471055 () Bool)

(assert (=> start!44734 m!471055))

(declare-fun m!471057 () Bool)

(assert (=> start!44734 m!471057))

(push 1)

