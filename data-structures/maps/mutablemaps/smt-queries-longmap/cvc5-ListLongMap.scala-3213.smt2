; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45034 () Bool)

(assert start!45034)

(declare-fun b!493811 () Bool)

(declare-fun e!289906 () Bool)

(declare-fun e!289905 () Bool)

(assert (=> b!493811 (= e!289906 (not e!289905))))

(declare-fun res!296540 () Bool)

(assert (=> b!493811 (=> res!296540 e!289905)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3825 0))(
  ( (MissingZero!3825 (index!17479 (_ BitVec 32))) (Found!3825 (index!17480 (_ BitVec 32))) (Intermediate!3825 (undefined!4637 Bool) (index!17481 (_ BitVec 32)) (x!46586 (_ BitVec 32))) (Undefined!3825) (MissingVacant!3825 (index!17482 (_ BitVec 32))) )
))
(declare-fun lt!223477 () SeekEntryResult!3825)

(declare-fun lt!223478 () (_ BitVec 32))

(declare-datatypes ((array!31939 0))(
  ( (array!31940 (arr!15351 (Array (_ BitVec 32) (_ BitVec 64))) (size!15715 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31939)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31939 (_ BitVec 32)) SeekEntryResult!3825)

(assert (=> b!493811 (= res!296540 (= lt!223477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223478 (select (store (arr!15351 a!3235) i!1204 k!2280) j!176) (array!31940 (store (arr!15351 a!3235) i!1204 k!2280) (size!15715 a!3235)) mask!3524)))))

(declare-fun lt!223474 () (_ BitVec 32))

(assert (=> b!493811 (= lt!223477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223474 (select (arr!15351 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493811 (= lt!223478 (toIndex!0 (select (store (arr!15351 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493811 (= lt!223474 (toIndex!0 (select (arr!15351 a!3235) j!176) mask!3524))))

(declare-fun lt!223476 () SeekEntryResult!3825)

(assert (=> b!493811 (= lt!223476 (Found!3825 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31939 (_ BitVec 32)) SeekEntryResult!3825)

(assert (=> b!493811 (= lt!223476 (seekEntryOrOpen!0 (select (arr!15351 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31939 (_ BitVec 32)) Bool)

(assert (=> b!493811 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14588 0))(
  ( (Unit!14589) )
))
(declare-fun lt!223475 () Unit!14588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14588)

(assert (=> b!493811 (= lt!223475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493812 () Bool)

(declare-fun e!289903 () Bool)

(assert (=> b!493812 (= e!289903 e!289906)))

(declare-fun res!296536 () Bool)

(assert (=> b!493812 (=> (not res!296536) (not e!289906))))

(declare-fun lt!223473 () SeekEntryResult!3825)

(assert (=> b!493812 (= res!296536 (or (= lt!223473 (MissingZero!3825 i!1204)) (= lt!223473 (MissingVacant!3825 i!1204))))))

(assert (=> b!493812 (= lt!223473 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493813 () Bool)

(declare-fun res!296537 () Bool)

(assert (=> b!493813 (=> (not res!296537) (not e!289906))))

(declare-datatypes ((List!9562 0))(
  ( (Nil!9559) (Cons!9558 (h!10426 (_ BitVec 64)) (t!15798 List!9562)) )
))
(declare-fun arrayNoDuplicates!0 (array!31939 (_ BitVec 32) List!9562) Bool)

(assert (=> b!493813 (= res!296537 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9559))))

(declare-fun b!493814 () Bool)

(declare-fun res!296532 () Bool)

(assert (=> b!493814 (=> (not res!296532) (not e!289903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493814 (= res!296532 (validKeyInArray!0 k!2280))))

(declare-fun res!296533 () Bool)

(assert (=> start!45034 (=> (not res!296533) (not e!289903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45034 (= res!296533 (validMask!0 mask!3524))))

(assert (=> start!45034 e!289903))

(assert (=> start!45034 true))

(declare-fun array_inv!11125 (array!31939) Bool)

(assert (=> start!45034 (array_inv!11125 a!3235)))

(declare-fun b!493815 () Bool)

(declare-fun res!296534 () Bool)

(assert (=> b!493815 (=> (not res!296534) (not e!289903))))

(declare-fun arrayContainsKey!0 (array!31939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493815 (= res!296534 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493816 () Bool)

(declare-fun res!296531 () Bool)

(assert (=> b!493816 (=> res!296531 e!289905)))

(assert (=> b!493816 (= res!296531 (or (not (is-Intermediate!3825 lt!223477)) (not (undefined!4637 lt!223477))))))

(declare-fun b!493817 () Bool)

(declare-fun res!296538 () Bool)

(assert (=> b!493817 (=> (not res!296538) (not e!289903))))

(assert (=> b!493817 (= res!296538 (and (= (size!15715 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15715 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15715 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493818 () Bool)

(declare-fun res!296539 () Bool)

(assert (=> b!493818 (=> (not res!296539) (not e!289906))))

(assert (=> b!493818 (= res!296539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493819 () Bool)

(declare-fun res!296535 () Bool)

(assert (=> b!493819 (=> (not res!296535) (not e!289903))))

(assert (=> b!493819 (= res!296535 (validKeyInArray!0 (select (arr!15351 a!3235) j!176)))))

(declare-fun b!493820 () Bool)

(assert (=> b!493820 (= e!289905 true)))

(assert (=> b!493820 (= lt!223476 Undefined!3825)))

(assert (= (and start!45034 res!296533) b!493817))

(assert (= (and b!493817 res!296538) b!493819))

(assert (= (and b!493819 res!296535) b!493814))

(assert (= (and b!493814 res!296532) b!493815))

(assert (= (and b!493815 res!296534) b!493812))

(assert (= (and b!493812 res!296536) b!493818))

(assert (= (and b!493818 res!296539) b!493813))

(assert (= (and b!493813 res!296537) b!493811))

(assert (= (and b!493811 (not res!296540)) b!493816))

(assert (= (and b!493816 (not res!296531)) b!493820))

(declare-fun m!474805 () Bool)

(assert (=> b!493815 m!474805))

(declare-fun m!474807 () Bool)

(assert (=> b!493814 m!474807))

(declare-fun m!474809 () Bool)

(assert (=> b!493818 m!474809))

(declare-fun m!474811 () Bool)

(assert (=> b!493813 m!474811))

(declare-fun m!474813 () Bool)

(assert (=> b!493819 m!474813))

(assert (=> b!493819 m!474813))

(declare-fun m!474815 () Bool)

(assert (=> b!493819 m!474815))

(declare-fun m!474817 () Bool)

(assert (=> b!493811 m!474817))

(declare-fun m!474819 () Bool)

(assert (=> b!493811 m!474819))

(declare-fun m!474821 () Bool)

(assert (=> b!493811 m!474821))

(assert (=> b!493811 m!474821))

(declare-fun m!474823 () Bool)

(assert (=> b!493811 m!474823))

(assert (=> b!493811 m!474813))

(declare-fun m!474825 () Bool)

(assert (=> b!493811 m!474825))

(declare-fun m!474827 () Bool)

(assert (=> b!493811 m!474827))

(assert (=> b!493811 m!474813))

(declare-fun m!474829 () Bool)

(assert (=> b!493811 m!474829))

(assert (=> b!493811 m!474821))

(declare-fun m!474831 () Bool)

(assert (=> b!493811 m!474831))

(assert (=> b!493811 m!474813))

(declare-fun m!474833 () Bool)

(assert (=> b!493811 m!474833))

(assert (=> b!493811 m!474813))

(declare-fun m!474835 () Bool)

(assert (=> b!493812 m!474835))

(declare-fun m!474837 () Bool)

(assert (=> start!45034 m!474837))

(declare-fun m!474839 () Bool)

(assert (=> start!45034 m!474839))

(push 1)

