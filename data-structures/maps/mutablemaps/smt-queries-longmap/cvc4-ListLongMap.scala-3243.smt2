; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45278 () Bool)

(assert start!45278)

(declare-fun b!497050 () Bool)

(declare-fun res!299591 () Bool)

(declare-fun e!291384 () Bool)

(assert (=> b!497050 (=> (not res!299591) (not e!291384))))

(declare-datatypes ((array!32126 0))(
  ( (array!32127 (arr!15443 (Array (_ BitVec 32) (_ BitVec 64))) (size!15807 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32126)

(declare-datatypes ((List!9654 0))(
  ( (Nil!9651) (Cons!9650 (h!10521 (_ BitVec 64)) (t!15890 List!9654)) )
))
(declare-fun arrayNoDuplicates!0 (array!32126 (_ BitVec 32) List!9654) Bool)

(assert (=> b!497050 (= res!299591 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9651))))

(declare-fun b!497051 () Bool)

(declare-fun res!299588 () Bool)

(declare-fun e!291383 () Bool)

(assert (=> b!497051 (=> (not res!299588) (not e!291383))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497051 (= res!299588 (validKeyInArray!0 k!2280))))

(declare-fun b!497052 () Bool)

(declare-fun e!291381 () Bool)

(assert (=> b!497052 (= e!291384 (not e!291381))))

(declare-fun res!299595 () Bool)

(assert (=> b!497052 (=> res!299595 e!291381)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3917 0))(
  ( (MissingZero!3917 (index!17847 (_ BitVec 32))) (Found!3917 (index!17848 (_ BitVec 32))) (Intermediate!3917 (undefined!4729 Bool) (index!17849 (_ BitVec 32)) (x!46924 (_ BitVec 32))) (Undefined!3917) (MissingVacant!3917 (index!17850 (_ BitVec 32))) )
))
(declare-fun lt!225073 () SeekEntryResult!3917)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!225070 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32126 (_ BitVec 32)) SeekEntryResult!3917)

(assert (=> b!497052 (= res!299595 (= lt!225073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225070 (select (store (arr!15443 a!3235) i!1204 k!2280) j!176) (array!32127 (store (arr!15443 a!3235) i!1204 k!2280) (size!15807 a!3235)) mask!3524)))))

(declare-fun lt!225072 () (_ BitVec 32))

(assert (=> b!497052 (= lt!225073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225072 (select (arr!15443 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497052 (= lt!225070 (toIndex!0 (select (store (arr!15443 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!497052 (= lt!225072 (toIndex!0 (select (arr!15443 a!3235) j!176) mask!3524))))

(declare-fun e!291382 () Bool)

(assert (=> b!497052 e!291382))

(declare-fun res!299593 () Bool)

(assert (=> b!497052 (=> (not res!299593) (not e!291382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32126 (_ BitVec 32)) Bool)

(assert (=> b!497052 (= res!299593 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14772 0))(
  ( (Unit!14773) )
))
(declare-fun lt!225074 () Unit!14772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14772)

(assert (=> b!497052 (= lt!225074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497053 () Bool)

(declare-fun res!299596 () Bool)

(assert (=> b!497053 (=> (not res!299596) (not e!291383))))

(assert (=> b!497053 (= res!299596 (and (= (size!15807 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15807 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15807 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497054 () Bool)

(declare-fun res!299594 () Bool)

(assert (=> b!497054 (=> (not res!299594) (not e!291383))))

(declare-fun arrayContainsKey!0 (array!32126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497054 (= res!299594 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299587 () Bool)

(assert (=> start!45278 (=> (not res!299587) (not e!291383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45278 (= res!299587 (validMask!0 mask!3524))))

(assert (=> start!45278 e!291383))

(assert (=> start!45278 true))

(declare-fun array_inv!11217 (array!32126) Bool)

(assert (=> start!45278 (array_inv!11217 a!3235)))

(declare-fun b!497055 () Bool)

(assert (=> b!497055 (= e!291381 true)))

(assert (=> b!497055 (and (bvslt (x!46924 lt!225073) #b01111111111111111111111111111110) (or (= (select (arr!15443 a!3235) (index!17849 lt!225073)) (select (arr!15443 a!3235) j!176)) (= (select (arr!15443 a!3235) (index!17849 lt!225073)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15443 a!3235) (index!17849 lt!225073)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497056 () Bool)

(declare-fun res!299589 () Bool)

(assert (=> b!497056 (=> res!299589 e!291381)))

(assert (=> b!497056 (= res!299589 (or (undefined!4729 lt!225073) (not (is-Intermediate!3917 lt!225073))))))

(declare-fun b!497057 () Bool)

(declare-fun res!299592 () Bool)

(assert (=> b!497057 (=> (not res!299592) (not e!291384))))

(assert (=> b!497057 (= res!299592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497058 () Bool)

(assert (=> b!497058 (= e!291383 e!291384)))

(declare-fun res!299597 () Bool)

(assert (=> b!497058 (=> (not res!299597) (not e!291384))))

(declare-fun lt!225071 () SeekEntryResult!3917)

(assert (=> b!497058 (= res!299597 (or (= lt!225071 (MissingZero!3917 i!1204)) (= lt!225071 (MissingVacant!3917 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32126 (_ BitVec 32)) SeekEntryResult!3917)

(assert (=> b!497058 (= lt!225071 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497059 () Bool)

(assert (=> b!497059 (= e!291382 (= (seekEntryOrOpen!0 (select (arr!15443 a!3235) j!176) a!3235 mask!3524) (Found!3917 j!176)))))

(declare-fun b!497060 () Bool)

(declare-fun res!299590 () Bool)

(assert (=> b!497060 (=> (not res!299590) (not e!291383))))

(assert (=> b!497060 (= res!299590 (validKeyInArray!0 (select (arr!15443 a!3235) j!176)))))

(assert (= (and start!45278 res!299587) b!497053))

(assert (= (and b!497053 res!299596) b!497060))

(assert (= (and b!497060 res!299590) b!497051))

(assert (= (and b!497051 res!299588) b!497054))

(assert (= (and b!497054 res!299594) b!497058))

(assert (= (and b!497058 res!299597) b!497057))

(assert (= (and b!497057 res!299592) b!497050))

(assert (= (and b!497050 res!299591) b!497052))

(assert (= (and b!497052 res!299593) b!497059))

(assert (= (and b!497052 (not res!299595)) b!497056))

(assert (= (and b!497056 (not res!299589)) b!497055))

(declare-fun m!478445 () Bool)

(assert (=> b!497058 m!478445))

(declare-fun m!478447 () Bool)

(assert (=> b!497050 m!478447))

(declare-fun m!478449 () Bool)

(assert (=> b!497060 m!478449))

(assert (=> b!497060 m!478449))

(declare-fun m!478451 () Bool)

(assert (=> b!497060 m!478451))

(declare-fun m!478453 () Bool)

(assert (=> b!497051 m!478453))

(assert (=> b!497059 m!478449))

(assert (=> b!497059 m!478449))

(declare-fun m!478455 () Bool)

(assert (=> b!497059 m!478455))

(declare-fun m!478457 () Bool)

(assert (=> b!497052 m!478457))

(declare-fun m!478459 () Bool)

(assert (=> b!497052 m!478459))

(assert (=> b!497052 m!478449))

(declare-fun m!478461 () Bool)

(assert (=> b!497052 m!478461))

(assert (=> b!497052 m!478449))

(declare-fun m!478463 () Bool)

(assert (=> b!497052 m!478463))

(declare-fun m!478465 () Bool)

(assert (=> b!497052 m!478465))

(declare-fun m!478467 () Bool)

(assert (=> b!497052 m!478467))

(assert (=> b!497052 m!478465))

(declare-fun m!478469 () Bool)

(assert (=> b!497052 m!478469))

(assert (=> b!497052 m!478465))

(assert (=> b!497052 m!478449))

(declare-fun m!478471 () Bool)

(assert (=> b!497052 m!478471))

(declare-fun m!478473 () Bool)

(assert (=> b!497054 m!478473))

(declare-fun m!478475 () Bool)

(assert (=> b!497055 m!478475))

(assert (=> b!497055 m!478449))

(declare-fun m!478477 () Bool)

(assert (=> start!45278 m!478477))

(declare-fun m!478479 () Bool)

(assert (=> start!45278 m!478479))

(declare-fun m!478481 () Bool)

(assert (=> b!497057 m!478481))

(push 1)

