; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122760 () Bool)

(assert start!122760)

(declare-fun b!1421845 () Bool)

(declare-fun e!803906 () Bool)

(declare-fun e!803903 () Bool)

(assert (=> b!1421845 (= e!803906 e!803903)))

(declare-fun res!957395 () Bool)

(assert (=> b!1421845 (=> (not res!957395) (not e!803903))))

(declare-datatypes ((SeekEntryResult!11142 0))(
  ( (MissingZero!11142 (index!46959 (_ BitVec 32))) (Found!11142 (index!46960 (_ BitVec 32))) (Intermediate!11142 (undefined!11954 Bool) (index!46961 (_ BitVec 32)) (x!128611 (_ BitVec 32))) (Undefined!11142) (MissingVacant!11142 (index!46962 (_ BitVec 32))) )
))
(declare-fun lt!626395 () SeekEntryResult!11142)

(declare-datatypes ((array!97043 0))(
  ( (array!97044 (arr!46835 (Array (_ BitVec 32) (_ BitVec 64))) (size!47386 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97043)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97043 (_ BitVec 32)) SeekEntryResult!11142)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421845 (= res!957395 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46835 a!2831) j!81) mask!2608) (select (arr!46835 a!2831) j!81) a!2831 mask!2608) lt!626395))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421845 (= lt!626395 (Intermediate!11142 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421846 () Bool)

(declare-fun res!957392 () Bool)

(declare-fun e!803902 () Bool)

(assert (=> b!1421846 (=> (not res!957392) (not e!803902))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421846 (= res!957392 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46835 a!2831) j!81) a!2831 mask!2608) lt!626395))))

(declare-fun b!1421847 () Bool)

(assert (=> b!1421847 (= e!803902 (not true))))

(declare-fun e!803904 () Bool)

(assert (=> b!1421847 e!803904))

(declare-fun res!957397 () Bool)

(assert (=> b!1421847 (=> (not res!957397) (not e!803904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97043 (_ BitVec 32)) Bool)

(assert (=> b!1421847 (= res!957397 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48068 0))(
  ( (Unit!48069) )
))
(declare-fun lt!626394 () Unit!48068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48068)

(assert (=> b!1421847 (= lt!626394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421848 () Bool)

(declare-fun res!957387 () Bool)

(assert (=> b!1421848 (=> (not res!957387) (not e!803906))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421848 (= res!957387 (and (= (size!47386 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47386 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47386 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421849 () Bool)

(declare-fun res!957390 () Bool)

(assert (=> b!1421849 (=> (not res!957390) (not e!803906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421849 (= res!957390 (validKeyInArray!0 (select (arr!46835 a!2831) j!81)))))

(declare-fun b!1421850 () Bool)

(declare-fun res!957389 () Bool)

(assert (=> b!1421850 (=> (not res!957389) (not e!803902))))

(declare-fun lt!626397 () array!97043)

(declare-fun lt!626398 () SeekEntryResult!11142)

(declare-fun lt!626396 () (_ BitVec 64))

(assert (=> b!1421850 (= res!957389 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626396 lt!626397 mask!2608) lt!626398))))

(declare-fun b!1421851 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97043 (_ BitVec 32)) SeekEntryResult!11142)

(assert (=> b!1421851 (= e!803904 (= (seekEntryOrOpen!0 (select (arr!46835 a!2831) j!81) a!2831 mask!2608) (Found!11142 j!81)))))

(declare-fun b!1421852 () Bool)

(assert (=> b!1421852 (= e!803903 e!803902)))

(declare-fun res!957396 () Bool)

(assert (=> b!1421852 (=> (not res!957396) (not e!803902))))

(assert (=> b!1421852 (= res!957396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626396 mask!2608) lt!626396 lt!626397 mask!2608) lt!626398))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421852 (= lt!626398 (Intermediate!11142 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421852 (= lt!626396 (select (store (arr!46835 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421852 (= lt!626397 (array!97044 (store (arr!46835 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47386 a!2831)))))

(declare-fun b!1421853 () Bool)

(declare-fun res!957393 () Bool)

(assert (=> b!1421853 (=> (not res!957393) (not e!803906))))

(assert (=> b!1421853 (= res!957393 (validKeyInArray!0 (select (arr!46835 a!2831) i!982)))))

(declare-fun b!1421854 () Bool)

(declare-fun res!957398 () Bool)

(assert (=> b!1421854 (=> (not res!957398) (not e!803902))))

(assert (=> b!1421854 (= res!957398 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!957394 () Bool)

(assert (=> start!122760 (=> (not res!957394) (not e!803906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122760 (= res!957394 (validMask!0 mask!2608))))

(assert (=> start!122760 e!803906))

(assert (=> start!122760 true))

(declare-fun array_inv!35780 (array!97043) Bool)

(assert (=> start!122760 (array_inv!35780 a!2831)))

(declare-fun b!1421855 () Bool)

(declare-fun res!957399 () Bool)

(assert (=> b!1421855 (=> (not res!957399) (not e!803906))))

(declare-datatypes ((List!33525 0))(
  ( (Nil!33522) (Cons!33521 (h!34823 (_ BitVec 64)) (t!48226 List!33525)) )
))
(declare-fun arrayNoDuplicates!0 (array!97043 (_ BitVec 32) List!33525) Bool)

(assert (=> b!1421855 (= res!957399 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33522))))

(declare-fun b!1421856 () Bool)

(declare-fun res!957388 () Bool)

(assert (=> b!1421856 (=> (not res!957388) (not e!803906))))

(assert (=> b!1421856 (= res!957388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421857 () Bool)

(declare-fun res!957391 () Bool)

(assert (=> b!1421857 (=> (not res!957391) (not e!803906))))

(assert (=> b!1421857 (= res!957391 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47386 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47386 a!2831))))))

(assert (= (and start!122760 res!957394) b!1421848))

(assert (= (and b!1421848 res!957387) b!1421853))

(assert (= (and b!1421853 res!957393) b!1421849))

(assert (= (and b!1421849 res!957390) b!1421856))

(assert (= (and b!1421856 res!957388) b!1421855))

(assert (= (and b!1421855 res!957399) b!1421857))

(assert (= (and b!1421857 res!957391) b!1421845))

(assert (= (and b!1421845 res!957395) b!1421852))

(assert (= (and b!1421852 res!957396) b!1421846))

(assert (= (and b!1421846 res!957392) b!1421850))

(assert (= (and b!1421850 res!957389) b!1421854))

(assert (= (and b!1421854 res!957398) b!1421847))

(assert (= (and b!1421847 res!957397) b!1421851))

(declare-fun m!1312459 () Bool)

(assert (=> b!1421852 m!1312459))

(assert (=> b!1421852 m!1312459))

(declare-fun m!1312461 () Bool)

(assert (=> b!1421852 m!1312461))

(declare-fun m!1312463 () Bool)

(assert (=> b!1421852 m!1312463))

(declare-fun m!1312465 () Bool)

(assert (=> b!1421852 m!1312465))

(declare-fun m!1312467 () Bool)

(assert (=> b!1421855 m!1312467))

(declare-fun m!1312469 () Bool)

(assert (=> b!1421845 m!1312469))

(assert (=> b!1421845 m!1312469))

(declare-fun m!1312471 () Bool)

(assert (=> b!1421845 m!1312471))

(assert (=> b!1421845 m!1312471))

(assert (=> b!1421845 m!1312469))

(declare-fun m!1312473 () Bool)

(assert (=> b!1421845 m!1312473))

(assert (=> b!1421849 m!1312469))

(assert (=> b!1421849 m!1312469))

(declare-fun m!1312475 () Bool)

(assert (=> b!1421849 m!1312475))

(declare-fun m!1312477 () Bool)

(assert (=> b!1421856 m!1312477))

(assert (=> b!1421846 m!1312469))

(assert (=> b!1421846 m!1312469))

(declare-fun m!1312479 () Bool)

(assert (=> b!1421846 m!1312479))

(declare-fun m!1312481 () Bool)

(assert (=> start!122760 m!1312481))

(declare-fun m!1312483 () Bool)

(assert (=> start!122760 m!1312483))

(assert (=> b!1421851 m!1312469))

(assert (=> b!1421851 m!1312469))

(declare-fun m!1312485 () Bool)

(assert (=> b!1421851 m!1312485))

(declare-fun m!1312487 () Bool)

(assert (=> b!1421853 m!1312487))

(assert (=> b!1421853 m!1312487))

(declare-fun m!1312489 () Bool)

(assert (=> b!1421853 m!1312489))

(declare-fun m!1312491 () Bool)

(assert (=> b!1421850 m!1312491))

(declare-fun m!1312493 () Bool)

(assert (=> b!1421847 m!1312493))

(declare-fun m!1312495 () Bool)

(assert (=> b!1421847 m!1312495))

(check-sat (not b!1421855) (not b!1421847) (not b!1421856) (not b!1421846) (not b!1421852) (not b!1421845) (not b!1421853) (not b!1421849) (not b!1421850) (not start!122760) (not b!1421851))
(check-sat)
