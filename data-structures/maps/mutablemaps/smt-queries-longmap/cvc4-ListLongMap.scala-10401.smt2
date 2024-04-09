; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122612 () Bool)

(assert start!122612)

(declare-fun b!1419567 () Bool)

(declare-fun res!955113 () Bool)

(declare-fun e!803173 () Bool)

(assert (=> b!1419567 (=> (not res!955113) (not e!803173))))

(declare-datatypes ((array!96895 0))(
  ( (array!96896 (arr!46761 (Array (_ BitVec 32) (_ BitVec 64))) (size!47312 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96895)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419567 (= res!955113 (validKeyInArray!0 (select (arr!46761 a!2831) i!982)))))

(declare-fun b!1419568 () Bool)

(declare-fun res!955108 () Bool)

(assert (=> b!1419568 (=> (not res!955108) (not e!803173))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1419568 (= res!955108 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47312 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47312 a!2831))))))

(declare-fun b!1419569 () Bool)

(declare-fun res!955114 () Bool)

(assert (=> b!1419569 (=> (not res!955114) (not e!803173))))

(declare-datatypes ((List!33451 0))(
  ( (Nil!33448) (Cons!33447 (h!34749 (_ BitVec 64)) (t!48152 List!33451)) )
))
(declare-fun arrayNoDuplicates!0 (array!96895 (_ BitVec 32) List!33451) Bool)

(assert (=> b!1419569 (= res!955114 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33448))))

(declare-fun b!1419570 () Bool)

(declare-fun res!955109 () Bool)

(assert (=> b!1419570 (=> (not res!955109) (not e!803173))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11068 0))(
  ( (MissingZero!11068 (index!46663 (_ BitVec 32))) (Found!11068 (index!46664 (_ BitVec 32))) (Intermediate!11068 (undefined!11880 Bool) (index!46665 (_ BitVec 32)) (x!128337 (_ BitVec 32))) (Undefined!11068) (MissingVacant!11068 (index!46666 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96895 (_ BitVec 32)) SeekEntryResult!11068)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419570 (= res!955109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46761 a!2831) j!81) mask!2608) (select (arr!46761 a!2831) j!81) a!2831 mask!2608) (Intermediate!11068 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419571 () Bool)

(declare-fun res!955110 () Bool)

(assert (=> b!1419571 (=> (not res!955110) (not e!803173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96895 (_ BitVec 32)) Bool)

(assert (=> b!1419571 (= res!955110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419572 () Bool)

(declare-fun res!955111 () Bool)

(assert (=> b!1419572 (=> (not res!955111) (not e!803173))))

(assert (=> b!1419572 (= res!955111 (and (= (size!47312 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47312 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47312 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419573 () Bool)

(declare-fun e!803174 () Bool)

(assert (=> b!1419573 (= e!803174 (not (validKeyInArray!0 (select (store (arr!46761 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1419574 () Bool)

(assert (=> b!1419574 (= e!803173 e!803174)))

(declare-fun res!955112 () Bool)

(assert (=> b!1419574 (=> (not res!955112) (not e!803174))))

(declare-fun lt!625783 () (_ BitVec 32))

(assert (=> b!1419574 (= res!955112 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge lt!625783 #b00000000000000000000000000000000) (bvslt lt!625783 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(assert (=> b!1419574 (= lt!625783 (toIndex!0 (select (store (arr!46761 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419566 () Bool)

(declare-fun res!955115 () Bool)

(assert (=> b!1419566 (=> (not res!955115) (not e!803173))))

(assert (=> b!1419566 (= res!955115 (validKeyInArray!0 (select (arr!46761 a!2831) j!81)))))

(declare-fun res!955116 () Bool)

(assert (=> start!122612 (=> (not res!955116) (not e!803173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122612 (= res!955116 (validMask!0 mask!2608))))

(assert (=> start!122612 e!803173))

(assert (=> start!122612 true))

(declare-fun array_inv!35706 (array!96895) Bool)

(assert (=> start!122612 (array_inv!35706 a!2831)))

(assert (= (and start!122612 res!955116) b!1419572))

(assert (= (and b!1419572 res!955111) b!1419567))

(assert (= (and b!1419567 res!955113) b!1419566))

(assert (= (and b!1419566 res!955115) b!1419571))

(assert (= (and b!1419571 res!955110) b!1419569))

(assert (= (and b!1419569 res!955114) b!1419568))

(assert (= (and b!1419568 res!955108) b!1419570))

(assert (= (and b!1419570 res!955109) b!1419574))

(assert (= (and b!1419574 res!955112) b!1419573))

(declare-fun m!1310065 () Bool)

(assert (=> b!1419566 m!1310065))

(assert (=> b!1419566 m!1310065))

(declare-fun m!1310067 () Bool)

(assert (=> b!1419566 m!1310067))

(declare-fun m!1310069 () Bool)

(assert (=> b!1419573 m!1310069))

(declare-fun m!1310071 () Bool)

(assert (=> b!1419573 m!1310071))

(assert (=> b!1419573 m!1310071))

(declare-fun m!1310073 () Bool)

(assert (=> b!1419573 m!1310073))

(assert (=> b!1419570 m!1310065))

(assert (=> b!1419570 m!1310065))

(declare-fun m!1310075 () Bool)

(assert (=> b!1419570 m!1310075))

(assert (=> b!1419570 m!1310075))

(assert (=> b!1419570 m!1310065))

(declare-fun m!1310077 () Bool)

(assert (=> b!1419570 m!1310077))

(declare-fun m!1310079 () Bool)

(assert (=> b!1419571 m!1310079))

(assert (=> b!1419574 m!1310069))

(assert (=> b!1419574 m!1310071))

(assert (=> b!1419574 m!1310071))

(declare-fun m!1310081 () Bool)

(assert (=> b!1419574 m!1310081))

(declare-fun m!1310083 () Bool)

(assert (=> start!122612 m!1310083))

(declare-fun m!1310085 () Bool)

(assert (=> start!122612 m!1310085))

(declare-fun m!1310087 () Bool)

(assert (=> b!1419569 m!1310087))

(declare-fun m!1310089 () Bool)

(assert (=> b!1419567 m!1310089))

(assert (=> b!1419567 m!1310089))

(declare-fun m!1310091 () Bool)

(assert (=> b!1419567 m!1310091))

(push 1)

(assert (not b!1419571))

(assert (not b!1419570))

(assert (not start!122612))

(assert (not b!1419566))

(assert (not b!1419573))

(assert (not b!1419569))

(assert (not b!1419574))

