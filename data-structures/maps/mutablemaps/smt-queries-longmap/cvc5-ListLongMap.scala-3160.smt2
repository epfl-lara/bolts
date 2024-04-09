; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44542 () Bool)

(assert start!44542)

(declare-fun b!488616 () Bool)

(declare-fun res!291817 () Bool)

(declare-fun e!287427 () Bool)

(assert (=> b!488616 (=> (not res!291817) (not e!287427))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31612 0))(
  ( (array!31613 (arr!15192 (Array (_ BitVec 32) (_ BitVec 64))) (size!15556 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31612)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488616 (= res!291817 (and (= (size!15556 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15556 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15556 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488617 () Bool)

(declare-fun e!287426 () Bool)

(assert (=> b!488617 (= e!287426 (not true))))

(declare-fun lt!220501 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488617 (= lt!220501 (toIndex!0 (select (store (arr!15192 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287425 () Bool)

(assert (=> b!488617 e!287425))

(declare-fun res!291815 () Bool)

(assert (=> b!488617 (=> (not res!291815) (not e!287425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31612 (_ BitVec 32)) Bool)

(assert (=> b!488617 (= res!291815 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14270 0))(
  ( (Unit!14271) )
))
(declare-fun lt!220500 () Unit!14270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14270)

(assert (=> b!488617 (= lt!220500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488618 () Bool)

(declare-fun res!291818 () Bool)

(assert (=> b!488618 (=> (not res!291818) (not e!287426))))

(assert (=> b!488618 (= res!291818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488619 () Bool)

(declare-fun res!291821 () Bool)

(assert (=> b!488619 (=> (not res!291821) (not e!287427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488619 (= res!291821 (validKeyInArray!0 k!2280))))

(declare-fun res!291820 () Bool)

(assert (=> start!44542 (=> (not res!291820) (not e!287427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44542 (= res!291820 (validMask!0 mask!3524))))

(assert (=> start!44542 e!287427))

(assert (=> start!44542 true))

(declare-fun array_inv!10966 (array!31612) Bool)

(assert (=> start!44542 (array_inv!10966 a!3235)))

(declare-fun b!488620 () Bool)

(declare-fun res!291819 () Bool)

(assert (=> b!488620 (=> (not res!291819) (not e!287427))))

(declare-fun arrayContainsKey!0 (array!31612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488620 (= res!291819 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488621 () Bool)

(assert (=> b!488621 (= e!287427 e!287426)))

(declare-fun res!291814 () Bool)

(assert (=> b!488621 (=> (not res!291814) (not e!287426))))

(declare-datatypes ((SeekEntryResult!3666 0))(
  ( (MissingZero!3666 (index!16843 (_ BitVec 32))) (Found!3666 (index!16844 (_ BitVec 32))) (Intermediate!3666 (undefined!4478 Bool) (index!16845 (_ BitVec 32)) (x!45988 (_ BitVec 32))) (Undefined!3666) (MissingVacant!3666 (index!16846 (_ BitVec 32))) )
))
(declare-fun lt!220502 () SeekEntryResult!3666)

(assert (=> b!488621 (= res!291814 (or (= lt!220502 (MissingZero!3666 i!1204)) (= lt!220502 (MissingVacant!3666 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31612 (_ BitVec 32)) SeekEntryResult!3666)

(assert (=> b!488621 (= lt!220502 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488622 () Bool)

(assert (=> b!488622 (= e!287425 (= (seekEntryOrOpen!0 (select (arr!15192 a!3235) j!176) a!3235 mask!3524) (Found!3666 j!176)))))

(declare-fun b!488623 () Bool)

(declare-fun res!291813 () Bool)

(assert (=> b!488623 (=> (not res!291813) (not e!287427))))

(assert (=> b!488623 (= res!291813 (validKeyInArray!0 (select (arr!15192 a!3235) j!176)))))

(declare-fun b!488624 () Bool)

(declare-fun res!291816 () Bool)

(assert (=> b!488624 (=> (not res!291816) (not e!287426))))

(declare-datatypes ((List!9403 0))(
  ( (Nil!9400) (Cons!9399 (h!10258 (_ BitVec 64)) (t!15639 List!9403)) )
))
(declare-fun arrayNoDuplicates!0 (array!31612 (_ BitVec 32) List!9403) Bool)

(assert (=> b!488624 (= res!291816 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9400))))

(assert (= (and start!44542 res!291820) b!488616))

(assert (= (and b!488616 res!291817) b!488623))

(assert (= (and b!488623 res!291813) b!488619))

(assert (= (and b!488619 res!291821) b!488620))

(assert (= (and b!488620 res!291819) b!488621))

(assert (= (and b!488621 res!291814) b!488618))

(assert (= (and b!488618 res!291818) b!488624))

(assert (= (and b!488624 res!291816) b!488617))

(assert (= (and b!488617 res!291815) b!488622))

(declare-fun m!468379 () Bool)

(assert (=> b!488621 m!468379))

(declare-fun m!468381 () Bool)

(assert (=> b!488620 m!468381))

(declare-fun m!468383 () Bool)

(assert (=> b!488622 m!468383))

(assert (=> b!488622 m!468383))

(declare-fun m!468385 () Bool)

(assert (=> b!488622 m!468385))

(declare-fun m!468387 () Bool)

(assert (=> b!488619 m!468387))

(declare-fun m!468389 () Bool)

(assert (=> start!44542 m!468389))

(declare-fun m!468391 () Bool)

(assert (=> start!44542 m!468391))

(declare-fun m!468393 () Bool)

(assert (=> b!488624 m!468393))

(declare-fun m!468395 () Bool)

(assert (=> b!488618 m!468395))

(declare-fun m!468397 () Bool)

(assert (=> b!488617 m!468397))

(declare-fun m!468399 () Bool)

(assert (=> b!488617 m!468399))

(declare-fun m!468401 () Bool)

(assert (=> b!488617 m!468401))

(declare-fun m!468403 () Bool)

(assert (=> b!488617 m!468403))

(assert (=> b!488617 m!468401))

(declare-fun m!468405 () Bool)

(assert (=> b!488617 m!468405))

(assert (=> b!488623 m!468383))

(assert (=> b!488623 m!468383))

(declare-fun m!468407 () Bool)

(assert (=> b!488623 m!468407))

(push 1)

