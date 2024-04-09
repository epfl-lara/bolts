; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121670 () Bool)

(assert start!121670)

(declare-fun b!1412980 () Bool)

(declare-fun res!950087 () Bool)

(declare-fun e!799661 () Bool)

(assert (=> b!1412980 (=> (not res!950087) (not e!799661))))

(declare-datatypes ((array!96526 0))(
  ( (array!96527 (arr!46596 (Array (_ BitVec 32) (_ BitVec 64))) (size!47147 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96526)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96526 (_ BitVec 32)) Bool)

(assert (=> b!1412980 (= res!950087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412981 () Bool)

(declare-fun e!799664 () Bool)

(declare-fun e!799662 () Bool)

(assert (=> b!1412981 (= e!799664 e!799662)))

(declare-fun res!950079 () Bool)

(assert (=> b!1412981 (=> res!950079 e!799662)))

(declare-datatypes ((SeekEntryResult!10929 0))(
  ( (MissingZero!10929 (index!46095 (_ BitVec 32))) (Found!10929 (index!46096 (_ BitVec 32))) (Intermediate!10929 (undefined!11741 Bool) (index!46097 (_ BitVec 32)) (x!127683 (_ BitVec 32))) (Undefined!10929) (MissingVacant!10929 (index!46098 (_ BitVec 32))) )
))
(declare-fun lt!622717 () SeekEntryResult!10929)

(declare-fun lt!622713 () SeekEntryResult!10929)

(assert (=> b!1412981 (= res!950079 (or (= lt!622717 lt!622713) (not (is-Intermediate!10929 lt!622713))))))

(declare-fun lt!622712 () (_ BitVec 64))

(declare-fun lt!622711 () array!96526)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96526 (_ BitVec 32)) SeekEntryResult!10929)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412981 (= lt!622713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622712 mask!2840) lt!622712 lt!622711 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412981 (= lt!622712 (select (store (arr!46596 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412981 (= lt!622711 (array!96527 (store (arr!46596 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47147 a!2901)))))

(declare-fun b!1412982 () Bool)

(declare-fun res!950086 () Bool)

(assert (=> b!1412982 (=> (not res!950086) (not e!799661))))

(declare-datatypes ((List!33295 0))(
  ( (Nil!33292) (Cons!33291 (h!34566 (_ BitVec 64)) (t!47996 List!33295)) )
))
(declare-fun arrayNoDuplicates!0 (array!96526 (_ BitVec 32) List!33295) Bool)

(assert (=> b!1412982 (= res!950086 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33292))))

(declare-fun b!1412983 () Bool)

(declare-fun res!950080 () Bool)

(assert (=> b!1412983 (=> (not res!950080) (not e!799661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412983 (= res!950080 (validKeyInArray!0 (select (arr!46596 a!2901) j!112)))))

(declare-fun b!1412984 () Bool)

(declare-fun res!950082 () Bool)

(assert (=> b!1412984 (=> (not res!950082) (not e!799661))))

(assert (=> b!1412984 (= res!950082 (and (= (size!47147 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47147 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47147 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412985 () Bool)

(declare-fun res!950081 () Bool)

(assert (=> b!1412985 (=> (not res!950081) (not e!799661))))

(assert (=> b!1412985 (= res!950081 (validKeyInArray!0 (select (arr!46596 a!2901) i!1037)))))

(declare-fun b!1412986 () Bool)

(assert (=> b!1412986 (= e!799662 true)))

(declare-fun e!799659 () Bool)

(assert (=> b!1412986 e!799659))

(declare-fun res!950084 () Bool)

(assert (=> b!1412986 (=> (not res!950084) (not e!799659))))

(assert (=> b!1412986 (= res!950084 (and (not (undefined!11741 lt!622713)) (= (index!46097 lt!622713) i!1037) (bvslt (x!127683 lt!622713) (x!127683 lt!622717)) (= (select (store (arr!46596 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46097 lt!622713)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622715 () (_ BitVec 32))

(declare-datatypes ((Unit!47782 0))(
  ( (Unit!47783) )
))
(declare-fun lt!622716 () Unit!47782)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47782)

(assert (=> b!1412986 (= lt!622716 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622715 (x!127683 lt!622717) (index!46097 lt!622717) (x!127683 lt!622713) (index!46097 lt!622713) (undefined!11741 lt!622713) mask!2840))))

(declare-fun b!1412987 () Bool)

(assert (=> b!1412987 (= e!799661 (not e!799664))))

(declare-fun res!950083 () Bool)

(assert (=> b!1412987 (=> res!950083 e!799664)))

(assert (=> b!1412987 (= res!950083 (or (not (is-Intermediate!10929 lt!622717)) (undefined!11741 lt!622717)))))

(declare-fun e!799660 () Bool)

(assert (=> b!1412987 e!799660))

(declare-fun res!950085 () Bool)

(assert (=> b!1412987 (=> (not res!950085) (not e!799660))))

(assert (=> b!1412987 (= res!950085 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622714 () Unit!47782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47782)

(assert (=> b!1412987 (= lt!622714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412987 (= lt!622717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622715 (select (arr!46596 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412987 (= lt!622715 (toIndex!0 (select (arr!46596 a!2901) j!112) mask!2840))))

(declare-fun res!950088 () Bool)

(assert (=> start!121670 (=> (not res!950088) (not e!799661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121670 (= res!950088 (validMask!0 mask!2840))))

(assert (=> start!121670 e!799661))

(assert (=> start!121670 true))

(declare-fun array_inv!35541 (array!96526) Bool)

(assert (=> start!121670 (array_inv!35541 a!2901)))

(declare-fun b!1412988 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96526 (_ BitVec 32)) SeekEntryResult!10929)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96526 (_ BitVec 32)) SeekEntryResult!10929)

(assert (=> b!1412988 (= e!799659 (= (seekEntryOrOpen!0 lt!622712 lt!622711 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127683 lt!622713) (index!46097 lt!622713) (index!46097 lt!622713) (select (arr!46596 a!2901) j!112) lt!622711 mask!2840)))))

(declare-fun b!1412989 () Bool)

(assert (=> b!1412989 (= e!799660 (= (seekEntryOrOpen!0 (select (arr!46596 a!2901) j!112) a!2901 mask!2840) (Found!10929 j!112)))))

(assert (= (and start!121670 res!950088) b!1412984))

(assert (= (and b!1412984 res!950082) b!1412985))

(assert (= (and b!1412985 res!950081) b!1412983))

(assert (= (and b!1412983 res!950080) b!1412980))

(assert (= (and b!1412980 res!950087) b!1412982))

(assert (= (and b!1412982 res!950086) b!1412987))

(assert (= (and b!1412987 res!950085) b!1412989))

(assert (= (and b!1412987 (not res!950083)) b!1412981))

(assert (= (and b!1412981 (not res!950079)) b!1412986))

(assert (= (and b!1412986 res!950084) b!1412988))

(declare-fun m!1303313 () Bool)

(assert (=> b!1412986 m!1303313))

(declare-fun m!1303315 () Bool)

(assert (=> b!1412986 m!1303315))

(declare-fun m!1303317 () Bool)

(assert (=> b!1412986 m!1303317))

(declare-fun m!1303319 () Bool)

(assert (=> b!1412981 m!1303319))

(assert (=> b!1412981 m!1303319))

(declare-fun m!1303321 () Bool)

(assert (=> b!1412981 m!1303321))

(assert (=> b!1412981 m!1303313))

(declare-fun m!1303323 () Bool)

(assert (=> b!1412981 m!1303323))

(declare-fun m!1303325 () Bool)

(assert (=> b!1412983 m!1303325))

(assert (=> b!1412983 m!1303325))

(declare-fun m!1303327 () Bool)

(assert (=> b!1412983 m!1303327))

(declare-fun m!1303329 () Bool)

(assert (=> b!1412980 m!1303329))

(assert (=> b!1412987 m!1303325))

(declare-fun m!1303331 () Bool)

(assert (=> b!1412987 m!1303331))

(assert (=> b!1412987 m!1303325))

(assert (=> b!1412987 m!1303325))

(declare-fun m!1303333 () Bool)

(assert (=> b!1412987 m!1303333))

(declare-fun m!1303335 () Bool)

(assert (=> b!1412987 m!1303335))

(declare-fun m!1303337 () Bool)

(assert (=> b!1412987 m!1303337))

(declare-fun m!1303339 () Bool)

(assert (=> start!121670 m!1303339))

(declare-fun m!1303341 () Bool)

(assert (=> start!121670 m!1303341))

(declare-fun m!1303343 () Bool)

(assert (=> b!1412982 m!1303343))

(assert (=> b!1412989 m!1303325))

(assert (=> b!1412989 m!1303325))

(declare-fun m!1303345 () Bool)

(assert (=> b!1412989 m!1303345))

(declare-fun m!1303347 () Bool)

(assert (=> b!1412988 m!1303347))

(assert (=> b!1412988 m!1303325))

(assert (=> b!1412988 m!1303325))

(declare-fun m!1303349 () Bool)

(assert (=> b!1412988 m!1303349))

(declare-fun m!1303351 () Bool)

(assert (=> b!1412985 m!1303351))

(assert (=> b!1412985 m!1303351))

(declare-fun m!1303353 () Bool)

(assert (=> b!1412985 m!1303353))

(push 1)

