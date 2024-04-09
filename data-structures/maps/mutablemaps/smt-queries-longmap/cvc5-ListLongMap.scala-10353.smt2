; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121840 () Bool)

(assert start!121840)

(declare-fun b!1414204 () Bool)

(declare-fun res!950832 () Bool)

(declare-fun e!800396 () Bool)

(assert (=> b!1414204 (=> (not res!950832) (not e!800396))))

(declare-datatypes ((array!96570 0))(
  ( (array!96571 (arr!46615 (Array (_ BitVec 32) (_ BitVec 64))) (size!47166 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96570)

(declare-datatypes ((List!33314 0))(
  ( (Nil!33311) (Cons!33310 (h!34591 (_ BitVec 64)) (t!48015 List!33314)) )
))
(declare-fun arrayNoDuplicates!0 (array!96570 (_ BitVec 32) List!33314) Bool)

(assert (=> b!1414204 (= res!950832 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33311))))

(declare-fun b!1414205 () Bool)

(declare-fun res!950831 () Bool)

(assert (=> b!1414205 (=> (not res!950831) (not e!800396))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414205 (= res!950831 (validKeyInArray!0 (select (arr!46615 a!2901) j!112)))))

(declare-fun b!1414207 () Bool)

(declare-fun res!950837 () Bool)

(assert (=> b!1414207 (=> (not res!950837) (not e!800396))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1414207 (= res!950837 (and (= (size!47166 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47166 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47166 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1414208 () Bool)

(declare-datatypes ((SeekEntryResult!10948 0))(
  ( (MissingZero!10948 (index!46177 (_ BitVec 32))) (Found!10948 (index!46178 (_ BitVec 32))) (Intermediate!10948 (undefined!11760 Bool) (index!46179 (_ BitVec 32)) (x!127782 (_ BitVec 32))) (Undefined!10948) (MissingVacant!10948 (index!46180 (_ BitVec 32))) )
))
(declare-fun lt!623427 () SeekEntryResult!10948)

(declare-fun e!800393 () Bool)

(declare-fun lt!623428 () SeekEntryResult!10948)

(declare-fun lt!623425 () (_ BitVec 32))

(assert (=> b!1414208 (= e!800393 (or (bvslt (x!127782 lt!623427) #b00000000000000000000000000000000) (bvsgt (x!127782 lt!623427) #b01111111111111111111111111111110) (bvslt (x!127782 lt!623428) #b00000000000000000000000000000000) (bvsgt (x!127782 lt!623428) #b01111111111111111111111111111110) (and (bvsge lt!623425 #b00000000000000000000000000000000) (bvslt lt!623425 (size!47166 a!2901)))))))

(declare-fun e!800391 () Bool)

(assert (=> b!1414208 e!800391))

(declare-fun res!950834 () Bool)

(assert (=> b!1414208 (=> (not res!950834) (not e!800391))))

(assert (=> b!1414208 (= res!950834 (and (not (undefined!11760 lt!623428)) (= (index!46179 lt!623428) i!1037) (bvslt (x!127782 lt!623428) (x!127782 lt!623427)) (= (select (store (arr!46615 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46179 lt!623428)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47820 0))(
  ( (Unit!47821) )
))
(declare-fun lt!623426 () Unit!47820)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47820)

(assert (=> b!1414208 (= lt!623426 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623425 (x!127782 lt!623427) (index!46179 lt!623427) (x!127782 lt!623428) (index!46179 lt!623428) (undefined!11760 lt!623428) mask!2840))))

(declare-fun lt!623424 () (_ BitVec 64))

(declare-fun b!1414209 () Bool)

(declare-fun lt!623423 () array!96570)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96570 (_ BitVec 32)) SeekEntryResult!10948)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96570 (_ BitVec 32)) SeekEntryResult!10948)

(assert (=> b!1414209 (= e!800391 (= (seekEntryOrOpen!0 lt!623424 lt!623423 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127782 lt!623428) (index!46179 lt!623428) (index!46179 lt!623428) (select (arr!46615 a!2901) j!112) lt!623423 mask!2840)))))

(declare-fun b!1414210 () Bool)

(declare-fun res!950838 () Bool)

(assert (=> b!1414210 (=> (not res!950838) (not e!800396))))

(assert (=> b!1414210 (= res!950838 (validKeyInArray!0 (select (arr!46615 a!2901) i!1037)))))

(declare-fun b!1414211 () Bool)

(declare-fun e!800394 () Bool)

(assert (=> b!1414211 (= e!800394 e!800393)))

(declare-fun res!950829 () Bool)

(assert (=> b!1414211 (=> res!950829 e!800393)))

(assert (=> b!1414211 (= res!950829 (or (= lt!623427 lt!623428) (not (is-Intermediate!10948 lt!623428))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96570 (_ BitVec 32)) SeekEntryResult!10948)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414211 (= lt!623428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623424 mask!2840) lt!623424 lt!623423 mask!2840))))

(assert (=> b!1414211 (= lt!623424 (select (store (arr!46615 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414211 (= lt!623423 (array!96571 (store (arr!46615 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47166 a!2901)))))

(declare-fun b!1414206 () Bool)

(assert (=> b!1414206 (= e!800396 (not e!800394))))

(declare-fun res!950830 () Bool)

(assert (=> b!1414206 (=> res!950830 e!800394)))

(assert (=> b!1414206 (= res!950830 (or (not (is-Intermediate!10948 lt!623427)) (undefined!11760 lt!623427)))))

(declare-fun e!800392 () Bool)

(assert (=> b!1414206 e!800392))

(declare-fun res!950833 () Bool)

(assert (=> b!1414206 (=> (not res!950833) (not e!800392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96570 (_ BitVec 32)) Bool)

(assert (=> b!1414206 (= res!950833 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623422 () Unit!47820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47820)

(assert (=> b!1414206 (= lt!623422 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1414206 (= lt!623427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623425 (select (arr!46615 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1414206 (= lt!623425 (toIndex!0 (select (arr!46615 a!2901) j!112) mask!2840))))

(declare-fun res!950836 () Bool)

(assert (=> start!121840 (=> (not res!950836) (not e!800396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121840 (= res!950836 (validMask!0 mask!2840))))

(assert (=> start!121840 e!800396))

(assert (=> start!121840 true))

(declare-fun array_inv!35560 (array!96570) Bool)

(assert (=> start!121840 (array_inv!35560 a!2901)))

(declare-fun b!1414212 () Bool)

(assert (=> b!1414212 (= e!800392 (= (seekEntryOrOpen!0 (select (arr!46615 a!2901) j!112) a!2901 mask!2840) (Found!10948 j!112)))))

(declare-fun b!1414213 () Bool)

(declare-fun res!950835 () Bool)

(assert (=> b!1414213 (=> (not res!950835) (not e!800396))))

(assert (=> b!1414213 (= res!950835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121840 res!950836) b!1414207))

(assert (= (and b!1414207 res!950837) b!1414210))

(assert (= (and b!1414210 res!950838) b!1414205))

(assert (= (and b!1414205 res!950831) b!1414213))

(assert (= (and b!1414213 res!950835) b!1414204))

(assert (= (and b!1414204 res!950832) b!1414206))

(assert (= (and b!1414206 res!950833) b!1414212))

(assert (= (and b!1414206 (not res!950830)) b!1414211))

(assert (= (and b!1414211 (not res!950829)) b!1414208))

(assert (= (and b!1414208 res!950834) b!1414209))

(declare-fun m!1304555 () Bool)

(assert (=> b!1414209 m!1304555))

(declare-fun m!1304557 () Bool)

(assert (=> b!1414209 m!1304557))

(assert (=> b!1414209 m!1304557))

(declare-fun m!1304559 () Bool)

(assert (=> b!1414209 m!1304559))

(assert (=> b!1414212 m!1304557))

(assert (=> b!1414212 m!1304557))

(declare-fun m!1304561 () Bool)

(assert (=> b!1414212 m!1304561))

(declare-fun m!1304563 () Bool)

(assert (=> b!1414208 m!1304563))

(declare-fun m!1304565 () Bool)

(assert (=> b!1414208 m!1304565))

(declare-fun m!1304567 () Bool)

(assert (=> b!1414208 m!1304567))

(declare-fun m!1304569 () Bool)

(assert (=> b!1414204 m!1304569))

(assert (=> b!1414206 m!1304557))

(declare-fun m!1304571 () Bool)

(assert (=> b!1414206 m!1304571))

(assert (=> b!1414206 m!1304557))

(declare-fun m!1304573 () Bool)

(assert (=> b!1414206 m!1304573))

(assert (=> b!1414206 m!1304557))

(declare-fun m!1304575 () Bool)

(assert (=> b!1414206 m!1304575))

(declare-fun m!1304577 () Bool)

(assert (=> b!1414206 m!1304577))

(assert (=> b!1414205 m!1304557))

(assert (=> b!1414205 m!1304557))

(declare-fun m!1304579 () Bool)

(assert (=> b!1414205 m!1304579))

(declare-fun m!1304581 () Bool)

(assert (=> b!1414211 m!1304581))

(assert (=> b!1414211 m!1304581))

(declare-fun m!1304583 () Bool)

(assert (=> b!1414211 m!1304583))

(assert (=> b!1414211 m!1304563))

(declare-fun m!1304585 () Bool)

(assert (=> b!1414211 m!1304585))

(declare-fun m!1304587 () Bool)

(assert (=> b!1414210 m!1304587))

(assert (=> b!1414210 m!1304587))

(declare-fun m!1304589 () Bool)

(assert (=> b!1414210 m!1304589))

(declare-fun m!1304591 () Bool)

(assert (=> b!1414213 m!1304591))

(declare-fun m!1304593 () Bool)

(assert (=> start!121840 m!1304593))

(declare-fun m!1304595 () Bool)

(assert (=> start!121840 m!1304595))

(push 1)

(assert (not b!1414211))

(assert (not b!1414208))

(assert (not b!1414205))

(assert (not b!1414212))

(assert (not b!1414210))

(assert (not b!1414206))

(assert (not b!1414209))

(assert (not b!1414204))

(assert (not b!1414213))

(assert (not start!121840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152253 () Bool)

(assert (=> d!152253 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121840 d!152253))

(declare-fun d!152257 () Bool)

(assert (=> d!152257 (= (array_inv!35560 a!2901) (bvsge (size!47166 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121840 d!152257))

(declare-fun d!152259 () Bool)

(assert (=> d!152259 (= (validKeyInArray!0 (select (arr!46615 a!2901) i!1037)) (and (not (= (select (arr!46615 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46615 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414210 d!152259))

(declare-fun d!152261 () Bool)

(assert (=> d!152261 (= (validKeyInArray!0 (select (arr!46615 a!2901) j!112)) (and (not (= (select (arr!46615 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46615 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414205 d!152261))

(declare-fun b!1414367 () Bool)

(declare-fun lt!623505 () SeekEntryResult!10948)

(assert (=> b!1414367 (and (bvsge (index!46179 lt!623505) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623505) (size!47166 lt!623423)))))

(declare-fun res!950923 () Bool)

(assert (=> b!1414367 (= res!950923 (= (select (arr!46615 lt!623423) (index!46179 lt!623505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800485 () Bool)

(assert (=> b!1414367 (=> res!950923 e!800485)))

(declare-fun b!1414368 () Bool)

(assert (=> b!1414368 (and (bvsge (index!46179 lt!623505) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623505) (size!47166 lt!623423)))))

(declare-fun res!950922 () Bool)

(assert (=> b!1414368 (= res!950922 (= (select (arr!46615 lt!623423) (index!46179 lt!623505)) lt!623424))))

(assert (=> b!1414368 (=> res!950922 e!800485)))

(declare-fun e!800489 () Bool)

(assert (=> b!1414368 (= e!800489 e!800485)))

(declare-fun b!1414369 () Bool)

(declare-fun e!800487 () SeekEntryResult!10948)

(declare-fun e!800486 () SeekEntryResult!10948)

(assert (=> b!1414369 (= e!800487 e!800486)))

(declare-fun c!131202 () Bool)

(declare-fun lt!623506 () (_ BitVec 64))

(assert (=> b!1414369 (= c!131202 (or (= lt!623506 lt!623424) (= (bvadd lt!623506 lt!623506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414370 () Bool)

(declare-fun e!800488 () Bool)

(assert (=> b!1414370 (= e!800488 (bvsge (x!127782 lt!623505) #b01111111111111111111111111111110))))

(declare-fun b!1414372 () Bool)

(assert (=> b!1414372 (= e!800488 e!800489)))

(declare-fun res!950921 () Bool)

(assert (=> b!1414372 (= res!950921 (and (is-Intermediate!10948 lt!623505) (not (undefined!11760 lt!623505)) (bvslt (x!127782 lt!623505) #b01111111111111111111111111111110) (bvsge (x!127782 lt!623505) #b00000000000000000000000000000000) (bvsge (x!127782 lt!623505) #b00000000000000000000000000000000)))))

(assert (=> b!1414372 (=> (not res!950921) (not e!800489))))

(declare-fun b!1414373 () Bool)

(assert (=> b!1414373 (and (bvsge (index!46179 lt!623505) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623505) (size!47166 lt!623423)))))

(assert (=> b!1414373 (= e!800485 (= (select (arr!46615 lt!623423) (index!46179 lt!623505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414374 () Bool)

(assert (=> b!1414374 (= e!800487 (Intermediate!10948 true (toIndex!0 lt!623424 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414375 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414375 (= e!800486 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623424 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623424 lt!623423 mask!2840))))

(declare-fun d!152263 () Bool)

(assert (=> d!152263 e!800488))

(declare-fun c!131203 () Bool)

(assert (=> d!152263 (= c!131203 (and (is-Intermediate!10948 lt!623505) (undefined!11760 lt!623505)))))

(assert (=> d!152263 (= lt!623505 e!800487)))

(declare-fun c!131204 () Bool)

(assert (=> d!152263 (= c!131204 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152263 (= lt!623506 (select (arr!46615 lt!623423) (toIndex!0 lt!623424 mask!2840)))))

(assert (=> d!152263 (validMask!0 mask!2840)))

(assert (=> d!152263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623424 mask!2840) lt!623424 lt!623423 mask!2840) lt!623505)))

(declare-fun b!1414371 () Bool)

(assert (=> b!1414371 (= e!800486 (Intermediate!10948 false (toIndex!0 lt!623424 mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!152263 c!131204) b!1414374))

(assert (= (and d!152263 (not c!131204)) b!1414369))

(assert (= (and b!1414369 c!131202) b!1414371))

(assert (= (and b!1414369 (not c!131202)) b!1414375))

(assert (= (and d!152263 c!131203) b!1414370))

(assert (= (and d!152263 (not c!131203)) b!1414372))

(assert (= (and b!1414372 res!950921) b!1414368))

(assert (= (and b!1414368 (not res!950922)) b!1414367))

(assert (= (and b!1414367 (not res!950923)) b!1414373))

(assert (=> d!152263 m!1304581))

(declare-fun m!1304721 () Bool)

(assert (=> d!152263 m!1304721))

(assert (=> d!152263 m!1304593))

(assert (=> b!1414375 m!1304581))

(declare-fun m!1304723 () Bool)

(assert (=> b!1414375 m!1304723))

(assert (=> b!1414375 m!1304723))

(declare-fun m!1304725 () Bool)

(assert (=> b!1414375 m!1304725))

(declare-fun m!1304727 () Bool)

(assert (=> b!1414367 m!1304727))

(assert (=> b!1414373 m!1304727))

(assert (=> b!1414368 m!1304727))

(assert (=> b!1414211 d!152263))

(declare-fun d!152275 () Bool)

(declare-fun lt!623521 () (_ BitVec 32))

(declare-fun lt!623520 () (_ BitVec 32))

(assert (=> d!152275 (= lt!623521 (bvmul (bvxor lt!623520 (bvlshr lt!623520 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152275 (= lt!623520 ((_ extract 31 0) (bvand (bvxor lt!623424 (bvlshr lt!623424 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152275 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950924 (let ((h!34595 ((_ extract 31 0) (bvand (bvxor lt!623424 (bvlshr lt!623424 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127789 (bvmul (bvxor h!34595 (bvlshr h!34595 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127789 (bvlshr x!127789 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950924 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950924 #b00000000000000000000000000000000))))))

(assert (=> d!152275 (= (toIndex!0 lt!623424 mask!2840) (bvand (bvxor lt!623521 (bvlshr lt!623521 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414211 d!152275))

(declare-fun b!1414418 () Bool)

(declare-fun e!800525 () Bool)

(declare-fun e!800524 () Bool)

(assert (=> b!1414418 (= e!800525 e!800524)))

(declare-fun c!131214 () Bool)

(assert (=> b!1414418 (= c!131214 (validKeyInArray!0 (select (arr!46615 a!2901) j!112)))))

(declare-fun b!1414419 () Bool)

(declare-fun call!67150 () Bool)

(assert (=> b!1414419 (= e!800524 call!67150)))

(declare-fun b!1414420 () Bool)

(declare-fun e!800523 () Bool)

(assert (=> b!1414420 (= e!800524 e!800523)))

(declare-fun lt!623531 () (_ BitVec 64))

(assert (=> b!1414420 (= lt!623531 (select (arr!46615 a!2901) j!112))))

(declare-fun lt!623532 () Unit!47820)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96570 (_ BitVec 64) (_ BitVec 32)) Unit!47820)

(assert (=> b!1414420 (= lt!623532 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623531 j!112))))

(declare-fun arrayContainsKey!0 (array!96570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414420 (arrayContainsKey!0 a!2901 lt!623531 #b00000000000000000000000000000000)))

(declare-fun lt!623533 () Unit!47820)

(assert (=> b!1414420 (= lt!623533 lt!623532)))

(declare-fun res!950950 () Bool)

(assert (=> b!1414420 (= res!950950 (= (seekEntryOrOpen!0 (select (arr!46615 a!2901) j!112) a!2901 mask!2840) (Found!10948 j!112)))))

(assert (=> b!1414420 (=> (not res!950950) (not e!800523))))

(declare-fun bm!67147 () Bool)

(assert (=> bm!67147 (= call!67150 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152285 () Bool)

(declare-fun res!950949 () Bool)

(assert (=> d!152285 (=> res!950949 e!800525)))

(assert (=> d!152285 (= res!950949 (bvsge j!112 (size!47166 a!2901)))))

(assert (=> d!152285 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800525)))

(declare-fun b!1414421 () Bool)

(assert (=> b!1414421 (= e!800523 call!67150)))

(assert (= (and d!152285 (not res!950949)) b!1414418))

(assert (= (and b!1414418 c!131214) b!1414420))

(assert (= (and b!1414418 (not c!131214)) b!1414419))

(assert (= (and b!1414420 res!950950) b!1414421))

(assert (= (or b!1414421 b!1414419) bm!67147))

(assert (=> b!1414418 m!1304557))

(assert (=> b!1414418 m!1304557))

(assert (=> b!1414418 m!1304579))

(assert (=> b!1414420 m!1304557))

(declare-fun m!1304749 () Bool)

(assert (=> b!1414420 m!1304749))

(declare-fun m!1304751 () Bool)

(assert (=> b!1414420 m!1304751))

(assert (=> b!1414420 m!1304557))

(assert (=> b!1414420 m!1304561))

(declare-fun m!1304753 () Bool)

(assert (=> bm!67147 m!1304753))

(assert (=> b!1414206 d!152285))

(declare-fun d!152293 () Bool)

(assert (=> d!152293 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623539 () Unit!47820)

(declare-fun choose!38 (array!96570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47820)

(assert (=> d!152293 (= lt!623539 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152293 (validMask!0 mask!2840)))

(assert (=> d!152293 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623539)))

(declare-fun bs!41230 () Bool)

(assert (= bs!41230 d!152293))

(assert (=> bs!41230 m!1304577))

(declare-fun m!1304757 () Bool)

(assert (=> bs!41230 m!1304757))

(assert (=> bs!41230 m!1304593))

(assert (=> b!1414206 d!152293))

(declare-fun b!1414422 () Bool)

(declare-fun lt!623540 () SeekEntryResult!10948)

(assert (=> b!1414422 (and (bvsge (index!46179 lt!623540) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623540) (size!47166 a!2901)))))

(declare-fun res!950953 () Bool)

(assert (=> b!1414422 (= res!950953 (= (select (arr!46615 a!2901) (index!46179 lt!623540)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800526 () Bool)

(assert (=> b!1414422 (=> res!950953 e!800526)))

(declare-fun b!1414423 () Bool)

(assert (=> b!1414423 (and (bvsge (index!46179 lt!623540) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623540) (size!47166 a!2901)))))

(declare-fun res!950952 () Bool)

(assert (=> b!1414423 (= res!950952 (= (select (arr!46615 a!2901) (index!46179 lt!623540)) (select (arr!46615 a!2901) j!112)))))

(assert (=> b!1414423 (=> res!950952 e!800526)))

(declare-fun e!800530 () Bool)

(assert (=> b!1414423 (= e!800530 e!800526)))

(declare-fun b!1414424 () Bool)

(declare-fun e!800528 () SeekEntryResult!10948)

(declare-fun e!800527 () SeekEntryResult!10948)

(assert (=> b!1414424 (= e!800528 e!800527)))

(declare-fun c!131215 () Bool)

(declare-fun lt!623541 () (_ BitVec 64))

(assert (=> b!1414424 (= c!131215 (or (= lt!623541 (select (arr!46615 a!2901) j!112)) (= (bvadd lt!623541 lt!623541) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414425 () Bool)

(declare-fun e!800529 () Bool)

(assert (=> b!1414425 (= e!800529 (bvsge (x!127782 lt!623540) #b01111111111111111111111111111110))))

(declare-fun b!1414427 () Bool)

(assert (=> b!1414427 (= e!800529 e!800530)))

(declare-fun res!950951 () Bool)

(assert (=> b!1414427 (= res!950951 (and (is-Intermediate!10948 lt!623540) (not (undefined!11760 lt!623540)) (bvslt (x!127782 lt!623540) #b01111111111111111111111111111110) (bvsge (x!127782 lt!623540) #b00000000000000000000000000000000) (bvsge (x!127782 lt!623540) #b00000000000000000000000000000000)))))

(assert (=> b!1414427 (=> (not res!950951) (not e!800530))))

(declare-fun b!1414428 () Bool)

(assert (=> b!1414428 (and (bvsge (index!46179 lt!623540) #b00000000000000000000000000000000) (bvslt (index!46179 lt!623540) (size!47166 a!2901)))))

(assert (=> b!1414428 (= e!800526 (= (select (arr!46615 a!2901) (index!46179 lt!623540)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414429 () Bool)

(assert (=> b!1414429 (= e!800528 (Intermediate!10948 true lt!623425 #b00000000000000000000000000000000))))

(declare-fun b!1414430 () Bool)

(assert (=> b!1414430 (= e!800527 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623425 #b00000000000000000000000000000000 mask!2840) (select (arr!46615 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152297 () Bool)

(assert (=> d!152297 e!800529))

(declare-fun c!131216 () Bool)

(assert (=> d!152297 (= c!131216 (and (is-Intermediate!10948 lt!623540) (undefined!11760 lt!623540)))))

(assert (=> d!152297 (= lt!623540 e!800528)))

(declare-fun c!131217 () Bool)

(assert (=> d!152297 (= c!131217 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152297 (= lt!623541 (select (arr!46615 a!2901) lt!623425))))

(assert (=> d!152297 (validMask!0 mask!2840)))

(assert (=> d!152297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623425 (select (arr!46615 a!2901) j!112) a!2901 mask!2840) lt!623540)))

(declare-fun b!1414426 () Bool)

(assert (=> b!1414426 (= e!800527 (Intermediate!10948 false lt!623425 #b00000000000000000000000000000000))))

(assert (= (and d!152297 c!131217) b!1414429))

(assert (= (and d!152297 (not c!131217)) b!1414424))

(assert (= (and b!1414424 c!131215) b!1414426))

(assert (= (and b!1414424 (not c!131215)) b!1414430))

(assert (= (and d!152297 c!131216) b!1414425))

(assert (= (and d!152297 (not c!131216)) b!1414427))

(assert (= (and b!1414427 res!950951) b!1414423))

(assert (= (and b!1414423 (not res!950952)) b!1414422))

(assert (= (and b!1414422 (not res!950953)) b!1414428))

(declare-fun m!1304759 () Bool)

(assert (=> d!152297 m!1304759))

(assert (=> d!152297 m!1304593))

(declare-fun m!1304761 () Bool)

(assert (=> b!1414430 m!1304761))

(assert (=> b!1414430 m!1304761))

(assert (=> b!1414430 m!1304557))

(declare-fun m!1304763 () Bool)

(assert (=> b!1414430 m!1304763))

(declare-fun m!1304765 () Bool)

(assert (=> b!1414422 m!1304765))

(assert (=> b!1414428 m!1304765))

(assert (=> b!1414423 m!1304765))

(assert (=> b!1414206 d!152297))

(declare-fun d!152299 () Bool)

(declare-fun lt!623543 () (_ BitVec 32))

(declare-fun lt!623542 () (_ BitVec 32))

(assert (=> d!152299 (= lt!623543 (bvmul (bvxor lt!623542 (bvlshr lt!623542 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152299 (= lt!623542 ((_ extract 31 0) (bvand (bvxor (select (arr!46615 a!2901) j!112) (bvlshr (select (arr!46615 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152299 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950924 (let ((h!34595 ((_ extract 31 0) (bvand (bvxor (select (arr!46615 a!2901) j!112) (bvlshr (select (arr!46615 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127789 (bvmul (bvxor h!34595 (bvlshr h!34595 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127789 (bvlshr x!127789 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950924 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950924 #b00000000000000000000000000000000))))))

(assert (=> d!152299 (= (toIndex!0 (select (arr!46615 a!2901) j!112) mask!2840) (bvand (bvxor lt!623543 (bvlshr lt!623543 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414206 d!152299))

(declare-fun b!1414488 () Bool)

(declare-fun e!800562 () SeekEntryResult!10948)

(assert (=> b!1414488 (= e!800562 Undefined!10948)))

(declare-fun b!1414489 () Bool)

(declare-fun e!800561 () SeekEntryResult!10948)

(assert (=> b!1414489 (= e!800562 e!800561)))

(declare-fun lt!623570 () (_ BitVec 64))

(declare-fun lt!623571 () SeekEntryResult!10948)

(assert (=> b!1414489 (= lt!623570 (select (arr!46615 a!2901) (index!46179 lt!623571)))))

(declare-fun c!131244 () Bool)

(assert (=> b!1414489 (= c!131244 (= lt!623570 (select (arr!46615 a!2901) j!112)))))

(declare-fun b!1414490 () Bool)

(declare-fun c!131243 () Bool)

(assert (=> b!1414490 (= c!131243 (= lt!623570 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800563 () SeekEntryResult!10948)

(assert (=> b!1414490 (= e!800561 e!800563)))

(declare-fun b!1414491 () Bool)

(assert (=> b!1414491 (= e!800563 (seekKeyOrZeroReturnVacant!0 (x!127782 lt!623571) (index!46179 lt!623571) (index!46179 lt!623571) (select (arr!46615 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414492 () Bool)

(assert (=> b!1414492 (= e!800563 (MissingZero!10948 (index!46179 lt!623571)))))

(declare-fun b!1414493 () Bool)

(assert (=> b!1414493 (= e!800561 (Found!10948 (index!46179 lt!623571)))))

(declare-fun d!152301 () Bool)

(declare-fun lt!623569 () SeekEntryResult!10948)

(assert (=> d!152301 (and (or (is-Undefined!10948 lt!623569) (not (is-Found!10948 lt!623569)) (and (bvsge (index!46178 lt!623569) #b00000000000000000000000000000000) (bvslt (index!46178 lt!623569) (size!47166 a!2901)))) (or (is-Undefined!10948 lt!623569) (is-Found!10948 lt!623569) (not (is-MissingZero!10948 lt!623569)) (and (bvsge (index!46177 lt!623569) #b00000000000000000000000000000000) (bvslt (index!46177 lt!623569) (size!47166 a!2901)))) (or (is-Undefined!10948 lt!623569) (is-Found!10948 lt!623569) (is-MissingZero!10948 lt!623569) (not (is-MissingVacant!10948 lt!623569)) (and (bvsge (index!46180 lt!623569) #b00000000000000000000000000000000) (bvslt (index!46180 lt!623569) (size!47166 a!2901)))) (or (is-Undefined!10948 lt!623569) (ite (is-Found!10948 lt!623569) (= (select (arr!46615 a!2901) (index!46178 lt!623569)) (select (arr!46615 a!2901) j!112)) (ite (is-MissingZero!10948 lt!623569) (= (select (arr!46615 a!2901) (index!46177 lt!623569)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10948 lt!623569) (= (select (arr!46615 a!2901) (index!46180 lt!623569)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152301 (= lt!623569 e!800562)))

(declare-fun c!131242 () Bool)

(assert (=> d!152301 (= c!131242 (and (is-Intermediate!10948 lt!623571) (undefined!11760 lt!623571)))))

(assert (=> d!152301 (= lt!623571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46615 a!2901) j!112) mask!2840) (select (arr!46615 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152301 (validMask!0 mask!2840)))

(assert (=> d!152301 (= (seekEntryOrOpen!0 (select (arr!46615 a!2901) j!112) a!2901 mask!2840) lt!623569)))

(assert (= (and d!152301 c!131242) b!1414488))

(assert (= (and d!152301 (not c!131242)) b!1414489))

(assert (= (and b!1414489 c!131244) b!1414493))

(assert (= (and b!1414489 (not c!131244)) b!1414490))

(assert (= (and b!1414490 c!131243) b!1414492))

(assert (= (and b!1414490 (not c!131243)) b!1414491))

(declare-fun m!1304787 () Bool)

(assert (=> b!1414489 m!1304787))

(assert (=> b!1414491 m!1304557))

(declare-fun m!1304789 () Bool)

(assert (=> b!1414491 m!1304789))

(declare-fun m!1304791 () Bool)

(assert (=> d!152301 m!1304791))

(declare-fun m!1304793 () Bool)

(assert (=> d!152301 m!1304793))

(assert (=> d!152301 m!1304593))

(assert (=> d!152301 m!1304571))

(assert (=> d!152301 m!1304557))

(declare-fun m!1304795 () Bool)

(assert (=> d!152301 m!1304795))

(declare-fun m!1304797 () Bool)

(assert (=> d!152301 m!1304797))

(assert (=> d!152301 m!1304557))

(assert (=> d!152301 m!1304571))

(assert (=> b!1414212 d!152301))

(declare-fun b!1414503 () Bool)

(declare-fun e!800571 () Bool)

(declare-fun e!800570 () Bool)

(assert (=> b!1414503 (= e!800571 e!800570)))

(declare-fun c!131248 () Bool)

(assert (=> b!1414503 (= c!131248 (validKeyInArray!0 (select (arr!46615 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414504 () Bool)

(declare-fun call!67151 () Bool)

(assert (=> b!1414504 (= e!800570 call!67151)))

(declare-fun b!1414505 () Bool)

(declare-fun e!800569 () Bool)

(assert (=> b!1414505 (= e!800570 e!800569)))

(declare-fun lt!623576 () (_ BitVec 64))

(assert (=> b!1414505 (= lt!623576 (select (arr!46615 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623577 () Unit!47820)

(assert (=> b!1414505 (= lt!623577 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623576 #b00000000000000000000000000000000))))

(assert (=> b!1414505 (arrayContainsKey!0 a!2901 lt!623576 #b00000000000000000000000000000000)))

(declare-fun lt!623578 () Unit!47820)

(assert (=> b!1414505 (= lt!623578 lt!623577)))

(declare-fun res!950968 () Bool)

(assert (=> b!1414505 (= res!950968 (= (seekEntryOrOpen!0 (select (arr!46615 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10948 #b00000000000000000000000000000000)))))

(assert (=> b!1414505 (=> (not res!950968) (not e!800569))))

(declare-fun bm!67148 () Bool)

(assert (=> bm!67148 (= call!67151 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152313 () Bool)

(declare-fun res!950967 () Bool)

(assert (=> d!152313 (=> res!950967 e!800571)))

(assert (=> d!152313 (= res!950967 (bvsge #b00000000000000000000000000000000 (size!47166 a!2901)))))

(assert (=> d!152313 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800571)))

(declare-fun b!1414506 () Bool)

(assert (=> b!1414506 (= e!800569 call!67151)))

(assert (= (and d!152313 (not res!950967)) b!1414503))

(assert (= (and b!1414503 c!131248) b!1414505))

(assert (= (and b!1414503 (not c!131248)) b!1414504))

(assert (= (and b!1414505 res!950968) b!1414506))

(assert (= (or b!1414506 b!1414504) bm!67148))

(declare-fun m!1304807 () Bool)

(assert (=> b!1414503 m!1304807))

(assert (=> b!1414503 m!1304807))

(declare-fun m!1304809 () Bool)

(assert (=> b!1414503 m!1304809))

(assert (=> b!1414505 m!1304807))

(declare-fun m!1304811 () Bool)

(assert (=> b!1414505 m!1304811))

(declare-fun m!1304813 () Bool)

(assert (=> b!1414505 m!1304813))

(assert (=> b!1414505 m!1304807))

(declare-fun m!1304815 () Bool)

(assert (=> b!1414505 m!1304815))

(declare-fun m!1304817 () Bool)

(assert (=> bm!67148 m!1304817))

(assert (=> b!1414213 d!152313))

(declare-fun d!152319 () Bool)

(assert (=> d!152319 (and (not (undefined!11760 lt!623428)) (= (index!46179 lt!623428) i!1037) (bvslt (x!127782 lt!623428) (x!127782 lt!623427)))))

(declare-fun lt!623586 () Unit!47820)

(declare-fun choose!62 (array!96570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47820)

(assert (=> d!152319 (= lt!623586 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623425 (x!127782 lt!623427) (index!46179 lt!623427) (x!127782 lt!623428) (index!46179 lt!623428) (undefined!11760 lt!623428) mask!2840))))

(assert (=> d!152319 (validMask!0 mask!2840)))

(assert (=> d!152319 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623425 (x!127782 lt!623427) (index!46179 lt!623427) (x!127782 lt!623428) (index!46179 lt!623428) (undefined!11760 lt!623428) mask!2840) lt!623586)))

(declare-fun bs!41231 () Bool)

(assert (= bs!41231 d!152319))

(declare-fun m!1304831 () Bool)

(assert (=> bs!41231 m!1304831))

(assert (=> bs!41231 m!1304593))

(assert (=> b!1414208 d!152319))

(declare-fun b!1414513 () Bool)

(declare-fun e!800576 () SeekEntryResult!10948)

(assert (=> b!1414513 (= e!800576 Undefined!10948)))

(declare-fun b!1414514 () Bool)

(declare-fun e!800575 () SeekEntryResult!10948)

(assert (=> b!1414514 (= e!800576 e!800575)))

(declare-fun lt!623588 () (_ BitVec 64))

(declare-fun lt!623589 () SeekEntryResult!10948)

(assert (=> b!1414514 (= lt!623588 (select (arr!46615 lt!623423) (index!46179 lt!623589)))))

(declare-fun c!131254 () Bool)

(assert (=> b!1414514 (= c!131254 (= lt!623588 lt!623424))))

(declare-fun b!1414515 () Bool)

(declare-fun c!131253 () Bool)

(assert (=> b!1414515 (= c!131253 (= lt!623588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800577 () SeekEntryResult!10948)

(assert (=> b!1414515 (= e!800575 e!800577)))

(declare-fun b!1414516 () Bool)

(assert (=> b!1414516 (= e!800577 (seekKeyOrZeroReturnVacant!0 (x!127782 lt!623589) (index!46179 lt!623589) (index!46179 lt!623589) lt!623424 lt!623423 mask!2840))))

(declare-fun b!1414517 () Bool)

(assert (=> b!1414517 (= e!800577 (MissingZero!10948 (index!46179 lt!623589)))))

(declare-fun b!1414518 () Bool)

(assert (=> b!1414518 (= e!800575 (Found!10948 (index!46179 lt!623589)))))

(declare-fun d!152323 () Bool)

(declare-fun lt!623587 () SeekEntryResult!10948)

(assert (=> d!152323 (and (or (is-Undefined!10948 lt!623587) (not (is-Found!10948 lt!623587)) (and (bvsge (index!46178 lt!623587) #b00000000000000000000000000000000) (bvslt (index!46178 lt!623587) (size!47166 lt!623423)))) (or (is-Undefined!10948 lt!623587) (is-Found!10948 lt!623587) (not (is-MissingZero!10948 lt!623587)) (and (bvsge (index!46177 lt!623587) #b00000000000000000000000000000000) (bvslt (index!46177 lt!623587) (size!47166 lt!623423)))) (or (is-Undefined!10948 lt!623587) (is-Found!10948 lt!623587) (is-MissingZero!10948 lt!623587) (not (is-MissingVacant!10948 lt!623587)) (and (bvsge (index!46180 lt!623587) #b00000000000000000000000000000000) (bvslt (index!46180 lt!623587) (size!47166 lt!623423)))) (or (is-Undefined!10948 lt!623587) (ite (is-Found!10948 lt!623587) (= (select (arr!46615 lt!623423) (index!46178 lt!623587)) lt!623424) (ite (is-MissingZero!10948 lt!623587) (= (select (arr!46615 lt!623423) (index!46177 lt!623587)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10948 lt!623587) (= (select (arr!46615 lt!623423) (index!46180 lt!623587)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152323 (= lt!623587 e!800576)))

(declare-fun c!131252 () Bool)

(assert (=> d!152323 (= c!131252 (and (is-Intermediate!10948 lt!623589) (undefined!11760 lt!623589)))))

(assert (=> d!152323 (= lt!623589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623424 mask!2840) lt!623424 lt!623423 mask!2840))))

(assert (=> d!152323 (validMask!0 mask!2840)))

(assert (=> d!152323 (= (seekEntryOrOpen!0 lt!623424 lt!623423 mask!2840) lt!623587)))

(assert (= (and d!152323 c!131252) b!1414513))

(assert (= (and d!152323 (not c!131252)) b!1414514))

(assert (= (and b!1414514 c!131254) b!1414518))

(assert (= (and b!1414514 (not c!131254)) b!1414515))

(assert (= (and b!1414515 c!131253) b!1414517))

(assert (= (and b!1414515 (not c!131253)) b!1414516))

(declare-fun m!1304833 () Bool)

(assert (=> b!1414514 m!1304833))

(declare-fun m!1304835 () Bool)

(assert (=> b!1414516 m!1304835))

(declare-fun m!1304837 () Bool)

(assert (=> d!152323 m!1304837))

(declare-fun m!1304839 () Bool)

(assert (=> d!152323 m!1304839))

(assert (=> d!152323 m!1304593))

(assert (=> d!152323 m!1304581))

(assert (=> d!152323 m!1304583))

(declare-fun m!1304841 () Bool)

(assert (=> d!152323 m!1304841))

(assert (=> d!152323 m!1304581))

(assert (=> b!1414209 d!152323))

(declare-fun b!1414558 () Bool)

(declare-fun e!800603 () SeekEntryResult!10948)

(assert (=> b!1414558 (= e!800603 Undefined!10948)))

(declare-fun b!1414559 () Bool)

(declare-fun e!800601 () SeekEntryResult!10948)

(assert (=> b!1414559 (= e!800603 e!800601)))

(declare-fun c!131271 () Bool)

(declare-fun lt!623617 () (_ BitVec 64))

(assert (=> b!1414559 (= c!131271 (= lt!623617 (select (arr!46615 a!2901) j!112)))))

(declare-fun lt!623616 () SeekEntryResult!10948)

(declare-fun d!152325 () Bool)

(assert (=> d!152325 (and (or (is-Undefined!10948 lt!623616) (not (is-Found!10948 lt!623616)) (and (bvsge (index!46178 lt!623616) #b00000000000000000000000000000000) (bvslt (index!46178 lt!623616) (size!47166 lt!623423)))) (or (is-Undefined!10948 lt!623616) (is-Found!10948 lt!623616) (not (is-MissingVacant!10948 lt!623616)) (not (= (index!46180 lt!623616) (index!46179 lt!623428))) (and (bvsge (index!46180 lt!623616) #b00000000000000000000000000000000) (bvslt (index!46180 lt!623616) (size!47166 lt!623423)))) (or (is-Undefined!10948 lt!623616) (ite (is-Found!10948 lt!623616) (= (select (arr!46615 lt!623423) (index!46178 lt!623616)) (select (arr!46615 a!2901) j!112)) (and (is-MissingVacant!10948 lt!623616) (= (index!46180 lt!623616) (index!46179 lt!623428)) (= (select (arr!46615 lt!623423) (index!46180 lt!623616)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152325 (= lt!623616 e!800603)))

(declare-fun c!131270 () Bool)

(assert (=> d!152325 (= c!131270 (bvsge (x!127782 lt!623428) #b01111111111111111111111111111110))))

(assert (=> d!152325 (= lt!623617 (select (arr!46615 lt!623423) (index!46179 lt!623428)))))

(assert (=> d!152325 (validMask!0 mask!2840)))

(assert (=> d!152325 (= (seekKeyOrZeroReturnVacant!0 (x!127782 lt!623428) (index!46179 lt!623428) (index!46179 lt!623428) (select (arr!46615 a!2901) j!112) lt!623423 mask!2840) lt!623616)))

(declare-fun b!1414560 () Bool)

(declare-fun e!800602 () SeekEntryResult!10948)

(assert (=> b!1414560 (= e!800602 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127782 lt!623428) #b00000000000000000000000000000001) (nextIndex!0 (index!46179 lt!623428) (x!127782 lt!623428) mask!2840) (index!46179 lt!623428) (select (arr!46615 a!2901) j!112) lt!623423 mask!2840))))

(declare-fun b!1414561 () Bool)

(declare-fun c!131272 () Bool)

(assert (=> b!1414561 (= c!131272 (= lt!623617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414561 (= e!800601 e!800602)))

(declare-fun b!1414562 () Bool)

(assert (=> b!1414562 (= e!800601 (Found!10948 (index!46179 lt!623428)))))

(declare-fun b!1414563 () Bool)

(assert (=> b!1414563 (= e!800602 (MissingVacant!10948 (index!46179 lt!623428)))))

(assert (= (and d!152325 c!131270) b!1414558))

(assert (= (and d!152325 (not c!131270)) b!1414559))

(assert (= (and b!1414559 c!131271) b!1414562))

(assert (= (and b!1414559 (not c!131271)) b!1414561))

(assert (= (and b!1414561 c!131272) b!1414563))

(assert (= (and b!1414561 (not c!131272)) b!1414560))

(declare-fun m!1304871 () Bool)

(assert (=> d!152325 m!1304871))

(declare-fun m!1304873 () Bool)

(assert (=> d!152325 m!1304873))

(declare-fun m!1304875 () Bool)

(assert (=> d!152325 m!1304875))

(assert (=> d!152325 m!1304593))

(declare-fun m!1304877 () Bool)

(assert (=> b!1414560 m!1304877))

(assert (=> b!1414560 m!1304877))

(assert (=> b!1414560 m!1304557))

(declare-fun m!1304879 () Bool)

(assert (=> b!1414560 m!1304879))

(assert (=> b!1414209 d!152325))

(declare-fun b!1414574 () Bool)

(declare-fun e!800615 () Bool)

(declare-fun contains!9835 (List!33314 (_ BitVec 64)) Bool)

(assert (=> b!1414574 (= e!800615 (contains!9835 Nil!33311 (select (arr!46615 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414575 () Bool)

(declare-fun e!800614 () Bool)

(declare-fun call!67157 () Bool)

(assert (=> b!1414575 (= e!800614 call!67157)))

(declare-fun b!1414576 () Bool)

(assert (=> b!1414576 (= e!800614 call!67157)))

(declare-fun b!1414577 () Bool)

(declare-fun e!800612 () Bool)

(declare-fun e!800613 () Bool)

(assert (=> b!1414577 (= e!800612 e!800613)))

(declare-fun res!950984 () Bool)

(assert (=> b!1414577 (=> (not res!950984) (not e!800613))))

(assert (=> b!1414577 (= res!950984 (not e!800615))))

(declare-fun res!950985 () Bool)

(assert (=> b!1414577 (=> (not res!950985) (not e!800615))))

(assert (=> b!1414577 (= res!950985 (validKeyInArray!0 (select (arr!46615 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414578 () Bool)

(assert (=> b!1414578 (= e!800613 e!800614)))

(declare-fun c!131275 () Bool)

(assert (=> b!1414578 (= c!131275 (validKeyInArray!0 (select (arr!46615 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152339 () Bool)

(declare-fun res!950986 () Bool)

(assert (=> d!152339 (=> res!950986 e!800612)))

(assert (=> d!152339 (= res!950986 (bvsge #b00000000000000000000000000000000 (size!47166 a!2901)))))

(assert (=> d!152339 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33311) e!800612)))

(declare-fun bm!67154 () Bool)

(assert (=> bm!67154 (= call!67157 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131275 (Cons!33310 (select (arr!46615 a!2901) #b00000000000000000000000000000000) Nil!33311) Nil!33311)))))

(assert (= (and d!152339 (not res!950986)) b!1414577))

(assert (= (and b!1414577 res!950985) b!1414574))

(assert (= (and b!1414577 res!950984) b!1414578))

(assert (= (and b!1414578 c!131275) b!1414575))

(assert (= (and b!1414578 (not c!131275)) b!1414576))

(assert (= (or b!1414575 b!1414576) bm!67154))

(assert (=> b!1414574 m!1304807))

(assert (=> b!1414574 m!1304807))

(declare-fun m!1304881 () Bool)

(assert (=> b!1414574 m!1304881))

(assert (=> b!1414577 m!1304807))

(assert (=> b!1414577 m!1304807))

(assert (=> b!1414577 m!1304809))

(assert (=> b!1414578 m!1304807))

(assert (=> b!1414578 m!1304807))

(assert (=> b!1414578 m!1304809))

(assert (=> bm!67154 m!1304807))

(declare-fun m!1304883 () Bool)

(assert (=> bm!67154 m!1304883))

(assert (=> b!1414204 d!152339))

(push 1)

(assert (not b!1414418))

(assert (not b!1414420))

(assert (not b!1414503))

(assert (not d!152293))

(assert (not d!152325))

(assert (not d!152323))

(assert (not d!152319))

(assert (not b!1414516))

(assert (not b!1414505))

(assert (not bm!67147))

(assert (not b!1414577))

(assert (not b!1414491))

(assert (not d!152297))

(assert (not bm!67148))

(assert (not b!1414430))

(assert (not b!1414560))

(assert (not b!1414375))

(assert (not bm!67154))

(assert (not b!1414578))

(assert (not d!152263))

(assert (not b!1414574))

(assert (not d!152301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

