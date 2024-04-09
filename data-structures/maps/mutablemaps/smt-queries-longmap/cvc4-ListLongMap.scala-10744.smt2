; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125648 () Bool)

(assert start!125648)

(declare-fun b!1469891 () Bool)

(declare-fun res!998421 () Bool)

(declare-fun e!825168 () Bool)

(assert (=> b!1469891 (=> (not res!998421) (not e!825168))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99013 0))(
  ( (array!99014 (arr!47790 (Array (_ BitVec 32) (_ BitVec 64))) (size!48341 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99013)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12053 0))(
  ( (MissingZero!12053 (index!50603 (_ BitVec 32))) (Found!12053 (index!50604 (_ BitVec 32))) (Intermediate!12053 (undefined!12865 Bool) (index!50605 (_ BitVec 32)) (x!132177 (_ BitVec 32))) (Undefined!12053) (MissingVacant!12053 (index!50606 (_ BitVec 32))) )
))
(declare-fun lt!642676 () SeekEntryResult!12053)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99013 (_ BitVec 32)) SeekEntryResult!12053)

(assert (=> b!1469891 (= res!998421 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47790 a!2862) j!93) a!2862 mask!2687) lt!642676))))

(declare-fun b!1469892 () Bool)

(declare-fun res!998417 () Bool)

(declare-fun e!825170 () Bool)

(assert (=> b!1469892 (=> (not res!998417) (not e!825170))))

(declare-datatypes ((List!34471 0))(
  ( (Nil!34468) (Cons!34467 (h!35817 (_ BitVec 64)) (t!49172 List!34471)) )
))
(declare-fun arrayNoDuplicates!0 (array!99013 (_ BitVec 32) List!34471) Bool)

(assert (=> b!1469892 (= res!998417 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34468))))

(declare-fun b!1469893 () Bool)

(declare-fun res!998426 () Bool)

(assert (=> b!1469893 (=> (not res!998426) (not e!825170))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469893 (= res!998426 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48341 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48341 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48341 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469894 () Bool)

(declare-fun e!825173 () Bool)

(assert (=> b!1469894 (= e!825168 e!825173)))

(declare-fun res!998418 () Bool)

(assert (=> b!1469894 (=> (not res!998418) (not e!825173))))

(declare-fun lt!642679 () SeekEntryResult!12053)

(assert (=> b!1469894 (= res!998418 (= lt!642679 (Intermediate!12053 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642675 () (_ BitVec 64))

(declare-fun lt!642677 () array!99013)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469894 (= lt!642679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642675 mask!2687) lt!642675 lt!642677 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469894 (= lt!642675 (select (store (arr!47790 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469895 () Bool)

(declare-fun e!825172 () Bool)

(assert (=> b!1469895 (= e!825172 e!825168)))

(declare-fun res!998425 () Bool)

(assert (=> b!1469895 (=> (not res!998425) (not e!825168))))

(assert (=> b!1469895 (= res!998425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47790 a!2862) j!93) mask!2687) (select (arr!47790 a!2862) j!93) a!2862 mask!2687) lt!642676))))

(assert (=> b!1469895 (= lt!642676 (Intermediate!12053 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469897 () Bool)

(declare-fun e!825171 () Bool)

(assert (=> b!1469897 (= e!825171 (= lt!642679 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642675 lt!642677 mask!2687)))))

(declare-fun b!1469898 () Bool)

(declare-fun res!998416 () Bool)

(assert (=> b!1469898 (=> (not res!998416) (not e!825170))))

(assert (=> b!1469898 (= res!998416 (and (= (size!48341 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48341 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48341 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469899 () Bool)

(declare-fun res!998419 () Bool)

(assert (=> b!1469899 (=> (not res!998419) (not e!825170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99013 (_ BitVec 32)) Bool)

(assert (=> b!1469899 (= res!998419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469900 () Bool)

(assert (=> b!1469900 (= e!825170 e!825172)))

(declare-fun res!998427 () Bool)

(assert (=> b!1469900 (=> (not res!998427) (not e!825172))))

(assert (=> b!1469900 (= res!998427 (= (select (store (arr!47790 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469900 (= lt!642677 (array!99014 (store (arr!47790 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48341 a!2862)))))

(declare-fun b!1469901 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99013 (_ BitVec 32)) SeekEntryResult!12053)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99013 (_ BitVec 32)) SeekEntryResult!12053)

(assert (=> b!1469901 (= e!825171 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642675 lt!642677 mask!2687) (seekEntryOrOpen!0 lt!642675 lt!642677 mask!2687)))))

(declare-fun b!1469902 () Bool)

(declare-fun res!998424 () Bool)

(assert (=> b!1469902 (=> (not res!998424) (not e!825170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469902 (= res!998424 (validKeyInArray!0 (select (arr!47790 a!2862) i!1006)))))

(declare-fun res!998422 () Bool)

(assert (=> start!125648 (=> (not res!998422) (not e!825170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125648 (= res!998422 (validMask!0 mask!2687))))

(assert (=> start!125648 e!825170))

(assert (=> start!125648 true))

(declare-fun array_inv!36735 (array!99013) Bool)

(assert (=> start!125648 (array_inv!36735 a!2862)))

(declare-fun b!1469896 () Bool)

(declare-fun res!998423 () Bool)

(assert (=> b!1469896 (=> (not res!998423) (not e!825173))))

(assert (=> b!1469896 (= res!998423 e!825171)))

(declare-fun c!135251 () Bool)

(assert (=> b!1469896 (= c!135251 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469903 () Bool)

(assert (=> b!1469903 (= e!825173 (not true))))

(assert (=> b!1469903 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49394 0))(
  ( (Unit!49395) )
))
(declare-fun lt!642678 () Unit!49394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49394)

(assert (=> b!1469903 (= lt!642678 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1469904 () Bool)

(declare-fun res!998415 () Bool)

(assert (=> b!1469904 (=> (not res!998415) (not e!825173))))

(assert (=> b!1469904 (= res!998415 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1469905 () Bool)

(declare-fun res!998420 () Bool)

(assert (=> b!1469905 (=> (not res!998420) (not e!825170))))

(assert (=> b!1469905 (= res!998420 (validKeyInArray!0 (select (arr!47790 a!2862) j!93)))))

(assert (= (and start!125648 res!998422) b!1469898))

(assert (= (and b!1469898 res!998416) b!1469902))

(assert (= (and b!1469902 res!998424) b!1469905))

(assert (= (and b!1469905 res!998420) b!1469899))

(assert (= (and b!1469899 res!998419) b!1469892))

(assert (= (and b!1469892 res!998417) b!1469893))

(assert (= (and b!1469893 res!998426) b!1469900))

(assert (= (and b!1469900 res!998427) b!1469895))

(assert (= (and b!1469895 res!998425) b!1469891))

(assert (= (and b!1469891 res!998421) b!1469894))

(assert (= (and b!1469894 res!998418) b!1469896))

(assert (= (and b!1469896 c!135251) b!1469897))

(assert (= (and b!1469896 (not c!135251)) b!1469901))

(assert (= (and b!1469896 res!998423) b!1469904))

(assert (= (and b!1469904 res!998415) b!1469903))

(declare-fun m!1357089 () Bool)

(assert (=> b!1469901 m!1357089))

(declare-fun m!1357091 () Bool)

(assert (=> b!1469901 m!1357091))

(declare-fun m!1357093 () Bool)

(assert (=> b!1469905 m!1357093))

(assert (=> b!1469905 m!1357093))

(declare-fun m!1357095 () Bool)

(assert (=> b!1469905 m!1357095))

(declare-fun m!1357097 () Bool)

(assert (=> b!1469902 m!1357097))

(assert (=> b!1469902 m!1357097))

(declare-fun m!1357099 () Bool)

(assert (=> b!1469902 m!1357099))

(declare-fun m!1357101 () Bool)

(assert (=> b!1469897 m!1357101))

(declare-fun m!1357103 () Bool)

(assert (=> b!1469892 m!1357103))

(declare-fun m!1357105 () Bool)

(assert (=> start!125648 m!1357105))

(declare-fun m!1357107 () Bool)

(assert (=> start!125648 m!1357107))

(declare-fun m!1357109 () Bool)

(assert (=> b!1469900 m!1357109))

(declare-fun m!1357111 () Bool)

(assert (=> b!1469900 m!1357111))

(declare-fun m!1357113 () Bool)

(assert (=> b!1469903 m!1357113))

(declare-fun m!1357115 () Bool)

(assert (=> b!1469903 m!1357115))

(assert (=> b!1469891 m!1357093))

(assert (=> b!1469891 m!1357093))

(declare-fun m!1357117 () Bool)

(assert (=> b!1469891 m!1357117))

(declare-fun m!1357119 () Bool)

(assert (=> b!1469899 m!1357119))

(declare-fun m!1357121 () Bool)

(assert (=> b!1469894 m!1357121))

(assert (=> b!1469894 m!1357121))

(declare-fun m!1357123 () Bool)

(assert (=> b!1469894 m!1357123))

(assert (=> b!1469894 m!1357109))

(declare-fun m!1357125 () Bool)

(assert (=> b!1469894 m!1357125))

(assert (=> b!1469895 m!1357093))

(assert (=> b!1469895 m!1357093))

(declare-fun m!1357127 () Bool)

(assert (=> b!1469895 m!1357127))

(assert (=> b!1469895 m!1357127))

(assert (=> b!1469895 m!1357093))

(declare-fun m!1357129 () Bool)

(assert (=> b!1469895 m!1357129))

(push 1)

