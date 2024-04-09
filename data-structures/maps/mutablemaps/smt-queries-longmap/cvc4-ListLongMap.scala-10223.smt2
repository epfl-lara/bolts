; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120434 () Bool)

(assert start!120434)

(declare-fun b!1401423 () Bool)

(declare-fun res!940051 () Bool)

(declare-fun e!793565 () Bool)

(assert (=> b!1401423 (=> (not res!940051) (not e!793565))))

(declare-datatypes ((array!95761 0))(
  ( (array!95762 (arr!46227 (Array (_ BitVec 32) (_ BitVec 64))) (size!46778 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95761)

(declare-datatypes ((List!32926 0))(
  ( (Nil!32923) (Cons!32922 (h!34170 (_ BitVec 64)) (t!47627 List!32926)) )
))
(declare-fun arrayNoDuplicates!0 (array!95761 (_ BitVec 32) List!32926) Bool)

(assert (=> b!1401423 (= res!940051 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32923))))

(declare-fun b!1401425 () Bool)

(declare-fun e!793561 () Bool)

(assert (=> b!1401425 (= e!793561 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10566 0))(
  ( (MissingZero!10566 (index!44640 (_ BitVec 32))) (Found!10566 (index!44641 (_ BitVec 32))) (Intermediate!10566 (undefined!11378 Bool) (index!44642 (_ BitVec 32)) (x!126276 (_ BitVec 32))) (Undefined!10566) (MissingVacant!10566 (index!44643 (_ BitVec 32))) )
))
(declare-fun lt!616921 () SeekEntryResult!10566)

(declare-fun lt!616920 () (_ BitVec 64))

(declare-fun lt!616924 () (_ BitVec 32))

(declare-fun lt!616923 () array!95761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95761 (_ BitVec 32)) SeekEntryResult!10566)

(assert (=> b!1401425 (= lt!616921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616924 lt!616920 lt!616923 mask!2840))))

(declare-fun b!1401426 () Bool)

(declare-fun res!940049 () Bool)

(assert (=> b!1401426 (=> (not res!940049) (not e!793565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95761 (_ BitVec 32)) Bool)

(assert (=> b!1401426 (= res!940049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401427 () Bool)

(declare-fun e!793562 () Bool)

(assert (=> b!1401427 (= e!793565 (not e!793562))))

(declare-fun res!940047 () Bool)

(assert (=> b!1401427 (=> res!940047 e!793562)))

(declare-fun lt!616922 () SeekEntryResult!10566)

(assert (=> b!1401427 (= res!940047 (or (not (is-Intermediate!10566 lt!616922)) (undefined!11378 lt!616922)))))

(declare-fun e!793560 () Bool)

(assert (=> b!1401427 e!793560))

(declare-fun res!940043 () Bool)

(assert (=> b!1401427 (=> (not res!940043) (not e!793560))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401427 (= res!940043 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47086 0))(
  ( (Unit!47087) )
))
(declare-fun lt!616927 () Unit!47086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47086)

(assert (=> b!1401427 (= lt!616927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401427 (= lt!616922 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616924 (select (arr!46227 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401427 (= lt!616924 (toIndex!0 (select (arr!46227 a!2901) j!112) mask!2840))))

(declare-fun b!1401428 () Bool)

(declare-fun e!793564 () Bool)

(assert (=> b!1401428 (= e!793564 e!793561)))

(declare-fun res!940052 () Bool)

(assert (=> b!1401428 (=> res!940052 e!793561)))

(declare-fun lt!616926 () SeekEntryResult!10566)

(assert (=> b!1401428 (= res!940052 (or (bvslt (x!126276 lt!616922) #b00000000000000000000000000000000) (bvsgt (x!126276 lt!616922) #b01111111111111111111111111111110) (bvslt (x!126276 lt!616926) #b00000000000000000000000000000000) (bvsgt (x!126276 lt!616926) #b01111111111111111111111111111110) (bvslt lt!616924 #b00000000000000000000000000000000) (bvsge lt!616924 (size!46778 a!2901)) (bvslt (index!44642 lt!616922) #b00000000000000000000000000000000) (bvsge (index!44642 lt!616922) (size!46778 a!2901)) (bvslt (index!44642 lt!616926) #b00000000000000000000000000000000) (bvsge (index!44642 lt!616926) (size!46778 a!2901)) (not (= lt!616922 (Intermediate!10566 false (index!44642 lt!616922) (x!126276 lt!616922)))) (not (= lt!616926 (Intermediate!10566 false (index!44642 lt!616926) (x!126276 lt!616926))))))))

(declare-fun e!793563 () Bool)

(assert (=> b!1401428 e!793563))

(declare-fun res!940048 () Bool)

(assert (=> b!1401428 (=> (not res!940048) (not e!793563))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401428 (= res!940048 (and (not (undefined!11378 lt!616926)) (= (index!44642 lt!616926) i!1037) (bvslt (x!126276 lt!616926) (x!126276 lt!616922)) (= (select (store (arr!46227 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44642 lt!616926)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616925 () Unit!47086)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47086)

(assert (=> b!1401428 (= lt!616925 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616924 (x!126276 lt!616922) (index!44642 lt!616922) (x!126276 lt!616926) (index!44642 lt!616926) (undefined!11378 lt!616926) mask!2840))))

(declare-fun b!1401429 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95761 (_ BitVec 32)) SeekEntryResult!10566)

(assert (=> b!1401429 (= e!793560 (= (seekEntryOrOpen!0 (select (arr!46227 a!2901) j!112) a!2901 mask!2840) (Found!10566 j!112)))))

(declare-fun b!1401430 () Bool)

(assert (=> b!1401430 (= e!793562 e!793564)))

(declare-fun res!940044 () Bool)

(assert (=> b!1401430 (=> res!940044 e!793564)))

(assert (=> b!1401430 (= res!940044 (or (= lt!616922 lt!616926) (not (is-Intermediate!10566 lt!616926))))))

(assert (=> b!1401430 (= lt!616926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616920 mask!2840) lt!616920 lt!616923 mask!2840))))

(assert (=> b!1401430 (= lt!616920 (select (store (arr!46227 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401430 (= lt!616923 (array!95762 (store (arr!46227 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46778 a!2901)))))

(declare-fun b!1401431 () Bool)

(declare-fun res!940053 () Bool)

(assert (=> b!1401431 (=> (not res!940053) (not e!793565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401431 (= res!940053 (validKeyInArray!0 (select (arr!46227 a!2901) i!1037)))))

(declare-fun res!940050 () Bool)

(assert (=> start!120434 (=> (not res!940050) (not e!793565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120434 (= res!940050 (validMask!0 mask!2840))))

(assert (=> start!120434 e!793565))

(assert (=> start!120434 true))

(declare-fun array_inv!35172 (array!95761) Bool)

(assert (=> start!120434 (array_inv!35172 a!2901)))

(declare-fun b!1401424 () Bool)

(declare-fun res!940045 () Bool)

(assert (=> b!1401424 (=> (not res!940045) (not e!793565))))

(assert (=> b!1401424 (= res!940045 (validKeyInArray!0 (select (arr!46227 a!2901) j!112)))))

(declare-fun b!1401432 () Bool)

(declare-fun res!940046 () Bool)

(assert (=> b!1401432 (=> (not res!940046) (not e!793565))))

(assert (=> b!1401432 (= res!940046 (and (= (size!46778 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46778 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46778 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401433 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95761 (_ BitVec 32)) SeekEntryResult!10566)

(assert (=> b!1401433 (= e!793563 (= (seekEntryOrOpen!0 lt!616920 lt!616923 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126276 lt!616926) (index!44642 lt!616926) (index!44642 lt!616926) (select (arr!46227 a!2901) j!112) lt!616923 mask!2840)))))

(assert (= (and start!120434 res!940050) b!1401432))

(assert (= (and b!1401432 res!940046) b!1401431))

(assert (= (and b!1401431 res!940053) b!1401424))

(assert (= (and b!1401424 res!940045) b!1401426))

(assert (= (and b!1401426 res!940049) b!1401423))

(assert (= (and b!1401423 res!940051) b!1401427))

(assert (= (and b!1401427 res!940043) b!1401429))

(assert (= (and b!1401427 (not res!940047)) b!1401430))

(assert (= (and b!1401430 (not res!940044)) b!1401428))

(assert (= (and b!1401428 res!940048) b!1401433))

(assert (= (and b!1401428 (not res!940052)) b!1401425))

(declare-fun m!1289289 () Bool)

(assert (=> start!120434 m!1289289))

(declare-fun m!1289291 () Bool)

(assert (=> start!120434 m!1289291))

(declare-fun m!1289293 () Bool)

(assert (=> b!1401430 m!1289293))

(assert (=> b!1401430 m!1289293))

(declare-fun m!1289295 () Bool)

(assert (=> b!1401430 m!1289295))

(declare-fun m!1289297 () Bool)

(assert (=> b!1401430 m!1289297))

(declare-fun m!1289299 () Bool)

(assert (=> b!1401430 m!1289299))

(declare-fun m!1289301 () Bool)

(assert (=> b!1401431 m!1289301))

(assert (=> b!1401431 m!1289301))

(declare-fun m!1289303 () Bool)

(assert (=> b!1401431 m!1289303))

(declare-fun m!1289305 () Bool)

(assert (=> b!1401423 m!1289305))

(declare-fun m!1289307 () Bool)

(assert (=> b!1401425 m!1289307))

(assert (=> b!1401428 m!1289297))

(declare-fun m!1289309 () Bool)

(assert (=> b!1401428 m!1289309))

(declare-fun m!1289311 () Bool)

(assert (=> b!1401428 m!1289311))

(declare-fun m!1289313 () Bool)

(assert (=> b!1401433 m!1289313))

(declare-fun m!1289315 () Bool)

(assert (=> b!1401433 m!1289315))

(assert (=> b!1401433 m!1289315))

(declare-fun m!1289317 () Bool)

(assert (=> b!1401433 m!1289317))

(assert (=> b!1401429 m!1289315))

(assert (=> b!1401429 m!1289315))

(declare-fun m!1289319 () Bool)

(assert (=> b!1401429 m!1289319))

(declare-fun m!1289321 () Bool)

(assert (=> b!1401426 m!1289321))

(assert (=> b!1401427 m!1289315))

(declare-fun m!1289323 () Bool)

(assert (=> b!1401427 m!1289323))

(assert (=> b!1401427 m!1289315))

(declare-fun m!1289325 () Bool)

(assert (=> b!1401427 m!1289325))

(assert (=> b!1401427 m!1289315))

(declare-fun m!1289327 () Bool)

(assert (=> b!1401427 m!1289327))

(declare-fun m!1289329 () Bool)

(assert (=> b!1401427 m!1289329))

(assert (=> b!1401424 m!1289315))

(assert (=> b!1401424 m!1289315))

(declare-fun m!1289331 () Bool)

(assert (=> b!1401424 m!1289331))

(push 1)

