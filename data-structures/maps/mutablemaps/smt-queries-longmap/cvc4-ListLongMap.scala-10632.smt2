; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124976 () Bool)

(assert start!124976)

(declare-fun b!1451763 () Bool)

(declare-fun res!983072 () Bool)

(declare-fun e!817378 () Bool)

(assert (=> b!1451763 (=> (not res!983072) (not e!817378))))

(declare-fun e!817374 () Bool)

(assert (=> b!1451763 (= res!983072 e!817374)))

(declare-fun c!133865 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1451763 (= c!133865 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451764 () Bool)

(assert (=> b!1451764 (= e!817378 (not true))))

(declare-fun e!817379 () Bool)

(assert (=> b!1451764 e!817379))

(declare-fun res!983068 () Bool)

(assert (=> b!1451764 (=> (not res!983068) (not e!817379))))

(declare-datatypes ((array!98341 0))(
  ( (array!98342 (arr!47454 (Array (_ BitVec 32) (_ BitVec 64))) (size!48005 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98341)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98341 (_ BitVec 32)) Bool)

(assert (=> b!1451764 (= res!983068 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48902 0))(
  ( (Unit!48903) )
))
(declare-fun lt!636712 () Unit!48902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48902)

(assert (=> b!1451764 (= lt!636712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!983061 () Bool)

(declare-fun e!817373 () Bool)

(assert (=> start!124976 (=> (not res!983061) (not e!817373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124976 (= res!983061 (validMask!0 mask!2687))))

(assert (=> start!124976 e!817373))

(assert (=> start!124976 true))

(declare-fun array_inv!36399 (array!98341) Bool)

(assert (=> start!124976 (array_inv!36399 a!2862)))

(declare-fun b!1451765 () Bool)

(declare-fun res!983062 () Bool)

(declare-fun e!817375 () Bool)

(assert (=> b!1451765 (=> (not res!983062) (not e!817375))))

(declare-datatypes ((SeekEntryResult!11729 0))(
  ( (MissingZero!11729 (index!49307 (_ BitVec 32))) (Found!11729 (index!49308 (_ BitVec 32))) (Intermediate!11729 (undefined!12541 Bool) (index!49309 (_ BitVec 32)) (x!130957 (_ BitVec 32))) (Undefined!11729) (MissingVacant!11729 (index!49310 (_ BitVec 32))) )
))
(declare-fun lt!636711 () SeekEntryResult!11729)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98341 (_ BitVec 32)) SeekEntryResult!11729)

(assert (=> b!1451765 (= res!983062 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47454 a!2862) j!93) a!2862 mask!2687) lt!636711))))

(declare-fun b!1451766 () Bool)

(declare-fun res!983065 () Bool)

(assert (=> b!1451766 (=> (not res!983065) (not e!817373))))

(assert (=> b!1451766 (= res!983065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451767 () Bool)

(declare-fun res!983066 () Bool)

(assert (=> b!1451767 (=> (not res!983066) (not e!817373))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451767 (= res!983066 (and (= (size!48005 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48005 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48005 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451768 () Bool)

(declare-fun e!817376 () Bool)

(assert (=> b!1451768 (= e!817376 e!817375)))

(declare-fun res!983067 () Bool)

(assert (=> b!1451768 (=> (not res!983067) (not e!817375))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451768 (= res!983067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47454 a!2862) j!93) mask!2687) (select (arr!47454 a!2862) j!93) a!2862 mask!2687) lt!636711))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451768 (= lt!636711 (Intermediate!11729 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451769 () Bool)

(assert (=> b!1451769 (= e!817375 e!817378)))

(declare-fun res!983073 () Bool)

(assert (=> b!1451769 (=> (not res!983073) (not e!817378))))

(declare-fun lt!636710 () SeekEntryResult!11729)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451769 (= res!983073 (= lt!636710 (Intermediate!11729 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636708 () array!98341)

(declare-fun lt!636709 () (_ BitVec 64))

(assert (=> b!1451769 (= lt!636710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636709 mask!2687) lt!636709 lt!636708 mask!2687))))

(assert (=> b!1451769 (= lt!636709 (select (store (arr!47454 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451770 () Bool)

(declare-fun res!983071 () Bool)

(assert (=> b!1451770 (=> (not res!983071) (not e!817373))))

(assert (=> b!1451770 (= res!983071 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48005 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48005 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48005 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451771 () Bool)

(assert (=> b!1451771 (= e!817374 (= lt!636710 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636709 lt!636708 mask!2687)))))

(declare-fun b!1451772 () Bool)

(declare-fun res!983064 () Bool)

(assert (=> b!1451772 (=> (not res!983064) (not e!817379))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98341 (_ BitVec 32)) SeekEntryResult!11729)

(assert (=> b!1451772 (= res!983064 (= (seekEntryOrOpen!0 (select (arr!47454 a!2862) j!93) a!2862 mask!2687) (Found!11729 j!93)))))

(declare-fun b!1451773 () Bool)

(assert (=> b!1451773 (= e!817379 (and (or (= (select (arr!47454 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47454 a!2862) intermediateBeforeIndex!19) (select (arr!47454 a!2862) j!93))) (or (and (= (select (arr!47454 a!2862) index!646) (select (store (arr!47454 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47454 a!2862) index!646) (select (arr!47454 a!2862) j!93))) (= (select (arr!47454 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47454 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451774 () Bool)

(declare-fun res!983069 () Bool)

(assert (=> b!1451774 (=> (not res!983069) (not e!817373))))

(declare-datatypes ((List!34135 0))(
  ( (Nil!34132) (Cons!34131 (h!35481 (_ BitVec 64)) (t!48836 List!34135)) )
))
(declare-fun arrayNoDuplicates!0 (array!98341 (_ BitVec 32) List!34135) Bool)

(assert (=> b!1451774 (= res!983069 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34132))))

(declare-fun b!1451775 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98341 (_ BitVec 32)) SeekEntryResult!11729)

(assert (=> b!1451775 (= e!817374 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636709 lt!636708 mask!2687) (seekEntryOrOpen!0 lt!636709 lt!636708 mask!2687)))))

(declare-fun b!1451776 () Bool)

(declare-fun res!983070 () Bool)

(assert (=> b!1451776 (=> (not res!983070) (not e!817378))))

(assert (=> b!1451776 (= res!983070 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451777 () Bool)

(declare-fun res!983060 () Bool)

(assert (=> b!1451777 (=> (not res!983060) (not e!817373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451777 (= res!983060 (validKeyInArray!0 (select (arr!47454 a!2862) j!93)))))

(declare-fun b!1451778 () Bool)

(declare-fun res!983059 () Bool)

(assert (=> b!1451778 (=> (not res!983059) (not e!817373))))

(assert (=> b!1451778 (= res!983059 (validKeyInArray!0 (select (arr!47454 a!2862) i!1006)))))

(declare-fun b!1451779 () Bool)

(assert (=> b!1451779 (= e!817373 e!817376)))

(declare-fun res!983063 () Bool)

(assert (=> b!1451779 (=> (not res!983063) (not e!817376))))

(assert (=> b!1451779 (= res!983063 (= (select (store (arr!47454 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451779 (= lt!636708 (array!98342 (store (arr!47454 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48005 a!2862)))))

(assert (= (and start!124976 res!983061) b!1451767))

(assert (= (and b!1451767 res!983066) b!1451778))

(assert (= (and b!1451778 res!983059) b!1451777))

(assert (= (and b!1451777 res!983060) b!1451766))

(assert (= (and b!1451766 res!983065) b!1451774))

(assert (= (and b!1451774 res!983069) b!1451770))

(assert (= (and b!1451770 res!983071) b!1451779))

(assert (= (and b!1451779 res!983063) b!1451768))

(assert (= (and b!1451768 res!983067) b!1451765))

(assert (= (and b!1451765 res!983062) b!1451769))

(assert (= (and b!1451769 res!983073) b!1451763))

(assert (= (and b!1451763 c!133865) b!1451771))

(assert (= (and b!1451763 (not c!133865)) b!1451775))

(assert (= (and b!1451763 res!983072) b!1451776))

(assert (= (and b!1451776 res!983070) b!1451764))

(assert (= (and b!1451764 res!983068) b!1451772))

(assert (= (and b!1451772 res!983064) b!1451773))

(declare-fun m!1340407 () Bool)

(assert (=> b!1451766 m!1340407))

(declare-fun m!1340409 () Bool)

(assert (=> b!1451769 m!1340409))

(assert (=> b!1451769 m!1340409))

(declare-fun m!1340411 () Bool)

(assert (=> b!1451769 m!1340411))

(declare-fun m!1340413 () Bool)

(assert (=> b!1451769 m!1340413))

(declare-fun m!1340415 () Bool)

(assert (=> b!1451769 m!1340415))

(declare-fun m!1340417 () Bool)

(assert (=> b!1451775 m!1340417))

(declare-fun m!1340419 () Bool)

(assert (=> b!1451775 m!1340419))

(declare-fun m!1340421 () Bool)

(assert (=> start!124976 m!1340421))

(declare-fun m!1340423 () Bool)

(assert (=> start!124976 m!1340423))

(declare-fun m!1340425 () Bool)

(assert (=> b!1451768 m!1340425))

(assert (=> b!1451768 m!1340425))

(declare-fun m!1340427 () Bool)

(assert (=> b!1451768 m!1340427))

(assert (=> b!1451768 m!1340427))

(assert (=> b!1451768 m!1340425))

(declare-fun m!1340429 () Bool)

(assert (=> b!1451768 m!1340429))

(assert (=> b!1451779 m!1340413))

(declare-fun m!1340431 () Bool)

(assert (=> b!1451779 m!1340431))

(declare-fun m!1340433 () Bool)

(assert (=> b!1451771 m!1340433))

(declare-fun m!1340435 () Bool)

(assert (=> b!1451778 m!1340435))

(assert (=> b!1451778 m!1340435))

(declare-fun m!1340437 () Bool)

(assert (=> b!1451778 m!1340437))

(assert (=> b!1451765 m!1340425))

(assert (=> b!1451765 m!1340425))

(declare-fun m!1340439 () Bool)

(assert (=> b!1451765 m!1340439))

(declare-fun m!1340441 () Bool)

(assert (=> b!1451764 m!1340441))

(declare-fun m!1340443 () Bool)

(assert (=> b!1451764 m!1340443))

(assert (=> b!1451777 m!1340425))

(assert (=> b!1451777 m!1340425))

(declare-fun m!1340445 () Bool)

(assert (=> b!1451777 m!1340445))

(declare-fun m!1340447 () Bool)

(assert (=> b!1451774 m!1340447))

(assert (=> b!1451773 m!1340413))

(declare-fun m!1340449 () Bool)

(assert (=> b!1451773 m!1340449))

(declare-fun m!1340451 () Bool)

(assert (=> b!1451773 m!1340451))

(declare-fun m!1340453 () Bool)

(assert (=> b!1451773 m!1340453))

(assert (=> b!1451773 m!1340425))

(assert (=> b!1451772 m!1340425))

(assert (=> b!1451772 m!1340425))

(declare-fun m!1340455 () Bool)

(assert (=> b!1451772 m!1340455))

(push 1)

