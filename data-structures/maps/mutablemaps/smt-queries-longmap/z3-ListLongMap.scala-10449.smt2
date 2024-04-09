; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122898 () Bool)

(assert start!122898)

(declare-fun b!1424920 () Bool)

(declare-fun res!960464 () Bool)

(declare-fun e!805228 () Bool)

(assert (=> b!1424920 (=> (not res!960464) (not e!805228))))

(declare-datatypes ((array!97181 0))(
  ( (array!97182 (arr!46904 (Array (_ BitVec 32) (_ BitVec 64))) (size!47455 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97181)

(declare-datatypes ((List!33594 0))(
  ( (Nil!33591) (Cons!33590 (h!34892 (_ BitVec 64)) (t!48295 List!33594)) )
))
(declare-fun arrayNoDuplicates!0 (array!97181 (_ BitVec 32) List!33594) Bool)

(assert (=> b!1424920 (= res!960464 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33591))))

(declare-fun b!1424921 () Bool)

(declare-fun res!960462 () Bool)

(assert (=> b!1424921 (=> (not res!960462) (not e!805228))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424921 (= res!960462 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47455 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47455 a!2831))))))

(declare-fun b!1424922 () Bool)

(assert (=> b!1424922 (= e!805228 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11205 0))(
  ( (MissingZero!11205 (index!47211 (_ BitVec 32))) (Found!11205 (index!47212 (_ BitVec 32))) (Intermediate!11205 (undefined!12017 Bool) (index!47213 (_ BitVec 32)) (x!128858 (_ BitVec 32))) (Undefined!11205) (MissingVacant!11205 (index!47214 (_ BitVec 32))) )
))
(declare-fun lt!627697 () SeekEntryResult!11205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97181 (_ BitVec 32)) SeekEntryResult!11205)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424922 (= lt!627697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46904 a!2831) j!81) mask!2608) (select (arr!46904 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1424923 () Bool)

(declare-fun res!960468 () Bool)

(assert (=> b!1424923 (=> (not res!960468) (not e!805228))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424923 (= res!960468 (validKeyInArray!0 (select (arr!46904 a!2831) i!982)))))

(declare-fun b!1424924 () Bool)

(declare-fun res!960466 () Bool)

(assert (=> b!1424924 (=> (not res!960466) (not e!805228))))

(assert (=> b!1424924 (= res!960466 (and (= (size!47455 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47455 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47455 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424925 () Bool)

(declare-fun res!960463 () Bool)

(assert (=> b!1424925 (=> (not res!960463) (not e!805228))))

(assert (=> b!1424925 (= res!960463 (validKeyInArray!0 (select (arr!46904 a!2831) j!81)))))

(declare-fun b!1424926 () Bool)

(declare-fun res!960465 () Bool)

(assert (=> b!1424926 (=> (not res!960465) (not e!805228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97181 (_ BitVec 32)) Bool)

(assert (=> b!1424926 (= res!960465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960467 () Bool)

(assert (=> start!122898 (=> (not res!960467) (not e!805228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122898 (= res!960467 (validMask!0 mask!2608))))

(assert (=> start!122898 e!805228))

(assert (=> start!122898 true))

(declare-fun array_inv!35849 (array!97181) Bool)

(assert (=> start!122898 (array_inv!35849 a!2831)))

(assert (= (and start!122898 res!960467) b!1424924))

(assert (= (and b!1424924 res!960466) b!1424923))

(assert (= (and b!1424923 res!960468) b!1424925))

(assert (= (and b!1424925 res!960463) b!1424926))

(assert (= (and b!1424926 res!960465) b!1424920))

(assert (= (and b!1424920 res!960464) b!1424921))

(assert (= (and b!1424921 res!960462) b!1424922))

(declare-fun m!1315537 () Bool)

(assert (=> b!1424923 m!1315537))

(assert (=> b!1424923 m!1315537))

(declare-fun m!1315539 () Bool)

(assert (=> b!1424923 m!1315539))

(declare-fun m!1315541 () Bool)

(assert (=> start!122898 m!1315541))

(declare-fun m!1315543 () Bool)

(assert (=> start!122898 m!1315543))

(declare-fun m!1315545 () Bool)

(assert (=> b!1424925 m!1315545))

(assert (=> b!1424925 m!1315545))

(declare-fun m!1315547 () Bool)

(assert (=> b!1424925 m!1315547))

(declare-fun m!1315549 () Bool)

(assert (=> b!1424920 m!1315549))

(assert (=> b!1424922 m!1315545))

(assert (=> b!1424922 m!1315545))

(declare-fun m!1315551 () Bool)

(assert (=> b!1424922 m!1315551))

(assert (=> b!1424922 m!1315551))

(assert (=> b!1424922 m!1315545))

(declare-fun m!1315553 () Bool)

(assert (=> b!1424922 m!1315553))

(declare-fun m!1315555 () Bool)

(assert (=> b!1424926 m!1315555))

(check-sat (not b!1424923) (not start!122898) (not b!1424925) (not b!1424922) (not b!1424920) (not b!1424926))
