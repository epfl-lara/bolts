; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122678 () Bool)

(assert start!122678)

(declare-fun b!1420439 () Bool)

(declare-fun res!955988 () Bool)

(declare-fun e!803389 () Bool)

(assert (=> b!1420439 (=> (not res!955988) (not e!803389))))

(declare-datatypes ((array!96961 0))(
  ( (array!96962 (arr!46794 (Array (_ BitVec 32) (_ BitVec 64))) (size!47345 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96961)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96961 (_ BitVec 32)) Bool)

(assert (=> b!1420439 (= res!955988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955983 () Bool)

(assert (=> start!122678 (=> (not res!955983) (not e!803389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122678 (= res!955983 (validMask!0 mask!2608))))

(assert (=> start!122678 e!803389))

(assert (=> start!122678 true))

(declare-fun array_inv!35739 (array!96961) Bool)

(assert (=> start!122678 (array_inv!35739 a!2831)))

(declare-fun b!1420440 () Bool)

(declare-fun res!955989 () Bool)

(assert (=> b!1420440 (=> (not res!955989) (not e!803389))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420440 (= res!955989 (and (= (size!47345 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47345 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47345 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420441 () Bool)

(declare-fun res!955987 () Bool)

(assert (=> b!1420441 (=> (not res!955987) (not e!803389))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11101 0))(
  ( (MissingZero!11101 (index!46795 (_ BitVec 32))) (Found!11101 (index!46796 (_ BitVec 32))) (Intermediate!11101 (undefined!11913 Bool) (index!46797 (_ BitVec 32)) (x!128458 (_ BitVec 32))) (Undefined!11101) (MissingVacant!11101 (index!46798 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96961 (_ BitVec 32)) SeekEntryResult!11101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420441 (= res!955987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46794 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46794 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96962 (store (arr!46794 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47345 a!2831)) mask!2608) (Intermediate!11101 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420442 () Bool)

(declare-fun res!955985 () Bool)

(assert (=> b!1420442 (=> (not res!955985) (not e!803389))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420442 (= res!955985 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47345 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47345 a!2831))))))

(declare-fun b!1420443 () Bool)

(declare-fun res!955982 () Bool)

(assert (=> b!1420443 (=> (not res!955982) (not e!803389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420443 (= res!955982 (validKeyInArray!0 (select (arr!46794 a!2831) j!81)))))

(declare-fun b!1420444 () Bool)

(declare-fun res!955984 () Bool)

(assert (=> b!1420444 (=> (not res!955984) (not e!803389))))

(assert (=> b!1420444 (= res!955984 (validKeyInArray!0 (select (arr!46794 a!2831) i!982)))))

(declare-fun b!1420445 () Bool)

(declare-fun res!955981 () Bool)

(assert (=> b!1420445 (=> (not res!955981) (not e!803389))))

(assert (=> b!1420445 (= res!955981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46794 a!2831) j!81) mask!2608) (select (arr!46794 a!2831) j!81) a!2831 mask!2608) (Intermediate!11101 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420446 () Bool)

(declare-fun res!955986 () Bool)

(assert (=> b!1420446 (=> (not res!955986) (not e!803389))))

(declare-datatypes ((List!33484 0))(
  ( (Nil!33481) (Cons!33480 (h!34782 (_ BitVec 64)) (t!48185 List!33484)) )
))
(declare-fun arrayNoDuplicates!0 (array!96961 (_ BitVec 32) List!33484) Bool)

(assert (=> b!1420446 (= res!955986 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33481))))

(declare-fun b!1420447 () Bool)

(assert (=> b!1420447 (= e!803389 false)))

(declare-fun lt!625864 () SeekEntryResult!11101)

(assert (=> b!1420447 (= lt!625864 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46794 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and start!122678 res!955983) b!1420440))

(assert (= (and b!1420440 res!955989) b!1420444))

(assert (= (and b!1420444 res!955984) b!1420443))

(assert (= (and b!1420443 res!955982) b!1420439))

(assert (= (and b!1420439 res!955988) b!1420446))

(assert (= (and b!1420446 res!955986) b!1420442))

(assert (= (and b!1420442 res!955985) b!1420445))

(assert (= (and b!1420445 res!955981) b!1420441))

(assert (= (and b!1420441 res!955987) b!1420447))

(declare-fun m!1311017 () Bool)

(assert (=> b!1420446 m!1311017))

(declare-fun m!1311019 () Bool)

(assert (=> b!1420445 m!1311019))

(assert (=> b!1420445 m!1311019))

(declare-fun m!1311021 () Bool)

(assert (=> b!1420445 m!1311021))

(assert (=> b!1420445 m!1311021))

(assert (=> b!1420445 m!1311019))

(declare-fun m!1311023 () Bool)

(assert (=> b!1420445 m!1311023))

(declare-fun m!1311025 () Bool)

(assert (=> b!1420444 m!1311025))

(assert (=> b!1420444 m!1311025))

(declare-fun m!1311027 () Bool)

(assert (=> b!1420444 m!1311027))

(declare-fun m!1311029 () Bool)

(assert (=> b!1420439 m!1311029))

(declare-fun m!1311031 () Bool)

(assert (=> b!1420441 m!1311031))

(declare-fun m!1311033 () Bool)

(assert (=> b!1420441 m!1311033))

(assert (=> b!1420441 m!1311033))

(declare-fun m!1311035 () Bool)

(assert (=> b!1420441 m!1311035))

(assert (=> b!1420441 m!1311035))

(assert (=> b!1420441 m!1311033))

(declare-fun m!1311037 () Bool)

(assert (=> b!1420441 m!1311037))

(assert (=> b!1420443 m!1311019))

(assert (=> b!1420443 m!1311019))

(declare-fun m!1311039 () Bool)

(assert (=> b!1420443 m!1311039))

(assert (=> b!1420447 m!1311019))

(assert (=> b!1420447 m!1311019))

(declare-fun m!1311041 () Bool)

(assert (=> b!1420447 m!1311041))

(declare-fun m!1311043 () Bool)

(assert (=> start!122678 m!1311043))

(declare-fun m!1311045 () Bool)

(assert (=> start!122678 m!1311045))

(push 1)

(assert (not b!1420447))

(assert (not b!1420444))

(assert (not b!1420443))

(assert (not b!1420439))

(assert (not b!1420446))

(assert (not b!1420441))

(assert (not start!122678))

(assert (not b!1420445))

(check-sat)

(pop 1)

(push 1)

