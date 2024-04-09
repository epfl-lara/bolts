; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125934 () Bool)

(assert start!125934)

(declare-fun b!1473695 () Bool)

(declare-fun res!1001097 () Bool)

(declare-fun e!826975 () Bool)

(assert (=> b!1473695 (=> (not res!1001097) (not e!826975))))

(declare-datatypes ((array!99128 0))(
  ( (array!99129 (arr!47843 (Array (_ BitVec 32) (_ BitVec 64))) (size!48394 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99128)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99128 (_ BitVec 32)) Bool)

(assert (=> b!1473695 (= res!1001097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473696 () Bool)

(declare-fun res!1001091 () Bool)

(declare-fun e!826971 () Bool)

(assert (=> b!1473696 (=> (not res!1001091) (not e!826971))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12106 0))(
  ( (MissingZero!12106 (index!50815 (_ BitVec 32))) (Found!12106 (index!50816 (_ BitVec 32))) (Intermediate!12106 (undefined!12918 Bool) (index!50817 (_ BitVec 32)) (x!132401 (_ BitVec 32))) (Undefined!12106) (MissingVacant!12106 (index!50818 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99128 (_ BitVec 32)) SeekEntryResult!12106)

(assert (=> b!1473696 (= res!1001091 (= (seekEntryOrOpen!0 (select (arr!47843 a!2862) j!93) a!2862 mask!2687) (Found!12106 j!93)))))

(declare-fun b!1473697 () Bool)

(declare-fun res!1001093 () Bool)

(assert (=> b!1473697 (=> (not res!1001093) (not e!826975))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473697 (= res!1001093 (validKeyInArray!0 (select (arr!47843 a!2862) i!1006)))))

(declare-fun b!1473698 () Bool)

(declare-fun res!1001082 () Bool)

(assert (=> b!1473698 (=> (not res!1001082) (not e!826975))))

(declare-datatypes ((List!34524 0))(
  ( (Nil!34521) (Cons!34520 (h!35879 (_ BitVec 64)) (t!49225 List!34524)) )
))
(declare-fun arrayNoDuplicates!0 (array!99128 (_ BitVec 32) List!34524) Bool)

(assert (=> b!1473698 (= res!1001082 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34521))))

(declare-fun b!1473699 () Bool)

(declare-fun res!1001088 () Bool)

(assert (=> b!1473699 (=> (not res!1001088) (not e!826975))))

(assert (=> b!1473699 (= res!1001088 (validKeyInArray!0 (select (arr!47843 a!2862) j!93)))))

(declare-fun b!1473700 () Bool)

(declare-fun e!826976 () Bool)

(declare-fun e!826972 () Bool)

(assert (=> b!1473700 (= e!826976 e!826972)))

(declare-fun res!1001089 () Bool)

(assert (=> b!1473700 (=> (not res!1001089) (not e!826972))))

(declare-fun lt!643980 () SeekEntryResult!12106)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99128 (_ BitVec 32)) SeekEntryResult!12106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473700 (= res!1001089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47843 a!2862) j!93) mask!2687) (select (arr!47843 a!2862) j!93) a!2862 mask!2687) lt!643980))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473700 (= lt!643980 (Intermediate!12106 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473701 () Bool)

(assert (=> b!1473701 (= e!826971 (or (= (select (arr!47843 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47843 a!2862) intermediateBeforeIndex!19) (select (arr!47843 a!2862) j!93))))))

(declare-fun b!1473703 () Bool)

(declare-fun res!1001096 () Bool)

(assert (=> b!1473703 (=> (not res!1001096) (not e!826972))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1473703 (= res!1001096 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47843 a!2862) j!93) a!2862 mask!2687) lt!643980))))

(declare-fun lt!643979 () SeekEntryResult!12106)

(declare-fun lt!643981 () (_ BitVec 64))

(declare-fun e!826970 () Bool)

(declare-fun lt!643982 () array!99128)

(declare-fun b!1473704 () Bool)

(assert (=> b!1473704 (= e!826970 (= lt!643979 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643981 lt!643982 mask!2687)))))

(declare-fun b!1473705 () Bool)

(declare-fun res!1001095 () Bool)

(assert (=> b!1473705 (=> (not res!1001095) (not e!826975))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1473705 (= res!1001095 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48394 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48394 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48394 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473706 () Bool)

(declare-fun e!826973 () Bool)

(assert (=> b!1473706 (= e!826972 e!826973)))

(declare-fun res!1001085 () Bool)

(assert (=> b!1473706 (=> (not res!1001085) (not e!826973))))

(assert (=> b!1473706 (= res!1001085 (= lt!643979 (Intermediate!12106 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473706 (= lt!643979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643981 mask!2687) lt!643981 lt!643982 mask!2687))))

(assert (=> b!1473706 (= lt!643981 (select (store (arr!47843 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473707 () Bool)

(assert (=> b!1473707 (= e!826975 e!826976)))

(declare-fun res!1001087 () Bool)

(assert (=> b!1473707 (=> (not res!1001087) (not e!826976))))

(assert (=> b!1473707 (= res!1001087 (= (select (store (arr!47843 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473707 (= lt!643982 (array!99129 (store (arr!47843 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48394 a!2862)))))

(declare-fun b!1473708 () Bool)

(declare-fun res!1001094 () Bool)

(assert (=> b!1473708 (=> (not res!1001094) (not e!826973))))

(assert (=> b!1473708 (= res!1001094 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473709 () Bool)

(declare-fun res!1001092 () Bool)

(assert (=> b!1473709 (=> (not res!1001092) (not e!826973))))

(assert (=> b!1473709 (= res!1001092 e!826970)))

(declare-fun c!135824 () Bool)

(assert (=> b!1473709 (= c!135824 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473710 () Bool)

(declare-fun e!826974 () Bool)

(assert (=> b!1473710 (= e!826973 (not e!826974))))

(declare-fun res!1001090 () Bool)

(assert (=> b!1473710 (=> res!1001090 e!826974)))

(assert (=> b!1473710 (= res!1001090 (or (not (= (select (arr!47843 a!2862) index!646) (select (store (arr!47843 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47843 a!2862) index!646) (select (arr!47843 a!2862) j!93)))))))

(assert (=> b!1473710 e!826971))

(declare-fun res!1001086 () Bool)

(assert (=> b!1473710 (=> (not res!1001086) (not e!826971))))

(assert (=> b!1473710 (= res!1001086 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49500 0))(
  ( (Unit!49501) )
))
(declare-fun lt!643984 () Unit!49500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49500)

(assert (=> b!1473710 (= lt!643984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1001083 () Bool)

(assert (=> start!125934 (=> (not res!1001083) (not e!826975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125934 (= res!1001083 (validMask!0 mask!2687))))

(assert (=> start!125934 e!826975))

(assert (=> start!125934 true))

(declare-fun array_inv!36788 (array!99128) Bool)

(assert (=> start!125934 (array_inv!36788 a!2862)))

(declare-fun b!1473702 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99128 (_ BitVec 32)) SeekEntryResult!12106)

(assert (=> b!1473702 (= e!826970 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643981 lt!643982 mask!2687) (seekEntryOrOpen!0 lt!643981 lt!643982 mask!2687)))))

(declare-fun b!1473711 () Bool)

(declare-fun res!1001084 () Bool)

(assert (=> b!1473711 (=> (not res!1001084) (not e!826975))))

(assert (=> b!1473711 (= res!1001084 (and (= (size!48394 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48394 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48394 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473712 () Bool)

(assert (=> b!1473712 (= e!826974 true)))

(declare-fun lt!643983 () SeekEntryResult!12106)

(assert (=> b!1473712 (= lt!643983 (seekEntryOrOpen!0 lt!643981 lt!643982 mask!2687))))

(assert (= (and start!125934 res!1001083) b!1473711))

(assert (= (and b!1473711 res!1001084) b!1473697))

(assert (= (and b!1473697 res!1001093) b!1473699))

(assert (= (and b!1473699 res!1001088) b!1473695))

(assert (= (and b!1473695 res!1001097) b!1473698))

(assert (= (and b!1473698 res!1001082) b!1473705))

(assert (= (and b!1473705 res!1001095) b!1473707))

(assert (= (and b!1473707 res!1001087) b!1473700))

(assert (= (and b!1473700 res!1001089) b!1473703))

(assert (= (and b!1473703 res!1001096) b!1473706))

(assert (= (and b!1473706 res!1001085) b!1473709))

(assert (= (and b!1473709 c!135824) b!1473704))

(assert (= (and b!1473709 (not c!135824)) b!1473702))

(assert (= (and b!1473709 res!1001092) b!1473708))

(assert (= (and b!1473708 res!1001094) b!1473710))

(assert (= (and b!1473710 res!1001086) b!1473696))

(assert (= (and b!1473696 res!1001091) b!1473701))

(assert (= (and b!1473710 (not res!1001090)) b!1473712))

(declare-fun m!1360253 () Bool)

(assert (=> b!1473707 m!1360253))

(declare-fun m!1360255 () Bool)

(assert (=> b!1473707 m!1360255))

(declare-fun m!1360257 () Bool)

(assert (=> b!1473701 m!1360257))

(declare-fun m!1360259 () Bool)

(assert (=> b!1473701 m!1360259))

(declare-fun m!1360261 () Bool)

(assert (=> start!125934 m!1360261))

(declare-fun m!1360263 () Bool)

(assert (=> start!125934 m!1360263))

(declare-fun m!1360265 () Bool)

(assert (=> b!1473698 m!1360265))

(declare-fun m!1360267 () Bool)

(assert (=> b!1473697 m!1360267))

(assert (=> b!1473697 m!1360267))

(declare-fun m!1360269 () Bool)

(assert (=> b!1473697 m!1360269))

(declare-fun m!1360271 () Bool)

(assert (=> b!1473702 m!1360271))

(declare-fun m!1360273 () Bool)

(assert (=> b!1473702 m!1360273))

(declare-fun m!1360275 () Bool)

(assert (=> b!1473706 m!1360275))

(assert (=> b!1473706 m!1360275))

(declare-fun m!1360277 () Bool)

(assert (=> b!1473706 m!1360277))

(assert (=> b!1473706 m!1360253))

(declare-fun m!1360279 () Bool)

(assert (=> b!1473706 m!1360279))

(assert (=> b!1473696 m!1360259))

(assert (=> b!1473696 m!1360259))

(declare-fun m!1360281 () Bool)

(assert (=> b!1473696 m!1360281))

(declare-fun m!1360283 () Bool)

(assert (=> b!1473710 m!1360283))

(assert (=> b!1473710 m!1360253))

(declare-fun m!1360285 () Bool)

(assert (=> b!1473710 m!1360285))

(declare-fun m!1360287 () Bool)

(assert (=> b!1473710 m!1360287))

(declare-fun m!1360289 () Bool)

(assert (=> b!1473710 m!1360289))

(assert (=> b!1473710 m!1360259))

(assert (=> b!1473700 m!1360259))

(assert (=> b!1473700 m!1360259))

(declare-fun m!1360291 () Bool)

(assert (=> b!1473700 m!1360291))

(assert (=> b!1473700 m!1360291))

(assert (=> b!1473700 m!1360259))

(declare-fun m!1360293 () Bool)

(assert (=> b!1473700 m!1360293))

(assert (=> b!1473712 m!1360273))

(declare-fun m!1360295 () Bool)

(assert (=> b!1473704 m!1360295))

(declare-fun m!1360297 () Bool)

(assert (=> b!1473695 m!1360297))

(assert (=> b!1473703 m!1360259))

(assert (=> b!1473703 m!1360259))

(declare-fun m!1360299 () Bool)

(assert (=> b!1473703 m!1360299))

(assert (=> b!1473699 m!1360259))

(assert (=> b!1473699 m!1360259))

(declare-fun m!1360301 () Bool)

(assert (=> b!1473699 m!1360301))

(check-sat (not b!1473695) (not b!1473696) (not b!1473706) (not b!1473697) (not b!1473710) (not b!1473700) (not b!1473704) (not b!1473698) (not b!1473703) (not b!1473702) (not b!1473699) (not b!1473712) (not start!125934))
(check-sat)
