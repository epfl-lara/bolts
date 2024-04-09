; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119176 () Bool)

(assert start!119176)

(declare-fun b!1389743 () Bool)

(declare-fun res!930014 () Bool)

(declare-fun e!787154 () Bool)

(assert (=> b!1389743 (=> (not res!930014) (not e!787154))))

(declare-datatypes ((array!95031 0))(
  ( (array!95032 (arr!45877 (Array (_ BitVec 32) (_ BitVec 64))) (size!46428 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95031)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389743 (= res!930014 (validKeyInArray!0 (select (arr!45877 a!2901) j!112)))))

(declare-fun b!1389744 () Bool)

(declare-fun res!930018 () Bool)

(assert (=> b!1389744 (=> (not res!930018) (not e!787154))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389744 (= res!930018 (validKeyInArray!0 (select (arr!45877 a!2901) i!1037)))))

(declare-fun b!1389745 () Bool)

(declare-fun res!930013 () Bool)

(assert (=> b!1389745 (=> (not res!930013) (not e!787154))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1389745 (= res!930013 (and (= (size!46428 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46428 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46428 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!930016 () Bool)

(assert (=> start!119176 (=> (not res!930016) (not e!787154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119176 (= res!930016 (validMask!0 mask!2840))))

(assert (=> start!119176 e!787154))

(assert (=> start!119176 true))

(declare-fun array_inv!34822 (array!95031) Bool)

(assert (=> start!119176 (array_inv!34822 a!2901)))

(declare-fun b!1389746 () Bool)

(assert (=> b!1389746 (= e!787154 (not (bvsge mask!2840 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95031 (_ BitVec 32)) Bool)

(assert (=> b!1389746 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46386 0))(
  ( (Unit!46387) )
))
(declare-fun lt!610581 () Unit!46386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46386)

(assert (=> b!1389746 (= lt!610581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10216 0))(
  ( (MissingZero!10216 (index!43234 (_ BitVec 32))) (Found!10216 (index!43235 (_ BitVec 32))) (Intermediate!10216 (undefined!11028 Bool) (index!43236 (_ BitVec 32)) (x!124929 (_ BitVec 32))) (Undefined!10216) (MissingVacant!10216 (index!43237 (_ BitVec 32))) )
))
(declare-fun lt!610582 () SeekEntryResult!10216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95031 (_ BitVec 32)) SeekEntryResult!10216)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389746 (= lt!610582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45877 a!2901) j!112) mask!2840) (select (arr!45877 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389747 () Bool)

(declare-fun res!930015 () Bool)

(assert (=> b!1389747 (=> (not res!930015) (not e!787154))))

(declare-datatypes ((List!32576 0))(
  ( (Nil!32573) (Cons!32572 (h!33790 (_ BitVec 64)) (t!47277 List!32576)) )
))
(declare-fun arrayNoDuplicates!0 (array!95031 (_ BitVec 32) List!32576) Bool)

(assert (=> b!1389747 (= res!930015 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32573))))

(declare-fun b!1389748 () Bool)

(declare-fun res!930017 () Bool)

(assert (=> b!1389748 (=> (not res!930017) (not e!787154))))

(assert (=> b!1389748 (= res!930017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119176 res!930016) b!1389745))

(assert (= (and b!1389745 res!930013) b!1389744))

(assert (= (and b!1389744 res!930018) b!1389743))

(assert (= (and b!1389743 res!930014) b!1389748))

(assert (= (and b!1389748 res!930017) b!1389747))

(assert (= (and b!1389747 res!930015) b!1389746))

(declare-fun m!1275491 () Bool)

(assert (=> b!1389747 m!1275491))

(declare-fun m!1275493 () Bool)

(assert (=> b!1389744 m!1275493))

(assert (=> b!1389744 m!1275493))

(declare-fun m!1275495 () Bool)

(assert (=> b!1389744 m!1275495))

(declare-fun m!1275497 () Bool)

(assert (=> b!1389748 m!1275497))

(declare-fun m!1275499 () Bool)

(assert (=> start!119176 m!1275499))

(declare-fun m!1275501 () Bool)

(assert (=> start!119176 m!1275501))

(declare-fun m!1275503 () Bool)

(assert (=> b!1389746 m!1275503))

(declare-fun m!1275505 () Bool)

(assert (=> b!1389746 m!1275505))

(assert (=> b!1389746 m!1275503))

(declare-fun m!1275507 () Bool)

(assert (=> b!1389746 m!1275507))

(assert (=> b!1389746 m!1275505))

(assert (=> b!1389746 m!1275503))

(declare-fun m!1275509 () Bool)

(assert (=> b!1389746 m!1275509))

(declare-fun m!1275511 () Bool)

(assert (=> b!1389746 m!1275511))

(assert (=> b!1389743 m!1275503))

(assert (=> b!1389743 m!1275503))

(declare-fun m!1275513 () Bool)

(assert (=> b!1389743 m!1275513))

(push 1)

(assert (not b!1389744))

(assert (not b!1389748))

(assert (not b!1389747))

