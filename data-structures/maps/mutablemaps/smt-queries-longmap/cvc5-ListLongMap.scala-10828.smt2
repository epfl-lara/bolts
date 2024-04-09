; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126790 () Bool)

(assert start!126790)

(declare-fun b!1487917 () Bool)

(declare-fun res!1011977 () Bool)

(declare-fun e!834054 () Bool)

(assert (=> b!1487917 (=> (not res!1011977) (not e!834054))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12303 0))(
  ( (MissingZero!12303 (index!51603 (_ BitVec 32))) (Found!12303 (index!51604 (_ BitVec 32))) (Intermediate!12303 (undefined!13115 Bool) (index!51605 (_ BitVec 32)) (x!133198 (_ BitVec 32))) (Undefined!12303) (MissingVacant!12303 (index!51606 (_ BitVec 32))) )
))
(declare-fun lt!648967 () SeekEntryResult!12303)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99543 0))(
  ( (array!99544 (arr!48040 (Array (_ BitVec 32) (_ BitVec 64))) (size!48591 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99543)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99543 (_ BitVec 32)) SeekEntryResult!12303)

(assert (=> b!1487917 (= res!1011977 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!648967))))

(declare-fun e!834053 () Bool)

(declare-fun lt!648969 () SeekEntryResult!12303)

(declare-fun b!1487918 () Bool)

(declare-fun lt!648973 () array!99543)

(declare-fun lt!648970 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!648968 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99543 (_ BitVec 32)) SeekEntryResult!12303)

(assert (=> b!1487918 (= e!834053 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648970 intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687) lt!648969))))

(declare-fun b!1487919 () Bool)

(declare-fun e!834058 () Bool)

(declare-fun e!834055 () Bool)

(assert (=> b!1487919 (= e!834058 e!834055)))

(declare-fun res!1011973 () Bool)

(assert (=> b!1487919 (=> res!1011973 e!834055)))

(assert (=> b!1487919 (= res!1011973 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648970 #b00000000000000000000000000000000) (bvsge lt!648970 (size!48591 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487919 (= lt!648970 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1487919 (= lt!648969 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99543 (_ BitVec 32)) SeekEntryResult!12303)

(assert (=> b!1487919 (= lt!648969 (seekEntryOrOpen!0 lt!648968 lt!648973 mask!2687))))

(declare-fun b!1487920 () Bool)

(declare-fun e!834059 () Bool)

(assert (=> b!1487920 (= e!834054 e!834059)))

(declare-fun res!1011985 () Bool)

(assert (=> b!1487920 (=> (not res!1011985) (not e!834059))))

(declare-fun lt!648971 () SeekEntryResult!12303)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1487920 (= res!1011985 (= lt!648971 (Intermediate!12303 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487920 (= lt!648971 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648968 mask!2687) lt!648968 lt!648973 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1487920 (= lt!648968 (select (store (arr!48040 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1487921 () Bool)

(declare-fun e!834060 () Bool)

(assert (=> b!1487921 (= e!834060 (and (or (= (select (arr!48040 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48040 a!2862) intermediateBeforeIndex!19) (select (arr!48040 a!2862) j!93))) (let ((bdg!54636 (select (store (arr!48040 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48040 a!2862) index!646) bdg!54636) (= (select (arr!48040 a!2862) index!646) (select (arr!48040 a!2862) j!93))) (= (select (arr!48040 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54636 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!834056 () Bool)

(declare-fun b!1487922 () Bool)

(assert (=> b!1487922 (= e!834056 (= lt!648971 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648968 lt!648973 mask!2687)))))

(declare-fun b!1487923 () Bool)

(declare-fun res!1011984 () Bool)

(assert (=> b!1487923 (=> res!1011984 e!834055)))

(assert (=> b!1487923 (= res!1011984 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648970 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!648967)))))

(declare-fun b!1487924 () Bool)

(declare-fun res!1011978 () Bool)

(declare-fun e!834062 () Bool)

(assert (=> b!1487924 (=> (not res!1011978) (not e!834062))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487924 (= res!1011978 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48591 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48591 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48591 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487925 () Bool)

(assert (=> b!1487925 (= e!834053 (= lt!648971 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648970 lt!648968 lt!648973 mask!2687)))))

(declare-fun res!1011979 () Bool)

(assert (=> start!126790 (=> (not res!1011979) (not e!834062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126790 (= res!1011979 (validMask!0 mask!2687))))

(assert (=> start!126790 e!834062))

(assert (=> start!126790 true))

(declare-fun array_inv!36985 (array!99543) Bool)

(assert (=> start!126790 (array_inv!36985 a!2862)))

(declare-fun b!1487926 () Bool)

(declare-fun res!1011980 () Bool)

(assert (=> b!1487926 (=> (not res!1011980) (not e!834059))))

(assert (=> b!1487926 (= res!1011980 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487927 () Bool)

(assert (=> b!1487927 (= e!834059 (not e!834058))))

(declare-fun res!1011989 () Bool)

(assert (=> b!1487927 (=> res!1011989 e!834058)))

(assert (=> b!1487927 (= res!1011989 (or (and (= (select (arr!48040 a!2862) index!646) (select (store (arr!48040 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48040 a!2862) index!646) (select (arr!48040 a!2862) j!93))) (= (select (arr!48040 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487927 e!834060))

(declare-fun res!1011990 () Bool)

(assert (=> b!1487927 (=> (not res!1011990) (not e!834060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99543 (_ BitVec 32)) Bool)

(assert (=> b!1487927 (= res!1011990 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49894 0))(
  ( (Unit!49895) )
))
(declare-fun lt!648972 () Unit!49894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49894)

(assert (=> b!1487927 (= lt!648972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487928 () Bool)

(declare-fun res!1011981 () Bool)

(assert (=> b!1487928 (=> (not res!1011981) (not e!834059))))

(assert (=> b!1487928 (= res!1011981 e!834056)))

(declare-fun c!137501 () Bool)

(assert (=> b!1487928 (= c!137501 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487929 () Bool)

(declare-fun res!1011987 () Bool)

(assert (=> b!1487929 (=> (not res!1011987) (not e!834062))))

(assert (=> b!1487929 (= res!1011987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487930 () Bool)

(declare-fun res!1011974 () Bool)

(assert (=> b!1487930 (=> (not res!1011974) (not e!834062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487930 (= res!1011974 (validKeyInArray!0 (select (arr!48040 a!2862) j!93)))))

(declare-fun b!1487931 () Bool)

(declare-fun e!834061 () Bool)

(assert (=> b!1487931 (= e!834062 e!834061)))

(declare-fun res!1011986 () Bool)

(assert (=> b!1487931 (=> (not res!1011986) (not e!834061))))

(assert (=> b!1487931 (= res!1011986 (= (select (store (arr!48040 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487931 (= lt!648973 (array!99544 (store (arr!48040 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48591 a!2862)))))

(declare-fun b!1487932 () Bool)

(declare-fun res!1011982 () Bool)

(assert (=> b!1487932 (=> (not res!1011982) (not e!834060))))

(assert (=> b!1487932 (= res!1011982 (= (seekEntryOrOpen!0 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) (Found!12303 j!93)))))

(declare-fun b!1487933 () Bool)

(declare-fun res!1011975 () Bool)

(assert (=> b!1487933 (=> (not res!1011975) (not e!834062))))

(declare-datatypes ((List!34721 0))(
  ( (Nil!34718) (Cons!34717 (h!36097 (_ BitVec 64)) (t!49422 List!34721)) )
))
(declare-fun arrayNoDuplicates!0 (array!99543 (_ BitVec 32) List!34721) Bool)

(assert (=> b!1487933 (= res!1011975 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34718))))

(declare-fun b!1487934 () Bool)

(declare-fun res!1011988 () Bool)

(assert (=> b!1487934 (=> (not res!1011988) (not e!834062))))

(assert (=> b!1487934 (= res!1011988 (validKeyInArray!0 (select (arr!48040 a!2862) i!1006)))))

(declare-fun b!1487935 () Bool)

(declare-fun res!1011983 () Bool)

(assert (=> b!1487935 (=> (not res!1011983) (not e!834062))))

(assert (=> b!1487935 (= res!1011983 (and (= (size!48591 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48591 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48591 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487936 () Bool)

(assert (=> b!1487936 (= e!834061 e!834054)))

(declare-fun res!1011976 () Bool)

(assert (=> b!1487936 (=> (not res!1011976) (not e!834054))))

(assert (=> b!1487936 (= res!1011976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!648967))))

(assert (=> b!1487936 (= lt!648967 (Intermediate!12303 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487937 () Bool)

(assert (=> b!1487937 (= e!834056 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687) (seekEntryOrOpen!0 lt!648968 lt!648973 mask!2687)))))

(declare-fun b!1487938 () Bool)

(assert (=> b!1487938 (= e!834055 e!834053)))

(declare-fun c!137500 () Bool)

(assert (=> b!1487938 (= c!137500 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!126790 res!1011979) b!1487935))

(assert (= (and b!1487935 res!1011983) b!1487934))

(assert (= (and b!1487934 res!1011988) b!1487930))

(assert (= (and b!1487930 res!1011974) b!1487929))

(assert (= (and b!1487929 res!1011987) b!1487933))

(assert (= (and b!1487933 res!1011975) b!1487924))

(assert (= (and b!1487924 res!1011978) b!1487931))

(assert (= (and b!1487931 res!1011986) b!1487936))

(assert (= (and b!1487936 res!1011976) b!1487917))

(assert (= (and b!1487917 res!1011977) b!1487920))

(assert (= (and b!1487920 res!1011985) b!1487928))

(assert (= (and b!1487928 c!137501) b!1487922))

(assert (= (and b!1487928 (not c!137501)) b!1487937))

(assert (= (and b!1487928 res!1011981) b!1487926))

(assert (= (and b!1487926 res!1011980) b!1487927))

(assert (= (and b!1487927 res!1011990) b!1487932))

(assert (= (and b!1487932 res!1011982) b!1487921))

(assert (= (and b!1487927 (not res!1011989)) b!1487919))

(assert (= (and b!1487919 (not res!1011973)) b!1487923))

(assert (= (and b!1487923 (not res!1011984)) b!1487938))

(assert (= (and b!1487938 c!137500) b!1487925))

(assert (= (and b!1487938 (not c!137500)) b!1487918))

(declare-fun m!1372497 () Bool)

(assert (=> b!1487922 m!1372497))

(declare-fun m!1372499 () Bool)

(assert (=> b!1487919 m!1372499))

(declare-fun m!1372501 () Bool)

(assert (=> b!1487919 m!1372501))

(declare-fun m!1372503 () Bool)

(assert (=> b!1487919 m!1372503))

(declare-fun m!1372505 () Bool)

(assert (=> b!1487932 m!1372505))

(assert (=> b!1487932 m!1372505))

(declare-fun m!1372507 () Bool)

(assert (=> b!1487932 m!1372507))

(assert (=> b!1487917 m!1372505))

(assert (=> b!1487917 m!1372505))

(declare-fun m!1372509 () Bool)

(assert (=> b!1487917 m!1372509))

(declare-fun m!1372511 () Bool)

(assert (=> b!1487927 m!1372511))

(declare-fun m!1372513 () Bool)

(assert (=> b!1487927 m!1372513))

(declare-fun m!1372515 () Bool)

(assert (=> b!1487927 m!1372515))

(declare-fun m!1372517 () Bool)

(assert (=> b!1487927 m!1372517))

(declare-fun m!1372519 () Bool)

(assert (=> b!1487927 m!1372519))

(assert (=> b!1487927 m!1372505))

(assert (=> b!1487937 m!1372501))

(assert (=> b!1487937 m!1372503))

(declare-fun m!1372521 () Bool)

(assert (=> b!1487929 m!1372521))

(declare-fun m!1372523 () Bool)

(assert (=> start!126790 m!1372523))

(declare-fun m!1372525 () Bool)

(assert (=> start!126790 m!1372525))

(declare-fun m!1372527 () Bool)

(assert (=> b!1487934 m!1372527))

(assert (=> b!1487934 m!1372527))

(declare-fun m!1372529 () Bool)

(assert (=> b!1487934 m!1372529))

(assert (=> b!1487930 m!1372505))

(assert (=> b!1487930 m!1372505))

(declare-fun m!1372531 () Bool)

(assert (=> b!1487930 m!1372531))

(assert (=> b!1487936 m!1372505))

(assert (=> b!1487936 m!1372505))

(declare-fun m!1372533 () Bool)

(assert (=> b!1487936 m!1372533))

(assert (=> b!1487936 m!1372533))

(assert (=> b!1487936 m!1372505))

(declare-fun m!1372535 () Bool)

(assert (=> b!1487936 m!1372535))

(assert (=> b!1487921 m!1372513))

(declare-fun m!1372537 () Bool)

(assert (=> b!1487921 m!1372537))

(assert (=> b!1487921 m!1372515))

(assert (=> b!1487921 m!1372517))

(assert (=> b!1487921 m!1372505))

(assert (=> b!1487923 m!1372505))

(assert (=> b!1487923 m!1372505))

(declare-fun m!1372539 () Bool)

(assert (=> b!1487923 m!1372539))

(declare-fun m!1372541 () Bool)

(assert (=> b!1487925 m!1372541))

(assert (=> b!1487931 m!1372513))

(declare-fun m!1372543 () Bool)

(assert (=> b!1487931 m!1372543))

(declare-fun m!1372545 () Bool)

(assert (=> b!1487920 m!1372545))

(assert (=> b!1487920 m!1372545))

(declare-fun m!1372547 () Bool)

(assert (=> b!1487920 m!1372547))

(assert (=> b!1487920 m!1372513))

(declare-fun m!1372549 () Bool)

(assert (=> b!1487920 m!1372549))

(declare-fun m!1372551 () Bool)

(assert (=> b!1487933 m!1372551))

(declare-fun m!1372553 () Bool)

(assert (=> b!1487918 m!1372553))

(push 1)

(assert (not b!1487934))

(assert (not b!1487922))

(assert (not b!1487917))

(assert (not b!1487923))

(assert (not b!1487937))

(assert (not start!126790))

(assert (not b!1487919))

(assert (not b!1487932))

(assert (not b!1487936))

(assert (not b!1487933))

(assert (not b!1487918))

(assert (not b!1487929))

(assert (not b!1487920))

(assert (not b!1487930))

(assert (not b!1487925))

(assert (not b!1487927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1488164 () Bool)

(declare-fun e!834178 () SeekEntryResult!12303)

(assert (=> b!1488164 (= e!834178 Undefined!12303)))

(declare-fun b!1488165 () Bool)

(declare-fun e!834176 () SeekEntryResult!12303)

(assert (=> b!1488165 (= e!834176 (Found!12303 index!646))))

(declare-fun b!1488166 () Bool)

(declare-fun e!834177 () SeekEntryResult!12303)

(assert (=> b!1488166 (= e!834177 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488167 () Bool)

(declare-fun c!137550 () Bool)

(declare-fun lt!649048 () (_ BitVec 64))

(assert (=> b!1488167 (= c!137550 (= lt!649048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488167 (= e!834176 e!834177)))

(declare-fun b!1488169 () Bool)

(assert (=> b!1488169 (= e!834178 e!834176)))

(declare-fun c!137552 () Bool)

(assert (=> b!1488169 (= c!137552 (= lt!649048 lt!648968))))

(declare-fun b!1488168 () Bool)

(assert (=> b!1488168 (= e!834177 (MissingVacant!12303 intermediateAfterIndex!19))))

(declare-fun lt!649051 () SeekEntryResult!12303)

(declare-fun d!156611 () Bool)

(assert (=> d!156611 (and (or (is-Undefined!12303 lt!649051) (not (is-Found!12303 lt!649051)) (and (bvsge (index!51604 lt!649051) #b00000000000000000000000000000000) (bvslt (index!51604 lt!649051) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649051) (is-Found!12303 lt!649051) (not (is-MissingVacant!12303 lt!649051)) (not (= (index!51606 lt!649051) intermediateAfterIndex!19)) (and (bvsge (index!51606 lt!649051) #b00000000000000000000000000000000) (bvslt (index!51606 lt!649051) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649051) (ite (is-Found!12303 lt!649051) (= (select (arr!48040 lt!648973) (index!51604 lt!649051)) lt!648968) (and (is-MissingVacant!12303 lt!649051) (= (index!51606 lt!649051) intermediateAfterIndex!19) (= (select (arr!48040 lt!648973) (index!51606 lt!649051)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156611 (= lt!649051 e!834178)))

(declare-fun c!137551 () Bool)

(assert (=> d!156611 (= c!137551 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156611 (= lt!649048 (select (arr!48040 lt!648973) index!646))))

(assert (=> d!156611 (validMask!0 mask!2687)))

(assert (=> d!156611 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687) lt!649051)))

(assert (= (and d!156611 c!137551) b!1488164))

(assert (= (and d!156611 (not c!137551)) b!1488169))

(assert (= (and b!1488169 c!137552) b!1488165))

(assert (= (and b!1488169 (not c!137552)) b!1488167))

(assert (= (and b!1488167 c!137550) b!1488168))

(assert (= (and b!1488167 (not c!137550)) b!1488166))

(assert (=> b!1488166 m!1372499))

(assert (=> b!1488166 m!1372499))

(declare-fun m!1372703 () Bool)

(assert (=> b!1488166 m!1372703))

(declare-fun m!1372705 () Bool)

(assert (=> d!156611 m!1372705))

(declare-fun m!1372707 () Bool)

(assert (=> d!156611 m!1372707))

(declare-fun m!1372709 () Bool)

(assert (=> d!156611 m!1372709))

(assert (=> d!156611 m!1372523))

(assert (=> b!1487937 d!156611))

(declare-fun b!1488251 () Bool)

(declare-fun e!834228 () SeekEntryResult!12303)

(declare-fun e!834227 () SeekEntryResult!12303)

(assert (=> b!1488251 (= e!834228 e!834227)))

(declare-fun lt!649092 () (_ BitVec 64))

(declare-fun lt!649094 () SeekEntryResult!12303)

(assert (=> b!1488251 (= lt!649092 (select (arr!48040 lt!648973) (index!51605 lt!649094)))))

(declare-fun c!137587 () Bool)

(assert (=> b!1488251 (= c!137587 (= lt!649092 lt!648968))))

(declare-fun b!1488252 () Bool)

(assert (=> b!1488252 (= e!834227 (Found!12303 (index!51605 lt!649094)))))

(declare-fun b!1488253 () Bool)

(declare-fun e!834226 () SeekEntryResult!12303)

(assert (=> b!1488253 (= e!834226 (MissingZero!12303 (index!51605 lt!649094)))))

(declare-fun d!156617 () Bool)

(declare-fun lt!649093 () SeekEntryResult!12303)

(assert (=> d!156617 (and (or (is-Undefined!12303 lt!649093) (not (is-Found!12303 lt!649093)) (and (bvsge (index!51604 lt!649093) #b00000000000000000000000000000000) (bvslt (index!51604 lt!649093) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649093) (is-Found!12303 lt!649093) (not (is-MissingZero!12303 lt!649093)) (and (bvsge (index!51603 lt!649093) #b00000000000000000000000000000000) (bvslt (index!51603 lt!649093) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649093) (is-Found!12303 lt!649093) (is-MissingZero!12303 lt!649093) (not (is-MissingVacant!12303 lt!649093)) (and (bvsge (index!51606 lt!649093) #b00000000000000000000000000000000) (bvslt (index!51606 lt!649093) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649093) (ite (is-Found!12303 lt!649093) (= (select (arr!48040 lt!648973) (index!51604 lt!649093)) lt!648968) (ite (is-MissingZero!12303 lt!649093) (= (select (arr!48040 lt!648973) (index!51603 lt!649093)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12303 lt!649093) (= (select (arr!48040 lt!648973) (index!51606 lt!649093)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156617 (= lt!649093 e!834228)))

(declare-fun c!137586 () Bool)

(assert (=> d!156617 (= c!137586 (and (is-Intermediate!12303 lt!649094) (undefined!13115 lt!649094)))))

(assert (=> d!156617 (= lt!649094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648968 mask!2687) lt!648968 lt!648973 mask!2687))))

(assert (=> d!156617 (validMask!0 mask!2687)))

(assert (=> d!156617 (= (seekEntryOrOpen!0 lt!648968 lt!648973 mask!2687) lt!649093)))

(declare-fun b!1488254 () Bool)

(assert (=> b!1488254 (= e!834228 Undefined!12303)))

(declare-fun b!1488255 () Bool)

(assert (=> b!1488255 (= e!834226 (seekKeyOrZeroReturnVacant!0 (x!133198 lt!649094) (index!51605 lt!649094) (index!51605 lt!649094) lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488256 () Bool)

(declare-fun c!137588 () Bool)

(assert (=> b!1488256 (= c!137588 (= lt!649092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488256 (= e!834227 e!834226)))

(assert (= (and d!156617 c!137586) b!1488254))

(assert (= (and d!156617 (not c!137586)) b!1488251))

(assert (= (and b!1488251 c!137587) b!1488252))

(assert (= (and b!1488251 (not c!137587)) b!1488256))

(assert (= (and b!1488256 c!137588) b!1488253))

(assert (= (and b!1488256 (not c!137588)) b!1488255))

(declare-fun m!1372779 () Bool)

(assert (=> b!1488251 m!1372779))

(assert (=> d!156617 m!1372545))

(declare-fun m!1372781 () Bool)

(assert (=> d!156617 m!1372781))

(assert (=> d!156617 m!1372523))

(assert (=> d!156617 m!1372545))

(assert (=> d!156617 m!1372547))

(declare-fun m!1372783 () Bool)

(assert (=> d!156617 m!1372783))

(declare-fun m!1372785 () Bool)

(assert (=> d!156617 m!1372785))

(declare-fun m!1372787 () Bool)

(assert (=> b!1488255 m!1372787))

(assert (=> b!1487937 d!156617))

(declare-fun d!156637 () Bool)

(declare-fun res!1012158 () Bool)

(declare-fun e!834264 () Bool)

(assert (=> d!156637 (=> res!1012158 e!834264)))

(assert (=> d!156637 (= res!1012158 (bvsge j!93 (size!48591 a!2862)))))

(assert (=> d!156637 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!834264)))

(declare-fun b!1488314 () Bool)

(declare-fun e!834263 () Bool)

(declare-fun call!67927 () Bool)

(assert (=> b!1488314 (= e!834263 call!67927)))

(declare-fun b!1488315 () Bool)

(declare-fun e!834265 () Bool)

(assert (=> b!1488315 (= e!834265 e!834263)))

(declare-fun lt!649118 () (_ BitVec 64))

(assert (=> b!1488315 (= lt!649118 (select (arr!48040 a!2862) j!93))))

(declare-fun lt!649119 () Unit!49894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99543 (_ BitVec 64) (_ BitVec 32)) Unit!49894)

(assert (=> b!1488315 (= lt!649119 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!649118 j!93))))

(declare-fun arrayContainsKey!0 (array!99543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1488315 (arrayContainsKey!0 a!2862 lt!649118 #b00000000000000000000000000000000)))

(declare-fun lt!649120 () Unit!49894)

(assert (=> b!1488315 (= lt!649120 lt!649119)))

(declare-fun res!1012157 () Bool)

(assert (=> b!1488315 (= res!1012157 (= (seekEntryOrOpen!0 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) (Found!12303 j!93)))))

(assert (=> b!1488315 (=> (not res!1012157) (not e!834263))))

(declare-fun bm!67924 () Bool)

(assert (=> bm!67924 (= call!67927 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1488316 () Bool)

(assert (=> b!1488316 (= e!834264 e!834265)))

(declare-fun c!137607 () Bool)

(assert (=> b!1488316 (= c!137607 (validKeyInArray!0 (select (arr!48040 a!2862) j!93)))))

(declare-fun b!1488317 () Bool)

(assert (=> b!1488317 (= e!834265 call!67927)))

(assert (= (and d!156637 (not res!1012158)) b!1488316))

(assert (= (and b!1488316 c!137607) b!1488315))

(assert (= (and b!1488316 (not c!137607)) b!1488317))

(assert (= (and b!1488315 res!1012157) b!1488314))

(assert (= (or b!1488314 b!1488317) bm!67924))

(assert (=> b!1488315 m!1372505))

(declare-fun m!1372809 () Bool)

(assert (=> b!1488315 m!1372809))

(declare-fun m!1372811 () Bool)

(assert (=> b!1488315 m!1372811))

(assert (=> b!1488315 m!1372505))

(assert (=> b!1488315 m!1372507))

(declare-fun m!1372813 () Bool)

(assert (=> bm!67924 m!1372813))

(assert (=> b!1488316 m!1372505))

(assert (=> b!1488316 m!1372505))

(assert (=> b!1488316 m!1372531))

(assert (=> b!1487927 d!156637))

(declare-fun d!156649 () Bool)

(assert (=> d!156649 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649125 () Unit!49894)

(declare-fun choose!38 (array!99543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49894)

(assert (=> d!156649 (= lt!649125 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156649 (validMask!0 mask!2687)))

(assert (=> d!156649 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!649125)))

(declare-fun bs!42790 () Bool)

(assert (= bs!42790 d!156649))

(assert (=> bs!42790 m!1372519))

(declare-fun m!1372823 () Bool)

(assert (=> bs!42790 m!1372823))

(assert (=> bs!42790 m!1372523))

(assert (=> b!1487927 d!156649))

(declare-fun e!834305 () SeekEntryResult!12303)

(declare-fun b!1488382 () Bool)

(assert (=> b!1488382 (= e!834305 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648970 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488384 () Bool)

(declare-fun e!834306 () SeekEntryResult!12303)

(assert (=> b!1488384 (= e!834306 e!834305)))

(declare-fun c!137630 () Bool)

(declare-fun lt!649153 () (_ BitVec 64))

(assert (=> b!1488384 (= c!137630 (or (= lt!649153 lt!648968) (= (bvadd lt!649153 lt!649153) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488385 () Bool)

(declare-fun lt!649152 () SeekEntryResult!12303)

(assert (=> b!1488385 (and (bvsge (index!51605 lt!649152) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649152) (size!48591 lt!648973)))))

(declare-fun res!1012181 () Bool)

(assert (=> b!1488385 (= res!1012181 (= (select (arr!48040 lt!648973) (index!51605 lt!649152)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834303 () Bool)

(assert (=> b!1488385 (=> res!1012181 e!834303)))

(declare-fun b!1488386 () Bool)

(declare-fun e!834304 () Bool)

(declare-fun e!834302 () Bool)

(assert (=> b!1488386 (= e!834304 e!834302)))

(declare-fun res!1012182 () Bool)

(assert (=> b!1488386 (= res!1012182 (and (is-Intermediate!12303 lt!649152) (not (undefined!13115 lt!649152)) (bvslt (x!133198 lt!649152) #b01111111111111111111111111111110) (bvsge (x!133198 lt!649152) #b00000000000000000000000000000000) (bvsge (x!133198 lt!649152) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1488386 (=> (not res!1012182) (not e!834302))))

(declare-fun b!1488387 () Bool)

(assert (=> b!1488387 (and (bvsge (index!51605 lt!649152) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649152) (size!48591 lt!648973)))))

(assert (=> b!1488387 (= e!834303 (= (select (arr!48040 lt!648973) (index!51605 lt!649152)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488388 () Bool)

(assert (=> b!1488388 (= e!834305 (Intermediate!12303 false lt!648970 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1488389 () Bool)

(assert (=> b!1488389 (= e!834306 (Intermediate!12303 true lt!648970 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1488390 () Bool)

(assert (=> b!1488390 (and (bvsge (index!51605 lt!649152) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649152) (size!48591 lt!648973)))))

(declare-fun res!1012180 () Bool)

(assert (=> b!1488390 (= res!1012180 (= (select (arr!48040 lt!648973) (index!51605 lt!649152)) lt!648968))))

(assert (=> b!1488390 (=> res!1012180 e!834303)))

(assert (=> b!1488390 (= e!834302 e!834303)))

(declare-fun d!156653 () Bool)

(assert (=> d!156653 e!834304))

(declare-fun c!137631 () Bool)

(assert (=> d!156653 (= c!137631 (and (is-Intermediate!12303 lt!649152) (undefined!13115 lt!649152)))))

(assert (=> d!156653 (= lt!649152 e!834306)))

(declare-fun c!137632 () Bool)

(assert (=> d!156653 (= c!137632 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156653 (= lt!649153 (select (arr!48040 lt!648973) lt!648970))))

(assert (=> d!156653 (validMask!0 mask!2687)))

(assert (=> d!156653 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648970 lt!648968 lt!648973 mask!2687) lt!649152)))

(declare-fun b!1488383 () Bool)

(assert (=> b!1488383 (= e!834304 (bvsge (x!133198 lt!649152) #b01111111111111111111111111111110))))

(assert (= (and d!156653 c!137632) b!1488389))

(assert (= (and d!156653 (not c!137632)) b!1488384))

(assert (= (and b!1488384 c!137630) b!1488388))

(assert (= (and b!1488384 (not c!137630)) b!1488382))

(assert (= (and d!156653 c!137631) b!1488383))

(assert (= (and d!156653 (not c!137631)) b!1488386))

(assert (= (and b!1488386 res!1012182) b!1488390))

(assert (= (and b!1488390 (not res!1012180)) b!1488385))

(assert (= (and b!1488385 (not res!1012181)) b!1488387))

(declare-fun m!1372859 () Bool)

(assert (=> b!1488385 m!1372859))

(assert (=> b!1488390 m!1372859))

(declare-fun m!1372861 () Bool)

(assert (=> d!156653 m!1372861))

(assert (=> d!156653 m!1372523))

(assert (=> b!1488387 m!1372859))

(declare-fun m!1372863 () Bool)

(assert (=> b!1488382 m!1372863))

(assert (=> b!1488382 m!1372863))

(declare-fun m!1372865 () Bool)

(assert (=> b!1488382 m!1372865))

(assert (=> b!1487925 d!156653))

(declare-fun e!834310 () SeekEntryResult!12303)

(declare-fun b!1488391 () Bool)

(assert (=> b!1488391 (= e!834310 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48040 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488393 () Bool)

(declare-fun e!834311 () SeekEntryResult!12303)

(assert (=> b!1488393 (= e!834311 e!834310)))

(declare-fun c!137633 () Bool)

(declare-fun lt!649155 () (_ BitVec 64))

(assert (=> b!1488393 (= c!137633 (or (= lt!649155 (select (arr!48040 a!2862) j!93)) (= (bvadd lt!649155 lt!649155) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488394 () Bool)

(declare-fun lt!649154 () SeekEntryResult!12303)

(assert (=> b!1488394 (and (bvsge (index!51605 lt!649154) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649154) (size!48591 a!2862)))))

(declare-fun res!1012184 () Bool)

(assert (=> b!1488394 (= res!1012184 (= (select (arr!48040 a!2862) (index!51605 lt!649154)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834308 () Bool)

(assert (=> b!1488394 (=> res!1012184 e!834308)))

(declare-fun b!1488395 () Bool)

(declare-fun e!834309 () Bool)

(declare-fun e!834307 () Bool)

(assert (=> b!1488395 (= e!834309 e!834307)))

(declare-fun res!1012185 () Bool)

(assert (=> b!1488395 (= res!1012185 (and (is-Intermediate!12303 lt!649154) (not (undefined!13115 lt!649154)) (bvslt (x!133198 lt!649154) #b01111111111111111111111111111110) (bvsge (x!133198 lt!649154) #b00000000000000000000000000000000) (bvsge (x!133198 lt!649154) #b00000000000000000000000000000000)))))

(assert (=> b!1488395 (=> (not res!1012185) (not e!834307))))

(declare-fun b!1488396 () Bool)

(assert (=> b!1488396 (and (bvsge (index!51605 lt!649154) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649154) (size!48591 a!2862)))))

(assert (=> b!1488396 (= e!834308 (= (select (arr!48040 a!2862) (index!51605 lt!649154)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488397 () Bool)

(assert (=> b!1488397 (= e!834310 (Intermediate!12303 false (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488398 () Bool)

(assert (=> b!1488398 (= e!834311 (Intermediate!12303 true (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488399 () Bool)

(assert (=> b!1488399 (and (bvsge (index!51605 lt!649154) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649154) (size!48591 a!2862)))))

(declare-fun res!1012183 () Bool)

(assert (=> b!1488399 (= res!1012183 (= (select (arr!48040 a!2862) (index!51605 lt!649154)) (select (arr!48040 a!2862) j!93)))))

(assert (=> b!1488399 (=> res!1012183 e!834308)))

(assert (=> b!1488399 (= e!834307 e!834308)))

(declare-fun d!156673 () Bool)

(assert (=> d!156673 e!834309))

(declare-fun c!137634 () Bool)

(assert (=> d!156673 (= c!137634 (and (is-Intermediate!12303 lt!649154) (undefined!13115 lt!649154)))))

(assert (=> d!156673 (= lt!649154 e!834311)))

(declare-fun c!137635 () Bool)

(assert (=> d!156673 (= c!137635 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156673 (= lt!649155 (select (arr!48040 a!2862) (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687)))))

(assert (=> d!156673 (validMask!0 mask!2687)))

(assert (=> d!156673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!649154)))

(declare-fun b!1488392 () Bool)

(assert (=> b!1488392 (= e!834309 (bvsge (x!133198 lt!649154) #b01111111111111111111111111111110))))

(assert (= (and d!156673 c!137635) b!1488398))

(assert (= (and d!156673 (not c!137635)) b!1488393))

(assert (= (and b!1488393 c!137633) b!1488397))

(assert (= (and b!1488393 (not c!137633)) b!1488391))

(assert (= (and d!156673 c!137634) b!1488392))

(assert (= (and d!156673 (not c!137634)) b!1488395))

(assert (= (and b!1488395 res!1012185) b!1488399))

(assert (= (and b!1488399 (not res!1012183)) b!1488394))

(assert (= (and b!1488394 (not res!1012184)) b!1488396))

(declare-fun m!1372867 () Bool)

(assert (=> b!1488394 m!1372867))

(assert (=> b!1488399 m!1372867))

(assert (=> d!156673 m!1372533))

(declare-fun m!1372869 () Bool)

(assert (=> d!156673 m!1372869))

(assert (=> d!156673 m!1372523))

(assert (=> b!1488396 m!1372867))

(assert (=> b!1488391 m!1372533))

(declare-fun m!1372871 () Bool)

(assert (=> b!1488391 m!1372871))

(assert (=> b!1488391 m!1372871))

(assert (=> b!1488391 m!1372505))

(declare-fun m!1372873 () Bool)

(assert (=> b!1488391 m!1372873))

(assert (=> b!1487936 d!156673))

(declare-fun d!156675 () Bool)

(declare-fun lt!649161 () (_ BitVec 32))

(declare-fun lt!649160 () (_ BitVec 32))

(assert (=> d!156675 (= lt!649161 (bvmul (bvxor lt!649160 (bvlshr lt!649160 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156675 (= lt!649160 ((_ extract 31 0) (bvand (bvxor (select (arr!48040 a!2862) j!93) (bvlshr (select (arr!48040 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156675 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1012186 (let ((h!36102 ((_ extract 31 0) (bvand (bvxor (select (arr!48040 a!2862) j!93) (bvlshr (select (arr!48040 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133210 (bvmul (bvxor h!36102 (bvlshr h!36102 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133210 (bvlshr x!133210 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1012186 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1012186 #b00000000000000000000000000000000))))))

(assert (=> d!156675 (= (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) (bvand (bvxor lt!649161 (bvlshr lt!649161 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487936 d!156675))

(declare-fun d!156677 () Bool)

(declare-fun res!1012188 () Bool)

(declare-fun e!834313 () Bool)

(assert (=> d!156677 (=> res!1012188 e!834313)))

(assert (=> d!156677 (= res!1012188 (bvsge #b00000000000000000000000000000000 (size!48591 a!2862)))))

(assert (=> d!156677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!834313)))

(declare-fun b!1488400 () Bool)

(declare-fun e!834312 () Bool)

(declare-fun call!67929 () Bool)

(assert (=> b!1488400 (= e!834312 call!67929)))

(declare-fun b!1488401 () Bool)

(declare-fun e!834314 () Bool)

(assert (=> b!1488401 (= e!834314 e!834312)))

(declare-fun lt!649162 () (_ BitVec 64))

(assert (=> b!1488401 (= lt!649162 (select (arr!48040 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!649163 () Unit!49894)

(assert (=> b!1488401 (= lt!649163 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!649162 #b00000000000000000000000000000000))))

(assert (=> b!1488401 (arrayContainsKey!0 a!2862 lt!649162 #b00000000000000000000000000000000)))

(declare-fun lt!649164 () Unit!49894)

(assert (=> b!1488401 (= lt!649164 lt!649163)))

(declare-fun res!1012187 () Bool)

(assert (=> b!1488401 (= res!1012187 (= (seekEntryOrOpen!0 (select (arr!48040 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12303 #b00000000000000000000000000000000)))))

(assert (=> b!1488401 (=> (not res!1012187) (not e!834312))))

(declare-fun bm!67926 () Bool)

(assert (=> bm!67926 (= call!67929 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1488402 () Bool)

(assert (=> b!1488402 (= e!834313 e!834314)))

(declare-fun c!137636 () Bool)

(assert (=> b!1488402 (= c!137636 (validKeyInArray!0 (select (arr!48040 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1488403 () Bool)

(assert (=> b!1488403 (= e!834314 call!67929)))

(assert (= (and d!156677 (not res!1012188)) b!1488402))

(assert (= (and b!1488402 c!137636) b!1488401))

(assert (= (and b!1488402 (not c!137636)) b!1488403))

(assert (= (and b!1488401 res!1012187) b!1488400))

(assert (= (or b!1488400 b!1488403) bm!67926))

(declare-fun m!1372875 () Bool)

(assert (=> b!1488401 m!1372875))

(declare-fun m!1372877 () Bool)

(assert (=> b!1488401 m!1372877))

(declare-fun m!1372879 () Bool)

(assert (=> b!1488401 m!1372879))

(assert (=> b!1488401 m!1372875))

(declare-fun m!1372881 () Bool)

(assert (=> b!1488401 m!1372881))

(declare-fun m!1372883 () Bool)

(assert (=> bm!67926 m!1372883))

(assert (=> b!1488402 m!1372875))

(assert (=> b!1488402 m!1372875))

(declare-fun m!1372885 () Bool)

(assert (=> b!1488402 m!1372885))

(assert (=> b!1487929 d!156677))

(declare-fun d!156679 () Bool)

(declare-fun lt!649173 () (_ BitVec 32))

(assert (=> d!156679 (and (bvsge lt!649173 #b00000000000000000000000000000000) (bvslt lt!649173 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156679 (= lt!649173 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156679 (validMask!0 mask!2687)))

(assert (=> d!156679 (= (nextIndex!0 index!646 x!665 mask!2687) lt!649173)))

(declare-fun bs!42792 () Bool)

(assert (= bs!42792 d!156679))

(declare-fun m!1372887 () Bool)

(assert (=> bs!42792 m!1372887))

(assert (=> bs!42792 m!1372523))

(assert (=> b!1487919 d!156679))

(assert (=> b!1487919 d!156611))

(assert (=> b!1487919 d!156617))

(declare-fun d!156681 () Bool)

(assert (=> d!156681 (= (validKeyInArray!0 (select (arr!48040 a!2862) j!93)) (and (not (= (select (arr!48040 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48040 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487930 d!156681))

(declare-fun e!834324 () SeekEntryResult!12303)

(declare-fun b!1488416 () Bool)

(assert (=> b!1488416 (= e!834324 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48040 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488418 () Bool)

(declare-fun e!834325 () SeekEntryResult!12303)

(assert (=> b!1488418 (= e!834325 e!834324)))

(declare-fun c!137643 () Bool)

(declare-fun lt!649175 () (_ BitVec 64))

(assert (=> b!1488418 (= c!137643 (or (= lt!649175 (select (arr!48040 a!2862) j!93)) (= (bvadd lt!649175 lt!649175) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488419 () Bool)

(declare-fun lt!649174 () SeekEntryResult!12303)

(assert (=> b!1488419 (and (bvsge (index!51605 lt!649174) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649174) (size!48591 a!2862)))))

(declare-fun res!1012190 () Bool)

(assert (=> b!1488419 (= res!1012190 (= (select (arr!48040 a!2862) (index!51605 lt!649174)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834322 () Bool)

(assert (=> b!1488419 (=> res!1012190 e!834322)))

(declare-fun b!1488420 () Bool)

(declare-fun e!834323 () Bool)

(declare-fun e!834321 () Bool)

(assert (=> b!1488420 (= e!834323 e!834321)))

(declare-fun res!1012191 () Bool)

(assert (=> b!1488420 (= res!1012191 (and (is-Intermediate!12303 lt!649174) (not (undefined!13115 lt!649174)) (bvslt (x!133198 lt!649174) #b01111111111111111111111111111110) (bvsge (x!133198 lt!649174) #b00000000000000000000000000000000) (bvsge (x!133198 lt!649174) x!665)))))

(assert (=> b!1488420 (=> (not res!1012191) (not e!834321))))

(declare-fun b!1488421 () Bool)

(assert (=> b!1488421 (and (bvsge (index!51605 lt!649174) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649174) (size!48591 a!2862)))))

(assert (=> b!1488421 (= e!834322 (= (select (arr!48040 a!2862) (index!51605 lt!649174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488422 () Bool)

(assert (=> b!1488422 (= e!834324 (Intermediate!12303 false index!646 x!665))))

(declare-fun b!1488423 () Bool)

(assert (=> b!1488423 (= e!834325 (Intermediate!12303 true index!646 x!665))))

(declare-fun b!1488424 () Bool)

(assert (=> b!1488424 (and (bvsge (index!51605 lt!649174) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649174) (size!48591 a!2862)))))

(declare-fun res!1012189 () Bool)

(assert (=> b!1488424 (= res!1012189 (= (select (arr!48040 a!2862) (index!51605 lt!649174)) (select (arr!48040 a!2862) j!93)))))

(assert (=> b!1488424 (=> res!1012189 e!834322)))

(assert (=> b!1488424 (= e!834321 e!834322)))

(declare-fun d!156683 () Bool)

(assert (=> d!156683 e!834323))

(declare-fun c!137644 () Bool)

(assert (=> d!156683 (= c!137644 (and (is-Intermediate!12303 lt!649174) (undefined!13115 lt!649174)))))

(assert (=> d!156683 (= lt!649174 e!834325)))

(declare-fun c!137645 () Bool)

(assert (=> d!156683 (= c!137645 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156683 (= lt!649175 (select (arr!48040 a!2862) index!646))))

(assert (=> d!156683 (validMask!0 mask!2687)))

(assert (=> d!156683 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!649174)))

(declare-fun b!1488417 () Bool)

(assert (=> b!1488417 (= e!834323 (bvsge (x!133198 lt!649174) #b01111111111111111111111111111110))))

(assert (= (and d!156683 c!137645) b!1488423))

(assert (= (and d!156683 (not c!137645)) b!1488418))

(assert (= (and b!1488418 c!137643) b!1488422))

(assert (= (and b!1488418 (not c!137643)) b!1488416))

(assert (= (and d!156683 c!137644) b!1488417))

(assert (= (and d!156683 (not c!137644)) b!1488420))

(assert (= (and b!1488420 res!1012191) b!1488424))

(assert (= (and b!1488424 (not res!1012189)) b!1488419))

(assert (= (and b!1488419 (not res!1012190)) b!1488421))

(declare-fun m!1372889 () Bool)

(assert (=> b!1488419 m!1372889))

(assert (=> b!1488424 m!1372889))

(assert (=> d!156683 m!1372517))

(assert (=> d!156683 m!1372523))

(assert (=> b!1488421 m!1372889))

(assert (=> b!1488416 m!1372499))

(assert (=> b!1488416 m!1372499))

(assert (=> b!1488416 m!1372505))

(declare-fun m!1372891 () Bool)

(assert (=> b!1488416 m!1372891))

(assert (=> b!1487917 d!156683))

(declare-fun d!156685 () Bool)

(assert (=> d!156685 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126790 d!156685))

(declare-fun d!156691 () Bool)

(assert (=> d!156691 (= (array_inv!36985 a!2862) (bvsge (size!48591 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126790 d!156691))

(declare-fun b!1488440 () Bool)

(declare-fun e!834336 () SeekEntryResult!12303)

(assert (=> b!1488440 (= e!834336 Undefined!12303)))

(declare-fun b!1488441 () Bool)

(declare-fun e!834334 () SeekEntryResult!12303)

(assert (=> b!1488441 (= e!834334 (Found!12303 lt!648970))))

(declare-fun b!1488442 () Bool)

(declare-fun e!834335 () SeekEntryResult!12303)

(assert (=> b!1488442 (= e!834335 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648970 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488443 () Bool)

(declare-fun c!137652 () Bool)

(declare-fun lt!649181 () (_ BitVec 64))

(assert (=> b!1488443 (= c!137652 (= lt!649181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488443 (= e!834334 e!834335)))

(declare-fun b!1488445 () Bool)

(assert (=> b!1488445 (= e!834336 e!834334)))

(declare-fun c!137654 () Bool)

(assert (=> b!1488445 (= c!137654 (= lt!649181 lt!648968))))

(declare-fun b!1488444 () Bool)

(assert (=> b!1488444 (= e!834335 (MissingVacant!12303 intermediateAfterIndex!19))))

(declare-fun d!156693 () Bool)

(declare-fun lt!649182 () SeekEntryResult!12303)

(assert (=> d!156693 (and (or (is-Undefined!12303 lt!649182) (not (is-Found!12303 lt!649182)) (and (bvsge (index!51604 lt!649182) #b00000000000000000000000000000000) (bvslt (index!51604 lt!649182) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649182) (is-Found!12303 lt!649182) (not (is-MissingVacant!12303 lt!649182)) (not (= (index!51606 lt!649182) intermediateAfterIndex!19)) (and (bvsge (index!51606 lt!649182) #b00000000000000000000000000000000) (bvslt (index!51606 lt!649182) (size!48591 lt!648973)))) (or (is-Undefined!12303 lt!649182) (ite (is-Found!12303 lt!649182) (= (select (arr!48040 lt!648973) (index!51604 lt!649182)) lt!648968) (and (is-MissingVacant!12303 lt!649182) (= (index!51606 lt!649182) intermediateAfterIndex!19) (= (select (arr!48040 lt!648973) (index!51606 lt!649182)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156693 (= lt!649182 e!834336)))

(declare-fun c!137653 () Bool)

(assert (=> d!156693 (= c!137653 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156693 (= lt!649181 (select (arr!48040 lt!648973) lt!648970))))

(assert (=> d!156693 (validMask!0 mask!2687)))

(assert (=> d!156693 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648970 intermediateAfterIndex!19 lt!648968 lt!648973 mask!2687) lt!649182)))

(assert (= (and d!156693 c!137653) b!1488440))

(assert (= (and d!156693 (not c!137653)) b!1488445))

(assert (= (and b!1488445 c!137654) b!1488441))

(assert (= (and b!1488445 (not c!137654)) b!1488443))

(assert (= (and b!1488443 c!137652) b!1488444))

(assert (= (and b!1488443 (not c!137652)) b!1488442))

(assert (=> b!1488442 m!1372863))

(assert (=> b!1488442 m!1372863))

(declare-fun m!1372907 () Bool)

(assert (=> b!1488442 m!1372907))

(declare-fun m!1372909 () Bool)

(assert (=> d!156693 m!1372909))

(declare-fun m!1372911 () Bool)

(assert (=> d!156693 m!1372911))

(assert (=> d!156693 m!1372861))

(assert (=> d!156693 m!1372523))

(assert (=> b!1487918 d!156693))

(declare-fun b!1488446 () Bool)

(declare-fun e!834339 () SeekEntryResult!12303)

(declare-fun e!834338 () SeekEntryResult!12303)

(assert (=> b!1488446 (= e!834339 e!834338)))

(declare-fun lt!649183 () (_ BitVec 64))

(declare-fun lt!649185 () SeekEntryResult!12303)

(assert (=> b!1488446 (= lt!649183 (select (arr!48040 a!2862) (index!51605 lt!649185)))))

(declare-fun c!137656 () Bool)

(assert (=> b!1488446 (= c!137656 (= lt!649183 (select (arr!48040 a!2862) j!93)))))

(declare-fun b!1488447 () Bool)

(assert (=> b!1488447 (= e!834338 (Found!12303 (index!51605 lt!649185)))))

(declare-fun b!1488448 () Bool)

(declare-fun e!834337 () SeekEntryResult!12303)

(assert (=> b!1488448 (= e!834337 (MissingZero!12303 (index!51605 lt!649185)))))

(declare-fun d!156695 () Bool)

(declare-fun lt!649184 () SeekEntryResult!12303)

(assert (=> d!156695 (and (or (is-Undefined!12303 lt!649184) (not (is-Found!12303 lt!649184)) (and (bvsge (index!51604 lt!649184) #b00000000000000000000000000000000) (bvslt (index!51604 lt!649184) (size!48591 a!2862)))) (or (is-Undefined!12303 lt!649184) (is-Found!12303 lt!649184) (not (is-MissingZero!12303 lt!649184)) (and (bvsge (index!51603 lt!649184) #b00000000000000000000000000000000) (bvslt (index!51603 lt!649184) (size!48591 a!2862)))) (or (is-Undefined!12303 lt!649184) (is-Found!12303 lt!649184) (is-MissingZero!12303 lt!649184) (not (is-MissingVacant!12303 lt!649184)) (and (bvsge (index!51606 lt!649184) #b00000000000000000000000000000000) (bvslt (index!51606 lt!649184) (size!48591 a!2862)))) (or (is-Undefined!12303 lt!649184) (ite (is-Found!12303 lt!649184) (= (select (arr!48040 a!2862) (index!51604 lt!649184)) (select (arr!48040 a!2862) j!93)) (ite (is-MissingZero!12303 lt!649184) (= (select (arr!48040 a!2862) (index!51603 lt!649184)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12303 lt!649184) (= (select (arr!48040 a!2862) (index!51606 lt!649184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156695 (= lt!649184 e!834339)))

(declare-fun c!137655 () Bool)

(assert (=> d!156695 (= c!137655 (and (is-Intermediate!12303 lt!649185) (undefined!13115 lt!649185)))))

(assert (=> d!156695 (= lt!649185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48040 a!2862) j!93) mask!2687) (select (arr!48040 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156695 (validMask!0 mask!2687)))

(assert (=> d!156695 (= (seekEntryOrOpen!0 (select (arr!48040 a!2862) j!93) a!2862 mask!2687) lt!649184)))

(declare-fun b!1488449 () Bool)

(assert (=> b!1488449 (= e!834339 Undefined!12303)))

(declare-fun b!1488450 () Bool)

(assert (=> b!1488450 (= e!834337 (seekKeyOrZeroReturnVacant!0 (x!133198 lt!649185) (index!51605 lt!649185) (index!51605 lt!649185) (select (arr!48040 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488451 () Bool)

(declare-fun c!137657 () Bool)

(assert (=> b!1488451 (= c!137657 (= lt!649183 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488451 (= e!834338 e!834337)))

(assert (= (and d!156695 c!137655) b!1488449))

(assert (= (and d!156695 (not c!137655)) b!1488446))

(assert (= (and b!1488446 c!137656) b!1488447))

(assert (= (and b!1488446 (not c!137656)) b!1488451))

(assert (= (and b!1488451 c!137657) b!1488448))

(assert (= (and b!1488451 (not c!137657)) b!1488450))

(declare-fun m!1372913 () Bool)

(assert (=> b!1488446 m!1372913))

(assert (=> d!156695 m!1372505))

(assert (=> d!156695 m!1372533))

(declare-fun m!1372915 () Bool)

(assert (=> d!156695 m!1372915))

(assert (=> d!156695 m!1372523))

(assert (=> d!156695 m!1372533))

(assert (=> d!156695 m!1372505))

(assert (=> d!156695 m!1372535))

(declare-fun m!1372917 () Bool)

(assert (=> d!156695 m!1372917))

(declare-fun m!1372919 () Bool)

(assert (=> d!156695 m!1372919))

(assert (=> b!1488450 m!1372505))

(declare-fun m!1372921 () Bool)

(assert (=> b!1488450 m!1372921))

(assert (=> b!1487932 d!156695))

(declare-fun e!834343 () SeekEntryResult!12303)

(declare-fun b!1488452 () Bool)

(assert (=> b!1488452 (= e!834343 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488454 () Bool)

(declare-fun e!834344 () SeekEntryResult!12303)

(assert (=> b!1488454 (= e!834344 e!834343)))

(declare-fun c!137658 () Bool)

(declare-fun lt!649187 () (_ BitVec 64))

(assert (=> b!1488454 (= c!137658 (or (= lt!649187 lt!648968) (= (bvadd lt!649187 lt!649187) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488455 () Bool)

(declare-fun lt!649186 () SeekEntryResult!12303)

(assert (=> b!1488455 (and (bvsge (index!51605 lt!649186) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649186) (size!48591 lt!648973)))))

(declare-fun res!1012196 () Bool)

(assert (=> b!1488455 (= res!1012196 (= (select (arr!48040 lt!648973) (index!51605 lt!649186)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834341 () Bool)

(assert (=> b!1488455 (=> res!1012196 e!834341)))

(declare-fun b!1488456 () Bool)

(declare-fun e!834342 () Bool)

(declare-fun e!834340 () Bool)

(assert (=> b!1488456 (= e!834342 e!834340)))

(declare-fun res!1012197 () Bool)

(assert (=> b!1488456 (= res!1012197 (and (is-Intermediate!12303 lt!649186) (not (undefined!13115 lt!649186)) (bvslt (x!133198 lt!649186) #b01111111111111111111111111111110) (bvsge (x!133198 lt!649186) #b00000000000000000000000000000000) (bvsge (x!133198 lt!649186) x!665)))))

(assert (=> b!1488456 (=> (not res!1012197) (not e!834340))))

(declare-fun b!1488457 () Bool)

(assert (=> b!1488457 (and (bvsge (index!51605 lt!649186) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649186) (size!48591 lt!648973)))))

(assert (=> b!1488457 (= e!834341 (= (select (arr!48040 lt!648973) (index!51605 lt!649186)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488458 () Bool)

(assert (=> b!1488458 (= e!834343 (Intermediate!12303 false index!646 x!665))))

(declare-fun b!1488459 () Bool)

(assert (=> b!1488459 (= e!834344 (Intermediate!12303 true index!646 x!665))))

(declare-fun b!1488460 () Bool)

(assert (=> b!1488460 (and (bvsge (index!51605 lt!649186) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649186) (size!48591 lt!648973)))))

(declare-fun res!1012195 () Bool)

(assert (=> b!1488460 (= res!1012195 (= (select (arr!48040 lt!648973) (index!51605 lt!649186)) lt!648968))))

(assert (=> b!1488460 (=> res!1012195 e!834341)))

(assert (=> b!1488460 (= e!834340 e!834341)))

(declare-fun d!156699 () Bool)

(assert (=> d!156699 e!834342))

(declare-fun c!137659 () Bool)

(assert (=> d!156699 (= c!137659 (and (is-Intermediate!12303 lt!649186) (undefined!13115 lt!649186)))))

(assert (=> d!156699 (= lt!649186 e!834344)))

(declare-fun c!137660 () Bool)

(assert (=> d!156699 (= c!137660 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156699 (= lt!649187 (select (arr!48040 lt!648973) index!646))))

(assert (=> d!156699 (validMask!0 mask!2687)))

(assert (=> d!156699 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648968 lt!648973 mask!2687) lt!649186)))

(declare-fun b!1488453 () Bool)

(assert (=> b!1488453 (= e!834342 (bvsge (x!133198 lt!649186) #b01111111111111111111111111111110))))

(assert (= (and d!156699 c!137660) b!1488459))

(assert (= (and d!156699 (not c!137660)) b!1488454))

(assert (= (and b!1488454 c!137658) b!1488458))

(assert (= (and b!1488454 (not c!137658)) b!1488452))

(assert (= (and d!156699 c!137659) b!1488453))

(assert (= (and d!156699 (not c!137659)) b!1488456))

(assert (= (and b!1488456 res!1012197) b!1488460))

(assert (= (and b!1488460 (not res!1012195)) b!1488455))

(assert (= (and b!1488455 (not res!1012196)) b!1488457))

(declare-fun m!1372923 () Bool)

(assert (=> b!1488455 m!1372923))

(assert (=> b!1488460 m!1372923))

(assert (=> d!156699 m!1372709))

(assert (=> d!156699 m!1372523))

(assert (=> b!1488457 m!1372923))

(assert (=> b!1488452 m!1372499))

(assert (=> b!1488452 m!1372499))

(declare-fun m!1372925 () Bool)

(assert (=> b!1488452 m!1372925))

(assert (=> b!1487922 d!156699))

(declare-fun e!834348 () SeekEntryResult!12303)

(declare-fun b!1488461 () Bool)

(assert (=> b!1488461 (= e!834348 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648968 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648968 lt!648973 mask!2687))))

(declare-fun b!1488463 () Bool)

(declare-fun e!834349 () SeekEntryResult!12303)

(assert (=> b!1488463 (= e!834349 e!834348)))

(declare-fun c!137661 () Bool)

(declare-fun lt!649189 () (_ BitVec 64))

(assert (=> b!1488463 (= c!137661 (or (= lt!649189 lt!648968) (= (bvadd lt!649189 lt!649189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488464 () Bool)

(declare-fun lt!649188 () SeekEntryResult!12303)

(assert (=> b!1488464 (and (bvsge (index!51605 lt!649188) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649188) (size!48591 lt!648973)))))

(declare-fun res!1012199 () Bool)

(assert (=> b!1488464 (= res!1012199 (= (select (arr!48040 lt!648973) (index!51605 lt!649188)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834346 () Bool)

(assert (=> b!1488464 (=> res!1012199 e!834346)))

(declare-fun b!1488465 () Bool)

(declare-fun e!834347 () Bool)

(declare-fun e!834345 () Bool)

(assert (=> b!1488465 (= e!834347 e!834345)))

(declare-fun res!1012200 () Bool)

(assert (=> b!1488465 (= res!1012200 (and (is-Intermediate!12303 lt!649188) (not (undefined!13115 lt!649188)) (bvslt (x!133198 lt!649188) #b01111111111111111111111111111110) (bvsge (x!133198 lt!649188) #b00000000000000000000000000000000) (bvsge (x!133198 lt!649188) #b00000000000000000000000000000000)))))

(assert (=> b!1488465 (=> (not res!1012200) (not e!834345))))

(declare-fun b!1488466 () Bool)

(assert (=> b!1488466 (and (bvsge (index!51605 lt!649188) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649188) (size!48591 lt!648973)))))

(assert (=> b!1488466 (= e!834346 (= (select (arr!48040 lt!648973) (index!51605 lt!649188)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488467 () Bool)

(assert (=> b!1488467 (= e!834348 (Intermediate!12303 false (toIndex!0 lt!648968 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488468 () Bool)

(assert (=> b!1488468 (= e!834349 (Intermediate!12303 true (toIndex!0 lt!648968 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488469 () Bool)

(assert (=> b!1488469 (and (bvsge (index!51605 lt!649188) #b00000000000000000000000000000000) (bvslt (index!51605 lt!649188) (size!48591 lt!648973)))))

(declare-fun res!1012198 () Bool)

(assert (=> b!1488469 (= res!1012198 (= (select (arr!48040 lt!648973) (index!51605 lt!649188)) lt!648968))))

(assert (=> b!1488469 (=> res!1012198 e!834346)))

(assert (=> b!1488469 (= e!834345 e!834346)))

(declare-fun d!156703 () Bool)

(assert (=> d!156703 e!834347))

(declare-fun c!137662 () Bool)

(assert (=> d!156703 (= c!137662 (and (is-Intermediate!12303 lt!649188) (undefined!13115 lt!649188)))))

(assert (=> d!156703 (= lt!649188 e!834349)))

(declare-fun c!137663 () Bool)

(assert (=> d!156703 (= c!137663 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156703 (= lt!649189 (select (arr!48040 lt!648973) (toIndex!0 lt!648968 mask!2687)))))

(assert (=> d!156703 (validMask!0 mask!2687)))

(assert (=> d!156703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648968 mask!2687) lt!648968 lt!648973 mask!2687) lt!649188)))

(declare-fun b!1488462 () Bool)

(assert (=> b!1488462 (= e!834347 (bvsge (x!133198 lt!649188) #b01111111111111111111111111111110))))

(assert (= (and d!156703 c!137663) b!1488468))

(assert (= (and d!156703 (not c!137663)) b!1488463))

(assert (= (and b!1488463 c!137661) b!1488467))

(assert (= (and b!1488463 (not c!137661)) b!1488461))

(assert (= (and d!156703 c!137662) b!1488462))

(assert (= (and d!156703 (not c!137662)) b!1488465))

(assert (= (and b!1488465 res!1012200) b!1488469))

(assert (= (and b!1488469 (not res!1012198)) b!1488464))

(assert (= (and b!1488464 (not res!1012199)) b!1488466))

(declare-fun m!1372927 () Bool)

(assert (=> b!1488464 m!1372927))

(assert (=> b!1488469 m!1372927))

(assert (=> d!156703 m!1372545))

(declare-fun m!1372929 () Bool)

(assert (=> d!156703 m!1372929))

(assert (=> d!156703 m!1372523))

(assert (=> b!1488466 m!1372927))

(assert (=> b!1488461 m!1372545))

(declare-fun m!1372931 () Bool)

(assert (=> b!1488461 m!1372931))

(assert (=> b!1488461 m!1372931))

(declare-fun m!1372933 () Bool)

(assert (=> b!1488461 m!1372933))

(assert (=> b!1487920 d!156703))

(declare-fun d!156705 () Bool)

(declare-fun lt!649193 () (_ BitVec 32))

(declare-fun lt!649192 () (_ BitVec 32))

(assert (=> d!156705 (= lt!649193 (bvmul (bvxor lt!649192 (bvlshr lt!649192 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156705 (= lt!649192 ((_ extract 31 0) (bvand (bvxor lt!648968 (bvlshr lt!648968 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156705 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1012186 (let ((h!36102 ((_ extract 31 0) (bvand (bvxor lt!648968 (bvlshr lt!648968 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133210 (bvmul (bvxor h!36102 (bvlshr h!36102 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133210 (bvlshr x!133210 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1012186 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1012186 #b00000000000000000000000000000000))))))

(assert (=> d!156705 (= (toIndex!0 lt!648968 mask!2687) (bvand (bvxor lt!649193 (bvlshr lt!649193 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487920 d!156705))

(declare-fun bm!67931 () Bool)

(declare-fun call!67934 () Bool)

(declare-fun c!137668 () Bool)

(assert (=> bm!67931 (= call!67934 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137668 (Cons!34717 (select (arr!48040 a!2862) #b00000000000000000000000000000000) Nil!34718) Nil!34718)))))

(declare-fun b!1488490 () Bool)

(declare-fun e!834369 () Bool)

(declare-fun e!834367 () Bool)

(assert (=> b!1488490 (= e!834369 e!834367)))

(declare-fun res!1012213 () Bool)

(assert (=> b!1488490 (=> (not res!1012213) (not e!834367))))

(declare-fun e!834366 () Bool)

(assert (=> b!1488490 (= res!1012213 (not e!834366))))

(declare-fun res!1012215 () Bool)

(assert (=> b!1488490 (=> (not res!1012215) (not e!834366))))

(assert (=> b!1488490 (= res!1012215 (validKeyInArray!0 (select (arr!48040 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156707 () Bool)

(declare-fun res!1012214 () Bool)

(assert (=> d!156707 (=> res!1012214 e!834369)))

(assert (=> d!156707 (= res!1012214 (bvsge #b00000000000000000000000000000000 (size!48591 a!2862)))))

(assert (=> d!156707 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34718) e!834369)))

(declare-fun b!1488491 () Bool)

(declare-fun e!834368 () Bool)

(assert (=> b!1488491 (= e!834367 e!834368)))

(assert (=> b!1488491 (= c!137668 (validKeyInArray!0 (select (arr!48040 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1488492 () Bool)

(assert (=> b!1488492 (= e!834368 call!67934)))

(declare-fun b!1488493 () Bool)

(assert (=> b!1488493 (= e!834368 call!67934)))

(declare-fun b!1488494 () Bool)

(declare-fun contains!9935 (List!34721 (_ BitVec 64)) Bool)

(assert (=> b!1488494 (= e!834366 (contains!9935 Nil!34718 (select (arr!48040 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156707 (not res!1012214)) b!1488490))

(assert (= (and b!1488490 res!1012215) b!1488494))

(assert (= (and b!1488490 res!1012213) b!1488491))

(assert (= (and b!1488491 c!137668) b!1488493))

(assert (= (and b!1488491 (not c!137668)) b!1488492))

(assert (= (or b!1488493 b!1488492) bm!67931))

(assert (=> bm!67931 m!1372875))

(declare-fun m!1372937 () Bool)

(assert (=> bm!67931 m!1372937))

(assert (=> b!1488490 m!1372875))

(assert (=> b!1488490 m!1372875))

(assert (=> b!1488490 m!1372885))

(assert (=> b!1488491 m!1372875))

(assert (=> b!1488491 m!1372875))

(assert (=> b!1488491 m!1372885))

