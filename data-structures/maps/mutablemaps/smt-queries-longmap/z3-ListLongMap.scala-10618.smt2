; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124890 () Bool)

(assert start!124890)

(declare-fun b!1449310 () Bool)

(declare-fun res!980873 () Bool)

(declare-fun e!816199 () Bool)

(assert (=> b!1449310 (=> (not res!980873) (not e!816199))))

(declare-datatypes ((array!98255 0))(
  ( (array!98256 (arr!47411 (Array (_ BitVec 32) (_ BitVec 64))) (size!47962 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98255)

(declare-datatypes ((List!34092 0))(
  ( (Nil!34089) (Cons!34088 (h!35438 (_ BitVec 64)) (t!48793 List!34092)) )
))
(declare-fun arrayNoDuplicates!0 (array!98255 (_ BitVec 32) List!34092) Bool)

(assert (=> b!1449310 (= res!980873 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34089))))

(declare-fun e!816204 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!635824 () array!98255)

(declare-fun lt!635822 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11686 0))(
  ( (MissingZero!11686 (index!49135 (_ BitVec 32))) (Found!11686 (index!49136 (_ BitVec 32))) (Intermediate!11686 (undefined!12498 Bool) (index!49137 (_ BitVec 32)) (x!130802 (_ BitVec 32))) (Undefined!11686) (MissingVacant!11686 (index!49138 (_ BitVec 32))) )
))
(declare-fun lt!635827 () SeekEntryResult!11686)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1449311 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98255 (_ BitVec 32)) SeekEntryResult!11686)

(assert (=> b!1449311 (= e!816204 (= lt!635827 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635822 lt!635824 mask!2687)))))

(declare-fun res!980864 () Bool)

(assert (=> start!124890 (=> (not res!980864) (not e!816199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124890 (= res!980864 (validMask!0 mask!2687))))

(assert (=> start!124890 e!816199))

(assert (=> start!124890 true))

(declare-fun array_inv!36356 (array!98255) Bool)

(assert (=> start!124890 (array_inv!36356 a!2862)))

(declare-fun b!1449312 () Bool)

(declare-fun res!980871 () Bool)

(assert (=> b!1449312 (=> (not res!980871) (not e!816199))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449312 (= res!980871 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47962 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47962 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47962 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449313 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98255 (_ BitVec 32)) SeekEntryResult!11686)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98255 (_ BitVec 32)) SeekEntryResult!11686)

(assert (=> b!1449313 (= e!816204 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635822 lt!635824 mask!2687) (seekEntryOrOpen!0 lt!635822 lt!635824 mask!2687)))))

(declare-fun b!1449314 () Bool)

(declare-fun e!816201 () Bool)

(assert (=> b!1449314 (= e!816199 e!816201)))

(declare-fun res!980876 () Bool)

(assert (=> b!1449314 (=> (not res!980876) (not e!816201))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449314 (= res!980876 (= (select (store (arr!47411 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449314 (= lt!635824 (array!98256 (store (arr!47411 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47962 a!2862)))))

(declare-fun b!1449315 () Bool)

(declare-fun res!980867 () Bool)

(declare-fun e!816205 () Bool)

(assert (=> b!1449315 (=> (not res!980867) (not e!816205))))

(declare-fun lt!635823 () SeekEntryResult!11686)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1449315 (= res!980867 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47411 a!2862) j!93) a!2862 mask!2687) lt!635823))))

(declare-fun b!1449316 () Bool)

(declare-fun res!980866 () Bool)

(assert (=> b!1449316 (=> (not res!980866) (not e!816199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449316 (= res!980866 (validKeyInArray!0 (select (arr!47411 a!2862) j!93)))))

(declare-fun b!1449317 () Bool)

(declare-fun e!816206 () Bool)

(assert (=> b!1449317 (= e!816205 e!816206)))

(declare-fun res!980869 () Bool)

(assert (=> b!1449317 (=> (not res!980869) (not e!816206))))

(assert (=> b!1449317 (= res!980869 (= lt!635827 (Intermediate!11686 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449317 (= lt!635827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635822 mask!2687) lt!635822 lt!635824 mask!2687))))

(assert (=> b!1449317 (= lt!635822 (select (store (arr!47411 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449318 () Bool)

(declare-fun res!980875 () Bool)

(assert (=> b!1449318 (=> (not res!980875) (not e!816199))))

(assert (=> b!1449318 (= res!980875 (and (= (size!47962 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47962 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47962 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449319 () Bool)

(declare-fun res!980880 () Bool)

(assert (=> b!1449319 (=> (not res!980880) (not e!816206))))

(assert (=> b!1449319 (= res!980880 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449320 () Bool)

(declare-fun e!816197 () Bool)

(assert (=> b!1449320 (= e!816197 true)))

(declare-fun lt!635826 () SeekEntryResult!11686)

(assert (=> b!1449320 (= lt!635826 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47411 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449321 () Bool)

(declare-fun res!980877 () Bool)

(assert (=> b!1449321 (=> (not res!980877) (not e!816199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98255 (_ BitVec 32)) Bool)

(assert (=> b!1449321 (= res!980877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449322 () Bool)

(declare-fun e!816202 () Bool)

(declare-fun e!816198 () Bool)

(assert (=> b!1449322 (= e!816202 e!816198)))

(declare-fun res!980879 () Bool)

(assert (=> b!1449322 (=> res!980879 e!816198)))

(assert (=> b!1449322 (= res!980879 (or (and (= (select (arr!47411 a!2862) index!646) (select (store (arr!47411 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47411 a!2862) index!646) (select (arr!47411 a!2862) j!93))) (not (= (select (arr!47411 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449323 () Bool)

(declare-fun res!980870 () Bool)

(assert (=> b!1449323 (=> (not res!980870) (not e!816199))))

(assert (=> b!1449323 (= res!980870 (validKeyInArray!0 (select (arr!47411 a!2862) i!1006)))))

(declare-fun b!1449324 () Bool)

(declare-fun res!980865 () Bool)

(assert (=> b!1449324 (=> (not res!980865) (not e!816206))))

(assert (=> b!1449324 (= res!980865 e!816204)))

(declare-fun c!133736 () Bool)

(assert (=> b!1449324 (= c!133736 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449325 () Bool)

(declare-fun e!816200 () Bool)

(assert (=> b!1449325 (= e!816198 e!816200)))

(declare-fun res!980868 () Bool)

(assert (=> b!1449325 (=> (not res!980868) (not e!816200))))

(declare-fun lt!635825 () SeekEntryResult!11686)

(assert (=> b!1449325 (= res!980868 (= lt!635825 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47411 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449326 () Bool)

(assert (=> b!1449326 (= e!816206 (not e!816197))))

(declare-fun res!980872 () Bool)

(assert (=> b!1449326 (=> res!980872 e!816197)))

(assert (=> b!1449326 (= res!980872 (or (and (= (select (arr!47411 a!2862) index!646) (select (store (arr!47411 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47411 a!2862) index!646) (select (arr!47411 a!2862) j!93))) (not (= (select (arr!47411 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47411 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449326 e!816202))

(declare-fun res!980878 () Bool)

(assert (=> b!1449326 (=> (not res!980878) (not e!816202))))

(assert (=> b!1449326 (= res!980878 (and (= lt!635825 (Found!11686 j!93)) (or (= (select (arr!47411 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47411 a!2862) intermediateBeforeIndex!19) (select (arr!47411 a!2862) j!93)))))))

(assert (=> b!1449326 (= lt!635825 (seekEntryOrOpen!0 (select (arr!47411 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449326 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48816 0))(
  ( (Unit!48817) )
))
(declare-fun lt!635821 () Unit!48816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98255 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48816)

(assert (=> b!1449326 (= lt!635821 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449327 () Bool)

(assert (=> b!1449327 (= e!816201 e!816205)))

(declare-fun res!980874 () Bool)

(assert (=> b!1449327 (=> (not res!980874) (not e!816205))))

(assert (=> b!1449327 (= res!980874 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47411 a!2862) j!93) mask!2687) (select (arr!47411 a!2862) j!93) a!2862 mask!2687) lt!635823))))

(assert (=> b!1449327 (= lt!635823 (Intermediate!11686 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449328 () Bool)

(assert (=> b!1449328 (= e!816200 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!124890 res!980864) b!1449318))

(assert (= (and b!1449318 res!980875) b!1449323))

(assert (= (and b!1449323 res!980870) b!1449316))

(assert (= (and b!1449316 res!980866) b!1449321))

(assert (= (and b!1449321 res!980877) b!1449310))

(assert (= (and b!1449310 res!980873) b!1449312))

(assert (= (and b!1449312 res!980871) b!1449314))

(assert (= (and b!1449314 res!980876) b!1449327))

(assert (= (and b!1449327 res!980874) b!1449315))

(assert (= (and b!1449315 res!980867) b!1449317))

(assert (= (and b!1449317 res!980869) b!1449324))

(assert (= (and b!1449324 c!133736) b!1449311))

(assert (= (and b!1449324 (not c!133736)) b!1449313))

(assert (= (and b!1449324 res!980865) b!1449319))

(assert (= (and b!1449319 res!980880) b!1449326))

(assert (= (and b!1449326 res!980878) b!1449322))

(assert (= (and b!1449322 (not res!980879)) b!1449325))

(assert (= (and b!1449325 res!980868) b!1449328))

(assert (= (and b!1449326 (not res!980872)) b!1449320))

(declare-fun m!1338081 () Bool)

(assert (=> b!1449310 m!1338081))

(declare-fun m!1338083 () Bool)

(assert (=> b!1449326 m!1338083))

(declare-fun m!1338085 () Bool)

(assert (=> b!1449326 m!1338085))

(declare-fun m!1338087 () Bool)

(assert (=> b!1449326 m!1338087))

(declare-fun m!1338089 () Bool)

(assert (=> b!1449326 m!1338089))

(declare-fun m!1338091 () Bool)

(assert (=> b!1449326 m!1338091))

(declare-fun m!1338093 () Bool)

(assert (=> b!1449326 m!1338093))

(declare-fun m!1338095 () Bool)

(assert (=> b!1449326 m!1338095))

(declare-fun m!1338097 () Bool)

(assert (=> b!1449326 m!1338097))

(assert (=> b!1449326 m!1338093))

(assert (=> b!1449327 m!1338093))

(assert (=> b!1449327 m!1338093))

(declare-fun m!1338099 () Bool)

(assert (=> b!1449327 m!1338099))

(assert (=> b!1449327 m!1338099))

(assert (=> b!1449327 m!1338093))

(declare-fun m!1338101 () Bool)

(assert (=> b!1449327 m!1338101))

(declare-fun m!1338103 () Bool)

(assert (=> b!1449313 m!1338103))

(declare-fun m!1338105 () Bool)

(assert (=> b!1449313 m!1338105))

(assert (=> b!1449322 m!1338091))

(assert (=> b!1449322 m!1338085))

(assert (=> b!1449322 m!1338089))

(assert (=> b!1449322 m!1338093))

(assert (=> b!1449316 m!1338093))

(assert (=> b!1449316 m!1338093))

(declare-fun m!1338107 () Bool)

(assert (=> b!1449316 m!1338107))

(assert (=> b!1449314 m!1338085))

(declare-fun m!1338109 () Bool)

(assert (=> b!1449314 m!1338109))

(declare-fun m!1338111 () Bool)

(assert (=> start!124890 m!1338111))

(declare-fun m!1338113 () Bool)

(assert (=> start!124890 m!1338113))

(declare-fun m!1338115 () Bool)

(assert (=> b!1449311 m!1338115))

(declare-fun m!1338117 () Bool)

(assert (=> b!1449321 m!1338117))

(assert (=> b!1449325 m!1338093))

(assert (=> b!1449325 m!1338093))

(declare-fun m!1338119 () Bool)

(assert (=> b!1449325 m!1338119))

(declare-fun m!1338121 () Bool)

(assert (=> b!1449323 m!1338121))

(assert (=> b!1449323 m!1338121))

(declare-fun m!1338123 () Bool)

(assert (=> b!1449323 m!1338123))

(declare-fun m!1338125 () Bool)

(assert (=> b!1449317 m!1338125))

(assert (=> b!1449317 m!1338125))

(declare-fun m!1338127 () Bool)

(assert (=> b!1449317 m!1338127))

(assert (=> b!1449317 m!1338085))

(declare-fun m!1338129 () Bool)

(assert (=> b!1449317 m!1338129))

(assert (=> b!1449315 m!1338093))

(assert (=> b!1449315 m!1338093))

(declare-fun m!1338131 () Bool)

(assert (=> b!1449315 m!1338131))

(assert (=> b!1449320 m!1338093))

(assert (=> b!1449320 m!1338093))

(declare-fun m!1338133 () Bool)

(assert (=> b!1449320 m!1338133))

(check-sat (not b!1449315) (not b!1449313) (not b!1449310) (not b!1449325) (not b!1449311) (not b!1449321) (not b!1449327) (not b!1449320) (not b!1449316) (not start!124890) (not b!1449317) (not b!1449326) (not b!1449323))
(check-sat)
