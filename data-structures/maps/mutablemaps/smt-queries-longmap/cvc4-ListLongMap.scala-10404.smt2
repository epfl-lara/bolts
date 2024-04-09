; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122630 () Bool)

(assert start!122630)

(declare-fun b!1419792 () Bool)

(declare-fun res!955335 () Bool)

(declare-fun e!803228 () Bool)

(assert (=> b!1419792 (=> (not res!955335) (not e!803228))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96913 0))(
  ( (array!96914 (arr!46770 (Array (_ BitVec 32) (_ BitVec 64))) (size!47321 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96913)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419792 (= res!955335 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47321 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47321 a!2831))))))

(declare-fun b!1419793 () Bool)

(declare-fun res!955334 () Bool)

(assert (=> b!1419793 (=> (not res!955334) (not e!803228))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96913 (_ BitVec 32)) Bool)

(assert (=> b!1419793 (= res!955334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419794 () Bool)

(declare-fun res!955336 () Bool)

(assert (=> b!1419794 (=> (not res!955336) (not e!803228))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419794 (= res!955336 (validKeyInArray!0 (select (arr!46770 a!2831) j!81)))))

(declare-fun b!1419795 () Bool)

(declare-fun res!955341 () Bool)

(assert (=> b!1419795 (=> (not res!955341) (not e!803228))))

(declare-datatypes ((SeekEntryResult!11077 0))(
  ( (MissingZero!11077 (index!46699 (_ BitVec 32))) (Found!11077 (index!46700 (_ BitVec 32))) (Intermediate!11077 (undefined!11889 Bool) (index!46701 (_ BitVec 32)) (x!128370 (_ BitVec 32))) (Undefined!11077) (MissingVacant!11077 (index!46702 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96913 (_ BitVec 32)) SeekEntryResult!11077)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419795 (= res!955341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46770 a!2831) j!81) mask!2608) (select (arr!46770 a!2831) j!81) a!2831 mask!2608) (Intermediate!11077 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun res!955340 () Bool)

(assert (=> start!122630 (=> (not res!955340) (not e!803228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122630 (= res!955340 (validMask!0 mask!2608))))

(assert (=> start!122630 e!803228))

(assert (=> start!122630 true))

(declare-fun array_inv!35715 (array!96913) Bool)

(assert (=> start!122630 (array_inv!35715 a!2831)))

(declare-fun b!1419796 () Bool)

(assert (=> b!1419796 (= e!803228 false)))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun lt!625801 () SeekEntryResult!11077)

(assert (=> b!1419796 (= lt!625801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46770 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46770 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96914 (store (arr!46770 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47321 a!2831)) mask!2608))))

(declare-fun b!1419797 () Bool)

(declare-fun res!955338 () Bool)

(assert (=> b!1419797 (=> (not res!955338) (not e!803228))))

(assert (=> b!1419797 (= res!955338 (and (= (size!47321 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47321 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47321 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419798 () Bool)

(declare-fun res!955337 () Bool)

(assert (=> b!1419798 (=> (not res!955337) (not e!803228))))

(assert (=> b!1419798 (= res!955337 (validKeyInArray!0 (select (arr!46770 a!2831) i!982)))))

(declare-fun b!1419799 () Bool)

(declare-fun res!955339 () Bool)

(assert (=> b!1419799 (=> (not res!955339) (not e!803228))))

(declare-datatypes ((List!33460 0))(
  ( (Nil!33457) (Cons!33456 (h!34758 (_ BitVec 64)) (t!48161 List!33460)) )
))
(declare-fun arrayNoDuplicates!0 (array!96913 (_ BitVec 32) List!33460) Bool)

(assert (=> b!1419799 (= res!955339 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33457))))

(assert (= (and start!122630 res!955340) b!1419797))

(assert (= (and b!1419797 res!955338) b!1419798))

(assert (= (and b!1419798 res!955337) b!1419794))

(assert (= (and b!1419794 res!955336) b!1419793))

(assert (= (and b!1419793 res!955334) b!1419799))

(assert (= (and b!1419799 res!955339) b!1419792))

(assert (= (and b!1419792 res!955335) b!1419795))

(assert (= (and b!1419795 res!955341) b!1419796))

(declare-fun m!1310317 () Bool)

(assert (=> b!1419796 m!1310317))

(declare-fun m!1310319 () Bool)

(assert (=> b!1419796 m!1310319))

(assert (=> b!1419796 m!1310319))

(declare-fun m!1310321 () Bool)

(assert (=> b!1419796 m!1310321))

(assert (=> b!1419796 m!1310321))

(assert (=> b!1419796 m!1310319))

(declare-fun m!1310323 () Bool)

(assert (=> b!1419796 m!1310323))

(declare-fun m!1310325 () Bool)

(assert (=> b!1419799 m!1310325))

(declare-fun m!1310327 () Bool)

(assert (=> b!1419793 m!1310327))

(declare-fun m!1310329 () Bool)

(assert (=> b!1419794 m!1310329))

(assert (=> b!1419794 m!1310329))

(declare-fun m!1310331 () Bool)

(assert (=> b!1419794 m!1310331))

(declare-fun m!1310333 () Bool)

(assert (=> start!122630 m!1310333))

(declare-fun m!1310335 () Bool)

(assert (=> start!122630 m!1310335))

(declare-fun m!1310337 () Bool)

(assert (=> b!1419798 m!1310337))

(assert (=> b!1419798 m!1310337))

(declare-fun m!1310339 () Bool)

(assert (=> b!1419798 m!1310339))

(assert (=> b!1419795 m!1310329))

(assert (=> b!1419795 m!1310329))

(declare-fun m!1310341 () Bool)

(assert (=> b!1419795 m!1310341))

(assert (=> b!1419795 m!1310341))

(assert (=> b!1419795 m!1310329))

(declare-fun m!1310343 () Bool)

(assert (=> b!1419795 m!1310343))

(push 1)

(assert (not b!1419793))

(assert (not start!122630))

(assert (not b!1419794))

(assert (not b!1419799))

(assert (not b!1419796))

(assert (not b!1419795))

(assert (not b!1419798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

