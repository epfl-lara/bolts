; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46252 () Bool)

(assert start!46252)

(declare-fun b!511925 () Bool)

(declare-fun res!312741 () Bool)

(declare-fun e!299031 () Bool)

(assert (=> b!511925 (=> (not res!312741) (not e!299031))))

(declare-datatypes ((array!32866 0))(
  ( (array!32867 (arr!15807 (Array (_ BitVec 32) (_ BitVec 64))) (size!16171 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32866)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511925 (= res!312741 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511926 () Bool)

(declare-fun res!312745 () Bool)

(assert (=> b!511926 (=> (not res!312745) (not e!299031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511926 (= res!312745 (validKeyInArray!0 k!2280))))

(declare-fun res!312740 () Bool)

(assert (=> start!46252 (=> (not res!312740) (not e!299031))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46252 (= res!312740 (validMask!0 mask!3524))))

(assert (=> start!46252 e!299031))

(assert (=> start!46252 true))

(declare-fun array_inv!11581 (array!32866) Bool)

(assert (=> start!46252 (array_inv!11581 a!3235)))

(declare-fun b!511927 () Bool)

(declare-fun res!312739 () Bool)

(declare-fun e!299030 () Bool)

(assert (=> b!511927 (=> res!312739 e!299030)))

(declare-datatypes ((SeekEntryResult!4281 0))(
  ( (MissingZero!4281 (index!19312 (_ BitVec 32))) (Found!4281 (index!19313 (_ BitVec 32))) (Intermediate!4281 (undefined!5093 Bool) (index!19314 (_ BitVec 32)) (x!48291 (_ BitVec 32))) (Undefined!4281) (MissingVacant!4281 (index!19315 (_ BitVec 32))) )
))
(declare-fun lt!234354 () SeekEntryResult!4281)

(assert (=> b!511927 (= res!312739 (or (not (is-Intermediate!4281 lt!234354)) (not (undefined!5093 lt!234354))))))

(declare-fun b!511928 () Bool)

(declare-fun e!299029 () Bool)

(assert (=> b!511928 (= e!299029 (not e!299030))))

(declare-fun res!312742 () Bool)

(assert (=> b!511928 (=> res!312742 e!299030)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!234355 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32866 (_ BitVec 32)) SeekEntryResult!4281)

(assert (=> b!511928 (= res!312742 (= lt!234354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234355 (select (store (arr!15807 a!3235) i!1204 k!2280) j!176) (array!32867 (store (arr!15807 a!3235) i!1204 k!2280) (size!16171 a!3235)) mask!3524)))))

(declare-fun lt!234356 () (_ BitVec 32))

(assert (=> b!511928 (= lt!234354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234356 (select (arr!15807 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511928 (= lt!234355 (toIndex!0 (select (store (arr!15807 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511928 (= lt!234356 (toIndex!0 (select (arr!15807 a!3235) j!176) mask!3524))))

(declare-fun lt!234353 () SeekEntryResult!4281)

(assert (=> b!511928 (= lt!234353 (Found!4281 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32866 (_ BitVec 32)) SeekEntryResult!4281)

(assert (=> b!511928 (= lt!234353 (seekEntryOrOpen!0 (select (arr!15807 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32866 (_ BitVec 32)) Bool)

(assert (=> b!511928 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15812 0))(
  ( (Unit!15813) )
))
(declare-fun lt!234351 () Unit!15812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15812)

(assert (=> b!511928 (= lt!234351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511929 () Bool)

(declare-fun res!312737 () Bool)

(assert (=> b!511929 (=> (not res!312737) (not e!299029))))

(declare-datatypes ((List!10018 0))(
  ( (Nil!10015) (Cons!10014 (h!10894 (_ BitVec 64)) (t!16254 List!10018)) )
))
(declare-fun arrayNoDuplicates!0 (array!32866 (_ BitVec 32) List!10018) Bool)

(assert (=> b!511929 (= res!312737 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10015))))

(declare-fun b!511930 () Bool)

(declare-fun res!312738 () Bool)

(assert (=> b!511930 (=> (not res!312738) (not e!299029))))

(assert (=> b!511930 (= res!312738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511931 () Bool)

(assert (=> b!511931 (= e!299031 e!299029)))

(declare-fun res!312744 () Bool)

(assert (=> b!511931 (=> (not res!312744) (not e!299029))))

(declare-fun lt!234352 () SeekEntryResult!4281)

(assert (=> b!511931 (= res!312744 (or (= lt!234352 (MissingZero!4281 i!1204)) (= lt!234352 (MissingVacant!4281 i!1204))))))

(assert (=> b!511931 (= lt!234352 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511932 () Bool)

(assert (=> b!511932 (= e!299030 true)))

(assert (=> b!511932 (= lt!234353 Undefined!4281)))

(declare-fun b!511933 () Bool)

(declare-fun res!312746 () Bool)

(assert (=> b!511933 (=> (not res!312746) (not e!299031))))

(assert (=> b!511933 (= res!312746 (validKeyInArray!0 (select (arr!15807 a!3235) j!176)))))

(declare-fun b!511934 () Bool)

(declare-fun res!312743 () Bool)

(assert (=> b!511934 (=> (not res!312743) (not e!299031))))

(assert (=> b!511934 (= res!312743 (and (= (size!16171 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16171 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16171 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46252 res!312740) b!511934))

(assert (= (and b!511934 res!312743) b!511933))

(assert (= (and b!511933 res!312746) b!511926))

(assert (= (and b!511926 res!312745) b!511925))

(assert (= (and b!511925 res!312741) b!511931))

(assert (= (and b!511931 res!312744) b!511930))

(assert (= (and b!511930 res!312738) b!511929))

(assert (= (and b!511929 res!312737) b!511928))

(assert (= (and b!511928 (not res!312742)) b!511927))

(assert (= (and b!511927 (not res!312739)) b!511932))

(declare-fun m!493555 () Bool)

(assert (=> b!511931 m!493555))

(declare-fun m!493557 () Bool)

(assert (=> b!511933 m!493557))

(assert (=> b!511933 m!493557))

(declare-fun m!493559 () Bool)

(assert (=> b!511933 m!493559))

(declare-fun m!493561 () Bool)

(assert (=> b!511926 m!493561))

(declare-fun m!493563 () Bool)

(assert (=> b!511930 m!493563))

(declare-fun m!493565 () Bool)

(assert (=> b!511929 m!493565))

(declare-fun m!493567 () Bool)

(assert (=> start!46252 m!493567))

(declare-fun m!493569 () Bool)

(assert (=> start!46252 m!493569))

(declare-fun m!493571 () Bool)

(assert (=> b!511928 m!493571))

(declare-fun m!493573 () Bool)

(assert (=> b!511928 m!493573))

(assert (=> b!511928 m!493557))

(declare-fun m!493575 () Bool)

(assert (=> b!511928 m!493575))

(assert (=> b!511928 m!493557))

(declare-fun m!493577 () Bool)

(assert (=> b!511928 m!493577))

(assert (=> b!511928 m!493557))

(declare-fun m!493579 () Bool)

(assert (=> b!511928 m!493579))

(declare-fun m!493581 () Bool)

(assert (=> b!511928 m!493581))

(assert (=> b!511928 m!493557))

(declare-fun m!493583 () Bool)

(assert (=> b!511928 m!493583))

(assert (=> b!511928 m!493581))

(declare-fun m!493585 () Bool)

(assert (=> b!511928 m!493585))

(assert (=> b!511928 m!493581))

(declare-fun m!493587 () Bool)

(assert (=> b!511928 m!493587))

(declare-fun m!493589 () Bool)

(assert (=> b!511925 m!493589))

(push 1)

