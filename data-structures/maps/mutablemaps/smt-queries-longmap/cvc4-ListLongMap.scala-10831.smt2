; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126878 () Bool)

(assert start!126878)

(declare-fun b!1489113 () Bool)

(declare-fun res!1012714 () Bool)

(declare-fun e!834648 () Bool)

(assert (=> b!1489113 (=> res!1012714 e!834648)))

(declare-fun e!834649 () Bool)

(assert (=> b!1489113 (= res!1012714 e!834649)))

(declare-fun c!137731 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489113 (= c!137731 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489114 () Bool)

(declare-fun res!1012712 () Bool)

(declare-fun e!834654 () Bool)

(assert (=> b!1489114 (=> (not res!1012712) (not e!834654))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489114 (= res!1012712 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!649399 () (_ BitVec 64))

(declare-datatypes ((array!99568 0))(
  ( (array!99569 (arr!48051 (Array (_ BitVec 32) (_ BitVec 64))) (size!48602 (_ BitVec 32))) )
))
(declare-fun lt!649398 () array!99568)

(declare-datatypes ((SeekEntryResult!12314 0))(
  ( (MissingZero!12314 (index!51647 (_ BitVec 32))) (Found!12314 (index!51648 (_ BitVec 32))) (Intermediate!12314 (undefined!13126 Bool) (index!51649 (_ BitVec 32)) (x!133245 (_ BitVec 32))) (Undefined!12314) (MissingVacant!12314 (index!51650 (_ BitVec 32))) )
))
(declare-fun lt!649393 () SeekEntryResult!12314)

(declare-fun b!1489115 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!649394 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99568 (_ BitVec 32)) SeekEntryResult!12314)

(assert (=> b!1489115 (= e!834649 (not (= lt!649393 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649394 lt!649399 lt!649398 mask!2687))))))

(declare-fun b!1489116 () Bool)

(declare-fun res!1012720 () Bool)

(assert (=> b!1489116 (=> (not res!1012720) (not e!834654))))

(declare-fun e!834647 () Bool)

(assert (=> b!1489116 (= res!1012720 e!834647)))

(declare-fun c!137732 () Bool)

(assert (=> b!1489116 (= c!137732 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489117 () Bool)

(declare-fun res!1012722 () Bool)

(declare-fun e!834650 () Bool)

(assert (=> b!1489117 (=> (not res!1012722) (not e!834650))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun a!2862 () array!99568)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1489117 (= res!1012722 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48602 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48602 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48602 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!834655 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1489119 () Bool)

(assert (=> b!1489119 (= e!834655 (and (or (= (select (arr!48051 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48051 a!2862) intermediateBeforeIndex!19) (select (arr!48051 a!2862) j!93))) (let ((bdg!54694 (select (store (arr!48051 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48051 a!2862) index!646) bdg!54694) (= (select (arr!48051 a!2862) index!646) (select (arr!48051 a!2862) j!93))) (= (select (arr!48051 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54694 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1489120 () Bool)

(assert (=> b!1489120 (= e!834647 (= lt!649393 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649399 lt!649398 mask!2687)))))

(declare-fun b!1489121 () Bool)

(declare-fun res!1012724 () Bool)

(assert (=> b!1489121 (=> (not res!1012724) (not e!834650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99568 (_ BitVec 32)) Bool)

(assert (=> b!1489121 (= res!1012724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489122 () Bool)

(declare-fun res!1012719 () Bool)

(assert (=> b!1489122 (=> (not res!1012719) (not e!834650))))

(assert (=> b!1489122 (= res!1012719 (and (= (size!48602 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48602 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48602 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489123 () Bool)

(declare-fun e!834653 () Bool)

(assert (=> b!1489123 (= e!834650 e!834653)))

(declare-fun res!1012718 () Bool)

(assert (=> b!1489123 (=> (not res!1012718) (not e!834653))))

(assert (=> b!1489123 (= res!1012718 (= (select (store (arr!48051 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489123 (= lt!649398 (array!99569 (store (arr!48051 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48602 a!2862)))))

(declare-fun lt!649397 () SeekEntryResult!12314)

(declare-fun b!1489124 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99568 (_ BitVec 32)) SeekEntryResult!12314)

(assert (=> b!1489124 (= e!834649 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649394 intermediateAfterIndex!19 lt!649399 lt!649398 mask!2687) lt!649397)))))

(declare-fun b!1489125 () Bool)

(declare-fun res!1012727 () Bool)

(assert (=> b!1489125 (=> (not res!1012727) (not e!834650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489125 (= res!1012727 (validKeyInArray!0 (select (arr!48051 a!2862) j!93)))))

(declare-fun b!1489126 () Bool)

(declare-fun e!834652 () Bool)

(assert (=> b!1489126 (= e!834652 e!834648)))

(declare-fun res!1012713 () Bool)

(assert (=> b!1489126 (=> res!1012713 e!834648)))

(assert (=> b!1489126 (= res!1012713 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649394 #b00000000000000000000000000000000) (bvsge lt!649394 (size!48602 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489126 (= lt!649394 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489126 (= lt!649397 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649399 lt!649398 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99568 (_ BitVec 32)) SeekEntryResult!12314)

(assert (=> b!1489126 (= lt!649397 (seekEntryOrOpen!0 lt!649399 lt!649398 mask!2687))))

(declare-fun b!1489127 () Bool)

(declare-fun res!1012715 () Bool)

(assert (=> b!1489127 (=> (not res!1012715) (not e!834655))))

(assert (=> b!1489127 (= res!1012715 (= (seekEntryOrOpen!0 (select (arr!48051 a!2862) j!93) a!2862 mask!2687) (Found!12314 j!93)))))

(declare-fun b!1489128 () Bool)

(declare-fun res!1012710 () Bool)

(assert (=> b!1489128 (=> (not res!1012710) (not e!834650))))

(declare-datatypes ((List!34732 0))(
  ( (Nil!34729) (Cons!34728 (h!36111 (_ BitVec 64)) (t!49433 List!34732)) )
))
(declare-fun arrayNoDuplicates!0 (array!99568 (_ BitVec 32) List!34732) Bool)

(assert (=> b!1489128 (= res!1012710 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34729))))

(declare-fun b!1489129 () Bool)

(assert (=> b!1489129 (= e!834654 (not e!834652))))

(declare-fun res!1012711 () Bool)

(assert (=> b!1489129 (=> res!1012711 e!834652)))

(assert (=> b!1489129 (= res!1012711 (or (and (= (select (arr!48051 a!2862) index!646) (select (store (arr!48051 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48051 a!2862) index!646) (select (arr!48051 a!2862) j!93))) (= (select (arr!48051 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489129 e!834655))

(declare-fun res!1012721 () Bool)

(assert (=> b!1489129 (=> (not res!1012721) (not e!834655))))

(assert (=> b!1489129 (= res!1012721 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49916 0))(
  ( (Unit!49917) )
))
(declare-fun lt!649395 () Unit!49916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49916)

(assert (=> b!1489129 (= lt!649395 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1012716 () Bool)

(assert (=> start!126878 (=> (not res!1012716) (not e!834650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126878 (= res!1012716 (validMask!0 mask!2687))))

(assert (=> start!126878 e!834650))

(assert (=> start!126878 true))

(declare-fun array_inv!36996 (array!99568) Bool)

(assert (=> start!126878 (array_inv!36996 a!2862)))

(declare-fun b!1489118 () Bool)

(declare-fun res!1012726 () Bool)

(assert (=> b!1489118 (=> (not res!1012726) (not e!834650))))

(assert (=> b!1489118 (= res!1012726 (validKeyInArray!0 (select (arr!48051 a!2862) i!1006)))))

(declare-fun b!1489130 () Bool)

(assert (=> b!1489130 (= e!834648 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun b!1489131 () Bool)

(declare-fun e!834656 () Bool)

(assert (=> b!1489131 (= e!834653 e!834656)))

(declare-fun res!1012723 () Bool)

(assert (=> b!1489131 (=> (not res!1012723) (not e!834656))))

(declare-fun lt!649396 () SeekEntryResult!12314)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489131 (= res!1012723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48051 a!2862) j!93) mask!2687) (select (arr!48051 a!2862) j!93) a!2862 mask!2687) lt!649396))))

(assert (=> b!1489131 (= lt!649396 (Intermediate!12314 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489132 () Bool)

(assert (=> b!1489132 (= e!834656 e!834654)))

(declare-fun res!1012717 () Bool)

(assert (=> b!1489132 (=> (not res!1012717) (not e!834654))))

(assert (=> b!1489132 (= res!1012717 (= lt!649393 (Intermediate!12314 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489132 (= lt!649393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649399 mask!2687) lt!649399 lt!649398 mask!2687))))

(assert (=> b!1489132 (= lt!649399 (select (store (arr!48051 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489133 () Bool)

(assert (=> b!1489133 (= e!834647 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649399 lt!649398 mask!2687) (seekEntryOrOpen!0 lt!649399 lt!649398 mask!2687)))))

(declare-fun b!1489134 () Bool)

(declare-fun res!1012728 () Bool)

(assert (=> b!1489134 (=> res!1012728 e!834648)))

(assert (=> b!1489134 (= res!1012728 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649394 (select (arr!48051 a!2862) j!93) a!2862 mask!2687) lt!649396)))))

(declare-fun b!1489135 () Bool)

(declare-fun res!1012725 () Bool)

(assert (=> b!1489135 (=> (not res!1012725) (not e!834656))))

(assert (=> b!1489135 (= res!1012725 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48051 a!2862) j!93) a!2862 mask!2687) lt!649396))))

(assert (= (and start!126878 res!1012716) b!1489122))

(assert (= (and b!1489122 res!1012719) b!1489118))

(assert (= (and b!1489118 res!1012726) b!1489125))

(assert (= (and b!1489125 res!1012727) b!1489121))

(assert (= (and b!1489121 res!1012724) b!1489128))

(assert (= (and b!1489128 res!1012710) b!1489117))

(assert (= (and b!1489117 res!1012722) b!1489123))

(assert (= (and b!1489123 res!1012718) b!1489131))

(assert (= (and b!1489131 res!1012723) b!1489135))

(assert (= (and b!1489135 res!1012725) b!1489132))

(assert (= (and b!1489132 res!1012717) b!1489116))

(assert (= (and b!1489116 c!137732) b!1489120))

(assert (= (and b!1489116 (not c!137732)) b!1489133))

(assert (= (and b!1489116 res!1012720) b!1489114))

(assert (= (and b!1489114 res!1012712) b!1489129))

(assert (= (and b!1489129 res!1012721) b!1489127))

(assert (= (and b!1489127 res!1012715) b!1489119))

(assert (= (and b!1489129 (not res!1012711)) b!1489126))

(assert (= (and b!1489126 (not res!1012713)) b!1489134))

(assert (= (and b!1489134 (not res!1012728)) b!1489113))

(assert (= (and b!1489113 c!137731) b!1489115))

(assert (= (and b!1489113 (not c!137731)) b!1489124))

(assert (= (and b!1489113 (not res!1012714)) b!1489130))

(declare-fun m!1373429 () Bool)

(assert (=> b!1489129 m!1373429))

(declare-fun m!1373431 () Bool)

(assert (=> b!1489129 m!1373431))

(declare-fun m!1373433 () Bool)

(assert (=> b!1489129 m!1373433))

(declare-fun m!1373435 () Bool)

(assert (=> b!1489129 m!1373435))

(declare-fun m!1373437 () Bool)

(assert (=> b!1489129 m!1373437))

(declare-fun m!1373439 () Bool)

(assert (=> b!1489129 m!1373439))

(assert (=> b!1489123 m!1373431))

(declare-fun m!1373441 () Bool)

(assert (=> b!1489123 m!1373441))

(assert (=> b!1489119 m!1373431))

(declare-fun m!1373443 () Bool)

(assert (=> b!1489119 m!1373443))

(assert (=> b!1489119 m!1373433))

(assert (=> b!1489119 m!1373435))

(assert (=> b!1489119 m!1373439))

(declare-fun m!1373445 () Bool)

(assert (=> b!1489121 m!1373445))

(assert (=> b!1489127 m!1373439))

(assert (=> b!1489127 m!1373439))

(declare-fun m!1373447 () Bool)

(assert (=> b!1489127 m!1373447))

(assert (=> b!1489131 m!1373439))

(assert (=> b!1489131 m!1373439))

(declare-fun m!1373449 () Bool)

(assert (=> b!1489131 m!1373449))

(assert (=> b!1489131 m!1373449))

(assert (=> b!1489131 m!1373439))

(declare-fun m!1373451 () Bool)

(assert (=> b!1489131 m!1373451))

(assert (=> b!1489134 m!1373439))

(assert (=> b!1489134 m!1373439))

(declare-fun m!1373453 () Bool)

(assert (=> b!1489134 m!1373453))

(declare-fun m!1373455 () Bool)

(assert (=> b!1489126 m!1373455))

(declare-fun m!1373457 () Bool)

(assert (=> b!1489126 m!1373457))

(declare-fun m!1373459 () Bool)

(assert (=> b!1489126 m!1373459))

(declare-fun m!1373461 () Bool)

(assert (=> b!1489132 m!1373461))

(assert (=> b!1489132 m!1373461))

(declare-fun m!1373463 () Bool)

(assert (=> b!1489132 m!1373463))

(assert (=> b!1489132 m!1373431))

(declare-fun m!1373465 () Bool)

(assert (=> b!1489132 m!1373465))

(declare-fun m!1373467 () Bool)

(assert (=> b!1489120 m!1373467))

(assert (=> b!1489125 m!1373439))

(assert (=> b!1489125 m!1373439))

(declare-fun m!1373469 () Bool)

(assert (=> b!1489125 m!1373469))

(declare-fun m!1373471 () Bool)

(assert (=> b!1489128 m!1373471))

(declare-fun m!1373473 () Bool)

(assert (=> b!1489118 m!1373473))

(assert (=> b!1489118 m!1373473))

(declare-fun m!1373475 () Bool)

(assert (=> b!1489118 m!1373475))

(declare-fun m!1373477 () Bool)

(assert (=> b!1489115 m!1373477))

(declare-fun m!1373479 () Bool)

(assert (=> start!126878 m!1373479))

(declare-fun m!1373481 () Bool)

(assert (=> start!126878 m!1373481))

(assert (=> b!1489133 m!1373457))

(assert (=> b!1489133 m!1373459))

(declare-fun m!1373483 () Bool)

(assert (=> b!1489124 m!1373483))

(assert (=> b!1489135 m!1373439))

(assert (=> b!1489135 m!1373439))

(declare-fun m!1373485 () Bool)

(assert (=> b!1489135 m!1373485))

(push 1)

(assert (not b!1489134))

(assert (not b!1489115))

(assert (not b!1489118))

(assert (not b!1489132))

(assert (not b!1489124))

(assert (not b!1489127))

(assert (not b!1489128))

(assert (not b!1489131))

(assert (not start!126878))

(assert (not b!1489120))

(assert (not b!1489133))

(assert (not b!1489125))

(assert (not b!1489126))

(assert (not b!1489135))

(assert (not b!1489129))

(assert (not b!1489121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

