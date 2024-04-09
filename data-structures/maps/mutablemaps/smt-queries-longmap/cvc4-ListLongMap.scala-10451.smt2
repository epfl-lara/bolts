; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122912 () Bool)

(assert start!122912)

(declare-fun b!1425067 () Bool)

(declare-fun res!960614 () Bool)

(declare-fun e!805271 () Bool)

(assert (=> b!1425067 (=> (not res!960614) (not e!805271))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97195 0))(
  ( (array!97196 (arr!46911 (Array (_ BitVec 32) (_ BitVec 64))) (size!47462 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97195)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425067 (= res!960614 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47462 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47462 a!2831))))))

(declare-fun b!1425068 () Bool)

(declare-fun res!960613 () Bool)

(assert (=> b!1425068 (=> (not res!960613) (not e!805271))))

(declare-datatypes ((List!33601 0))(
  ( (Nil!33598) (Cons!33597 (h!34899 (_ BitVec 64)) (t!48302 List!33601)) )
))
(declare-fun arrayNoDuplicates!0 (array!97195 (_ BitVec 32) List!33601) Bool)

(assert (=> b!1425068 (= res!960613 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33598))))

(declare-fun b!1425069 () Bool)

(declare-fun res!960609 () Bool)

(assert (=> b!1425069 (=> (not res!960609) (not e!805271))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97195 (_ BitVec 32)) Bool)

(assert (=> b!1425069 (= res!960609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425070 () Bool)

(assert (=> b!1425070 (= e!805271 false)))

(declare-datatypes ((SeekEntryResult!11212 0))(
  ( (MissingZero!11212 (index!47239 (_ BitVec 32))) (Found!11212 (index!47240 (_ BitVec 32))) (Intermediate!11212 (undefined!12024 Bool) (index!47241 (_ BitVec 32)) (x!128881 (_ BitVec 32))) (Undefined!11212) (MissingVacant!11212 (index!47242 (_ BitVec 32))) )
))
(declare-fun lt!627718 () SeekEntryResult!11212)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97195 (_ BitVec 32)) SeekEntryResult!11212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425070 (= lt!627718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46911 a!2831) j!81) mask!2608) (select (arr!46911 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425071 () Bool)

(declare-fun res!960615 () Bool)

(assert (=> b!1425071 (=> (not res!960615) (not e!805271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425071 (= res!960615 (validKeyInArray!0 (select (arr!46911 a!2831) j!81)))))

(declare-fun b!1425072 () Bool)

(declare-fun res!960612 () Bool)

(assert (=> b!1425072 (=> (not res!960612) (not e!805271))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425072 (= res!960612 (validKeyInArray!0 (select (arr!46911 a!2831) i!982)))))

(declare-fun res!960611 () Bool)

(assert (=> start!122912 (=> (not res!960611) (not e!805271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122912 (= res!960611 (validMask!0 mask!2608))))

(assert (=> start!122912 e!805271))

(assert (=> start!122912 true))

(declare-fun array_inv!35856 (array!97195) Bool)

(assert (=> start!122912 (array_inv!35856 a!2831)))

(declare-fun b!1425073 () Bool)

(declare-fun res!960610 () Bool)

(assert (=> b!1425073 (=> (not res!960610) (not e!805271))))

(assert (=> b!1425073 (= res!960610 (and (= (size!47462 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47462 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47462 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122912 res!960611) b!1425073))

(assert (= (and b!1425073 res!960610) b!1425072))

(assert (= (and b!1425072 res!960612) b!1425071))

(assert (= (and b!1425071 res!960615) b!1425069))

(assert (= (and b!1425069 res!960609) b!1425068))

(assert (= (and b!1425068 res!960613) b!1425067))

(assert (= (and b!1425067 res!960614) b!1425070))

(declare-fun m!1315677 () Bool)

(assert (=> b!1425069 m!1315677))

(declare-fun m!1315679 () Bool)

(assert (=> start!122912 m!1315679))

(declare-fun m!1315681 () Bool)

(assert (=> start!122912 m!1315681))

(declare-fun m!1315683 () Bool)

(assert (=> b!1425070 m!1315683))

(assert (=> b!1425070 m!1315683))

(declare-fun m!1315685 () Bool)

(assert (=> b!1425070 m!1315685))

(assert (=> b!1425070 m!1315685))

(assert (=> b!1425070 m!1315683))

(declare-fun m!1315687 () Bool)

(assert (=> b!1425070 m!1315687))

(assert (=> b!1425071 m!1315683))

(assert (=> b!1425071 m!1315683))

(declare-fun m!1315689 () Bool)

(assert (=> b!1425071 m!1315689))

(declare-fun m!1315691 () Bool)

(assert (=> b!1425072 m!1315691))

(assert (=> b!1425072 m!1315691))

(declare-fun m!1315693 () Bool)

(assert (=> b!1425072 m!1315693))

(declare-fun m!1315695 () Bool)

(assert (=> b!1425068 m!1315695))

(push 1)

(assert (not b!1425072))

(assert (not start!122912))

(assert (not b!1425069))

(assert (not b!1425071))

(assert (not b!1425068))

(assert (not b!1425070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

