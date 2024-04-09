; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120536 () Bool)

(assert start!120536)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95863 0))(
  ( (array!95864 (arr!46278 (Array (_ BitVec 32) (_ BitVec 64))) (size!46829 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95863)

(declare-fun e!794446 () Bool)

(declare-fun b!1402992 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10617 0))(
  ( (MissingZero!10617 (index!44844 (_ BitVec 32))) (Found!10617 (index!44845 (_ BitVec 32))) (Intermediate!10617 (undefined!11429 Bool) (index!44846 (_ BitVec 32)) (x!126463 (_ BitVec 32))) (Undefined!10617) (MissingVacant!10617 (index!44847 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95863 (_ BitVec 32)) SeekEntryResult!10617)

(assert (=> b!1402992 (= e!794446 (= (seekEntryOrOpen!0 (select (arr!46278 a!2901) j!112) a!2901 mask!2840) (Found!10617 j!112)))))

(declare-fun b!1402993 () Bool)

(declare-fun res!941619 () Bool)

(declare-fun e!794445 () Bool)

(assert (=> b!1402993 (=> (not res!941619) (not e!794445))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402993 (= res!941619 (and (= (size!46829 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46829 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46829 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402994 () Bool)

(declare-fun e!794444 () Bool)

(assert (=> b!1402994 (= e!794444 true)))

(declare-fun lt!618205 () SeekEntryResult!10617)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95863 (_ BitVec 32)) SeekEntryResult!10617)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402994 (= lt!618205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46278 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46278 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95864 (store (arr!46278 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46829 a!2901)) mask!2840))))

(declare-fun b!1402995 () Bool)

(assert (=> b!1402995 (= e!794445 (not e!794444))))

(declare-fun res!941615 () Bool)

(assert (=> b!1402995 (=> res!941615 e!794444)))

(declare-fun lt!618204 () SeekEntryResult!10617)

(assert (=> b!1402995 (= res!941615 (or (not (is-Intermediate!10617 lt!618204)) (undefined!11429 lt!618204)))))

(assert (=> b!1402995 e!794446))

(declare-fun res!941617 () Bool)

(assert (=> b!1402995 (=> (not res!941617) (not e!794446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95863 (_ BitVec 32)) Bool)

(assert (=> b!1402995 (= res!941617 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47188 0))(
  ( (Unit!47189) )
))
(declare-fun lt!618203 () Unit!47188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47188)

(assert (=> b!1402995 (= lt!618203 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402995 (= lt!618204 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46278 a!2901) j!112) mask!2840) (select (arr!46278 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1402996 () Bool)

(declare-fun res!941616 () Bool)

(assert (=> b!1402996 (=> (not res!941616) (not e!794445))))

(assert (=> b!1402996 (= res!941616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402997 () Bool)

(declare-fun res!941614 () Bool)

(assert (=> b!1402997 (=> (not res!941614) (not e!794445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402997 (= res!941614 (validKeyInArray!0 (select (arr!46278 a!2901) i!1037)))))

(declare-fun b!1402998 () Bool)

(declare-fun res!941618 () Bool)

(assert (=> b!1402998 (=> (not res!941618) (not e!794445))))

(assert (=> b!1402998 (= res!941618 (validKeyInArray!0 (select (arr!46278 a!2901) j!112)))))

(declare-fun b!1402999 () Bool)

(declare-fun res!941613 () Bool)

(assert (=> b!1402999 (=> (not res!941613) (not e!794445))))

(declare-datatypes ((List!32977 0))(
  ( (Nil!32974) (Cons!32973 (h!34221 (_ BitVec 64)) (t!47678 List!32977)) )
))
(declare-fun arrayNoDuplicates!0 (array!95863 (_ BitVec 32) List!32977) Bool)

(assert (=> b!1402999 (= res!941613 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32974))))

(declare-fun res!941612 () Bool)

(assert (=> start!120536 (=> (not res!941612) (not e!794445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120536 (= res!941612 (validMask!0 mask!2840))))

(assert (=> start!120536 e!794445))

(assert (=> start!120536 true))

(declare-fun array_inv!35223 (array!95863) Bool)

(assert (=> start!120536 (array_inv!35223 a!2901)))

(assert (= (and start!120536 res!941612) b!1402993))

(assert (= (and b!1402993 res!941619) b!1402997))

(assert (= (and b!1402997 res!941614) b!1402998))

(assert (= (and b!1402998 res!941618) b!1402996))

(assert (= (and b!1402996 res!941616) b!1402999))

(assert (= (and b!1402999 res!941613) b!1402995))

(assert (= (and b!1402995 res!941617) b!1402992))

(assert (= (and b!1402995 (not res!941615)) b!1402994))

(declare-fun m!1291537 () Bool)

(assert (=> b!1402999 m!1291537))

(declare-fun m!1291539 () Bool)

(assert (=> b!1402994 m!1291539))

(declare-fun m!1291541 () Bool)

(assert (=> b!1402994 m!1291541))

(assert (=> b!1402994 m!1291541))

(declare-fun m!1291543 () Bool)

(assert (=> b!1402994 m!1291543))

(assert (=> b!1402994 m!1291543))

(assert (=> b!1402994 m!1291541))

(declare-fun m!1291545 () Bool)

(assert (=> b!1402994 m!1291545))

(declare-fun m!1291547 () Bool)

(assert (=> start!120536 m!1291547))

(declare-fun m!1291549 () Bool)

(assert (=> start!120536 m!1291549))

(declare-fun m!1291551 () Bool)

(assert (=> b!1402992 m!1291551))

(assert (=> b!1402992 m!1291551))

(declare-fun m!1291553 () Bool)

(assert (=> b!1402992 m!1291553))

(declare-fun m!1291555 () Bool)

(assert (=> b!1402996 m!1291555))

(assert (=> b!1402998 m!1291551))

(assert (=> b!1402998 m!1291551))

(declare-fun m!1291557 () Bool)

(assert (=> b!1402998 m!1291557))

(assert (=> b!1402995 m!1291551))

(declare-fun m!1291559 () Bool)

(assert (=> b!1402995 m!1291559))

(assert (=> b!1402995 m!1291551))

(declare-fun m!1291561 () Bool)

(assert (=> b!1402995 m!1291561))

(assert (=> b!1402995 m!1291559))

(assert (=> b!1402995 m!1291551))

(declare-fun m!1291563 () Bool)

(assert (=> b!1402995 m!1291563))

(declare-fun m!1291565 () Bool)

(assert (=> b!1402995 m!1291565))

(declare-fun m!1291567 () Bool)

(assert (=> b!1402997 m!1291567))

(assert (=> b!1402997 m!1291567))

(declare-fun m!1291569 () Bool)

(assert (=> b!1402997 m!1291569))

(push 1)

(assert (not b!1402999))

(assert (not b!1402992))

(assert (not b!1402994))

(assert (not b!1402996))

(assert (not start!120536))

(assert (not b!1402998))

(assert (not b!1402997))

(assert (not b!1402995))

(check-sat)

