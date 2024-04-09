; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122658 () Bool)

(assert start!122658)

(declare-fun b!1420156 () Bool)

(declare-fun res!955702 () Bool)

(declare-fun e!803318 () Bool)

(assert (=> b!1420156 (=> (not res!955702) (not e!803318))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!96941 0))(
  ( (array!96942 (arr!46784 (Array (_ BitVec 32) (_ BitVec 64))) (size!47335 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96941)

(assert (=> b!1420156 (= res!955702 (and (= (size!47335 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47335 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47335 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!955701 () Bool)

(assert (=> start!122658 (=> (not res!955701) (not e!803318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122658 (= res!955701 (validMask!0 mask!2608))))

(assert (=> start!122658 e!803318))

(assert (=> start!122658 true))

(declare-fun array_inv!35729 (array!96941) Bool)

(assert (=> start!122658 (array_inv!35729 a!2831)))

(declare-fun b!1420157 () Bool)

(declare-fun e!803316 () Bool)

(assert (=> b!1420157 (= e!803318 e!803316)))

(declare-fun res!955706 () Bool)

(assert (=> b!1420157 (=> (not res!955706) (not e!803316))))

(declare-datatypes ((SeekEntryResult!11091 0))(
  ( (MissingZero!11091 (index!46755 (_ BitVec 32))) (Found!11091 (index!46756 (_ BitVec 32))) (Intermediate!11091 (undefined!11903 Bool) (index!46757 (_ BitVec 32)) (x!128424 (_ BitVec 32))) (Undefined!11091) (MissingVacant!11091 (index!46758 (_ BitVec 32))) )
))
(declare-fun lt!625834 () SeekEntryResult!11091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96941 (_ BitVec 32)) SeekEntryResult!11091)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420157 (= res!955706 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46784 a!2831) j!81) mask!2608) (select (arr!46784 a!2831) j!81) a!2831 mask!2608) lt!625834))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420157 (= lt!625834 (Intermediate!11091 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420158 () Bool)

(declare-fun res!955704 () Bool)

(assert (=> b!1420158 (=> (not res!955704) (not e!803318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96941 (_ BitVec 32)) Bool)

(assert (=> b!1420158 (= res!955704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420159 () Bool)

(declare-fun res!955703 () Bool)

(assert (=> b!1420159 (=> (not res!955703) (not e!803318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420159 (= res!955703 (validKeyInArray!0 (select (arr!46784 a!2831) j!81)))))

(declare-fun b!1420160 () Bool)

(declare-fun res!955699 () Bool)

(assert (=> b!1420160 (=> (not res!955699) (not e!803316))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420160 (= res!955699 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46784 a!2831) j!81) a!2831 mask!2608) lt!625834))))

(declare-fun b!1420161 () Bool)

(declare-fun res!955705 () Bool)

(assert (=> b!1420161 (=> (not res!955705) (not e!803318))))

(assert (=> b!1420161 (= res!955705 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47335 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47335 a!2831))))))

(declare-fun b!1420162 () Bool)

(declare-fun res!955707 () Bool)

(assert (=> b!1420162 (=> (not res!955707) (not e!803316))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420162 (= res!955707 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46784 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46784 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96942 (store (arr!46784 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47335 a!2831)) mask!2608) (Intermediate!11091 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420163 () Bool)

(assert (=> b!1420163 (= e!803316 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1420164 () Bool)

(declare-fun res!955698 () Bool)

(assert (=> b!1420164 (=> (not res!955698) (not e!803318))))

(declare-datatypes ((List!33474 0))(
  ( (Nil!33471) (Cons!33470 (h!34772 (_ BitVec 64)) (t!48175 List!33474)) )
))
(declare-fun arrayNoDuplicates!0 (array!96941 (_ BitVec 32) List!33474) Bool)

(assert (=> b!1420164 (= res!955698 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33471))))

(declare-fun b!1420165 () Bool)

(declare-fun res!955700 () Bool)

(assert (=> b!1420165 (=> (not res!955700) (not e!803318))))

(assert (=> b!1420165 (= res!955700 (validKeyInArray!0 (select (arr!46784 a!2831) i!982)))))

(assert (= (and start!122658 res!955701) b!1420156))

(assert (= (and b!1420156 res!955702) b!1420165))

(assert (= (and b!1420165 res!955700) b!1420159))

(assert (= (and b!1420159 res!955703) b!1420158))

(assert (= (and b!1420158 res!955704) b!1420164))

(assert (= (and b!1420164 res!955698) b!1420161))

(assert (= (and b!1420161 res!955705) b!1420157))

(assert (= (and b!1420157 res!955706) b!1420162))

(assert (= (and b!1420162 res!955707) b!1420160))

(assert (= (and b!1420160 res!955699) b!1420163))

(declare-fun m!1310717 () Bool)

(assert (=> b!1420160 m!1310717))

(assert (=> b!1420160 m!1310717))

(declare-fun m!1310719 () Bool)

(assert (=> b!1420160 m!1310719))

(assert (=> b!1420157 m!1310717))

(assert (=> b!1420157 m!1310717))

(declare-fun m!1310721 () Bool)

(assert (=> b!1420157 m!1310721))

(assert (=> b!1420157 m!1310721))

(assert (=> b!1420157 m!1310717))

(declare-fun m!1310723 () Bool)

(assert (=> b!1420157 m!1310723))

(assert (=> b!1420159 m!1310717))

(assert (=> b!1420159 m!1310717))

(declare-fun m!1310725 () Bool)

(assert (=> b!1420159 m!1310725))

(declare-fun m!1310727 () Bool)

(assert (=> b!1420162 m!1310727))

(declare-fun m!1310729 () Bool)

(assert (=> b!1420162 m!1310729))

(assert (=> b!1420162 m!1310729))

(declare-fun m!1310731 () Bool)

(assert (=> b!1420162 m!1310731))

(assert (=> b!1420162 m!1310731))

(assert (=> b!1420162 m!1310729))

(declare-fun m!1310733 () Bool)

(assert (=> b!1420162 m!1310733))

(declare-fun m!1310735 () Bool)

(assert (=> b!1420164 m!1310735))

(declare-fun m!1310737 () Bool)

(assert (=> start!122658 m!1310737))

(declare-fun m!1310739 () Bool)

(assert (=> start!122658 m!1310739))

(declare-fun m!1310741 () Bool)

(assert (=> b!1420158 m!1310741))

(declare-fun m!1310743 () Bool)

(assert (=> b!1420165 m!1310743))

(assert (=> b!1420165 m!1310743))

(declare-fun m!1310745 () Bool)

(assert (=> b!1420165 m!1310745))

(check-sat (not b!1420164) (not b!1420159) (not b!1420162) (not start!122658) (not b!1420158) (not b!1420157) (not b!1420160) (not b!1420165))
(check-sat)
