; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122628 () Bool)

(assert start!122628)

(declare-fun b!1419768 () Bool)

(declare-fun res!955312 () Bool)

(declare-fun e!803222 () Bool)

(assert (=> b!1419768 (=> (not res!955312) (not e!803222))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96911 0))(
  ( (array!96912 (arr!46769 (Array (_ BitVec 32) (_ BitVec 64))) (size!47320 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96911)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419768 (= res!955312 (and (= (size!47320 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47320 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47320 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!955311 () Bool)

(assert (=> start!122628 (=> (not res!955311) (not e!803222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122628 (= res!955311 (validMask!0 mask!2608))))

(assert (=> start!122628 e!803222))

(assert (=> start!122628 true))

(declare-fun array_inv!35714 (array!96911) Bool)

(assert (=> start!122628 (array_inv!35714 a!2831)))

(declare-fun b!1419769 () Bool)

(declare-fun res!955313 () Bool)

(assert (=> b!1419769 (=> (not res!955313) (not e!803222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419769 (= res!955313 (validKeyInArray!0 (select (arr!46769 a!2831) j!81)))))

(declare-fun b!1419770 () Bool)

(declare-fun res!955310 () Bool)

(assert (=> b!1419770 (=> (not res!955310) (not e!803222))))

(assert (=> b!1419770 (= res!955310 (validKeyInArray!0 (select (arr!46769 a!2831) i!982)))))

(declare-fun b!1419771 () Bool)

(declare-fun res!955314 () Bool)

(assert (=> b!1419771 (=> (not res!955314) (not e!803222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96911 (_ BitVec 32)) Bool)

(assert (=> b!1419771 (= res!955314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419772 () Bool)

(assert (=> b!1419772 (= e!803222 false)))

(declare-datatypes ((SeekEntryResult!11076 0))(
  ( (MissingZero!11076 (index!46695 (_ BitVec 32))) (Found!11076 (index!46696 (_ BitVec 32))) (Intermediate!11076 (undefined!11888 Bool) (index!46697 (_ BitVec 32)) (x!128369 (_ BitVec 32))) (Undefined!11076) (MissingVacant!11076 (index!46698 (_ BitVec 32))) )
))
(declare-fun lt!625798 () SeekEntryResult!11076)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96911 (_ BitVec 32)) SeekEntryResult!11076)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419772 (= lt!625798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46769 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46769 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96912 (store (arr!46769 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47320 a!2831)) mask!2608))))

(declare-fun b!1419773 () Bool)

(declare-fun res!955317 () Bool)

(assert (=> b!1419773 (=> (not res!955317) (not e!803222))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1419773 (= res!955317 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47320 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47320 a!2831))))))

(declare-fun b!1419774 () Bool)

(declare-fun res!955316 () Bool)

(assert (=> b!1419774 (=> (not res!955316) (not e!803222))))

(declare-datatypes ((List!33459 0))(
  ( (Nil!33456) (Cons!33455 (h!34757 (_ BitVec 64)) (t!48160 List!33459)) )
))
(declare-fun arrayNoDuplicates!0 (array!96911 (_ BitVec 32) List!33459) Bool)

(assert (=> b!1419774 (= res!955316 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33456))))

(declare-fun b!1419775 () Bool)

(declare-fun res!955315 () Bool)

(assert (=> b!1419775 (=> (not res!955315) (not e!803222))))

(assert (=> b!1419775 (= res!955315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46769 a!2831) j!81) mask!2608) (select (arr!46769 a!2831) j!81) a!2831 mask!2608) (Intermediate!11076 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122628 res!955311) b!1419768))

(assert (= (and b!1419768 res!955312) b!1419770))

(assert (= (and b!1419770 res!955310) b!1419769))

(assert (= (and b!1419769 res!955313) b!1419771))

(assert (= (and b!1419771 res!955314) b!1419774))

(assert (= (and b!1419774 res!955316) b!1419773))

(assert (= (and b!1419773 res!955317) b!1419775))

(assert (= (and b!1419775 res!955315) b!1419772))

(declare-fun m!1310289 () Bool)

(assert (=> b!1419774 m!1310289))

(declare-fun m!1310291 () Bool)

(assert (=> b!1419772 m!1310291))

(declare-fun m!1310293 () Bool)

(assert (=> b!1419772 m!1310293))

(assert (=> b!1419772 m!1310293))

(declare-fun m!1310295 () Bool)

(assert (=> b!1419772 m!1310295))

(assert (=> b!1419772 m!1310295))

(assert (=> b!1419772 m!1310293))

(declare-fun m!1310297 () Bool)

(assert (=> b!1419772 m!1310297))

(declare-fun m!1310299 () Bool)

(assert (=> b!1419775 m!1310299))

(assert (=> b!1419775 m!1310299))

(declare-fun m!1310301 () Bool)

(assert (=> b!1419775 m!1310301))

(assert (=> b!1419775 m!1310301))

(assert (=> b!1419775 m!1310299))

(declare-fun m!1310303 () Bool)

(assert (=> b!1419775 m!1310303))

(assert (=> b!1419769 m!1310299))

(assert (=> b!1419769 m!1310299))

(declare-fun m!1310305 () Bool)

(assert (=> b!1419769 m!1310305))

(declare-fun m!1310307 () Bool)

(assert (=> b!1419770 m!1310307))

(assert (=> b!1419770 m!1310307))

(declare-fun m!1310309 () Bool)

(assert (=> b!1419770 m!1310309))

(declare-fun m!1310311 () Bool)

(assert (=> start!122628 m!1310311))

(declare-fun m!1310313 () Bool)

(assert (=> start!122628 m!1310313))

(declare-fun m!1310315 () Bool)

(assert (=> b!1419771 m!1310315))

(check-sat (not b!1419770) (not b!1419774) (not start!122628) (not b!1419769) (not b!1419771) (not b!1419772) (not b!1419775))
