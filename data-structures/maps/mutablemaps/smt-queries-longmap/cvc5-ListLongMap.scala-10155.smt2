; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119734 () Bool)

(assert start!119734)

(declare-fun b!1394192 () Bool)

(declare-fun res!933713 () Bool)

(declare-fun e!789414 () Bool)

(assert (=> b!1394192 (=> (not res!933713) (not e!789414))))

(declare-datatypes ((array!95334 0))(
  ( (array!95335 (arr!46021 (Array (_ BitVec 32) (_ BitVec 64))) (size!46572 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95334)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394192 (= res!933713 (validKeyInArray!0 (select (arr!46021 a!2901) j!112)))))

(declare-fun b!1394193 () Bool)

(declare-fun res!933715 () Bool)

(assert (=> b!1394193 (=> (not res!933715) (not e!789414))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1394193 (= res!933715 (validKeyInArray!0 (select (arr!46021 a!2901) i!1037)))))

(declare-fun b!1394194 () Bool)

(declare-fun res!933714 () Bool)

(declare-fun e!789413 () Bool)

(assert (=> b!1394194 (=> res!933714 e!789413)))

(declare-datatypes ((SeekEntryResult!10360 0))(
  ( (MissingZero!10360 (index!43810 (_ BitVec 32))) (Found!10360 (index!43811 (_ BitVec 32))) (Intermediate!10360 (undefined!11172 Bool) (index!43812 (_ BitVec 32)) (x!125487 (_ BitVec 32))) (Undefined!10360) (MissingVacant!10360 (index!43813 (_ BitVec 32))) )
))
(declare-fun lt!612286 () SeekEntryResult!10360)

(declare-fun lt!612289 () (_ BitVec 32))

(assert (=> b!1394194 (= res!933714 (or (bvslt (x!125487 lt!612286) #b00000000000000000000000000000000) (bvsgt (x!125487 lt!612286) #b01111111111111111111111111111110) (bvslt lt!612289 #b00000000000000000000000000000000) (bvsge lt!612289 (size!46572 a!2901)) (bvslt (index!43812 lt!612286) #b00000000000000000000000000000000) (bvsge (index!43812 lt!612286) (size!46572 a!2901)) (not (= lt!612286 (Intermediate!10360 false (index!43812 lt!612286) (x!125487 lt!612286))))))))

(declare-fun b!1394195 () Bool)

(declare-fun e!789416 () Bool)

(assert (=> b!1394195 (= e!789416 e!789413)))

(declare-fun res!933712 () Bool)

(assert (=> b!1394195 (=> res!933712 e!789413)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!612285 () array!95334)

(declare-fun lt!612288 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95334 (_ BitVec 32)) SeekEntryResult!10360)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394195 (= res!933712 (not (= lt!612286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612288 mask!2840) lt!612288 lt!612285 mask!2840))))))

(assert (=> b!1394195 (= lt!612288 (select (store (arr!46021 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394195 (= lt!612285 (array!95335 (store (arr!46021 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46572 a!2901)))))

(declare-fun b!1394196 () Bool)

(declare-fun res!933710 () Bool)

(assert (=> b!1394196 (=> (not res!933710) (not e!789414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95334 (_ BitVec 32)) Bool)

(assert (=> b!1394196 (= res!933710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394197 () Bool)

(assert (=> b!1394197 (= e!789414 (not e!789416))))

(declare-fun res!933716 () Bool)

(assert (=> b!1394197 (=> res!933716 e!789416)))

(assert (=> b!1394197 (= res!933716 (or (not (is-Intermediate!10360 lt!612286)) (undefined!11172 lt!612286)))))

(declare-fun lt!612283 () SeekEntryResult!10360)

(assert (=> b!1394197 (= lt!612283 (Found!10360 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95334 (_ BitVec 32)) SeekEntryResult!10360)

(assert (=> b!1394197 (= lt!612283 (seekEntryOrOpen!0 (select (arr!46021 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394197 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46674 0))(
  ( (Unit!46675) )
))
(declare-fun lt!612284 () Unit!46674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46674)

(assert (=> b!1394197 (= lt!612284 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394197 (= lt!612286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612289 (select (arr!46021 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394197 (= lt!612289 (toIndex!0 (select (arr!46021 a!2901) j!112) mask!2840))))

(declare-fun res!933717 () Bool)

(assert (=> start!119734 (=> (not res!933717) (not e!789414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119734 (= res!933717 (validMask!0 mask!2840))))

(assert (=> start!119734 e!789414))

(assert (=> start!119734 true))

(declare-fun array_inv!34966 (array!95334) Bool)

(assert (=> start!119734 (array_inv!34966 a!2901)))

(declare-fun b!1394198 () Bool)

(declare-fun res!933709 () Bool)

(assert (=> b!1394198 (=> (not res!933709) (not e!789414))))

(declare-datatypes ((List!32720 0))(
  ( (Nil!32717) (Cons!32716 (h!33949 (_ BitVec 64)) (t!47421 List!32720)) )
))
(declare-fun arrayNoDuplicates!0 (array!95334 (_ BitVec 32) List!32720) Bool)

(assert (=> b!1394198 (= res!933709 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32717))))

(declare-fun b!1394199 () Bool)

(declare-fun res!933711 () Bool)

(assert (=> b!1394199 (=> (not res!933711) (not e!789414))))

(assert (=> b!1394199 (= res!933711 (and (= (size!46572 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46572 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46572 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394200 () Bool)

(assert (=> b!1394200 (= e!789413 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1394200 (= lt!612283 (seekEntryOrOpen!0 lt!612288 lt!612285 mask!2840))))

(declare-fun lt!612287 () Unit!46674)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46674)

(assert (=> b!1394200 (= lt!612287 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612289 (x!125487 lt!612286) (index!43812 lt!612286) mask!2840))))

(assert (= (and start!119734 res!933717) b!1394199))

(assert (= (and b!1394199 res!933711) b!1394193))

(assert (= (and b!1394193 res!933715) b!1394192))

(assert (= (and b!1394192 res!933713) b!1394196))

(assert (= (and b!1394196 res!933710) b!1394198))

(assert (= (and b!1394198 res!933709) b!1394197))

(assert (= (and b!1394197 (not res!933716)) b!1394195))

(assert (= (and b!1394195 (not res!933712)) b!1394194))

(assert (= (and b!1394194 (not res!933714)) b!1394200))

(declare-fun m!1280507 () Bool)

(assert (=> b!1394197 m!1280507))

(declare-fun m!1280509 () Bool)

(assert (=> b!1394197 m!1280509))

(assert (=> b!1394197 m!1280507))

(declare-fun m!1280511 () Bool)

(assert (=> b!1394197 m!1280511))

(assert (=> b!1394197 m!1280507))

(declare-fun m!1280513 () Bool)

(assert (=> b!1394197 m!1280513))

(assert (=> b!1394197 m!1280507))

(declare-fun m!1280515 () Bool)

(assert (=> b!1394197 m!1280515))

(declare-fun m!1280517 () Bool)

(assert (=> b!1394197 m!1280517))

(declare-fun m!1280519 () Bool)

(assert (=> b!1394198 m!1280519))

(declare-fun m!1280521 () Bool)

(assert (=> b!1394195 m!1280521))

(assert (=> b!1394195 m!1280521))

(declare-fun m!1280523 () Bool)

(assert (=> b!1394195 m!1280523))

(declare-fun m!1280525 () Bool)

(assert (=> b!1394195 m!1280525))

(declare-fun m!1280527 () Bool)

(assert (=> b!1394195 m!1280527))

(declare-fun m!1280529 () Bool)

(assert (=> b!1394196 m!1280529))

(declare-fun m!1280531 () Bool)

(assert (=> b!1394200 m!1280531))

(declare-fun m!1280533 () Bool)

(assert (=> b!1394200 m!1280533))

(assert (=> b!1394192 m!1280507))

(assert (=> b!1394192 m!1280507))

(declare-fun m!1280535 () Bool)

(assert (=> b!1394192 m!1280535))

(declare-fun m!1280537 () Bool)

(assert (=> b!1394193 m!1280537))

(assert (=> b!1394193 m!1280537))

(declare-fun m!1280539 () Bool)

(assert (=> b!1394193 m!1280539))

(declare-fun m!1280541 () Bool)

(assert (=> start!119734 m!1280541))

(declare-fun m!1280543 () Bool)

(assert (=> start!119734 m!1280543))

(push 1)

