; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125944 () Bool)

(assert start!125944)

(declare-fun b!1473965 () Bool)

(declare-fun e!827092 () Bool)

(assert (=> b!1473965 (= e!827092 true)))

(declare-fun lt!644072 () (_ BitVec 64))

(declare-datatypes ((array!99138 0))(
  ( (array!99139 (arr!47848 (Array (_ BitVec 32) (_ BitVec 64))) (size!48399 (_ BitVec 32))) )
))
(declare-fun lt!644070 () array!99138)

(declare-datatypes ((SeekEntryResult!12111 0))(
  ( (MissingZero!12111 (index!50835 (_ BitVec 32))) (Found!12111 (index!50836 (_ BitVec 32))) (Intermediate!12111 (undefined!12923 Bool) (index!50837 (_ BitVec 32)) (x!132422 (_ BitVec 32))) (Undefined!12111) (MissingVacant!12111 (index!50838 (_ BitVec 32))) )
))
(declare-fun lt!644074 () SeekEntryResult!12111)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99138 (_ BitVec 32)) SeekEntryResult!12111)

(assert (=> b!1473965 (= lt!644074 (seekEntryOrOpen!0 lt!644072 lt!644070 mask!2687))))

(declare-fun e!827091 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1473966 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99138 (_ BitVec 32)) SeekEntryResult!12111)

(assert (=> b!1473966 (= e!827091 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644072 lt!644070 mask!2687) (seekEntryOrOpen!0 lt!644072 lt!644070 mask!2687)))))

(declare-fun b!1473967 () Bool)

(declare-fun e!827093 () Bool)

(assert (=> b!1473967 (= e!827093 (not e!827092))))

(declare-fun res!1001330 () Bool)

(assert (=> b!1473967 (=> res!1001330 e!827092)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99138)

(assert (=> b!1473967 (= res!1001330 (or (not (= (select (arr!47848 a!2862) index!646) (select (store (arr!47848 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47848 a!2862) index!646) (select (arr!47848 a!2862) j!93)))))))

(declare-fun e!827090 () Bool)

(assert (=> b!1473967 e!827090))

(declare-fun res!1001327 () Bool)

(assert (=> b!1473967 (=> (not res!1001327) (not e!827090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99138 (_ BitVec 32)) Bool)

(assert (=> b!1473967 (= res!1001327 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49510 0))(
  ( (Unit!49511) )
))
(declare-fun lt!644071 () Unit!49510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49510)

(assert (=> b!1473967 (= lt!644071 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473968 () Bool)

(declare-fun res!1001333 () Bool)

(declare-fun e!827096 () Bool)

(assert (=> b!1473968 (=> (not res!1001333) (not e!827096))))

(assert (=> b!1473968 (= res!1001333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473969 () Bool)

(declare-fun lt!644069 () SeekEntryResult!12111)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99138 (_ BitVec 32)) SeekEntryResult!12111)

(assert (=> b!1473969 (= e!827091 (= lt!644069 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644072 lt!644070 mask!2687)))))

(declare-fun b!1473970 () Bool)

(declare-fun res!1001337 () Bool)

(assert (=> b!1473970 (=> (not res!1001337) (not e!827096))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1473970 (= res!1001337 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48399 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48399 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48399 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473971 () Bool)

(declare-fun res!1001329 () Bool)

(assert (=> b!1473971 (=> (not res!1001329) (not e!827090))))

(assert (=> b!1473971 (= res!1001329 (= (seekEntryOrOpen!0 (select (arr!47848 a!2862) j!93) a!2862 mask!2687) (Found!12111 j!93)))))

(declare-fun b!1473972 () Bool)

(assert (=> b!1473972 (= e!827090 (or (= (select (arr!47848 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47848 a!2862) intermediateBeforeIndex!19) (select (arr!47848 a!2862) j!93))))))

(declare-fun res!1001331 () Bool)

(assert (=> start!125944 (=> (not res!1001331) (not e!827096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125944 (= res!1001331 (validMask!0 mask!2687))))

(assert (=> start!125944 e!827096))

(assert (=> start!125944 true))

(declare-fun array_inv!36793 (array!99138) Bool)

(assert (=> start!125944 (array_inv!36793 a!2862)))

(declare-fun b!1473973 () Bool)

(declare-fun e!827089 () Bool)

(assert (=> b!1473973 (= e!827096 e!827089)))

(declare-fun res!1001324 () Bool)

(assert (=> b!1473973 (=> (not res!1001324) (not e!827089))))

(assert (=> b!1473973 (= res!1001324 (= (select (store (arr!47848 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473973 (= lt!644070 (array!99139 (store (arr!47848 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48399 a!2862)))))

(declare-fun b!1473974 () Bool)

(declare-fun res!1001328 () Bool)

(assert (=> b!1473974 (=> (not res!1001328) (not e!827093))))

(assert (=> b!1473974 (= res!1001328 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473975 () Bool)

(declare-fun res!1001332 () Bool)

(assert (=> b!1473975 (=> (not res!1001332) (not e!827096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473975 (= res!1001332 (validKeyInArray!0 (select (arr!47848 a!2862) i!1006)))))

(declare-fun b!1473976 () Bool)

(declare-fun res!1001336 () Bool)

(assert (=> b!1473976 (=> (not res!1001336) (not e!827096))))

(assert (=> b!1473976 (= res!1001336 (and (= (size!48399 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48399 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48399 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473977 () Bool)

(declare-fun e!827094 () Bool)

(assert (=> b!1473977 (= e!827094 e!827093)))

(declare-fun res!1001323 () Bool)

(assert (=> b!1473977 (=> (not res!1001323) (not e!827093))))

(assert (=> b!1473977 (= res!1001323 (= lt!644069 (Intermediate!12111 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473977 (= lt!644069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644072 mask!2687) lt!644072 lt!644070 mask!2687))))

(assert (=> b!1473977 (= lt!644072 (select (store (arr!47848 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473978 () Bool)

(declare-fun res!1001326 () Bool)

(assert (=> b!1473978 (=> (not res!1001326) (not e!827096))))

(assert (=> b!1473978 (= res!1001326 (validKeyInArray!0 (select (arr!47848 a!2862) j!93)))))

(declare-fun b!1473979 () Bool)

(declare-fun res!1001325 () Bool)

(assert (=> b!1473979 (=> (not res!1001325) (not e!827096))))

(declare-datatypes ((List!34529 0))(
  ( (Nil!34526) (Cons!34525 (h!35884 (_ BitVec 64)) (t!49230 List!34529)) )
))
(declare-fun arrayNoDuplicates!0 (array!99138 (_ BitVec 32) List!34529) Bool)

(assert (=> b!1473979 (= res!1001325 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34526))))

(declare-fun b!1473980 () Bool)

(declare-fun res!1001334 () Bool)

(assert (=> b!1473980 (=> (not res!1001334) (not e!827094))))

(declare-fun lt!644073 () SeekEntryResult!12111)

(assert (=> b!1473980 (= res!1001334 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47848 a!2862) j!93) a!2862 mask!2687) lt!644073))))

(declare-fun b!1473981 () Bool)

(declare-fun res!1001335 () Bool)

(assert (=> b!1473981 (=> (not res!1001335) (not e!827093))))

(assert (=> b!1473981 (= res!1001335 e!827091)))

(declare-fun c!135839 () Bool)

(assert (=> b!1473981 (= c!135839 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473982 () Bool)

(assert (=> b!1473982 (= e!827089 e!827094)))

(declare-fun res!1001322 () Bool)

(assert (=> b!1473982 (=> (not res!1001322) (not e!827094))))

(assert (=> b!1473982 (= res!1001322 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47848 a!2862) j!93) mask!2687) (select (arr!47848 a!2862) j!93) a!2862 mask!2687) lt!644073))))

(assert (=> b!1473982 (= lt!644073 (Intermediate!12111 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125944 res!1001331) b!1473976))

(assert (= (and b!1473976 res!1001336) b!1473975))

(assert (= (and b!1473975 res!1001332) b!1473978))

(assert (= (and b!1473978 res!1001326) b!1473968))

(assert (= (and b!1473968 res!1001333) b!1473979))

(assert (= (and b!1473979 res!1001325) b!1473970))

(assert (= (and b!1473970 res!1001337) b!1473973))

(assert (= (and b!1473973 res!1001324) b!1473982))

(assert (= (and b!1473982 res!1001322) b!1473980))

(assert (= (and b!1473980 res!1001334) b!1473977))

(assert (= (and b!1473977 res!1001323) b!1473981))

(assert (= (and b!1473981 c!135839) b!1473969))

(assert (= (and b!1473981 (not c!135839)) b!1473966))

(assert (= (and b!1473981 res!1001335) b!1473974))

(assert (= (and b!1473974 res!1001328) b!1473967))

(assert (= (and b!1473967 res!1001327) b!1473971))

(assert (= (and b!1473971 res!1001329) b!1473972))

(assert (= (and b!1473967 (not res!1001330)) b!1473965))

(declare-fun m!1360503 () Bool)

(assert (=> b!1473969 m!1360503))

(declare-fun m!1360505 () Bool)

(assert (=> b!1473965 m!1360505))

(declare-fun m!1360507 () Bool)

(assert (=> b!1473971 m!1360507))

(assert (=> b!1473971 m!1360507))

(declare-fun m!1360509 () Bool)

(assert (=> b!1473971 m!1360509))

(assert (=> b!1473978 m!1360507))

(assert (=> b!1473978 m!1360507))

(declare-fun m!1360511 () Bool)

(assert (=> b!1473978 m!1360511))

(declare-fun m!1360513 () Bool)

(assert (=> start!125944 m!1360513))

(declare-fun m!1360515 () Bool)

(assert (=> start!125944 m!1360515))

(declare-fun m!1360517 () Bool)

(assert (=> b!1473972 m!1360517))

(assert (=> b!1473972 m!1360507))

(declare-fun m!1360519 () Bool)

(assert (=> b!1473979 m!1360519))

(declare-fun m!1360521 () Bool)

(assert (=> b!1473967 m!1360521))

(declare-fun m!1360523 () Bool)

(assert (=> b!1473967 m!1360523))

(declare-fun m!1360525 () Bool)

(assert (=> b!1473967 m!1360525))

(declare-fun m!1360527 () Bool)

(assert (=> b!1473967 m!1360527))

(declare-fun m!1360529 () Bool)

(assert (=> b!1473967 m!1360529))

(assert (=> b!1473967 m!1360507))

(assert (=> b!1473973 m!1360523))

(declare-fun m!1360531 () Bool)

(assert (=> b!1473973 m!1360531))

(assert (=> b!1473980 m!1360507))

(assert (=> b!1473980 m!1360507))

(declare-fun m!1360533 () Bool)

(assert (=> b!1473980 m!1360533))

(assert (=> b!1473982 m!1360507))

(assert (=> b!1473982 m!1360507))

(declare-fun m!1360535 () Bool)

(assert (=> b!1473982 m!1360535))

(assert (=> b!1473982 m!1360535))

(assert (=> b!1473982 m!1360507))

(declare-fun m!1360537 () Bool)

(assert (=> b!1473982 m!1360537))

(declare-fun m!1360539 () Bool)

(assert (=> b!1473968 m!1360539))

(declare-fun m!1360541 () Bool)

(assert (=> b!1473975 m!1360541))

(assert (=> b!1473975 m!1360541))

(declare-fun m!1360543 () Bool)

(assert (=> b!1473975 m!1360543))

(declare-fun m!1360545 () Bool)

(assert (=> b!1473966 m!1360545))

(assert (=> b!1473966 m!1360505))

(declare-fun m!1360547 () Bool)

(assert (=> b!1473977 m!1360547))

(assert (=> b!1473977 m!1360547))

(declare-fun m!1360549 () Bool)

(assert (=> b!1473977 m!1360549))

(assert (=> b!1473977 m!1360523))

(declare-fun m!1360551 () Bool)

(assert (=> b!1473977 m!1360551))

(push 1)

