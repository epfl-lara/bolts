; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122622 () Bool)

(assert start!122622)

(declare-fun b!1419692 () Bool)

(declare-fun res!955239 () Bool)

(declare-fun e!803203 () Bool)

(assert (=> b!1419692 (=> (not res!955239) (not e!803203))))

(declare-datatypes ((array!96905 0))(
  ( (array!96906 (arr!46766 (Array (_ BitVec 32) (_ BitVec 64))) (size!47317 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96905)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419692 (= res!955239 (validKeyInArray!0 (select (arr!46766 a!2831) j!81)))))

(declare-fun b!1419693 () Bool)

(declare-fun res!955242 () Bool)

(assert (=> b!1419693 (=> (not res!955242) (not e!803203))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96905 (_ BitVec 32)) Bool)

(assert (=> b!1419693 (= res!955242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419694 () Bool)

(assert (=> b!1419694 (= e!803203 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun res!955237 () Bool)

(assert (=> start!122622 (=> (not res!955237) (not e!803203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122622 (= res!955237 (validMask!0 mask!2608))))

(assert (=> start!122622 e!803203))

(assert (=> start!122622 true))

(declare-fun array_inv!35711 (array!96905) Bool)

(assert (=> start!122622 (array_inv!35711 a!2831)))

(declare-fun b!1419695 () Bool)

(declare-fun res!955234 () Bool)

(assert (=> b!1419695 (=> (not res!955234) (not e!803203))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11073 0))(
  ( (MissingZero!11073 (index!46683 (_ BitVec 32))) (Found!11073 (index!46684 (_ BitVec 32))) (Intermediate!11073 (undefined!11885 Bool) (index!46685 (_ BitVec 32)) (x!128358 (_ BitVec 32))) (Undefined!11073) (MissingVacant!11073 (index!46686 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96905 (_ BitVec 32)) SeekEntryResult!11073)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419695 (= res!955234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46766 a!2831) j!81) mask!2608) (select (arr!46766 a!2831) j!81) a!2831 mask!2608) (Intermediate!11073 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419696 () Bool)

(declare-fun res!955240 () Bool)

(assert (=> b!1419696 (=> (not res!955240) (not e!803203))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1419696 (= res!955240 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47317 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47317 a!2831))))))

(declare-fun b!1419697 () Bool)

(declare-fun res!955241 () Bool)

(assert (=> b!1419697 (=> (not res!955241) (not e!803203))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419697 (= res!955241 (and (= (size!47317 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47317 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47317 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419698 () Bool)

(declare-fun res!955238 () Bool)

(assert (=> b!1419698 (=> (not res!955238) (not e!803203))))

(declare-datatypes ((List!33456 0))(
  ( (Nil!33453) (Cons!33452 (h!34754 (_ BitVec 64)) (t!48157 List!33456)) )
))
(declare-fun arrayNoDuplicates!0 (array!96905 (_ BitVec 32) List!33456) Bool)

(assert (=> b!1419698 (= res!955238 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33453))))

(declare-fun b!1419699 () Bool)

(declare-fun res!955235 () Bool)

(assert (=> b!1419699 (=> (not res!955235) (not e!803203))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1419699 (= res!955235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46766 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46766 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96906 (store (arr!46766 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47317 a!2831)) mask!2608) (Intermediate!11073 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1419700 () Bool)

(declare-fun res!955236 () Bool)

(assert (=> b!1419700 (=> (not res!955236) (not e!803203))))

(assert (=> b!1419700 (= res!955236 (validKeyInArray!0 (select (arr!46766 a!2831) i!982)))))

(assert (= (and start!122622 res!955237) b!1419697))

(assert (= (and b!1419697 res!955241) b!1419700))

(assert (= (and b!1419700 res!955236) b!1419692))

(assert (= (and b!1419692 res!955239) b!1419693))

(assert (= (and b!1419693 res!955242) b!1419698))

(assert (= (and b!1419698 res!955238) b!1419696))

(assert (= (and b!1419696 res!955240) b!1419695))

(assert (= (and b!1419695 res!955234) b!1419699))

(assert (= (and b!1419699 res!955235) b!1419694))

(declare-fun m!1310205 () Bool)

(assert (=> b!1419699 m!1310205))

(declare-fun m!1310207 () Bool)

(assert (=> b!1419699 m!1310207))

(assert (=> b!1419699 m!1310207))

(declare-fun m!1310209 () Bool)

(assert (=> b!1419699 m!1310209))

(assert (=> b!1419699 m!1310209))

(assert (=> b!1419699 m!1310207))

(declare-fun m!1310211 () Bool)

(assert (=> b!1419699 m!1310211))

(declare-fun m!1310213 () Bool)

(assert (=> b!1419695 m!1310213))

(assert (=> b!1419695 m!1310213))

(declare-fun m!1310215 () Bool)

(assert (=> b!1419695 m!1310215))

(assert (=> b!1419695 m!1310215))

(assert (=> b!1419695 m!1310213))

(declare-fun m!1310217 () Bool)

(assert (=> b!1419695 m!1310217))

(assert (=> b!1419692 m!1310213))

(assert (=> b!1419692 m!1310213))

(declare-fun m!1310219 () Bool)

(assert (=> b!1419692 m!1310219))

(declare-fun m!1310221 () Bool)

(assert (=> b!1419700 m!1310221))

(assert (=> b!1419700 m!1310221))

(declare-fun m!1310223 () Bool)

(assert (=> b!1419700 m!1310223))

(declare-fun m!1310225 () Bool)

(assert (=> b!1419693 m!1310225))

(declare-fun m!1310227 () Bool)

(assert (=> b!1419698 m!1310227))

(declare-fun m!1310229 () Bool)

(assert (=> start!122622 m!1310229))

(declare-fun m!1310231 () Bool)

(assert (=> start!122622 m!1310231))

(check-sat (not b!1419698) (not b!1419699) (not b!1419693) (not start!122622) (not b!1419695) (not b!1419700) (not b!1419692))
(check-sat)
