; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45044 () Bool)

(assert start!45044)

(declare-fun b!493961 () Bool)

(declare-fun e!289963 () Bool)

(assert (=> b!493961 (= e!289963 true)))

(declare-datatypes ((SeekEntryResult!3830 0))(
  ( (MissingZero!3830 (index!17499 (_ BitVec 32))) (Found!3830 (index!17500 (_ BitVec 32))) (Intermediate!3830 (undefined!4642 Bool) (index!17501 (_ BitVec 32)) (x!46599 (_ BitVec 32))) (Undefined!3830) (MissingVacant!3830 (index!17502 (_ BitVec 32))) )
))
(declare-fun lt!223567 () SeekEntryResult!3830)

(assert (=> b!493961 (= lt!223567 Undefined!3830)))

(declare-fun b!493962 () Bool)

(declare-fun res!296685 () Bool)

(assert (=> b!493962 (=> res!296685 e!289963)))

(declare-fun lt!223568 () SeekEntryResult!3830)

(assert (=> b!493962 (= res!296685 (or (not (is-Intermediate!3830 lt!223568)) (not (undefined!4642 lt!223568))))))

(declare-fun b!493963 () Bool)

(declare-fun res!296690 () Bool)

(declare-fun e!289966 () Bool)

(assert (=> b!493963 (=> (not res!296690) (not e!289966))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31949 0))(
  ( (array!31950 (arr!15356 (Array (_ BitVec 32) (_ BitVec 64))) (size!15720 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31949)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493963 (= res!296690 (and (= (size!15720 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15720 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15720 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493964 () Bool)

(declare-fun res!296684 () Bool)

(declare-fun e!289965 () Bool)

(assert (=> b!493964 (=> (not res!296684) (not e!289965))))

(declare-datatypes ((List!9567 0))(
  ( (Nil!9564) (Cons!9563 (h!10431 (_ BitVec 64)) (t!15803 List!9567)) )
))
(declare-fun arrayNoDuplicates!0 (array!31949 (_ BitVec 32) List!9567) Bool)

(assert (=> b!493964 (= res!296684 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9564))))

(declare-fun b!493965 () Bool)

(declare-fun res!296686 () Bool)

(assert (=> b!493965 (=> (not res!296686) (not e!289966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493965 (= res!296686 (validKeyInArray!0 (select (arr!15356 a!3235) j!176)))))

(declare-fun b!493967 () Bool)

(declare-fun res!296688 () Bool)

(assert (=> b!493967 (=> (not res!296688) (not e!289966))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!493967 (= res!296688 (validKeyInArray!0 k!2280))))

(declare-fun b!493968 () Bool)

(assert (=> b!493968 (= e!289966 e!289965)))

(declare-fun res!296682 () Bool)

(assert (=> b!493968 (=> (not res!296682) (not e!289965))))

(declare-fun lt!223564 () SeekEntryResult!3830)

(assert (=> b!493968 (= res!296682 (or (= lt!223564 (MissingZero!3830 i!1204)) (= lt!223564 (MissingVacant!3830 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31949 (_ BitVec 32)) SeekEntryResult!3830)

(assert (=> b!493968 (= lt!223564 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493969 () Bool)

(declare-fun res!296689 () Bool)

(assert (=> b!493969 (=> (not res!296689) (not e!289965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31949 (_ BitVec 32)) Bool)

(assert (=> b!493969 (= res!296689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493970 () Bool)

(declare-fun res!296687 () Bool)

(assert (=> b!493970 (=> (not res!296687) (not e!289966))))

(declare-fun arrayContainsKey!0 (array!31949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493970 (= res!296687 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493966 () Bool)

(assert (=> b!493966 (= e!289965 (not e!289963))))

(declare-fun res!296683 () Bool)

(assert (=> b!493966 (=> res!296683 e!289963)))

(declare-fun lt!223565 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31949 (_ BitVec 32)) SeekEntryResult!3830)

(assert (=> b!493966 (= res!296683 (= lt!223568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223565 (select (store (arr!15356 a!3235) i!1204 k!2280) j!176) (array!31950 (store (arr!15356 a!3235) i!1204 k!2280) (size!15720 a!3235)) mask!3524)))))

(declare-fun lt!223566 () (_ BitVec 32))

(assert (=> b!493966 (= lt!223568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223566 (select (arr!15356 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493966 (= lt!223565 (toIndex!0 (select (store (arr!15356 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493966 (= lt!223566 (toIndex!0 (select (arr!15356 a!3235) j!176) mask!3524))))

(assert (=> b!493966 (= lt!223567 (Found!3830 j!176))))

(assert (=> b!493966 (= lt!223567 (seekEntryOrOpen!0 (select (arr!15356 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493966 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14598 0))(
  ( (Unit!14599) )
))
(declare-fun lt!223563 () Unit!14598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31949 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14598)

(assert (=> b!493966 (= lt!223563 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!296681 () Bool)

(assert (=> start!45044 (=> (not res!296681) (not e!289966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45044 (= res!296681 (validMask!0 mask!3524))))

(assert (=> start!45044 e!289966))

(assert (=> start!45044 true))

(declare-fun array_inv!11130 (array!31949) Bool)

(assert (=> start!45044 (array_inv!11130 a!3235)))

(assert (= (and start!45044 res!296681) b!493963))

(assert (= (and b!493963 res!296690) b!493965))

(assert (= (and b!493965 res!296686) b!493967))

(assert (= (and b!493967 res!296688) b!493970))

(assert (= (and b!493970 res!296687) b!493968))

(assert (= (and b!493968 res!296682) b!493969))

(assert (= (and b!493969 res!296689) b!493964))

(assert (= (and b!493964 res!296684) b!493966))

(assert (= (and b!493966 (not res!296683)) b!493962))

(assert (= (and b!493962 (not res!296685)) b!493961))

(declare-fun m!474985 () Bool)

(assert (=> start!45044 m!474985))

(declare-fun m!474987 () Bool)

(assert (=> start!45044 m!474987))

(declare-fun m!474989 () Bool)

(assert (=> b!493969 m!474989))

(declare-fun m!474991 () Bool)

(assert (=> b!493970 m!474991))

(declare-fun m!474993 () Bool)

(assert (=> b!493966 m!474993))

(declare-fun m!474995 () Bool)

(assert (=> b!493966 m!474995))

(declare-fun m!474997 () Bool)

(assert (=> b!493966 m!474997))

(declare-fun m!474999 () Bool)

(assert (=> b!493966 m!474999))

(declare-fun m!475001 () Bool)

(assert (=> b!493966 m!475001))

(assert (=> b!493966 m!475001))

(declare-fun m!475003 () Bool)

(assert (=> b!493966 m!475003))

(assert (=> b!493966 m!474995))

(declare-fun m!475005 () Bool)

(assert (=> b!493966 m!475005))

(assert (=> b!493966 m!474995))

(declare-fun m!475007 () Bool)

(assert (=> b!493966 m!475007))

(assert (=> b!493966 m!474995))

(declare-fun m!475009 () Bool)

(assert (=> b!493966 m!475009))

(assert (=> b!493966 m!475001))

(declare-fun m!475011 () Bool)

(assert (=> b!493966 m!475011))

(declare-fun m!475013 () Bool)

(assert (=> b!493968 m!475013))

(declare-fun m!475015 () Bool)

(assert (=> b!493964 m!475015))

(declare-fun m!475017 () Bool)

(assert (=> b!493967 m!475017))

(assert (=> b!493965 m!474995))

(assert (=> b!493965 m!474995))

(declare-fun m!475019 () Bool)

(assert (=> b!493965 m!475019))

(push 1)

