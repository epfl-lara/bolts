; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131336 () Bool)

(assert start!131336)

(declare-fun b!1539611 () Bool)

(declare-fun res!1056547 () Bool)

(declare-fun e!856357 () Bool)

(assert (=> b!1539611 (=> (not res!1056547) (not e!856357))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102250 0))(
  ( (array!102251 (arr!49332 (Array (_ BitVec 32) (_ BitVec 64))) (size!49883 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102250)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13481 0))(
  ( (MissingZero!13481 (index!56318 (_ BitVec 32))) (Found!13481 (index!56319 (_ BitVec 32))) (Intermediate!13481 (undefined!14293 Bool) (index!56320 (_ BitVec 32)) (x!138053 (_ BitVec 32))) (Undefined!13481) (MissingVacant!13481 (index!56321 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102250 (_ BitVec 32)) SeekEntryResult!13481)

(assert (=> b!1539611 (= res!1056547 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49332 a!2792) j!64) a!2792 mask!2480) (Found!13481 j!64)))))

(declare-fun b!1539612 () Bool)

(assert (=> b!1539612 (= e!856357 false)))

(declare-fun lt!665044 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539612 (= lt!665044 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1056550 () Bool)

(assert (=> start!131336 (=> (not res!1056550) (not e!856357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131336 (= res!1056550 (validMask!0 mask!2480))))

(assert (=> start!131336 e!856357))

(assert (=> start!131336 true))

(declare-fun array_inv!38277 (array!102250) Bool)

(assert (=> start!131336 (array_inv!38277 a!2792)))

(declare-fun b!1539613 () Bool)

(declare-fun res!1056554 () Bool)

(assert (=> b!1539613 (=> (not res!1056554) (not e!856357))))

(declare-datatypes ((List!35986 0))(
  ( (Nil!35983) (Cons!35982 (h!37428 (_ BitVec 64)) (t!50687 List!35986)) )
))
(declare-fun arrayNoDuplicates!0 (array!102250 (_ BitVec 32) List!35986) Bool)

(assert (=> b!1539613 (= res!1056554 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35983))))

(declare-fun b!1539614 () Bool)

(declare-fun res!1056553 () Bool)

(assert (=> b!1539614 (=> (not res!1056553) (not e!856357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539614 (= res!1056553 (validKeyInArray!0 (select (arr!49332 a!2792) j!64)))))

(declare-fun b!1539615 () Bool)

(declare-fun res!1056548 () Bool)

(assert (=> b!1539615 (=> (not res!1056548) (not e!856357))))

(assert (=> b!1539615 (= res!1056548 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49883 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49883 a!2792)) (= (select (arr!49332 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539616 () Bool)

(declare-fun res!1056555 () Bool)

(assert (=> b!1539616 (=> (not res!1056555) (not e!856357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102250 (_ BitVec 32)) Bool)

(assert (=> b!1539616 (= res!1056555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539617 () Bool)

(declare-fun res!1056549 () Bool)

(assert (=> b!1539617 (=> (not res!1056549) (not e!856357))))

(assert (=> b!1539617 (= res!1056549 (not (= (select (arr!49332 a!2792) index!463) (select (arr!49332 a!2792) j!64))))))

(declare-fun b!1539618 () Bool)

(declare-fun res!1056552 () Bool)

(assert (=> b!1539618 (=> (not res!1056552) (not e!856357))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539618 (= res!1056552 (and (= (size!49883 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49883 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49883 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539619 () Bool)

(declare-fun res!1056551 () Bool)

(assert (=> b!1539619 (=> (not res!1056551) (not e!856357))))

(assert (=> b!1539619 (= res!1056551 (validKeyInArray!0 (select (arr!49332 a!2792) i!951)))))

(assert (= (and start!131336 res!1056550) b!1539618))

(assert (= (and b!1539618 res!1056552) b!1539619))

(assert (= (and b!1539619 res!1056551) b!1539614))

(assert (= (and b!1539614 res!1056553) b!1539616))

(assert (= (and b!1539616 res!1056555) b!1539613))

(assert (= (and b!1539613 res!1056554) b!1539615))

(assert (= (and b!1539615 res!1056548) b!1539611))

(assert (= (and b!1539611 res!1056547) b!1539617))

(assert (= (and b!1539617 res!1056549) b!1539612))

(declare-fun m!1421853 () Bool)

(assert (=> b!1539617 m!1421853))

(declare-fun m!1421855 () Bool)

(assert (=> b!1539617 m!1421855))

(declare-fun m!1421857 () Bool)

(assert (=> start!131336 m!1421857))

(declare-fun m!1421859 () Bool)

(assert (=> start!131336 m!1421859))

(declare-fun m!1421861 () Bool)

(assert (=> b!1539619 m!1421861))

(assert (=> b!1539619 m!1421861))

(declare-fun m!1421863 () Bool)

(assert (=> b!1539619 m!1421863))

(declare-fun m!1421865 () Bool)

(assert (=> b!1539612 m!1421865))

(assert (=> b!1539614 m!1421855))

(assert (=> b!1539614 m!1421855))

(declare-fun m!1421867 () Bool)

(assert (=> b!1539614 m!1421867))

(declare-fun m!1421869 () Bool)

(assert (=> b!1539615 m!1421869))

(declare-fun m!1421871 () Bool)

(assert (=> b!1539613 m!1421871))

(assert (=> b!1539611 m!1421855))

(assert (=> b!1539611 m!1421855))

(declare-fun m!1421873 () Bool)

(assert (=> b!1539611 m!1421873))

(declare-fun m!1421875 () Bool)

(assert (=> b!1539616 m!1421875))

(push 1)

(assert (not b!1539612))

(assert (not start!131336))

(assert (not b!1539614))

(assert (not b!1539613))

(assert (not b!1539619))

(assert (not b!1539616))

(assert (not b!1539611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

