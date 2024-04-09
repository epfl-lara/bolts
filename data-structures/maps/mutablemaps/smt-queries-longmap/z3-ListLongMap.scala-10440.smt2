; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122844 () Bool)

(assert start!122844)

(declare-fun b!1423849 () Bool)

(declare-fun res!959402 () Bool)

(declare-fun e!804778 () Bool)

(assert (=> b!1423849 (=> (not res!959402) (not e!804778))))

(declare-datatypes ((array!97127 0))(
  ( (array!97128 (arr!46877 (Array (_ BitVec 32) (_ BitVec 64))) (size!47428 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97127)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97127 (_ BitVec 32)) Bool)

(assert (=> b!1423849 (= res!959402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423850 () Bool)

(declare-fun res!959393 () Bool)

(assert (=> b!1423850 (=> (not res!959393) (not e!804778))))

(declare-datatypes ((List!33567 0))(
  ( (Nil!33564) (Cons!33563 (h!34865 (_ BitVec 64)) (t!48268 List!33567)) )
))
(declare-fun arrayNoDuplicates!0 (array!97127 (_ BitVec 32) List!33567) Bool)

(assert (=> b!1423850 (= res!959393 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33564))))

(declare-fun b!1423851 () Bool)

(declare-fun res!959403 () Bool)

(declare-fun e!804782 () Bool)

(assert (=> b!1423851 (=> (not res!959403) (not e!804782))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11184 0))(
  ( (MissingZero!11184 (index!47127 (_ BitVec 32))) (Found!11184 (index!47128 (_ BitVec 32))) (Intermediate!11184 (undefined!11996 Bool) (index!47129 (_ BitVec 32)) (x!128765 (_ BitVec 32))) (Undefined!11184) (MissingVacant!11184 (index!47130 (_ BitVec 32))) )
))
(declare-fun lt!627270 () SeekEntryResult!11184)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97127 (_ BitVec 32)) SeekEntryResult!11184)

(assert (=> b!1423851 (= res!959403 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46877 a!2831) j!81) a!2831 mask!2608) lt!627270))))

(declare-fun b!1423852 () Bool)

(declare-fun e!804776 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97127 (_ BitVec 32)) SeekEntryResult!11184)

(assert (=> b!1423852 (= e!804776 (= (seekEntryOrOpen!0 (select (arr!46877 a!2831) j!81) a!2831 mask!2608) (Found!11184 j!81)))))

(declare-fun b!1423853 () Bool)

(declare-fun res!959399 () Bool)

(assert (=> b!1423853 (=> (not res!959399) (not e!804778))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423853 (= res!959399 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47428 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47428 a!2831))))))

(declare-fun b!1423855 () Bool)

(declare-fun res!959394 () Bool)

(assert (=> b!1423855 (=> (not res!959394) (not e!804778))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423855 (= res!959394 (and (= (size!47428 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47428 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47428 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423856 () Bool)

(declare-fun res!959392 () Bool)

(declare-fun e!804779 () Bool)

(assert (=> b!1423856 (=> res!959392 e!804779)))

(declare-fun lt!627271 () (_ BitVec 32))

(assert (=> b!1423856 (= res!959392 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627271 (select (arr!46877 a!2831) j!81) a!2831 mask!2608) lt!627270)))))

(declare-fun b!1423857 () Bool)

(declare-fun res!959397 () Bool)

(assert (=> b!1423857 (=> (not res!959397) (not e!804778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423857 (= res!959397 (validKeyInArray!0 (select (arr!46877 a!2831) i!982)))))

(declare-fun b!1423858 () Bool)

(declare-fun res!959398 () Bool)

(assert (=> b!1423858 (=> (not res!959398) (not e!804778))))

(assert (=> b!1423858 (= res!959398 (validKeyInArray!0 (select (arr!46877 a!2831) j!81)))))

(declare-fun b!1423859 () Bool)

(declare-fun e!804777 () Bool)

(assert (=> b!1423859 (= e!804778 e!804777)))

(declare-fun res!959400 () Bool)

(assert (=> b!1423859 (=> (not res!959400) (not e!804777))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423859 (= res!959400 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46877 a!2831) j!81) mask!2608) (select (arr!46877 a!2831) j!81) a!2831 mask!2608) lt!627270))))

(assert (=> b!1423859 (= lt!627270 (Intermediate!11184 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423860 () Bool)

(declare-fun e!804781 () Bool)

(assert (=> b!1423860 (= e!804782 (not e!804781))))

(declare-fun res!959401 () Bool)

(assert (=> b!1423860 (=> res!959401 e!804781)))

(assert (=> b!1423860 (= res!959401 (or (= (select (arr!46877 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46877 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46877 a!2831) index!585) (select (arr!46877 a!2831) j!81)) (= (select (store (arr!46877 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423860 e!804776))

(declare-fun res!959404 () Bool)

(assert (=> b!1423860 (=> (not res!959404) (not e!804776))))

(assert (=> b!1423860 (= res!959404 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48152 0))(
  ( (Unit!48153) )
))
(declare-fun lt!627274 () Unit!48152)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48152)

(assert (=> b!1423860 (= lt!627274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!959396 () Bool)

(assert (=> start!122844 (=> (not res!959396) (not e!804778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122844 (= res!959396 (validMask!0 mask!2608))))

(assert (=> start!122844 e!804778))

(assert (=> start!122844 true))

(declare-fun array_inv!35822 (array!97127) Bool)

(assert (=> start!122844 (array_inv!35822 a!2831)))

(declare-fun b!1423854 () Bool)

(declare-fun res!959406 () Bool)

(assert (=> b!1423854 (=> (not res!959406) (not e!804782))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423854 (= res!959406 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423861 () Bool)

(assert (=> b!1423861 (= e!804779 true)))

(declare-fun lt!627272 () array!97127)

(declare-fun lt!627269 () (_ BitVec 64))

(declare-fun lt!627273 () SeekEntryResult!11184)

(assert (=> b!1423861 (= lt!627273 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627271 lt!627269 lt!627272 mask!2608))))

(declare-fun b!1423862 () Bool)

(declare-fun res!959395 () Bool)

(assert (=> b!1423862 (=> (not res!959395) (not e!804782))))

(declare-fun lt!627268 () SeekEntryResult!11184)

(assert (=> b!1423862 (= res!959395 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627269 lt!627272 mask!2608) lt!627268))))

(declare-fun b!1423863 () Bool)

(assert (=> b!1423863 (= e!804781 e!804779)))

(declare-fun res!959405 () Bool)

(assert (=> b!1423863 (=> res!959405 e!804779)))

(assert (=> b!1423863 (= res!959405 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627271 #b00000000000000000000000000000000) (bvsge lt!627271 (size!47428 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423863 (= lt!627271 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423864 () Bool)

(assert (=> b!1423864 (= e!804777 e!804782)))

(declare-fun res!959391 () Bool)

(assert (=> b!1423864 (=> (not res!959391) (not e!804782))))

(assert (=> b!1423864 (= res!959391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627269 mask!2608) lt!627269 lt!627272 mask!2608) lt!627268))))

(assert (=> b!1423864 (= lt!627268 (Intermediate!11184 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423864 (= lt!627269 (select (store (arr!46877 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423864 (= lt!627272 (array!97128 (store (arr!46877 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47428 a!2831)))))

(assert (= (and start!122844 res!959396) b!1423855))

(assert (= (and b!1423855 res!959394) b!1423857))

(assert (= (and b!1423857 res!959397) b!1423858))

(assert (= (and b!1423858 res!959398) b!1423849))

(assert (= (and b!1423849 res!959402) b!1423850))

(assert (= (and b!1423850 res!959393) b!1423853))

(assert (= (and b!1423853 res!959399) b!1423859))

(assert (= (and b!1423859 res!959400) b!1423864))

(assert (= (and b!1423864 res!959391) b!1423851))

(assert (= (and b!1423851 res!959403) b!1423862))

(assert (= (and b!1423862 res!959395) b!1423854))

(assert (= (and b!1423854 res!959406) b!1423860))

(assert (= (and b!1423860 res!959404) b!1423852))

(assert (= (and b!1423860 (not res!959401)) b!1423863))

(assert (= (and b!1423863 (not res!959405)) b!1423856))

(assert (= (and b!1423856 (not res!959392)) b!1423861))

(declare-fun m!1314455 () Bool)

(assert (=> b!1423850 m!1314455))

(declare-fun m!1314457 () Bool)

(assert (=> b!1423852 m!1314457))

(assert (=> b!1423852 m!1314457))

(declare-fun m!1314459 () Bool)

(assert (=> b!1423852 m!1314459))

(declare-fun m!1314461 () Bool)

(assert (=> b!1423864 m!1314461))

(assert (=> b!1423864 m!1314461))

(declare-fun m!1314463 () Bool)

(assert (=> b!1423864 m!1314463))

(declare-fun m!1314465 () Bool)

(assert (=> b!1423864 m!1314465))

(declare-fun m!1314467 () Bool)

(assert (=> b!1423864 m!1314467))

(assert (=> b!1423860 m!1314465))

(declare-fun m!1314469 () Bool)

(assert (=> b!1423860 m!1314469))

(declare-fun m!1314471 () Bool)

(assert (=> b!1423860 m!1314471))

(declare-fun m!1314473 () Bool)

(assert (=> b!1423860 m!1314473))

(assert (=> b!1423860 m!1314457))

(declare-fun m!1314475 () Bool)

(assert (=> b!1423860 m!1314475))

(assert (=> b!1423858 m!1314457))

(assert (=> b!1423858 m!1314457))

(declare-fun m!1314477 () Bool)

(assert (=> b!1423858 m!1314477))

(declare-fun m!1314479 () Bool)

(assert (=> b!1423849 m!1314479))

(declare-fun m!1314481 () Bool)

(assert (=> start!122844 m!1314481))

(declare-fun m!1314483 () Bool)

(assert (=> start!122844 m!1314483))

(declare-fun m!1314485 () Bool)

(assert (=> b!1423861 m!1314485))

(assert (=> b!1423856 m!1314457))

(assert (=> b!1423856 m!1314457))

(declare-fun m!1314487 () Bool)

(assert (=> b!1423856 m!1314487))

(assert (=> b!1423859 m!1314457))

(assert (=> b!1423859 m!1314457))

(declare-fun m!1314489 () Bool)

(assert (=> b!1423859 m!1314489))

(assert (=> b!1423859 m!1314489))

(assert (=> b!1423859 m!1314457))

(declare-fun m!1314491 () Bool)

(assert (=> b!1423859 m!1314491))

(assert (=> b!1423851 m!1314457))

(assert (=> b!1423851 m!1314457))

(declare-fun m!1314493 () Bool)

(assert (=> b!1423851 m!1314493))

(declare-fun m!1314495 () Bool)

(assert (=> b!1423863 m!1314495))

(declare-fun m!1314497 () Bool)

(assert (=> b!1423862 m!1314497))

(declare-fun m!1314499 () Bool)

(assert (=> b!1423857 m!1314499))

(assert (=> b!1423857 m!1314499))

(declare-fun m!1314501 () Bool)

(assert (=> b!1423857 m!1314501))

(check-sat (not b!1423864) (not b!1423852) (not b!1423861) (not b!1423860) (not b!1423856) (not b!1423863) (not b!1423857) (not b!1423862) (not b!1423859) (not b!1423850) (not start!122844) (not b!1423858) (not b!1423851) (not b!1423849))
(check-sat)
