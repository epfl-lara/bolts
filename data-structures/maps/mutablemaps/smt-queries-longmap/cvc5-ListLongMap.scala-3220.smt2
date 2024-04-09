; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45076 () Bool)

(assert start!45076)

(declare-fun b!494441 () Bool)

(declare-fun res!297167 () Bool)

(declare-fun e!290158 () Bool)

(assert (=> b!494441 (=> (not res!297167) (not e!290158))))

(declare-datatypes ((array!31981 0))(
  ( (array!31982 (arr!15372 (Array (_ BitVec 32) (_ BitVec 64))) (size!15736 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31981)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31981 (_ BitVec 32)) Bool)

(assert (=> b!494441 (= res!297167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494442 () Bool)

(declare-fun res!297163 () Bool)

(assert (=> b!494442 (=> (not res!297163) (not e!290158))))

(declare-datatypes ((List!9583 0))(
  ( (Nil!9580) (Cons!9579 (h!10447 (_ BitVec 64)) (t!15819 List!9583)) )
))
(declare-fun arrayNoDuplicates!0 (array!31981 (_ BitVec 32) List!9583) Bool)

(assert (=> b!494442 (= res!297163 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9580))))

(declare-fun b!494443 () Bool)

(declare-fun e!290157 () Bool)

(assert (=> b!494443 (= e!290157 e!290158)))

(declare-fun res!297169 () Bool)

(assert (=> b!494443 (=> (not res!297169) (not e!290158))))

(declare-datatypes ((SeekEntryResult!3846 0))(
  ( (MissingZero!3846 (index!17563 (_ BitVec 32))) (Found!3846 (index!17564 (_ BitVec 32))) (Intermediate!3846 (undefined!4658 Bool) (index!17565 (_ BitVec 32)) (x!46663 (_ BitVec 32))) (Undefined!3846) (MissingVacant!3846 (index!17566 (_ BitVec 32))) )
))
(declare-fun lt!223853 () SeekEntryResult!3846)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494443 (= res!297169 (or (= lt!223853 (MissingZero!3846 i!1204)) (= lt!223853 (MissingVacant!3846 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31981 (_ BitVec 32)) SeekEntryResult!3846)

(assert (=> b!494443 (= lt!223853 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494444 () Bool)

(declare-fun e!290155 () Bool)

(assert (=> b!494444 (= e!290158 (not e!290155))))

(declare-fun res!297170 () Bool)

(assert (=> b!494444 (=> res!297170 e!290155)))

(declare-fun lt!223852 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!223854 () SeekEntryResult!3846)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31981 (_ BitVec 32)) SeekEntryResult!3846)

(assert (=> b!494444 (= res!297170 (= lt!223854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223852 (select (store (arr!15372 a!3235) i!1204 k!2280) j!176) (array!31982 (store (arr!15372 a!3235) i!1204 k!2280) (size!15736 a!3235)) mask!3524)))))

(declare-fun lt!223855 () (_ BitVec 32))

(assert (=> b!494444 (= lt!223854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223855 (select (arr!15372 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494444 (= lt!223852 (toIndex!0 (select (store (arr!15372 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494444 (= lt!223855 (toIndex!0 (select (arr!15372 a!3235) j!176) mask!3524))))

(declare-fun lt!223856 () SeekEntryResult!3846)

(assert (=> b!494444 (= lt!223856 (Found!3846 j!176))))

(assert (=> b!494444 (= lt!223856 (seekEntryOrOpen!0 (select (arr!15372 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494444 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14630 0))(
  ( (Unit!14631) )
))
(declare-fun lt!223851 () Unit!14630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14630)

(assert (=> b!494444 (= lt!223851 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494445 () Bool)

(declare-fun res!297165 () Bool)

(assert (=> b!494445 (=> (not res!297165) (not e!290157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494445 (= res!297165 (validKeyInArray!0 (select (arr!15372 a!3235) j!176)))))

(declare-fun b!494446 () Bool)

(declare-fun res!297168 () Bool)

(assert (=> b!494446 (=> (not res!297168) (not e!290157))))

(assert (=> b!494446 (= res!297168 (validKeyInArray!0 k!2280))))

(declare-fun res!297162 () Bool)

(assert (=> start!45076 (=> (not res!297162) (not e!290157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45076 (= res!297162 (validMask!0 mask!3524))))

(assert (=> start!45076 e!290157))

(assert (=> start!45076 true))

(declare-fun array_inv!11146 (array!31981) Bool)

(assert (=> start!45076 (array_inv!11146 a!3235)))

(declare-fun b!494447 () Bool)

(declare-fun res!297164 () Bool)

(assert (=> b!494447 (=> (not res!297164) (not e!290157))))

(declare-fun arrayContainsKey!0 (array!31981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494447 (= res!297164 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494448 () Bool)

(assert (=> b!494448 (= e!290155 true)))

(assert (=> b!494448 (= lt!223856 Undefined!3846)))

(declare-fun b!494449 () Bool)

(declare-fun res!297161 () Bool)

(assert (=> b!494449 (=> (not res!297161) (not e!290157))))

(assert (=> b!494449 (= res!297161 (and (= (size!15736 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15736 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15736 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494450 () Bool)

(declare-fun res!297166 () Bool)

(assert (=> b!494450 (=> res!297166 e!290155)))

(assert (=> b!494450 (= res!297166 (or (not (is-Intermediate!3846 lt!223854)) (not (undefined!4658 lt!223854))))))

(assert (= (and start!45076 res!297162) b!494449))

(assert (= (and b!494449 res!297161) b!494445))

(assert (= (and b!494445 res!297165) b!494446))

(assert (= (and b!494446 res!297168) b!494447))

(assert (= (and b!494447 res!297164) b!494443))

(assert (= (and b!494443 res!297169) b!494441))

(assert (= (and b!494441 res!297167) b!494442))

(assert (= (and b!494442 res!297163) b!494444))

(assert (= (and b!494444 (not res!297170)) b!494450))

(assert (= (and b!494450 (not res!297166)) b!494448))

(declare-fun m!475561 () Bool)

(assert (=> start!45076 m!475561))

(declare-fun m!475563 () Bool)

(assert (=> start!45076 m!475563))

(declare-fun m!475565 () Bool)

(assert (=> b!494442 m!475565))

(declare-fun m!475567 () Bool)

(assert (=> b!494446 m!475567))

(declare-fun m!475569 () Bool)

(assert (=> b!494444 m!475569))

(declare-fun m!475571 () Bool)

(assert (=> b!494444 m!475571))

(declare-fun m!475573 () Bool)

(assert (=> b!494444 m!475573))

(declare-fun m!475575 () Bool)

(assert (=> b!494444 m!475575))

(declare-fun m!475577 () Bool)

(assert (=> b!494444 m!475577))

(assert (=> b!494444 m!475575))

(declare-fun m!475579 () Bool)

(assert (=> b!494444 m!475579))

(assert (=> b!494444 m!475575))

(declare-fun m!475581 () Bool)

(assert (=> b!494444 m!475581))

(assert (=> b!494444 m!475575))

(declare-fun m!475583 () Bool)

(assert (=> b!494444 m!475583))

(assert (=> b!494444 m!475573))

(declare-fun m!475585 () Bool)

(assert (=> b!494444 m!475585))

(assert (=> b!494444 m!475573))

(declare-fun m!475587 () Bool)

(assert (=> b!494444 m!475587))

(assert (=> b!494445 m!475575))

(assert (=> b!494445 m!475575))

(declare-fun m!475589 () Bool)

(assert (=> b!494445 m!475589))

(declare-fun m!475591 () Bool)

(assert (=> b!494443 m!475591))

(declare-fun m!475593 () Bool)

(assert (=> b!494447 m!475593))

(declare-fun m!475595 () Bool)

(assert (=> b!494441 m!475595))

(push 1)

