; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123904 () Bool)

(assert start!123904)

(declare-fun b!1435219 () Bool)

(declare-fun res!968335 () Bool)

(declare-fun e!810058 () Bool)

(assert (=> b!1435219 (=> (not res!968335) (not e!810058))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97566 0))(
  ( (array!97567 (arr!47080 (Array (_ BitVec 32) (_ BitVec 64))) (size!47631 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97566)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435219 (= res!968335 (and (= (size!47631 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47631 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47631 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435220 () Bool)

(declare-fun res!968336 () Bool)

(assert (=> b!1435220 (=> (not res!968336) (not e!810058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435220 (= res!968336 (validKeyInArray!0 (select (arr!47080 a!2831) j!81)))))

(declare-fun b!1435221 () Bool)

(declare-fun res!968346 () Bool)

(assert (=> b!1435221 (=> (not res!968346) (not e!810058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97566 (_ BitVec 32)) Bool)

(assert (=> b!1435221 (= res!968346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435222 () Bool)

(declare-fun e!810053 () Bool)

(declare-fun e!810057 () Bool)

(assert (=> b!1435222 (= e!810053 (not e!810057))))

(declare-fun res!968338 () Bool)

(assert (=> b!1435222 (=> res!968338 e!810057)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1435222 (= res!968338 (or (= (select (arr!47080 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47080 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47080 a!2831) index!585) (select (arr!47080 a!2831) j!81)) (= (select (store (arr!47080 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!810054 () Bool)

(assert (=> b!1435222 e!810054))

(declare-fun res!968349 () Bool)

(assert (=> b!1435222 (=> (not res!968349) (not e!810054))))

(assert (=> b!1435222 (= res!968349 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48456 0))(
  ( (Unit!48457) )
))
(declare-fun lt!631767 () Unit!48456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48456)

(assert (=> b!1435222 (= lt!631767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435223 () Bool)

(declare-fun e!810056 () Bool)

(assert (=> b!1435223 (= e!810057 e!810056)))

(declare-fun res!968348 () Bool)

(assert (=> b!1435223 (=> res!968348 e!810056)))

(declare-fun lt!631766 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1435223 (= res!968348 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631766 #b00000000000000000000000000000000) (bvsge lt!631766 (size!47631 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435223 (= lt!631766 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435224 () Bool)

(declare-fun e!810055 () Bool)

(assert (=> b!1435224 (= e!810058 e!810055)))

(declare-fun res!968342 () Bool)

(assert (=> b!1435224 (=> (not res!968342) (not e!810055))))

(declare-datatypes ((SeekEntryResult!11381 0))(
  ( (MissingZero!11381 (index!47915 (_ BitVec 32))) (Found!11381 (index!47916 (_ BitVec 32))) (Intermediate!11381 (undefined!12193 Bool) (index!47917 (_ BitVec 32)) (x!129590 (_ BitVec 32))) (Undefined!11381) (MissingVacant!11381 (index!47918 (_ BitVec 32))) )
))
(declare-fun lt!631768 () SeekEntryResult!11381)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97566 (_ BitVec 32)) SeekEntryResult!11381)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435224 (= res!968342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47080 a!2831) j!81) mask!2608) (select (arr!47080 a!2831) j!81) a!2831 mask!2608) lt!631768))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1435224 (= lt!631768 (Intermediate!11381 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435225 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97566 (_ BitVec 32)) SeekEntryResult!11381)

(assert (=> b!1435225 (= e!810054 (= (seekEntryOrOpen!0 (select (arr!47080 a!2831) j!81) a!2831 mask!2608) (Found!11381 j!81)))))

(declare-fun b!1435226 () Bool)

(declare-fun res!968341 () Bool)

(assert (=> b!1435226 (=> (not res!968341) (not e!810053))))

(assert (=> b!1435226 (= res!968341 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47080 a!2831) j!81) a!2831 mask!2608) lt!631768))))

(declare-fun b!1435227 () Bool)

(declare-fun res!968345 () Bool)

(assert (=> b!1435227 (=> (not res!968345) (not e!810058))))

(declare-datatypes ((List!33770 0))(
  ( (Nil!33767) (Cons!33766 (h!35101 (_ BitVec 64)) (t!48471 List!33770)) )
))
(declare-fun arrayNoDuplicates!0 (array!97566 (_ BitVec 32) List!33770) Bool)

(assert (=> b!1435227 (= res!968345 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33767))))

(declare-fun b!1435228 () Bool)

(declare-fun res!968337 () Bool)

(assert (=> b!1435228 (=> (not res!968337) (not e!810053))))

(declare-fun lt!631769 () array!97566)

(declare-fun lt!631771 () SeekEntryResult!11381)

(declare-fun lt!631765 () (_ BitVec 64))

(assert (=> b!1435228 (= res!968337 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631765 lt!631769 mask!2608) lt!631771))))

(declare-fun b!1435229 () Bool)

(assert (=> b!1435229 (= e!810055 e!810053)))

(declare-fun res!968347 () Bool)

(assert (=> b!1435229 (=> (not res!968347) (not e!810053))))

(assert (=> b!1435229 (= res!968347 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631765 mask!2608) lt!631765 lt!631769 mask!2608) lt!631771))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1435229 (= lt!631771 (Intermediate!11381 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435229 (= lt!631765 (select (store (arr!47080 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435229 (= lt!631769 (array!97567 (store (arr!47080 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47631 a!2831)))))

(declare-fun b!1435230 () Bool)

(assert (=> b!1435230 (= e!810056 true)))

(declare-fun lt!631770 () SeekEntryResult!11381)

(assert (=> b!1435230 (= lt!631770 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631766 lt!631765 lt!631769 mask!2608))))

(declare-fun b!1435231 () Bool)

(declare-fun res!968343 () Bool)

(assert (=> b!1435231 (=> (not res!968343) (not e!810053))))

(assert (=> b!1435231 (= res!968343 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435232 () Bool)

(declare-fun res!968339 () Bool)

(assert (=> b!1435232 (=> (not res!968339) (not e!810058))))

(assert (=> b!1435232 (= res!968339 (validKeyInArray!0 (select (arr!47080 a!2831) i!982)))))

(declare-fun b!1435233 () Bool)

(declare-fun res!968344 () Bool)

(assert (=> b!1435233 (=> (not res!968344) (not e!810058))))

(assert (=> b!1435233 (= res!968344 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47631 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47631 a!2831))))))

(declare-fun res!968340 () Bool)

(assert (=> start!123904 (=> (not res!968340) (not e!810058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123904 (= res!968340 (validMask!0 mask!2608))))

(assert (=> start!123904 e!810058))

(assert (=> start!123904 true))

(declare-fun array_inv!36025 (array!97566) Bool)

(assert (=> start!123904 (array_inv!36025 a!2831)))

(declare-fun b!1435234 () Bool)

(declare-fun res!968334 () Bool)

(assert (=> b!1435234 (=> res!968334 e!810056)))

(assert (=> b!1435234 (= res!968334 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631766 (select (arr!47080 a!2831) j!81) a!2831 mask!2608) lt!631768)))))

(assert (= (and start!123904 res!968340) b!1435219))

(assert (= (and b!1435219 res!968335) b!1435232))

(assert (= (and b!1435232 res!968339) b!1435220))

(assert (= (and b!1435220 res!968336) b!1435221))

(assert (= (and b!1435221 res!968346) b!1435227))

(assert (= (and b!1435227 res!968345) b!1435233))

(assert (= (and b!1435233 res!968344) b!1435224))

(assert (= (and b!1435224 res!968342) b!1435229))

(assert (= (and b!1435229 res!968347) b!1435226))

(assert (= (and b!1435226 res!968341) b!1435228))

(assert (= (and b!1435228 res!968337) b!1435231))

(assert (= (and b!1435231 res!968343) b!1435222))

(assert (= (and b!1435222 res!968349) b!1435225))

(assert (= (and b!1435222 (not res!968338)) b!1435223))

(assert (= (and b!1435223 (not res!968348)) b!1435234))

(assert (= (and b!1435234 (not res!968334)) b!1435230))

(declare-fun m!1324637 () Bool)

(assert (=> b!1435234 m!1324637))

(assert (=> b!1435234 m!1324637))

(declare-fun m!1324639 () Bool)

(assert (=> b!1435234 m!1324639))

(assert (=> b!1435226 m!1324637))

(assert (=> b!1435226 m!1324637))

(declare-fun m!1324641 () Bool)

(assert (=> b!1435226 m!1324641))

(declare-fun m!1324643 () Bool)

(assert (=> b!1435222 m!1324643))

(declare-fun m!1324645 () Bool)

(assert (=> b!1435222 m!1324645))

(declare-fun m!1324647 () Bool)

(assert (=> b!1435222 m!1324647))

(declare-fun m!1324649 () Bool)

(assert (=> b!1435222 m!1324649))

(assert (=> b!1435222 m!1324637))

(declare-fun m!1324651 () Bool)

(assert (=> b!1435222 m!1324651))

(assert (=> b!1435220 m!1324637))

(assert (=> b!1435220 m!1324637))

(declare-fun m!1324653 () Bool)

(assert (=> b!1435220 m!1324653))

(declare-fun m!1324655 () Bool)

(assert (=> b!1435230 m!1324655))

(declare-fun m!1324657 () Bool)

(assert (=> b!1435221 m!1324657))

(declare-fun m!1324659 () Bool)

(assert (=> b!1435229 m!1324659))

(assert (=> b!1435229 m!1324659))

(declare-fun m!1324661 () Bool)

(assert (=> b!1435229 m!1324661))

(assert (=> b!1435229 m!1324643))

(declare-fun m!1324663 () Bool)

(assert (=> b!1435229 m!1324663))

(declare-fun m!1324665 () Bool)

(assert (=> start!123904 m!1324665))

(declare-fun m!1324667 () Bool)

(assert (=> start!123904 m!1324667))

(declare-fun m!1324669 () Bool)

(assert (=> b!1435228 m!1324669))

(declare-fun m!1324671 () Bool)

(assert (=> b!1435232 m!1324671))

(assert (=> b!1435232 m!1324671))

(declare-fun m!1324673 () Bool)

(assert (=> b!1435232 m!1324673))

(declare-fun m!1324675 () Bool)

(assert (=> b!1435227 m!1324675))

(assert (=> b!1435225 m!1324637))

(assert (=> b!1435225 m!1324637))

(declare-fun m!1324677 () Bool)

(assert (=> b!1435225 m!1324677))

(assert (=> b!1435224 m!1324637))

(assert (=> b!1435224 m!1324637))

(declare-fun m!1324679 () Bool)

(assert (=> b!1435224 m!1324679))

(assert (=> b!1435224 m!1324679))

(assert (=> b!1435224 m!1324637))

(declare-fun m!1324681 () Bool)

(assert (=> b!1435224 m!1324681))

(declare-fun m!1324683 () Bool)

(assert (=> b!1435223 m!1324683))

(push 1)

