; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122978 () Bool)

(assert start!122978)

(declare-fun b!1425990 () Bool)

(declare-fun res!961540 () Bool)

(declare-fun e!805557 () Bool)

(assert (=> b!1425990 (=> (not res!961540) (not e!805557))))

(declare-datatypes ((array!97261 0))(
  ( (array!97262 (arr!46944 (Array (_ BitVec 32) (_ BitVec 64))) (size!47495 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97261)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425990 (= res!961540 (validKeyInArray!0 (select (arr!46944 a!2831) i!982)))))

(declare-fun b!1425991 () Bool)

(declare-fun res!961539 () Bool)

(assert (=> b!1425991 (=> (not res!961539) (not e!805557))))

(declare-datatypes ((List!33634 0))(
  ( (Nil!33631) (Cons!33630 (h!34932 (_ BitVec 64)) (t!48335 List!33634)) )
))
(declare-fun arrayNoDuplicates!0 (array!97261 (_ BitVec 32) List!33634) Bool)

(assert (=> b!1425991 (= res!961539 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33631))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun e!805556 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun b!1425992 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425992 (= e!805556 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsle #b00000000000000000000000000000000 (size!47495 a!2831)) (bvsgt j!81 (size!47495 a!2831))))))

(declare-fun b!1425993 () Bool)

(declare-fun res!961533 () Bool)

(assert (=> b!1425993 (=> (not res!961533) (not e!805557))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97261 (_ BitVec 32)) Bool)

(assert (=> b!1425993 (= res!961533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425994 () Bool)

(declare-fun e!805558 () Bool)

(assert (=> b!1425994 (= e!805557 e!805558)))

(declare-fun res!961537 () Bool)

(assert (=> b!1425994 (=> (not res!961537) (not e!805558))))

(declare-datatypes ((SeekEntryResult!11245 0))(
  ( (MissingZero!11245 (index!47371 (_ BitVec 32))) (Found!11245 (index!47372 (_ BitVec 32))) (Intermediate!11245 (undefined!12057 Bool) (index!47373 (_ BitVec 32)) (x!129002 (_ BitVec 32))) (Undefined!11245) (MissingVacant!11245 (index!47374 (_ BitVec 32))) )
))
(declare-fun lt!627949 () SeekEntryResult!11245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97261 (_ BitVec 32)) SeekEntryResult!11245)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425994 (= res!961537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46944 a!2831) j!81) mask!2608) (select (arr!46944 a!2831) j!81) a!2831 mask!2608) lt!627949))))

(assert (=> b!1425994 (= lt!627949 (Intermediate!11245 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425995 () Bool)

(declare-fun res!961541 () Bool)

(assert (=> b!1425995 (=> (not res!961541) (not e!805557))))

(assert (=> b!1425995 (= res!961541 (and (= (size!47495 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47495 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47495 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425996 () Bool)

(declare-fun res!961538 () Bool)

(assert (=> b!1425996 (=> (not res!961538) (not e!805557))))

(assert (=> b!1425996 (= res!961538 (validKeyInArray!0 (select (arr!46944 a!2831) j!81)))))

(declare-fun b!1425997 () Bool)

(declare-fun res!961532 () Bool)

(assert (=> b!1425997 (=> (not res!961532) (not e!805556))))

(declare-fun lt!627951 () array!97261)

(declare-fun lt!627950 () SeekEntryResult!11245)

(declare-fun lt!627952 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425997 (= res!961532 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627952 lt!627951 mask!2608) lt!627950))))

(declare-fun b!1425998 () Bool)

(declare-fun res!961542 () Bool)

(assert (=> b!1425998 (=> (not res!961542) (not e!805556))))

(assert (=> b!1425998 (= res!961542 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46944 a!2831) j!81) a!2831 mask!2608) lt!627949))))

(declare-fun res!961534 () Bool)

(assert (=> start!122978 (=> (not res!961534) (not e!805557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122978 (= res!961534 (validMask!0 mask!2608))))

(assert (=> start!122978 e!805557))

(assert (=> start!122978 true))

(declare-fun array_inv!35889 (array!97261) Bool)

(assert (=> start!122978 (array_inv!35889 a!2831)))

(declare-fun b!1425999 () Bool)

(declare-fun res!961536 () Bool)

(assert (=> b!1425999 (=> (not res!961536) (not e!805557))))

(assert (=> b!1425999 (= res!961536 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47495 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47495 a!2831))))))

(declare-fun b!1426000 () Bool)

(assert (=> b!1426000 (= e!805558 e!805556)))

(declare-fun res!961535 () Bool)

(assert (=> b!1426000 (=> (not res!961535) (not e!805556))))

(assert (=> b!1426000 (= res!961535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627952 mask!2608) lt!627952 lt!627951 mask!2608) lt!627950))))

(assert (=> b!1426000 (= lt!627950 (Intermediate!11245 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426000 (= lt!627952 (select (store (arr!46944 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426000 (= lt!627951 (array!97262 (store (arr!46944 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47495 a!2831)))))

(assert (= (and start!122978 res!961534) b!1425995))

(assert (= (and b!1425995 res!961541) b!1425990))

(assert (= (and b!1425990 res!961540) b!1425996))

(assert (= (and b!1425996 res!961538) b!1425993))

(assert (= (and b!1425993 res!961533) b!1425991))

(assert (= (and b!1425991 res!961539) b!1425999))

(assert (= (and b!1425999 res!961536) b!1425994))

(assert (= (and b!1425994 res!961537) b!1426000))

(assert (= (and b!1426000 res!961535) b!1425998))

(assert (= (and b!1425998 res!961542) b!1425997))

(assert (= (and b!1425997 res!961532) b!1425992))

(declare-fun m!1316655 () Bool)

(assert (=> b!1425994 m!1316655))

(assert (=> b!1425994 m!1316655))

(declare-fun m!1316657 () Bool)

(assert (=> b!1425994 m!1316657))

(assert (=> b!1425994 m!1316657))

(assert (=> b!1425994 m!1316655))

(declare-fun m!1316659 () Bool)

(assert (=> b!1425994 m!1316659))

(declare-fun m!1316661 () Bool)

(assert (=> b!1425997 m!1316661))

(declare-fun m!1316663 () Bool)

(assert (=> start!122978 m!1316663))

(declare-fun m!1316665 () Bool)

(assert (=> start!122978 m!1316665))

(declare-fun m!1316667 () Bool)

(assert (=> b!1425990 m!1316667))

(assert (=> b!1425990 m!1316667))

(declare-fun m!1316669 () Bool)

(assert (=> b!1425990 m!1316669))

(assert (=> b!1425998 m!1316655))

(assert (=> b!1425998 m!1316655))

(declare-fun m!1316671 () Bool)

(assert (=> b!1425998 m!1316671))

(declare-fun m!1316673 () Bool)

(assert (=> b!1425993 m!1316673))

(declare-fun m!1316675 () Bool)

(assert (=> b!1426000 m!1316675))

(assert (=> b!1426000 m!1316675))

(declare-fun m!1316677 () Bool)

(assert (=> b!1426000 m!1316677))

(declare-fun m!1316679 () Bool)

(assert (=> b!1426000 m!1316679))

(declare-fun m!1316681 () Bool)

(assert (=> b!1426000 m!1316681))

(assert (=> b!1425996 m!1316655))

(assert (=> b!1425996 m!1316655))

(declare-fun m!1316683 () Bool)

(assert (=> b!1425996 m!1316683))

(declare-fun m!1316685 () Bool)

(assert (=> b!1425991 m!1316685))

(push 1)

(assert (not b!1426000))

(assert (not b!1425993))

(assert (not start!122978))

(assert (not b!1425990))

(assert (not b!1425998))

(assert (not b!1425997))

(assert (not b!1425991))

(assert (not b!1425994))

(assert (not b!1425996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

