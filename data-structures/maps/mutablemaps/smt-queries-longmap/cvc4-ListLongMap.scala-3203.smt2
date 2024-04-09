; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44978 () Bool)

(assert start!44978)

(declare-fun b!492989 () Bool)

(declare-fun res!295714 () Bool)

(declare-fun e!289570 () Bool)

(assert (=> b!492989 (=> (not res!295714) (not e!289570))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31883 0))(
  ( (array!31884 (arr!15323 (Array (_ BitVec 32) (_ BitVec 64))) (size!15687 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31883)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492989 (= res!295714 (and (= (size!15687 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15687 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15687 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492990 () Bool)

(declare-fun res!295710 () Bool)

(declare-fun e!289568 () Bool)

(assert (=> b!492990 (=> (not res!295710) (not e!289568))))

(declare-datatypes ((List!9534 0))(
  ( (Nil!9531) (Cons!9530 (h!10398 (_ BitVec 64)) (t!15770 List!9534)) )
))
(declare-fun arrayNoDuplicates!0 (array!31883 (_ BitVec 32) List!9534) Bool)

(assert (=> b!492990 (= res!295710 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9531))))

(declare-fun b!492991 () Bool)

(declare-fun e!289567 () Bool)

(declare-datatypes ((SeekEntryResult!3797 0))(
  ( (MissingZero!3797 (index!17367 (_ BitVec 32))) (Found!3797 (index!17368 (_ BitVec 32))) (Intermediate!3797 (undefined!4609 Bool) (index!17369 (_ BitVec 32)) (x!46478 (_ BitVec 32))) (Undefined!3797) (MissingVacant!3797 (index!17370 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31883 (_ BitVec 32)) SeekEntryResult!3797)

(assert (=> b!492991 (= e!289567 (= (seekEntryOrOpen!0 (select (arr!15323 a!3235) j!176) a!3235 mask!3524) (Found!3797 j!176)))))

(declare-fun res!295713 () Bool)

(assert (=> start!44978 (=> (not res!295713) (not e!289570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44978 (= res!295713 (validMask!0 mask!3524))))

(assert (=> start!44978 e!289570))

(assert (=> start!44978 true))

(declare-fun array_inv!11097 (array!31883) Bool)

(assert (=> start!44978 (array_inv!11097 a!3235)))

(declare-fun b!492992 () Bool)

(declare-fun res!295717 () Bool)

(assert (=> b!492992 (=> (not res!295717) (not e!289570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492992 (= res!295717 (validKeyInArray!0 (select (arr!15323 a!3235) j!176)))))

(declare-fun b!492993 () Bool)

(declare-fun res!295718 () Bool)

(assert (=> b!492993 (=> (not res!295718) (not e!289570))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!492993 (= res!295718 (validKeyInArray!0 k!2280))))

(declare-fun b!492994 () Bool)

(assert (=> b!492994 (= e!289570 e!289568)))

(declare-fun res!295712 () Bool)

(assert (=> b!492994 (=> (not res!295712) (not e!289568))))

(declare-fun lt!222973 () SeekEntryResult!3797)

(assert (=> b!492994 (= res!295712 (or (= lt!222973 (MissingZero!3797 i!1204)) (= lt!222973 (MissingVacant!3797 i!1204))))))

(assert (=> b!492994 (= lt!222973 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492995 () Bool)

(declare-fun e!289569 () Bool)

(assert (=> b!492995 (= e!289568 (not e!289569))))

(declare-fun res!295716 () Bool)

(assert (=> b!492995 (=> res!295716 e!289569)))

(declare-fun lt!222974 () (_ BitVec 32))

(declare-fun lt!222972 () SeekEntryResult!3797)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31883 (_ BitVec 32)) SeekEntryResult!3797)

(assert (=> b!492995 (= res!295716 (= lt!222972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222974 (select (store (arr!15323 a!3235) i!1204 k!2280) j!176) (array!31884 (store (arr!15323 a!3235) i!1204 k!2280) (size!15687 a!3235)) mask!3524)))))

(declare-fun lt!222970 () (_ BitVec 32))

(assert (=> b!492995 (= lt!222972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222970 (select (arr!15323 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492995 (= lt!222974 (toIndex!0 (select (store (arr!15323 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492995 (= lt!222970 (toIndex!0 (select (arr!15323 a!3235) j!176) mask!3524))))

(assert (=> b!492995 e!289567))

(declare-fun res!295709 () Bool)

(assert (=> b!492995 (=> (not res!295709) (not e!289567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31883 (_ BitVec 32)) Bool)

(assert (=> b!492995 (= res!295709 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14532 0))(
  ( (Unit!14533) )
))
(declare-fun lt!222971 () Unit!14532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14532)

(assert (=> b!492995 (= lt!222971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492996 () Bool)

(declare-fun res!295711 () Bool)

(assert (=> b!492996 (=> (not res!295711) (not e!289570))))

(declare-fun arrayContainsKey!0 (array!31883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492996 (= res!295711 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492997 () Bool)

(assert (=> b!492997 (= e!289569 (or (not (is-Intermediate!3797 lt!222972)) (not (undefined!4609 lt!222972)) (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun b!492998 () Bool)

(declare-fun res!295715 () Bool)

(assert (=> b!492998 (=> (not res!295715) (not e!289568))))

(assert (=> b!492998 (= res!295715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44978 res!295713) b!492989))

(assert (= (and b!492989 res!295714) b!492992))

(assert (= (and b!492992 res!295717) b!492993))

(assert (= (and b!492993 res!295718) b!492996))

(assert (= (and b!492996 res!295711) b!492994))

(assert (= (and b!492994 res!295712) b!492998))

(assert (= (and b!492998 res!295715) b!492990))

(assert (= (and b!492990 res!295710) b!492995))

(assert (= (and b!492995 res!295709) b!492991))

(assert (= (and b!492995 (not res!295716)) b!492997))

(declare-fun m!473797 () Bool)

(assert (=> b!492990 m!473797))

(declare-fun m!473799 () Bool)

(assert (=> b!492998 m!473799))

(declare-fun m!473801 () Bool)

(assert (=> b!492994 m!473801))

(declare-fun m!473803 () Bool)

(assert (=> b!492991 m!473803))

(assert (=> b!492991 m!473803))

(declare-fun m!473805 () Bool)

(assert (=> b!492991 m!473805))

(declare-fun m!473807 () Bool)

(assert (=> b!492996 m!473807))

(assert (=> b!492992 m!473803))

(assert (=> b!492992 m!473803))

(declare-fun m!473809 () Bool)

(assert (=> b!492992 m!473809))

(declare-fun m!473811 () Bool)

(assert (=> b!492993 m!473811))

(declare-fun m!473813 () Bool)

(assert (=> b!492995 m!473813))

(declare-fun m!473815 () Bool)

(assert (=> b!492995 m!473815))

(assert (=> b!492995 m!473815))

(declare-fun m!473817 () Bool)

(assert (=> b!492995 m!473817))

(assert (=> b!492995 m!473803))

(declare-fun m!473819 () Bool)

(assert (=> b!492995 m!473819))

(assert (=> b!492995 m!473803))

(declare-fun m!473821 () Bool)

(assert (=> b!492995 m!473821))

(assert (=> b!492995 m!473815))

(declare-fun m!473823 () Bool)

(assert (=> b!492995 m!473823))

(declare-fun m!473825 () Bool)

(assert (=> b!492995 m!473825))

(assert (=> b!492995 m!473803))

(declare-fun m!473827 () Bool)

(assert (=> b!492995 m!473827))

(declare-fun m!473829 () Bool)

(assert (=> start!44978 m!473829))

(declare-fun m!473831 () Bool)

(assert (=> start!44978 m!473831))

(push 1)

