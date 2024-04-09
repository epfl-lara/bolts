; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122802 () Bool)

(assert start!122802)

(declare-fun b!1422841 () Bool)

(declare-fun e!804341 () Bool)

(declare-fun e!804337 () Bool)

(assert (=> b!1422841 (= e!804341 e!804337)))

(declare-fun res!958387 () Bool)

(assert (=> b!1422841 (=> res!958387 e!804337)))

(declare-fun lt!626827 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97085 0))(
  ( (array!97086 (arr!46856 (Array (_ BitVec 32) (_ BitVec 64))) (size!47407 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97085)

(assert (=> b!1422841 (= res!958387 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626827 #b00000000000000000000000000000000) (bvsge lt!626827 (size!47407 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422841 (= lt!626827 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422842 () Bool)

(declare-fun res!958385 () Bool)

(declare-fun e!804339 () Bool)

(assert (=> b!1422842 (=> (not res!958385) (not e!804339))))

(declare-datatypes ((List!33546 0))(
  ( (Nil!33543) (Cons!33542 (h!34844 (_ BitVec 64)) (t!48247 List!33546)) )
))
(declare-fun arrayNoDuplicates!0 (array!97085 (_ BitVec 32) List!33546) Bool)

(assert (=> b!1422842 (= res!958385 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33543))))

(declare-fun b!1422843 () Bool)

(declare-fun res!958390 () Bool)

(declare-fun e!804340 () Bool)

(assert (=> b!1422843 (=> (not res!958390) (not e!804340))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422843 (= res!958390 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422844 () Bool)

(declare-fun res!958398 () Bool)

(assert (=> b!1422844 (=> (not res!958398) (not e!804340))))

(declare-datatypes ((SeekEntryResult!11163 0))(
  ( (MissingZero!11163 (index!47043 (_ BitVec 32))) (Found!11163 (index!47044 (_ BitVec 32))) (Intermediate!11163 (undefined!11975 Bool) (index!47045 (_ BitVec 32)) (x!128688 (_ BitVec 32))) (Undefined!11163) (MissingVacant!11163 (index!47046 (_ BitVec 32))) )
))
(declare-fun lt!626830 () SeekEntryResult!11163)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97085 (_ BitVec 32)) SeekEntryResult!11163)

(assert (=> b!1422844 (= res!958398 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46856 a!2831) j!81) a!2831 mask!2608) lt!626830))))

(declare-fun b!1422845 () Bool)

(declare-fun res!958395 () Bool)

(assert (=> b!1422845 (=> (not res!958395) (not e!804339))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422845 (= res!958395 (and (= (size!47407 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47407 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47407 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422846 () Bool)

(declare-fun res!958393 () Bool)

(assert (=> b!1422846 (=> (not res!958393) (not e!804339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422846 (= res!958393 (validKeyInArray!0 (select (arr!46856 a!2831) j!81)))))

(declare-fun b!1422847 () Bool)

(assert (=> b!1422847 (= e!804340 (not e!804341))))

(declare-fun res!958394 () Bool)

(assert (=> b!1422847 (=> res!958394 e!804341)))

(assert (=> b!1422847 (= res!958394 (or (= (select (arr!46856 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46856 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46856 a!2831) index!585) (select (arr!46856 a!2831) j!81)) (= (select (store (arr!46856 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804336 () Bool)

(assert (=> b!1422847 e!804336))

(declare-fun res!958386 () Bool)

(assert (=> b!1422847 (=> (not res!958386) (not e!804336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97085 (_ BitVec 32)) Bool)

(assert (=> b!1422847 (= res!958386 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48110 0))(
  ( (Unit!48111) )
))
(declare-fun lt!626831 () Unit!48110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48110)

(assert (=> b!1422847 (= lt!626831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422848 () Bool)

(declare-fun res!958388 () Bool)

(assert (=> b!1422848 (=> res!958388 e!804337)))

(assert (=> b!1422848 (= res!958388 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626827 (select (arr!46856 a!2831) j!81) a!2831 mask!2608) lt!626830)))))

(declare-fun b!1422849 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97085 (_ BitVec 32)) SeekEntryResult!11163)

(assert (=> b!1422849 (= e!804336 (= (seekEntryOrOpen!0 (select (arr!46856 a!2831) j!81) a!2831 mask!2608) (Found!11163 j!81)))))

(declare-fun b!1422850 () Bool)

(declare-fun e!804335 () Bool)

(assert (=> b!1422850 (= e!804335 e!804340)))

(declare-fun res!958384 () Bool)

(assert (=> b!1422850 (=> (not res!958384) (not e!804340))))

(declare-fun lt!626832 () SeekEntryResult!11163)

(declare-fun lt!626829 () (_ BitVec 64))

(declare-fun lt!626833 () array!97085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422850 (= res!958384 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626829 mask!2608) lt!626829 lt!626833 mask!2608) lt!626832))))

(assert (=> b!1422850 (= lt!626832 (Intermediate!11163 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422850 (= lt!626829 (select (store (arr!46856 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422850 (= lt!626833 (array!97086 (store (arr!46856 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47407 a!2831)))))

(declare-fun b!1422851 () Bool)

(declare-fun res!958391 () Bool)

(assert (=> b!1422851 (=> (not res!958391) (not e!804339))))

(assert (=> b!1422851 (= res!958391 (validKeyInArray!0 (select (arr!46856 a!2831) i!982)))))

(declare-fun b!1422852 () Bool)

(assert (=> b!1422852 (= e!804339 e!804335)))

(declare-fun res!958396 () Bool)

(assert (=> b!1422852 (=> (not res!958396) (not e!804335))))

(assert (=> b!1422852 (= res!958396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46856 a!2831) j!81) mask!2608) (select (arr!46856 a!2831) j!81) a!2831 mask!2608) lt!626830))))

(assert (=> b!1422852 (= lt!626830 (Intermediate!11163 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!958389 () Bool)

(assert (=> start!122802 (=> (not res!958389) (not e!804339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122802 (= res!958389 (validMask!0 mask!2608))))

(assert (=> start!122802 e!804339))

(assert (=> start!122802 true))

(declare-fun array_inv!35801 (array!97085) Bool)

(assert (=> start!122802 (array_inv!35801 a!2831)))

(declare-fun b!1422853 () Bool)

(declare-fun res!958392 () Bool)

(assert (=> b!1422853 (=> (not res!958392) (not e!804339))))

(assert (=> b!1422853 (= res!958392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422854 () Bool)

(declare-fun res!958397 () Bool)

(assert (=> b!1422854 (=> (not res!958397) (not e!804340))))

(assert (=> b!1422854 (= res!958397 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626829 lt!626833 mask!2608) lt!626832))))

(declare-fun b!1422855 () Bool)

(assert (=> b!1422855 (= e!804337 true)))

(declare-fun lt!626828 () SeekEntryResult!11163)

(assert (=> b!1422855 (= lt!626828 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626827 lt!626829 lt!626833 mask!2608))))

(declare-fun b!1422856 () Bool)

(declare-fun res!958383 () Bool)

(assert (=> b!1422856 (=> (not res!958383) (not e!804339))))

(assert (=> b!1422856 (= res!958383 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47407 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47407 a!2831))))))

(assert (= (and start!122802 res!958389) b!1422845))

(assert (= (and b!1422845 res!958395) b!1422851))

(assert (= (and b!1422851 res!958391) b!1422846))

(assert (= (and b!1422846 res!958393) b!1422853))

(assert (= (and b!1422853 res!958392) b!1422842))

(assert (= (and b!1422842 res!958385) b!1422856))

(assert (= (and b!1422856 res!958383) b!1422852))

(assert (= (and b!1422852 res!958396) b!1422850))

(assert (= (and b!1422850 res!958384) b!1422844))

(assert (= (and b!1422844 res!958398) b!1422854))

(assert (= (and b!1422854 res!958397) b!1422843))

(assert (= (and b!1422843 res!958390) b!1422847))

(assert (= (and b!1422847 res!958386) b!1422849))

(assert (= (and b!1422847 (not res!958394)) b!1422841))

(assert (= (and b!1422841 (not res!958387)) b!1422848))

(assert (= (and b!1422848 (not res!958388)) b!1422855))

(declare-fun m!1313447 () Bool)

(assert (=> b!1422844 m!1313447))

(assert (=> b!1422844 m!1313447))

(declare-fun m!1313449 () Bool)

(assert (=> b!1422844 m!1313449))

(assert (=> b!1422848 m!1313447))

(assert (=> b!1422848 m!1313447))

(declare-fun m!1313451 () Bool)

(assert (=> b!1422848 m!1313451))

(declare-fun m!1313453 () Bool)

(assert (=> b!1422853 m!1313453))

(declare-fun m!1313455 () Bool)

(assert (=> b!1422847 m!1313455))

(declare-fun m!1313457 () Bool)

(assert (=> b!1422847 m!1313457))

(declare-fun m!1313459 () Bool)

(assert (=> b!1422847 m!1313459))

(declare-fun m!1313461 () Bool)

(assert (=> b!1422847 m!1313461))

(assert (=> b!1422847 m!1313447))

(declare-fun m!1313463 () Bool)

(assert (=> b!1422847 m!1313463))

(declare-fun m!1313465 () Bool)

(assert (=> start!122802 m!1313465))

(declare-fun m!1313467 () Bool)

(assert (=> start!122802 m!1313467))

(assert (=> b!1422849 m!1313447))

(assert (=> b!1422849 m!1313447))

(declare-fun m!1313469 () Bool)

(assert (=> b!1422849 m!1313469))

(declare-fun m!1313471 () Bool)

(assert (=> b!1422850 m!1313471))

(assert (=> b!1422850 m!1313471))

(declare-fun m!1313473 () Bool)

(assert (=> b!1422850 m!1313473))

(assert (=> b!1422850 m!1313455))

(declare-fun m!1313475 () Bool)

(assert (=> b!1422850 m!1313475))

(declare-fun m!1313477 () Bool)

(assert (=> b!1422842 m!1313477))

(declare-fun m!1313479 () Bool)

(assert (=> b!1422855 m!1313479))

(declare-fun m!1313481 () Bool)

(assert (=> b!1422854 m!1313481))

(declare-fun m!1313483 () Bool)

(assert (=> b!1422851 m!1313483))

(assert (=> b!1422851 m!1313483))

(declare-fun m!1313485 () Bool)

(assert (=> b!1422851 m!1313485))

(assert (=> b!1422846 m!1313447))

(assert (=> b!1422846 m!1313447))

(declare-fun m!1313487 () Bool)

(assert (=> b!1422846 m!1313487))

(declare-fun m!1313489 () Bool)

(assert (=> b!1422841 m!1313489))

(assert (=> b!1422852 m!1313447))

(assert (=> b!1422852 m!1313447))

(declare-fun m!1313491 () Bool)

(assert (=> b!1422852 m!1313491))

(assert (=> b!1422852 m!1313491))

(assert (=> b!1422852 m!1313447))

(declare-fun m!1313493 () Bool)

(assert (=> b!1422852 m!1313493))

(check-sat (not b!1422851) (not b!1422847) (not b!1422844) (not b!1422853) (not b!1422852) (not b!1422842) (not b!1422850) (not b!1422849) (not b!1422846) (not b!1422855) (not b!1422854) (not b!1422848) (not start!122802) (not b!1422841))
(check-sat)
