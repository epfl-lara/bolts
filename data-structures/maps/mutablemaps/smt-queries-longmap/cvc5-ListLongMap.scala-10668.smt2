; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125188 () Bool)

(assert start!125188)

(declare-fun b!1458376 () Bool)

(declare-fun res!988609 () Bool)

(declare-fun e!820339 () Bool)

(assert (=> b!1458376 (=> (not res!988609) (not e!820339))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11835 0))(
  ( (MissingZero!11835 (index!49731 (_ BitVec 32))) (Found!11835 (index!49732 (_ BitVec 32))) (Intermediate!11835 (undefined!12647 Bool) (index!49733 (_ BitVec 32)) (x!131351 (_ BitVec 32))) (Undefined!11835) (MissingVacant!11835 (index!49734 (_ BitVec 32))) )
))
(declare-fun lt!638990 () SeekEntryResult!11835)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98553 0))(
  ( (array!98554 (arr!47560 (Array (_ BitVec 32) (_ BitVec 64))) (size!48111 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98553)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98553 (_ BitVec 32)) SeekEntryResult!11835)

(assert (=> b!1458376 (= res!988609 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47560 a!2862) j!93) a!2862 mask!2687) lt!638990))))

(declare-fun b!1458377 () Bool)

(declare-fun res!988605 () Bool)

(declare-fun e!820334 () Bool)

(assert (=> b!1458377 (=> (not res!988605) (not e!820334))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458377 (= res!988605 (and (= (size!48111 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48111 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48111 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458378 () Bool)

(declare-fun res!988613 () Bool)

(assert (=> b!1458378 (=> (not res!988613) (not e!820334))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1458378 (= res!988613 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48111 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48111 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48111 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458379 () Bool)

(declare-fun res!988612 () Bool)

(declare-fun e!820338 () Bool)

(assert (=> b!1458379 (=> (not res!988612) (not e!820338))))

(assert (=> b!1458379 (= res!988612 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!820340 () Bool)

(declare-fun lt!638995 () (_ BitVec 64))

(declare-fun b!1458380 () Bool)

(declare-fun lt!638994 () SeekEntryResult!11835)

(declare-fun lt!638989 () array!98553)

(assert (=> b!1458380 (= e!820340 (= lt!638994 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638995 lt!638989 mask!2687)))))

(declare-fun b!1458381 () Bool)

(declare-fun e!820341 () Bool)

(assert (=> b!1458381 (= e!820341 (and (or (= (select (arr!47560 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47560 a!2862) intermediateBeforeIndex!19) (select (arr!47560 a!2862) j!93))) (let ((bdg!53431 (select (store (arr!47560 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47560 a!2862) index!646) bdg!53431) (= (select (arr!47560 a!2862) index!646) (select (arr!47560 a!2862) j!93))) (= (select (arr!47560 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53431 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1458382 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98553 (_ BitVec 32)) SeekEntryResult!11835)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98553 (_ BitVec 32)) SeekEntryResult!11835)

(assert (=> b!1458382 (= e!820340 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638995 lt!638989 mask!2687) (seekEntryOrOpen!0 lt!638995 lt!638989 mask!2687)))))

(declare-fun b!1458383 () Bool)

(declare-fun res!988608 () Bool)

(assert (=> b!1458383 (=> (not res!988608) (not e!820334))))

(declare-datatypes ((List!34241 0))(
  ( (Nil!34238) (Cons!34237 (h!35587 (_ BitVec 64)) (t!48942 List!34241)) )
))
(declare-fun arrayNoDuplicates!0 (array!98553 (_ BitVec 32) List!34241) Bool)

(assert (=> b!1458383 (= res!988608 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34238))))

(declare-fun b!1458384 () Bool)

(declare-fun res!988614 () Bool)

(assert (=> b!1458384 (=> (not res!988614) (not e!820334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98553 (_ BitVec 32)) Bool)

(assert (=> b!1458384 (= res!988614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458385 () Bool)

(declare-fun res!988616 () Bool)

(assert (=> b!1458385 (=> (not res!988616) (not e!820338))))

(assert (=> b!1458385 (= res!988616 e!820340)))

(declare-fun c!134401 () Bool)

(assert (=> b!1458385 (= c!134401 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458386 () Bool)

(declare-fun e!820336 () Bool)

(declare-fun e!820335 () Bool)

(assert (=> b!1458386 (= e!820336 e!820335)))

(declare-fun res!988602 () Bool)

(assert (=> b!1458386 (=> res!988602 e!820335)))

(declare-fun lt!638992 () (_ BitVec 32))

(assert (=> b!1458386 (= res!988602 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638992 #b00000000000000000000000000000000) (bvsge lt!638992 (size!48111 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458386 (= lt!638992 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638988 () SeekEntryResult!11835)

(assert (=> b!1458386 (= lt!638988 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638995 lt!638989 mask!2687))))

(assert (=> b!1458386 (= lt!638988 (seekEntryOrOpen!0 lt!638995 lt!638989 mask!2687))))

(declare-fun b!1458387 () Bool)

(assert (=> b!1458387 (= e!820335 true)))

(declare-fun lt!638993 () Bool)

(declare-fun e!820342 () Bool)

(assert (=> b!1458387 (= lt!638993 e!820342)))

(declare-fun c!134402 () Bool)

(assert (=> b!1458387 (= c!134402 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458388 () Bool)

(declare-fun e!820343 () Bool)

(assert (=> b!1458388 (= e!820334 e!820343)))

(declare-fun res!988600 () Bool)

(assert (=> b!1458388 (=> (not res!988600) (not e!820343))))

(assert (=> b!1458388 (= res!988600 (= (select (store (arr!47560 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458388 (= lt!638989 (array!98554 (store (arr!47560 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48111 a!2862)))))

(declare-fun b!1458389 () Bool)

(declare-fun res!988601 () Bool)

(assert (=> b!1458389 (=> res!988601 e!820335)))

(assert (=> b!1458389 (= res!988601 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638992 (select (arr!47560 a!2862) j!93) a!2862 mask!2687) lt!638990)))))

(declare-fun b!1458390 () Bool)

(assert (=> b!1458390 (= e!820338 (not e!820336))))

(declare-fun res!988606 () Bool)

(assert (=> b!1458390 (=> res!988606 e!820336)))

(assert (=> b!1458390 (= res!988606 (or (and (= (select (arr!47560 a!2862) index!646) (select (store (arr!47560 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47560 a!2862) index!646) (select (arr!47560 a!2862) j!93))) (= (select (arr!47560 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458390 e!820341))

(declare-fun res!988610 () Bool)

(assert (=> b!1458390 (=> (not res!988610) (not e!820341))))

(assert (=> b!1458390 (= res!988610 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49114 0))(
  ( (Unit!49115) )
))
(declare-fun lt!638991 () Unit!49114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98553 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49114)

(assert (=> b!1458390 (= lt!638991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458391 () Bool)

(declare-fun res!988611 () Bool)

(assert (=> b!1458391 (=> (not res!988611) (not e!820341))))

(assert (=> b!1458391 (= res!988611 (= (seekEntryOrOpen!0 (select (arr!47560 a!2862) j!93) a!2862 mask!2687) (Found!11835 j!93)))))

(declare-fun res!988615 () Bool)

(assert (=> start!125188 (=> (not res!988615) (not e!820334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125188 (= res!988615 (validMask!0 mask!2687))))

(assert (=> start!125188 e!820334))

(assert (=> start!125188 true))

(declare-fun array_inv!36505 (array!98553) Bool)

(assert (=> start!125188 (array_inv!36505 a!2862)))

(declare-fun b!1458392 () Bool)

(declare-fun res!988604 () Bool)

(assert (=> b!1458392 (=> (not res!988604) (not e!820334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458392 (= res!988604 (validKeyInArray!0 (select (arr!47560 a!2862) j!93)))))

(declare-fun b!1458393 () Bool)

(assert (=> b!1458393 (= e!820342 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638992 intermediateAfterIndex!19 lt!638995 lt!638989 mask!2687) lt!638988)))))

(declare-fun b!1458394 () Bool)

(assert (=> b!1458394 (= e!820343 e!820339)))

(declare-fun res!988607 () Bool)

(assert (=> b!1458394 (=> (not res!988607) (not e!820339))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458394 (= res!988607 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47560 a!2862) j!93) mask!2687) (select (arr!47560 a!2862) j!93) a!2862 mask!2687) lt!638990))))

(assert (=> b!1458394 (= lt!638990 (Intermediate!11835 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458395 () Bool)

(assert (=> b!1458395 (= e!820339 e!820338)))

(declare-fun res!988603 () Bool)

(assert (=> b!1458395 (=> (not res!988603) (not e!820338))))

(assert (=> b!1458395 (= res!988603 (= lt!638994 (Intermediate!11835 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458395 (= lt!638994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638995 mask!2687) lt!638995 lt!638989 mask!2687))))

(assert (=> b!1458395 (= lt!638995 (select (store (arr!47560 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458396 () Bool)

(declare-fun res!988617 () Bool)

(assert (=> b!1458396 (=> (not res!988617) (not e!820334))))

(assert (=> b!1458396 (= res!988617 (validKeyInArray!0 (select (arr!47560 a!2862) i!1006)))))

(declare-fun b!1458397 () Bool)

(assert (=> b!1458397 (= e!820342 (not (= lt!638994 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638992 lt!638995 lt!638989 mask!2687))))))

(assert (= (and start!125188 res!988615) b!1458377))

(assert (= (and b!1458377 res!988605) b!1458396))

(assert (= (and b!1458396 res!988617) b!1458392))

(assert (= (and b!1458392 res!988604) b!1458384))

(assert (= (and b!1458384 res!988614) b!1458383))

(assert (= (and b!1458383 res!988608) b!1458378))

(assert (= (and b!1458378 res!988613) b!1458388))

(assert (= (and b!1458388 res!988600) b!1458394))

(assert (= (and b!1458394 res!988607) b!1458376))

(assert (= (and b!1458376 res!988609) b!1458395))

(assert (= (and b!1458395 res!988603) b!1458385))

(assert (= (and b!1458385 c!134401) b!1458380))

(assert (= (and b!1458385 (not c!134401)) b!1458382))

(assert (= (and b!1458385 res!988616) b!1458379))

(assert (= (and b!1458379 res!988612) b!1458390))

(assert (= (and b!1458390 res!988610) b!1458391))

(assert (= (and b!1458391 res!988611) b!1458381))

(assert (= (and b!1458390 (not res!988606)) b!1458386))

(assert (= (and b!1458386 (not res!988602)) b!1458389))

(assert (= (and b!1458389 (not res!988601)) b!1458387))

(assert (= (and b!1458387 c!134402) b!1458397))

(assert (= (and b!1458387 (not c!134402)) b!1458393))

(declare-fun m!1346289 () Bool)

(assert (=> b!1458397 m!1346289))

(declare-fun m!1346291 () Bool)

(assert (=> b!1458390 m!1346291))

(declare-fun m!1346293 () Bool)

(assert (=> b!1458390 m!1346293))

(declare-fun m!1346295 () Bool)

(assert (=> b!1458390 m!1346295))

(declare-fun m!1346297 () Bool)

(assert (=> b!1458390 m!1346297))

(declare-fun m!1346299 () Bool)

(assert (=> b!1458390 m!1346299))

(declare-fun m!1346301 () Bool)

(assert (=> b!1458390 m!1346301))

(assert (=> b!1458391 m!1346301))

(assert (=> b!1458391 m!1346301))

(declare-fun m!1346303 () Bool)

(assert (=> b!1458391 m!1346303))

(declare-fun m!1346305 () Bool)

(assert (=> b!1458386 m!1346305))

(declare-fun m!1346307 () Bool)

(assert (=> b!1458386 m!1346307))

(declare-fun m!1346309 () Bool)

(assert (=> b!1458386 m!1346309))

(declare-fun m!1346311 () Bool)

(assert (=> b!1458383 m!1346311))

(assert (=> b!1458382 m!1346307))

(assert (=> b!1458382 m!1346309))

(declare-fun m!1346313 () Bool)

(assert (=> b!1458396 m!1346313))

(assert (=> b!1458396 m!1346313))

(declare-fun m!1346315 () Bool)

(assert (=> b!1458396 m!1346315))

(assert (=> b!1458392 m!1346301))

(assert (=> b!1458392 m!1346301))

(declare-fun m!1346317 () Bool)

(assert (=> b!1458392 m!1346317))

(assert (=> b!1458388 m!1346293))

(declare-fun m!1346319 () Bool)

(assert (=> b!1458388 m!1346319))

(assert (=> b!1458389 m!1346301))

(assert (=> b!1458389 m!1346301))

(declare-fun m!1346321 () Bool)

(assert (=> b!1458389 m!1346321))

(declare-fun m!1346323 () Bool)

(assert (=> start!125188 m!1346323))

(declare-fun m!1346325 () Bool)

(assert (=> start!125188 m!1346325))

(declare-fun m!1346327 () Bool)

(assert (=> b!1458380 m!1346327))

(declare-fun m!1346329 () Bool)

(assert (=> b!1458384 m!1346329))

(assert (=> b!1458381 m!1346293))

(declare-fun m!1346331 () Bool)

(assert (=> b!1458381 m!1346331))

(assert (=> b!1458381 m!1346295))

(assert (=> b!1458381 m!1346297))

(assert (=> b!1458381 m!1346301))

(assert (=> b!1458376 m!1346301))

(assert (=> b!1458376 m!1346301))

(declare-fun m!1346333 () Bool)

(assert (=> b!1458376 m!1346333))

(declare-fun m!1346335 () Bool)

(assert (=> b!1458393 m!1346335))

(declare-fun m!1346337 () Bool)

(assert (=> b!1458395 m!1346337))

(assert (=> b!1458395 m!1346337))

(declare-fun m!1346339 () Bool)

(assert (=> b!1458395 m!1346339))

(assert (=> b!1458395 m!1346293))

(declare-fun m!1346341 () Bool)

(assert (=> b!1458395 m!1346341))

(assert (=> b!1458394 m!1346301))

(assert (=> b!1458394 m!1346301))

(declare-fun m!1346343 () Bool)

(assert (=> b!1458394 m!1346343))

(assert (=> b!1458394 m!1346343))

(assert (=> b!1458394 m!1346301))

(declare-fun m!1346345 () Bool)

(assert (=> b!1458394 m!1346345))

(push 1)

