; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122762 () Bool)

(assert start!122762)

(declare-fun b!1421884 () Bool)

(declare-fun res!957432 () Bool)

(declare-fun e!803918 () Bool)

(assert (=> b!1421884 (=> (not res!957432) (not e!803918))))

(declare-datatypes ((array!97045 0))(
  ( (array!97046 (arr!46836 (Array (_ BitVec 32) (_ BitVec 64))) (size!47387 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97045)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97045 (_ BitVec 32)) Bool)

(assert (=> b!1421884 (= res!957432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421885 () Bool)

(declare-fun res!957438 () Bool)

(assert (=> b!1421885 (=> (not res!957438) (not e!803918))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421885 (= res!957438 (and (= (size!47387 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47387 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47387 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421886 () Bool)

(declare-fun res!957426 () Bool)

(declare-fun e!803919 () Bool)

(assert (=> b!1421886 (=> (not res!957426) (not e!803919))))

(declare-datatypes ((SeekEntryResult!11143 0))(
  ( (MissingZero!11143 (index!46963 (_ BitVec 32))) (Found!11143 (index!46964 (_ BitVec 32))) (Intermediate!11143 (undefined!11955 Bool) (index!46965 (_ BitVec 32)) (x!128612 (_ BitVec 32))) (Undefined!11143) (MissingVacant!11143 (index!46966 (_ BitVec 32))) )
))
(declare-fun lt!626412 () SeekEntryResult!11143)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97045 (_ BitVec 32)) SeekEntryResult!11143)

(assert (=> b!1421886 (= res!957426 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46836 a!2831) j!81) a!2831 mask!2608) lt!626412))))

(declare-fun b!1421887 () Bool)

(declare-fun e!803920 () Bool)

(assert (=> b!1421887 (= e!803918 e!803920)))

(declare-fun res!957434 () Bool)

(assert (=> b!1421887 (=> (not res!957434) (not e!803920))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421887 (= res!957434 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46836 a!2831) j!81) mask!2608) (select (arr!46836 a!2831) j!81) a!2831 mask!2608) lt!626412))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421887 (= lt!626412 (Intermediate!11143 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421888 () Bool)

(declare-fun res!957428 () Bool)

(assert (=> b!1421888 (=> (not res!957428) (not e!803918))))

(declare-datatypes ((List!33526 0))(
  ( (Nil!33523) (Cons!33522 (h!34824 (_ BitVec 64)) (t!48227 List!33526)) )
))
(declare-fun arrayNoDuplicates!0 (array!97045 (_ BitVec 32) List!33526) Bool)

(assert (=> b!1421888 (= res!957428 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33523))))

(declare-fun b!1421889 () Bool)

(declare-fun res!957437 () Bool)

(assert (=> b!1421889 (=> (not res!957437) (not e!803919))))

(declare-fun lt!626410 () (_ BitVec 64))

(declare-fun lt!626413 () SeekEntryResult!11143)

(declare-fun lt!626411 () array!97045)

(assert (=> b!1421889 (= res!957437 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626410 lt!626411 mask!2608) lt!626413))))

(declare-fun b!1421890 () Bool)

(declare-fun res!957433 () Bool)

(assert (=> b!1421890 (=> (not res!957433) (not e!803918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421890 (= res!957433 (validKeyInArray!0 (select (arr!46836 a!2831) j!81)))))

(declare-fun b!1421891 () Bool)

(declare-fun res!957429 () Bool)

(assert (=> b!1421891 (=> (not res!957429) (not e!803918))))

(assert (=> b!1421891 (= res!957429 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47387 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47387 a!2831))))))

(declare-fun b!1421892 () Bool)

(declare-fun res!957431 () Bool)

(assert (=> b!1421892 (=> (not res!957431) (not e!803918))))

(assert (=> b!1421892 (= res!957431 (validKeyInArray!0 (select (arr!46836 a!2831) i!982)))))

(declare-fun e!803917 () Bool)

(declare-fun b!1421893 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97045 (_ BitVec 32)) SeekEntryResult!11143)

(assert (=> b!1421893 (= e!803917 (= (seekEntryOrOpen!0 (select (arr!46836 a!2831) j!81) a!2831 mask!2608) (Found!11143 j!81)))))

(declare-fun b!1421895 () Bool)

(declare-fun res!957427 () Bool)

(assert (=> b!1421895 (=> (not res!957427) (not e!803919))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421895 (= res!957427 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421896 () Bool)

(assert (=> b!1421896 (= e!803919 (not true))))

(assert (=> b!1421896 e!803917))

(declare-fun res!957436 () Bool)

(assert (=> b!1421896 (=> (not res!957436) (not e!803917))))

(assert (=> b!1421896 (= res!957436 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48070 0))(
  ( (Unit!48071) )
))
(declare-fun lt!626409 () Unit!48070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48070)

(assert (=> b!1421896 (= lt!626409 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421894 () Bool)

(assert (=> b!1421894 (= e!803920 e!803919)))

(declare-fun res!957430 () Bool)

(assert (=> b!1421894 (=> (not res!957430) (not e!803919))))

(assert (=> b!1421894 (= res!957430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626410 mask!2608) lt!626410 lt!626411 mask!2608) lt!626413))))

(assert (=> b!1421894 (= lt!626413 (Intermediate!11143 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421894 (= lt!626410 (select (store (arr!46836 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421894 (= lt!626411 (array!97046 (store (arr!46836 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47387 a!2831)))))

(declare-fun res!957435 () Bool)

(assert (=> start!122762 (=> (not res!957435) (not e!803918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122762 (= res!957435 (validMask!0 mask!2608))))

(assert (=> start!122762 e!803918))

(assert (=> start!122762 true))

(declare-fun array_inv!35781 (array!97045) Bool)

(assert (=> start!122762 (array_inv!35781 a!2831)))

(assert (= (and start!122762 res!957435) b!1421885))

(assert (= (and b!1421885 res!957438) b!1421892))

(assert (= (and b!1421892 res!957431) b!1421890))

(assert (= (and b!1421890 res!957433) b!1421884))

(assert (= (and b!1421884 res!957432) b!1421888))

(assert (= (and b!1421888 res!957428) b!1421891))

(assert (= (and b!1421891 res!957429) b!1421887))

(assert (= (and b!1421887 res!957434) b!1421894))

(assert (= (and b!1421894 res!957430) b!1421886))

(assert (= (and b!1421886 res!957426) b!1421889))

(assert (= (and b!1421889 res!957437) b!1421895))

(assert (= (and b!1421895 res!957427) b!1421896))

(assert (= (and b!1421896 res!957436) b!1421893))

(declare-fun m!1312497 () Bool)

(assert (=> b!1421896 m!1312497))

(declare-fun m!1312499 () Bool)

(assert (=> b!1421896 m!1312499))

(declare-fun m!1312501 () Bool)

(assert (=> b!1421893 m!1312501))

(assert (=> b!1421893 m!1312501))

(declare-fun m!1312503 () Bool)

(assert (=> b!1421893 m!1312503))

(declare-fun m!1312505 () Bool)

(assert (=> b!1421888 m!1312505))

(declare-fun m!1312507 () Bool)

(assert (=> b!1421894 m!1312507))

(assert (=> b!1421894 m!1312507))

(declare-fun m!1312509 () Bool)

(assert (=> b!1421894 m!1312509))

(declare-fun m!1312511 () Bool)

(assert (=> b!1421894 m!1312511))

(declare-fun m!1312513 () Bool)

(assert (=> b!1421894 m!1312513))

(assert (=> b!1421886 m!1312501))

(assert (=> b!1421886 m!1312501))

(declare-fun m!1312515 () Bool)

(assert (=> b!1421886 m!1312515))

(assert (=> b!1421890 m!1312501))

(assert (=> b!1421890 m!1312501))

(declare-fun m!1312517 () Bool)

(assert (=> b!1421890 m!1312517))

(declare-fun m!1312519 () Bool)

(assert (=> b!1421889 m!1312519))

(declare-fun m!1312521 () Bool)

(assert (=> b!1421884 m!1312521))

(assert (=> b!1421887 m!1312501))

(assert (=> b!1421887 m!1312501))

(declare-fun m!1312523 () Bool)

(assert (=> b!1421887 m!1312523))

(assert (=> b!1421887 m!1312523))

(assert (=> b!1421887 m!1312501))

(declare-fun m!1312525 () Bool)

(assert (=> b!1421887 m!1312525))

(declare-fun m!1312527 () Bool)

(assert (=> b!1421892 m!1312527))

(assert (=> b!1421892 m!1312527))

(declare-fun m!1312529 () Bool)

(assert (=> b!1421892 m!1312529))

(declare-fun m!1312531 () Bool)

(assert (=> start!122762 m!1312531))

(declare-fun m!1312533 () Bool)

(assert (=> start!122762 m!1312533))

(push 1)

