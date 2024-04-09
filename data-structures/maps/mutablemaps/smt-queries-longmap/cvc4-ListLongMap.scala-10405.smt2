; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122636 () Bool)

(assert start!122636)

(declare-fun b!1419872 () Bool)

(declare-fun res!955418 () Bool)

(declare-fun e!803246 () Bool)

(assert (=> b!1419872 (=> (not res!955418) (not e!803246))))

(declare-datatypes ((array!96919 0))(
  ( (array!96920 (arr!46773 (Array (_ BitVec 32) (_ BitVec 64))) (size!47324 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96919)

(declare-datatypes ((List!33463 0))(
  ( (Nil!33460) (Cons!33459 (h!34761 (_ BitVec 64)) (t!48164 List!33463)) )
))
(declare-fun arrayNoDuplicates!0 (array!96919 (_ BitVec 32) List!33463) Bool)

(assert (=> b!1419872 (= res!955418 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33460))))

(declare-fun b!1419873 () Bool)

(declare-fun res!955422 () Bool)

(assert (=> b!1419873 (=> (not res!955422) (not e!803246))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11080 0))(
  ( (MissingZero!11080 (index!46711 (_ BitVec 32))) (Found!11080 (index!46712 (_ BitVec 32))) (Intermediate!11080 (undefined!11892 Bool) (index!46713 (_ BitVec 32)) (x!128381 (_ BitVec 32))) (Undefined!11080) (MissingVacant!11080 (index!46714 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96919 (_ BitVec 32)) SeekEntryResult!11080)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419873 (= res!955422 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46773 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46773 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96920 (store (arr!46773 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47324 a!2831)) mask!2608) (Intermediate!11080 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1419874 () Bool)

(declare-fun res!955419 () Bool)

(assert (=> b!1419874 (=> (not res!955419) (not e!803246))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419874 (= res!955419 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47324 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47324 a!2831))))))

(declare-fun res!955417 () Bool)

(assert (=> start!122636 (=> (not res!955417) (not e!803246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122636 (= res!955417 (validMask!0 mask!2608))))

(assert (=> start!122636 e!803246))

(assert (=> start!122636 true))

(declare-fun array_inv!35718 (array!96919) Bool)

(assert (=> start!122636 (array_inv!35718 a!2831)))

(declare-fun b!1419875 () Bool)

(declare-fun res!955415 () Bool)

(assert (=> b!1419875 (=> (not res!955415) (not e!803246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419875 (= res!955415 (validKeyInArray!0 (select (arr!46773 a!2831) i!982)))))

(declare-fun b!1419876 () Bool)

(declare-fun res!955420 () Bool)

(assert (=> b!1419876 (=> (not res!955420) (not e!803246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96919 (_ BitVec 32)) Bool)

(assert (=> b!1419876 (= res!955420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419877 () Bool)

(assert (=> b!1419877 (= e!803246 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1419878 () Bool)

(declare-fun res!955421 () Bool)

(assert (=> b!1419878 (=> (not res!955421) (not e!803246))))

(assert (=> b!1419878 (= res!955421 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46773 a!2831) j!81) mask!2608) (select (arr!46773 a!2831) j!81) a!2831 mask!2608) (Intermediate!11080 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419879 () Bool)

(declare-fun res!955416 () Bool)

(assert (=> b!1419879 (=> (not res!955416) (not e!803246))))

(assert (=> b!1419879 (= res!955416 (validKeyInArray!0 (select (arr!46773 a!2831) j!81)))))

(declare-fun b!1419880 () Bool)

(declare-fun res!955414 () Bool)

(assert (=> b!1419880 (=> (not res!955414) (not e!803246))))

(assert (=> b!1419880 (= res!955414 (and (= (size!47324 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47324 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47324 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122636 res!955417) b!1419880))

(assert (= (and b!1419880 res!955414) b!1419875))

(assert (= (and b!1419875 res!955415) b!1419879))

(assert (= (and b!1419879 res!955416) b!1419876))

(assert (= (and b!1419876 res!955420) b!1419872))

(assert (= (and b!1419872 res!955418) b!1419874))

(assert (= (and b!1419874 res!955419) b!1419878))

(assert (= (and b!1419878 res!955421) b!1419873))

(assert (= (and b!1419873 res!955422) b!1419877))

(declare-fun m!1310401 () Bool)

(assert (=> b!1419875 m!1310401))

(assert (=> b!1419875 m!1310401))

(declare-fun m!1310403 () Bool)

(assert (=> b!1419875 m!1310403))

(declare-fun m!1310405 () Bool)

(assert (=> b!1419879 m!1310405))

(assert (=> b!1419879 m!1310405))

(declare-fun m!1310407 () Bool)

(assert (=> b!1419879 m!1310407))

(declare-fun m!1310409 () Bool)

(assert (=> start!122636 m!1310409))

(declare-fun m!1310411 () Bool)

(assert (=> start!122636 m!1310411))

(assert (=> b!1419878 m!1310405))

(assert (=> b!1419878 m!1310405))

(declare-fun m!1310413 () Bool)

(assert (=> b!1419878 m!1310413))

(assert (=> b!1419878 m!1310413))

(assert (=> b!1419878 m!1310405))

(declare-fun m!1310415 () Bool)

(assert (=> b!1419878 m!1310415))

(declare-fun m!1310417 () Bool)

(assert (=> b!1419872 m!1310417))

(declare-fun m!1310419 () Bool)

(assert (=> b!1419873 m!1310419))

(declare-fun m!1310421 () Bool)

(assert (=> b!1419873 m!1310421))

(assert (=> b!1419873 m!1310421))

(declare-fun m!1310423 () Bool)

(assert (=> b!1419873 m!1310423))

(assert (=> b!1419873 m!1310423))

(assert (=> b!1419873 m!1310421))

(declare-fun m!1310425 () Bool)

(assert (=> b!1419873 m!1310425))

(declare-fun m!1310427 () Bool)

(assert (=> b!1419876 m!1310427))

(push 1)

(assert (not b!1419876))

(assert (not b!1419872))

(assert (not b!1419878))

(assert (not b!1419875))

(assert (not b!1419879))

(assert (not b!1419873))

(assert (not start!122636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

