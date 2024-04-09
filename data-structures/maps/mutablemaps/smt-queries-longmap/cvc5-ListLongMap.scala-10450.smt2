; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122902 () Bool)

(assert start!122902)

(declare-fun res!960510 () Bool)

(declare-fun e!805240 () Bool)

(assert (=> start!122902 (=> (not res!960510) (not e!805240))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122902 (= res!960510 (validMask!0 mask!2608))))

(assert (=> start!122902 e!805240))

(assert (=> start!122902 true))

(declare-datatypes ((array!97185 0))(
  ( (array!97186 (arr!46906 (Array (_ BitVec 32) (_ BitVec 64))) (size!47457 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97185)

(declare-fun array_inv!35851 (array!97185) Bool)

(assert (=> start!122902 (array_inv!35851 a!2831)))

(declare-fun b!1424962 () Bool)

(declare-fun res!960509 () Bool)

(assert (=> b!1424962 (=> (not res!960509) (not e!805240))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424962 (= res!960509 (validKeyInArray!0 (select (arr!46906 a!2831) i!982)))))

(declare-fun b!1424963 () Bool)

(declare-fun res!960504 () Bool)

(assert (=> b!1424963 (=> (not res!960504) (not e!805240))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1424963 (= res!960504 (validKeyInArray!0 (select (arr!46906 a!2831) j!81)))))

(declare-fun b!1424964 () Bool)

(assert (=> b!1424964 (= e!805240 false)))

(declare-datatypes ((SeekEntryResult!11207 0))(
  ( (MissingZero!11207 (index!47219 (_ BitVec 32))) (Found!11207 (index!47220 (_ BitVec 32))) (Intermediate!11207 (undefined!12019 Bool) (index!47221 (_ BitVec 32)) (x!128868 (_ BitVec 32))) (Undefined!11207) (MissingVacant!11207 (index!47222 (_ BitVec 32))) )
))
(declare-fun lt!627703 () SeekEntryResult!11207)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97185 (_ BitVec 32)) SeekEntryResult!11207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424964 (= lt!627703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46906 a!2831) j!81) mask!2608) (select (arr!46906 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1424965 () Bool)

(declare-fun res!960505 () Bool)

(assert (=> b!1424965 (=> (not res!960505) (not e!805240))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424965 (= res!960505 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47457 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47457 a!2831))))))

(declare-fun b!1424966 () Bool)

(declare-fun res!960507 () Bool)

(assert (=> b!1424966 (=> (not res!960507) (not e!805240))))

(assert (=> b!1424966 (= res!960507 (and (= (size!47457 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47457 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47457 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424967 () Bool)

(declare-fun res!960508 () Bool)

(assert (=> b!1424967 (=> (not res!960508) (not e!805240))))

(declare-datatypes ((List!33596 0))(
  ( (Nil!33593) (Cons!33592 (h!34894 (_ BitVec 64)) (t!48297 List!33596)) )
))
(declare-fun arrayNoDuplicates!0 (array!97185 (_ BitVec 32) List!33596) Bool)

(assert (=> b!1424967 (= res!960508 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33593))))

(declare-fun b!1424968 () Bool)

(declare-fun res!960506 () Bool)

(assert (=> b!1424968 (=> (not res!960506) (not e!805240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97185 (_ BitVec 32)) Bool)

(assert (=> b!1424968 (= res!960506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122902 res!960510) b!1424966))

(assert (= (and b!1424966 res!960507) b!1424962))

(assert (= (and b!1424962 res!960509) b!1424963))

(assert (= (and b!1424963 res!960504) b!1424968))

(assert (= (and b!1424968 res!960506) b!1424967))

(assert (= (and b!1424967 res!960508) b!1424965))

(assert (= (and b!1424965 res!960505) b!1424964))

(declare-fun m!1315577 () Bool)

(assert (=> b!1424967 m!1315577))

(declare-fun m!1315579 () Bool)

(assert (=> b!1424968 m!1315579))

(declare-fun m!1315581 () Bool)

(assert (=> start!122902 m!1315581))

(declare-fun m!1315583 () Bool)

(assert (=> start!122902 m!1315583))

(declare-fun m!1315585 () Bool)

(assert (=> b!1424962 m!1315585))

(assert (=> b!1424962 m!1315585))

(declare-fun m!1315587 () Bool)

(assert (=> b!1424962 m!1315587))

(declare-fun m!1315589 () Bool)

(assert (=> b!1424963 m!1315589))

(assert (=> b!1424963 m!1315589))

(declare-fun m!1315591 () Bool)

(assert (=> b!1424963 m!1315591))

(assert (=> b!1424964 m!1315589))

(assert (=> b!1424964 m!1315589))

(declare-fun m!1315593 () Bool)

(assert (=> b!1424964 m!1315593))

(assert (=> b!1424964 m!1315593))

(assert (=> b!1424964 m!1315589))

(declare-fun m!1315595 () Bool)

(assert (=> b!1424964 m!1315595))

(push 1)

(assert (not b!1424963))

(assert (not b!1424964))

(assert (not b!1424962))

(assert (not b!1424968))

(assert (not start!122902))

(assert (not b!1424967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

