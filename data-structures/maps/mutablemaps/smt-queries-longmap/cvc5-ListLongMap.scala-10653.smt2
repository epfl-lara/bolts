; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125098 () Bool)

(assert start!125098)

(declare-fun e!818993 () Bool)

(declare-datatypes ((array!98463 0))(
  ( (array!98464 (arr!47515 (Array (_ BitVec 32) (_ BitVec 64))) (size!48066 (_ BitVec 32))) )
))
(declare-fun lt!637908 () array!98463)

(declare-datatypes ((SeekEntryResult!11790 0))(
  ( (MissingZero!11790 (index!49551 (_ BitVec 32))) (Found!11790 (index!49552 (_ BitVec 32))) (Intermediate!11790 (undefined!12602 Bool) (index!49553 (_ BitVec 32)) (x!131186 (_ BitVec 32))) (Undefined!11790) (MissingVacant!11790 (index!49554 (_ BitVec 32))) )
))
(declare-fun lt!637913 () SeekEntryResult!11790)

(declare-fun lt!637909 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637914 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1455406 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98463 (_ BitVec 32)) SeekEntryResult!11790)

(assert (=> b!1455406 (= e!818993 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637914 intermediateAfterIndex!19 lt!637909 lt!637908 mask!2687) lt!637913)))))

(declare-fun b!1455407 () Bool)

(declare-fun res!986182 () Bool)

(declare-fun e!818990 () Bool)

(assert (=> b!1455407 (=> res!986182 e!818990)))

(declare-fun lt!637911 () SeekEntryResult!11790)

(declare-fun a!2862 () array!98463)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98463 (_ BitVec 32)) SeekEntryResult!11790)

(assert (=> b!1455407 (= res!986182 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637914 (select (arr!47515 a!2862) j!93) a!2862 mask!2687) lt!637911)))))

(declare-fun res!986175 () Bool)

(declare-fun e!818985 () Bool)

(assert (=> start!125098 (=> (not res!986175) (not e!818985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125098 (= res!986175 (validMask!0 mask!2687))))

(assert (=> start!125098 e!818985))

(assert (=> start!125098 true))

(declare-fun array_inv!36460 (array!98463) Bool)

(assert (=> start!125098 (array_inv!36460 a!2862)))

(declare-fun b!1455408 () Bool)

(declare-fun e!818991 () Bool)

(declare-fun e!818992 () Bool)

(assert (=> b!1455408 (= e!818991 (not e!818992))))

(declare-fun res!986172 () Bool)

(assert (=> b!1455408 (=> res!986172 e!818992)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455408 (= res!986172 (or (and (= (select (arr!47515 a!2862) index!646) (select (store (arr!47515 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47515 a!2862) index!646) (select (arr!47515 a!2862) j!93))) (= (select (arr!47515 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818988 () Bool)

(assert (=> b!1455408 e!818988))

(declare-fun res!986184 () Bool)

(assert (=> b!1455408 (=> (not res!986184) (not e!818988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98463 (_ BitVec 32)) Bool)

(assert (=> b!1455408 (= res!986184 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49024 0))(
  ( (Unit!49025) )
))
(declare-fun lt!637910 () Unit!49024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49024)

(assert (=> b!1455408 (= lt!637910 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455409 () Bool)

(assert (=> b!1455409 (= e!818990 true)))

(declare-fun lt!637915 () Bool)

(assert (=> b!1455409 (= lt!637915 e!818993)))

(declare-fun c!134131 () Bool)

(assert (=> b!1455409 (= c!134131 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455410 () Bool)

(declare-fun e!818989 () Bool)

(assert (=> b!1455410 (= e!818989 e!818991)))

(declare-fun res!986187 () Bool)

(assert (=> b!1455410 (=> (not res!986187) (not e!818991))))

(declare-fun lt!637912 () SeekEntryResult!11790)

(assert (=> b!1455410 (= res!986187 (= lt!637912 (Intermediate!11790 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455410 (= lt!637912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637909 mask!2687) lt!637909 lt!637908 mask!2687))))

(assert (=> b!1455410 (= lt!637909 (select (store (arr!47515 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455411 () Bool)

(declare-fun res!986174 () Bool)

(assert (=> b!1455411 (=> (not res!986174) (not e!818989))))

(assert (=> b!1455411 (= res!986174 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47515 a!2862) j!93) a!2862 mask!2687) lt!637911))))

(declare-fun b!1455412 () Bool)

(declare-fun e!818986 () Bool)

(assert (=> b!1455412 (= e!818986 e!818989)))

(declare-fun res!986176 () Bool)

(assert (=> b!1455412 (=> (not res!986176) (not e!818989))))

(assert (=> b!1455412 (= res!986176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47515 a!2862) j!93) mask!2687) (select (arr!47515 a!2862) j!93) a!2862 mask!2687) lt!637911))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455412 (= lt!637911 (Intermediate!11790 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455413 () Bool)

(assert (=> b!1455413 (= e!818988 (and (or (= (select (arr!47515 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47515 a!2862) intermediateBeforeIndex!19) (select (arr!47515 a!2862) j!93))) (let ((bdg!53161 (select (store (arr!47515 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47515 a!2862) index!646) bdg!53161) (= (select (arr!47515 a!2862) index!646) (select (arr!47515 a!2862) j!93))) (= (select (arr!47515 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53161 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455414 () Bool)

(declare-fun res!986173 () Bool)

(assert (=> b!1455414 (=> (not res!986173) (not e!818985))))

(assert (=> b!1455414 (= res!986173 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48066 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48066 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48066 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!818984 () Bool)

(declare-fun b!1455415 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98463 (_ BitVec 32)) SeekEntryResult!11790)

(assert (=> b!1455415 (= e!818984 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637909 lt!637908 mask!2687) (seekEntryOrOpen!0 lt!637909 lt!637908 mask!2687)))))

(declare-fun b!1455416 () Bool)

(assert (=> b!1455416 (= e!818985 e!818986)))

(declare-fun res!986186 () Bool)

(assert (=> b!1455416 (=> (not res!986186) (not e!818986))))

(assert (=> b!1455416 (= res!986186 (= (select (store (arr!47515 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455416 (= lt!637908 (array!98464 (store (arr!47515 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48066 a!2862)))))

(declare-fun b!1455417 () Bool)

(declare-fun res!986181 () Bool)

(assert (=> b!1455417 (=> (not res!986181) (not e!818988))))

(assert (=> b!1455417 (= res!986181 (= (seekEntryOrOpen!0 (select (arr!47515 a!2862) j!93) a!2862 mask!2687) (Found!11790 j!93)))))

(declare-fun b!1455418 () Bool)

(declare-fun res!986171 () Bool)

(assert (=> b!1455418 (=> (not res!986171) (not e!818985))))

(assert (=> b!1455418 (= res!986171 (and (= (size!48066 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48066 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48066 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455419 () Bool)

(assert (=> b!1455419 (= e!818992 e!818990)))

(declare-fun res!986179 () Bool)

(assert (=> b!1455419 (=> res!986179 e!818990)))

(assert (=> b!1455419 (= res!986179 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637914 #b00000000000000000000000000000000) (bvsge lt!637914 (size!48066 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455419 (= lt!637914 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1455419 (= lt!637913 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637909 lt!637908 mask!2687))))

(assert (=> b!1455419 (= lt!637913 (seekEntryOrOpen!0 lt!637909 lt!637908 mask!2687))))

(declare-fun b!1455420 () Bool)

(declare-fun res!986170 () Bool)

(assert (=> b!1455420 (=> (not res!986170) (not e!818985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455420 (= res!986170 (validKeyInArray!0 (select (arr!47515 a!2862) j!93)))))

(declare-fun b!1455421 () Bool)

(declare-fun res!986178 () Bool)

(assert (=> b!1455421 (=> (not res!986178) (not e!818991))))

(assert (=> b!1455421 (= res!986178 e!818984)))

(declare-fun c!134132 () Bool)

(assert (=> b!1455421 (= c!134132 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455422 () Bool)

(declare-fun res!986185 () Bool)

(assert (=> b!1455422 (=> (not res!986185) (not e!818991))))

(assert (=> b!1455422 (= res!986185 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455423 () Bool)

(declare-fun res!986180 () Bool)

(assert (=> b!1455423 (=> (not res!986180) (not e!818985))))

(declare-datatypes ((List!34196 0))(
  ( (Nil!34193) (Cons!34192 (h!35542 (_ BitVec 64)) (t!48897 List!34196)) )
))
(declare-fun arrayNoDuplicates!0 (array!98463 (_ BitVec 32) List!34196) Bool)

(assert (=> b!1455423 (= res!986180 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34193))))

(declare-fun b!1455424 () Bool)

(assert (=> b!1455424 (= e!818984 (= lt!637912 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637909 lt!637908 mask!2687)))))

(declare-fun b!1455425 () Bool)

(assert (=> b!1455425 (= e!818993 (not (= lt!637912 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637914 lt!637909 lt!637908 mask!2687))))))

(declare-fun b!1455426 () Bool)

(declare-fun res!986183 () Bool)

(assert (=> b!1455426 (=> (not res!986183) (not e!818985))))

(assert (=> b!1455426 (= res!986183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455427 () Bool)

(declare-fun res!986177 () Bool)

(assert (=> b!1455427 (=> (not res!986177) (not e!818985))))

(assert (=> b!1455427 (= res!986177 (validKeyInArray!0 (select (arr!47515 a!2862) i!1006)))))

(assert (= (and start!125098 res!986175) b!1455418))

(assert (= (and b!1455418 res!986171) b!1455427))

(assert (= (and b!1455427 res!986177) b!1455420))

(assert (= (and b!1455420 res!986170) b!1455426))

(assert (= (and b!1455426 res!986183) b!1455423))

(assert (= (and b!1455423 res!986180) b!1455414))

(assert (= (and b!1455414 res!986173) b!1455416))

(assert (= (and b!1455416 res!986186) b!1455412))

(assert (= (and b!1455412 res!986176) b!1455411))

(assert (= (and b!1455411 res!986174) b!1455410))

(assert (= (and b!1455410 res!986187) b!1455421))

(assert (= (and b!1455421 c!134132) b!1455424))

(assert (= (and b!1455421 (not c!134132)) b!1455415))

(assert (= (and b!1455421 res!986178) b!1455422))

(assert (= (and b!1455422 res!986185) b!1455408))

(assert (= (and b!1455408 res!986184) b!1455417))

(assert (= (and b!1455417 res!986181) b!1455413))

(assert (= (and b!1455408 (not res!986172)) b!1455419))

(assert (= (and b!1455419 (not res!986179)) b!1455407))

(assert (= (and b!1455407 (not res!986182)) b!1455409))

(assert (= (and b!1455409 c!134131) b!1455425))

(assert (= (and b!1455409 (not c!134131)) b!1455406))

(declare-fun m!1343679 () Bool)

(assert (=> b!1455408 m!1343679))

(declare-fun m!1343681 () Bool)

(assert (=> b!1455408 m!1343681))

(declare-fun m!1343683 () Bool)

(assert (=> b!1455408 m!1343683))

(declare-fun m!1343685 () Bool)

(assert (=> b!1455408 m!1343685))

(declare-fun m!1343687 () Bool)

(assert (=> b!1455408 m!1343687))

(declare-fun m!1343689 () Bool)

(assert (=> b!1455408 m!1343689))

(declare-fun m!1343691 () Bool)

(assert (=> b!1455426 m!1343691))

(declare-fun m!1343693 () Bool)

(assert (=> b!1455410 m!1343693))

(assert (=> b!1455410 m!1343693))

(declare-fun m!1343695 () Bool)

(assert (=> b!1455410 m!1343695))

(assert (=> b!1455410 m!1343681))

(declare-fun m!1343697 () Bool)

(assert (=> b!1455410 m!1343697))

(declare-fun m!1343699 () Bool)

(assert (=> b!1455423 m!1343699))

(assert (=> b!1455407 m!1343689))

(assert (=> b!1455407 m!1343689))

(declare-fun m!1343701 () Bool)

(assert (=> b!1455407 m!1343701))

(declare-fun m!1343703 () Bool)

(assert (=> b!1455424 m!1343703))

(declare-fun m!1343705 () Bool)

(assert (=> b!1455425 m!1343705))

(assert (=> b!1455411 m!1343689))

(assert (=> b!1455411 m!1343689))

(declare-fun m!1343707 () Bool)

(assert (=> b!1455411 m!1343707))

(assert (=> b!1455416 m!1343681))

(declare-fun m!1343709 () Bool)

(assert (=> b!1455416 m!1343709))

(declare-fun m!1343711 () Bool)

(assert (=> b!1455415 m!1343711))

(declare-fun m!1343713 () Bool)

(assert (=> b!1455415 m!1343713))

(assert (=> b!1455412 m!1343689))

(assert (=> b!1455412 m!1343689))

(declare-fun m!1343715 () Bool)

(assert (=> b!1455412 m!1343715))

(assert (=> b!1455412 m!1343715))

(assert (=> b!1455412 m!1343689))

(declare-fun m!1343717 () Bool)

(assert (=> b!1455412 m!1343717))

(assert (=> b!1455417 m!1343689))

(assert (=> b!1455417 m!1343689))

(declare-fun m!1343719 () Bool)

(assert (=> b!1455417 m!1343719))

(declare-fun m!1343721 () Bool)

(assert (=> b!1455427 m!1343721))

(assert (=> b!1455427 m!1343721))

(declare-fun m!1343723 () Bool)

(assert (=> b!1455427 m!1343723))

(assert (=> b!1455413 m!1343681))

(declare-fun m!1343725 () Bool)

(assert (=> b!1455413 m!1343725))

(assert (=> b!1455413 m!1343683))

(assert (=> b!1455413 m!1343685))

(assert (=> b!1455413 m!1343689))

(declare-fun m!1343727 () Bool)

(assert (=> b!1455406 m!1343727))

(declare-fun m!1343729 () Bool)

(assert (=> b!1455419 m!1343729))

(assert (=> b!1455419 m!1343711))

(assert (=> b!1455419 m!1343713))

(declare-fun m!1343731 () Bool)

(assert (=> start!125098 m!1343731))

(declare-fun m!1343733 () Bool)

(assert (=> start!125098 m!1343733))

(assert (=> b!1455420 m!1343689))

(assert (=> b!1455420 m!1343689))

(declare-fun m!1343735 () Bool)

(assert (=> b!1455420 m!1343735))

(push 1)

