; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122664 () Bool)

(assert start!122664)

(declare-fun b!1420241 () Bool)

(declare-fun res!955786 () Bool)

(declare-fun e!803339 () Bool)

(assert (=> b!1420241 (=> (not res!955786) (not e!803339))))

(declare-datatypes ((array!96947 0))(
  ( (array!96948 (arr!46787 (Array (_ BitVec 32) (_ BitVec 64))) (size!47338 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96947)

(declare-datatypes ((List!33477 0))(
  ( (Nil!33474) (Cons!33473 (h!34775 (_ BitVec 64)) (t!48178 List!33477)) )
))
(declare-fun arrayNoDuplicates!0 (array!96947 (_ BitVec 32) List!33477) Bool)

(assert (=> b!1420241 (= res!955786 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33474))))

(declare-fun b!1420242 () Bool)

(declare-fun res!955783 () Bool)

(assert (=> b!1420242 (=> (not res!955783) (not e!803339))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420242 (= res!955783 (validKeyInArray!0 (select (arr!46787 a!2831) j!81)))))

(declare-fun b!1420243 () Bool)

(assert (=> b!1420243 (= e!803339 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11094 0))(
  ( (MissingZero!11094 (index!46767 (_ BitVec 32))) (Found!11094 (index!46768 (_ BitVec 32))) (Intermediate!11094 (undefined!11906 Bool) (index!46769 (_ BitVec 32)) (x!128435 (_ BitVec 32))) (Undefined!11094) (MissingVacant!11094 (index!46770 (_ BitVec 32))) )
))
(declare-fun lt!625843 () SeekEntryResult!11094)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96947 (_ BitVec 32)) SeekEntryResult!11094)

(assert (=> b!1420243 (= lt!625843 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46787 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420244 () Bool)

(declare-fun res!955784 () Bool)

(assert (=> b!1420244 (=> (not res!955784) (not e!803339))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420244 (= res!955784 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47338 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47338 a!2831))))))

(declare-fun b!1420245 () Bool)

(declare-fun res!955787 () Bool)

(assert (=> b!1420245 (=> (not res!955787) (not e!803339))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420245 (= res!955787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46787 a!2831) j!81) mask!2608) (select (arr!46787 a!2831) j!81) a!2831 mask!2608) (Intermediate!11094 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420246 () Bool)

(declare-fun res!955785 () Bool)

(assert (=> b!1420246 (=> (not res!955785) (not e!803339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96947 (_ BitVec 32)) Bool)

(assert (=> b!1420246 (= res!955785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420247 () Bool)

(declare-fun res!955790 () Bool)

(assert (=> b!1420247 (=> (not res!955790) (not e!803339))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420247 (= res!955790 (and (= (size!47338 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47338 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47338 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420248 () Bool)

(declare-fun res!955789 () Bool)

(assert (=> b!1420248 (=> (not res!955789) (not e!803339))))

(assert (=> b!1420248 (= res!955789 (validKeyInArray!0 (select (arr!46787 a!2831) i!982)))))

(declare-fun b!1420249 () Bool)

(declare-fun res!955791 () Bool)

(assert (=> b!1420249 (=> (not res!955791) (not e!803339))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420249 (= res!955791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46787 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46787 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96948 (store (arr!46787 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47338 a!2831)) mask!2608) (Intermediate!11094 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun res!955788 () Bool)

(assert (=> start!122664 (=> (not res!955788) (not e!803339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122664 (= res!955788 (validMask!0 mask!2608))))

(assert (=> start!122664 e!803339))

(assert (=> start!122664 true))

(declare-fun array_inv!35732 (array!96947) Bool)

(assert (=> start!122664 (array_inv!35732 a!2831)))

(assert (= (and start!122664 res!955788) b!1420247))

(assert (= (and b!1420247 res!955790) b!1420248))

(assert (= (and b!1420248 res!955789) b!1420242))

(assert (= (and b!1420242 res!955783) b!1420246))

(assert (= (and b!1420246 res!955785) b!1420241))

(assert (= (and b!1420241 res!955786) b!1420244))

(assert (= (and b!1420244 res!955784) b!1420245))

(assert (= (and b!1420245 res!955787) b!1420249))

(assert (= (and b!1420249 res!955791) b!1420243))

(declare-fun m!1310807 () Bool)

(assert (=> start!122664 m!1310807))

(declare-fun m!1310809 () Bool)

(assert (=> start!122664 m!1310809))

(declare-fun m!1310811 () Bool)

(assert (=> b!1420242 m!1310811))

(assert (=> b!1420242 m!1310811))

(declare-fun m!1310813 () Bool)

(assert (=> b!1420242 m!1310813))

(declare-fun m!1310815 () Bool)

(assert (=> b!1420249 m!1310815))

(declare-fun m!1310817 () Bool)

(assert (=> b!1420249 m!1310817))

(assert (=> b!1420249 m!1310817))

(declare-fun m!1310819 () Bool)

(assert (=> b!1420249 m!1310819))

(assert (=> b!1420249 m!1310819))

(assert (=> b!1420249 m!1310817))

(declare-fun m!1310821 () Bool)

(assert (=> b!1420249 m!1310821))

(declare-fun m!1310823 () Bool)

(assert (=> b!1420241 m!1310823))

(declare-fun m!1310825 () Bool)

(assert (=> b!1420246 m!1310825))

(assert (=> b!1420245 m!1310811))

(assert (=> b!1420245 m!1310811))

(declare-fun m!1310827 () Bool)

(assert (=> b!1420245 m!1310827))

(assert (=> b!1420245 m!1310827))

(assert (=> b!1420245 m!1310811))

(declare-fun m!1310829 () Bool)

(assert (=> b!1420245 m!1310829))

(assert (=> b!1420243 m!1310811))

(assert (=> b!1420243 m!1310811))

(declare-fun m!1310831 () Bool)

(assert (=> b!1420243 m!1310831))

(declare-fun m!1310833 () Bool)

(assert (=> b!1420248 m!1310833))

(assert (=> b!1420248 m!1310833))

(declare-fun m!1310835 () Bool)

(assert (=> b!1420248 m!1310835))

(check-sat (not b!1420241) (not b!1420246) (not b!1420249) (not b!1420243) (not b!1420248) (not start!122664) (not b!1420245) (not b!1420242))
