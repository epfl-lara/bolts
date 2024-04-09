; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127164 () Bool)

(assert start!127164)

(declare-fun b!1494223 () Bool)

(declare-fun res!1016728 () Bool)

(declare-fun e!837001 () Bool)

(assert (=> b!1494223 (=> (not res!1016728) (not e!837001))))

(declare-fun e!837004 () Bool)

(assert (=> b!1494223 (= res!1016728 e!837004)))

(declare-fun c!138284 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494223 (= c!138284 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494224 () Bool)

(declare-fun res!1016725 () Bool)

(declare-fun e!837000 () Bool)

(assert (=> b!1494224 (=> (not res!1016725) (not e!837000))))

(declare-datatypes ((array!99728 0))(
  ( (array!99729 (arr!48128 (Array (_ BitVec 32) (_ BitVec 64))) (size!48679 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99728)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494224 (= res!1016725 (validKeyInArray!0 (select (arr!48128 a!2862) j!93)))))

(declare-fun b!1494225 () Bool)

(declare-fun res!1016734 () Bool)

(assert (=> b!1494225 (=> (not res!1016734) (not e!837000))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494225 (= res!1016734 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48679 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48679 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48679 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494226 () Bool)

(declare-fun e!837003 () Bool)

(assert (=> b!1494226 (= e!837000 e!837003)))

(declare-fun res!1016724 () Bool)

(assert (=> b!1494226 (=> (not res!1016724) (not e!837003))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1494226 (= res!1016724 (= (select (store (arr!48128 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651251 () array!99728)

(assert (=> b!1494226 (= lt!651251 (array!99729 (store (arr!48128 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48679 a!2862)))))

(declare-fun b!1494227 () Bool)

(declare-fun res!1016731 () Bool)

(assert (=> b!1494227 (=> (not res!1016731) (not e!837000))))

(declare-datatypes ((List!34809 0))(
  ( (Nil!34806) (Cons!34805 (h!36194 (_ BitVec 64)) (t!49510 List!34809)) )
))
(declare-fun arrayNoDuplicates!0 (array!99728 (_ BitVec 32) List!34809) Bool)

(assert (=> b!1494227 (= res!1016731 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34806))))

(declare-fun b!1494228 () Bool)

(declare-fun res!1016726 () Bool)

(assert (=> b!1494228 (=> (not res!1016726) (not e!837001))))

(assert (=> b!1494228 (= res!1016726 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494229 () Bool)

(declare-fun res!1016735 () Bool)

(assert (=> b!1494229 (=> (not res!1016735) (not e!837000))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1494229 (= res!1016735 (and (= (size!48679 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48679 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48679 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494230 () Bool)

(declare-fun res!1016727 () Bool)

(assert (=> b!1494230 (=> (not res!1016727) (not e!837000))))

(assert (=> b!1494230 (= res!1016727 (validKeyInArray!0 (select (arr!48128 a!2862) i!1006)))))

(declare-datatypes ((SeekEntryResult!12391 0))(
  ( (MissingZero!12391 (index!51955 (_ BitVec 32))) (Found!12391 (index!51956 (_ BitVec 32))) (Intermediate!12391 (undefined!13203 Bool) (index!51957 (_ BitVec 32)) (x!133554 (_ BitVec 32))) (Undefined!12391) (MissingVacant!12391 (index!51958 (_ BitVec 32))) )
))
(declare-fun lt!651253 () SeekEntryResult!12391)

(declare-fun b!1494231 () Bool)

(declare-fun lt!651252 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99728 (_ BitVec 32)) SeekEntryResult!12391)

(assert (=> b!1494231 (= e!837004 (= lt!651253 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651252 lt!651251 mask!2687)))))

(declare-fun b!1494232 () Bool)

(declare-fun e!837002 () Bool)

(declare-fun e!836999 () Bool)

(assert (=> b!1494232 (= e!837002 e!836999)))

(declare-fun res!1016730 () Bool)

(assert (=> b!1494232 (=> res!1016730 e!836999)))

(declare-fun lt!651256 () (_ BitVec 32))

(assert (=> b!1494232 (= res!1016730 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651256 #b00000000000000000000000000000000) (bvsge lt!651256 (size!48679 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494232 (= lt!651256 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494233 () Bool)

(declare-fun e!836997 () Bool)

(assert (=> b!1494233 (= e!837003 e!836997)))

(declare-fun res!1016721 () Bool)

(assert (=> b!1494233 (=> (not res!1016721) (not e!836997))))

(declare-fun lt!651255 () SeekEntryResult!12391)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494233 (= res!1016721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651255))))

(assert (=> b!1494233 (= lt!651255 (Intermediate!12391 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494234 () Bool)

(assert (=> b!1494234 (= e!836999 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651256 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651255))))

(declare-fun b!1494235 () Bool)

(declare-fun res!1016729 () Bool)

(assert (=> b!1494235 (=> (not res!1016729) (not e!837000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99728 (_ BitVec 32)) Bool)

(assert (=> b!1494235 (= res!1016729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1016720 () Bool)

(assert (=> start!127164 (=> (not res!1016720) (not e!837000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127164 (= res!1016720 (validMask!0 mask!2687))))

(assert (=> start!127164 e!837000))

(assert (=> start!127164 true))

(declare-fun array_inv!37073 (array!99728) Bool)

(assert (=> start!127164 (array_inv!37073 a!2862)))

(declare-fun b!1494236 () Bool)

(assert (=> b!1494236 (= e!836997 e!837001)))

(declare-fun res!1016723 () Bool)

(assert (=> b!1494236 (=> (not res!1016723) (not e!837001))))

(assert (=> b!1494236 (= res!1016723 (= lt!651253 (Intermediate!12391 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1494236 (= lt!651253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651252 mask!2687) lt!651252 lt!651251 mask!2687))))

(assert (=> b!1494236 (= lt!651252 (select (store (arr!48128 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494237 () Bool)

(declare-fun e!836998 () Bool)

(assert (=> b!1494237 (= e!836998 (or (= (select (arr!48128 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48128 a!2862) intermediateBeforeIndex!19) (select (arr!48128 a!2862) j!93))))))

(declare-fun b!1494238 () Bool)

(assert (=> b!1494238 (= e!837001 (not e!837002))))

(declare-fun res!1016722 () Bool)

(assert (=> b!1494238 (=> res!1016722 e!837002)))

(assert (=> b!1494238 (= res!1016722 (or (and (= (select (arr!48128 a!2862) index!646) (select (store (arr!48128 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48128 a!2862) index!646) (select (arr!48128 a!2862) j!93))) (= (select (arr!48128 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494238 e!836998))

(declare-fun res!1016732 () Bool)

(assert (=> b!1494238 (=> (not res!1016732) (not e!836998))))

(assert (=> b!1494238 (= res!1016732 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50070 0))(
  ( (Unit!50071) )
))
(declare-fun lt!651254 () Unit!50070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50070)

(assert (=> b!1494238 (= lt!651254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494239 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99728 (_ BitVec 32)) SeekEntryResult!12391)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99728 (_ BitVec 32)) SeekEntryResult!12391)

(assert (=> b!1494239 (= e!837004 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651252 lt!651251 mask!2687) (seekEntryOrOpen!0 lt!651252 lt!651251 mask!2687)))))

(declare-fun b!1494240 () Bool)

(declare-fun res!1016733 () Bool)

(assert (=> b!1494240 (=> (not res!1016733) (not e!836998))))

(assert (=> b!1494240 (= res!1016733 (= (seekEntryOrOpen!0 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) (Found!12391 j!93)))))

(declare-fun b!1494241 () Bool)

(declare-fun res!1016736 () Bool)

(assert (=> b!1494241 (=> (not res!1016736) (not e!836997))))

(assert (=> b!1494241 (= res!1016736 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651255))))

(assert (= (and start!127164 res!1016720) b!1494229))

(assert (= (and b!1494229 res!1016735) b!1494230))

(assert (= (and b!1494230 res!1016727) b!1494224))

(assert (= (and b!1494224 res!1016725) b!1494235))

(assert (= (and b!1494235 res!1016729) b!1494227))

(assert (= (and b!1494227 res!1016731) b!1494225))

(assert (= (and b!1494225 res!1016734) b!1494226))

(assert (= (and b!1494226 res!1016724) b!1494233))

(assert (= (and b!1494233 res!1016721) b!1494241))

(assert (= (and b!1494241 res!1016736) b!1494236))

(assert (= (and b!1494236 res!1016723) b!1494223))

(assert (= (and b!1494223 c!138284) b!1494231))

(assert (= (and b!1494223 (not c!138284)) b!1494239))

(assert (= (and b!1494223 res!1016728) b!1494228))

(assert (= (and b!1494228 res!1016726) b!1494238))

(assert (= (and b!1494238 res!1016732) b!1494240))

(assert (= (and b!1494240 res!1016733) b!1494237))

(assert (= (and b!1494238 (not res!1016722)) b!1494232))

(assert (= (and b!1494232 (not res!1016730)) b!1494234))

(declare-fun m!1378029 () Bool)

(assert (=> b!1494239 m!1378029))

(declare-fun m!1378031 () Bool)

(assert (=> b!1494239 m!1378031))

(declare-fun m!1378033 () Bool)

(assert (=> b!1494224 m!1378033))

(assert (=> b!1494224 m!1378033))

(declare-fun m!1378035 () Bool)

(assert (=> b!1494224 m!1378035))

(declare-fun m!1378037 () Bool)

(assert (=> b!1494236 m!1378037))

(assert (=> b!1494236 m!1378037))

(declare-fun m!1378039 () Bool)

(assert (=> b!1494236 m!1378039))

(declare-fun m!1378041 () Bool)

(assert (=> b!1494236 m!1378041))

(declare-fun m!1378043 () Bool)

(assert (=> b!1494236 m!1378043))

(declare-fun m!1378045 () Bool)

(assert (=> b!1494230 m!1378045))

(assert (=> b!1494230 m!1378045))

(declare-fun m!1378047 () Bool)

(assert (=> b!1494230 m!1378047))

(declare-fun m!1378049 () Bool)

(assert (=> b!1494227 m!1378049))

(assert (=> b!1494234 m!1378033))

(assert (=> b!1494234 m!1378033))

(declare-fun m!1378051 () Bool)

(assert (=> b!1494234 m!1378051))

(declare-fun m!1378053 () Bool)

(assert (=> b!1494231 m!1378053))

(assert (=> b!1494240 m!1378033))

(assert (=> b!1494240 m!1378033))

(declare-fun m!1378055 () Bool)

(assert (=> b!1494240 m!1378055))

(assert (=> b!1494241 m!1378033))

(assert (=> b!1494241 m!1378033))

(declare-fun m!1378057 () Bool)

(assert (=> b!1494241 m!1378057))

(assert (=> b!1494226 m!1378041))

(declare-fun m!1378059 () Bool)

(assert (=> b!1494226 m!1378059))

(declare-fun m!1378061 () Bool)

(assert (=> b!1494232 m!1378061))

(assert (=> b!1494233 m!1378033))

(assert (=> b!1494233 m!1378033))

(declare-fun m!1378063 () Bool)

(assert (=> b!1494233 m!1378063))

(assert (=> b!1494233 m!1378063))

(assert (=> b!1494233 m!1378033))

(declare-fun m!1378065 () Bool)

(assert (=> b!1494233 m!1378065))

(declare-fun m!1378067 () Bool)

(assert (=> start!127164 m!1378067))

(declare-fun m!1378069 () Bool)

(assert (=> start!127164 m!1378069))

(declare-fun m!1378071 () Bool)

(assert (=> b!1494237 m!1378071))

(assert (=> b!1494237 m!1378033))

(declare-fun m!1378073 () Bool)

(assert (=> b!1494238 m!1378073))

(assert (=> b!1494238 m!1378041))

(declare-fun m!1378075 () Bool)

(assert (=> b!1494238 m!1378075))

(declare-fun m!1378077 () Bool)

(assert (=> b!1494238 m!1378077))

(declare-fun m!1378079 () Bool)

(assert (=> b!1494238 m!1378079))

(assert (=> b!1494238 m!1378033))

(declare-fun m!1378081 () Bool)

(assert (=> b!1494235 m!1378081))

(check-sat (not b!1494241) (not b!1494231) (not b!1494235) (not start!127164) (not b!1494239) (not b!1494238) (not b!1494232) (not b!1494230) (not b!1494227) (not b!1494236) (not b!1494240) (not b!1494234) (not b!1494224) (not b!1494233))
(check-sat)
(get-model)

(declare-fun e!837045 () SeekEntryResult!12391)

(declare-fun b!1494317 () Bool)

(assert (=> b!1494317 (= e!837045 (Intermediate!12391 false (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494318 () Bool)

(declare-fun e!837044 () Bool)

(declare-fun lt!651280 () SeekEntryResult!12391)

(assert (=> b!1494318 (= e!837044 (bvsge (x!133554 lt!651280) #b01111111111111111111111111111110))))

(declare-fun b!1494319 () Bool)

(assert (=> b!1494319 (= e!837045 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687))))

(declare-fun e!837043 () SeekEntryResult!12391)

(declare-fun b!1494320 () Bool)

(assert (=> b!1494320 (= e!837043 (Intermediate!12391 true (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494321 () Bool)

(declare-fun e!837046 () Bool)

(assert (=> b!1494321 (= e!837044 e!837046)))

(declare-fun res!1016795 () Bool)

(get-info :version)

(assert (=> b!1494321 (= res!1016795 (and ((_ is Intermediate!12391) lt!651280) (not (undefined!13203 lt!651280)) (bvslt (x!133554 lt!651280) #b01111111111111111111111111111110) (bvsge (x!133554 lt!651280) #b00000000000000000000000000000000) (bvsge (x!133554 lt!651280) #b00000000000000000000000000000000)))))

(assert (=> b!1494321 (=> (not res!1016795) (not e!837046))))

(declare-fun b!1494322 () Bool)

(assert (=> b!1494322 (= e!837043 e!837045)))

(declare-fun lt!651279 () (_ BitVec 64))

(declare-fun c!138294 () Bool)

(assert (=> b!1494322 (= c!138294 (or (= lt!651279 (select (arr!48128 a!2862) j!93)) (= (bvadd lt!651279 lt!651279) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156993 () Bool)

(assert (=> d!156993 e!837044))

(declare-fun c!138296 () Bool)

(assert (=> d!156993 (= c!138296 (and ((_ is Intermediate!12391) lt!651280) (undefined!13203 lt!651280)))))

(assert (=> d!156993 (= lt!651280 e!837043)))

(declare-fun c!138295 () Bool)

(assert (=> d!156993 (= c!138295 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156993 (= lt!651279 (select (arr!48128 a!2862) (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687)))))

(assert (=> d!156993 (validMask!0 mask!2687)))

(assert (=> d!156993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651280)))

(declare-fun b!1494323 () Bool)

(assert (=> b!1494323 (and (bvsge (index!51957 lt!651280) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651280) (size!48679 a!2862)))))

(declare-fun res!1016794 () Bool)

(assert (=> b!1494323 (= res!1016794 (= (select (arr!48128 a!2862) (index!51957 lt!651280)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837047 () Bool)

(assert (=> b!1494323 (=> res!1016794 e!837047)))

(declare-fun b!1494324 () Bool)

(assert (=> b!1494324 (and (bvsge (index!51957 lt!651280) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651280) (size!48679 a!2862)))))

(assert (=> b!1494324 (= e!837047 (= (select (arr!48128 a!2862) (index!51957 lt!651280)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1494325 () Bool)

(assert (=> b!1494325 (and (bvsge (index!51957 lt!651280) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651280) (size!48679 a!2862)))))

(declare-fun res!1016796 () Bool)

(assert (=> b!1494325 (= res!1016796 (= (select (arr!48128 a!2862) (index!51957 lt!651280)) (select (arr!48128 a!2862) j!93)))))

(assert (=> b!1494325 (=> res!1016796 e!837047)))

(assert (=> b!1494325 (= e!837046 e!837047)))

(assert (= (and d!156993 c!138295) b!1494320))

(assert (= (and d!156993 (not c!138295)) b!1494322))

(assert (= (and b!1494322 c!138294) b!1494317))

(assert (= (and b!1494322 (not c!138294)) b!1494319))

(assert (= (and d!156993 c!138296) b!1494318))

(assert (= (and d!156993 (not c!138296)) b!1494321))

(assert (= (and b!1494321 res!1016795) b!1494325))

(assert (= (and b!1494325 (not res!1016796)) b!1494323))

(assert (= (and b!1494323 (not res!1016794)) b!1494324))

(assert (=> d!156993 m!1378063))

(declare-fun m!1378137 () Bool)

(assert (=> d!156993 m!1378137))

(assert (=> d!156993 m!1378067))

(declare-fun m!1378139 () Bool)

(assert (=> b!1494325 m!1378139))

(assert (=> b!1494324 m!1378139))

(assert (=> b!1494323 m!1378139))

(assert (=> b!1494319 m!1378063))

(declare-fun m!1378141 () Bool)

(assert (=> b!1494319 m!1378141))

(assert (=> b!1494319 m!1378141))

(assert (=> b!1494319 m!1378033))

(declare-fun m!1378143 () Bool)

(assert (=> b!1494319 m!1378143))

(assert (=> b!1494233 d!156993))

(declare-fun d!156995 () Bool)

(declare-fun lt!651286 () (_ BitVec 32))

(declare-fun lt!651285 () (_ BitVec 32))

(assert (=> d!156995 (= lt!651286 (bvmul (bvxor lt!651285 (bvlshr lt!651285 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156995 (= lt!651285 ((_ extract 31 0) (bvand (bvxor (select (arr!48128 a!2862) j!93) (bvlshr (select (arr!48128 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156995 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1016797 (let ((h!36196 ((_ extract 31 0) (bvand (bvxor (select (arr!48128 a!2862) j!93) (bvlshr (select (arr!48128 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133557 (bvmul (bvxor h!36196 (bvlshr h!36196 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133557 (bvlshr x!133557 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1016797 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1016797 #b00000000000000000000000000000000))))))

(assert (=> d!156995 (= (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) (bvand (bvxor lt!651286 (bvlshr lt!651286 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1494233 d!156995))

(declare-fun b!1494326 () Bool)

(declare-fun e!837050 () SeekEntryResult!12391)

(assert (=> b!1494326 (= e!837050 (Intermediate!12391 false lt!651256 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1494327 () Bool)

(declare-fun e!837049 () Bool)

(declare-fun lt!651288 () SeekEntryResult!12391)

(assert (=> b!1494327 (= e!837049 (bvsge (x!133554 lt!651288) #b01111111111111111111111111111110))))

(declare-fun b!1494328 () Bool)

(assert (=> b!1494328 (= e!837050 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651256 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494329 () Bool)

(declare-fun e!837048 () SeekEntryResult!12391)

(assert (=> b!1494329 (= e!837048 (Intermediate!12391 true lt!651256 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1494330 () Bool)

(declare-fun e!837051 () Bool)

(assert (=> b!1494330 (= e!837049 e!837051)))

(declare-fun res!1016799 () Bool)

(assert (=> b!1494330 (= res!1016799 (and ((_ is Intermediate!12391) lt!651288) (not (undefined!13203 lt!651288)) (bvslt (x!133554 lt!651288) #b01111111111111111111111111111110) (bvsge (x!133554 lt!651288) #b00000000000000000000000000000000) (bvsge (x!133554 lt!651288) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1494330 (=> (not res!1016799) (not e!837051))))

(declare-fun b!1494331 () Bool)

(assert (=> b!1494331 (= e!837048 e!837050)))

(declare-fun c!138297 () Bool)

(declare-fun lt!651287 () (_ BitVec 64))

(assert (=> b!1494331 (= c!138297 (or (= lt!651287 (select (arr!48128 a!2862) j!93)) (= (bvadd lt!651287 lt!651287) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156997 () Bool)

(assert (=> d!156997 e!837049))

(declare-fun c!138299 () Bool)

(assert (=> d!156997 (= c!138299 (and ((_ is Intermediate!12391) lt!651288) (undefined!13203 lt!651288)))))

(assert (=> d!156997 (= lt!651288 e!837048)))

(declare-fun c!138298 () Bool)

(assert (=> d!156997 (= c!138298 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156997 (= lt!651287 (select (arr!48128 a!2862) lt!651256))))

(assert (=> d!156997 (validMask!0 mask!2687)))

(assert (=> d!156997 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651256 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651288)))

(declare-fun b!1494332 () Bool)

(assert (=> b!1494332 (and (bvsge (index!51957 lt!651288) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651288) (size!48679 a!2862)))))

(declare-fun res!1016798 () Bool)

(assert (=> b!1494332 (= res!1016798 (= (select (arr!48128 a!2862) (index!51957 lt!651288)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837052 () Bool)

(assert (=> b!1494332 (=> res!1016798 e!837052)))

(declare-fun b!1494333 () Bool)

(assert (=> b!1494333 (and (bvsge (index!51957 lt!651288) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651288) (size!48679 a!2862)))))

(assert (=> b!1494333 (= e!837052 (= (select (arr!48128 a!2862) (index!51957 lt!651288)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1494334 () Bool)

(assert (=> b!1494334 (and (bvsge (index!51957 lt!651288) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651288) (size!48679 a!2862)))))

(declare-fun res!1016800 () Bool)

(assert (=> b!1494334 (= res!1016800 (= (select (arr!48128 a!2862) (index!51957 lt!651288)) (select (arr!48128 a!2862) j!93)))))

(assert (=> b!1494334 (=> res!1016800 e!837052)))

(assert (=> b!1494334 (= e!837051 e!837052)))

(assert (= (and d!156997 c!138298) b!1494329))

(assert (= (and d!156997 (not c!138298)) b!1494331))

(assert (= (and b!1494331 c!138297) b!1494326))

(assert (= (and b!1494331 (not c!138297)) b!1494328))

(assert (= (and d!156997 c!138299) b!1494327))

(assert (= (and d!156997 (not c!138299)) b!1494330))

(assert (= (and b!1494330 res!1016799) b!1494334))

(assert (= (and b!1494334 (not res!1016800)) b!1494332))

(assert (= (and b!1494332 (not res!1016798)) b!1494333))

(declare-fun m!1378145 () Bool)

(assert (=> d!156997 m!1378145))

(assert (=> d!156997 m!1378067))

(declare-fun m!1378147 () Bool)

(assert (=> b!1494334 m!1378147))

(assert (=> b!1494333 m!1378147))

(assert (=> b!1494332 m!1378147))

(declare-fun m!1378149 () Bool)

(assert (=> b!1494328 m!1378149))

(assert (=> b!1494328 m!1378149))

(assert (=> b!1494328 m!1378033))

(declare-fun m!1378151 () Bool)

(assert (=> b!1494328 m!1378151))

(assert (=> b!1494234 d!156997))

(declare-fun d!156999 () Bool)

(assert (=> d!156999 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127164 d!156999))

(declare-fun d!157001 () Bool)

(assert (=> d!157001 (= (array_inv!37073 a!2862) (bvsge (size!48679 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127164 d!157001))

(declare-fun d!157003 () Bool)

(assert (=> d!157003 (= (validKeyInArray!0 (select (arr!48128 a!2862) j!93)) (and (not (= (select (arr!48128 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48128 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1494224 d!157003))

(declare-fun d!157005 () Bool)

(assert (=> d!157005 (= (validKeyInArray!0 (select (arr!48128 a!2862) i!1006)) (and (not (= (select (arr!48128 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48128 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1494230 d!157005))

(declare-fun b!1494335 () Bool)

(declare-fun e!837055 () SeekEntryResult!12391)

(assert (=> b!1494335 (= e!837055 (Intermediate!12391 false index!646 x!665))))

(declare-fun b!1494336 () Bool)

(declare-fun e!837054 () Bool)

(declare-fun lt!651290 () SeekEntryResult!12391)

(assert (=> b!1494336 (= e!837054 (bvsge (x!133554 lt!651290) #b01111111111111111111111111111110))))

(declare-fun b!1494337 () Bool)

(assert (=> b!1494337 (= e!837055 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494338 () Bool)

(declare-fun e!837053 () SeekEntryResult!12391)

(assert (=> b!1494338 (= e!837053 (Intermediate!12391 true index!646 x!665))))

(declare-fun b!1494339 () Bool)

(declare-fun e!837056 () Bool)

(assert (=> b!1494339 (= e!837054 e!837056)))

(declare-fun res!1016802 () Bool)

(assert (=> b!1494339 (= res!1016802 (and ((_ is Intermediate!12391) lt!651290) (not (undefined!13203 lt!651290)) (bvslt (x!133554 lt!651290) #b01111111111111111111111111111110) (bvsge (x!133554 lt!651290) #b00000000000000000000000000000000) (bvsge (x!133554 lt!651290) x!665)))))

(assert (=> b!1494339 (=> (not res!1016802) (not e!837056))))

(declare-fun b!1494340 () Bool)

(assert (=> b!1494340 (= e!837053 e!837055)))

(declare-fun lt!651289 () (_ BitVec 64))

(declare-fun c!138300 () Bool)

(assert (=> b!1494340 (= c!138300 (or (= lt!651289 (select (arr!48128 a!2862) j!93)) (= (bvadd lt!651289 lt!651289) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157007 () Bool)

(assert (=> d!157007 e!837054))

(declare-fun c!138302 () Bool)

(assert (=> d!157007 (= c!138302 (and ((_ is Intermediate!12391) lt!651290) (undefined!13203 lt!651290)))))

(assert (=> d!157007 (= lt!651290 e!837053)))

(declare-fun c!138301 () Bool)

(assert (=> d!157007 (= c!138301 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157007 (= lt!651289 (select (arr!48128 a!2862) index!646))))

(assert (=> d!157007 (validMask!0 mask!2687)))

(assert (=> d!157007 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651290)))

(declare-fun b!1494341 () Bool)

(assert (=> b!1494341 (and (bvsge (index!51957 lt!651290) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651290) (size!48679 a!2862)))))

(declare-fun res!1016801 () Bool)

(assert (=> b!1494341 (= res!1016801 (= (select (arr!48128 a!2862) (index!51957 lt!651290)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837057 () Bool)

(assert (=> b!1494341 (=> res!1016801 e!837057)))

(declare-fun b!1494342 () Bool)

(assert (=> b!1494342 (and (bvsge (index!51957 lt!651290) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651290) (size!48679 a!2862)))))

(assert (=> b!1494342 (= e!837057 (= (select (arr!48128 a!2862) (index!51957 lt!651290)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1494343 () Bool)

(assert (=> b!1494343 (and (bvsge (index!51957 lt!651290) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651290) (size!48679 a!2862)))))

(declare-fun res!1016803 () Bool)

(assert (=> b!1494343 (= res!1016803 (= (select (arr!48128 a!2862) (index!51957 lt!651290)) (select (arr!48128 a!2862) j!93)))))

(assert (=> b!1494343 (=> res!1016803 e!837057)))

(assert (=> b!1494343 (= e!837056 e!837057)))

(assert (= (and d!157007 c!138301) b!1494338))

(assert (= (and d!157007 (not c!138301)) b!1494340))

(assert (= (and b!1494340 c!138300) b!1494335))

(assert (= (and b!1494340 (not c!138300)) b!1494337))

(assert (= (and d!157007 c!138302) b!1494336))

(assert (= (and d!157007 (not c!138302)) b!1494339))

(assert (= (and b!1494339 res!1016802) b!1494343))

(assert (= (and b!1494343 (not res!1016803)) b!1494341))

(assert (= (and b!1494341 (not res!1016801)) b!1494342))

(assert (=> d!157007 m!1378077))

(assert (=> d!157007 m!1378067))

(declare-fun m!1378153 () Bool)

(assert (=> b!1494343 m!1378153))

(assert (=> b!1494342 m!1378153))

(assert (=> b!1494341 m!1378153))

(assert (=> b!1494337 m!1378061))

(assert (=> b!1494337 m!1378061))

(assert (=> b!1494337 m!1378033))

(declare-fun m!1378155 () Bool)

(assert (=> b!1494337 m!1378155))

(assert (=> b!1494241 d!157007))

(declare-fun b!1494344 () Bool)

(declare-fun e!837060 () SeekEntryResult!12391)

(assert (=> b!1494344 (= e!837060 (Intermediate!12391 false index!646 x!665))))

(declare-fun b!1494345 () Bool)

(declare-fun e!837059 () Bool)

(declare-fun lt!651292 () SeekEntryResult!12391)

(assert (=> b!1494345 (= e!837059 (bvsge (x!133554 lt!651292) #b01111111111111111111111111111110))))

(declare-fun b!1494346 () Bool)

(assert (=> b!1494346 (= e!837060 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651252 lt!651251 mask!2687))))

(declare-fun b!1494347 () Bool)

(declare-fun e!837058 () SeekEntryResult!12391)

(assert (=> b!1494347 (= e!837058 (Intermediate!12391 true index!646 x!665))))

(declare-fun b!1494348 () Bool)

(declare-fun e!837061 () Bool)

(assert (=> b!1494348 (= e!837059 e!837061)))

(declare-fun res!1016805 () Bool)

(assert (=> b!1494348 (= res!1016805 (and ((_ is Intermediate!12391) lt!651292) (not (undefined!13203 lt!651292)) (bvslt (x!133554 lt!651292) #b01111111111111111111111111111110) (bvsge (x!133554 lt!651292) #b00000000000000000000000000000000) (bvsge (x!133554 lt!651292) x!665)))))

(assert (=> b!1494348 (=> (not res!1016805) (not e!837061))))

(declare-fun b!1494349 () Bool)

(assert (=> b!1494349 (= e!837058 e!837060)))

(declare-fun c!138303 () Bool)

(declare-fun lt!651291 () (_ BitVec 64))

(assert (=> b!1494349 (= c!138303 (or (= lt!651291 lt!651252) (= (bvadd lt!651291 lt!651291) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157009 () Bool)

(assert (=> d!157009 e!837059))

(declare-fun c!138305 () Bool)

(assert (=> d!157009 (= c!138305 (and ((_ is Intermediate!12391) lt!651292) (undefined!13203 lt!651292)))))

(assert (=> d!157009 (= lt!651292 e!837058)))

(declare-fun c!138304 () Bool)

(assert (=> d!157009 (= c!138304 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157009 (= lt!651291 (select (arr!48128 lt!651251) index!646))))

(assert (=> d!157009 (validMask!0 mask!2687)))

(assert (=> d!157009 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651252 lt!651251 mask!2687) lt!651292)))

(declare-fun b!1494350 () Bool)

(assert (=> b!1494350 (and (bvsge (index!51957 lt!651292) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651292) (size!48679 lt!651251)))))

(declare-fun res!1016804 () Bool)

(assert (=> b!1494350 (= res!1016804 (= (select (arr!48128 lt!651251) (index!51957 lt!651292)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837062 () Bool)

(assert (=> b!1494350 (=> res!1016804 e!837062)))

(declare-fun b!1494351 () Bool)

(assert (=> b!1494351 (and (bvsge (index!51957 lt!651292) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651292) (size!48679 lt!651251)))))

(assert (=> b!1494351 (= e!837062 (= (select (arr!48128 lt!651251) (index!51957 lt!651292)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1494352 () Bool)

(assert (=> b!1494352 (and (bvsge (index!51957 lt!651292) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651292) (size!48679 lt!651251)))))

(declare-fun res!1016806 () Bool)

(assert (=> b!1494352 (= res!1016806 (= (select (arr!48128 lt!651251) (index!51957 lt!651292)) lt!651252))))

(assert (=> b!1494352 (=> res!1016806 e!837062)))

(assert (=> b!1494352 (= e!837061 e!837062)))

(assert (= (and d!157009 c!138304) b!1494347))

(assert (= (and d!157009 (not c!138304)) b!1494349))

(assert (= (and b!1494349 c!138303) b!1494344))

(assert (= (and b!1494349 (not c!138303)) b!1494346))

(assert (= (and d!157009 c!138305) b!1494345))

(assert (= (and d!157009 (not c!138305)) b!1494348))

(assert (= (and b!1494348 res!1016805) b!1494352))

(assert (= (and b!1494352 (not res!1016806)) b!1494350))

(assert (= (and b!1494350 (not res!1016804)) b!1494351))

(declare-fun m!1378157 () Bool)

(assert (=> d!157009 m!1378157))

(assert (=> d!157009 m!1378067))

(declare-fun m!1378159 () Bool)

(assert (=> b!1494352 m!1378159))

(assert (=> b!1494351 m!1378159))

(assert (=> b!1494350 m!1378159))

(assert (=> b!1494346 m!1378061))

(assert (=> b!1494346 m!1378061))

(declare-fun m!1378161 () Bool)

(assert (=> b!1494346 m!1378161))

(assert (=> b!1494231 d!157009))

(declare-fun d!157011 () Bool)

(declare-fun lt!651295 () (_ BitVec 32))

(assert (=> d!157011 (and (bvsge lt!651295 #b00000000000000000000000000000000) (bvslt lt!651295 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157011 (= lt!651295 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157011 (validMask!0 mask!2687)))

(assert (=> d!157011 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651295)))

(declare-fun bs!42893 () Bool)

(assert (= bs!42893 d!157011))

(declare-fun m!1378163 () Bool)

(assert (=> bs!42893 m!1378163))

(assert (=> bs!42893 m!1378067))

(assert (=> b!1494232 d!157011))

(declare-fun b!1494363 () Bool)

(declare-fun e!837072 () Bool)

(declare-fun call!67980 () Bool)

(assert (=> b!1494363 (= e!837072 call!67980)))

(declare-fun d!157013 () Bool)

(declare-fun res!1016815 () Bool)

(declare-fun e!837071 () Bool)

(assert (=> d!157013 (=> res!1016815 e!837071)))

(assert (=> d!157013 (= res!1016815 (bvsge #b00000000000000000000000000000000 (size!48679 a!2862)))))

(assert (=> d!157013 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34806) e!837071)))

(declare-fun b!1494364 () Bool)

(declare-fun e!837074 () Bool)

(assert (=> b!1494364 (= e!837071 e!837074)))

(declare-fun res!1016813 () Bool)

(assert (=> b!1494364 (=> (not res!1016813) (not e!837074))))

(declare-fun e!837073 () Bool)

(assert (=> b!1494364 (= res!1016813 (not e!837073))))

(declare-fun res!1016814 () Bool)

(assert (=> b!1494364 (=> (not res!1016814) (not e!837073))))

(assert (=> b!1494364 (= res!1016814 (validKeyInArray!0 (select (arr!48128 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1494365 () Bool)

(assert (=> b!1494365 (= e!837072 call!67980)))

(declare-fun bm!67977 () Bool)

(declare-fun c!138308 () Bool)

(assert (=> bm!67977 (= call!67980 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138308 (Cons!34805 (select (arr!48128 a!2862) #b00000000000000000000000000000000) Nil!34806) Nil!34806)))))

(declare-fun b!1494366 () Bool)

(declare-fun contains!9940 (List!34809 (_ BitVec 64)) Bool)

(assert (=> b!1494366 (= e!837073 (contains!9940 Nil!34806 (select (arr!48128 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1494367 () Bool)

(assert (=> b!1494367 (= e!837074 e!837072)))

(assert (=> b!1494367 (= c!138308 (validKeyInArray!0 (select (arr!48128 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!157013 (not res!1016815)) b!1494364))

(assert (= (and b!1494364 res!1016814) b!1494366))

(assert (= (and b!1494364 res!1016813) b!1494367))

(assert (= (and b!1494367 c!138308) b!1494363))

(assert (= (and b!1494367 (not c!138308)) b!1494365))

(assert (= (or b!1494363 b!1494365) bm!67977))

(declare-fun m!1378165 () Bool)

(assert (=> b!1494364 m!1378165))

(assert (=> b!1494364 m!1378165))

(declare-fun m!1378167 () Bool)

(assert (=> b!1494364 m!1378167))

(assert (=> bm!67977 m!1378165))

(declare-fun m!1378169 () Bool)

(assert (=> bm!67977 m!1378169))

(assert (=> b!1494366 m!1378165))

(assert (=> b!1494366 m!1378165))

(declare-fun m!1378171 () Bool)

(assert (=> b!1494366 m!1378171))

(assert (=> b!1494367 m!1378165))

(assert (=> b!1494367 m!1378165))

(assert (=> b!1494367 m!1378167))

(assert (=> b!1494227 d!157013))

(declare-fun b!1494376 () Bool)

(declare-fun e!837083 () Bool)

(declare-fun e!837081 () Bool)

(assert (=> b!1494376 (= e!837083 e!837081)))

(declare-fun lt!651304 () (_ BitVec 64))

(assert (=> b!1494376 (= lt!651304 (select (arr!48128 a!2862) j!93))))

(declare-fun lt!651302 () Unit!50070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99728 (_ BitVec 64) (_ BitVec 32)) Unit!50070)

(assert (=> b!1494376 (= lt!651302 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651304 j!93))))

(declare-fun arrayContainsKey!0 (array!99728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1494376 (arrayContainsKey!0 a!2862 lt!651304 #b00000000000000000000000000000000)))

(declare-fun lt!651303 () Unit!50070)

(assert (=> b!1494376 (= lt!651303 lt!651302)))

(declare-fun res!1016821 () Bool)

(assert (=> b!1494376 (= res!1016821 (= (seekEntryOrOpen!0 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) (Found!12391 j!93)))))

(assert (=> b!1494376 (=> (not res!1016821) (not e!837081))))

(declare-fun b!1494377 () Bool)

(declare-fun call!67983 () Bool)

(assert (=> b!1494377 (= e!837083 call!67983)))

(declare-fun b!1494378 () Bool)

(assert (=> b!1494378 (= e!837081 call!67983)))

(declare-fun b!1494379 () Bool)

(declare-fun e!837082 () Bool)

(assert (=> b!1494379 (= e!837082 e!837083)))

(declare-fun c!138311 () Bool)

(assert (=> b!1494379 (= c!138311 (validKeyInArray!0 (select (arr!48128 a!2862) j!93)))))

(declare-fun bm!67980 () Bool)

(assert (=> bm!67980 (= call!67983 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!157017 () Bool)

(declare-fun res!1016820 () Bool)

(assert (=> d!157017 (=> res!1016820 e!837082)))

(assert (=> d!157017 (= res!1016820 (bvsge j!93 (size!48679 a!2862)))))

(assert (=> d!157017 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837082)))

(assert (= (and d!157017 (not res!1016820)) b!1494379))

(assert (= (and b!1494379 c!138311) b!1494376))

(assert (= (and b!1494379 (not c!138311)) b!1494377))

(assert (= (and b!1494376 res!1016821) b!1494378))

(assert (= (or b!1494378 b!1494377) bm!67980))

(assert (=> b!1494376 m!1378033))

(declare-fun m!1378173 () Bool)

(assert (=> b!1494376 m!1378173))

(declare-fun m!1378175 () Bool)

(assert (=> b!1494376 m!1378175))

(assert (=> b!1494376 m!1378033))

(assert (=> b!1494376 m!1378055))

(assert (=> b!1494379 m!1378033))

(assert (=> b!1494379 m!1378033))

(assert (=> b!1494379 m!1378035))

(declare-fun m!1378177 () Bool)

(assert (=> bm!67980 m!1378177))

(assert (=> b!1494238 d!157017))

(declare-fun d!157021 () Bool)

(assert (=> d!157021 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651313 () Unit!50070)

(declare-fun choose!38 (array!99728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50070)

(assert (=> d!157021 (= lt!651313 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157021 (validMask!0 mask!2687)))

(assert (=> d!157021 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651313)))

(declare-fun bs!42894 () Bool)

(assert (= bs!42894 d!157021))

(assert (=> bs!42894 m!1378079))

(declare-fun m!1378179 () Bool)

(assert (=> bs!42894 m!1378179))

(assert (=> bs!42894 m!1378067))

(assert (=> b!1494238 d!157021))

(declare-fun b!1494437 () Bool)

(declare-fun e!837114 () SeekEntryResult!12391)

(declare-fun e!837115 () SeekEntryResult!12391)

(assert (=> b!1494437 (= e!837114 e!837115)))

(declare-fun c!138336 () Bool)

(declare-fun lt!651327 () (_ BitVec 64))

(assert (=> b!1494437 (= c!138336 (= lt!651327 lt!651252))))

(declare-fun b!1494438 () Bool)

(declare-fun c!138337 () Bool)

(assert (=> b!1494438 (= c!138337 (= lt!651327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837116 () SeekEntryResult!12391)

(assert (=> b!1494438 (= e!837115 e!837116)))

(declare-fun b!1494439 () Bool)

(assert (=> b!1494439 (= e!837115 (Found!12391 index!646))))

(declare-fun b!1494440 () Bool)

(assert (=> b!1494440 (= e!837114 Undefined!12391)))

(declare-fun lt!651328 () SeekEntryResult!12391)

(declare-fun d!157023 () Bool)

(assert (=> d!157023 (and (or ((_ is Undefined!12391) lt!651328) (not ((_ is Found!12391) lt!651328)) (and (bvsge (index!51956 lt!651328) #b00000000000000000000000000000000) (bvslt (index!51956 lt!651328) (size!48679 lt!651251)))) (or ((_ is Undefined!12391) lt!651328) ((_ is Found!12391) lt!651328) (not ((_ is MissingVacant!12391) lt!651328)) (not (= (index!51958 lt!651328) intermediateAfterIndex!19)) (and (bvsge (index!51958 lt!651328) #b00000000000000000000000000000000) (bvslt (index!51958 lt!651328) (size!48679 lt!651251)))) (or ((_ is Undefined!12391) lt!651328) (ite ((_ is Found!12391) lt!651328) (= (select (arr!48128 lt!651251) (index!51956 lt!651328)) lt!651252) (and ((_ is MissingVacant!12391) lt!651328) (= (index!51958 lt!651328) intermediateAfterIndex!19) (= (select (arr!48128 lt!651251) (index!51958 lt!651328)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157023 (= lt!651328 e!837114)))

(declare-fun c!138338 () Bool)

(assert (=> d!157023 (= c!138338 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157023 (= lt!651327 (select (arr!48128 lt!651251) index!646))))

(assert (=> d!157023 (validMask!0 mask!2687)))

(assert (=> d!157023 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651252 lt!651251 mask!2687) lt!651328)))

(declare-fun b!1494441 () Bool)

(assert (=> b!1494441 (= e!837116 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651252 lt!651251 mask!2687))))

(declare-fun b!1494442 () Bool)

(assert (=> b!1494442 (= e!837116 (MissingVacant!12391 intermediateAfterIndex!19))))

(assert (= (and d!157023 c!138338) b!1494440))

(assert (= (and d!157023 (not c!138338)) b!1494437))

(assert (= (and b!1494437 c!138336) b!1494439))

(assert (= (and b!1494437 (not c!138336)) b!1494438))

(assert (= (and b!1494438 c!138337) b!1494442))

(assert (= (and b!1494438 (not c!138337)) b!1494441))

(declare-fun m!1378197 () Bool)

(assert (=> d!157023 m!1378197))

(declare-fun m!1378199 () Bool)

(assert (=> d!157023 m!1378199))

(assert (=> d!157023 m!1378157))

(assert (=> d!157023 m!1378067))

(assert (=> b!1494441 m!1378061))

(assert (=> b!1494441 m!1378061))

(declare-fun m!1378201 () Bool)

(assert (=> b!1494441 m!1378201))

(assert (=> b!1494239 d!157023))

(declare-fun d!157031 () Bool)

(declare-fun lt!651364 () SeekEntryResult!12391)

(assert (=> d!157031 (and (or ((_ is Undefined!12391) lt!651364) (not ((_ is Found!12391) lt!651364)) (and (bvsge (index!51956 lt!651364) #b00000000000000000000000000000000) (bvslt (index!51956 lt!651364) (size!48679 lt!651251)))) (or ((_ is Undefined!12391) lt!651364) ((_ is Found!12391) lt!651364) (not ((_ is MissingZero!12391) lt!651364)) (and (bvsge (index!51955 lt!651364) #b00000000000000000000000000000000) (bvslt (index!51955 lt!651364) (size!48679 lt!651251)))) (or ((_ is Undefined!12391) lt!651364) ((_ is Found!12391) lt!651364) ((_ is MissingZero!12391) lt!651364) (not ((_ is MissingVacant!12391) lt!651364)) (and (bvsge (index!51958 lt!651364) #b00000000000000000000000000000000) (bvslt (index!51958 lt!651364) (size!48679 lt!651251)))) (or ((_ is Undefined!12391) lt!651364) (ite ((_ is Found!12391) lt!651364) (= (select (arr!48128 lt!651251) (index!51956 lt!651364)) lt!651252) (ite ((_ is MissingZero!12391) lt!651364) (= (select (arr!48128 lt!651251) (index!51955 lt!651364)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12391) lt!651364) (= (select (arr!48128 lt!651251) (index!51958 lt!651364)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837148 () SeekEntryResult!12391)

(assert (=> d!157031 (= lt!651364 e!837148)))

(declare-fun c!138357 () Bool)

(declare-fun lt!651363 () SeekEntryResult!12391)

(assert (=> d!157031 (= c!138357 (and ((_ is Intermediate!12391) lt!651363) (undefined!13203 lt!651363)))))

(assert (=> d!157031 (= lt!651363 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651252 mask!2687) lt!651252 lt!651251 mask!2687))))

(assert (=> d!157031 (validMask!0 mask!2687)))

(assert (=> d!157031 (= (seekEntryOrOpen!0 lt!651252 lt!651251 mask!2687) lt!651364)))

(declare-fun b!1494494 () Bool)

(declare-fun e!837147 () SeekEntryResult!12391)

(assert (=> b!1494494 (= e!837148 e!837147)))

(declare-fun lt!651362 () (_ BitVec 64))

(assert (=> b!1494494 (= lt!651362 (select (arr!48128 lt!651251) (index!51957 lt!651363)))))

(declare-fun c!138359 () Bool)

(assert (=> b!1494494 (= c!138359 (= lt!651362 lt!651252))))

(declare-fun b!1494495 () Bool)

(assert (=> b!1494495 (= e!837147 (Found!12391 (index!51957 lt!651363)))))

(declare-fun b!1494496 () Bool)

(declare-fun e!837149 () SeekEntryResult!12391)

(assert (=> b!1494496 (= e!837149 (MissingZero!12391 (index!51957 lt!651363)))))

(declare-fun b!1494497 () Bool)

(assert (=> b!1494497 (= e!837149 (seekKeyOrZeroReturnVacant!0 (x!133554 lt!651363) (index!51957 lt!651363) (index!51957 lt!651363) lt!651252 lt!651251 mask!2687))))

(declare-fun b!1494498 () Bool)

(assert (=> b!1494498 (= e!837148 Undefined!12391)))

(declare-fun b!1494499 () Bool)

(declare-fun c!138358 () Bool)

(assert (=> b!1494499 (= c!138358 (= lt!651362 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494499 (= e!837147 e!837149)))

(assert (= (and d!157031 c!138357) b!1494498))

(assert (= (and d!157031 (not c!138357)) b!1494494))

(assert (= (and b!1494494 c!138359) b!1494495))

(assert (= (and b!1494494 (not c!138359)) b!1494499))

(assert (= (and b!1494499 c!138358) b!1494496))

(assert (= (and b!1494499 (not c!138358)) b!1494497))

(declare-fun m!1378221 () Bool)

(assert (=> d!157031 m!1378221))

(declare-fun m!1378223 () Bool)

(assert (=> d!157031 m!1378223))

(assert (=> d!157031 m!1378037))

(declare-fun m!1378225 () Bool)

(assert (=> d!157031 m!1378225))

(assert (=> d!157031 m!1378067))

(assert (=> d!157031 m!1378037))

(assert (=> d!157031 m!1378039))

(declare-fun m!1378227 () Bool)

(assert (=> b!1494494 m!1378227))

(declare-fun m!1378229 () Bool)

(assert (=> b!1494497 m!1378229))

(assert (=> b!1494239 d!157031))

(declare-fun d!157043 () Bool)

(declare-fun lt!651367 () SeekEntryResult!12391)

(assert (=> d!157043 (and (or ((_ is Undefined!12391) lt!651367) (not ((_ is Found!12391) lt!651367)) (and (bvsge (index!51956 lt!651367) #b00000000000000000000000000000000) (bvslt (index!51956 lt!651367) (size!48679 a!2862)))) (or ((_ is Undefined!12391) lt!651367) ((_ is Found!12391) lt!651367) (not ((_ is MissingZero!12391) lt!651367)) (and (bvsge (index!51955 lt!651367) #b00000000000000000000000000000000) (bvslt (index!51955 lt!651367) (size!48679 a!2862)))) (or ((_ is Undefined!12391) lt!651367) ((_ is Found!12391) lt!651367) ((_ is MissingZero!12391) lt!651367) (not ((_ is MissingVacant!12391) lt!651367)) (and (bvsge (index!51958 lt!651367) #b00000000000000000000000000000000) (bvslt (index!51958 lt!651367) (size!48679 a!2862)))) (or ((_ is Undefined!12391) lt!651367) (ite ((_ is Found!12391) lt!651367) (= (select (arr!48128 a!2862) (index!51956 lt!651367)) (select (arr!48128 a!2862) j!93)) (ite ((_ is MissingZero!12391) lt!651367) (= (select (arr!48128 a!2862) (index!51955 lt!651367)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12391) lt!651367) (= (select (arr!48128 a!2862) (index!51958 lt!651367)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837151 () SeekEntryResult!12391)

(assert (=> d!157043 (= lt!651367 e!837151)))

(declare-fun c!138360 () Bool)

(declare-fun lt!651366 () SeekEntryResult!12391)

(assert (=> d!157043 (= c!138360 (and ((_ is Intermediate!12391) lt!651366) (undefined!13203 lt!651366)))))

(assert (=> d!157043 (= lt!651366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48128 a!2862) j!93) mask!2687) (select (arr!48128 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157043 (validMask!0 mask!2687)))

(assert (=> d!157043 (= (seekEntryOrOpen!0 (select (arr!48128 a!2862) j!93) a!2862 mask!2687) lt!651367)))

(declare-fun b!1494500 () Bool)

(declare-fun e!837150 () SeekEntryResult!12391)

(assert (=> b!1494500 (= e!837151 e!837150)))

(declare-fun lt!651365 () (_ BitVec 64))

(assert (=> b!1494500 (= lt!651365 (select (arr!48128 a!2862) (index!51957 lt!651366)))))

(declare-fun c!138362 () Bool)

(assert (=> b!1494500 (= c!138362 (= lt!651365 (select (arr!48128 a!2862) j!93)))))

(declare-fun b!1494501 () Bool)

(assert (=> b!1494501 (= e!837150 (Found!12391 (index!51957 lt!651366)))))

(declare-fun b!1494502 () Bool)

(declare-fun e!837152 () SeekEntryResult!12391)

(assert (=> b!1494502 (= e!837152 (MissingZero!12391 (index!51957 lt!651366)))))

(declare-fun b!1494503 () Bool)

(assert (=> b!1494503 (= e!837152 (seekKeyOrZeroReturnVacant!0 (x!133554 lt!651366) (index!51957 lt!651366) (index!51957 lt!651366) (select (arr!48128 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494504 () Bool)

(assert (=> b!1494504 (= e!837151 Undefined!12391)))

(declare-fun b!1494505 () Bool)

(declare-fun c!138361 () Bool)

(assert (=> b!1494505 (= c!138361 (= lt!651365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494505 (= e!837150 e!837152)))

(assert (= (and d!157043 c!138360) b!1494504))

(assert (= (and d!157043 (not c!138360)) b!1494500))

(assert (= (and b!1494500 c!138362) b!1494501))

(assert (= (and b!1494500 (not c!138362)) b!1494505))

(assert (= (and b!1494505 c!138361) b!1494502))

(assert (= (and b!1494505 (not c!138361)) b!1494503))

(declare-fun m!1378231 () Bool)

(assert (=> d!157043 m!1378231))

(declare-fun m!1378233 () Bool)

(assert (=> d!157043 m!1378233))

(assert (=> d!157043 m!1378033))

(assert (=> d!157043 m!1378063))

(declare-fun m!1378235 () Bool)

(assert (=> d!157043 m!1378235))

(assert (=> d!157043 m!1378067))

(assert (=> d!157043 m!1378063))

(assert (=> d!157043 m!1378033))

(assert (=> d!157043 m!1378065))

(declare-fun m!1378237 () Bool)

(assert (=> b!1494500 m!1378237))

(assert (=> b!1494503 m!1378033))

(declare-fun m!1378239 () Bool)

(assert (=> b!1494503 m!1378239))

(assert (=> b!1494240 d!157043))

(declare-fun b!1494506 () Bool)

(declare-fun e!837155 () Bool)

(declare-fun e!837153 () Bool)

(assert (=> b!1494506 (= e!837155 e!837153)))

(declare-fun lt!651370 () (_ BitVec 64))

(assert (=> b!1494506 (= lt!651370 (select (arr!48128 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651368 () Unit!50070)

(assert (=> b!1494506 (= lt!651368 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651370 #b00000000000000000000000000000000))))

(assert (=> b!1494506 (arrayContainsKey!0 a!2862 lt!651370 #b00000000000000000000000000000000)))

(declare-fun lt!651369 () Unit!50070)

(assert (=> b!1494506 (= lt!651369 lt!651368)))

(declare-fun res!1016848 () Bool)

(assert (=> b!1494506 (= res!1016848 (= (seekEntryOrOpen!0 (select (arr!48128 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12391 #b00000000000000000000000000000000)))))

(assert (=> b!1494506 (=> (not res!1016848) (not e!837153))))

(declare-fun b!1494507 () Bool)

(declare-fun call!67987 () Bool)

(assert (=> b!1494507 (= e!837155 call!67987)))

(declare-fun b!1494508 () Bool)

(assert (=> b!1494508 (= e!837153 call!67987)))

(declare-fun b!1494509 () Bool)

(declare-fun e!837154 () Bool)

(assert (=> b!1494509 (= e!837154 e!837155)))

(declare-fun c!138363 () Bool)

(assert (=> b!1494509 (= c!138363 (validKeyInArray!0 (select (arr!48128 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67984 () Bool)

(assert (=> bm!67984 (= call!67987 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!157045 () Bool)

(declare-fun res!1016847 () Bool)

(assert (=> d!157045 (=> res!1016847 e!837154)))

(assert (=> d!157045 (= res!1016847 (bvsge #b00000000000000000000000000000000 (size!48679 a!2862)))))

(assert (=> d!157045 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837154)))

(assert (= (and d!157045 (not res!1016847)) b!1494509))

(assert (= (and b!1494509 c!138363) b!1494506))

(assert (= (and b!1494509 (not c!138363)) b!1494507))

(assert (= (and b!1494506 res!1016848) b!1494508))

(assert (= (or b!1494508 b!1494507) bm!67984))

(assert (=> b!1494506 m!1378165))

(declare-fun m!1378241 () Bool)

(assert (=> b!1494506 m!1378241))

(declare-fun m!1378243 () Bool)

(assert (=> b!1494506 m!1378243))

(assert (=> b!1494506 m!1378165))

(declare-fun m!1378245 () Bool)

(assert (=> b!1494506 m!1378245))

(assert (=> b!1494509 m!1378165))

(assert (=> b!1494509 m!1378165))

(assert (=> b!1494509 m!1378167))

(declare-fun m!1378247 () Bool)

(assert (=> bm!67984 m!1378247))

(assert (=> b!1494235 d!157045))

(declare-fun b!1494510 () Bool)

(declare-fun e!837158 () SeekEntryResult!12391)

(assert (=> b!1494510 (= e!837158 (Intermediate!12391 false (toIndex!0 lt!651252 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494511 () Bool)

(declare-fun e!837157 () Bool)

(declare-fun lt!651372 () SeekEntryResult!12391)

(assert (=> b!1494511 (= e!837157 (bvsge (x!133554 lt!651372) #b01111111111111111111111111111110))))

(declare-fun b!1494512 () Bool)

(assert (=> b!1494512 (= e!837158 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651252 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651252 lt!651251 mask!2687))))

(declare-fun b!1494513 () Bool)

(declare-fun e!837156 () SeekEntryResult!12391)

(assert (=> b!1494513 (= e!837156 (Intermediate!12391 true (toIndex!0 lt!651252 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494514 () Bool)

(declare-fun e!837159 () Bool)

(assert (=> b!1494514 (= e!837157 e!837159)))

(declare-fun res!1016850 () Bool)

(assert (=> b!1494514 (= res!1016850 (and ((_ is Intermediate!12391) lt!651372) (not (undefined!13203 lt!651372)) (bvslt (x!133554 lt!651372) #b01111111111111111111111111111110) (bvsge (x!133554 lt!651372) #b00000000000000000000000000000000) (bvsge (x!133554 lt!651372) #b00000000000000000000000000000000)))))

(assert (=> b!1494514 (=> (not res!1016850) (not e!837159))))

(declare-fun b!1494515 () Bool)

(assert (=> b!1494515 (= e!837156 e!837158)))

(declare-fun c!138364 () Bool)

(declare-fun lt!651371 () (_ BitVec 64))

(assert (=> b!1494515 (= c!138364 (or (= lt!651371 lt!651252) (= (bvadd lt!651371 lt!651371) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!157047 () Bool)

(assert (=> d!157047 e!837157))

(declare-fun c!138366 () Bool)

(assert (=> d!157047 (= c!138366 (and ((_ is Intermediate!12391) lt!651372) (undefined!13203 lt!651372)))))

(assert (=> d!157047 (= lt!651372 e!837156)))

(declare-fun c!138365 () Bool)

(assert (=> d!157047 (= c!138365 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!157047 (= lt!651371 (select (arr!48128 lt!651251) (toIndex!0 lt!651252 mask!2687)))))

(assert (=> d!157047 (validMask!0 mask!2687)))

(assert (=> d!157047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651252 mask!2687) lt!651252 lt!651251 mask!2687) lt!651372)))

(declare-fun b!1494516 () Bool)

(assert (=> b!1494516 (and (bvsge (index!51957 lt!651372) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651372) (size!48679 lt!651251)))))

(declare-fun res!1016849 () Bool)

(assert (=> b!1494516 (= res!1016849 (= (select (arr!48128 lt!651251) (index!51957 lt!651372)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837160 () Bool)

(assert (=> b!1494516 (=> res!1016849 e!837160)))

(declare-fun b!1494517 () Bool)

(assert (=> b!1494517 (and (bvsge (index!51957 lt!651372) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651372) (size!48679 lt!651251)))))

(assert (=> b!1494517 (= e!837160 (= (select (arr!48128 lt!651251) (index!51957 lt!651372)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1494518 () Bool)

(assert (=> b!1494518 (and (bvsge (index!51957 lt!651372) #b00000000000000000000000000000000) (bvslt (index!51957 lt!651372) (size!48679 lt!651251)))))

(declare-fun res!1016851 () Bool)

(assert (=> b!1494518 (= res!1016851 (= (select (arr!48128 lt!651251) (index!51957 lt!651372)) lt!651252))))

(assert (=> b!1494518 (=> res!1016851 e!837160)))

(assert (=> b!1494518 (= e!837159 e!837160)))

(assert (= (and d!157047 c!138365) b!1494513))

(assert (= (and d!157047 (not c!138365)) b!1494515))

(assert (= (and b!1494515 c!138364) b!1494510))

(assert (= (and b!1494515 (not c!138364)) b!1494512))

(assert (= (and d!157047 c!138366) b!1494511))

(assert (= (and d!157047 (not c!138366)) b!1494514))

(assert (= (and b!1494514 res!1016850) b!1494518))

(assert (= (and b!1494518 (not res!1016851)) b!1494516))

(assert (= (and b!1494516 (not res!1016849)) b!1494517))

(assert (=> d!157047 m!1378037))

(declare-fun m!1378249 () Bool)

(assert (=> d!157047 m!1378249))

(assert (=> d!157047 m!1378067))

(declare-fun m!1378251 () Bool)

(assert (=> b!1494518 m!1378251))

(assert (=> b!1494517 m!1378251))

(assert (=> b!1494516 m!1378251))

(assert (=> b!1494512 m!1378037))

(declare-fun m!1378253 () Bool)

(assert (=> b!1494512 m!1378253))

(assert (=> b!1494512 m!1378253))

(declare-fun m!1378255 () Bool)

(assert (=> b!1494512 m!1378255))

(assert (=> b!1494236 d!157047))

(declare-fun d!157049 () Bool)

(declare-fun lt!651374 () (_ BitVec 32))

(declare-fun lt!651373 () (_ BitVec 32))

(assert (=> d!157049 (= lt!651374 (bvmul (bvxor lt!651373 (bvlshr lt!651373 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157049 (= lt!651373 ((_ extract 31 0) (bvand (bvxor lt!651252 (bvlshr lt!651252 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157049 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1016797 (let ((h!36196 ((_ extract 31 0) (bvand (bvxor lt!651252 (bvlshr lt!651252 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133557 (bvmul (bvxor h!36196 (bvlshr h!36196 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133557 (bvlshr x!133557 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1016797 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1016797 #b00000000000000000000000000000000))))))

(assert (=> d!157049 (= (toIndex!0 lt!651252 mask!2687) (bvand (bvxor lt!651374 (bvlshr lt!651374 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1494236 d!157049))

(check-sat (not b!1494503) (not b!1494346) (not b!1494512) (not bm!67977) (not d!157047) (not b!1494337) (not b!1494379) (not b!1494328) (not bm!67980) (not b!1494319) (not b!1494509) (not b!1494497) (not d!156997) (not d!157007) (not b!1494364) (not d!157023) (not d!157011) (not d!157021) (not bm!67984) (not b!1494366) (not d!157009) (not b!1494506) (not b!1494441) (not d!157043) (not b!1494367) (not b!1494376) (not d!157031) (not d!156993))
(check-sat)
