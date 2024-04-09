; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122906 () Bool)

(assert start!122906)

(declare-fun b!1425004 () Bool)

(declare-fun res!960550 () Bool)

(declare-fun e!805253 () Bool)

(assert (=> b!1425004 (=> (not res!960550) (not e!805253))))

(declare-datatypes ((array!97189 0))(
  ( (array!97190 (arr!46908 (Array (_ BitVec 32) (_ BitVec 64))) (size!47459 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97189)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425004 (= res!960550 (validKeyInArray!0 (select (arr!46908 a!2831) j!81)))))

(declare-fun b!1425005 () Bool)

(declare-fun res!960547 () Bool)

(assert (=> b!1425005 (=> (not res!960547) (not e!805253))))

(declare-datatypes ((List!33598 0))(
  ( (Nil!33595) (Cons!33594 (h!34896 (_ BitVec 64)) (t!48299 List!33598)) )
))
(declare-fun arrayNoDuplicates!0 (array!97189 (_ BitVec 32) List!33598) Bool)

(assert (=> b!1425005 (= res!960547 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33595))))

(declare-fun b!1425006 () Bool)

(assert (=> b!1425006 (= e!805253 false)))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11209 0))(
  ( (MissingZero!11209 (index!47227 (_ BitVec 32))) (Found!11209 (index!47228 (_ BitVec 32))) (Intermediate!11209 (undefined!12021 Bool) (index!47229 (_ BitVec 32)) (x!128870 (_ BitVec 32))) (Undefined!11209) (MissingVacant!11209 (index!47230 (_ BitVec 32))) )
))
(declare-fun lt!627709 () SeekEntryResult!11209)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97189 (_ BitVec 32)) SeekEntryResult!11209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425006 (= lt!627709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46908 a!2831) j!81) mask!2608) (select (arr!46908 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425007 () Bool)

(declare-fun res!960549 () Bool)

(assert (=> b!1425007 (=> (not res!960549) (not e!805253))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425007 (= res!960549 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47459 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47459 a!2831))))))

(declare-fun res!960548 () Bool)

(assert (=> start!122906 (=> (not res!960548) (not e!805253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122906 (= res!960548 (validMask!0 mask!2608))))

(assert (=> start!122906 e!805253))

(assert (=> start!122906 true))

(declare-fun array_inv!35853 (array!97189) Bool)

(assert (=> start!122906 (array_inv!35853 a!2831)))

(declare-fun b!1425008 () Bool)

(declare-fun res!960552 () Bool)

(assert (=> b!1425008 (=> (not res!960552) (not e!805253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97189 (_ BitVec 32)) Bool)

(assert (=> b!1425008 (= res!960552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425009 () Bool)

(declare-fun res!960551 () Bool)

(assert (=> b!1425009 (=> (not res!960551) (not e!805253))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425009 (= res!960551 (validKeyInArray!0 (select (arr!46908 a!2831) i!982)))))

(declare-fun b!1425010 () Bool)

(declare-fun res!960546 () Bool)

(assert (=> b!1425010 (=> (not res!960546) (not e!805253))))

(assert (=> b!1425010 (= res!960546 (and (= (size!47459 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47459 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47459 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122906 res!960548) b!1425010))

(assert (= (and b!1425010 res!960546) b!1425009))

(assert (= (and b!1425009 res!960551) b!1425004))

(assert (= (and b!1425004 res!960550) b!1425008))

(assert (= (and b!1425008 res!960552) b!1425005))

(assert (= (and b!1425005 res!960547) b!1425007))

(assert (= (and b!1425007 res!960549) b!1425006))

(declare-fun m!1315617 () Bool)

(assert (=> b!1425005 m!1315617))

(declare-fun m!1315619 () Bool)

(assert (=> b!1425009 m!1315619))

(assert (=> b!1425009 m!1315619))

(declare-fun m!1315621 () Bool)

(assert (=> b!1425009 m!1315621))

(declare-fun m!1315623 () Bool)

(assert (=> b!1425006 m!1315623))

(assert (=> b!1425006 m!1315623))

(declare-fun m!1315625 () Bool)

(assert (=> b!1425006 m!1315625))

(assert (=> b!1425006 m!1315625))

(assert (=> b!1425006 m!1315623))

(declare-fun m!1315627 () Bool)

(assert (=> b!1425006 m!1315627))

(declare-fun m!1315629 () Bool)

(assert (=> start!122906 m!1315629))

(declare-fun m!1315631 () Bool)

(assert (=> start!122906 m!1315631))

(assert (=> b!1425004 m!1315623))

(assert (=> b!1425004 m!1315623))

(declare-fun m!1315633 () Bool)

(assert (=> b!1425004 m!1315633))

(declare-fun m!1315635 () Bool)

(assert (=> b!1425008 m!1315635))

(push 1)

(assert (not start!122906))

(assert (not b!1425009))

(assert (not b!1425004))

(assert (not b!1425008))

(assert (not b!1425005))

(assert (not b!1425006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

