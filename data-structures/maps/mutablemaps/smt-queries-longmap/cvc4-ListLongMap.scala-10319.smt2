; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121280 () Bool)

(assert start!121280)

(declare-fun b!1409640 () Bool)

(declare-fun res!947478 () Bool)

(declare-fun e!797722 () Bool)

(assert (=> b!1409640 (=> (not res!947478) (not e!797722))))

(declare-datatypes ((array!96352 0))(
  ( (array!96353 (arr!46515 (Array (_ BitVec 32) (_ BitVec 64))) (size!47066 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96352)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96352 (_ BitVec 32)) Bool)

(assert (=> b!1409640 (= res!947478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!797721 () Bool)

(declare-fun b!1409641 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10848 0))(
  ( (MissingZero!10848 (index!45768 (_ BitVec 32))) (Found!10848 (index!45769 (_ BitVec 32))) (Intermediate!10848 (undefined!11660 Bool) (index!45770 (_ BitVec 32)) (x!127356 (_ BitVec 32))) (Undefined!10848) (MissingVacant!10848 (index!45771 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96352 (_ BitVec 32)) SeekEntryResult!10848)

(assert (=> b!1409641 (= e!797721 (= (seekEntryOrOpen!0 (select (arr!46515 a!2901) j!112) a!2901 mask!2840) (Found!10848 j!112)))))

(declare-fun b!1409642 () Bool)

(declare-fun res!947475 () Bool)

(assert (=> b!1409642 (=> (not res!947475) (not e!797722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409642 (= res!947475 (validKeyInArray!0 (select (arr!46515 a!2901) j!112)))))

(declare-fun b!1409644 () Bool)

(declare-fun res!947474 () Bool)

(assert (=> b!1409644 (=> (not res!947474) (not e!797722))))

(declare-datatypes ((List!33214 0))(
  ( (Nil!33211) (Cons!33210 (h!34473 (_ BitVec 64)) (t!47915 List!33214)) )
))
(declare-fun arrayNoDuplicates!0 (array!96352 (_ BitVec 32) List!33214) Bool)

(assert (=> b!1409644 (= res!947474 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33211))))

(declare-fun b!1409645 () Bool)

(declare-fun e!797720 () Bool)

(declare-fun lt!620768 () SeekEntryResult!10848)

(declare-fun lt!620770 () SeekEntryResult!10848)

(assert (=> b!1409645 (= e!797720 (or (= lt!620768 lt!620770) (not (is-Intermediate!10848 lt!620770)) (and (bvsge (x!127356 lt!620768) #b00000000000000000000000000000000) (bvsle (x!127356 lt!620768) #b01111111111111111111111111111110))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96352 (_ BitVec 32)) SeekEntryResult!10848)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409645 (= lt!620770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)) mask!2840))))

(declare-fun b!1409646 () Bool)

(declare-fun res!947473 () Bool)

(assert (=> b!1409646 (=> (not res!947473) (not e!797722))))

(assert (=> b!1409646 (= res!947473 (validKeyInArray!0 (select (arr!46515 a!2901) i!1037)))))

(declare-fun b!1409647 () Bool)

(assert (=> b!1409647 (= e!797722 (not e!797720))))

(declare-fun res!947477 () Bool)

(assert (=> b!1409647 (=> res!947477 e!797720)))

(assert (=> b!1409647 (= res!947477 (or (not (is-Intermediate!10848 lt!620768)) (undefined!11660 lt!620768)))))

(assert (=> b!1409647 e!797721))

(declare-fun res!947472 () Bool)

(assert (=> b!1409647 (=> (not res!947472) (not e!797721))))

(assert (=> b!1409647 (= res!947472 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47620 0))(
  ( (Unit!47621) )
))
(declare-fun lt!620769 () Unit!47620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47620)

(assert (=> b!1409647 (= lt!620769 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409647 (= lt!620768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840) (select (arr!46515 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409643 () Bool)

(declare-fun res!947476 () Bool)

(assert (=> b!1409643 (=> (not res!947476) (not e!797722))))

(assert (=> b!1409643 (= res!947476 (and (= (size!47066 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47066 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47066 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947471 () Bool)

(assert (=> start!121280 (=> (not res!947471) (not e!797722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121280 (= res!947471 (validMask!0 mask!2840))))

(assert (=> start!121280 e!797722))

(assert (=> start!121280 true))

(declare-fun array_inv!35460 (array!96352) Bool)

(assert (=> start!121280 (array_inv!35460 a!2901)))

(assert (= (and start!121280 res!947471) b!1409643))

(assert (= (and b!1409643 res!947476) b!1409646))

(assert (= (and b!1409646 res!947473) b!1409642))

(assert (= (and b!1409642 res!947475) b!1409640))

(assert (= (and b!1409640 res!947478) b!1409644))

(assert (= (and b!1409644 res!947474) b!1409647))

(assert (= (and b!1409647 res!947472) b!1409641))

(assert (= (and b!1409647 (not res!947477)) b!1409645))

(declare-fun m!1299535 () Bool)

(assert (=> b!1409645 m!1299535))

(declare-fun m!1299537 () Bool)

(assert (=> b!1409645 m!1299537))

(assert (=> b!1409645 m!1299537))

(declare-fun m!1299539 () Bool)

(assert (=> b!1409645 m!1299539))

(assert (=> b!1409645 m!1299539))

(assert (=> b!1409645 m!1299537))

(declare-fun m!1299541 () Bool)

(assert (=> b!1409645 m!1299541))

(declare-fun m!1299543 () Bool)

(assert (=> b!1409646 m!1299543))

(assert (=> b!1409646 m!1299543))

(declare-fun m!1299545 () Bool)

(assert (=> b!1409646 m!1299545))

(declare-fun m!1299547 () Bool)

(assert (=> start!121280 m!1299547))

(declare-fun m!1299549 () Bool)

(assert (=> start!121280 m!1299549))

(declare-fun m!1299551 () Bool)

(assert (=> b!1409640 m!1299551))

(declare-fun m!1299553 () Bool)

(assert (=> b!1409644 m!1299553))

(declare-fun m!1299555 () Bool)

(assert (=> b!1409641 m!1299555))

(assert (=> b!1409641 m!1299555))

(declare-fun m!1299557 () Bool)

(assert (=> b!1409641 m!1299557))

(assert (=> b!1409647 m!1299555))

(declare-fun m!1299559 () Bool)

(assert (=> b!1409647 m!1299559))

(assert (=> b!1409647 m!1299555))

(declare-fun m!1299561 () Bool)

(assert (=> b!1409647 m!1299561))

(assert (=> b!1409647 m!1299559))

(assert (=> b!1409647 m!1299555))

(declare-fun m!1299563 () Bool)

(assert (=> b!1409647 m!1299563))

(declare-fun m!1299565 () Bool)

(assert (=> b!1409647 m!1299565))

(assert (=> b!1409642 m!1299555))

(assert (=> b!1409642 m!1299555))

(declare-fun m!1299567 () Bool)

(assert (=> b!1409642 m!1299567))

(push 1)

(assert (not b!1409645))

(assert (not b!1409644))

(assert (not b!1409640))

(assert (not b!1409641))

(assert (not b!1409647))

(assert (not start!121280))

(assert (not b!1409642))

(assert (not b!1409646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1409680 () Bool)

(declare-fun e!797750 () Bool)

(declare-fun contains!9818 (List!33214 (_ BitVec 64)) Bool)

(assert (=> b!1409680 (= e!797750 (contains!9818 Nil!33211 (select (arr!46515 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67016 () Bool)

(declare-fun call!67019 () Bool)

(declare-fun c!130561 () Bool)

(assert (=> bm!67016 (= call!67019 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130561 (Cons!33210 (select (arr!46515 a!2901) #b00000000000000000000000000000000) Nil!33211) Nil!33211)))))

(declare-fun b!1409681 () Bool)

(declare-fun e!797749 () Bool)

(declare-fun e!797751 () Bool)

(assert (=> b!1409681 (= e!797749 e!797751)))

(declare-fun res!947497 () Bool)

(assert (=> b!1409681 (=> (not res!947497) (not e!797751))))

(assert (=> b!1409681 (= res!947497 (not e!797750))))

(declare-fun res!947498 () Bool)

(assert (=> b!1409681 (=> (not res!947498) (not e!797750))))

(assert (=> b!1409681 (= res!947498 (validKeyInArray!0 (select (arr!46515 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409682 () Bool)

(declare-fun e!797752 () Bool)

(assert (=> b!1409682 (= e!797752 call!67019)))

(declare-fun b!1409683 () Bool)

(assert (=> b!1409683 (= e!797751 e!797752)))

(assert (=> b!1409683 (= c!130561 (validKeyInArray!0 (select (arr!46515 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151665 () Bool)

(declare-fun res!947499 () Bool)

(assert (=> d!151665 (=> res!947499 e!797749)))

(assert (=> d!151665 (= res!947499 (bvsge #b00000000000000000000000000000000 (size!47066 a!2901)))))

(assert (=> d!151665 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33211) e!797749)))

(declare-fun b!1409684 () Bool)

(assert (=> b!1409684 (= e!797752 call!67019)))

(assert (= (and d!151665 (not res!947499)) b!1409681))

(assert (= (and b!1409681 res!947498) b!1409680))

(assert (= (and b!1409681 res!947497) b!1409683))

(assert (= (and b!1409683 c!130561) b!1409682))

(assert (= (and b!1409683 (not c!130561)) b!1409684))

(assert (= (or b!1409682 b!1409684) bm!67016))

(declare-fun m!1299581 () Bool)

(assert (=> b!1409680 m!1299581))

(assert (=> b!1409680 m!1299581))

(declare-fun m!1299583 () Bool)

(assert (=> b!1409680 m!1299583))

(assert (=> bm!67016 m!1299581))

(declare-fun m!1299585 () Bool)

(assert (=> bm!67016 m!1299585))

(assert (=> b!1409681 m!1299581))

(assert (=> b!1409681 m!1299581))

(declare-fun m!1299587 () Bool)

(assert (=> b!1409681 m!1299587))

(assert (=> b!1409683 m!1299581))

(assert (=> b!1409683 m!1299581))

(assert (=> b!1409683 m!1299587))

(assert (=> b!1409644 d!151665))

(declare-fun b!1409710 () Bool)

(declare-fun e!797774 () Bool)

(declare-fun e!797772 () Bool)

(assert (=> b!1409710 (= e!797774 e!797772)))

(declare-fun c!130568 () Bool)

(assert (=> b!1409710 (= c!130568 (validKeyInArray!0 (select (arr!46515 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151673 () Bool)

(declare-fun res!947514 () Bool)

(assert (=> d!151673 (=> res!947514 e!797774)))

(assert (=> d!151673 (= res!947514 (bvsge #b00000000000000000000000000000000 (size!47066 a!2901)))))

(assert (=> d!151673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!797774)))

(declare-fun b!1409711 () Bool)

(declare-fun call!67026 () Bool)

(assert (=> b!1409711 (= e!797772 call!67026)))

(declare-fun bm!67023 () Bool)

(assert (=> bm!67023 (= call!67026 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409712 () Bool)

(declare-fun e!797773 () Bool)

(assert (=> b!1409712 (= e!797772 e!797773)))

(declare-fun lt!620798 () (_ BitVec 64))

(assert (=> b!1409712 (= lt!620798 (select (arr!46515 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!620799 () Unit!47620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96352 (_ BitVec 64) (_ BitVec 32)) Unit!47620)

(assert (=> b!1409712 (= lt!620799 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620798 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1409712 (arrayContainsKey!0 a!2901 lt!620798 #b00000000000000000000000000000000)))

(declare-fun lt!620800 () Unit!47620)

(assert (=> b!1409712 (= lt!620800 lt!620799)))

(declare-fun res!947513 () Bool)

(assert (=> b!1409712 (= res!947513 (= (seekEntryOrOpen!0 (select (arr!46515 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10848 #b00000000000000000000000000000000)))))

(assert (=> b!1409712 (=> (not res!947513) (not e!797773))))

(declare-fun b!1409713 () Bool)

(assert (=> b!1409713 (= e!797773 call!67026)))

(assert (= (and d!151673 (not res!947514)) b!1409710))

(assert (= (and b!1409710 c!130568) b!1409712))

(assert (= (and b!1409710 (not c!130568)) b!1409711))

(assert (= (and b!1409712 res!947513) b!1409713))

(assert (= (or b!1409713 b!1409711) bm!67023))

(assert (=> b!1409710 m!1299581))

(assert (=> b!1409710 m!1299581))

(assert (=> b!1409710 m!1299587))

(declare-fun m!1299601 () Bool)

(assert (=> bm!67023 m!1299601))

(assert (=> b!1409712 m!1299581))

(declare-fun m!1299603 () Bool)

(assert (=> b!1409712 m!1299603))

(declare-fun m!1299605 () Bool)

(assert (=> b!1409712 m!1299605))

(assert (=> b!1409712 m!1299581))

(declare-fun m!1299607 () Bool)

(assert (=> b!1409712 m!1299607))

(assert (=> b!1409640 d!151673))

(declare-fun e!797812 () SeekEntryResult!10848)

(declare-fun b!1409781 () Bool)

(assert (=> b!1409781 (= e!797812 (Intermediate!10848 false (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409782 () Bool)

(declare-fun e!797816 () Bool)

(declare-fun e!797814 () Bool)

(assert (=> b!1409782 (= e!797816 e!797814)))

(declare-fun res!947532 () Bool)

(declare-fun lt!620827 () SeekEntryResult!10848)

(assert (=> b!1409782 (= res!947532 (and (is-Intermediate!10848 lt!620827) (not (undefined!11660 lt!620827)) (bvslt (x!127356 lt!620827) #b01111111111111111111111111111110) (bvsge (x!127356 lt!620827) #b00000000000000000000000000000000) (bvsge (x!127356 lt!620827) #b00000000000000000000000000000000)))))

(assert (=> b!1409782 (=> (not res!947532) (not e!797814))))

(declare-fun b!1409783 () Bool)

(assert (=> b!1409783 (and (bvsge (index!45770 lt!620827) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620827) (size!47066 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)))))))

(declare-fun res!947533 () Bool)

(assert (=> b!1409783 (= res!947533 (= (select (arr!46515 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901))) (index!45770 lt!620827)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797813 () Bool)

(assert (=> b!1409783 (=> res!947533 e!797813)))

(declare-fun b!1409784 () Bool)

(assert (=> b!1409784 (= e!797816 (bvsge (x!127356 lt!620827) #b01111111111111111111111111111110))))

(declare-fun d!151681 () Bool)

(assert (=> d!151681 e!797816))

(declare-fun c!130595 () Bool)

(assert (=> d!151681 (= c!130595 (and (is-Intermediate!10848 lt!620827) (undefined!11660 lt!620827)))))

(declare-fun e!797815 () SeekEntryResult!10848)

(assert (=> d!151681 (= lt!620827 e!797815)))

(declare-fun c!130594 () Bool)

(assert (=> d!151681 (= c!130594 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620826 () (_ BitVec 64))

(assert (=> d!151681 (= lt!620826 (select (arr!46515 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901))) (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151681 (validMask!0 mask!2840)))

(assert (=> d!151681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)) mask!2840) lt!620827)))

(declare-fun b!1409785 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409785 (= e!797812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)) mask!2840))))

(declare-fun b!1409786 () Bool)

(assert (=> b!1409786 (and (bvsge (index!45770 lt!620827) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620827) (size!47066 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)))))))

(declare-fun res!947534 () Bool)

(assert (=> b!1409786 (= res!947534 (= (select (arr!46515 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901))) (index!45770 lt!620827)) (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1409786 (=> res!947534 e!797813)))

(assert (=> b!1409786 (= e!797814 e!797813)))

(declare-fun b!1409787 () Bool)

(assert (=> b!1409787 (and (bvsge (index!45770 lt!620827) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620827) (size!47066 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901)))))))

(assert (=> b!1409787 (= e!797813 (= (select (arr!46515 (array!96353 (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47066 a!2901))) (index!45770 lt!620827)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409788 () Bool)

(assert (=> b!1409788 (= e!797815 (Intermediate!10848 true (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409789 () Bool)

(assert (=> b!1409789 (= e!797815 e!797812)))

(declare-fun c!130596 () Bool)

(assert (=> b!1409789 (= c!130596 (or (= lt!620826 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!620826 lt!620826) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151681 c!130594) b!1409788))

(assert (= (and d!151681 (not c!130594)) b!1409789))

(assert (= (and b!1409789 c!130596) b!1409781))

(assert (= (and b!1409789 (not c!130596)) b!1409785))

(assert (= (and d!151681 c!130595) b!1409784))

(assert (= (and d!151681 (not c!130595)) b!1409782))

(assert (= (and b!1409782 res!947532) b!1409786))

(assert (= (and b!1409786 (not res!947534)) b!1409783))

(assert (= (and b!1409783 (not res!947533)) b!1409787))

(declare-fun m!1299635 () Bool)

(assert (=> b!1409787 m!1299635))

(assert (=> b!1409783 m!1299635))

(assert (=> d!151681 m!1299539))

(declare-fun m!1299637 () Bool)

(assert (=> d!151681 m!1299637))

(assert (=> d!151681 m!1299547))

(assert (=> b!1409786 m!1299635))

(assert (=> b!1409785 m!1299539))

(declare-fun m!1299639 () Bool)

(assert (=> b!1409785 m!1299639))

(assert (=> b!1409785 m!1299639))

(assert (=> b!1409785 m!1299537))

(declare-fun m!1299641 () Bool)

(assert (=> b!1409785 m!1299641))

(assert (=> b!1409645 d!151681))

(declare-fun d!151691 () Bool)

(declare-fun lt!620839 () (_ BitVec 32))

(declare-fun lt!620838 () (_ BitVec 32))

(assert (=> d!151691 (= lt!620839 (bvmul (bvxor lt!620838 (bvlshr lt!620838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151691 (= lt!620838 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151691 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947536 (let ((h!34475 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127360 (bvmul (bvxor h!34475 (bvlshr h!34475 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127360 (bvlshr x!127360 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947536 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947536 #b00000000000000000000000000000000))))))

(assert (=> d!151691 (= (toIndex!0 (select (store (arr!46515 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!620839 (bvlshr lt!620839 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409645 d!151691))

(declare-fun b!1409790 () Bool)

(declare-fun e!797819 () Bool)

(declare-fun e!797817 () Bool)

(assert (=> b!1409790 (= e!797819 e!797817)))

(declare-fun c!130597 () Bool)

(assert (=> b!1409790 (= c!130597 (validKeyInArray!0 (select (arr!46515 a!2901) j!112)))))

(declare-fun d!151697 () Bool)

(declare-fun res!947538 () Bool)

(assert (=> d!151697 (=> res!947538 e!797819)))

(assert (=> d!151697 (= res!947538 (bvsge j!112 (size!47066 a!2901)))))

(assert (=> d!151697 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!797819)))

(declare-fun b!1409791 () Bool)

(declare-fun call!67028 () Bool)

(assert (=> b!1409791 (= e!797817 call!67028)))

(declare-fun bm!67025 () Bool)

(assert (=> bm!67025 (= call!67028 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409792 () Bool)

(declare-fun e!797818 () Bool)

(assert (=> b!1409792 (= e!797817 e!797818)))

(declare-fun lt!620840 () (_ BitVec 64))

(assert (=> b!1409792 (= lt!620840 (select (arr!46515 a!2901) j!112))))

(declare-fun lt!620841 () Unit!47620)

(assert (=> b!1409792 (= lt!620841 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620840 j!112))))

(assert (=> b!1409792 (arrayContainsKey!0 a!2901 lt!620840 #b00000000000000000000000000000000)))

(declare-fun lt!620842 () Unit!47620)

(assert (=> b!1409792 (= lt!620842 lt!620841)))

(declare-fun res!947537 () Bool)

(assert (=> b!1409792 (= res!947537 (= (seekEntryOrOpen!0 (select (arr!46515 a!2901) j!112) a!2901 mask!2840) (Found!10848 j!112)))))

(assert (=> b!1409792 (=> (not res!947537) (not e!797818))))

(declare-fun b!1409793 () Bool)

(assert (=> b!1409793 (= e!797818 call!67028)))

(assert (= (and d!151697 (not res!947538)) b!1409790))

(assert (= (and b!1409790 c!130597) b!1409792))

(assert (= (and b!1409790 (not c!130597)) b!1409791))

(assert (= (and b!1409792 res!947537) b!1409793))

(assert (= (or b!1409793 b!1409791) bm!67025))

(assert (=> b!1409790 m!1299555))

(assert (=> b!1409790 m!1299555))

(assert (=> b!1409790 m!1299567))

(declare-fun m!1299643 () Bool)

(assert (=> bm!67025 m!1299643))

(assert (=> b!1409792 m!1299555))

(declare-fun m!1299645 () Bool)

(assert (=> b!1409792 m!1299645))

(declare-fun m!1299647 () Bool)

(assert (=> b!1409792 m!1299647))

(assert (=> b!1409792 m!1299555))

(assert (=> b!1409792 m!1299557))

(assert (=> b!1409647 d!151697))

(declare-fun d!151699 () Bool)

(assert (=> d!151699 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620845 () Unit!47620)

(declare-fun choose!38 (array!96352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47620)

(assert (=> d!151699 (= lt!620845 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151699 (validMask!0 mask!2840)))

(assert (=> d!151699 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!620845)))

(declare-fun bs!41101 () Bool)

(assert (= bs!41101 d!151699))

(assert (=> bs!41101 m!1299565))

(declare-fun m!1299649 () Bool)

(assert (=> bs!41101 m!1299649))

(assert (=> bs!41101 m!1299547))

(assert (=> b!1409647 d!151699))

(declare-fun b!1409794 () Bool)

(declare-fun e!797820 () SeekEntryResult!10848)

(assert (=> b!1409794 (= e!797820 (Intermediate!10848 false (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409795 () Bool)

(declare-fun e!797824 () Bool)

(declare-fun e!797822 () Bool)

(assert (=> b!1409795 (= e!797824 e!797822)))

(declare-fun res!947539 () Bool)

(declare-fun lt!620847 () SeekEntryResult!10848)

(assert (=> b!1409795 (= res!947539 (and (is-Intermediate!10848 lt!620847) (not (undefined!11660 lt!620847)) (bvslt (x!127356 lt!620847) #b01111111111111111111111111111110) (bvsge (x!127356 lt!620847) #b00000000000000000000000000000000) (bvsge (x!127356 lt!620847) #b00000000000000000000000000000000)))))

(assert (=> b!1409795 (=> (not res!947539) (not e!797822))))

(declare-fun b!1409796 () Bool)

(assert (=> b!1409796 (and (bvsge (index!45770 lt!620847) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620847) (size!47066 a!2901)))))

(declare-fun res!947540 () Bool)

(assert (=> b!1409796 (= res!947540 (= (select (arr!46515 a!2901) (index!45770 lt!620847)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797821 () Bool)

(assert (=> b!1409796 (=> res!947540 e!797821)))

(declare-fun b!1409797 () Bool)

(assert (=> b!1409797 (= e!797824 (bvsge (x!127356 lt!620847) #b01111111111111111111111111111110))))

(declare-fun d!151701 () Bool)

(assert (=> d!151701 e!797824))

(declare-fun c!130599 () Bool)

(assert (=> d!151701 (= c!130599 (and (is-Intermediate!10848 lt!620847) (undefined!11660 lt!620847)))))

(declare-fun e!797823 () SeekEntryResult!10848)

(assert (=> d!151701 (= lt!620847 e!797823)))

(declare-fun c!130598 () Bool)

(assert (=> d!151701 (= c!130598 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620846 () (_ BitVec 64))

(assert (=> d!151701 (= lt!620846 (select (arr!46515 a!2901) (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840)))))

(assert (=> d!151701 (validMask!0 mask!2840)))

(assert (=> d!151701 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840) (select (arr!46515 a!2901) j!112) a!2901 mask!2840) lt!620847)))

(declare-fun b!1409798 () Bool)

(assert (=> b!1409798 (= e!797820 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46515 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409799 () Bool)

(assert (=> b!1409799 (and (bvsge (index!45770 lt!620847) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620847) (size!47066 a!2901)))))

(declare-fun res!947541 () Bool)

(assert (=> b!1409799 (= res!947541 (= (select (arr!46515 a!2901) (index!45770 lt!620847)) (select (arr!46515 a!2901) j!112)))))

(assert (=> b!1409799 (=> res!947541 e!797821)))

(assert (=> b!1409799 (= e!797822 e!797821)))

(declare-fun b!1409800 () Bool)

(assert (=> b!1409800 (and (bvsge (index!45770 lt!620847) #b00000000000000000000000000000000) (bvslt (index!45770 lt!620847) (size!47066 a!2901)))))

(assert (=> b!1409800 (= e!797821 (= (select (arr!46515 a!2901) (index!45770 lt!620847)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409801 () Bool)

(assert (=> b!1409801 (= e!797823 (Intermediate!10848 true (toIndex!0 (select (arr!46515 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409802 () Bool)

(assert (=> b!1409802 (= e!797823 e!797820)))

(declare-fun c!130600 () Bool)

(assert (=> b!1409802 (= c!130600 (or (= lt!620846 (select (arr!46515 a!2901) j!112)) (= (bvadd lt!620846 lt!620846) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!151701 c!130598) b!1409801))

(assert (= (and d!151701 (not c!130598)) b!1409802))

(assert (= (and b!1409802 c!130600) b!1409794))

(assert (= (and b!1409802 (not c!130600)) b!1409798))

(assert (= (and d!151701 c!130599) b!1409797))

(assert (= (and d!151701 (not c!130599)) b!1409795))

(assert (= (and b!1409795 res!947539) b!1409799))

(assert (= (and b!1409799 (not res!947541)) b!1409796))

(assert (= (and b!1409796 (not res!947540)) b!1409800))

(declare-fun m!1299651 () Bool)

(assert (=> b!1409800 m!1299651))

(assert (=> b!1409796 m!1299651))

(assert (=> d!151701 m!1299559))

(declare-fun m!1299653 () Bool)

(assert (=> d!151701 m!1299653))

(assert (=> d!151701 m!1299547))

(assert (=> b!1409799 m!1299651))

(assert (=> b!1409798 m!1299559))

(declare-fun m!1299655 () Bool)

(assert (=> b!1409798 m!1299655))

(assert (=> b!1409798 m!1299655))

(assert (=> b!1409798 m!1299555))

(declare-fun m!1299657 () Bool)

(assert (=> b!1409798 m!1299657))

(assert (=> b!1409647 d!151701))

(declare-fun d!151703 () Bool)

(declare-fun lt!620849 () (_ BitVec 32))

(declare-fun lt!620848 () (_ BitVec 32))

(assert (=> d!151703 (= lt!620849 (bvmul (bvxor lt!620848 (bvlshr lt!620848 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151703 (= lt!620848 ((_ extract 31 0) (bvand (bvxor (select (arr!46515 a!2901) j!112) (bvlshr (select (arr!46515 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151703 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947536 (let ((h!34475 ((_ extract 31 0) (bvand (bvxor (select (arr!46515 a!2901) j!112) (bvlshr (select (arr!46515 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127360 (bvmul (bvxor h!34475 (bvlshr h!34475 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127360 (bvlshr x!127360 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947536 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947536 #b00000000000000000000000000000000))))))

