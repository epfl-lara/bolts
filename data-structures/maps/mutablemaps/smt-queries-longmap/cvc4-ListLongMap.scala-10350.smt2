; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121694 () Bool)

(assert start!121694)

(declare-fun b!1413340 () Bool)

(declare-fun e!799877 () Bool)

(declare-fun e!799880 () Bool)

(assert (=> b!1413340 (= e!799877 (not e!799880))))

(declare-fun res!950439 () Bool)

(assert (=> b!1413340 (=> res!950439 e!799880)))

(declare-datatypes ((SeekEntryResult!10941 0))(
  ( (MissingZero!10941 (index!46143 (_ BitVec 32))) (Found!10941 (index!46144 (_ BitVec 32))) (Intermediate!10941 (undefined!11753 Bool) (index!46145 (_ BitVec 32)) (x!127727 (_ BitVec 32))) (Undefined!10941) (MissingVacant!10941 (index!46146 (_ BitVec 32))) )
))
(declare-fun lt!622969 () SeekEntryResult!10941)

(assert (=> b!1413340 (= res!950439 (or (not (is-Intermediate!10941 lt!622969)) (undefined!11753 lt!622969)))))

(declare-fun e!799875 () Bool)

(assert (=> b!1413340 e!799875))

(declare-fun res!950440 () Bool)

(assert (=> b!1413340 (=> (not res!950440) (not e!799875))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96550 0))(
  ( (array!96551 (arr!46608 (Array (_ BitVec 32) (_ BitVec 64))) (size!47159 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96550)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96550 (_ BitVec 32)) Bool)

(assert (=> b!1413340 (= res!950440 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47806 0))(
  ( (Unit!47807) )
))
(declare-fun lt!622963 () Unit!47806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47806)

(assert (=> b!1413340 (= lt!622963 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622964 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96550 (_ BitVec 32)) SeekEntryResult!10941)

(assert (=> b!1413340 (= lt!622969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622964 (select (arr!46608 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413340 (= lt!622964 (toIndex!0 (select (arr!46608 a!2901) j!112) mask!2840))))

(declare-fun b!1413341 () Bool)

(declare-fun e!799879 () Bool)

(assert (=> b!1413341 (= e!799880 e!799879)))

(declare-fun res!950446 () Bool)

(assert (=> b!1413341 (=> res!950446 e!799879)))

(declare-fun lt!622966 () SeekEntryResult!10941)

(assert (=> b!1413341 (= res!950446 (or (= lt!622969 lt!622966) (not (is-Intermediate!10941 lt!622966))))))

(declare-fun lt!622968 () array!96550)

(declare-fun lt!622967 () (_ BitVec 64))

(assert (=> b!1413341 (= lt!622966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622967 mask!2840) lt!622967 lt!622968 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413341 (= lt!622967 (select (store (arr!46608 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413341 (= lt!622968 (array!96551 (store (arr!46608 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47159 a!2901)))))

(declare-fun b!1413342 () Bool)

(declare-fun res!950441 () Bool)

(assert (=> b!1413342 (=> (not res!950441) (not e!799877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413342 (= res!950441 (validKeyInArray!0 (select (arr!46608 a!2901) j!112)))))

(declare-fun b!1413343 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96550 (_ BitVec 32)) SeekEntryResult!10941)

(assert (=> b!1413343 (= e!799875 (= (seekEntryOrOpen!0 (select (arr!46608 a!2901) j!112) a!2901 mask!2840) (Found!10941 j!112)))))

(declare-fun b!1413344 () Bool)

(declare-fun res!950443 () Bool)

(assert (=> b!1413344 (=> (not res!950443) (not e!799877))))

(assert (=> b!1413344 (= res!950443 (validKeyInArray!0 (select (arr!46608 a!2901) i!1037)))))

(declare-fun b!1413345 () Bool)

(declare-fun res!950447 () Bool)

(assert (=> b!1413345 (=> (not res!950447) (not e!799877))))

(assert (=> b!1413345 (= res!950447 (and (= (size!47159 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47159 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47159 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413346 () Bool)

(assert (=> b!1413346 (= e!799879 true)))

(declare-fun e!799876 () Bool)

(assert (=> b!1413346 e!799876))

(declare-fun res!950448 () Bool)

(assert (=> b!1413346 (=> (not res!950448) (not e!799876))))

(assert (=> b!1413346 (= res!950448 (and (not (undefined!11753 lt!622966)) (= (index!46145 lt!622966) i!1037) (bvslt (x!127727 lt!622966) (x!127727 lt!622969)) (= (select (store (arr!46608 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46145 lt!622966)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622965 () Unit!47806)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47806)

(assert (=> b!1413346 (= lt!622965 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622964 (x!127727 lt!622969) (index!46145 lt!622969) (x!127727 lt!622966) (index!46145 lt!622966) (undefined!11753 lt!622966) mask!2840))))

(declare-fun b!1413347 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96550 (_ BitVec 32)) SeekEntryResult!10941)

(assert (=> b!1413347 (= e!799876 (= (seekEntryOrOpen!0 lt!622967 lt!622968 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127727 lt!622966) (index!46145 lt!622966) (index!46145 lt!622966) (select (arr!46608 a!2901) j!112) lt!622968 mask!2840)))))

(declare-fun b!1413348 () Bool)

(declare-fun res!950442 () Bool)

(assert (=> b!1413348 (=> (not res!950442) (not e!799877))))

(declare-datatypes ((List!33307 0))(
  ( (Nil!33304) (Cons!33303 (h!34578 (_ BitVec 64)) (t!48008 List!33307)) )
))
(declare-fun arrayNoDuplicates!0 (array!96550 (_ BitVec 32) List!33307) Bool)

(assert (=> b!1413348 (= res!950442 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33304))))

(declare-fun res!950445 () Bool)

(assert (=> start!121694 (=> (not res!950445) (not e!799877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121694 (= res!950445 (validMask!0 mask!2840))))

(assert (=> start!121694 e!799877))

(assert (=> start!121694 true))

(declare-fun array_inv!35553 (array!96550) Bool)

(assert (=> start!121694 (array_inv!35553 a!2901)))

(declare-fun b!1413349 () Bool)

(declare-fun res!950444 () Bool)

(assert (=> b!1413349 (=> (not res!950444) (not e!799877))))

(assert (=> b!1413349 (= res!950444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121694 res!950445) b!1413345))

(assert (= (and b!1413345 res!950447) b!1413344))

(assert (= (and b!1413344 res!950443) b!1413342))

(assert (= (and b!1413342 res!950441) b!1413349))

(assert (= (and b!1413349 res!950444) b!1413348))

(assert (= (and b!1413348 res!950442) b!1413340))

(assert (= (and b!1413340 res!950440) b!1413343))

(assert (= (and b!1413340 (not res!950439)) b!1413341))

(assert (= (and b!1413341 (not res!950446)) b!1413346))

(assert (= (and b!1413346 res!950448) b!1413347))

(declare-fun m!1303817 () Bool)

(assert (=> b!1413346 m!1303817))

(declare-fun m!1303819 () Bool)

(assert (=> b!1413346 m!1303819))

(declare-fun m!1303821 () Bool)

(assert (=> b!1413346 m!1303821))

(declare-fun m!1303823 () Bool)

(assert (=> b!1413344 m!1303823))

(assert (=> b!1413344 m!1303823))

(declare-fun m!1303825 () Bool)

(assert (=> b!1413344 m!1303825))

(declare-fun m!1303827 () Bool)

(assert (=> b!1413340 m!1303827))

(declare-fun m!1303829 () Bool)

(assert (=> b!1413340 m!1303829))

(declare-fun m!1303831 () Bool)

(assert (=> b!1413340 m!1303831))

(declare-fun m!1303833 () Bool)

(assert (=> b!1413340 m!1303833))

(assert (=> b!1413340 m!1303827))

(assert (=> b!1413340 m!1303827))

(declare-fun m!1303835 () Bool)

(assert (=> b!1413340 m!1303835))

(declare-fun m!1303837 () Bool)

(assert (=> b!1413349 m!1303837))

(declare-fun m!1303839 () Bool)

(assert (=> b!1413348 m!1303839))

(assert (=> b!1413342 m!1303827))

(assert (=> b!1413342 m!1303827))

(declare-fun m!1303841 () Bool)

(assert (=> b!1413342 m!1303841))

(declare-fun m!1303843 () Bool)

(assert (=> b!1413347 m!1303843))

(assert (=> b!1413347 m!1303827))

(assert (=> b!1413347 m!1303827))

(declare-fun m!1303845 () Bool)

(assert (=> b!1413347 m!1303845))

(declare-fun m!1303847 () Bool)

(assert (=> start!121694 m!1303847))

(declare-fun m!1303849 () Bool)

(assert (=> start!121694 m!1303849))

(declare-fun m!1303851 () Bool)

(assert (=> b!1413341 m!1303851))

(assert (=> b!1413341 m!1303851))

(declare-fun m!1303853 () Bool)

(assert (=> b!1413341 m!1303853))

(assert (=> b!1413341 m!1303817))

(declare-fun m!1303855 () Bool)

(assert (=> b!1413341 m!1303855))

(assert (=> b!1413343 m!1303827))

(assert (=> b!1413343 m!1303827))

(declare-fun m!1303857 () Bool)

(assert (=> b!1413343 m!1303857))

(push 1)

