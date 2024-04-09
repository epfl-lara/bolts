; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124898 () Bool)

(assert start!124898)

(declare-fun b!1449538 () Bool)

(declare-fun res!981079 () Bool)

(declare-fun e!816322 () Bool)

(assert (=> b!1449538 (=> (not res!981079) (not e!816322))))

(declare-datatypes ((array!98263 0))(
  ( (array!98264 (arr!47415 (Array (_ BitVec 32) (_ BitVec 64))) (size!47966 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98263)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98263 (_ BitVec 32)) Bool)

(assert (=> b!1449538 (= res!981079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1449539 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!816318 () Bool)

(assert (=> b!1449539 (= e!816318 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun lt!635910 () array!98263)

(declare-fun lt!635906 () (_ BitVec 64))

(declare-fun e!816317 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1449540 () Bool)

(declare-datatypes ((SeekEntryResult!11690 0))(
  ( (MissingZero!11690 (index!49151 (_ BitVec 32))) (Found!11690 (index!49152 (_ BitVec 32))) (Intermediate!11690 (undefined!12502 Bool) (index!49153 (_ BitVec 32)) (x!130814 (_ BitVec 32))) (Undefined!11690) (MissingVacant!11690 (index!49154 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98263 (_ BitVec 32)) SeekEntryResult!11690)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98263 (_ BitVec 32)) SeekEntryResult!11690)

(assert (=> b!1449540 (= e!816317 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635906 lt!635910 mask!2687) (seekEntryOrOpen!0 lt!635906 lt!635910 mask!2687)))))

(declare-fun b!1449541 () Bool)

(declare-fun e!816320 () Bool)

(assert (=> b!1449541 (= e!816320 true)))

(declare-fun lt!635905 () SeekEntryResult!11690)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1449541 (= lt!635905 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47415 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449542 () Bool)

(declare-fun res!981074 () Bool)

(declare-fun e!816325 () Bool)

(assert (=> b!1449542 (=> (not res!981074) (not e!816325))))

(declare-fun lt!635907 () SeekEntryResult!11690)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98263 (_ BitVec 32)) SeekEntryResult!11690)

(assert (=> b!1449542 (= res!981074 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47415 a!2862) j!93) a!2862 mask!2687) lt!635907))))

(declare-fun b!1449543 () Bool)

(declare-fun res!981071 () Bool)

(declare-fun e!816323 () Bool)

(assert (=> b!1449543 (=> (not res!981071) (not e!816323))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449543 (= res!981071 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449544 () Bool)

(declare-fun res!981068 () Bool)

(assert (=> b!1449544 (=> (not res!981068) (not e!816322))))

(declare-datatypes ((List!34096 0))(
  ( (Nil!34093) (Cons!34092 (h!35442 (_ BitVec 64)) (t!48797 List!34096)) )
))
(declare-fun arrayNoDuplicates!0 (array!98263 (_ BitVec 32) List!34096) Bool)

(assert (=> b!1449544 (= res!981068 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34093))))

(declare-fun b!1449545 () Bool)

(declare-fun e!816321 () Bool)

(assert (=> b!1449545 (= e!816321 e!816325)))

(declare-fun res!981081 () Bool)

(assert (=> b!1449545 (=> (not res!981081) (not e!816325))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449545 (= res!981081 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47415 a!2862) j!93) mask!2687) (select (arr!47415 a!2862) j!93) a!2862 mask!2687) lt!635907))))

(assert (=> b!1449545 (= lt!635907 (Intermediate!11690 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449546 () Bool)

(declare-fun e!816324 () Bool)

(assert (=> b!1449546 (= e!816324 e!816318)))

(declare-fun res!981069 () Bool)

(assert (=> b!1449546 (=> (not res!981069) (not e!816318))))

(declare-fun lt!635908 () SeekEntryResult!11690)

(assert (=> b!1449546 (= res!981069 (= lt!635908 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47415 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449547 () Bool)

(declare-fun lt!635909 () SeekEntryResult!11690)

(assert (=> b!1449547 (= e!816317 (= lt!635909 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635906 lt!635910 mask!2687)))))

(declare-fun b!1449548 () Bool)

(declare-fun res!981072 () Bool)

(assert (=> b!1449548 (=> (not res!981072) (not e!816322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449548 (= res!981072 (validKeyInArray!0 (select (arr!47415 a!2862) j!93)))))

(declare-fun b!1449549 () Bool)

(declare-fun res!981073 () Bool)

(assert (=> b!1449549 (=> (not res!981073) (not e!816322))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449549 (= res!981073 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47966 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47966 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47966 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449550 () Bool)

(declare-fun e!816319 () Bool)

(assert (=> b!1449550 (= e!816319 e!816324)))

(declare-fun res!981070 () Bool)

(assert (=> b!1449550 (=> res!981070 e!816324)))

(assert (=> b!1449550 (= res!981070 (or (and (= (select (arr!47415 a!2862) index!646) (select (store (arr!47415 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47415 a!2862) index!646) (select (arr!47415 a!2862) j!93))) (not (= (select (arr!47415 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449551 () Bool)

(assert (=> b!1449551 (= e!816325 e!816323)))

(declare-fun res!981078 () Bool)

(assert (=> b!1449551 (=> (not res!981078) (not e!816323))))

(assert (=> b!1449551 (= res!981078 (= lt!635909 (Intermediate!11690 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1449551 (= lt!635909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635906 mask!2687) lt!635906 lt!635910 mask!2687))))

(assert (=> b!1449551 (= lt!635906 (select (store (arr!47415 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449552 () Bool)

(declare-fun res!981077 () Bool)

(assert (=> b!1449552 (=> (not res!981077) (not e!816323))))

(assert (=> b!1449552 (= res!981077 e!816317)))

(declare-fun c!133748 () Bool)

(assert (=> b!1449552 (= c!133748 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!981082 () Bool)

(assert (=> start!124898 (=> (not res!981082) (not e!816322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124898 (= res!981082 (validMask!0 mask!2687))))

(assert (=> start!124898 e!816322))

(assert (=> start!124898 true))

(declare-fun array_inv!36360 (array!98263) Bool)

(assert (=> start!124898 (array_inv!36360 a!2862)))

(declare-fun b!1449553 () Bool)

(declare-fun res!981084 () Bool)

(assert (=> b!1449553 (=> (not res!981084) (not e!816322))))

(assert (=> b!1449553 (= res!981084 (validKeyInArray!0 (select (arr!47415 a!2862) i!1006)))))

(declare-fun b!1449554 () Bool)

(assert (=> b!1449554 (= e!816322 e!816321)))

(declare-fun res!981075 () Bool)

(assert (=> b!1449554 (=> (not res!981075) (not e!816321))))

(assert (=> b!1449554 (= res!981075 (= (select (store (arr!47415 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449554 (= lt!635910 (array!98264 (store (arr!47415 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47966 a!2862)))))

(declare-fun b!1449555 () Bool)

(assert (=> b!1449555 (= e!816323 (not e!816320))))

(declare-fun res!981083 () Bool)

(assert (=> b!1449555 (=> res!981083 e!816320)))

(assert (=> b!1449555 (= res!981083 (or (and (= (select (arr!47415 a!2862) index!646) (select (store (arr!47415 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47415 a!2862) index!646) (select (arr!47415 a!2862) j!93))) (not (= (select (arr!47415 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47415 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449555 e!816319))

(declare-fun res!981076 () Bool)

(assert (=> b!1449555 (=> (not res!981076) (not e!816319))))

(assert (=> b!1449555 (= res!981076 (and (= lt!635908 (Found!11690 j!93)) (or (= (select (arr!47415 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47415 a!2862) intermediateBeforeIndex!19) (select (arr!47415 a!2862) j!93)))))))

(assert (=> b!1449555 (= lt!635908 (seekEntryOrOpen!0 (select (arr!47415 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449555 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48824 0))(
  ( (Unit!48825) )
))
(declare-fun lt!635911 () Unit!48824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48824)

(assert (=> b!1449555 (= lt!635911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449556 () Bool)

(declare-fun res!981080 () Bool)

(assert (=> b!1449556 (=> (not res!981080) (not e!816322))))

(assert (=> b!1449556 (= res!981080 (and (= (size!47966 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47966 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47966 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124898 res!981082) b!1449556))

(assert (= (and b!1449556 res!981080) b!1449553))

(assert (= (and b!1449553 res!981084) b!1449548))

(assert (= (and b!1449548 res!981072) b!1449538))

(assert (= (and b!1449538 res!981079) b!1449544))

(assert (= (and b!1449544 res!981068) b!1449549))

(assert (= (and b!1449549 res!981073) b!1449554))

(assert (= (and b!1449554 res!981075) b!1449545))

(assert (= (and b!1449545 res!981081) b!1449542))

(assert (= (and b!1449542 res!981074) b!1449551))

(assert (= (and b!1449551 res!981078) b!1449552))

(assert (= (and b!1449552 c!133748) b!1449547))

(assert (= (and b!1449552 (not c!133748)) b!1449540))

(assert (= (and b!1449552 res!981077) b!1449543))

(assert (= (and b!1449543 res!981071) b!1449555))

(assert (= (and b!1449555 res!981076) b!1449550))

(assert (= (and b!1449550 (not res!981070)) b!1449546))

(assert (= (and b!1449546 res!981069) b!1449539))

(assert (= (and b!1449555 (not res!981083)) b!1449541))

(declare-fun m!1338297 () Bool)

(assert (=> b!1449553 m!1338297))

(assert (=> b!1449553 m!1338297))

(declare-fun m!1338299 () Bool)

(assert (=> b!1449553 m!1338299))

(declare-fun m!1338301 () Bool)

(assert (=> b!1449541 m!1338301))

(assert (=> b!1449541 m!1338301))

(declare-fun m!1338303 () Bool)

(assert (=> b!1449541 m!1338303))

(assert (=> b!1449548 m!1338301))

(assert (=> b!1449548 m!1338301))

(declare-fun m!1338305 () Bool)

(assert (=> b!1449548 m!1338305))

(declare-fun m!1338307 () Bool)

(assert (=> b!1449554 m!1338307))

(declare-fun m!1338309 () Bool)

(assert (=> b!1449554 m!1338309))

(assert (=> b!1449545 m!1338301))

(assert (=> b!1449545 m!1338301))

(declare-fun m!1338311 () Bool)

(assert (=> b!1449545 m!1338311))

(assert (=> b!1449545 m!1338311))

(assert (=> b!1449545 m!1338301))

(declare-fun m!1338313 () Bool)

(assert (=> b!1449545 m!1338313))

(declare-fun m!1338315 () Bool)

(assert (=> b!1449540 m!1338315))

(declare-fun m!1338317 () Bool)

(assert (=> b!1449540 m!1338317))

(declare-fun m!1338319 () Bool)

(assert (=> b!1449538 m!1338319))

(declare-fun m!1338321 () Bool)

(assert (=> b!1449555 m!1338321))

(assert (=> b!1449555 m!1338307))

(declare-fun m!1338323 () Bool)

(assert (=> b!1449555 m!1338323))

(declare-fun m!1338325 () Bool)

(assert (=> b!1449555 m!1338325))

(declare-fun m!1338327 () Bool)

(assert (=> b!1449555 m!1338327))

(assert (=> b!1449555 m!1338301))

(declare-fun m!1338329 () Bool)

(assert (=> b!1449555 m!1338329))

(declare-fun m!1338331 () Bool)

(assert (=> b!1449555 m!1338331))

(assert (=> b!1449555 m!1338301))

(assert (=> b!1449550 m!1338327))

(assert (=> b!1449550 m!1338307))

(assert (=> b!1449550 m!1338325))

(assert (=> b!1449550 m!1338301))

(declare-fun m!1338333 () Bool)

(assert (=> b!1449547 m!1338333))

(declare-fun m!1338335 () Bool)

(assert (=> b!1449551 m!1338335))

(assert (=> b!1449551 m!1338335))

(declare-fun m!1338337 () Bool)

(assert (=> b!1449551 m!1338337))

(assert (=> b!1449551 m!1338307))

(declare-fun m!1338339 () Bool)

(assert (=> b!1449551 m!1338339))

(assert (=> b!1449542 m!1338301))

(assert (=> b!1449542 m!1338301))

(declare-fun m!1338341 () Bool)

(assert (=> b!1449542 m!1338341))

(declare-fun m!1338343 () Bool)

(assert (=> start!124898 m!1338343))

(declare-fun m!1338345 () Bool)

(assert (=> start!124898 m!1338345))

(assert (=> b!1449546 m!1338301))

(assert (=> b!1449546 m!1338301))

(declare-fun m!1338347 () Bool)

(assert (=> b!1449546 m!1338347))

(declare-fun m!1338349 () Bool)

(assert (=> b!1449544 m!1338349))

(push 1)

