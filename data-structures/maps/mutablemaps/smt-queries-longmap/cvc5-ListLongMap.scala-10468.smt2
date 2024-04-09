; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123118 () Bool)

(assert start!123118)

(declare-fun b!1427185 () Bool)

(declare-fun res!962337 () Bool)

(declare-fun e!806149 () Bool)

(assert (=> b!1427185 (=> (not res!962337) (not e!806149))))

(declare-datatypes ((array!97299 0))(
  ( (array!97300 (arr!46960 (Array (_ BitVec 32) (_ BitVec 64))) (size!47511 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97299)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1427185 (= res!962337 (validKeyInArray!0 (select (arr!46960 a!2831) i!982)))))

(declare-fun b!1427186 () Bool)

(declare-fun e!806146 () Bool)

(assert (=> b!1427186 (= e!806149 e!806146)))

(declare-fun res!962329 () Bool)

(assert (=> b!1427186 (=> (not res!962329) (not e!806146))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11261 0))(
  ( (MissingZero!11261 (index!47435 (_ BitVec 32))) (Found!11261 (index!47436 (_ BitVec 32))) (Intermediate!11261 (undefined!12073 Bool) (index!47437 (_ BitVec 32)) (x!129078 (_ BitVec 32))) (Undefined!11261) (MissingVacant!11261 (index!47438 (_ BitVec 32))) )
))
(declare-fun lt!628447 () SeekEntryResult!11261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97299 (_ BitVec 32)) SeekEntryResult!11261)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1427186 (= res!962329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46960 a!2831) j!81) mask!2608) (select (arr!46960 a!2831) j!81) a!2831 mask!2608) lt!628447))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1427186 (= lt!628447 (Intermediate!11261 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1427187 () Bool)

(declare-fun res!962335 () Bool)

(assert (=> b!1427187 (=> (not res!962335) (not e!806149))))

(assert (=> b!1427187 (= res!962335 (and (= (size!47511 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47511 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47511 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!962327 () Bool)

(assert (=> start!123118 (=> (not res!962327) (not e!806149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123118 (= res!962327 (validMask!0 mask!2608))))

(assert (=> start!123118 e!806149))

(assert (=> start!123118 true))

(declare-fun array_inv!35905 (array!97299) Bool)

(assert (=> start!123118 (array_inv!35905 a!2831)))

(declare-fun b!1427188 () Bool)

(declare-fun e!806148 () Bool)

(assert (=> b!1427188 (= e!806148 (not true))))

(declare-fun e!806147 () Bool)

(assert (=> b!1427188 e!806147))

(declare-fun res!962333 () Bool)

(assert (=> b!1427188 (=> (not res!962333) (not e!806147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97299 (_ BitVec 32)) Bool)

(assert (=> b!1427188 (= res!962333 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48216 0))(
  ( (Unit!48217) )
))
(declare-fun lt!628446 () Unit!48216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48216)

(assert (=> b!1427188 (= lt!628446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1427189 () Bool)

(declare-fun res!962330 () Bool)

(assert (=> b!1427189 (=> (not res!962330) (not e!806148))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1427189 (= res!962330 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1427190 () Bool)

(declare-fun res!962334 () Bool)

(assert (=> b!1427190 (=> (not res!962334) (not e!806149))))

(assert (=> b!1427190 (= res!962334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1427191 () Bool)

(declare-fun res!962332 () Bool)

(assert (=> b!1427191 (=> (not res!962332) (not e!806148))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1427191 (= res!962332 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46960 a!2831) j!81) a!2831 mask!2608) lt!628447))))

(declare-fun b!1427192 () Bool)

(declare-fun res!962326 () Bool)

(assert (=> b!1427192 (=> (not res!962326) (not e!806149))))

(assert (=> b!1427192 (= res!962326 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47511 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47511 a!2831))))))

(declare-fun b!1427193 () Bool)

(assert (=> b!1427193 (= e!806146 e!806148)))

(declare-fun res!962328 () Bool)

(assert (=> b!1427193 (=> (not res!962328) (not e!806148))))

(declare-fun lt!628445 () array!97299)

(declare-fun lt!628444 () (_ BitVec 64))

(declare-fun lt!628443 () SeekEntryResult!11261)

(assert (=> b!1427193 (= res!962328 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628444 mask!2608) lt!628444 lt!628445 mask!2608) lt!628443))))

(assert (=> b!1427193 (= lt!628443 (Intermediate!11261 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1427193 (= lt!628444 (select (store (arr!46960 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1427193 (= lt!628445 (array!97300 (store (arr!46960 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47511 a!2831)))))

(declare-fun b!1427194 () Bool)

(declare-fun res!962331 () Bool)

(assert (=> b!1427194 (=> (not res!962331) (not e!806149))))

(assert (=> b!1427194 (= res!962331 (validKeyInArray!0 (select (arr!46960 a!2831) j!81)))))

(declare-fun b!1427195 () Bool)

(declare-fun res!962325 () Bool)

(assert (=> b!1427195 (=> (not res!962325) (not e!806148))))

(assert (=> b!1427195 (= res!962325 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628444 lt!628445 mask!2608) lt!628443))))

(declare-fun b!1427196 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97299 (_ BitVec 32)) SeekEntryResult!11261)

(assert (=> b!1427196 (= e!806147 (= (seekEntryOrOpen!0 (select (arr!46960 a!2831) j!81) a!2831 mask!2608) (Found!11261 j!81)))))

(declare-fun b!1427197 () Bool)

(declare-fun res!962336 () Bool)

(assert (=> b!1427197 (=> (not res!962336) (not e!806149))))

(declare-datatypes ((List!33650 0))(
  ( (Nil!33647) (Cons!33646 (h!34954 (_ BitVec 64)) (t!48351 List!33650)) )
))
(declare-fun arrayNoDuplicates!0 (array!97299 (_ BitVec 32) List!33650) Bool)

(assert (=> b!1427197 (= res!962336 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33647))))

(assert (= (and start!123118 res!962327) b!1427187))

(assert (= (and b!1427187 res!962335) b!1427185))

(assert (= (and b!1427185 res!962337) b!1427194))

(assert (= (and b!1427194 res!962331) b!1427190))

(assert (= (and b!1427190 res!962334) b!1427197))

(assert (= (and b!1427197 res!962336) b!1427192))

(assert (= (and b!1427192 res!962326) b!1427186))

(assert (= (and b!1427186 res!962329) b!1427193))

(assert (= (and b!1427193 res!962328) b!1427191))

(assert (= (and b!1427191 res!962332) b!1427195))

(assert (= (and b!1427195 res!962325) b!1427189))

(assert (= (and b!1427189 res!962330) b!1427188))

(assert (= (and b!1427188 res!962333) b!1427196))

(declare-fun m!1317617 () Bool)

(assert (=> start!123118 m!1317617))

(declare-fun m!1317619 () Bool)

(assert (=> start!123118 m!1317619))

(declare-fun m!1317621 () Bool)

(assert (=> b!1427195 m!1317621))

(declare-fun m!1317623 () Bool)

(assert (=> b!1427197 m!1317623))

(declare-fun m!1317625 () Bool)

(assert (=> b!1427196 m!1317625))

(assert (=> b!1427196 m!1317625))

(declare-fun m!1317627 () Bool)

(assert (=> b!1427196 m!1317627))

(assert (=> b!1427191 m!1317625))

(assert (=> b!1427191 m!1317625))

(declare-fun m!1317629 () Bool)

(assert (=> b!1427191 m!1317629))

(assert (=> b!1427186 m!1317625))

(assert (=> b!1427186 m!1317625))

(declare-fun m!1317631 () Bool)

(assert (=> b!1427186 m!1317631))

(assert (=> b!1427186 m!1317631))

(assert (=> b!1427186 m!1317625))

(declare-fun m!1317633 () Bool)

(assert (=> b!1427186 m!1317633))

(declare-fun m!1317635 () Bool)

(assert (=> b!1427193 m!1317635))

(assert (=> b!1427193 m!1317635))

(declare-fun m!1317637 () Bool)

(assert (=> b!1427193 m!1317637))

(declare-fun m!1317639 () Bool)

(assert (=> b!1427193 m!1317639))

(declare-fun m!1317641 () Bool)

(assert (=> b!1427193 m!1317641))

(declare-fun m!1317643 () Bool)

(assert (=> b!1427188 m!1317643))

(declare-fun m!1317645 () Bool)

(assert (=> b!1427188 m!1317645))

(assert (=> b!1427194 m!1317625))

(assert (=> b!1427194 m!1317625))

(declare-fun m!1317647 () Bool)

(assert (=> b!1427194 m!1317647))

(declare-fun m!1317649 () Bool)

(assert (=> b!1427185 m!1317649))

(assert (=> b!1427185 m!1317649))

(declare-fun m!1317651 () Bool)

(assert (=> b!1427185 m!1317651))

(declare-fun m!1317653 () Bool)

(assert (=> b!1427190 m!1317653))

(push 1)

