; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123760 () Bool)

(assert start!123760)

(declare-fun b!1433985 () Bool)

(declare-fun res!967560 () Bool)

(declare-fun e!809399 () Bool)

(assert (=> b!1433985 (=> (not res!967560) (not e!809399))))

(declare-datatypes ((array!97536 0))(
  ( (array!97537 (arr!47068 (Array (_ BitVec 32) (_ BitVec 64))) (size!47619 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97536)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97536 (_ BitVec 32)) Bool)

(assert (=> b!1433985 (= res!967560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun e!809394 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1433986 () Bool)

(declare-datatypes ((SeekEntryResult!11369 0))(
  ( (MissingZero!11369 (index!47867 (_ BitVec 32))) (Found!11369 (index!47868 (_ BitVec 32))) (Intermediate!11369 (undefined!12181 Bool) (index!47869 (_ BitVec 32)) (x!129528 (_ BitVec 32))) (Undefined!11369) (MissingVacant!11369 (index!47870 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97536 (_ BitVec 32)) SeekEntryResult!11369)

(assert (=> b!1433986 (= e!809394 (= (seekEntryOrOpen!0 (select (arr!47068 a!2831) j!81) a!2831 mask!2608) (Found!11369 j!81)))))

(declare-fun b!1433987 () Bool)

(declare-fun e!809398 () Bool)

(declare-fun e!809395 () Bool)

(assert (=> b!1433987 (= e!809398 e!809395)))

(declare-fun res!967561 () Bool)

(assert (=> b!1433987 (=> (not res!967561) (not e!809395))))

(declare-fun lt!631247 () array!97536)

(declare-fun lt!631248 () SeekEntryResult!11369)

(declare-fun lt!631251 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97536 (_ BitVec 32)) SeekEntryResult!11369)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433987 (= res!967561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631251 mask!2608) lt!631251 lt!631247 mask!2608) lt!631248))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433987 (= lt!631248 (Intermediate!11369 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433987 (= lt!631251 (select (store (arr!47068 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433987 (= lt!631247 (array!97537 (store (arr!47068 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47619 a!2831)))))

(declare-fun b!1433988 () Bool)

(declare-fun res!967563 () Bool)

(assert (=> b!1433988 (=> (not res!967563) (not e!809395))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433988 (= res!967563 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433989 () Bool)

(declare-fun res!967566 () Bool)

(assert (=> b!1433989 (=> (not res!967566) (not e!809399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433989 (= res!967566 (validKeyInArray!0 (select (arr!47068 a!2831) j!81)))))

(declare-fun b!1433990 () Bool)

(declare-fun res!967557 () Bool)

(assert (=> b!1433990 (=> (not res!967557) (not e!809399))))

(declare-datatypes ((List!33758 0))(
  ( (Nil!33755) (Cons!33754 (h!35083 (_ BitVec 64)) (t!48459 List!33758)) )
))
(declare-fun arrayNoDuplicates!0 (array!97536 (_ BitVec 32) List!33758) Bool)

(assert (=> b!1433990 (= res!967557 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33755))))

(declare-fun b!1433991 () Bool)

(declare-fun e!809396 () Bool)

(assert (=> b!1433991 (= e!809396 true)))

(declare-fun lt!631250 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433991 (= lt!631250 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!967567 () Bool)

(assert (=> start!123760 (=> (not res!967567) (not e!809399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123760 (= res!967567 (validMask!0 mask!2608))))

(assert (=> start!123760 e!809399))

(assert (=> start!123760 true))

(declare-fun array_inv!36013 (array!97536) Bool)

(assert (=> start!123760 (array_inv!36013 a!2831)))

(declare-fun b!1433992 () Bool)

(declare-fun res!967556 () Bool)

(assert (=> b!1433992 (=> (not res!967556) (not e!809399))))

(assert (=> b!1433992 (= res!967556 (validKeyInArray!0 (select (arr!47068 a!2831) i!982)))))

(declare-fun b!1433993 () Bool)

(assert (=> b!1433993 (= e!809395 (not e!809396))))

(declare-fun res!967569 () Bool)

(assert (=> b!1433993 (=> res!967569 e!809396)))

(assert (=> b!1433993 (= res!967569 (or (= (select (arr!47068 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47068 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47068 a!2831) index!585) (select (arr!47068 a!2831) j!81)) (= (select (store (arr!47068 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1433993 e!809394))

(declare-fun res!967564 () Bool)

(assert (=> b!1433993 (=> (not res!967564) (not e!809394))))

(assert (=> b!1433993 (= res!967564 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48432 0))(
  ( (Unit!48433) )
))
(declare-fun lt!631249 () Unit!48432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48432)

(assert (=> b!1433993 (= lt!631249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433994 () Bool)

(declare-fun res!967558 () Bool)

(assert (=> b!1433994 (=> (not res!967558) (not e!809395))))

(assert (=> b!1433994 (= res!967558 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631251 lt!631247 mask!2608) lt!631248))))

(declare-fun b!1433995 () Bool)

(declare-fun res!967562 () Bool)

(assert (=> b!1433995 (=> (not res!967562) (not e!809399))))

(assert (=> b!1433995 (= res!967562 (and (= (size!47619 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47619 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47619 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433996 () Bool)

(assert (=> b!1433996 (= e!809399 e!809398)))

(declare-fun res!967565 () Bool)

(assert (=> b!1433996 (=> (not res!967565) (not e!809398))))

(declare-fun lt!631252 () SeekEntryResult!11369)

(assert (=> b!1433996 (= res!967565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47068 a!2831) j!81) mask!2608) (select (arr!47068 a!2831) j!81) a!2831 mask!2608) lt!631252))))

(assert (=> b!1433996 (= lt!631252 (Intermediate!11369 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433997 () Bool)

(declare-fun res!967568 () Bool)

(assert (=> b!1433997 (=> (not res!967568) (not e!809399))))

(assert (=> b!1433997 (= res!967568 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47619 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47619 a!2831))))))

(declare-fun b!1433998 () Bool)

(declare-fun res!967559 () Bool)

(assert (=> b!1433998 (=> (not res!967559) (not e!809395))))

(assert (=> b!1433998 (= res!967559 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47068 a!2831) j!81) a!2831 mask!2608) lt!631252))))

(assert (= (and start!123760 res!967567) b!1433995))

(assert (= (and b!1433995 res!967562) b!1433992))

(assert (= (and b!1433992 res!967556) b!1433989))

(assert (= (and b!1433989 res!967566) b!1433985))

(assert (= (and b!1433985 res!967560) b!1433990))

(assert (= (and b!1433990 res!967557) b!1433997))

(assert (= (and b!1433997 res!967568) b!1433996))

(assert (= (and b!1433996 res!967565) b!1433987))

(assert (= (and b!1433987 res!967561) b!1433998))

(assert (= (and b!1433998 res!967559) b!1433994))

(assert (= (and b!1433994 res!967558) b!1433988))

(assert (= (and b!1433988 res!967563) b!1433993))

(assert (= (and b!1433993 res!967564) b!1433986))

(assert (= (and b!1433993 (not res!967569)) b!1433991))

(declare-fun m!1323653 () Bool)

(assert (=> b!1433987 m!1323653))

(assert (=> b!1433987 m!1323653))

(declare-fun m!1323655 () Bool)

(assert (=> b!1433987 m!1323655))

(declare-fun m!1323657 () Bool)

(assert (=> b!1433987 m!1323657))

(declare-fun m!1323659 () Bool)

(assert (=> b!1433987 m!1323659))

(declare-fun m!1323661 () Bool)

(assert (=> b!1433985 m!1323661))

(declare-fun m!1323663 () Bool)

(assert (=> b!1433990 m!1323663))

(declare-fun m!1323665 () Bool)

(assert (=> b!1433998 m!1323665))

(assert (=> b!1433998 m!1323665))

(declare-fun m!1323667 () Bool)

(assert (=> b!1433998 m!1323667))

(declare-fun m!1323669 () Bool)

(assert (=> b!1433991 m!1323669))

(declare-fun m!1323671 () Bool)

(assert (=> start!123760 m!1323671))

(declare-fun m!1323673 () Bool)

(assert (=> start!123760 m!1323673))

(assert (=> b!1433986 m!1323665))

(assert (=> b!1433986 m!1323665))

(declare-fun m!1323675 () Bool)

(assert (=> b!1433986 m!1323675))

(assert (=> b!1433993 m!1323657))

(declare-fun m!1323677 () Bool)

(assert (=> b!1433993 m!1323677))

(declare-fun m!1323679 () Bool)

(assert (=> b!1433993 m!1323679))

(declare-fun m!1323681 () Bool)

(assert (=> b!1433993 m!1323681))

(assert (=> b!1433993 m!1323665))

(declare-fun m!1323683 () Bool)

(assert (=> b!1433993 m!1323683))

(assert (=> b!1433989 m!1323665))

(assert (=> b!1433989 m!1323665))

(declare-fun m!1323685 () Bool)

(assert (=> b!1433989 m!1323685))

(declare-fun m!1323687 () Bool)

(assert (=> b!1433994 m!1323687))

(assert (=> b!1433996 m!1323665))

(assert (=> b!1433996 m!1323665))

(declare-fun m!1323689 () Bool)

(assert (=> b!1433996 m!1323689))

(assert (=> b!1433996 m!1323689))

(assert (=> b!1433996 m!1323665))

(declare-fun m!1323691 () Bool)

(assert (=> b!1433996 m!1323691))

(declare-fun m!1323693 () Bool)

(assert (=> b!1433992 m!1323693))

(assert (=> b!1433992 m!1323693))

(declare-fun m!1323695 () Bool)

(assert (=> b!1433992 m!1323695))

(push 1)

