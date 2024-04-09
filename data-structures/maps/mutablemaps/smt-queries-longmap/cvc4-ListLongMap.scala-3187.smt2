; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44762 () Bool)

(assert start!44762)

(declare-fun b!491058 () Bool)

(declare-fun res!294145 () Bool)

(declare-fun e!288566 () Bool)

(assert (=> b!491058 (=> (not res!294145) (not e!288566))))

(declare-datatypes ((array!31781 0))(
  ( (array!31782 (arr!15275 (Array (_ BitVec 32) (_ BitVec 64))) (size!15639 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31781)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491058 (= res!294145 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491059 () Bool)

(declare-fun res!294146 () Bool)

(assert (=> b!491059 (=> (not res!294146) (not e!288566))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!491059 (= res!294146 (and (= (size!15639 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15639 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15639 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491060 () Bool)

(declare-fun e!288567 () Bool)

(assert (=> b!491060 (= e!288566 e!288567)))

(declare-fun res!294147 () Bool)

(assert (=> b!491060 (=> (not res!294147) (not e!288567))))

(declare-datatypes ((SeekEntryResult!3749 0))(
  ( (MissingZero!3749 (index!17175 (_ BitVec 32))) (Found!3749 (index!17176 (_ BitVec 32))) (Intermediate!3749 (undefined!4561 Bool) (index!17177 (_ BitVec 32)) (x!46290 (_ BitVec 32))) (Undefined!3749) (MissingVacant!3749 (index!17178 (_ BitVec 32))) )
))
(declare-fun lt!221995 () SeekEntryResult!3749)

(assert (=> b!491060 (= res!294147 (or (= lt!221995 (MissingZero!3749 i!1204)) (= lt!221995 (MissingVacant!3749 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31781 (_ BitVec 32)) SeekEntryResult!3749)

(assert (=> b!491060 (= lt!221995 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491061 () Bool)

(declare-fun e!288568 () Bool)

(assert (=> b!491061 (= e!288568 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!221991 () (_ BitVec 64))

(declare-fun lt!221992 () SeekEntryResult!3749)

(declare-fun lt!221994 () array!31781)

(assert (=> b!491061 (= lt!221992 (seekEntryOrOpen!0 lt!221991 lt!221994 mask!3524))))

(declare-datatypes ((Unit!14436 0))(
  ( (Unit!14437) )
))
(declare-fun lt!221996 () Unit!14436)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31781 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14436)

(assert (=> b!491061 (= lt!221996 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491062 () Bool)

(declare-fun res!294148 () Bool)

(assert (=> b!491062 (=> (not res!294148) (not e!288567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31781 (_ BitVec 32)) Bool)

(assert (=> b!491062 (= res!294148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491063 () Bool)

(declare-fun res!294144 () Bool)

(assert (=> b!491063 (=> (not res!294144) (not e!288566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491063 (= res!294144 (validKeyInArray!0 (select (arr!15275 a!3235) j!176)))))

(declare-fun b!491064 () Bool)

(declare-fun res!294149 () Bool)

(assert (=> b!491064 (=> (not res!294149) (not e!288567))))

(declare-datatypes ((List!9486 0))(
  ( (Nil!9483) (Cons!9482 (h!10344 (_ BitVec 64)) (t!15722 List!9486)) )
))
(declare-fun arrayNoDuplicates!0 (array!31781 (_ BitVec 32) List!9486) Bool)

(assert (=> b!491064 (= res!294149 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9483))))

(declare-fun b!491065 () Bool)

(assert (=> b!491065 (= e!288567 (not e!288568))))

(declare-fun res!294152 () Bool)

(assert (=> b!491065 (=> res!294152 e!288568)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31781 (_ BitVec 32)) SeekEntryResult!3749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491065 (= res!294152 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15275 a!3235) j!176) mask!3524) (select (arr!15275 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221991 mask!3524) lt!221991 lt!221994 mask!3524))))))

(assert (=> b!491065 (= lt!221991 (select (store (arr!15275 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491065 (= lt!221994 (array!31782 (store (arr!15275 a!3235) i!1204 k!2280) (size!15639 a!3235)))))

(assert (=> b!491065 (= lt!221992 (Found!3749 j!176))))

(assert (=> b!491065 (= lt!221992 (seekEntryOrOpen!0 (select (arr!15275 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491065 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221993 () Unit!14436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14436)

(assert (=> b!491065 (= lt!221993 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491066 () Bool)

(declare-fun res!294150 () Bool)

(assert (=> b!491066 (=> (not res!294150) (not e!288566))))

(assert (=> b!491066 (= res!294150 (validKeyInArray!0 k!2280))))

(declare-fun res!294151 () Bool)

(assert (=> start!44762 (=> (not res!294151) (not e!288566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44762 (= res!294151 (validMask!0 mask!3524))))

(assert (=> start!44762 e!288566))

(assert (=> start!44762 true))

(declare-fun array_inv!11049 (array!31781) Bool)

(assert (=> start!44762 (array_inv!11049 a!3235)))

(assert (= (and start!44762 res!294151) b!491059))

(assert (= (and b!491059 res!294146) b!491063))

(assert (= (and b!491063 res!294144) b!491066))

(assert (= (and b!491066 res!294150) b!491058))

(assert (= (and b!491058 res!294145) b!491060))

(assert (= (and b!491060 res!294147) b!491062))

(assert (= (and b!491062 res!294148) b!491064))

(assert (= (and b!491064 res!294149) b!491065))

(assert (= (and b!491065 (not res!294152)) b!491061))

(declare-fun m!471585 () Bool)

(assert (=> b!491064 m!471585))

(declare-fun m!471587 () Bool)

(assert (=> b!491065 m!471587))

(declare-fun m!471589 () Bool)

(assert (=> b!491065 m!471589))

(declare-fun m!471591 () Bool)

(assert (=> b!491065 m!471591))

(declare-fun m!471593 () Bool)

(assert (=> b!491065 m!471593))

(declare-fun m!471595 () Bool)

(assert (=> b!491065 m!471595))

(declare-fun m!471597 () Bool)

(assert (=> b!491065 m!471597))

(declare-fun m!471599 () Bool)

(assert (=> b!491065 m!471599))

(assert (=> b!491065 m!471597))

(assert (=> b!491065 m!471595))

(assert (=> b!491065 m!471597))

(assert (=> b!491065 m!471597))

(declare-fun m!471601 () Bool)

(assert (=> b!491065 m!471601))

(assert (=> b!491065 m!471587))

(declare-fun m!471603 () Bool)

(assert (=> b!491065 m!471603))

(declare-fun m!471605 () Bool)

(assert (=> b!491065 m!471605))

(declare-fun m!471607 () Bool)

(assert (=> start!44762 m!471607))

(declare-fun m!471609 () Bool)

(assert (=> start!44762 m!471609))

(declare-fun m!471611 () Bool)

(assert (=> b!491060 m!471611))

(declare-fun m!471613 () Bool)

(assert (=> b!491061 m!471613))

(declare-fun m!471615 () Bool)

(assert (=> b!491061 m!471615))

(assert (=> b!491063 m!471597))

(assert (=> b!491063 m!471597))

(declare-fun m!471617 () Bool)

(assert (=> b!491063 m!471617))

(declare-fun m!471619 () Bool)

(assert (=> b!491066 m!471619))

(declare-fun m!471621 () Bool)

(assert (=> b!491062 m!471621))

(declare-fun m!471623 () Bool)

(assert (=> b!491058 m!471623))

(push 1)

(assert (not start!44762))

(assert (not b!491066))

