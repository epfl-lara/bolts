; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122838 () Bool)

(assert start!122838)

(declare-fun b!1423705 () Bool)

(declare-fun res!959249 () Bool)

(declare-fun e!804719 () Bool)

(assert (=> b!1423705 (=> (not res!959249) (not e!804719))))

(declare-datatypes ((array!97121 0))(
  ( (array!97122 (arr!46874 (Array (_ BitVec 32) (_ BitVec 64))) (size!47425 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97121)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423705 (= res!959249 (validKeyInArray!0 (select (arr!46874 a!2831) j!81)))))

(declare-fun b!1423706 () Bool)

(declare-fun res!959248 () Bool)

(declare-fun e!804715 () Bool)

(assert (=> b!1423706 (=> (not res!959248) (not e!804715))))

(declare-datatypes ((SeekEntryResult!11181 0))(
  ( (MissingZero!11181 (index!47115 (_ BitVec 32))) (Found!11181 (index!47116 (_ BitVec 32))) (Intermediate!11181 (undefined!11993 Bool) (index!47117 (_ BitVec 32)) (x!128754 (_ BitVec 32))) (Undefined!11181) (MissingVacant!11181 (index!47118 (_ BitVec 32))) )
))
(declare-fun lt!627209 () SeekEntryResult!11181)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97121 (_ BitVec 32)) SeekEntryResult!11181)

(assert (=> b!1423706 (= res!959248 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46874 a!2831) j!81) a!2831 mask!2608) lt!627209))))

(declare-fun b!1423707 () Bool)

(declare-fun e!804716 () Bool)

(declare-fun e!804714 () Bool)

(assert (=> b!1423707 (= e!804716 e!804714)))

(declare-fun res!959255 () Bool)

(assert (=> b!1423707 (=> res!959255 e!804714)))

(declare-fun lt!627208 () (_ BitVec 32))

(assert (=> b!1423707 (= res!959255 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627208 #b00000000000000000000000000000000) (bvsge lt!627208 (size!47425 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423707 (= lt!627208 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423708 () Bool)

(declare-fun res!959253 () Bool)

(assert (=> b!1423708 (=> (not res!959253) (not e!804719))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423708 (= res!959253 (and (= (size!47425 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47425 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47425 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423709 () Bool)

(assert (=> b!1423709 (= e!804715 (not e!804716))))

(declare-fun res!959251 () Bool)

(assert (=> b!1423709 (=> res!959251 e!804716)))

(assert (=> b!1423709 (= res!959251 (or (= (select (arr!46874 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46874 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46874 a!2831) index!585) (select (arr!46874 a!2831) j!81)) (= (select (store (arr!46874 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804713 () Bool)

(assert (=> b!1423709 e!804713))

(declare-fun res!959262 () Bool)

(assert (=> b!1423709 (=> (not res!959262) (not e!804713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97121 (_ BitVec 32)) Bool)

(assert (=> b!1423709 (= res!959262 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48146 0))(
  ( (Unit!48147) )
))
(declare-fun lt!627211 () Unit!48146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48146)

(assert (=> b!1423709 (= lt!627211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423710 () Bool)

(declare-fun res!959257 () Bool)

(assert (=> b!1423710 (=> (not res!959257) (not e!804715))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423710 (= res!959257 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423711 () Bool)

(declare-fun res!959256 () Bool)

(assert (=> b!1423711 (=> (not res!959256) (not e!804719))))

(assert (=> b!1423711 (= res!959256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423712 () Bool)

(declare-fun res!959259 () Bool)

(assert (=> b!1423712 (=> (not res!959259) (not e!804715))))

(declare-fun lt!627210 () (_ BitVec 64))

(declare-fun lt!627207 () SeekEntryResult!11181)

(declare-fun lt!627205 () array!97121)

(assert (=> b!1423712 (= res!959259 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627210 lt!627205 mask!2608) lt!627207))))

(declare-fun b!1423713 () Bool)

(declare-fun res!959258 () Bool)

(assert (=> b!1423713 (=> res!959258 e!804714)))

(assert (=> b!1423713 (= res!959258 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627208 (select (arr!46874 a!2831) j!81) a!2831 mask!2608) lt!627209)))))

(declare-fun b!1423714 () Bool)

(declare-fun res!959260 () Bool)

(assert (=> b!1423714 (=> (not res!959260) (not e!804719))))

(declare-datatypes ((List!33564 0))(
  ( (Nil!33561) (Cons!33560 (h!34862 (_ BitVec 64)) (t!48265 List!33564)) )
))
(declare-fun arrayNoDuplicates!0 (array!97121 (_ BitVec 32) List!33564) Bool)

(assert (=> b!1423714 (= res!959260 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33561))))

(declare-fun b!1423715 () Bool)

(declare-fun res!959250 () Bool)

(assert (=> b!1423715 (=> (not res!959250) (not e!804719))))

(assert (=> b!1423715 (= res!959250 (validKeyInArray!0 (select (arr!46874 a!2831) i!982)))))

(declare-fun b!1423716 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97121 (_ BitVec 32)) SeekEntryResult!11181)

(assert (=> b!1423716 (= e!804713 (= (seekEntryOrOpen!0 (select (arr!46874 a!2831) j!81) a!2831 mask!2608) (Found!11181 j!81)))))

(declare-fun res!959261 () Bool)

(assert (=> start!122838 (=> (not res!959261) (not e!804719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122838 (= res!959261 (validMask!0 mask!2608))))

(assert (=> start!122838 e!804719))

(assert (=> start!122838 true))

(declare-fun array_inv!35819 (array!97121) Bool)

(assert (=> start!122838 (array_inv!35819 a!2831)))

(declare-fun b!1423717 () Bool)

(assert (=> b!1423717 (= e!804714 true)))

(declare-fun lt!627206 () SeekEntryResult!11181)

(assert (=> b!1423717 (= lt!627206 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627208 lt!627210 lt!627205 mask!2608))))

(declare-fun b!1423718 () Bool)

(declare-fun e!804718 () Bool)

(assert (=> b!1423718 (= e!804719 e!804718)))

(declare-fun res!959252 () Bool)

(assert (=> b!1423718 (=> (not res!959252) (not e!804718))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423718 (= res!959252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46874 a!2831) j!81) mask!2608) (select (arr!46874 a!2831) j!81) a!2831 mask!2608) lt!627209))))

(assert (=> b!1423718 (= lt!627209 (Intermediate!11181 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423719 () Bool)

(assert (=> b!1423719 (= e!804718 e!804715)))

(declare-fun res!959247 () Bool)

(assert (=> b!1423719 (=> (not res!959247) (not e!804715))))

(assert (=> b!1423719 (= res!959247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627210 mask!2608) lt!627210 lt!627205 mask!2608) lt!627207))))

(assert (=> b!1423719 (= lt!627207 (Intermediate!11181 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423719 (= lt!627210 (select (store (arr!46874 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423719 (= lt!627205 (array!97122 (store (arr!46874 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47425 a!2831)))))

(declare-fun b!1423720 () Bool)

(declare-fun res!959254 () Bool)

(assert (=> b!1423720 (=> (not res!959254) (not e!804719))))

(assert (=> b!1423720 (= res!959254 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47425 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47425 a!2831))))))

(assert (= (and start!122838 res!959261) b!1423708))

(assert (= (and b!1423708 res!959253) b!1423715))

(assert (= (and b!1423715 res!959250) b!1423705))

(assert (= (and b!1423705 res!959249) b!1423711))

(assert (= (and b!1423711 res!959256) b!1423714))

(assert (= (and b!1423714 res!959260) b!1423720))

(assert (= (and b!1423720 res!959254) b!1423718))

(assert (= (and b!1423718 res!959252) b!1423719))

(assert (= (and b!1423719 res!959247) b!1423706))

(assert (= (and b!1423706 res!959248) b!1423712))

(assert (= (and b!1423712 res!959259) b!1423710))

(assert (= (and b!1423710 res!959257) b!1423709))

(assert (= (and b!1423709 res!959262) b!1423716))

(assert (= (and b!1423709 (not res!959251)) b!1423707))

(assert (= (and b!1423707 (not res!959255)) b!1423713))

(assert (= (and b!1423713 (not res!959258)) b!1423717))

(declare-fun m!1314311 () Bool)

(assert (=> b!1423713 m!1314311))

(assert (=> b!1423713 m!1314311))

(declare-fun m!1314313 () Bool)

(assert (=> b!1423713 m!1314313))

(declare-fun m!1314315 () Bool)

(assert (=> b!1423709 m!1314315))

(declare-fun m!1314317 () Bool)

(assert (=> b!1423709 m!1314317))

(declare-fun m!1314319 () Bool)

(assert (=> b!1423709 m!1314319))

(declare-fun m!1314321 () Bool)

(assert (=> b!1423709 m!1314321))

(assert (=> b!1423709 m!1314311))

(declare-fun m!1314323 () Bool)

(assert (=> b!1423709 m!1314323))

(assert (=> b!1423705 m!1314311))

(assert (=> b!1423705 m!1314311))

(declare-fun m!1314325 () Bool)

(assert (=> b!1423705 m!1314325))

(assert (=> b!1423706 m!1314311))

(assert (=> b!1423706 m!1314311))

(declare-fun m!1314327 () Bool)

(assert (=> b!1423706 m!1314327))

(declare-fun m!1314329 () Bool)

(assert (=> b!1423715 m!1314329))

(assert (=> b!1423715 m!1314329))

(declare-fun m!1314331 () Bool)

(assert (=> b!1423715 m!1314331))

(declare-fun m!1314333 () Bool)

(assert (=> b!1423717 m!1314333))

(declare-fun m!1314335 () Bool)

(assert (=> start!122838 m!1314335))

(declare-fun m!1314337 () Bool)

(assert (=> start!122838 m!1314337))

(declare-fun m!1314339 () Bool)

(assert (=> b!1423711 m!1314339))

(assert (=> b!1423716 m!1314311))

(assert (=> b!1423716 m!1314311))

(declare-fun m!1314341 () Bool)

(assert (=> b!1423716 m!1314341))

(declare-fun m!1314343 () Bool)

(assert (=> b!1423719 m!1314343))

(assert (=> b!1423719 m!1314343))

(declare-fun m!1314345 () Bool)

(assert (=> b!1423719 m!1314345))

(assert (=> b!1423719 m!1314315))

(declare-fun m!1314347 () Bool)

(assert (=> b!1423719 m!1314347))

(declare-fun m!1314349 () Bool)

(assert (=> b!1423712 m!1314349))

(declare-fun m!1314351 () Bool)

(assert (=> b!1423714 m!1314351))

(declare-fun m!1314353 () Bool)

(assert (=> b!1423707 m!1314353))

(assert (=> b!1423718 m!1314311))

(assert (=> b!1423718 m!1314311))

(declare-fun m!1314355 () Bool)

(assert (=> b!1423718 m!1314355))

(assert (=> b!1423718 m!1314355))

(assert (=> b!1423718 m!1314311))

(declare-fun m!1314357 () Bool)

(assert (=> b!1423718 m!1314357))

(check-sat (not b!1423714) (not b!1423713) (not b!1423709) (not b!1423718) (not b!1423711) (not b!1423716) (not b!1423717) (not b!1423712) (not b!1423715) (not b!1423706) (not b!1423719) (not b!1423707) (not start!122838) (not b!1423705))
(check-sat)
