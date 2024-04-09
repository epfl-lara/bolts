; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129468 () Bool)

(assert start!129468)

(declare-fun b!1520046 () Bool)

(declare-fun res!1039776 () Bool)

(declare-fun e!847928 () Bool)

(assert (=> b!1520046 (=> (not res!1039776) (not e!847928))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101172 0))(
  ( (array!101173 (arr!48817 (Array (_ BitVec 32) (_ BitVec 64))) (size!49368 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101172)

(assert (=> b!1520046 (= res!1039776 (and (= (size!49368 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49368 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49368 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520047 () Bool)

(declare-fun res!1039773 () Bool)

(declare-fun e!847927 () Bool)

(assert (=> b!1520047 (=> (not res!1039773) (not e!847927))))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13009 0))(
  ( (MissingZero!13009 (index!54430 (_ BitVec 32))) (Found!13009 (index!54431 (_ BitVec 32))) (Intermediate!13009 (undefined!13821 Bool) (index!54432 (_ BitVec 32)) (x!136116 (_ BitVec 32))) (Undefined!13009) (MissingVacant!13009 (index!54433 (_ BitVec 32))) )
))
(declare-fun lt!658884 () SeekEntryResult!13009)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101172 (_ BitVec 32)) SeekEntryResult!13009)

(assert (=> b!1520047 (= res!1039773 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48817 a!2804) j!70) a!2804 mask!2512) lt!658884))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1520048 () Bool)

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520048 (= e!847927 (not (or (not (= (select (arr!48817 a!2804) j!70) (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48817 a!2804) index!487) (select (arr!48817 a!2804) j!70))) (= j!70 index!487))))))

(declare-fun e!847925 () Bool)

(assert (=> b!1520048 e!847925))

(declare-fun res!1039774 () Bool)

(assert (=> b!1520048 (=> (not res!1039774) (not e!847925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101172 (_ BitVec 32)) Bool)

(assert (=> b!1520048 (= res!1039774 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50842 0))(
  ( (Unit!50843) )
))
(declare-fun lt!658883 () Unit!50842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101172 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50842)

(assert (=> b!1520048 (= lt!658883 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1039777 () Bool)

(assert (=> start!129468 (=> (not res!1039777) (not e!847928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129468 (= res!1039777 (validMask!0 mask!2512))))

(assert (=> start!129468 e!847928))

(assert (=> start!129468 true))

(declare-fun array_inv!37762 (array!101172) Bool)

(assert (=> start!129468 (array_inv!37762 a!2804)))

(declare-fun b!1520049 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101172 (_ BitVec 32)) SeekEntryResult!13009)

(assert (=> b!1520049 (= e!847925 (= (seekEntry!0 (select (arr!48817 a!2804) j!70) a!2804 mask!2512) (Found!13009 j!70)))))

(declare-fun b!1520050 () Bool)

(declare-fun res!1039782 () Bool)

(assert (=> b!1520050 (=> (not res!1039782) (not e!847928))))

(assert (=> b!1520050 (= res!1039782 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49368 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49368 a!2804))))))

(declare-fun b!1520051 () Bool)

(assert (=> b!1520051 (= e!847928 e!847927)))

(declare-fun res!1039772 () Bool)

(assert (=> b!1520051 (=> (not res!1039772) (not e!847927))))

(declare-fun lt!658885 () SeekEntryResult!13009)

(assert (=> b!1520051 (= res!1039772 (= lt!658885 lt!658884))))

(assert (=> b!1520051 (= lt!658884 (Intermediate!13009 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520051 (= lt!658885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) (select (arr!48817 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520052 () Bool)

(declare-fun res!1039781 () Bool)

(assert (=> b!1520052 (=> (not res!1039781) (not e!847928))))

(declare-datatypes ((List!35480 0))(
  ( (Nil!35477) (Cons!35476 (h!36892 (_ BitVec 64)) (t!50181 List!35480)) )
))
(declare-fun arrayNoDuplicates!0 (array!101172 (_ BitVec 32) List!35480) Bool)

(assert (=> b!1520052 (= res!1039781 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35477))))

(declare-fun b!1520053 () Bool)

(declare-fun res!1039779 () Bool)

(assert (=> b!1520053 (=> (not res!1039779) (not e!847928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520053 (= res!1039779 (validKeyInArray!0 (select (arr!48817 a!2804) j!70)))))

(declare-fun b!1520054 () Bool)

(declare-fun res!1039778 () Bool)

(assert (=> b!1520054 (=> (not res!1039778) (not e!847928))))

(assert (=> b!1520054 (= res!1039778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520055 () Bool)

(declare-fun res!1039780 () Bool)

(assert (=> b!1520055 (=> (not res!1039780) (not e!847928))))

(assert (=> b!1520055 (= res!1039780 (validKeyInArray!0 (select (arr!48817 a!2804) i!961)))))

(declare-fun b!1520056 () Bool)

(declare-fun res!1039775 () Bool)

(assert (=> b!1520056 (=> (not res!1039775) (not e!847927))))

(assert (=> b!1520056 (= res!1039775 (= lt!658885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)) mask!2512)))))

(assert (= (and start!129468 res!1039777) b!1520046))

(assert (= (and b!1520046 res!1039776) b!1520055))

(assert (= (and b!1520055 res!1039780) b!1520053))

(assert (= (and b!1520053 res!1039779) b!1520054))

(assert (= (and b!1520054 res!1039778) b!1520052))

(assert (= (and b!1520052 res!1039781) b!1520050))

(assert (= (and b!1520050 res!1039782) b!1520051))

(assert (= (and b!1520051 res!1039772) b!1520047))

(assert (= (and b!1520047 res!1039773) b!1520056))

(assert (= (and b!1520056 res!1039775) b!1520048))

(assert (= (and b!1520048 res!1039774) b!1520049))

(declare-fun m!1403429 () Bool)

(assert (=> b!1520048 m!1403429))

(declare-fun m!1403431 () Bool)

(assert (=> b!1520048 m!1403431))

(declare-fun m!1403433 () Bool)

(assert (=> b!1520048 m!1403433))

(declare-fun m!1403435 () Bool)

(assert (=> b!1520048 m!1403435))

(declare-fun m!1403437 () Bool)

(assert (=> b!1520048 m!1403437))

(declare-fun m!1403439 () Bool)

(assert (=> b!1520048 m!1403439))

(declare-fun m!1403441 () Bool)

(assert (=> b!1520054 m!1403441))

(assert (=> b!1520053 m!1403429))

(assert (=> b!1520053 m!1403429))

(declare-fun m!1403443 () Bool)

(assert (=> b!1520053 m!1403443))

(assert (=> b!1520056 m!1403433))

(assert (=> b!1520056 m!1403437))

(assert (=> b!1520056 m!1403437))

(declare-fun m!1403445 () Bool)

(assert (=> b!1520056 m!1403445))

(assert (=> b!1520056 m!1403445))

(assert (=> b!1520056 m!1403437))

(declare-fun m!1403447 () Bool)

(assert (=> b!1520056 m!1403447))

(declare-fun m!1403449 () Bool)

(assert (=> b!1520055 m!1403449))

(assert (=> b!1520055 m!1403449))

(declare-fun m!1403451 () Bool)

(assert (=> b!1520055 m!1403451))

(assert (=> b!1520051 m!1403429))

(assert (=> b!1520051 m!1403429))

(declare-fun m!1403453 () Bool)

(assert (=> b!1520051 m!1403453))

(assert (=> b!1520051 m!1403453))

(assert (=> b!1520051 m!1403429))

(declare-fun m!1403455 () Bool)

(assert (=> b!1520051 m!1403455))

(assert (=> b!1520047 m!1403429))

(assert (=> b!1520047 m!1403429))

(declare-fun m!1403457 () Bool)

(assert (=> b!1520047 m!1403457))

(assert (=> b!1520049 m!1403429))

(assert (=> b!1520049 m!1403429))

(declare-fun m!1403459 () Bool)

(assert (=> b!1520049 m!1403459))

(declare-fun m!1403461 () Bool)

(assert (=> b!1520052 m!1403461))

(declare-fun m!1403463 () Bool)

(assert (=> start!129468 m!1403463))

(declare-fun m!1403465 () Bool)

(assert (=> start!129468 m!1403465))

(push 1)

(assert (not b!1520054))

(assert (not b!1520047))

(assert (not b!1520056))

(assert (not b!1520048))

(assert (not b!1520051))

(assert (not b!1520055))

(assert (not b!1520053))

(assert (not b!1520052))

(assert (not b!1520049))

(assert (not start!129468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158789 () Bool)

(assert (=> d!158789 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129468 d!158789))

(declare-fun d!158795 () Bool)

(assert (=> d!158795 (= (array_inv!37762 a!2804) (bvsge (size!49368 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129468 d!158795))

(declare-fun b!1520228 () Bool)

(declare-fun c!139721 () Bool)

(declare-fun lt!658958 () (_ BitVec 64))

(assert (=> b!1520228 (= c!139721 (= lt!658958 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848019 () SeekEntryResult!13009)

(declare-fun e!848018 () SeekEntryResult!13009)

(assert (=> b!1520228 (= e!848019 e!848018)))

(declare-fun b!1520229 () Bool)

(declare-fun e!848020 () SeekEntryResult!13009)

(assert (=> b!1520229 (= e!848020 Undefined!13009)))

(declare-fun b!1520230 () Bool)

(declare-fun lt!658959 () SeekEntryResult!13009)

(assert (=> b!1520230 (= e!848018 (ite (is-MissingVacant!13009 lt!658959) (MissingZero!13009 (index!54433 lt!658959)) lt!658959))))

(declare-fun lt!658961 () SeekEntryResult!13009)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101172 (_ BitVec 32)) SeekEntryResult!13009)

(assert (=> b!1520230 (= lt!658959 (seekKeyOrZeroReturnVacant!0 (x!136116 lt!658961) (index!54432 lt!658961) (index!54432 lt!658961) (select (arr!48817 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520231 () Bool)

(assert (=> b!1520231 (= e!848019 (Found!13009 (index!54432 lt!658961)))))

(declare-fun d!158799 () Bool)

(declare-fun lt!658960 () SeekEntryResult!13009)

(assert (=> d!158799 (and (or (is-MissingVacant!13009 lt!658960) (not (is-Found!13009 lt!658960)) (and (bvsge (index!54431 lt!658960) #b00000000000000000000000000000000) (bvslt (index!54431 lt!658960) (size!49368 a!2804)))) (not (is-MissingVacant!13009 lt!658960)) (or (not (is-Found!13009 lt!658960)) (= (select (arr!48817 a!2804) (index!54431 lt!658960)) (select (arr!48817 a!2804) j!70))))))

(assert (=> d!158799 (= lt!658960 e!848020)))

(declare-fun c!139719 () Bool)

(assert (=> d!158799 (= c!139719 (and (is-Intermediate!13009 lt!658961) (undefined!13821 lt!658961)))))

(assert (=> d!158799 (= lt!658961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) (select (arr!48817 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158799 (validMask!0 mask!2512)))

(assert (=> d!158799 (= (seekEntry!0 (select (arr!48817 a!2804) j!70) a!2804 mask!2512) lt!658960)))

(declare-fun b!1520232 () Bool)

(assert (=> b!1520232 (= e!848020 e!848019)))

(assert (=> b!1520232 (= lt!658958 (select (arr!48817 a!2804) (index!54432 lt!658961)))))

(declare-fun c!139720 () Bool)

(assert (=> b!1520232 (= c!139720 (= lt!658958 (select (arr!48817 a!2804) j!70)))))

(declare-fun b!1520233 () Bool)

(assert (=> b!1520233 (= e!848018 (MissingZero!13009 (index!54432 lt!658961)))))

(assert (= (and d!158799 c!139719) b!1520229))

(assert (= (and d!158799 (not c!139719)) b!1520232))

(assert (= (and b!1520232 c!139720) b!1520231))

(assert (= (and b!1520232 (not c!139720)) b!1520228))

(assert (= (and b!1520228 c!139721) b!1520233))

(assert (= (and b!1520228 (not c!139721)) b!1520230))

(assert (=> b!1520230 m!1403429))

(declare-fun m!1403593 () Bool)

(assert (=> b!1520230 m!1403593))

(declare-fun m!1403595 () Bool)

(assert (=> d!158799 m!1403595))

(assert (=> d!158799 m!1403429))

(assert (=> d!158799 m!1403453))

(assert (=> d!158799 m!1403453))

(assert (=> d!158799 m!1403429))

(assert (=> d!158799 m!1403455))

(assert (=> d!158799 m!1403463))

(declare-fun m!1403597 () Bool)

(assert (=> b!1520232 m!1403597))

(assert (=> b!1520049 d!158799))

(declare-fun b!1520264 () Bool)

(declare-fun e!848041 () Bool)

(declare-fun e!848040 () Bool)

(assert (=> b!1520264 (= e!848041 e!848040)))

(declare-fun c!139734 () Bool)

(assert (=> b!1520264 (= c!139734 (validKeyInArray!0 (select (arr!48817 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158813 () Bool)

(declare-fun res!1039890 () Bool)

(assert (=> d!158813 (=> res!1039890 e!848041)))

(assert (=> d!158813 (= res!1039890 (bvsge #b00000000000000000000000000000000 (size!49368 a!2804)))))

(assert (=> d!158813 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848041)))

(declare-fun b!1520265 () Bool)

(declare-fun e!848039 () Bool)

(assert (=> b!1520265 (= e!848040 e!848039)))

(declare-fun lt!658985 () (_ BitVec 64))

(assert (=> b!1520265 (= lt!658985 (select (arr!48817 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658984 () Unit!50842)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101172 (_ BitVec 64) (_ BitVec 32)) Unit!50842)

(assert (=> b!1520265 (= lt!658984 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658985 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520265 (arrayContainsKey!0 a!2804 lt!658985 #b00000000000000000000000000000000)))

(declare-fun lt!658983 () Unit!50842)

(assert (=> b!1520265 (= lt!658983 lt!658984)))

(declare-fun res!1039889 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101172 (_ BitVec 32)) SeekEntryResult!13009)

(assert (=> b!1520265 (= res!1039889 (= (seekEntryOrOpen!0 (select (arr!48817 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13009 #b00000000000000000000000000000000)))))

(assert (=> b!1520265 (=> (not res!1039889) (not e!848039))))

(declare-fun bm!68344 () Bool)

(declare-fun call!68347 () Bool)

(assert (=> bm!68344 (= call!68347 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520266 () Bool)

(assert (=> b!1520266 (= e!848039 call!68347)))

(declare-fun b!1520267 () Bool)

(assert (=> b!1520267 (= e!848040 call!68347)))

(assert (= (and d!158813 (not res!1039890)) b!1520264))

(assert (= (and b!1520264 c!139734) b!1520265))

(assert (= (and b!1520264 (not c!139734)) b!1520267))

(assert (= (and b!1520265 res!1039889) b!1520266))

(assert (= (or b!1520266 b!1520267) bm!68344))

(declare-fun m!1403613 () Bool)

(assert (=> b!1520264 m!1403613))

(assert (=> b!1520264 m!1403613))

(declare-fun m!1403615 () Bool)

(assert (=> b!1520264 m!1403615))

(assert (=> b!1520265 m!1403613))

(declare-fun m!1403617 () Bool)

(assert (=> b!1520265 m!1403617))

(declare-fun m!1403619 () Bool)

(assert (=> b!1520265 m!1403619))

(assert (=> b!1520265 m!1403613))

(declare-fun m!1403621 () Bool)

(assert (=> b!1520265 m!1403621))

(declare-fun m!1403623 () Bool)

(assert (=> bm!68344 m!1403623))

(assert (=> b!1520054 d!158813))

(declare-fun d!158819 () Bool)

(assert (=> d!158819 (= (validKeyInArray!0 (select (arr!48817 a!2804) j!70)) (and (not (= (select (arr!48817 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48817 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520053 d!158819))

(declare-fun b!1520268 () Bool)

(declare-fun e!848044 () Bool)

(declare-fun e!848043 () Bool)

(assert (=> b!1520268 (= e!848044 e!848043)))

(declare-fun c!139735 () Bool)

(assert (=> b!1520268 (= c!139735 (validKeyInArray!0 (select (arr!48817 a!2804) j!70)))))

(declare-fun d!158821 () Bool)

(declare-fun res!1039892 () Bool)

(assert (=> d!158821 (=> res!1039892 e!848044)))

(assert (=> d!158821 (= res!1039892 (bvsge j!70 (size!49368 a!2804)))))

(assert (=> d!158821 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848044)))

(declare-fun b!1520269 () Bool)

(declare-fun e!848042 () Bool)

(assert (=> b!1520269 (= e!848043 e!848042)))

(declare-fun lt!658995 () (_ BitVec 64))

(assert (=> b!1520269 (= lt!658995 (select (arr!48817 a!2804) j!70))))

(declare-fun lt!658994 () Unit!50842)

(assert (=> b!1520269 (= lt!658994 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658995 j!70))))

(assert (=> b!1520269 (arrayContainsKey!0 a!2804 lt!658995 #b00000000000000000000000000000000)))

(declare-fun lt!658989 () Unit!50842)

(assert (=> b!1520269 (= lt!658989 lt!658994)))

(declare-fun res!1039891 () Bool)

(assert (=> b!1520269 (= res!1039891 (= (seekEntryOrOpen!0 (select (arr!48817 a!2804) j!70) a!2804 mask!2512) (Found!13009 j!70)))))

(assert (=> b!1520269 (=> (not res!1039891) (not e!848042))))

(declare-fun bm!68345 () Bool)

(declare-fun call!68348 () Bool)

(assert (=> bm!68345 (= call!68348 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520270 () Bool)

(assert (=> b!1520270 (= e!848042 call!68348)))

(declare-fun b!1520271 () Bool)

(assert (=> b!1520271 (= e!848043 call!68348)))

(assert (= (and d!158821 (not res!1039892)) b!1520268))

(assert (= (and b!1520268 c!139735) b!1520269))

(assert (= (and b!1520268 (not c!139735)) b!1520271))

(assert (= (and b!1520269 res!1039891) b!1520270))

(assert (= (or b!1520270 b!1520271) bm!68345))

(assert (=> b!1520268 m!1403429))

(assert (=> b!1520268 m!1403429))

(assert (=> b!1520268 m!1403443))

(assert (=> b!1520269 m!1403429))

(declare-fun m!1403627 () Bool)

(assert (=> b!1520269 m!1403627))

(declare-fun m!1403629 () Bool)

(assert (=> b!1520269 m!1403629))

(assert (=> b!1520269 m!1403429))

(declare-fun m!1403631 () Bool)

(assert (=> b!1520269 m!1403631))

(declare-fun m!1403633 () Bool)

(assert (=> bm!68345 m!1403633))

(assert (=> b!1520048 d!158821))

(declare-fun d!158825 () Bool)

(assert (=> d!158825 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!658998 () Unit!50842)

(declare-fun choose!38 (array!101172 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50842)

(assert (=> d!158825 (= lt!658998 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158825 (validMask!0 mask!2512)))

(assert (=> d!158825 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!658998)))

(declare-fun bs!43623 () Bool)

(assert (= bs!43623 d!158825))

(assert (=> bs!43623 m!1403439))

(declare-fun m!1403635 () Bool)

(assert (=> bs!43623 m!1403635))

(assert (=> bs!43623 m!1403463))

(assert (=> b!1520048 d!158825))

(declare-fun d!158827 () Bool)

(declare-fun e!848078 () Bool)

(assert (=> d!158827 e!848078))

(declare-fun c!139757 () Bool)

(declare-fun lt!659016 () SeekEntryResult!13009)

(assert (=> d!158827 (= c!139757 (and (is-Intermediate!13009 lt!659016) (undefined!13821 lt!659016)))))

(declare-fun e!848082 () SeekEntryResult!13009)

(assert (=> d!158827 (= lt!659016 e!848082)))

(declare-fun c!139756 () Bool)

(assert (=> d!158827 (= c!139756 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!659017 () (_ BitVec 64))

(assert (=> d!158827 (= lt!659017 (select (arr!48817 a!2804) index!487))))

(assert (=> d!158827 (validMask!0 mask!2512)))

(assert (=> d!158827 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48817 a!2804) j!70) a!2804 mask!2512) lt!659016)))

(declare-fun b!1520330 () Bool)

(assert (=> b!1520330 (and (bvsge (index!54432 lt!659016) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659016) (size!49368 a!2804)))))

(declare-fun res!1039916 () Bool)

(assert (=> b!1520330 (= res!1039916 (= (select (arr!48817 a!2804) (index!54432 lt!659016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848079 () Bool)

(assert (=> b!1520330 (=> res!1039916 e!848079)))

(declare-fun b!1520331 () Bool)

(assert (=> b!1520331 (and (bvsge (index!54432 lt!659016) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659016) (size!49368 a!2804)))))

(assert (=> b!1520331 (= e!848079 (= (select (arr!48817 a!2804) (index!54432 lt!659016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848080 () SeekEntryResult!13009)

(declare-fun b!1520332 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520332 (= e!848080 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48817 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520333 () Bool)

(assert (=> b!1520333 (= e!848078 (bvsge (x!136116 lt!659016) #b01111111111111111111111111111110))))

(declare-fun b!1520334 () Bool)

(assert (=> b!1520334 (= e!848080 (Intermediate!13009 false index!487 x!534))))

(declare-fun b!1520335 () Bool)

(declare-fun e!848081 () Bool)

(assert (=> b!1520335 (= e!848078 e!848081)))

(declare-fun res!1039914 () Bool)

(assert (=> b!1520335 (= res!1039914 (and (is-Intermediate!13009 lt!659016) (not (undefined!13821 lt!659016)) (bvslt (x!136116 lt!659016) #b01111111111111111111111111111110) (bvsge (x!136116 lt!659016) #b00000000000000000000000000000000) (bvsge (x!136116 lt!659016) x!534)))))

(assert (=> b!1520335 (=> (not res!1039914) (not e!848081))))

(declare-fun b!1520336 () Bool)

(assert (=> b!1520336 (and (bvsge (index!54432 lt!659016) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659016) (size!49368 a!2804)))))

(declare-fun res!1039915 () Bool)

(assert (=> b!1520336 (= res!1039915 (= (select (arr!48817 a!2804) (index!54432 lt!659016)) (select (arr!48817 a!2804) j!70)))))

(assert (=> b!1520336 (=> res!1039915 e!848079)))

(assert (=> b!1520336 (= e!848081 e!848079)))

(declare-fun b!1520337 () Bool)

(assert (=> b!1520337 (= e!848082 e!848080)))

(declare-fun c!139755 () Bool)

(assert (=> b!1520337 (= c!139755 (or (= lt!659017 (select (arr!48817 a!2804) j!70)) (= (bvadd lt!659017 lt!659017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520338 () Bool)

(assert (=> b!1520338 (= e!848082 (Intermediate!13009 true index!487 x!534))))

(assert (= (and d!158827 c!139756) b!1520338))

(assert (= (and d!158827 (not c!139756)) b!1520337))

(assert (= (and b!1520337 c!139755) b!1520334))

(assert (= (and b!1520337 (not c!139755)) b!1520332))

(assert (= (and d!158827 c!139757) b!1520333))

(assert (= (and d!158827 (not c!139757)) b!1520335))

(assert (= (and b!1520335 res!1039914) b!1520336))

(assert (= (and b!1520336 (not res!1039915)) b!1520330))

(assert (= (and b!1520330 (not res!1039916)) b!1520331))

(declare-fun m!1403659 () Bool)

(assert (=> b!1520330 m!1403659))

(assert (=> b!1520336 m!1403659))

(assert (=> d!158827 m!1403435))

(assert (=> d!158827 m!1403463))

(assert (=> b!1520331 m!1403659))

(declare-fun m!1403661 () Bool)

(assert (=> b!1520332 m!1403661))

(assert (=> b!1520332 m!1403661))

(assert (=> b!1520332 m!1403429))

(declare-fun m!1403663 () Bool)

(assert (=> b!1520332 m!1403663))

(assert (=> b!1520047 d!158827))

(declare-fun d!158845 () Bool)

(declare-fun res!1039930 () Bool)

(declare-fun e!848101 () Bool)

(assert (=> d!158845 (=> res!1039930 e!848101)))

(assert (=> d!158845 (= res!1039930 (bvsge #b00000000000000000000000000000000 (size!49368 a!2804)))))

(assert (=> d!158845 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35477) e!848101)))

(declare-fun bm!68349 () Bool)

(declare-fun call!68352 () Bool)

(declare-fun c!139762 () Bool)

(assert (=> bm!68349 (= call!68352 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139762 (Cons!35476 (select (arr!48817 a!2804) #b00000000000000000000000000000000) Nil!35477) Nil!35477)))))

(declare-fun b!1520359 () Bool)

(declare-fun e!848099 () Bool)

(assert (=> b!1520359 (= e!848099 call!68352)))

(declare-fun b!1520360 () Bool)

(assert (=> b!1520360 (= e!848099 call!68352)))

(declare-fun b!1520361 () Bool)

(declare-fun e!848102 () Bool)

(assert (=> b!1520361 (= e!848102 e!848099)))

(assert (=> b!1520361 (= c!139762 (validKeyInArray!0 (select (arr!48817 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520362 () Bool)

(declare-fun e!848100 () Bool)

(declare-fun contains!9990 (List!35480 (_ BitVec 64)) Bool)

(assert (=> b!1520362 (= e!848100 (contains!9990 Nil!35477 (select (arr!48817 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520363 () Bool)

(assert (=> b!1520363 (= e!848101 e!848102)))

(declare-fun res!1039929 () Bool)

(assert (=> b!1520363 (=> (not res!1039929) (not e!848102))))

(assert (=> b!1520363 (= res!1039929 (not e!848100))))

(declare-fun res!1039931 () Bool)

(assert (=> b!1520363 (=> (not res!1039931) (not e!848100))))

(assert (=> b!1520363 (= res!1039931 (validKeyInArray!0 (select (arr!48817 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158845 (not res!1039930)) b!1520363))

(assert (= (and b!1520363 res!1039931) b!1520362))

(assert (= (and b!1520363 res!1039929) b!1520361))

(assert (= (and b!1520361 c!139762) b!1520360))

(assert (= (and b!1520361 (not c!139762)) b!1520359))

(assert (= (or b!1520360 b!1520359) bm!68349))

(assert (=> bm!68349 m!1403613))

(declare-fun m!1403667 () Bool)

(assert (=> bm!68349 m!1403667))

(assert (=> b!1520361 m!1403613))

(assert (=> b!1520361 m!1403613))

(assert (=> b!1520361 m!1403615))

(assert (=> b!1520362 m!1403613))

(assert (=> b!1520362 m!1403613))

(declare-fun m!1403669 () Bool)

(assert (=> b!1520362 m!1403669))

(assert (=> b!1520363 m!1403613))

(assert (=> b!1520363 m!1403613))

(assert (=> b!1520363 m!1403615))

(assert (=> b!1520052 d!158845))

(declare-fun d!158849 () Bool)

(declare-fun e!848103 () Bool)

(assert (=> d!158849 e!848103))

(declare-fun c!139765 () Bool)

(declare-fun lt!659021 () SeekEntryResult!13009)

(assert (=> d!158849 (= c!139765 (and (is-Intermediate!13009 lt!659021) (undefined!13821 lt!659021)))))

(declare-fun e!848107 () SeekEntryResult!13009)

(assert (=> d!158849 (= lt!659021 e!848107)))

(declare-fun c!139764 () Bool)

(assert (=> d!158849 (= c!139764 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659022 () (_ BitVec 64))

(assert (=> d!158849 (= lt!659022 (select (arr!48817 a!2804) (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512)))))

(assert (=> d!158849 (validMask!0 mask!2512)))

(assert (=> d!158849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) (select (arr!48817 a!2804) j!70) a!2804 mask!2512) lt!659021)))

(declare-fun b!1520364 () Bool)

(assert (=> b!1520364 (and (bvsge (index!54432 lt!659021) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659021) (size!49368 a!2804)))))

(declare-fun res!1039934 () Bool)

(assert (=> b!1520364 (= res!1039934 (= (select (arr!48817 a!2804) (index!54432 lt!659021)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848104 () Bool)

(assert (=> b!1520364 (=> res!1039934 e!848104)))

(declare-fun b!1520365 () Bool)

(assert (=> b!1520365 (and (bvsge (index!54432 lt!659021) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659021) (size!49368 a!2804)))))

(assert (=> b!1520365 (= e!848104 (= (select (arr!48817 a!2804) (index!54432 lt!659021)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848105 () SeekEntryResult!13009)

(declare-fun b!1520366 () Bool)

(assert (=> b!1520366 (= e!848105 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48817 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520367 () Bool)

(assert (=> b!1520367 (= e!848103 (bvsge (x!136116 lt!659021) #b01111111111111111111111111111110))))

(declare-fun b!1520368 () Bool)

(assert (=> b!1520368 (= e!848105 (Intermediate!13009 false (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520369 () Bool)

(declare-fun e!848106 () Bool)

(assert (=> b!1520369 (= e!848103 e!848106)))

(declare-fun res!1039932 () Bool)

(assert (=> b!1520369 (= res!1039932 (and (is-Intermediate!13009 lt!659021) (not (undefined!13821 lt!659021)) (bvslt (x!136116 lt!659021) #b01111111111111111111111111111110) (bvsge (x!136116 lt!659021) #b00000000000000000000000000000000) (bvsge (x!136116 lt!659021) #b00000000000000000000000000000000)))))

(assert (=> b!1520369 (=> (not res!1039932) (not e!848106))))

(declare-fun b!1520370 () Bool)

(assert (=> b!1520370 (and (bvsge (index!54432 lt!659021) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659021) (size!49368 a!2804)))))

(declare-fun res!1039933 () Bool)

(assert (=> b!1520370 (= res!1039933 (= (select (arr!48817 a!2804) (index!54432 lt!659021)) (select (arr!48817 a!2804) j!70)))))

(assert (=> b!1520370 (=> res!1039933 e!848104)))

(assert (=> b!1520370 (= e!848106 e!848104)))

(declare-fun b!1520371 () Bool)

(assert (=> b!1520371 (= e!848107 e!848105)))

(declare-fun c!139763 () Bool)

(assert (=> b!1520371 (= c!139763 (or (= lt!659022 (select (arr!48817 a!2804) j!70)) (= (bvadd lt!659022 lt!659022) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520372 () Bool)

(assert (=> b!1520372 (= e!848107 (Intermediate!13009 true (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!158849 c!139764) b!1520372))

(assert (= (and d!158849 (not c!139764)) b!1520371))

(assert (= (and b!1520371 c!139763) b!1520368))

(assert (= (and b!1520371 (not c!139763)) b!1520366))

(assert (= (and d!158849 c!139765) b!1520367))

(assert (= (and d!158849 (not c!139765)) b!1520369))

(assert (= (and b!1520369 res!1039932) b!1520370))

(assert (= (and b!1520370 (not res!1039933)) b!1520364))

(assert (= (and b!1520364 (not res!1039934)) b!1520365))

(declare-fun m!1403671 () Bool)

(assert (=> b!1520364 m!1403671))

(assert (=> b!1520370 m!1403671))

(assert (=> d!158849 m!1403453))

(declare-fun m!1403673 () Bool)

(assert (=> d!158849 m!1403673))

(assert (=> d!158849 m!1403463))

(assert (=> b!1520365 m!1403671))

(assert (=> b!1520366 m!1403453))

(declare-fun m!1403675 () Bool)

(assert (=> b!1520366 m!1403675))

(assert (=> b!1520366 m!1403675))

(assert (=> b!1520366 m!1403429))

(declare-fun m!1403677 () Bool)

(assert (=> b!1520366 m!1403677))

(assert (=> b!1520051 d!158849))

(declare-fun d!158851 () Bool)

(declare-fun lt!659032 () (_ BitVec 32))

(declare-fun lt!659031 () (_ BitVec 32))

(assert (=> d!158851 (= lt!659032 (bvmul (bvxor lt!659031 (bvlshr lt!659031 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158851 (= lt!659031 ((_ extract 31 0) (bvand (bvxor (select (arr!48817 a!2804) j!70) (bvlshr (select (arr!48817 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158851 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039935 (let ((h!36897 ((_ extract 31 0) (bvand (bvxor (select (arr!48817 a!2804) j!70) (bvlshr (select (arr!48817 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136124 (bvmul (bvxor h!36897 (bvlshr h!36897 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136124 (bvlshr x!136124 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039935 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039935 #b00000000000000000000000000000000))))))

(assert (=> d!158851 (= (toIndex!0 (select (arr!48817 a!2804) j!70) mask!2512) (bvand (bvxor lt!659032 (bvlshr lt!659032 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520051 d!158851))

(declare-fun d!158859 () Bool)

(declare-fun e!848122 () Bool)

(assert (=> d!158859 e!848122))

(declare-fun c!139775 () Bool)

(declare-fun lt!659035 () SeekEntryResult!13009)

(assert (=> d!158859 (= c!139775 (and (is-Intermediate!13009 lt!659035) (undefined!13821 lt!659035)))))

(declare-fun e!848126 () SeekEntryResult!13009)

(assert (=> d!158859 (= lt!659035 e!848126)))

(declare-fun c!139774 () Bool)

(assert (=> d!158859 (= c!139774 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659036 () (_ BitVec 64))

(assert (=> d!158859 (= lt!659036 (select (arr!48817 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804))) (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158859 (validMask!0 mask!2512)))

(assert (=> d!158859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)) mask!2512) lt!659035)))

(declare-fun b!1520396 () Bool)

(assert (=> b!1520396 (and (bvsge (index!54432 lt!659035) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659035) (size!49368 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)))))))

(declare-fun res!1039947 () Bool)

(assert (=> b!1520396 (= res!1039947 (= (select (arr!48817 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804))) (index!54432 lt!659035)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848123 () Bool)

(assert (=> b!1520396 (=> res!1039947 e!848123)))

(declare-fun b!1520397 () Bool)

(assert (=> b!1520397 (and (bvsge (index!54432 lt!659035) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659035) (size!49368 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)))))))

(assert (=> b!1520397 (= e!848123 (= (select (arr!48817 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804))) (index!54432 lt!659035)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848124 () SeekEntryResult!13009)

(declare-fun b!1520398 () Bool)

(assert (=> b!1520398 (= e!848124 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)) mask!2512))))

(declare-fun b!1520399 () Bool)

(assert (=> b!1520399 (= e!848122 (bvsge (x!136116 lt!659035) #b01111111111111111111111111111110))))

(declare-fun b!1520400 () Bool)

(assert (=> b!1520400 (= e!848124 (Intermediate!13009 false (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520401 () Bool)

(declare-fun e!848125 () Bool)

(assert (=> b!1520401 (= e!848122 e!848125)))

(declare-fun res!1039945 () Bool)

(assert (=> b!1520401 (= res!1039945 (and (is-Intermediate!13009 lt!659035) (not (undefined!13821 lt!659035)) (bvslt (x!136116 lt!659035) #b01111111111111111111111111111110) (bvsge (x!136116 lt!659035) #b00000000000000000000000000000000) (bvsge (x!136116 lt!659035) #b00000000000000000000000000000000)))))

(assert (=> b!1520401 (=> (not res!1039945) (not e!848125))))

(declare-fun b!1520402 () Bool)

(assert (=> b!1520402 (and (bvsge (index!54432 lt!659035) #b00000000000000000000000000000000) (bvslt (index!54432 lt!659035) (size!49368 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804)))))))

(declare-fun res!1039946 () Bool)

(assert (=> b!1520402 (= res!1039946 (= (select (arr!48817 (array!101173 (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49368 a!2804))) (index!54432 lt!659035)) (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1520402 (=> res!1039946 e!848123)))

(assert (=> b!1520402 (= e!848125 e!848123)))

(declare-fun b!1520403 () Bool)

(assert (=> b!1520403 (= e!848126 e!848124)))

(declare-fun c!139773 () Bool)

(assert (=> b!1520403 (= c!139773 (or (= lt!659036 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659036 lt!659036) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520404 () Bool)

(assert (=> b!1520404 (= e!848126 (Intermediate!13009 true (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!158859 c!139774) b!1520404))

(assert (= (and d!158859 (not c!139774)) b!1520403))

(assert (= (and b!1520403 c!139773) b!1520400))

(assert (= (and b!1520403 (not c!139773)) b!1520398))

(assert (= (and d!158859 c!139775) b!1520399))

(assert (= (and d!158859 (not c!139775)) b!1520401))

(assert (= (and b!1520401 res!1039945) b!1520402))

(assert (= (and b!1520402 (not res!1039946)) b!1520396))

(assert (= (and b!1520396 (not res!1039947)) b!1520397))

(declare-fun m!1403697 () Bool)

(assert (=> b!1520396 m!1403697))

(assert (=> b!1520402 m!1403697))

(assert (=> d!158859 m!1403445))

(declare-fun m!1403699 () Bool)

(assert (=> d!158859 m!1403699))

(assert (=> d!158859 m!1403463))

(assert (=> b!1520397 m!1403697))

(assert (=> b!1520398 m!1403445))

(declare-fun m!1403701 () Bool)

(assert (=> b!1520398 m!1403701))

(assert (=> b!1520398 m!1403701))

(assert (=> b!1520398 m!1403437))

(declare-fun m!1403703 () Bool)

(assert (=> b!1520398 m!1403703))

(assert (=> b!1520056 d!158859))

(declare-fun d!158861 () Bool)

(declare-fun lt!659038 () (_ BitVec 32))

(declare-fun lt!659037 () (_ BitVec 32))

(assert (=> d!158861 (= lt!659038 (bvmul (bvxor lt!659037 (bvlshr lt!659037 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158861 (= lt!659037 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158861 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039935 (let ((h!36897 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136124 (bvmul (bvxor h!36897 (bvlshr h!36897 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136124 (bvlshr x!136124 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039935 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039935 #b00000000000000000000000000000000))))))

(assert (=> d!158861 (= (toIndex!0 (select (store (arr!48817 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659038 (bvlshr lt!659038 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520056 d!158861))

(declare-fun d!158863 () Bool)

(assert (=> d!158863 (= (validKeyInArray!0 (select (arr!48817 a!2804) i!961)) (and (not (= (select (arr!48817 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48817 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520055 d!158863))

(push 1)

(assert (not bm!68344))

(assert (not b!1520398))

(assert (not b!1520264))

(assert (not b!1520366))

(assert (not b!1520230))

(assert (not bm!68345))

(assert (not b!1520269))

(assert (not b!1520361))

(assert (not bm!68349))

(assert (not d!158825))

(assert (not b!1520332))

(assert (not b!1520265))

(assert (not b!1520363))

(assert (not b!1520362))

(assert (not d!158849))

(assert (not d!158859))

(assert (not b!1520268))

(assert (not d!158827))

(assert (not d!158799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

