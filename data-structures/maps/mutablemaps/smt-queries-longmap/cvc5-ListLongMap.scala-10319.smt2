; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121276 () Bool)

(assert start!121276)

(declare-fun b!1409592 () Bool)

(declare-fun res!947428 () Bool)

(declare-fun e!797697 () Bool)

(assert (=> b!1409592 (=> (not res!947428) (not e!797697))))

(declare-datatypes ((array!96348 0))(
  ( (array!96349 (arr!46513 (Array (_ BitVec 32) (_ BitVec 64))) (size!47064 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96348)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409592 (= res!947428 (validKeyInArray!0 (select (arr!46513 a!2901) j!112)))))

(declare-fun b!1409593 () Bool)

(declare-fun e!797699 () Bool)

(assert (=> b!1409593 (= e!797697 (not e!797699))))

(declare-fun res!947424 () Bool)

(assert (=> b!1409593 (=> res!947424 e!797699)))

(declare-datatypes ((SeekEntryResult!10846 0))(
  ( (MissingZero!10846 (index!45760 (_ BitVec 32))) (Found!10846 (index!45761 (_ BitVec 32))) (Intermediate!10846 (undefined!11658 Bool) (index!45762 (_ BitVec 32)) (x!127354 (_ BitVec 32))) (Undefined!10846) (MissingVacant!10846 (index!45763 (_ BitVec 32))) )
))
(declare-fun lt!620751 () SeekEntryResult!10846)

(assert (=> b!1409593 (= res!947424 (or (not (is-Intermediate!10846 lt!620751)) (undefined!11658 lt!620751)))))

(declare-fun e!797696 () Bool)

(assert (=> b!1409593 e!797696))

(declare-fun res!947430 () Bool)

(assert (=> b!1409593 (=> (not res!947430) (not e!797696))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96348 (_ BitVec 32)) Bool)

(assert (=> b!1409593 (= res!947430 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47616 0))(
  ( (Unit!47617) )
))
(declare-fun lt!620752 () Unit!47616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47616)

(assert (=> b!1409593 (= lt!620752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96348 (_ BitVec 32)) SeekEntryResult!10846)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409593 (= lt!620751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) (select (arr!46513 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409595 () Bool)

(declare-fun res!947426 () Bool)

(assert (=> b!1409595 (=> (not res!947426) (not e!797697))))

(declare-datatypes ((List!33212 0))(
  ( (Nil!33209) (Cons!33208 (h!34471 (_ BitVec 64)) (t!47913 List!33212)) )
))
(declare-fun arrayNoDuplicates!0 (array!96348 (_ BitVec 32) List!33212) Bool)

(assert (=> b!1409595 (= res!947426 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33209))))

(declare-fun b!1409596 () Bool)

(declare-fun lt!620750 () SeekEntryResult!10846)

(assert (=> b!1409596 (= e!797699 (or (= lt!620751 lt!620750) (not (is-Intermediate!10846 lt!620750)) (and (bvsge (x!127354 lt!620751) #b00000000000000000000000000000000) (bvsle (x!127354 lt!620751) #b01111111111111111111111111111110))))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409596 (= lt!620750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)) mask!2840))))

(declare-fun b!1409597 () Bool)

(declare-fun res!947425 () Bool)

(assert (=> b!1409597 (=> (not res!947425) (not e!797697))))

(assert (=> b!1409597 (= res!947425 (validKeyInArray!0 (select (arr!46513 a!2901) i!1037)))))

(declare-fun b!1409598 () Bool)

(declare-fun res!947423 () Bool)

(assert (=> b!1409598 (=> (not res!947423) (not e!797697))))

(assert (=> b!1409598 (= res!947423 (and (= (size!47064 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47064 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47064 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409599 () Bool)

(declare-fun res!947429 () Bool)

(assert (=> b!1409599 (=> (not res!947429) (not e!797697))))

(assert (=> b!1409599 (= res!947429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!947427 () Bool)

(assert (=> start!121276 (=> (not res!947427) (not e!797697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121276 (= res!947427 (validMask!0 mask!2840))))

(assert (=> start!121276 e!797697))

(assert (=> start!121276 true))

(declare-fun array_inv!35458 (array!96348) Bool)

(assert (=> start!121276 (array_inv!35458 a!2901)))

(declare-fun b!1409594 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96348 (_ BitVec 32)) SeekEntryResult!10846)

(assert (=> b!1409594 (= e!797696 (= (seekEntryOrOpen!0 (select (arr!46513 a!2901) j!112) a!2901 mask!2840) (Found!10846 j!112)))))

(assert (= (and start!121276 res!947427) b!1409598))

(assert (= (and b!1409598 res!947423) b!1409597))

(assert (= (and b!1409597 res!947425) b!1409592))

(assert (= (and b!1409592 res!947428) b!1409599))

(assert (= (and b!1409599 res!947429) b!1409595))

(assert (= (and b!1409595 res!947426) b!1409593))

(assert (= (and b!1409593 res!947430) b!1409594))

(assert (= (and b!1409593 (not res!947424)) b!1409596))

(declare-fun m!1299467 () Bool)

(assert (=> b!1409597 m!1299467))

(assert (=> b!1409597 m!1299467))

(declare-fun m!1299469 () Bool)

(assert (=> b!1409597 m!1299469))

(declare-fun m!1299471 () Bool)

(assert (=> start!121276 m!1299471))

(declare-fun m!1299473 () Bool)

(assert (=> start!121276 m!1299473))

(declare-fun m!1299475 () Bool)

(assert (=> b!1409592 m!1299475))

(assert (=> b!1409592 m!1299475))

(declare-fun m!1299477 () Bool)

(assert (=> b!1409592 m!1299477))

(declare-fun m!1299479 () Bool)

(assert (=> b!1409599 m!1299479))

(declare-fun m!1299481 () Bool)

(assert (=> b!1409596 m!1299481))

(declare-fun m!1299483 () Bool)

(assert (=> b!1409596 m!1299483))

(assert (=> b!1409596 m!1299483))

(declare-fun m!1299485 () Bool)

(assert (=> b!1409596 m!1299485))

(assert (=> b!1409596 m!1299485))

(assert (=> b!1409596 m!1299483))

(declare-fun m!1299487 () Bool)

(assert (=> b!1409596 m!1299487))

(assert (=> b!1409593 m!1299475))

(declare-fun m!1299489 () Bool)

(assert (=> b!1409593 m!1299489))

(assert (=> b!1409593 m!1299475))

(declare-fun m!1299491 () Bool)

(assert (=> b!1409593 m!1299491))

(assert (=> b!1409593 m!1299489))

(assert (=> b!1409593 m!1299475))

(declare-fun m!1299493 () Bool)

(assert (=> b!1409593 m!1299493))

(declare-fun m!1299495 () Bool)

(assert (=> b!1409593 m!1299495))

(assert (=> b!1409594 m!1299475))

(assert (=> b!1409594 m!1299475))

(declare-fun m!1299497 () Bool)

(assert (=> b!1409594 m!1299497))

(declare-fun m!1299499 () Bool)

(assert (=> b!1409595 m!1299499))

(push 1)

(assert (not b!1409596))

(assert (not b!1409595))

(assert (not b!1409592))

(assert (not b!1409593))

(assert (not b!1409594))

(assert (not b!1409597))

(assert (not b!1409599))

(assert (not start!121276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151667 () Bool)

(declare-fun res!947507 () Bool)

(declare-fun e!797763 () Bool)

(assert (=> d!151667 (=> res!947507 e!797763)))

(assert (=> d!151667 (= res!947507 (bvsge j!112 (size!47064 a!2901)))))

(assert (=> d!151667 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!797763)))

(declare-fun b!1409698 () Bool)

(declare-fun e!797764 () Bool)

(declare-fun e!797765 () Bool)

(assert (=> b!1409698 (= e!797764 e!797765)))

(declare-fun lt!620786 () (_ BitVec 64))

(assert (=> b!1409698 (= lt!620786 (select (arr!46513 a!2901) j!112))))

(declare-fun lt!620787 () Unit!47616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96348 (_ BitVec 64) (_ BitVec 32)) Unit!47616)

(assert (=> b!1409698 (= lt!620787 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620786 j!112))))

(declare-fun arrayContainsKey!0 (array!96348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1409698 (arrayContainsKey!0 a!2901 lt!620786 #b00000000000000000000000000000000)))

(declare-fun lt!620788 () Unit!47616)

(assert (=> b!1409698 (= lt!620788 lt!620787)))

(declare-fun res!947508 () Bool)

(assert (=> b!1409698 (= res!947508 (= (seekEntryOrOpen!0 (select (arr!46513 a!2901) j!112) a!2901 mask!2840) (Found!10846 j!112)))))

(assert (=> b!1409698 (=> (not res!947508) (not e!797765))))

(declare-fun call!67023 () Bool)

(declare-fun bm!67020 () Bool)

(assert (=> bm!67020 (= call!67023 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409699 () Bool)

(assert (=> b!1409699 (= e!797765 call!67023)))

(declare-fun b!1409700 () Bool)

(assert (=> b!1409700 (= e!797763 e!797764)))

(declare-fun c!130565 () Bool)

(assert (=> b!1409700 (= c!130565 (validKeyInArray!0 (select (arr!46513 a!2901) j!112)))))

(declare-fun b!1409701 () Bool)

(assert (=> b!1409701 (= e!797764 call!67023)))

(assert (= (and d!151667 (not res!947507)) b!1409700))

(assert (= (and b!1409700 c!130565) b!1409698))

(assert (= (and b!1409700 (not c!130565)) b!1409701))

(assert (= (and b!1409698 res!947508) b!1409699))

(assert (= (or b!1409699 b!1409701) bm!67020))

(assert (=> b!1409698 m!1299475))

(declare-fun m!1299593 () Bool)

(assert (=> b!1409698 m!1299593))

(declare-fun m!1299595 () Bool)

(assert (=> b!1409698 m!1299595))

(assert (=> b!1409698 m!1299475))

(assert (=> b!1409698 m!1299497))

(declare-fun m!1299597 () Bool)

(assert (=> bm!67020 m!1299597))

(assert (=> b!1409700 m!1299475))

(assert (=> b!1409700 m!1299475))

(assert (=> b!1409700 m!1299477))

(assert (=> b!1409593 d!151667))

(declare-fun d!151677 () Bool)

(assert (=> d!151677 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620797 () Unit!47616)

(declare-fun choose!38 (array!96348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47616)

(assert (=> d!151677 (= lt!620797 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151677 (validMask!0 mask!2840)))

(assert (=> d!151677 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!620797)))

(declare-fun bs!41099 () Bool)

(assert (= bs!41099 d!151677))

(assert (=> bs!41099 m!1299495))

(declare-fun m!1299599 () Bool)

(assert (=> bs!41099 m!1299599))

(assert (=> bs!41099 m!1299471))

(assert (=> b!1409593 d!151677))

(declare-fun b!1409772 () Bool)

(declare-fun e!797809 () SeekEntryResult!10846)

(assert (=> b!1409772 (= e!797809 (Intermediate!10846 true (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409773 () Bool)

(declare-fun e!797808 () Bool)

(declare-fun lt!620825 () SeekEntryResult!10846)

(assert (=> b!1409773 (= e!797808 (bvsge (x!127354 lt!620825) #b01111111111111111111111111111110))))

(declare-fun b!1409774 () Bool)

(assert (=> b!1409774 (and (bvsge (index!45762 lt!620825) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620825) (size!47064 a!2901)))))

(declare-fun res!947530 () Bool)

(assert (=> b!1409774 (= res!947530 (= (select (arr!46513 a!2901) (index!45762 lt!620825)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797807 () Bool)

(assert (=> b!1409774 (=> res!947530 e!797807)))

(declare-fun b!1409775 () Bool)

(assert (=> b!1409775 (and (bvsge (index!45762 lt!620825) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620825) (size!47064 a!2901)))))

(declare-fun res!947529 () Bool)

(assert (=> b!1409775 (= res!947529 (= (select (arr!46513 a!2901) (index!45762 lt!620825)) (select (arr!46513 a!2901) j!112)))))

(assert (=> b!1409775 (=> res!947529 e!797807)))

(declare-fun e!797811 () Bool)

(assert (=> b!1409775 (= e!797811 e!797807)))

(declare-fun d!151679 () Bool)

(assert (=> d!151679 e!797808))

(declare-fun c!130591 () Bool)

(assert (=> d!151679 (= c!130591 (and (is-Intermediate!10846 lt!620825) (undefined!11658 lt!620825)))))

(assert (=> d!151679 (= lt!620825 e!797809)))

(declare-fun c!130592 () Bool)

(assert (=> d!151679 (= c!130592 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620824 () (_ BitVec 64))

(assert (=> d!151679 (= lt!620824 (select (arr!46513 a!2901) (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840)))))

(assert (=> d!151679 (validMask!0 mask!2840)))

(assert (=> d!151679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) (select (arr!46513 a!2901) j!112) a!2901 mask!2840) lt!620825)))

(declare-fun b!1409776 () Bool)

(assert (=> b!1409776 (and (bvsge (index!45762 lt!620825) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620825) (size!47064 a!2901)))))

(assert (=> b!1409776 (= e!797807 (= (select (arr!46513 a!2901) (index!45762 lt!620825)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409777 () Bool)

(declare-fun e!797810 () SeekEntryResult!10846)

(assert (=> b!1409777 (= e!797809 e!797810)))

(declare-fun c!130593 () Bool)

(assert (=> b!1409777 (= c!130593 (or (= lt!620824 (select (arr!46513 a!2901) j!112)) (= (bvadd lt!620824 lt!620824) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1409778 () Bool)

(assert (=> b!1409778 (= e!797808 e!797811)))

(declare-fun res!947531 () Bool)

(assert (=> b!1409778 (= res!947531 (and (is-Intermediate!10846 lt!620825) (not (undefined!11658 lt!620825)) (bvslt (x!127354 lt!620825) #b01111111111111111111111111111110) (bvsge (x!127354 lt!620825) #b00000000000000000000000000000000) (bvsge (x!127354 lt!620825) #b00000000000000000000000000000000)))))

(assert (=> b!1409778 (=> (not res!947531) (not e!797811))))

(declare-fun b!1409779 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409779 (= e!797810 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46513 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409780 () Bool)

(assert (=> b!1409780 (= e!797810 (Intermediate!10846 false (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151679 c!130592) b!1409772))

(assert (= (and d!151679 (not c!130592)) b!1409777))

(assert (= (and b!1409777 c!130593) b!1409780))

(assert (= (and b!1409777 (not c!130593)) b!1409779))

(assert (= (and d!151679 c!130591) b!1409773))

(assert (= (and d!151679 (not c!130591)) b!1409778))

(assert (= (and b!1409778 res!947531) b!1409775))

(assert (= (and b!1409775 (not res!947529)) b!1409774))

(assert (= (and b!1409774 (not res!947530)) b!1409776))

(declare-fun m!1299627 () Bool)

(assert (=> b!1409775 m!1299627))

(assert (=> b!1409776 m!1299627))

(assert (=> d!151679 m!1299489))

(declare-fun m!1299629 () Bool)

(assert (=> d!151679 m!1299629))

(assert (=> d!151679 m!1299471))

(assert (=> b!1409779 m!1299489))

(declare-fun m!1299631 () Bool)

(assert (=> b!1409779 m!1299631))

(assert (=> b!1409779 m!1299631))

(assert (=> b!1409779 m!1299475))

(declare-fun m!1299633 () Bool)

(assert (=> b!1409779 m!1299633))

(assert (=> b!1409774 m!1299627))

(assert (=> b!1409593 d!151679))

(declare-fun d!151689 () Bool)

(declare-fun lt!620833 () (_ BitVec 32))

(declare-fun lt!620832 () (_ BitVec 32))

(assert (=> d!151689 (= lt!620833 (bvmul (bvxor lt!620832 (bvlshr lt!620832 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151689 (= lt!620832 ((_ extract 31 0) (bvand (bvxor (select (arr!46513 a!2901) j!112) (bvlshr (select (arr!46513 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151689 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947535 (let ((h!34474 ((_ extract 31 0) (bvand (bvxor (select (arr!46513 a!2901) j!112) (bvlshr (select (arr!46513 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127359 (bvmul (bvxor h!34474 (bvlshr h!34474 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127359 (bvlshr x!127359 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947535 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947535 #b00000000000000000000000000000000))))))

(assert (=> d!151689 (= (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) (bvand (bvxor lt!620833 (bvlshr lt!620833 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409593 d!151689))

(declare-fun d!151693 () Bool)

(assert (=> d!151693 (= (validKeyInArray!0 (select (arr!46513 a!2901) j!112)) (and (not (= (select (arr!46513 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46513 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409592 d!151693))

(declare-fun d!151695 () Bool)

(assert (=> d!151695 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121276 d!151695))

(declare-fun d!151709 () Bool)

(assert (=> d!151709 (= (array_inv!35458 a!2901) (bvsge (size!47064 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121276 d!151709))

(declare-fun b!1409869 () Bool)

(declare-fun e!797861 () SeekEntryResult!10846)

(assert (=> b!1409869 (= e!797861 Undefined!10846)))

(declare-fun d!151711 () Bool)

(declare-fun lt!620883 () SeekEntryResult!10846)

(assert (=> d!151711 (and (or (is-Undefined!10846 lt!620883) (not (is-Found!10846 lt!620883)) (and (bvsge (index!45761 lt!620883) #b00000000000000000000000000000000) (bvslt (index!45761 lt!620883) (size!47064 a!2901)))) (or (is-Undefined!10846 lt!620883) (is-Found!10846 lt!620883) (not (is-MissingZero!10846 lt!620883)) (and (bvsge (index!45760 lt!620883) #b00000000000000000000000000000000) (bvslt (index!45760 lt!620883) (size!47064 a!2901)))) (or (is-Undefined!10846 lt!620883) (is-Found!10846 lt!620883) (is-MissingZero!10846 lt!620883) (not (is-MissingVacant!10846 lt!620883)) (and (bvsge (index!45763 lt!620883) #b00000000000000000000000000000000) (bvslt (index!45763 lt!620883) (size!47064 a!2901)))) (or (is-Undefined!10846 lt!620883) (ite (is-Found!10846 lt!620883) (= (select (arr!46513 a!2901) (index!45761 lt!620883)) (select (arr!46513 a!2901) j!112)) (ite (is-MissingZero!10846 lt!620883) (= (select (arr!46513 a!2901) (index!45760 lt!620883)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10846 lt!620883) (= (select (arr!46513 a!2901) (index!45763 lt!620883)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151711 (= lt!620883 e!797861)))

(declare-fun c!130628 () Bool)

(declare-fun lt!620881 () SeekEntryResult!10846)

(assert (=> d!151711 (= c!130628 (and (is-Intermediate!10846 lt!620881) (undefined!11658 lt!620881)))))

(assert (=> d!151711 (= lt!620881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46513 a!2901) j!112) mask!2840) (select (arr!46513 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151711 (validMask!0 mask!2840)))

(assert (=> d!151711 (= (seekEntryOrOpen!0 (select (arr!46513 a!2901) j!112) a!2901 mask!2840) lt!620883)))

(declare-fun b!1409870 () Bool)

(declare-fun c!130630 () Bool)

(declare-fun lt!620882 () (_ BitVec 64))

(assert (=> b!1409870 (= c!130630 (= lt!620882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797860 () SeekEntryResult!10846)

(declare-fun e!797862 () SeekEntryResult!10846)

(assert (=> b!1409870 (= e!797860 e!797862)))

(declare-fun b!1409871 () Bool)

(assert (=> b!1409871 (= e!797862 (MissingZero!10846 (index!45762 lt!620881)))))

(declare-fun b!1409872 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96348 (_ BitVec 32)) SeekEntryResult!10846)

(assert (=> b!1409872 (= e!797862 (seekKeyOrZeroReturnVacant!0 (x!127354 lt!620881) (index!45762 lt!620881) (index!45762 lt!620881) (select (arr!46513 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409873 () Bool)

(assert (=> b!1409873 (= e!797860 (Found!10846 (index!45762 lt!620881)))))

(declare-fun b!1409874 () Bool)

(assert (=> b!1409874 (= e!797861 e!797860)))

(assert (=> b!1409874 (= lt!620882 (select (arr!46513 a!2901) (index!45762 lt!620881)))))

(declare-fun c!130629 () Bool)

(assert (=> b!1409874 (= c!130629 (= lt!620882 (select (arr!46513 a!2901) j!112)))))

(assert (= (and d!151711 c!130628) b!1409869))

(assert (= (and d!151711 (not c!130628)) b!1409874))

(assert (= (and b!1409874 c!130629) b!1409873))

(assert (= (and b!1409874 (not c!130629)) b!1409870))

(assert (= (and b!1409870 c!130630) b!1409871))

(assert (= (and b!1409870 (not c!130630)) b!1409872))

(assert (=> d!151711 m!1299475))

(assert (=> d!151711 m!1299489))

(declare-fun m!1299685 () Bool)

(assert (=> d!151711 m!1299685))

(assert (=> d!151711 m!1299489))

(assert (=> d!151711 m!1299475))

(assert (=> d!151711 m!1299493))

(assert (=> d!151711 m!1299471))

(declare-fun m!1299687 () Bool)

(assert (=> d!151711 m!1299687))

(declare-fun m!1299689 () Bool)

(assert (=> d!151711 m!1299689))

(assert (=> b!1409872 m!1299475))

(declare-fun m!1299691 () Bool)

(assert (=> b!1409872 m!1299691))

(declare-fun m!1299693 () Bool)

(assert (=> b!1409874 m!1299693))

(assert (=> b!1409594 d!151711))

(declare-fun d!151721 () Bool)

(declare-fun res!947555 () Bool)

(declare-fun e!797863 () Bool)

(assert (=> d!151721 (=> res!947555 e!797863)))

(assert (=> d!151721 (= res!947555 (bvsge #b00000000000000000000000000000000 (size!47064 a!2901)))))

(assert (=> d!151721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!797863)))

(declare-fun b!1409875 () Bool)

(declare-fun e!797864 () Bool)

(declare-fun e!797865 () Bool)

(assert (=> b!1409875 (= e!797864 e!797865)))

(declare-fun lt!620884 () (_ BitVec 64))

(assert (=> b!1409875 (= lt!620884 (select (arr!46513 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!620885 () Unit!47616)

(assert (=> b!1409875 (= lt!620885 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!620884 #b00000000000000000000000000000000))))

(assert (=> b!1409875 (arrayContainsKey!0 a!2901 lt!620884 #b00000000000000000000000000000000)))

(declare-fun lt!620886 () Unit!47616)

(assert (=> b!1409875 (= lt!620886 lt!620885)))

(declare-fun res!947556 () Bool)

(assert (=> b!1409875 (= res!947556 (= (seekEntryOrOpen!0 (select (arr!46513 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10846 #b00000000000000000000000000000000)))))

(assert (=> b!1409875 (=> (not res!947556) (not e!797865))))

(declare-fun bm!67026 () Bool)

(declare-fun call!67029 () Bool)

(assert (=> bm!67026 (= call!67029 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1409876 () Bool)

(assert (=> b!1409876 (= e!797865 call!67029)))

(declare-fun b!1409877 () Bool)

(assert (=> b!1409877 (= e!797863 e!797864)))

(declare-fun c!130631 () Bool)

(assert (=> b!1409877 (= c!130631 (validKeyInArray!0 (select (arr!46513 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409878 () Bool)

(assert (=> b!1409878 (= e!797864 call!67029)))

(assert (= (and d!151721 (not res!947555)) b!1409877))

(assert (= (and b!1409877 c!130631) b!1409875))

(assert (= (and b!1409877 (not c!130631)) b!1409878))

(assert (= (and b!1409875 res!947556) b!1409876))

(assert (= (or b!1409876 b!1409878) bm!67026))

(declare-fun m!1299695 () Bool)

(assert (=> b!1409875 m!1299695))

(declare-fun m!1299697 () Bool)

(assert (=> b!1409875 m!1299697))

(declare-fun m!1299699 () Bool)

(assert (=> b!1409875 m!1299699))

(assert (=> b!1409875 m!1299695))

(declare-fun m!1299701 () Bool)

(assert (=> b!1409875 m!1299701))

(declare-fun m!1299703 () Bool)

(assert (=> bm!67026 m!1299703))

(assert (=> b!1409877 m!1299695))

(assert (=> b!1409877 m!1299695))

(declare-fun m!1299705 () Bool)

(assert (=> b!1409877 m!1299705))

(assert (=> b!1409599 d!151721))

(declare-fun b!1409889 () Bool)

(declare-fun e!797875 () Bool)

(declare-fun call!67032 () Bool)

(assert (=> b!1409889 (= e!797875 call!67032)))

(declare-fun d!151723 () Bool)

(declare-fun res!947564 () Bool)

(declare-fun e!797874 () Bool)

(assert (=> d!151723 (=> res!947564 e!797874)))

(assert (=> d!151723 (= res!947564 (bvsge #b00000000000000000000000000000000 (size!47064 a!2901)))))

(assert (=> d!151723 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33209) e!797874)))

(declare-fun b!1409890 () Bool)

(declare-fun e!797877 () Bool)

(assert (=> b!1409890 (= e!797877 e!797875)))

(declare-fun c!130634 () Bool)

(assert (=> b!1409890 (= c!130634 (validKeyInArray!0 (select (arr!46513 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409891 () Bool)

(assert (=> b!1409891 (= e!797874 e!797877)))

(declare-fun res!947565 () Bool)

(assert (=> b!1409891 (=> (not res!947565) (not e!797877))))

(declare-fun e!797876 () Bool)

(assert (=> b!1409891 (= res!947565 (not e!797876))))

(declare-fun res!947563 () Bool)

(assert (=> b!1409891 (=> (not res!947563) (not e!797876))))

(assert (=> b!1409891 (= res!947563 (validKeyInArray!0 (select (arr!46513 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1409892 () Bool)

(declare-fun contains!9819 (List!33212 (_ BitVec 64)) Bool)

(assert (=> b!1409892 (= e!797876 (contains!9819 Nil!33209 (select (arr!46513 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67029 () Bool)

(assert (=> bm!67029 (= call!67032 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130634 (Cons!33208 (select (arr!46513 a!2901) #b00000000000000000000000000000000) Nil!33209) Nil!33209)))))

(declare-fun b!1409893 () Bool)

(assert (=> b!1409893 (= e!797875 call!67032)))

(assert (= (and d!151723 (not res!947564)) b!1409891))

(assert (= (and b!1409891 res!947563) b!1409892))

(assert (= (and b!1409891 res!947565) b!1409890))

(assert (= (and b!1409890 c!130634) b!1409893))

(assert (= (and b!1409890 (not c!130634)) b!1409889))

(assert (= (or b!1409893 b!1409889) bm!67029))

(assert (=> b!1409890 m!1299695))

(assert (=> b!1409890 m!1299695))

(assert (=> b!1409890 m!1299705))

(assert (=> b!1409891 m!1299695))

(assert (=> b!1409891 m!1299695))

(assert (=> b!1409891 m!1299705))

(assert (=> b!1409892 m!1299695))

(assert (=> b!1409892 m!1299695))

(declare-fun m!1299707 () Bool)

(assert (=> b!1409892 m!1299707))

(assert (=> bm!67029 m!1299695))

(declare-fun m!1299709 () Bool)

(assert (=> bm!67029 m!1299709))

(assert (=> b!1409595 d!151723))

(declare-fun d!151725 () Bool)

(assert (=> d!151725 (= (validKeyInArray!0 (select (arr!46513 a!2901) i!1037)) (and (not (= (select (arr!46513 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46513 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1409597 d!151725))

(declare-fun b!1409894 () Bool)

(declare-fun e!797880 () SeekEntryResult!10846)

(assert (=> b!1409894 (= e!797880 (Intermediate!10846 true (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1409895 () Bool)

(declare-fun e!797879 () Bool)

(declare-fun lt!620888 () SeekEntryResult!10846)

(assert (=> b!1409895 (= e!797879 (bvsge (x!127354 lt!620888) #b01111111111111111111111111111110))))

(declare-fun b!1409896 () Bool)

(assert (=> b!1409896 (and (bvsge (index!45762 lt!620888) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620888) (size!47064 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)))))))

(declare-fun res!947567 () Bool)

(assert (=> b!1409896 (= res!947567 (= (select (arr!46513 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901))) (index!45762 lt!620888)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!797878 () Bool)

(assert (=> b!1409896 (=> res!947567 e!797878)))

(declare-fun b!1409897 () Bool)

(assert (=> b!1409897 (and (bvsge (index!45762 lt!620888) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620888) (size!47064 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)))))))

(declare-fun res!947566 () Bool)

(assert (=> b!1409897 (= res!947566 (= (select (arr!46513 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901))) (index!45762 lt!620888)) (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1409897 (=> res!947566 e!797878)))

(declare-fun e!797882 () Bool)

(assert (=> b!1409897 (= e!797882 e!797878)))

(declare-fun d!151727 () Bool)

(assert (=> d!151727 e!797879))

(declare-fun c!130635 () Bool)

(assert (=> d!151727 (= c!130635 (and (is-Intermediate!10846 lt!620888) (undefined!11658 lt!620888)))))

(assert (=> d!151727 (= lt!620888 e!797880)))

(declare-fun c!130636 () Bool)

(assert (=> d!151727 (= c!130636 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!620887 () (_ BitVec 64))

(assert (=> d!151727 (= lt!620887 (select (arr!46513 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901))) (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151727 (validMask!0 mask!2840)))

(assert (=> d!151727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)) mask!2840) lt!620888)))

(declare-fun b!1409898 () Bool)

(assert (=> b!1409898 (and (bvsge (index!45762 lt!620888) #b00000000000000000000000000000000) (bvslt (index!45762 lt!620888) (size!47064 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)))))))

(assert (=> b!1409898 (= e!797878 (= (select (arr!46513 (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901))) (index!45762 lt!620888)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1409899 () Bool)

(declare-fun e!797881 () SeekEntryResult!10846)

(assert (=> b!1409899 (= e!797880 e!797881)))

(declare-fun c!130637 () Bool)

(assert (=> b!1409899 (= c!130637 (or (= lt!620887 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!620887 lt!620887) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1409900 () Bool)

(assert (=> b!1409900 (= e!797879 e!797882)))

(declare-fun res!947568 () Bool)

(assert (=> b!1409900 (= res!947568 (and (is-Intermediate!10846 lt!620888) (not (undefined!11658 lt!620888)) (bvslt (x!127354 lt!620888) #b01111111111111111111111111111110) (bvsge (x!127354 lt!620888) #b00000000000000000000000000000000) (bvsge (x!127354 lt!620888) #b00000000000000000000000000000000)))))

(assert (=> b!1409900 (=> (not res!947568) (not e!797882))))

(declare-fun b!1409901 () Bool)

(assert (=> b!1409901 (= e!797881 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96349 (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47064 a!2901)) mask!2840))))

(declare-fun b!1409902 () Bool)

(assert (=> b!1409902 (= e!797881 (Intermediate!10846 false (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151727 c!130636) b!1409894))

(assert (= (and d!151727 (not c!130636)) b!1409899))

(assert (= (and b!1409899 c!130637) b!1409902))

(assert (= (and b!1409899 (not c!130637)) b!1409901))

(assert (= (and d!151727 c!130635) b!1409895))

(assert (= (and d!151727 (not c!130635)) b!1409900))

(assert (= (and b!1409900 res!947568) b!1409897))

(assert (= (and b!1409897 (not res!947566)) b!1409896))

(assert (= (and b!1409896 (not res!947567)) b!1409898))

(declare-fun m!1299711 () Bool)

(assert (=> b!1409897 m!1299711))

(assert (=> b!1409898 m!1299711))

(assert (=> d!151727 m!1299485))

(declare-fun m!1299713 () Bool)

(assert (=> d!151727 m!1299713))

(assert (=> d!151727 m!1299471))

(assert (=> b!1409901 m!1299485))

(declare-fun m!1299715 () Bool)

(assert (=> b!1409901 m!1299715))

(assert (=> b!1409901 m!1299715))

(assert (=> b!1409901 m!1299483))

(declare-fun m!1299717 () Bool)

(assert (=> b!1409901 m!1299717))

(assert (=> b!1409896 m!1299711))

(assert (=> b!1409596 d!151727))

(declare-fun d!151729 () Bool)

(declare-fun lt!620890 () (_ BitVec 32))

(declare-fun lt!620889 () (_ BitVec 32))

(assert (=> d!151729 (= lt!620890 (bvmul (bvxor lt!620889 (bvlshr lt!620889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151729 (= lt!620889 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151729 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!947535 (let ((h!34474 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127359 (bvmul (bvxor h!34474 (bvlshr h!34474 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127359 (bvlshr x!127359 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!947535 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!947535 #b00000000000000000000000000000000))))))

(assert (=> d!151729 (= (toIndex!0 (select (store (arr!46513 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!620890 (bvlshr lt!620890 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1409596 d!151729))

(push 1)

