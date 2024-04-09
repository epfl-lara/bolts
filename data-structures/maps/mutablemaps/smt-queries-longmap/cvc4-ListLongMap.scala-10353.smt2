; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121844 () Bool)

(assert start!121844)

(declare-datatypes ((array!96574 0))(
  ( (array!96575 (arr!46617 (Array (_ BitVec 32) (_ BitVec 64))) (size!47168 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96574)

(declare-fun e!800427 () Bool)

(declare-fun lt!623470 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10950 0))(
  ( (MissingZero!10950 (index!46185 (_ BitVec 32))) (Found!10950 (index!46186 (_ BitVec 32))) (Intermediate!10950 (undefined!11762 Bool) (index!46187 (_ BitVec 32)) (x!127784 (_ BitVec 32))) (Undefined!10950) (MissingVacant!10950 (index!46188 (_ BitVec 32))) )
))
(declare-fun lt!623464 () SeekEntryResult!10950)

(declare-fun b!1414265 () Bool)

(declare-fun lt!623465 () SeekEntryResult!10950)

(assert (=> b!1414265 (= e!800427 (or (bvslt (x!127784 lt!623465) #b00000000000000000000000000000000) (bvsgt (x!127784 lt!623465) #b01111111111111111111111111111110) (bvslt (x!127784 lt!623464) #b00000000000000000000000000000000) (bvsgt (x!127784 lt!623464) #b01111111111111111111111111111110) (and (bvsge lt!623470 #b00000000000000000000000000000000) (bvslt lt!623470 (size!47168 a!2901)))))))

(declare-fun e!800430 () Bool)

(assert (=> b!1414265 e!800430))

(declare-fun res!950889 () Bool)

(assert (=> b!1414265 (=> (not res!950889) (not e!800430))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1414265 (= res!950889 (and (not (undefined!11762 lt!623464)) (= (index!46187 lt!623464) i!1037) (bvslt (x!127784 lt!623464) (x!127784 lt!623465)) (= (select (store (arr!46617 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46187 lt!623464)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!47824 0))(
  ( (Unit!47825) )
))
(declare-fun lt!623468 () Unit!47824)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47824)

(assert (=> b!1414265 (= lt!623468 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623470 (x!127784 lt!623465) (index!46187 lt!623465) (x!127784 lt!623464) (index!46187 lt!623464) (undefined!11762 lt!623464) mask!2840))))

(declare-fun b!1414266 () Bool)

(declare-fun res!950894 () Bool)

(declare-fun e!800432 () Bool)

(assert (=> b!1414266 (=> (not res!950894) (not e!800432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96574 (_ BitVec 32)) Bool)

(assert (=> b!1414266 (= res!950894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1414267 () Bool)

(declare-fun res!950891 () Bool)

(assert (=> b!1414267 (=> (not res!950891) (not e!800432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414267 (= res!950891 (validKeyInArray!0 (select (arr!46617 a!2901) j!112)))))

(declare-fun b!1414268 () Bool)

(declare-fun res!950892 () Bool)

(assert (=> b!1414268 (=> (not res!950892) (not e!800432))))

(declare-datatypes ((List!33316 0))(
  ( (Nil!33313) (Cons!33312 (h!34593 (_ BitVec 64)) (t!48017 List!33316)) )
))
(declare-fun arrayNoDuplicates!0 (array!96574 (_ BitVec 32) List!33316) Bool)

(assert (=> b!1414268 (= res!950892 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33313))))

(declare-fun e!800428 () Bool)

(declare-fun b!1414269 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96574 (_ BitVec 32)) SeekEntryResult!10950)

(assert (=> b!1414269 (= e!800428 (= (seekEntryOrOpen!0 (select (arr!46617 a!2901) j!112) a!2901 mask!2840) (Found!10950 j!112)))))

(declare-fun b!1414270 () Bool)

(declare-fun e!800431 () Bool)

(assert (=> b!1414270 (= e!800432 (not e!800431))))

(declare-fun res!950898 () Bool)

(assert (=> b!1414270 (=> res!950898 e!800431)))

(assert (=> b!1414270 (= res!950898 (or (not (is-Intermediate!10950 lt!623465)) (undefined!11762 lt!623465)))))

(assert (=> b!1414270 e!800428))

(declare-fun res!950897 () Bool)

(assert (=> b!1414270 (=> (not res!950897) (not e!800428))))

(assert (=> b!1414270 (= res!950897 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623466 () Unit!47824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47824)

(assert (=> b!1414270 (= lt!623466 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96574 (_ BitVec 32)) SeekEntryResult!10950)

(assert (=> b!1414270 (= lt!623465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623470 (select (arr!46617 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414270 (= lt!623470 (toIndex!0 (select (arr!46617 a!2901) j!112) mask!2840))))

(declare-fun lt!623469 () array!96574)

(declare-fun lt!623467 () (_ BitVec 64))

(declare-fun b!1414271 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96574 (_ BitVec 32)) SeekEntryResult!10950)

(assert (=> b!1414271 (= e!800430 (= (seekEntryOrOpen!0 lt!623467 lt!623469 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127784 lt!623464) (index!46187 lt!623464) (index!46187 lt!623464) (select (arr!46617 a!2901) j!112) lt!623469 mask!2840)))))

(declare-fun b!1414272 () Bool)

(assert (=> b!1414272 (= e!800431 e!800427)))

(declare-fun res!950896 () Bool)

(assert (=> b!1414272 (=> res!950896 e!800427)))

(assert (=> b!1414272 (= res!950896 (or (= lt!623465 lt!623464) (not (is-Intermediate!10950 lt!623464))))))

(assert (=> b!1414272 (= lt!623464 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623467 mask!2840) lt!623467 lt!623469 mask!2840))))

(assert (=> b!1414272 (= lt!623467 (select (store (arr!46617 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414272 (= lt!623469 (array!96575 (store (arr!46617 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47168 a!2901)))))

(declare-fun b!1414273 () Bool)

(declare-fun res!950895 () Bool)

(assert (=> b!1414273 (=> (not res!950895) (not e!800432))))

(assert (=> b!1414273 (= res!950895 (validKeyInArray!0 (select (arr!46617 a!2901) i!1037)))))

(declare-fun b!1414264 () Bool)

(declare-fun res!950890 () Bool)

(assert (=> b!1414264 (=> (not res!950890) (not e!800432))))

(assert (=> b!1414264 (= res!950890 (and (= (size!47168 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47168 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47168 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!950893 () Bool)

(assert (=> start!121844 (=> (not res!950893) (not e!800432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121844 (= res!950893 (validMask!0 mask!2840))))

(assert (=> start!121844 e!800432))

(assert (=> start!121844 true))

(declare-fun array_inv!35562 (array!96574) Bool)

(assert (=> start!121844 (array_inv!35562 a!2901)))

(assert (= (and start!121844 res!950893) b!1414264))

(assert (= (and b!1414264 res!950890) b!1414273))

(assert (= (and b!1414273 res!950895) b!1414267))

(assert (= (and b!1414267 res!950891) b!1414266))

(assert (= (and b!1414266 res!950894) b!1414268))

(assert (= (and b!1414268 res!950892) b!1414270))

(assert (= (and b!1414270 res!950897) b!1414269))

(assert (= (and b!1414270 (not res!950898)) b!1414272))

(assert (= (and b!1414272 (not res!950896)) b!1414265))

(assert (= (and b!1414265 res!950889) b!1414271))

(declare-fun m!1304639 () Bool)

(assert (=> start!121844 m!1304639))

(declare-fun m!1304641 () Bool)

(assert (=> start!121844 m!1304641))

(declare-fun m!1304643 () Bool)

(assert (=> b!1414266 m!1304643))

(declare-fun m!1304645 () Bool)

(assert (=> b!1414268 m!1304645))

(declare-fun m!1304647 () Bool)

(assert (=> b!1414272 m!1304647))

(assert (=> b!1414272 m!1304647))

(declare-fun m!1304649 () Bool)

(assert (=> b!1414272 m!1304649))

(declare-fun m!1304651 () Bool)

(assert (=> b!1414272 m!1304651))

(declare-fun m!1304653 () Bool)

(assert (=> b!1414272 m!1304653))

(declare-fun m!1304655 () Bool)

(assert (=> b!1414269 m!1304655))

(assert (=> b!1414269 m!1304655))

(declare-fun m!1304657 () Bool)

(assert (=> b!1414269 m!1304657))

(assert (=> b!1414270 m!1304655))

(declare-fun m!1304659 () Bool)

(assert (=> b!1414270 m!1304659))

(assert (=> b!1414270 m!1304655))

(assert (=> b!1414270 m!1304655))

(declare-fun m!1304661 () Bool)

(assert (=> b!1414270 m!1304661))

(declare-fun m!1304663 () Bool)

(assert (=> b!1414270 m!1304663))

(declare-fun m!1304665 () Bool)

(assert (=> b!1414270 m!1304665))

(assert (=> b!1414267 m!1304655))

(assert (=> b!1414267 m!1304655))

(declare-fun m!1304667 () Bool)

(assert (=> b!1414267 m!1304667))

(declare-fun m!1304669 () Bool)

(assert (=> b!1414273 m!1304669))

(assert (=> b!1414273 m!1304669))

(declare-fun m!1304671 () Bool)

(assert (=> b!1414273 m!1304671))

(assert (=> b!1414265 m!1304651))

(declare-fun m!1304673 () Bool)

(assert (=> b!1414265 m!1304673))

(declare-fun m!1304675 () Bool)

(assert (=> b!1414265 m!1304675))

(declare-fun m!1304677 () Bool)

(assert (=> b!1414271 m!1304677))

(assert (=> b!1414271 m!1304655))

(assert (=> b!1414271 m!1304655))

(declare-fun m!1304679 () Bool)

(assert (=> b!1414271 m!1304679))

(push 1)

(assert (not b!1414265))

(assert (not b!1414268))

(assert (not start!121844))

(assert (not b!1414272))

(assert (not b!1414273))

(assert (not b!1414269))

(assert (not b!1414266))

(assert (not b!1414271))

(assert (not b!1414270))

(assert (not b!1414267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1414358 () Bool)

(declare-fun e!800483 () Bool)

(declare-fun e!800481 () Bool)

(assert (=> b!1414358 (= e!800483 e!800481)))

(declare-fun res!950919 () Bool)

(declare-fun lt!623503 () SeekEntryResult!10950)

(assert (=> b!1414358 (= res!950919 (and (is-Intermediate!10950 lt!623503) (not (undefined!11762 lt!623503)) (bvslt (x!127784 lt!623503) #b01111111111111111111111111111110) (bvsge (x!127784 lt!623503) #b00000000000000000000000000000000) (bvsge (x!127784 lt!623503) #b00000000000000000000000000000000)))))

(assert (=> b!1414358 (=> (not res!950919) (not e!800481))))

(declare-fun b!1414360 () Bool)

(declare-fun e!800482 () SeekEntryResult!10950)

(declare-fun e!800484 () SeekEntryResult!10950)

(assert (=> b!1414360 (= e!800482 e!800484)))

(declare-fun c!131200 () Bool)

(declare-fun lt!623504 () (_ BitVec 64))

(assert (=> b!1414360 (= c!131200 (or (= lt!623504 lt!623467) (= (bvadd lt!623504 lt!623504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414361 () Bool)

(assert (=> b!1414361 (and (bvsge (index!46187 lt!623503) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623503) (size!47168 lt!623469)))))

(declare-fun res!950918 () Bool)

(assert (=> b!1414361 (= res!950918 (= (select (arr!46617 lt!623469) (index!46187 lt!623503)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800480 () Bool)

(assert (=> b!1414361 (=> res!950918 e!800480)))

(declare-fun b!1414362 () Bool)

(assert (=> b!1414362 (and (bvsge (index!46187 lt!623503) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623503) (size!47168 lt!623469)))))

(assert (=> b!1414362 (= e!800480 (= (select (arr!46617 lt!623469) (index!46187 lt!623503)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414363 () Bool)

(assert (=> b!1414363 (= e!800482 (Intermediate!10950 true (toIndex!0 lt!623467 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414364 () Bool)

(assert (=> b!1414364 (and (bvsge (index!46187 lt!623503) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623503) (size!47168 lt!623469)))))

(declare-fun res!950917 () Bool)

(assert (=> b!1414364 (= res!950917 (= (select (arr!46617 lt!623469) (index!46187 lt!623503)) lt!623467))))

(assert (=> b!1414364 (=> res!950917 e!800480)))

(assert (=> b!1414364 (= e!800481 e!800480)))

(declare-fun b!1414365 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414365 (= e!800484 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623467 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623467 lt!623469 mask!2840))))

(declare-fun b!1414366 () Bool)

(assert (=> b!1414366 (= e!800484 (Intermediate!10950 false (toIndex!0 lt!623467 mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!152255 () Bool)

(assert (=> d!152255 e!800483))

(declare-fun c!131201 () Bool)

(assert (=> d!152255 (= c!131201 (and (is-Intermediate!10950 lt!623503) (undefined!11762 lt!623503)))))

(assert (=> d!152255 (= lt!623503 e!800482)))

(declare-fun c!131199 () Bool)

(assert (=> d!152255 (= c!131199 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152255 (= lt!623504 (select (arr!46617 lt!623469) (toIndex!0 lt!623467 mask!2840)))))

(assert (=> d!152255 (validMask!0 mask!2840)))

(assert (=> d!152255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623467 mask!2840) lt!623467 lt!623469 mask!2840) lt!623503)))

(declare-fun b!1414359 () Bool)

(assert (=> b!1414359 (= e!800483 (bvsge (x!127784 lt!623503) #b01111111111111111111111111111110))))

(assert (= (and d!152255 c!131199) b!1414363))

(assert (= (and d!152255 (not c!131199)) b!1414360))

(assert (= (and b!1414360 c!131200) b!1414366))

(assert (= (and b!1414360 (not c!131200)) b!1414365))

(assert (= (and d!152255 c!131201) b!1414359))

(assert (= (and d!152255 (not c!131201)) b!1414358))

(assert (= (and b!1414358 res!950919) b!1414364))

(assert (= (and b!1414364 (not res!950917)) b!1414361))

(assert (= (and b!1414361 (not res!950918)) b!1414362))

(declare-fun m!1304713 () Bool)

(assert (=> b!1414361 m!1304713))

(assert (=> b!1414364 m!1304713))

(assert (=> b!1414365 m!1304647))

(declare-fun m!1304715 () Bool)

(assert (=> b!1414365 m!1304715))

(assert (=> b!1414365 m!1304715))

(declare-fun m!1304717 () Bool)

(assert (=> b!1414365 m!1304717))

(assert (=> d!152255 m!1304647))

(declare-fun m!1304719 () Bool)

(assert (=> d!152255 m!1304719))

(assert (=> d!152255 m!1304639))

(assert (=> b!1414362 m!1304713))

(assert (=> b!1414272 d!152255))

(declare-fun d!152269 () Bool)

(declare-fun lt!623512 () (_ BitVec 32))

(declare-fun lt!623511 () (_ BitVec 32))

(assert (=> d!152269 (= lt!623512 (bvmul (bvxor lt!623511 (bvlshr lt!623511 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152269 (= lt!623511 ((_ extract 31 0) (bvand (bvxor lt!623467 (bvlshr lt!623467 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152269 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950920 (let ((h!34594 ((_ extract 31 0) (bvand (bvxor lt!623467 (bvlshr lt!623467 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127788 (bvmul (bvxor h!34594 (bvlshr h!34594 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127788 (bvlshr x!127788 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950920 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950920 #b00000000000000000000000000000000))))))

(assert (=> d!152269 (= (toIndex!0 lt!623467 mask!2840) (bvand (bvxor lt!623512 (bvlshr lt!623512 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414272 d!152269))

(declare-fun d!152277 () Bool)

(assert (=> d!152277 (= (validKeyInArray!0 (select (arr!46617 a!2901) j!112)) (and (not (= (select (arr!46617 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46617 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414267 d!152277))

(declare-fun d!152279 () Bool)

(assert (=> d!152279 (= (validKeyInArray!0 (select (arr!46617 a!2901) i!1037)) (and (not (= (select (arr!46617 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46617 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414273 d!152279))

(declare-fun bm!67142 () Bool)

(declare-fun call!67145 () Bool)

(declare-fun c!131209 () Bool)

(assert (=> bm!67142 (= call!67145 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131209 (Cons!33312 (select (arr!46617 a!2901) #b00000000000000000000000000000000) Nil!33313) Nil!33313)))))

(declare-fun b!1414396 () Bool)

(declare-fun e!800507 () Bool)

(assert (=> b!1414396 (= e!800507 call!67145)))

(declare-fun b!1414397 () Bool)

(declare-fun e!800509 () Bool)

(assert (=> b!1414397 (= e!800509 e!800507)))

(assert (=> b!1414397 (= c!131209 (validKeyInArray!0 (select (arr!46617 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414398 () Bool)

(declare-fun e!800506 () Bool)

(declare-fun contains!9834 (List!33316 (_ BitVec 64)) Bool)

(assert (=> b!1414398 (= e!800506 (contains!9834 Nil!33313 (select (arr!46617 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152281 () Bool)

(declare-fun res!950938 () Bool)

(declare-fun e!800508 () Bool)

(assert (=> d!152281 (=> res!950938 e!800508)))

(assert (=> d!152281 (= res!950938 (bvsge #b00000000000000000000000000000000 (size!47168 a!2901)))))

(assert (=> d!152281 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33313) e!800508)))

(declare-fun b!1414399 () Bool)

(assert (=> b!1414399 (= e!800507 call!67145)))

(declare-fun b!1414400 () Bool)

(assert (=> b!1414400 (= e!800508 e!800509)))

(declare-fun res!950937 () Bool)

(assert (=> b!1414400 (=> (not res!950937) (not e!800509))))

(assert (=> b!1414400 (= res!950937 (not e!800506))))

(declare-fun res!950939 () Bool)

(assert (=> b!1414400 (=> (not res!950939) (not e!800506))))

(assert (=> b!1414400 (= res!950939 (validKeyInArray!0 (select (arr!46617 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152281 (not res!950938)) b!1414400))

(assert (= (and b!1414400 res!950939) b!1414398))

(assert (= (and b!1414400 res!950937) b!1414397))

(assert (= (and b!1414397 c!131209) b!1414396))

(assert (= (and b!1414397 (not c!131209)) b!1414399))

(assert (= (or b!1414396 b!1414399) bm!67142))

(declare-fun m!1304731 () Bool)

(assert (=> bm!67142 m!1304731))

(declare-fun m!1304733 () Bool)

(assert (=> bm!67142 m!1304733))

(assert (=> b!1414397 m!1304731))

(assert (=> b!1414397 m!1304731))

(declare-fun m!1304735 () Bool)

(assert (=> b!1414397 m!1304735))

(assert (=> b!1414398 m!1304731))

(assert (=> b!1414398 m!1304731))

(declare-fun m!1304737 () Bool)

(assert (=> b!1414398 m!1304737))

(assert (=> b!1414400 m!1304731))

(assert (=> b!1414400 m!1304731))

(assert (=> b!1414400 m!1304735))

(assert (=> b!1414268 d!152281))

(declare-fun d!152287 () Bool)

(declare-fun lt!623556 () SeekEntryResult!10950)

(assert (=> d!152287 (and (or (is-Undefined!10950 lt!623556) (not (is-Found!10950 lt!623556)) (and (bvsge (index!46186 lt!623556) #b00000000000000000000000000000000) (bvslt (index!46186 lt!623556) (size!47168 a!2901)))) (or (is-Undefined!10950 lt!623556) (is-Found!10950 lt!623556) (not (is-MissingZero!10950 lt!623556)) (and (bvsge (index!46185 lt!623556) #b00000000000000000000000000000000) (bvslt (index!46185 lt!623556) (size!47168 a!2901)))) (or (is-Undefined!10950 lt!623556) (is-Found!10950 lt!623556) (is-MissingZero!10950 lt!623556) (not (is-MissingVacant!10950 lt!623556)) (and (bvsge (index!46188 lt!623556) #b00000000000000000000000000000000) (bvslt (index!46188 lt!623556) (size!47168 a!2901)))) (or (is-Undefined!10950 lt!623556) (ite (is-Found!10950 lt!623556) (= (select (arr!46617 a!2901) (index!46186 lt!623556)) (select (arr!46617 a!2901) j!112)) (ite (is-MissingZero!10950 lt!623556) (= (select (arr!46617 a!2901) (index!46185 lt!623556)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10950 lt!623556) (= (select (arr!46617 a!2901) (index!46188 lt!623556)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800538 () SeekEntryResult!10950)

(assert (=> d!152287 (= lt!623556 e!800538)))

(declare-fun c!131224 () Bool)

(declare-fun lt!623555 () SeekEntryResult!10950)

(assert (=> d!152287 (= c!131224 (and (is-Intermediate!10950 lt!623555) (undefined!11762 lt!623555)))))

(assert (=> d!152287 (= lt!623555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46617 a!2901) j!112) mask!2840) (select (arr!46617 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152287 (validMask!0 mask!2840)))

(assert (=> d!152287 (= (seekEntryOrOpen!0 (select (arr!46617 a!2901) j!112) a!2901 mask!2840) lt!623556)))

(declare-fun b!1414445 () Bool)

(assert (=> b!1414445 (= e!800538 Undefined!10950)))

(declare-fun b!1414446 () Bool)

(declare-fun c!131225 () Bool)

(declare-fun lt!623554 () (_ BitVec 64))

(assert (=> b!1414446 (= c!131225 (= lt!623554 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800537 () SeekEntryResult!10950)

(declare-fun e!800539 () SeekEntryResult!10950)

(assert (=> b!1414446 (= e!800537 e!800539)))

(declare-fun b!1414447 () Bool)

(assert (=> b!1414447 (= e!800539 (seekKeyOrZeroReturnVacant!0 (x!127784 lt!623555) (index!46187 lt!623555) (index!46187 lt!623555) (select (arr!46617 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414448 () Bool)

(assert (=> b!1414448 (= e!800537 (Found!10950 (index!46187 lt!623555)))))

(declare-fun b!1414449 () Bool)

(assert (=> b!1414449 (= e!800539 (MissingZero!10950 (index!46187 lt!623555)))))

(declare-fun b!1414450 () Bool)

(assert (=> b!1414450 (= e!800538 e!800537)))

(assert (=> b!1414450 (= lt!623554 (select (arr!46617 a!2901) (index!46187 lt!623555)))))

(declare-fun c!131226 () Bool)

(assert (=> b!1414450 (= c!131226 (= lt!623554 (select (arr!46617 a!2901) j!112)))))

(assert (= (and d!152287 c!131224) b!1414445))

(assert (= (and d!152287 (not c!131224)) b!1414450))

(assert (= (and b!1414450 c!131226) b!1414448))

(assert (= (and b!1414450 (not c!131226)) b!1414446))

(assert (= (and b!1414446 c!131225) b!1414449))

(assert (= (and b!1414446 (not c!131225)) b!1414447))

(assert (=> d!152287 m!1304659))

(assert (=> d!152287 m!1304655))

(declare-fun m!1304767 () Bool)

(assert (=> d!152287 m!1304767))

(declare-fun m!1304769 () Bool)

(assert (=> d!152287 m!1304769))

(assert (=> d!152287 m!1304639))

(assert (=> d!152287 m!1304655))

(assert (=> d!152287 m!1304659))

(declare-fun m!1304771 () Bool)

(assert (=> d!152287 m!1304771))

(declare-fun m!1304773 () Bool)

(assert (=> d!152287 m!1304773))

(assert (=> b!1414447 m!1304655))

(declare-fun m!1304775 () Bool)

(assert (=> b!1414447 m!1304775))

(declare-fun m!1304777 () Bool)

(assert (=> b!1414450 m!1304777))

(assert (=> b!1414269 d!152287))

(declare-fun d!152303 () Bool)

(assert (=> d!152303 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121844 d!152303))

(declare-fun d!152307 () Bool)

(assert (=> d!152307 (= (array_inv!35562 a!2901) (bvsge (size!47168 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121844 d!152307))

(declare-fun b!1414527 () Bool)

(declare-fun e!800584 () Bool)

(declare-fun e!800585 () Bool)

(assert (=> b!1414527 (= e!800584 e!800585)))

(declare-fun lt!623597 () (_ BitVec 64))

(assert (=> b!1414527 (= lt!623597 (select (arr!46617 a!2901) j!112))))

(declare-fun lt!623596 () Unit!47824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96574 (_ BitVec 64) (_ BitVec 32)) Unit!47824)

(assert (=> b!1414527 (= lt!623596 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623597 j!112))))

(declare-fun arrayContainsKey!0 (array!96574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414527 (arrayContainsKey!0 a!2901 lt!623597 #b00000000000000000000000000000000)))

(declare-fun lt!623598 () Unit!47824)

(assert (=> b!1414527 (= lt!623598 lt!623596)))

(declare-fun res!950974 () Bool)

(assert (=> b!1414527 (= res!950974 (= (seekEntryOrOpen!0 (select (arr!46617 a!2901) j!112) a!2901 mask!2840) (Found!10950 j!112)))))

(assert (=> b!1414527 (=> (not res!950974) (not e!800585))))

(declare-fun call!67154 () Bool)

(declare-fun bm!67151 () Bool)

(assert (=> bm!67151 (= call!67154 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414528 () Bool)

(assert (=> b!1414528 (= e!800585 call!67154)))

(declare-fun b!1414529 () Bool)

(assert (=> b!1414529 (= e!800584 call!67154)))

(declare-fun b!1414530 () Bool)

(declare-fun e!800586 () Bool)

(assert (=> b!1414530 (= e!800586 e!800584)))

(declare-fun c!131257 () Bool)

(assert (=> b!1414530 (= c!131257 (validKeyInArray!0 (select (arr!46617 a!2901) j!112)))))

(declare-fun d!152311 () Bool)

(declare-fun res!950973 () Bool)

(assert (=> d!152311 (=> res!950973 e!800586)))

(assert (=> d!152311 (= res!950973 (bvsge j!112 (size!47168 a!2901)))))

(assert (=> d!152311 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800586)))

(assert (= (and d!152311 (not res!950973)) b!1414530))

(assert (= (and b!1414530 c!131257) b!1414527))

(assert (= (and b!1414530 (not c!131257)) b!1414529))

(assert (= (and b!1414527 res!950974) b!1414528))

(assert (= (or b!1414528 b!1414529) bm!67151))

(assert (=> b!1414527 m!1304655))

(declare-fun m!1304843 () Bool)

(assert (=> b!1414527 m!1304843))

(declare-fun m!1304845 () Bool)

(assert (=> b!1414527 m!1304845))

(assert (=> b!1414527 m!1304655))

(assert (=> b!1414527 m!1304657))

(declare-fun m!1304847 () Bool)

(assert (=> bm!67151 m!1304847))

(assert (=> b!1414530 m!1304655))

(assert (=> b!1414530 m!1304655))

(assert (=> b!1414530 m!1304667))

(assert (=> b!1414270 d!152311))

(declare-fun d!152327 () Bool)

(assert (=> d!152327 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623601 () Unit!47824)

(declare-fun choose!38 (array!96574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47824)

(assert (=> d!152327 (= lt!623601 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152327 (validMask!0 mask!2840)))

(assert (=> d!152327 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623601)))

(declare-fun bs!41232 () Bool)

(assert (= bs!41232 d!152327))

(assert (=> bs!41232 m!1304665))

(declare-fun m!1304849 () Bool)

(assert (=> bs!41232 m!1304849))

(assert (=> bs!41232 m!1304639))

(assert (=> b!1414270 d!152327))

(declare-fun b!1414531 () Bool)

(declare-fun e!800590 () Bool)

(declare-fun e!800588 () Bool)

(assert (=> b!1414531 (= e!800590 e!800588)))

(declare-fun res!950977 () Bool)

(declare-fun lt!623602 () SeekEntryResult!10950)

(assert (=> b!1414531 (= res!950977 (and (is-Intermediate!10950 lt!623602) (not (undefined!11762 lt!623602)) (bvslt (x!127784 lt!623602) #b01111111111111111111111111111110) (bvsge (x!127784 lt!623602) #b00000000000000000000000000000000) (bvsge (x!127784 lt!623602) #b00000000000000000000000000000000)))))

(assert (=> b!1414531 (=> (not res!950977) (not e!800588))))

(declare-fun b!1414533 () Bool)

(declare-fun e!800589 () SeekEntryResult!10950)

(declare-fun e!800591 () SeekEntryResult!10950)

(assert (=> b!1414533 (= e!800589 e!800591)))

(declare-fun c!131259 () Bool)

(declare-fun lt!623603 () (_ BitVec 64))

(assert (=> b!1414533 (= c!131259 (or (= lt!623603 (select (arr!46617 a!2901) j!112)) (= (bvadd lt!623603 lt!623603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414534 () Bool)

(assert (=> b!1414534 (and (bvsge (index!46187 lt!623602) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623602) (size!47168 a!2901)))))

(declare-fun res!950976 () Bool)

(assert (=> b!1414534 (= res!950976 (= (select (arr!46617 a!2901) (index!46187 lt!623602)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800587 () Bool)

(assert (=> b!1414534 (=> res!950976 e!800587)))

(declare-fun b!1414535 () Bool)

(assert (=> b!1414535 (and (bvsge (index!46187 lt!623602) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623602) (size!47168 a!2901)))))

(assert (=> b!1414535 (= e!800587 (= (select (arr!46617 a!2901) (index!46187 lt!623602)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414536 () Bool)

(assert (=> b!1414536 (= e!800589 (Intermediate!10950 true lt!623470 #b00000000000000000000000000000000))))

(declare-fun b!1414537 () Bool)

(assert (=> b!1414537 (and (bvsge (index!46187 lt!623602) #b00000000000000000000000000000000) (bvslt (index!46187 lt!623602) (size!47168 a!2901)))))

(declare-fun res!950975 () Bool)

(assert (=> b!1414537 (= res!950975 (= (select (arr!46617 a!2901) (index!46187 lt!623602)) (select (arr!46617 a!2901) j!112)))))

(assert (=> b!1414537 (=> res!950975 e!800587)))

(assert (=> b!1414537 (= e!800588 e!800587)))

(declare-fun b!1414538 () Bool)

(assert (=> b!1414538 (= e!800591 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623470 #b00000000000000000000000000000000 mask!2840) (select (arr!46617 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414539 () Bool)

(assert (=> b!1414539 (= e!800591 (Intermediate!10950 false lt!623470 #b00000000000000000000000000000000))))

(declare-fun d!152329 () Bool)

(assert (=> d!152329 e!800590))

(declare-fun c!131260 () Bool)

(assert (=> d!152329 (= c!131260 (and (is-Intermediate!10950 lt!623602) (undefined!11762 lt!623602)))))

(assert (=> d!152329 (= lt!623602 e!800589)))

(declare-fun c!131258 () Bool)

(assert (=> d!152329 (= c!131258 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152329 (= lt!623603 (select (arr!46617 a!2901) lt!623470))))

(assert (=> d!152329 (validMask!0 mask!2840)))

(assert (=> d!152329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623470 (select (arr!46617 a!2901) j!112) a!2901 mask!2840) lt!623602)))

(declare-fun b!1414532 () Bool)

(assert (=> b!1414532 (= e!800590 (bvsge (x!127784 lt!623602) #b01111111111111111111111111111110))))

(assert (= (and d!152329 c!131258) b!1414536))

(assert (= (and d!152329 (not c!131258)) b!1414533))

(assert (= (and b!1414533 c!131259) b!1414539))

(assert (= (and b!1414533 (not c!131259)) b!1414538))

(assert (= (and d!152329 c!131260) b!1414532))

(assert (= (and d!152329 (not c!131260)) b!1414531))

(assert (= (and b!1414531 res!950977) b!1414537))

(assert (= (and b!1414537 (not res!950975)) b!1414534))

(assert (= (and b!1414534 (not res!950976)) b!1414535))

(declare-fun m!1304851 () Bool)

(assert (=> b!1414534 m!1304851))

(assert (=> b!1414537 m!1304851))

(declare-fun m!1304853 () Bool)

(assert (=> b!1414538 m!1304853))

(assert (=> b!1414538 m!1304853))

(assert (=> b!1414538 m!1304655))

(declare-fun m!1304855 () Bool)

(assert (=> b!1414538 m!1304855))

(declare-fun m!1304857 () Bool)

(assert (=> d!152329 m!1304857))

(assert (=> d!152329 m!1304639))

(assert (=> b!1414535 m!1304851))

(assert (=> b!1414270 d!152329))

(declare-fun d!152331 () Bool)

(declare-fun lt!623605 () (_ BitVec 32))

(declare-fun lt!623604 () (_ BitVec 32))

(assert (=> d!152331 (= lt!623605 (bvmul (bvxor lt!623604 (bvlshr lt!623604 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152331 (= lt!623604 ((_ extract 31 0) (bvand (bvxor (select (arr!46617 a!2901) j!112) (bvlshr (select (arr!46617 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152331 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950920 (let ((h!34594 ((_ extract 31 0) (bvand (bvxor (select (arr!46617 a!2901) j!112) (bvlshr (select (arr!46617 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127788 (bvmul (bvxor h!34594 (bvlshr h!34594 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127788 (bvlshr x!127788 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950920 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950920 #b00000000000000000000000000000000))))))

(assert (=> d!152331 (= (toIndex!0 (select (arr!46617 a!2901) j!112) mask!2840) (bvand (bvxor lt!623605 (bvlshr lt!623605 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414270 d!152331))

(declare-fun d!152333 () Bool)

(assert (=> d!152333 (and (not (undefined!11762 lt!623464)) (= (index!46187 lt!623464) i!1037) (bvslt (x!127784 lt!623464) (x!127784 lt!623465)))))

(declare-fun lt!623612 () Unit!47824)

(declare-fun choose!62 (array!96574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47824)

(assert (=> d!152333 (= lt!623612 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623470 (x!127784 lt!623465) (index!46187 lt!623465) (x!127784 lt!623464) (index!46187 lt!623464) (undefined!11762 lt!623464) mask!2840))))

(assert (=> d!152333 (validMask!0 mask!2840)))

(assert (=> d!152333 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623470 (x!127784 lt!623465) (index!46187 lt!623465) (x!127784 lt!623464) (index!46187 lt!623464) (undefined!11762 lt!623464) mask!2840) lt!623612)))

(declare-fun bs!41233 () Bool)

(assert (= bs!41233 d!152333))

(declare-fun m!1304859 () Bool)

(assert (=> bs!41233 m!1304859))

(assert (=> bs!41233 m!1304639))

(assert (=> b!1414265 d!152333))

(declare-fun d!152335 () Bool)

(declare-fun lt!623615 () SeekEntryResult!10950)

(assert (=> d!152335 (and (or (is-Undefined!10950 lt!623615) (not (is-Found!10950 lt!623615)) (and (bvsge (index!46186 lt!623615) #b00000000000000000000000000000000) (bvslt (index!46186 lt!623615) (size!47168 lt!623469)))) (or (is-Undefined!10950 lt!623615) (is-Found!10950 lt!623615) (not (is-MissingZero!10950 lt!623615)) (and (bvsge (index!46185 lt!623615) #b00000000000000000000000000000000) (bvslt (index!46185 lt!623615) (size!47168 lt!623469)))) (or (is-Undefined!10950 lt!623615) (is-Found!10950 lt!623615) (is-MissingZero!10950 lt!623615) (not (is-MissingVacant!10950 lt!623615)) (and (bvsge (index!46188 lt!623615) #b00000000000000000000000000000000) (bvslt (index!46188 lt!623615) (size!47168 lt!623469)))) (or (is-Undefined!10950 lt!623615) (ite (is-Found!10950 lt!623615) (= (select (arr!46617 lt!623469) (index!46186 lt!623615)) lt!623467) (ite (is-MissingZero!10950 lt!623615) (= (select (arr!46617 lt!623469) (index!46185 lt!623615)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10950 lt!623615) (= (select (arr!46617 lt!623469) (index!46188 lt!623615)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800599 () SeekEntryResult!10950)

(assert (=> d!152335 (= lt!623615 e!800599)))

(declare-fun c!131267 () Bool)

(declare-fun lt!623614 () SeekEntryResult!10950)

(assert (=> d!152335 (= c!131267 (and (is-Intermediate!10950 lt!623614) (undefined!11762 lt!623614)))))

(assert (=> d!152335 (= lt!623614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623467 mask!2840) lt!623467 lt!623469 mask!2840))))

(assert (=> d!152335 (validMask!0 mask!2840)))

(assert (=> d!152335 (= (seekEntryOrOpen!0 lt!623467 lt!623469 mask!2840) lt!623615)))

(declare-fun b!1414552 () Bool)

(assert (=> b!1414552 (= e!800599 Undefined!10950)))

(declare-fun b!1414553 () Bool)

(declare-fun c!131268 () Bool)

(declare-fun lt!623613 () (_ BitVec 64))

(assert (=> b!1414553 (= c!131268 (= lt!623613 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800598 () SeekEntryResult!10950)

(declare-fun e!800600 () SeekEntryResult!10950)

(assert (=> b!1414553 (= e!800598 e!800600)))

(declare-fun b!1414554 () Bool)

(assert (=> b!1414554 (= e!800600 (seekKeyOrZeroReturnVacant!0 (x!127784 lt!623614) (index!46187 lt!623614) (index!46187 lt!623614) lt!623467 lt!623469 mask!2840))))

(declare-fun b!1414555 () Bool)

(assert (=> b!1414555 (= e!800598 (Found!10950 (index!46187 lt!623614)))))

(declare-fun b!1414556 () Bool)

(assert (=> b!1414556 (= e!800600 (MissingZero!10950 (index!46187 lt!623614)))))

(declare-fun b!1414557 () Bool)

(assert (=> b!1414557 (= e!800599 e!800598)))

(assert (=> b!1414557 (= lt!623613 (select (arr!46617 lt!623469) (index!46187 lt!623614)))))

(declare-fun c!131269 () Bool)

(assert (=> b!1414557 (= c!131269 (= lt!623613 lt!623467))))

(assert (= (and d!152335 c!131267) b!1414552))

(assert (= (and d!152335 (not c!131267)) b!1414557))

(assert (= (and b!1414557 c!131269) b!1414555))

(assert (= (and b!1414557 (not c!131269)) b!1414553))

(assert (= (and b!1414553 c!131268) b!1414556))

(assert (= (and b!1414553 (not c!131268)) b!1414554))

(assert (=> d!152335 m!1304647))

(assert (=> d!152335 m!1304649))

(declare-fun m!1304861 () Bool)

(assert (=> d!152335 m!1304861))

(assert (=> d!152335 m!1304639))

(assert (=> d!152335 m!1304647))

(declare-fun m!1304863 () Bool)

(assert (=> d!152335 m!1304863))

(declare-fun m!1304865 () Bool)

(assert (=> d!152335 m!1304865))

(declare-fun m!1304867 () Bool)

(assert (=> b!1414554 m!1304867))

(declare-fun m!1304869 () Bool)

(assert (=> b!1414557 m!1304869))

(assert (=> b!1414271 d!152335))

(declare-fun b!1414591 () Bool)

(declare-fun e!800622 () SeekEntryResult!10950)

(assert (=> b!1414591 (= e!800622 (Found!10950 (index!46187 lt!623464)))))

(declare-fun b!1414592 () Bool)

(declare-fun e!800624 () SeekEntryResult!10950)

(assert (=> b!1414592 (= e!800624 e!800622)))

(declare-fun lt!623622 () (_ BitVec 64))

(declare-fun c!131283 () Bool)

(assert (=> b!1414592 (= c!131283 (= lt!623622 (select (arr!46617 a!2901) j!112)))))

(declare-fun b!1414593 () Bool)

(declare-fun e!800623 () SeekEntryResult!10950)

(assert (=> b!1414593 (= e!800623 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127784 lt!623464) #b00000000000000000000000000000001) (nextIndex!0 (index!46187 lt!623464) (x!127784 lt!623464) mask!2840) (index!46187 lt!623464) (select (arr!46617 a!2901) j!112) lt!623469 mask!2840))))

(declare-fun b!1414594 () Bool)

(assert (=> b!1414594 (= e!800624 Undefined!10950)))

(declare-fun b!1414595 () Bool)

(declare-fun c!131282 () Bool)

(assert (=> b!1414595 (= c!131282 (= lt!623622 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414595 (= e!800622 e!800623)))

(declare-fun b!1414596 () Bool)

(assert (=> b!1414596 (= e!800623 (MissingVacant!10950 (index!46187 lt!623464)))))

(declare-fun d!152337 () Bool)

(declare-fun lt!623623 () SeekEntryResult!10950)

(assert (=> d!152337 (and (or (is-Undefined!10950 lt!623623) (not (is-Found!10950 lt!623623)) (and (bvsge (index!46186 lt!623623) #b00000000000000000000000000000000) (bvslt (index!46186 lt!623623) (size!47168 lt!623469)))) (or (is-Undefined!10950 lt!623623) (is-Found!10950 lt!623623) (not (is-MissingVacant!10950 lt!623623)) (not (= (index!46188 lt!623623) (index!46187 lt!623464))) (and (bvsge (index!46188 lt!623623) #b00000000000000000000000000000000) (bvslt (index!46188 lt!623623) (size!47168 lt!623469)))) (or (is-Undefined!10950 lt!623623) (ite (is-Found!10950 lt!623623) (= (select (arr!46617 lt!623469) (index!46186 lt!623623)) (select (arr!46617 a!2901) j!112)) (and (is-MissingVacant!10950 lt!623623) (= (index!46188 lt!623623) (index!46187 lt!623464)) (= (select (arr!46617 lt!623469) (index!46188 lt!623623)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152337 (= lt!623623 e!800624)))

(declare-fun c!131284 () Bool)

(assert (=> d!152337 (= c!131284 (bvsge (x!127784 lt!623464) #b01111111111111111111111111111110))))

(assert (=> d!152337 (= lt!623622 (select (arr!46617 lt!623469) (index!46187 lt!623464)))))

(assert (=> d!152337 (validMask!0 mask!2840)))

(assert (=> d!152337 (= (seekKeyOrZeroReturnVacant!0 (x!127784 lt!623464) (index!46187 lt!623464) (index!46187 lt!623464) (select (arr!46617 a!2901) j!112) lt!623469 mask!2840) lt!623623)))

(assert (= (and d!152337 c!131284) b!1414594))

(assert (= (and d!152337 (not c!131284)) b!1414592))

(assert (= (and b!1414592 c!131283) b!1414591))

(assert (= (and b!1414592 (not c!131283)) b!1414595))

(assert (= (and b!1414595 c!131282) b!1414596))

(assert (= (and b!1414595 (not c!131282)) b!1414593))

(declare-fun m!1304885 () Bool)

(assert (=> b!1414593 m!1304885))

(assert (=> b!1414593 m!1304885))

(assert (=> b!1414593 m!1304655))

(declare-fun m!1304887 () Bool)

(assert (=> b!1414593 m!1304887))

(declare-fun m!1304889 () Bool)

(assert (=> d!152337 m!1304889))

(declare-fun m!1304891 () Bool)

(assert (=> d!152337 m!1304891))

(declare-fun m!1304893 () Bool)

(assert (=> d!152337 m!1304893))

(assert (=> d!152337 m!1304639))

(assert (=> b!1414271 d!152337))

(declare-fun b!1414597 () Bool)

(declare-fun e!800625 () Bool)

(declare-fun e!800626 () Bool)

(assert (=> b!1414597 (= e!800625 e!800626)))

(declare-fun lt!623625 () (_ BitVec 64))

(assert (=> b!1414597 (= lt!623625 (select (arr!46617 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623624 () Unit!47824)

(assert (=> b!1414597 (= lt!623624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623625 #b00000000000000000000000000000000))))

(assert (=> b!1414597 (arrayContainsKey!0 a!2901 lt!623625 #b00000000000000000000000000000000)))

(declare-fun lt!623626 () Unit!47824)

(assert (=> b!1414597 (= lt!623626 lt!623624)))

(declare-fun res!950988 () Bool)

(assert (=> b!1414597 (= res!950988 (= (seekEntryOrOpen!0 (select (arr!46617 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10950 #b00000000000000000000000000000000)))))

(assert (=> b!1414597 (=> (not res!950988) (not e!800626))))

(declare-fun bm!67155 () Bool)

(declare-fun call!67158 () Bool)

(assert (=> bm!67155 (= call!67158 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414598 () Bool)

(assert (=> b!1414598 (= e!800626 call!67158)))

(declare-fun b!1414599 () Bool)

(assert (=> b!1414599 (= e!800625 call!67158)))

(declare-fun b!1414600 () Bool)

(declare-fun e!800627 () Bool)

(assert (=> b!1414600 (= e!800627 e!800625)))

(declare-fun c!131285 () Bool)

(assert (=> b!1414600 (= c!131285 (validKeyInArray!0 (select (arr!46617 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152341 () Bool)

(declare-fun res!950987 () Bool)

(assert (=> d!152341 (=> res!950987 e!800627)))

(assert (=> d!152341 (= res!950987 (bvsge #b00000000000000000000000000000000 (size!47168 a!2901)))))

(assert (=> d!152341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800627)))

(assert (= (and d!152341 (not res!950987)) b!1414600))

(assert (= (and b!1414600 c!131285) b!1414597))

(assert (= (and b!1414600 (not c!131285)) b!1414599))

(assert (= (and b!1414597 res!950988) b!1414598))

(assert (= (or b!1414598 b!1414599) bm!67155))

(assert (=> b!1414597 m!1304731))

(declare-fun m!1304895 () Bool)

(assert (=> b!1414597 m!1304895))

(declare-fun m!1304897 () Bool)

(assert (=> b!1414597 m!1304897))

(assert (=> b!1414597 m!1304731))

(declare-fun m!1304899 () Bool)

(assert (=> b!1414597 m!1304899))

(declare-fun m!1304901 () Bool)

(assert (=> bm!67155 m!1304901))

(assert (=> b!1414600 m!1304731))

(assert (=> b!1414600 m!1304731))

(assert (=> b!1414600 m!1304735))

(assert (=> b!1414266 d!152341))

(push 1)

(assert (not b!1414447))

(assert (not d!152287))

(assert (not d!152327))

(assert (not d!152337))

(assert (not d!152329))

(assert (not b!1414365))

(assert (not d!152333))

(assert (not bm!67142))

(assert (not b!1414400))

(assert (not bm!67155))

(assert (not b!1414397))

(assert (not d!152255))

(assert (not b!1414538))

(assert (not b!1414597))

(assert (not b!1414554))

(assert (not b!1414593))

(assert (not b!1414600))

(assert (not b!1414398))

(assert (not b!1414530))

(assert (not b!1414527))

(assert (not d!152335))

(assert (not bm!67151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

