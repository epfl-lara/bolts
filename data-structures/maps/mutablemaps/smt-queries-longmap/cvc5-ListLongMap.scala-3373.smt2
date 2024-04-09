; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46420 () Bool)

(assert start!46420)

(declare-fun b!513229 () Bool)

(declare-fun res!313685 () Bool)

(declare-fun e!299712 () Bool)

(assert (=> b!513229 (=> (not res!313685) (not e!299712))))

(declare-datatypes ((array!32920 0))(
  ( (array!32921 (arr!15831 (Array (_ BitVec 32) (_ BitVec 64))) (size!16195 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32920)

(declare-datatypes ((List!10042 0))(
  ( (Nil!10039) (Cons!10038 (h!10924 (_ BitVec 64)) (t!16278 List!10042)) )
))
(declare-fun arrayNoDuplicates!0 (array!32920 (_ BitVec 32) List!10042) Bool)

(assert (=> b!513229 (= res!313685 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10039))))

(declare-fun b!513230 () Bool)

(declare-fun res!313679 () Bool)

(assert (=> b!513230 (=> (not res!313679) (not e!299712))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32920 (_ BitVec 32)) Bool)

(assert (=> b!513230 (= res!313679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513231 () Bool)

(declare-fun res!313676 () Bool)

(declare-fun e!299710 () Bool)

(assert (=> b!513231 (=> (not res!313676) (not e!299710))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513231 (= res!313676 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513232 () Bool)

(declare-fun e!299711 () Bool)

(assert (=> b!513232 (= e!299711 true)))

(declare-datatypes ((SeekEntryResult!4305 0))(
  ( (MissingZero!4305 (index!19408 (_ BitVec 32))) (Found!4305 (index!19409 (_ BitVec 32))) (Intermediate!4305 (undefined!5117 Bool) (index!19410 (_ BitVec 32)) (x!48391 (_ BitVec 32))) (Undefined!4305) (MissingVacant!4305 (index!19411 (_ BitVec 32))) )
))
(declare-fun lt!235024 () SeekEntryResult!4305)

(assert (=> b!513232 (bvslt (x!48391 lt!235024) #b01111111111111111111111111111110)))

(declare-fun b!513233 () Bool)

(assert (=> b!513233 (= e!299710 e!299712)))

(declare-fun res!313681 () Bool)

(assert (=> b!513233 (=> (not res!313681) (not e!299712))))

(declare-fun lt!235023 () SeekEntryResult!4305)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!513233 (= res!313681 (or (= lt!235023 (MissingZero!4305 i!1204)) (= lt!235023 (MissingVacant!4305 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32920 (_ BitVec 32)) SeekEntryResult!4305)

(assert (=> b!513233 (= lt!235023 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!513234 () Bool)

(declare-fun res!313680 () Bool)

(assert (=> b!513234 (=> (not res!313680) (not e!299710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513234 (= res!313680 (validKeyInArray!0 k!2280))))

(declare-fun res!313675 () Bool)

(assert (=> start!46420 (=> (not res!313675) (not e!299710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46420 (= res!313675 (validMask!0 mask!3524))))

(assert (=> start!46420 e!299710))

(assert (=> start!46420 true))

(declare-fun array_inv!11605 (array!32920) Bool)

(assert (=> start!46420 (array_inv!11605 a!3235)))

(declare-fun b!513235 () Bool)

(assert (=> b!513235 (= e!299712 (not e!299711))))

(declare-fun res!313684 () Bool)

(assert (=> b!513235 (=> res!313684 e!299711)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!235022 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32920 (_ BitVec 32)) SeekEntryResult!4305)

(assert (=> b!513235 (= res!313684 (= lt!235024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235022 (select (store (arr!15831 a!3235) i!1204 k!2280) j!176) (array!32921 (store (arr!15831 a!3235) i!1204 k!2280) (size!16195 a!3235)) mask!3524)))))

(declare-fun lt!235025 () (_ BitVec 32))

(assert (=> b!513235 (= lt!235024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235025 (select (arr!15831 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513235 (= lt!235022 (toIndex!0 (select (store (arr!15831 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513235 (= lt!235025 (toIndex!0 (select (arr!15831 a!3235) j!176) mask!3524))))

(declare-fun e!299713 () Bool)

(assert (=> b!513235 e!299713))

(declare-fun res!313678 () Bool)

(assert (=> b!513235 (=> (not res!313678) (not e!299713))))

(assert (=> b!513235 (= res!313678 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15860 0))(
  ( (Unit!15861) )
))
(declare-fun lt!235021 () Unit!15860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32920 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15860)

(assert (=> b!513235 (= lt!235021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513236 () Bool)

(declare-fun res!313677 () Bool)

(assert (=> b!513236 (=> (not res!313677) (not e!299710))))

(assert (=> b!513236 (= res!313677 (and (= (size!16195 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16195 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16195 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513237 () Bool)

(declare-fun res!313683 () Bool)

(assert (=> b!513237 (=> (not res!313683) (not e!299710))))

(assert (=> b!513237 (= res!313683 (validKeyInArray!0 (select (arr!15831 a!3235) j!176)))))

(declare-fun b!513238 () Bool)

(declare-fun res!313682 () Bool)

(assert (=> b!513238 (=> res!313682 e!299711)))

(assert (=> b!513238 (= res!313682 (or (undefined!5117 lt!235024) (not (is-Intermediate!4305 lt!235024))))))

(declare-fun b!513239 () Bool)

(assert (=> b!513239 (= e!299713 (= (seekEntryOrOpen!0 (select (arr!15831 a!3235) j!176) a!3235 mask!3524) (Found!4305 j!176)))))

(assert (= (and start!46420 res!313675) b!513236))

(assert (= (and b!513236 res!313677) b!513237))

(assert (= (and b!513237 res!313683) b!513234))

(assert (= (and b!513234 res!313680) b!513231))

(assert (= (and b!513231 res!313676) b!513233))

(assert (= (and b!513233 res!313681) b!513230))

(assert (= (and b!513230 res!313679) b!513229))

(assert (= (and b!513229 res!313685) b!513235))

(assert (= (and b!513235 res!313678) b!513239))

(assert (= (and b!513235 (not res!313684)) b!513238))

(assert (= (and b!513238 (not res!313682)) b!513232))

(declare-fun m!494827 () Bool)

(assert (=> start!46420 m!494827))

(declare-fun m!494829 () Bool)

(assert (=> start!46420 m!494829))

(declare-fun m!494831 () Bool)

(assert (=> b!513235 m!494831))

(declare-fun m!494833 () Bool)

(assert (=> b!513235 m!494833))

(declare-fun m!494835 () Bool)

(assert (=> b!513235 m!494835))

(declare-fun m!494837 () Bool)

(assert (=> b!513235 m!494837))

(assert (=> b!513235 m!494831))

(declare-fun m!494839 () Bool)

(assert (=> b!513235 m!494839))

(declare-fun m!494841 () Bool)

(assert (=> b!513235 m!494841))

(assert (=> b!513235 m!494839))

(declare-fun m!494843 () Bool)

(assert (=> b!513235 m!494843))

(assert (=> b!513235 m!494839))

(declare-fun m!494845 () Bool)

(assert (=> b!513235 m!494845))

(assert (=> b!513235 m!494831))

(declare-fun m!494847 () Bool)

(assert (=> b!513235 m!494847))

(declare-fun m!494849 () Bool)

(assert (=> b!513234 m!494849))

(declare-fun m!494851 () Bool)

(assert (=> b!513233 m!494851))

(declare-fun m!494853 () Bool)

(assert (=> b!513231 m!494853))

(declare-fun m!494855 () Bool)

(assert (=> b!513229 m!494855))

(assert (=> b!513239 m!494839))

(assert (=> b!513239 m!494839))

(declare-fun m!494857 () Bool)

(assert (=> b!513239 m!494857))

(assert (=> b!513237 m!494839))

(assert (=> b!513237 m!494839))

(declare-fun m!494859 () Bool)

(assert (=> b!513237 m!494859))

(declare-fun m!494861 () Bool)

(assert (=> b!513230 m!494861))

(push 1)

