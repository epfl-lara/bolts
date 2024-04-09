; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122914 () Bool)

(assert start!122914)

(declare-fun b!1425090 () Bool)

(declare-fun res!960635 () Bool)

(declare-fun e!805276 () Bool)

(assert (=> b!1425090 (=> (not res!960635) (not e!805276))))

(declare-datatypes ((array!97197 0))(
  ( (array!97198 (arr!46912 (Array (_ BitVec 32) (_ BitVec 64))) (size!47463 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97197)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97197 (_ BitVec 32)) Bool)

(assert (=> b!1425090 (= res!960635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425091 () Bool)

(declare-fun res!960638 () Bool)

(assert (=> b!1425091 (=> (not res!960638) (not e!805276))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425091 (= res!960638 (validKeyInArray!0 (select (arr!46912 a!2831) i!982)))))

(declare-fun b!1425092 () Bool)

(declare-fun res!960634 () Bool)

(assert (=> b!1425092 (=> (not res!960634) (not e!805276))))

(declare-datatypes ((List!33602 0))(
  ( (Nil!33599) (Cons!33598 (h!34900 (_ BitVec 64)) (t!48303 List!33602)) )
))
(declare-fun arrayNoDuplicates!0 (array!97197 (_ BitVec 32) List!33602) Bool)

(assert (=> b!1425092 (= res!960634 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33599))))

(declare-fun b!1425093 () Bool)

(assert (=> b!1425093 (= e!805276 false)))

(declare-fun lt!627721 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425093 (= lt!627721 (toIndex!0 (select (store (arr!46912 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425094 () Bool)

(declare-fun res!960633 () Bool)

(assert (=> b!1425094 (=> (not res!960633) (not e!805276))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11213 0))(
  ( (MissingZero!11213 (index!47243 (_ BitVec 32))) (Found!11213 (index!47244 (_ BitVec 32))) (Intermediate!11213 (undefined!12025 Bool) (index!47245 (_ BitVec 32)) (x!128890 (_ BitVec 32))) (Undefined!11213) (MissingVacant!11213 (index!47246 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97197 (_ BitVec 32)) SeekEntryResult!11213)

(assert (=> b!1425094 (= res!960633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46912 a!2831) j!81) mask!2608) (select (arr!46912 a!2831) j!81) a!2831 mask!2608) (Intermediate!11213 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425095 () Bool)

(declare-fun res!960636 () Bool)

(assert (=> b!1425095 (=> (not res!960636) (not e!805276))))

(assert (=> b!1425095 (= res!960636 (and (= (size!47463 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47463 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47463 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425096 () Bool)

(declare-fun res!960637 () Bool)

(assert (=> b!1425096 (=> (not res!960637) (not e!805276))))

(assert (=> b!1425096 (= res!960637 (validKeyInArray!0 (select (arr!46912 a!2831) j!81)))))

(declare-fun res!960632 () Bool)

(assert (=> start!122914 (=> (not res!960632) (not e!805276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122914 (= res!960632 (validMask!0 mask!2608))))

(assert (=> start!122914 e!805276))

(assert (=> start!122914 true))

(declare-fun array_inv!35857 (array!97197) Bool)

(assert (=> start!122914 (array_inv!35857 a!2831)))

(declare-fun b!1425097 () Bool)

(declare-fun res!960639 () Bool)

(assert (=> b!1425097 (=> (not res!960639) (not e!805276))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425097 (= res!960639 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47463 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47463 a!2831))))))

(assert (= (and start!122914 res!960632) b!1425095))

(assert (= (and b!1425095 res!960636) b!1425091))

(assert (= (and b!1425091 res!960638) b!1425096))

(assert (= (and b!1425096 res!960637) b!1425090))

(assert (= (and b!1425090 res!960635) b!1425092))

(assert (= (and b!1425092 res!960634) b!1425097))

(assert (= (and b!1425097 res!960639) b!1425094))

(assert (= (and b!1425094 res!960633) b!1425093))

(declare-fun m!1315697 () Bool)

(assert (=> b!1425094 m!1315697))

(assert (=> b!1425094 m!1315697))

(declare-fun m!1315699 () Bool)

(assert (=> b!1425094 m!1315699))

(assert (=> b!1425094 m!1315699))

(assert (=> b!1425094 m!1315697))

(declare-fun m!1315701 () Bool)

(assert (=> b!1425094 m!1315701))

(declare-fun m!1315703 () Bool)

(assert (=> b!1425090 m!1315703))

(assert (=> b!1425096 m!1315697))

(assert (=> b!1425096 m!1315697))

(declare-fun m!1315705 () Bool)

(assert (=> b!1425096 m!1315705))

(declare-fun m!1315707 () Bool)

(assert (=> b!1425092 m!1315707))

(declare-fun m!1315709 () Bool)

(assert (=> b!1425091 m!1315709))

(assert (=> b!1425091 m!1315709))

(declare-fun m!1315711 () Bool)

(assert (=> b!1425091 m!1315711))

(declare-fun m!1315713 () Bool)

(assert (=> b!1425093 m!1315713))

(declare-fun m!1315715 () Bool)

(assert (=> b!1425093 m!1315715))

(assert (=> b!1425093 m!1315715))

(declare-fun m!1315717 () Bool)

(assert (=> b!1425093 m!1315717))

(declare-fun m!1315719 () Bool)

(assert (=> start!122914 m!1315719))

(declare-fun m!1315721 () Bool)

(assert (=> start!122914 m!1315721))

(push 1)

(assert (not start!122914))

(assert (not b!1425094))

(assert (not b!1425096))

(assert (not b!1425090))

(assert (not b!1425092))

(assert (not b!1425091))

(assert (not b!1425093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

