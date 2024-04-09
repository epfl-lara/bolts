; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122642 () Bool)

(assert start!122642)

(declare-fun res!955494 () Bool)

(declare-fun e!803264 () Bool)

(assert (=> start!122642 (=> (not res!955494) (not e!803264))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122642 (= res!955494 (validMask!0 mask!2608))))

(assert (=> start!122642 e!803264))

(assert (=> start!122642 true))

(declare-datatypes ((array!96925 0))(
  ( (array!96926 (arr!46776 (Array (_ BitVec 32) (_ BitVec 64))) (size!47327 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96925)

(declare-fun array_inv!35721 (array!96925) Bool)

(assert (=> start!122642 (array_inv!35721 a!2831)))

(declare-fun b!1419945 () Bool)

(declare-fun res!955488 () Bool)

(assert (=> b!1419945 (=> (not res!955488) (not e!803264))))

(declare-datatypes ((List!33466 0))(
  ( (Nil!33463) (Cons!33462 (h!34764 (_ BitVec 64)) (t!48167 List!33466)) )
))
(declare-fun arrayNoDuplicates!0 (array!96925 (_ BitVec 32) List!33466) Bool)

(assert (=> b!1419945 (= res!955488 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33463))))

(declare-fun b!1419946 () Bool)

(declare-fun res!955492 () Bool)

(assert (=> b!1419946 (=> (not res!955492) (not e!803264))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419946 (= res!955492 (and (= (size!47327 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47327 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47327 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419947 () Bool)

(declare-fun res!955489 () Bool)

(assert (=> b!1419947 (=> (not res!955489) (not e!803264))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11083 0))(
  ( (MissingZero!11083 (index!46723 (_ BitVec 32))) (Found!11083 (index!46724 (_ BitVec 32))) (Intermediate!11083 (undefined!11895 Bool) (index!46725 (_ BitVec 32)) (x!128392 (_ BitVec 32))) (Undefined!11083) (MissingVacant!11083 (index!46726 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96925 (_ BitVec 32)) SeekEntryResult!11083)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419947 (= res!955489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46776 a!2831) j!81) mask!2608) (select (arr!46776 a!2831) j!81) a!2831 mask!2608) (Intermediate!11083 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419948 () Bool)

(declare-fun res!955491 () Bool)

(assert (=> b!1419948 (=> (not res!955491) (not e!803264))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419948 (= res!955491 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47327 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47327 a!2831))))))

(declare-fun b!1419949 () Bool)

(assert (=> b!1419949 (= e!803264 false)))

(declare-fun lt!625810 () SeekEntryResult!11083)

(assert (=> b!1419949 (= lt!625810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46776 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46776 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96926 (store (arr!46776 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47327 a!2831)) mask!2608))))

(declare-fun b!1419950 () Bool)

(declare-fun res!955493 () Bool)

(assert (=> b!1419950 (=> (not res!955493) (not e!803264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419950 (= res!955493 (validKeyInArray!0 (select (arr!46776 a!2831) i!982)))))

(declare-fun b!1419951 () Bool)

(declare-fun res!955490 () Bool)

(assert (=> b!1419951 (=> (not res!955490) (not e!803264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96925 (_ BitVec 32)) Bool)

(assert (=> b!1419951 (= res!955490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419952 () Bool)

(declare-fun res!955487 () Bool)

(assert (=> b!1419952 (=> (not res!955487) (not e!803264))))

(assert (=> b!1419952 (= res!955487 (validKeyInArray!0 (select (arr!46776 a!2831) j!81)))))

(assert (= (and start!122642 res!955494) b!1419946))

(assert (= (and b!1419946 res!955492) b!1419950))

(assert (= (and b!1419950 res!955493) b!1419952))

(assert (= (and b!1419952 res!955487) b!1419951))

(assert (= (and b!1419951 res!955490) b!1419945))

(assert (= (and b!1419945 res!955488) b!1419948))

(assert (= (and b!1419948 res!955491) b!1419947))

(assert (= (and b!1419947 res!955489) b!1419949))

(declare-fun m!1310485 () Bool)

(assert (=> b!1419947 m!1310485))

(assert (=> b!1419947 m!1310485))

(declare-fun m!1310487 () Bool)

(assert (=> b!1419947 m!1310487))

(assert (=> b!1419947 m!1310487))

(assert (=> b!1419947 m!1310485))

(declare-fun m!1310489 () Bool)

(assert (=> b!1419947 m!1310489))

(declare-fun m!1310491 () Bool)

(assert (=> start!122642 m!1310491))

(declare-fun m!1310493 () Bool)

(assert (=> start!122642 m!1310493))

(declare-fun m!1310495 () Bool)

(assert (=> b!1419951 m!1310495))

(declare-fun m!1310497 () Bool)

(assert (=> b!1419949 m!1310497))

(declare-fun m!1310499 () Bool)

(assert (=> b!1419949 m!1310499))

(assert (=> b!1419949 m!1310499))

(declare-fun m!1310501 () Bool)

(assert (=> b!1419949 m!1310501))

(assert (=> b!1419949 m!1310501))

(assert (=> b!1419949 m!1310499))

(declare-fun m!1310503 () Bool)

(assert (=> b!1419949 m!1310503))

(assert (=> b!1419952 m!1310485))

(assert (=> b!1419952 m!1310485))

(declare-fun m!1310505 () Bool)

(assert (=> b!1419952 m!1310505))

(declare-fun m!1310507 () Bool)

(assert (=> b!1419950 m!1310507))

(assert (=> b!1419950 m!1310507))

(declare-fun m!1310509 () Bool)

(assert (=> b!1419950 m!1310509))

(declare-fun m!1310511 () Bool)

(assert (=> b!1419945 m!1310511))

(push 1)

(assert (not start!122642))

(assert (not b!1419947))

(assert (not b!1419945))

(assert (not b!1419950))

(assert (not b!1419952))

(assert (not b!1419951))

(assert (not b!1419949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

