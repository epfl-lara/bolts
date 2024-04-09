; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122542 () Bool)

(assert start!122542)

(declare-fun b!1419060 () Bool)

(declare-fun res!954695 () Bool)

(declare-fun e!802972 () Bool)

(assert (=> b!1419060 (=> (not res!954695) (not e!802972))))

(declare-datatypes ((array!96864 0))(
  ( (array!96865 (arr!46747 (Array (_ BitVec 32) (_ BitVec 64))) (size!47298 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96864)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96864 (_ BitVec 32)) Bool)

(assert (=> b!1419060 (= res!954695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419061 () Bool)

(declare-fun res!954690 () Bool)

(assert (=> b!1419061 (=> (not res!954690) (not e!802972))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419061 (= res!954690 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47298 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47298 a!2831))))))

(declare-fun b!1419062 () Bool)

(assert (=> b!1419062 (= e!802972 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun lt!625672 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419062 (= lt!625672 (toIndex!0 (select (store (arr!46747 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419063 () Bool)

(declare-fun res!954691 () Bool)

(assert (=> b!1419063 (=> (not res!954691) (not e!802972))))

(declare-datatypes ((List!33437 0))(
  ( (Nil!33434) (Cons!33433 (h!34732 (_ BitVec 64)) (t!48138 List!33437)) )
))
(declare-fun arrayNoDuplicates!0 (array!96864 (_ BitVec 32) List!33437) Bool)

(assert (=> b!1419063 (= res!954691 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33434))))

(declare-fun b!1419064 () Bool)

(declare-fun res!954689 () Bool)

(assert (=> b!1419064 (=> (not res!954689) (not e!802972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419064 (= res!954689 (validKeyInArray!0 (select (arr!46747 a!2831) i!982)))))

(declare-fun b!1419065 () Bool)

(declare-fun res!954692 () Bool)

(assert (=> b!1419065 (=> (not res!954692) (not e!802972))))

(assert (=> b!1419065 (= res!954692 (validKeyInArray!0 (select (arr!46747 a!2831) j!81)))))

(declare-fun b!1419066 () Bool)

(declare-fun res!954694 () Bool)

(assert (=> b!1419066 (=> (not res!954694) (not e!802972))))

(declare-datatypes ((SeekEntryResult!11054 0))(
  ( (MissingZero!11054 (index!46607 (_ BitVec 32))) (Found!11054 (index!46608 (_ BitVec 32))) (Intermediate!11054 (undefined!11866 Bool) (index!46609 (_ BitVec 32)) (x!128285 (_ BitVec 32))) (Undefined!11054) (MissingVacant!11054 (index!46610 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96864 (_ BitVec 32)) SeekEntryResult!11054)

(assert (=> b!1419066 (= res!954694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46747 a!2831) j!81) mask!2608) (select (arr!46747 a!2831) j!81) a!2831 mask!2608) (Intermediate!11054 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419067 () Bool)

(declare-fun res!954696 () Bool)

(assert (=> b!1419067 (=> (not res!954696) (not e!802972))))

(assert (=> b!1419067 (= res!954696 (and (= (size!47298 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47298 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47298 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954693 () Bool)

(assert (=> start!122542 (=> (not res!954693) (not e!802972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122542 (= res!954693 (validMask!0 mask!2608))))

(assert (=> start!122542 e!802972))

(assert (=> start!122542 true))

(declare-fun array_inv!35692 (array!96864) Bool)

(assert (=> start!122542 (array_inv!35692 a!2831)))

(assert (= (and start!122542 res!954693) b!1419067))

(assert (= (and b!1419067 res!954696) b!1419064))

(assert (= (and b!1419064 res!954689) b!1419065))

(assert (= (and b!1419065 res!954692) b!1419060))

(assert (= (and b!1419060 res!954695) b!1419063))

(assert (= (and b!1419063 res!954691) b!1419061))

(assert (= (and b!1419061 res!954690) b!1419066))

(assert (= (and b!1419066 res!954694) b!1419062))

(declare-fun m!1309625 () Bool)

(assert (=> b!1419062 m!1309625))

(declare-fun m!1309627 () Bool)

(assert (=> b!1419062 m!1309627))

(assert (=> b!1419062 m!1309627))

(declare-fun m!1309629 () Bool)

(assert (=> b!1419062 m!1309629))

(declare-fun m!1309631 () Bool)

(assert (=> b!1419065 m!1309631))

(assert (=> b!1419065 m!1309631))

(declare-fun m!1309633 () Bool)

(assert (=> b!1419065 m!1309633))

(declare-fun m!1309635 () Bool)

(assert (=> b!1419063 m!1309635))

(assert (=> b!1419066 m!1309631))

(assert (=> b!1419066 m!1309631))

(declare-fun m!1309637 () Bool)

(assert (=> b!1419066 m!1309637))

(assert (=> b!1419066 m!1309637))

(assert (=> b!1419066 m!1309631))

(declare-fun m!1309639 () Bool)

(assert (=> b!1419066 m!1309639))

(declare-fun m!1309641 () Bool)

(assert (=> b!1419060 m!1309641))

(declare-fun m!1309643 () Bool)

(assert (=> b!1419064 m!1309643))

(assert (=> b!1419064 m!1309643))

(declare-fun m!1309645 () Bool)

(assert (=> b!1419064 m!1309645))

(declare-fun m!1309647 () Bool)

(assert (=> start!122542 m!1309647))

(declare-fun m!1309649 () Bool)

(assert (=> start!122542 m!1309649))

(push 1)

(assert (not b!1419066))

(assert (not b!1419060))

(assert (not b!1419064))

(assert (not start!122542))

(assert (not b!1419065))

(assert (not b!1419062))

