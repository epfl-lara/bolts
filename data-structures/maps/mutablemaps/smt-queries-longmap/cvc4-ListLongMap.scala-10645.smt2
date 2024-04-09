; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125054 () Bool)

(assert start!125054)

(declare-fun b!1453954 () Bool)

(declare-fun res!984992 () Bool)

(declare-fun e!818331 () Bool)

(assert (=> b!1453954 (=> res!984992 e!818331)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98419 0))(
  ( (array!98420 (arr!47493 (Array (_ BitVec 32) (_ BitVec 64))) (size!48044 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98419)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!637384 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11768 0))(
  ( (MissingZero!11768 (index!49463 (_ BitVec 32))) (Found!11768 (index!49464 (_ BitVec 32))) (Intermediate!11768 (undefined!12580 Bool) (index!49465 (_ BitVec 32)) (x!131100 (_ BitVec 32))) (Undefined!11768) (MissingVacant!11768 (index!49466 (_ BitVec 32))) )
))
(declare-fun lt!637382 () SeekEntryResult!11768)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98419 (_ BitVec 32)) SeekEntryResult!11768)

(assert (=> b!1453954 (= res!984992 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637384 (select (arr!47493 a!2862) j!93) a!2862 mask!2687) lt!637382)))))

(declare-fun b!1453955 () Bool)

(declare-fun res!984989 () Bool)

(declare-fun e!818328 () Bool)

(assert (=> b!1453955 (=> (not res!984989) (not e!818328))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1453955 (= res!984989 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47493 a!2862) j!93) a!2862 mask!2687) lt!637382))))

(declare-fun b!1453956 () Bool)

(declare-fun e!818324 () Bool)

(assert (=> b!1453956 (= e!818324 e!818331)))

(declare-fun res!984996 () Bool)

(assert (=> b!1453956 (=> res!984996 e!818331)))

(assert (=> b!1453956 (= res!984996 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637384 #b00000000000000000000000000000000) (bvsge lt!637384 (size!48044 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453956 (= lt!637384 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637381 () SeekEntryResult!11768)

(declare-fun lt!637383 () (_ BitVec 64))

(declare-fun lt!637387 () array!98419)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98419 (_ BitVec 32)) SeekEntryResult!11768)

(assert (=> b!1453956 (= lt!637381 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637383 lt!637387 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98419 (_ BitVec 32)) SeekEntryResult!11768)

(assert (=> b!1453956 (= lt!637381 (seekEntryOrOpen!0 lt!637383 lt!637387 mask!2687))))

(declare-fun b!1453957 () Bool)

(declare-fun res!984998 () Bool)

(declare-fun e!818329 () Bool)

(assert (=> b!1453957 (=> (not res!984998) (not e!818329))))

(declare-datatypes ((List!34174 0))(
  ( (Nil!34171) (Cons!34170 (h!35520 (_ BitVec 64)) (t!48875 List!34174)) )
))
(declare-fun arrayNoDuplicates!0 (array!98419 (_ BitVec 32) List!34174) Bool)

(assert (=> b!1453957 (= res!984998 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34171))))

(declare-fun b!1453958 () Bool)

(declare-fun res!984984 () Bool)

(assert (=> b!1453958 (=> (not res!984984) (not e!818329))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453958 (= res!984984 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48044 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48044 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48044 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453959 () Bool)

(declare-fun e!818326 () Bool)

(assert (=> b!1453959 (= e!818328 e!818326)))

(declare-fun res!984991 () Bool)

(assert (=> b!1453959 (=> (not res!984991) (not e!818326))))

(declare-fun lt!637385 () SeekEntryResult!11768)

(assert (=> b!1453959 (= res!984991 (= lt!637385 (Intermediate!11768 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453959 (= lt!637385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637383 mask!2687) lt!637383 lt!637387 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453959 (= lt!637383 (select (store (arr!47493 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453960 () Bool)

(declare-fun res!984997 () Bool)

(assert (=> b!1453960 (=> (not res!984997) (not e!818329))))

(assert (=> b!1453960 (= res!984997 (and (= (size!48044 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48044 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48044 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453961 () Bool)

(declare-fun res!984982 () Bool)

(assert (=> b!1453961 (=> (not res!984982) (not e!818326))))

(declare-fun e!818333 () Bool)

(assert (=> b!1453961 (= res!984982 e!818333)))

(declare-fun c!134000 () Bool)

(assert (=> b!1453961 (= c!134000 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453962 () Bool)

(declare-fun res!984994 () Bool)

(assert (=> b!1453962 (=> (not res!984994) (not e!818326))))

(assert (=> b!1453962 (= res!984994 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453963 () Bool)

(declare-fun res!984983 () Bool)

(assert (=> b!1453963 (=> (not res!984983) (not e!818329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98419 (_ BitVec 32)) Bool)

(assert (=> b!1453963 (= res!984983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453964 () Bool)

(declare-fun e!818327 () Bool)

(assert (=> b!1453964 (= e!818327 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637384 intermediateAfterIndex!19 lt!637383 lt!637387 mask!2687) lt!637381)))))

(declare-fun b!1453965 () Bool)

(declare-fun e!818330 () Bool)

(assert (=> b!1453965 (= e!818329 e!818330)))

(declare-fun res!984988 () Bool)

(assert (=> b!1453965 (=> (not res!984988) (not e!818330))))

(assert (=> b!1453965 (= res!984988 (= (select (store (arr!47493 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453965 (= lt!637387 (array!98420 (store (arr!47493 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48044 a!2862)))))

(declare-fun b!1453966 () Bool)

(declare-fun e!818325 () Bool)

(assert (=> b!1453966 (= e!818325 (and (or (= (select (arr!47493 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47493 a!2862) intermediateBeforeIndex!19) (select (arr!47493 a!2862) j!93))) (let ((bdg!53023 (select (store (arr!47493 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47493 a!2862) index!646) bdg!53023) (= (select (arr!47493 a!2862) index!646) (select (arr!47493 a!2862) j!93))) (= (select (arr!47493 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53023 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453967 () Bool)

(declare-fun res!984995 () Bool)

(assert (=> b!1453967 (=> (not res!984995) (not e!818329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453967 (= res!984995 (validKeyInArray!0 (select (arr!47493 a!2862) j!93)))))

(declare-fun b!1453968 () Bool)

(declare-fun res!984999 () Bool)

(assert (=> b!1453968 (=> (not res!984999) (not e!818325))))

(assert (=> b!1453968 (= res!984999 (= (seekEntryOrOpen!0 (select (arr!47493 a!2862) j!93) a!2862 mask!2687) (Found!11768 j!93)))))

(declare-fun b!1453969 () Bool)

(assert (=> b!1453969 (= e!818326 (not e!818324))))

(declare-fun res!984986 () Bool)

(assert (=> b!1453969 (=> res!984986 e!818324)))

(assert (=> b!1453969 (= res!984986 (or (and (= (select (arr!47493 a!2862) index!646) (select (store (arr!47493 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47493 a!2862) index!646) (select (arr!47493 a!2862) j!93))) (= (select (arr!47493 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453969 e!818325))

(declare-fun res!984990 () Bool)

(assert (=> b!1453969 (=> (not res!984990) (not e!818325))))

(assert (=> b!1453969 (= res!984990 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48980 0))(
  ( (Unit!48981) )
))
(declare-fun lt!637386 () Unit!48980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48980)

(assert (=> b!1453969 (= lt!637386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453970 () Bool)

(assert (=> b!1453970 (= e!818333 (= lt!637385 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637383 lt!637387 mask!2687)))))

(declare-fun b!1453971 () Bool)

(assert (=> b!1453971 (= e!818330 e!818328)))

(declare-fun res!984985 () Bool)

(assert (=> b!1453971 (=> (not res!984985) (not e!818328))))

(assert (=> b!1453971 (= res!984985 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47493 a!2862) j!93) mask!2687) (select (arr!47493 a!2862) j!93) a!2862 mask!2687) lt!637382))))

(assert (=> b!1453971 (= lt!637382 (Intermediate!11768 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!984993 () Bool)

(assert (=> start!125054 (=> (not res!984993) (not e!818329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125054 (= res!984993 (validMask!0 mask!2687))))

(assert (=> start!125054 e!818329))

(assert (=> start!125054 true))

(declare-fun array_inv!36438 (array!98419) Bool)

(assert (=> start!125054 (array_inv!36438 a!2862)))

(declare-fun b!1453972 () Bool)

(assert (=> b!1453972 (= e!818333 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637383 lt!637387 mask!2687) (seekEntryOrOpen!0 lt!637383 lt!637387 mask!2687)))))

(declare-fun b!1453973 () Bool)

(assert (=> b!1453973 (= e!818331 true)))

(declare-fun lt!637380 () Bool)

(assert (=> b!1453973 (= lt!637380 e!818327)))

(declare-fun c!133999 () Bool)

(assert (=> b!1453973 (= c!133999 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1453974 () Bool)

(assert (=> b!1453974 (= e!818327 (not (= lt!637385 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637384 lt!637383 lt!637387 mask!2687))))))

(declare-fun b!1453975 () Bool)

(declare-fun res!984987 () Bool)

(assert (=> b!1453975 (=> (not res!984987) (not e!818329))))

(assert (=> b!1453975 (= res!984987 (validKeyInArray!0 (select (arr!47493 a!2862) i!1006)))))

(assert (= (and start!125054 res!984993) b!1453960))

(assert (= (and b!1453960 res!984997) b!1453975))

(assert (= (and b!1453975 res!984987) b!1453967))

(assert (= (and b!1453967 res!984995) b!1453963))

(assert (= (and b!1453963 res!984983) b!1453957))

(assert (= (and b!1453957 res!984998) b!1453958))

(assert (= (and b!1453958 res!984984) b!1453965))

(assert (= (and b!1453965 res!984988) b!1453971))

(assert (= (and b!1453971 res!984985) b!1453955))

(assert (= (and b!1453955 res!984989) b!1453959))

(assert (= (and b!1453959 res!984991) b!1453961))

(assert (= (and b!1453961 c!134000) b!1453970))

(assert (= (and b!1453961 (not c!134000)) b!1453972))

(assert (= (and b!1453961 res!984982) b!1453962))

(assert (= (and b!1453962 res!984994) b!1453969))

(assert (= (and b!1453969 res!984990) b!1453968))

(assert (= (and b!1453968 res!984999) b!1453966))

(assert (= (and b!1453969 (not res!984986)) b!1453956))

(assert (= (and b!1453956 (not res!984996)) b!1453954))

(assert (= (and b!1453954 (not res!984992)) b!1453973))

(assert (= (and b!1453973 c!133999) b!1453974))

(assert (= (and b!1453973 (not c!133999)) b!1453964))

(declare-fun m!1342403 () Bool)

(assert (=> b!1453975 m!1342403))

(assert (=> b!1453975 m!1342403))

(declare-fun m!1342405 () Bool)

(assert (=> b!1453975 m!1342405))

(declare-fun m!1342407 () Bool)

(assert (=> b!1453972 m!1342407))

(declare-fun m!1342409 () Bool)

(assert (=> b!1453972 m!1342409))

(declare-fun m!1342411 () Bool)

(assert (=> b!1453970 m!1342411))

(declare-fun m!1342413 () Bool)

(assert (=> b!1453954 m!1342413))

(assert (=> b!1453954 m!1342413))

(declare-fun m!1342415 () Bool)

(assert (=> b!1453954 m!1342415))

(declare-fun m!1342417 () Bool)

(assert (=> b!1453963 m!1342417))

(declare-fun m!1342419 () Bool)

(assert (=> b!1453956 m!1342419))

(assert (=> b!1453956 m!1342407))

(assert (=> b!1453956 m!1342409))

(assert (=> b!1453955 m!1342413))

(assert (=> b!1453955 m!1342413))

(declare-fun m!1342421 () Bool)

(assert (=> b!1453955 m!1342421))

(assert (=> b!1453967 m!1342413))

(assert (=> b!1453967 m!1342413))

(declare-fun m!1342423 () Bool)

(assert (=> b!1453967 m!1342423))

(declare-fun m!1342425 () Bool)

(assert (=> b!1453964 m!1342425))

(declare-fun m!1342427 () Bool)

(assert (=> b!1453957 m!1342427))

(declare-fun m!1342429 () Bool)

(assert (=> start!125054 m!1342429))

(declare-fun m!1342431 () Bool)

(assert (=> start!125054 m!1342431))

(declare-fun m!1342433 () Bool)

(assert (=> b!1453959 m!1342433))

(assert (=> b!1453959 m!1342433))

(declare-fun m!1342435 () Bool)

(assert (=> b!1453959 m!1342435))

(declare-fun m!1342437 () Bool)

(assert (=> b!1453959 m!1342437))

(declare-fun m!1342439 () Bool)

(assert (=> b!1453959 m!1342439))

(assert (=> b!1453971 m!1342413))

(assert (=> b!1453971 m!1342413))

(declare-fun m!1342441 () Bool)

(assert (=> b!1453971 m!1342441))

(assert (=> b!1453971 m!1342441))

(assert (=> b!1453971 m!1342413))

(declare-fun m!1342443 () Bool)

(assert (=> b!1453971 m!1342443))

(declare-fun m!1342445 () Bool)

(assert (=> b!1453969 m!1342445))

(assert (=> b!1453969 m!1342437))

(declare-fun m!1342447 () Bool)

(assert (=> b!1453969 m!1342447))

(declare-fun m!1342449 () Bool)

(assert (=> b!1453969 m!1342449))

(declare-fun m!1342451 () Bool)

(assert (=> b!1453969 m!1342451))

(assert (=> b!1453969 m!1342413))

(assert (=> b!1453965 m!1342437))

(declare-fun m!1342453 () Bool)

(assert (=> b!1453965 m!1342453))

(declare-fun m!1342455 () Bool)

(assert (=> b!1453974 m!1342455))

(assert (=> b!1453966 m!1342437))

(declare-fun m!1342457 () Bool)

(assert (=> b!1453966 m!1342457))

(assert (=> b!1453966 m!1342447))

(assert (=> b!1453966 m!1342449))

(assert (=> b!1453966 m!1342413))

(assert (=> b!1453968 m!1342413))

(assert (=> b!1453968 m!1342413))

(declare-fun m!1342459 () Bool)

(assert (=> b!1453968 m!1342459))

(push 1)

