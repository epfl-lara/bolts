; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130166 () Bool)

(assert start!130166)

(declare-fun b!1527565 () Bool)

(declare-fun e!851420 () Bool)

(declare-fun e!851419 () Bool)

(assert (=> b!1527565 (= e!851420 (not e!851419))))

(declare-fun res!1045738 () Bool)

(assert (=> b!1527565 (=> res!1045738 e!851419)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101506 0))(
  ( (array!101507 (arr!48975 (Array (_ BitVec 32) (_ BitVec 64))) (size!49526 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101506)

(declare-fun lt!661468 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527565 (= res!1045738 (or (not (= (select (arr!48975 a!2804) j!70) lt!661468)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48975 a!2804) index!487) (select (arr!48975 a!2804) j!70)) (not (= (select (arr!48975 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851418 () Bool)

(assert (=> b!1527565 e!851418))

(declare-fun res!1045742 () Bool)

(assert (=> b!1527565 (=> (not res!1045742) (not e!851418))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101506 (_ BitVec 32)) Bool)

(assert (=> b!1527565 (= res!1045742 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51062 0))(
  ( (Unit!51063) )
))
(declare-fun lt!661467 () Unit!51062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51062)

(assert (=> b!1527565 (= lt!661467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1045747 () Bool)

(declare-fun e!851415 () Bool)

(assert (=> start!130166 (=> (not res!1045747) (not e!851415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130166 (= res!1045747 (validMask!0 mask!2512))))

(assert (=> start!130166 e!851415))

(assert (=> start!130166 true))

(declare-fun array_inv!37920 (array!101506) Bool)

(assert (=> start!130166 (array_inv!37920 a!2804)))

(declare-fun b!1527566 () Bool)

(declare-fun e!851414 () Bool)

(assert (=> b!1527566 (= e!851415 e!851414)))

(declare-fun res!1045739 () Bool)

(assert (=> b!1527566 (=> (not res!1045739) (not e!851414))))

(declare-datatypes ((SeekEntryResult!13161 0))(
  ( (MissingZero!13161 (index!55038 (_ BitVec 32))) (Found!13161 (index!55039 (_ BitVec 32))) (Intermediate!13161 (undefined!13973 Bool) (index!55040 (_ BitVec 32)) (x!136730 (_ BitVec 32))) (Undefined!13161) (MissingVacant!13161 (index!55041 (_ BitVec 32))) )
))
(declare-fun lt!661466 () SeekEntryResult!13161)

(declare-fun lt!661465 () SeekEntryResult!13161)

(assert (=> b!1527566 (= res!1045739 (= lt!661466 lt!661465))))

(assert (=> b!1527566 (= lt!661465 (Intermediate!13161 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101506 (_ BitVec 32)) SeekEntryResult!13161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527566 (= lt!661466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527567 () Bool)

(declare-fun res!1045748 () Bool)

(assert (=> b!1527567 (=> (not res!1045748) (not e!851415))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527567 (= res!1045748 (validKeyInArray!0 (select (arr!48975 a!2804) i!961)))))

(declare-fun b!1527568 () Bool)

(declare-fun res!1045746 () Bool)

(assert (=> b!1527568 (=> (not res!1045746) (not e!851415))))

(assert (=> b!1527568 (= res!1045746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527569 () Bool)

(declare-fun lt!661463 () SeekEntryResult!13161)

(assert (=> b!1527569 (= e!851419 (= lt!661463 (Found!13161 j!70)))))

(declare-fun e!851417 () Bool)

(assert (=> b!1527569 e!851417))

(declare-fun res!1045741 () Bool)

(assert (=> b!1527569 (=> (not res!1045741) (not e!851417))))

(declare-fun lt!661464 () SeekEntryResult!13161)

(assert (=> b!1527569 (= res!1045741 (= lt!661464 lt!661463))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101506 (_ BitVec 32)) SeekEntryResult!13161)

(assert (=> b!1527569 (= lt!661463 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101506 (_ BitVec 32)) SeekEntryResult!13161)

(assert (=> b!1527569 (= lt!661464 (seekEntryOrOpen!0 (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527570 () Bool)

(assert (=> b!1527570 (= e!851414 e!851420)))

(declare-fun res!1045740 () Bool)

(assert (=> b!1527570 (=> (not res!1045740) (not e!851420))))

(declare-fun lt!661462 () array!101506)

(assert (=> b!1527570 (= res!1045740 (= lt!661466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661468 mask!2512) lt!661468 lt!661462 mask!2512)))))

(assert (=> b!1527570 (= lt!661468 (select (store (arr!48975 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527570 (= lt!661462 (array!101507 (store (arr!48975 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49526 a!2804)))))

(declare-fun b!1527571 () Bool)

(declare-fun res!1045737 () Bool)

(assert (=> b!1527571 (=> (not res!1045737) (not e!851415))))

(assert (=> b!1527571 (= res!1045737 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49526 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49526 a!2804))))))

(declare-fun b!1527572 () Bool)

(assert (=> b!1527572 (= e!851417 (= (seekEntryOrOpen!0 lt!661468 lt!661462 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661468 lt!661462 mask!2512)))))

(declare-fun b!1527573 () Bool)

(declare-fun res!1045745 () Bool)

(assert (=> b!1527573 (=> (not res!1045745) (not e!851415))))

(assert (=> b!1527573 (= res!1045745 (validKeyInArray!0 (select (arr!48975 a!2804) j!70)))))

(declare-fun b!1527574 () Bool)

(declare-fun res!1045749 () Bool)

(assert (=> b!1527574 (=> (not res!1045749) (not e!851414))))

(assert (=> b!1527574 (= res!1045749 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661465))))

(declare-fun b!1527575 () Bool)

(declare-fun res!1045744 () Bool)

(assert (=> b!1527575 (=> (not res!1045744) (not e!851415))))

(assert (=> b!1527575 (= res!1045744 (and (= (size!49526 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49526 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49526 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527576 () Bool)

(declare-fun res!1045743 () Bool)

(assert (=> b!1527576 (=> (not res!1045743) (not e!851415))))

(declare-datatypes ((List!35638 0))(
  ( (Nil!35635) (Cons!35634 (h!37068 (_ BitVec 64)) (t!50339 List!35638)) )
))
(declare-fun arrayNoDuplicates!0 (array!101506 (_ BitVec 32) List!35638) Bool)

(assert (=> b!1527576 (= res!1045743 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35635))))

(declare-fun b!1527577 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101506 (_ BitVec 32)) SeekEntryResult!13161)

(assert (=> b!1527577 (= e!851418 (= (seekEntry!0 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) (Found!13161 j!70)))))

(assert (= (and start!130166 res!1045747) b!1527575))

(assert (= (and b!1527575 res!1045744) b!1527567))

(assert (= (and b!1527567 res!1045748) b!1527573))

(assert (= (and b!1527573 res!1045745) b!1527568))

(assert (= (and b!1527568 res!1045746) b!1527576))

(assert (= (and b!1527576 res!1045743) b!1527571))

(assert (= (and b!1527571 res!1045737) b!1527566))

(assert (= (and b!1527566 res!1045739) b!1527574))

(assert (= (and b!1527574 res!1045749) b!1527570))

(assert (= (and b!1527570 res!1045740) b!1527565))

(assert (= (and b!1527565 res!1045742) b!1527577))

(assert (= (and b!1527565 (not res!1045738)) b!1527569))

(assert (= (and b!1527569 res!1045741) b!1527572))

(declare-fun m!1410545 () Bool)

(assert (=> start!130166 m!1410545))

(declare-fun m!1410547 () Bool)

(assert (=> start!130166 m!1410547))

(declare-fun m!1410549 () Bool)

(assert (=> b!1527567 m!1410549))

(assert (=> b!1527567 m!1410549))

(declare-fun m!1410551 () Bool)

(assert (=> b!1527567 m!1410551))

(declare-fun m!1410553 () Bool)

(assert (=> b!1527574 m!1410553))

(assert (=> b!1527574 m!1410553))

(declare-fun m!1410555 () Bool)

(assert (=> b!1527574 m!1410555))

(declare-fun m!1410557 () Bool)

(assert (=> b!1527572 m!1410557))

(declare-fun m!1410559 () Bool)

(assert (=> b!1527572 m!1410559))

(declare-fun m!1410561 () Bool)

(assert (=> b!1527568 m!1410561))

(assert (=> b!1527569 m!1410553))

(assert (=> b!1527569 m!1410553))

(declare-fun m!1410563 () Bool)

(assert (=> b!1527569 m!1410563))

(assert (=> b!1527569 m!1410553))

(declare-fun m!1410565 () Bool)

(assert (=> b!1527569 m!1410565))

(assert (=> b!1527573 m!1410553))

(assert (=> b!1527573 m!1410553))

(declare-fun m!1410567 () Bool)

(assert (=> b!1527573 m!1410567))

(assert (=> b!1527566 m!1410553))

(assert (=> b!1527566 m!1410553))

(declare-fun m!1410569 () Bool)

(assert (=> b!1527566 m!1410569))

(assert (=> b!1527566 m!1410569))

(assert (=> b!1527566 m!1410553))

(declare-fun m!1410571 () Bool)

(assert (=> b!1527566 m!1410571))

(assert (=> b!1527565 m!1410553))

(declare-fun m!1410573 () Bool)

(assert (=> b!1527565 m!1410573))

(declare-fun m!1410575 () Bool)

(assert (=> b!1527565 m!1410575))

(declare-fun m!1410577 () Bool)

(assert (=> b!1527565 m!1410577))

(declare-fun m!1410579 () Bool)

(assert (=> b!1527570 m!1410579))

(assert (=> b!1527570 m!1410579))

(declare-fun m!1410581 () Bool)

(assert (=> b!1527570 m!1410581))

(declare-fun m!1410583 () Bool)

(assert (=> b!1527570 m!1410583))

(declare-fun m!1410585 () Bool)

(assert (=> b!1527570 m!1410585))

(declare-fun m!1410587 () Bool)

(assert (=> b!1527576 m!1410587))

(assert (=> b!1527577 m!1410553))

(assert (=> b!1527577 m!1410553))

(declare-fun m!1410589 () Bool)

(assert (=> b!1527577 m!1410589))

(push 1)

(assert (not b!1527565))

(assert (not b!1527568))

(assert (not b!1527574))

(assert (not b!1527572))

(assert (not b!1527573))

(assert (not b!1527570))

(assert (not b!1527566))

(assert (not start!130166))

(assert (not b!1527567))

(assert (not b!1527577))

(assert (not b!1527569))

(assert (not b!1527576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159529 () Bool)

(assert (=> d!159529 (= (validKeyInArray!0 (select (arr!48975 a!2804) i!961)) (and (not (= (select (arr!48975 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48975 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527567 d!159529))

(declare-fun b!1527674 () Bool)

(declare-fun e!851479 () Bool)

(declare-fun e!851478 () Bool)

(assert (=> b!1527674 (= e!851479 e!851478)))

(declare-fun lt!661519 () (_ BitVec 64))

(assert (=> b!1527674 (= lt!661519 (select (arr!48975 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!661520 () Unit!51062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101506 (_ BitVec 64) (_ BitVec 32)) Unit!51062)

(assert (=> b!1527674 (= lt!661520 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661519 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1527674 (arrayContainsKey!0 a!2804 lt!661519 #b00000000000000000000000000000000)))

(declare-fun lt!661521 () Unit!51062)

(assert (=> b!1527674 (= lt!661521 lt!661520)))

(declare-fun res!1045775 () Bool)

(assert (=> b!1527674 (= res!1045775 (= (seekEntryOrOpen!0 (select (arr!48975 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13161 #b00000000000000000000000000000000)))))

(assert (=> b!1527674 (=> (not res!1045775) (not e!851478))))

(declare-fun bm!68470 () Bool)

(declare-fun call!68473 () Bool)

(assert (=> bm!68470 (= call!68473 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1527675 () Bool)

(declare-fun e!851477 () Bool)

(assert (=> b!1527675 (= e!851477 e!851479)))

(declare-fun c!140505 () Bool)

(assert (=> b!1527675 (= c!140505 (validKeyInArray!0 (select (arr!48975 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159531 () Bool)

(declare-fun res!1045776 () Bool)

(assert (=> d!159531 (=> res!1045776 e!851477)))

(assert (=> d!159531 (= res!1045776 (bvsge #b00000000000000000000000000000000 (size!49526 a!2804)))))

(assert (=> d!159531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!851477)))

(declare-fun b!1527676 () Bool)

(assert (=> b!1527676 (= e!851479 call!68473)))

(declare-fun b!1527677 () Bool)

(assert (=> b!1527677 (= e!851478 call!68473)))

(assert (= (and d!159531 (not res!1045776)) b!1527675))

(assert (= (and b!1527675 c!140505) b!1527674))

(assert (= (and b!1527675 (not c!140505)) b!1527676))

(assert (= (and b!1527674 res!1045775) b!1527677))

(assert (= (or b!1527677 b!1527676) bm!68470))

(declare-fun m!1410643 () Bool)

(assert (=> b!1527674 m!1410643))

(declare-fun m!1410645 () Bool)

(assert (=> b!1527674 m!1410645))

(declare-fun m!1410647 () Bool)

(assert (=> b!1527674 m!1410647))

(assert (=> b!1527674 m!1410643))

(declare-fun m!1410649 () Bool)

(assert (=> b!1527674 m!1410649))

(declare-fun m!1410651 () Bool)

(assert (=> bm!68470 m!1410651))

(assert (=> b!1527675 m!1410643))

(assert (=> b!1527675 m!1410643))

(declare-fun m!1410653 () Bool)

(assert (=> b!1527675 m!1410653))

(assert (=> b!1527568 d!159531))

(declare-fun d!159543 () Bool)

(declare-fun lt!661533 () SeekEntryResult!13161)

(assert (=> d!159543 (and (or (is-Undefined!13161 lt!661533) (not (is-Found!13161 lt!661533)) (and (bvsge (index!55039 lt!661533) #b00000000000000000000000000000000) (bvslt (index!55039 lt!661533) (size!49526 a!2804)))) (or (is-Undefined!13161 lt!661533) (is-Found!13161 lt!661533) (not (is-MissingVacant!13161 lt!661533)) (not (= (index!55041 lt!661533) index!487)) (and (bvsge (index!55041 lt!661533) #b00000000000000000000000000000000) (bvslt (index!55041 lt!661533) (size!49526 a!2804)))) (or (is-Undefined!13161 lt!661533) (ite (is-Found!13161 lt!661533) (= (select (arr!48975 a!2804) (index!55039 lt!661533)) (select (arr!48975 a!2804) j!70)) (and (is-MissingVacant!13161 lt!661533) (= (index!55041 lt!661533) index!487) (= (select (arr!48975 a!2804) (index!55041 lt!661533)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!851503 () SeekEntryResult!13161)

(assert (=> d!159543 (= lt!661533 e!851503)))

(declare-fun c!140522 () Bool)

(assert (=> d!159543 (= c!140522 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661532 () (_ BitVec 64))

(assert (=> d!159543 (= lt!661532 (select (arr!48975 a!2804) index!487))))

(assert (=> d!159543 (validMask!0 mask!2512)))

(assert (=> d!159543 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661533)))

(declare-fun b!1527717 () Bool)

(declare-fun c!140521 () Bool)

(assert (=> b!1527717 (= c!140521 (= lt!661532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!851502 () SeekEntryResult!13161)

(declare-fun e!851501 () SeekEntryResult!13161)

(assert (=> b!1527717 (= e!851502 e!851501)))

(declare-fun b!1527718 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527718 (= e!851501 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527719 () Bool)

(assert (=> b!1527719 (= e!851501 (MissingVacant!13161 index!487))))

(declare-fun b!1527720 () Bool)

(assert (=> b!1527720 (= e!851502 (Found!13161 index!487))))

(declare-fun b!1527721 () Bool)

(assert (=> b!1527721 (= e!851503 Undefined!13161)))

(declare-fun b!1527722 () Bool)

(assert (=> b!1527722 (= e!851503 e!851502)))

(declare-fun c!140523 () Bool)

(assert (=> b!1527722 (= c!140523 (= lt!661532 (select (arr!48975 a!2804) j!70)))))

(assert (= (and d!159543 c!140522) b!1527721))

(assert (= (and d!159543 (not c!140522)) b!1527722))

(assert (= (and b!1527722 c!140523) b!1527720))

(assert (= (and b!1527722 (not c!140523)) b!1527717))

(assert (= (and b!1527717 c!140521) b!1527719))

(assert (= (and b!1527717 (not c!140521)) b!1527718))

(declare-fun m!1410663 () Bool)

(assert (=> d!159543 m!1410663))

(declare-fun m!1410665 () Bool)

(assert (=> d!159543 m!1410665))

(assert (=> d!159543 m!1410573))

(assert (=> d!159543 m!1410545))

(declare-fun m!1410667 () Bool)

(assert (=> b!1527718 m!1410667))

(assert (=> b!1527718 m!1410667))

(assert (=> b!1527718 m!1410553))

(declare-fun m!1410669 () Bool)

(assert (=> b!1527718 m!1410669))

(assert (=> b!1527569 d!159543))

(declare-fun b!1527804 () Bool)

(declare-fun e!851551 () SeekEntryResult!13161)

(declare-fun lt!661585 () SeekEntryResult!13161)

(assert (=> b!1527804 (= e!851551 (Found!13161 (index!55040 lt!661585)))))

(declare-fun d!159551 () Bool)

(declare-fun lt!661587 () SeekEntryResult!13161)

(assert (=> d!159551 (and (or (is-Undefined!13161 lt!661587) (not (is-Found!13161 lt!661587)) (and (bvsge (index!55039 lt!661587) #b00000000000000000000000000000000) (bvslt (index!55039 lt!661587) (size!49526 a!2804)))) (or (is-Undefined!13161 lt!661587) (is-Found!13161 lt!661587) (not (is-MissingZero!13161 lt!661587)) (and (bvsge (index!55038 lt!661587) #b00000000000000000000000000000000) (bvslt (index!55038 lt!661587) (size!49526 a!2804)))) (or (is-Undefined!13161 lt!661587) (is-Found!13161 lt!661587) (is-MissingZero!13161 lt!661587) (not (is-MissingVacant!13161 lt!661587)) (and (bvsge (index!55041 lt!661587) #b00000000000000000000000000000000) (bvslt (index!55041 lt!661587) (size!49526 a!2804)))) (or (is-Undefined!13161 lt!661587) (ite (is-Found!13161 lt!661587) (= (select (arr!48975 a!2804) (index!55039 lt!661587)) (select (arr!48975 a!2804) j!70)) (ite (is-MissingZero!13161 lt!661587) (= (select (arr!48975 a!2804) (index!55038 lt!661587)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13161 lt!661587) (= (select (arr!48975 a!2804) (index!55041 lt!661587)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!851550 () SeekEntryResult!13161)

(assert (=> d!159551 (= lt!661587 e!851550)))

(declare-fun c!140559 () Bool)

(assert (=> d!159551 (= c!140559 (and (is-Intermediate!13161 lt!661585) (undefined!13973 lt!661585)))))

(assert (=> d!159551 (= lt!661585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159551 (validMask!0 mask!2512)))

(assert (=> d!159551 (= (seekEntryOrOpen!0 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661587)))

(declare-fun b!1527805 () Bool)

(declare-fun c!140558 () Bool)

(declare-fun lt!661586 () (_ BitVec 64))

(assert (=> b!1527805 (= c!140558 (= lt!661586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!851549 () SeekEntryResult!13161)

(assert (=> b!1527805 (= e!851551 e!851549)))

(declare-fun b!1527806 () Bool)

(assert (=> b!1527806 (= e!851549 (seekKeyOrZeroReturnVacant!0 (x!136730 lt!661585) (index!55040 lt!661585) (index!55040 lt!661585) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527807 () Bool)

(assert (=> b!1527807 (= e!851550 e!851551)))

(assert (=> b!1527807 (= lt!661586 (select (arr!48975 a!2804) (index!55040 lt!661585)))))

(declare-fun c!140557 () Bool)

(assert (=> b!1527807 (= c!140557 (= lt!661586 (select (arr!48975 a!2804) j!70)))))

(declare-fun b!1527808 () Bool)

(assert (=> b!1527808 (= e!851550 Undefined!13161)))

(declare-fun b!1527809 () Bool)

(assert (=> b!1527809 (= e!851549 (MissingZero!13161 (index!55040 lt!661585)))))

(assert (= (and d!159551 c!140559) b!1527808))

(assert (= (and d!159551 (not c!140559)) b!1527807))

(assert (= (and b!1527807 c!140557) b!1527804))

(assert (= (and b!1527807 (not c!140557)) b!1527805))

(assert (= (and b!1527805 c!140558) b!1527809))

(assert (= (and b!1527805 (not c!140558)) b!1527806))

(declare-fun m!1410723 () Bool)

(assert (=> d!159551 m!1410723))

(assert (=> d!159551 m!1410553))

(assert (=> d!159551 m!1410569))

(declare-fun m!1410725 () Bool)

(assert (=> d!159551 m!1410725))

(declare-fun m!1410727 () Bool)

(assert (=> d!159551 m!1410727))

(assert (=> d!159551 m!1410545))

(assert (=> d!159551 m!1410569))

(assert (=> d!159551 m!1410553))

(assert (=> d!159551 m!1410571))

(assert (=> b!1527806 m!1410553))

(declare-fun m!1410729 () Bool)

(assert (=> b!1527806 m!1410729))

(declare-fun m!1410731 () Bool)

(assert (=> b!1527807 m!1410731))

(assert (=> b!1527569 d!159551))

(declare-fun b!1527810 () Bool)

(declare-fun e!851554 () Bool)

(declare-fun e!851553 () Bool)

(assert (=> b!1527810 (= e!851554 e!851553)))

(declare-fun lt!661588 () (_ BitVec 64))

(assert (=> b!1527810 (= lt!661588 (select (arr!48975 a!2804) j!70))))

(declare-fun lt!661589 () Unit!51062)

(assert (=> b!1527810 (= lt!661589 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661588 j!70))))

(assert (=> b!1527810 (arrayContainsKey!0 a!2804 lt!661588 #b00000000000000000000000000000000)))

(declare-fun lt!661590 () Unit!51062)

(assert (=> b!1527810 (= lt!661590 lt!661589)))

(declare-fun res!1045802 () Bool)

(assert (=> b!1527810 (= res!1045802 (= (seekEntryOrOpen!0 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) (Found!13161 j!70)))))

(assert (=> b!1527810 (=> (not res!1045802) (not e!851553))))

(declare-fun call!68477 () Bool)

(declare-fun bm!68474 () Bool)

(assert (=> bm!68474 (= call!68477 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1527811 () Bool)

(declare-fun e!851552 () Bool)

(assert (=> b!1527811 (= e!851552 e!851554)))

(declare-fun c!140560 () Bool)

(assert (=> b!1527811 (= c!140560 (validKeyInArray!0 (select (arr!48975 a!2804) j!70)))))

(declare-fun d!159575 () Bool)

(declare-fun res!1045803 () Bool)

(assert (=> d!159575 (=> res!1045803 e!851552)))

(assert (=> d!159575 (= res!1045803 (bvsge j!70 (size!49526 a!2804)))))

(assert (=> d!159575 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!851552)))

(declare-fun b!1527812 () Bool)

(assert (=> b!1527812 (= e!851554 call!68477)))

(declare-fun b!1527813 () Bool)

(assert (=> b!1527813 (= e!851553 call!68477)))

(assert (= (and d!159575 (not res!1045803)) b!1527811))

(assert (= (and b!1527811 c!140560) b!1527810))

(assert (= (and b!1527811 (not c!140560)) b!1527812))

(assert (= (and b!1527810 res!1045802) b!1527813))

(assert (= (or b!1527813 b!1527812) bm!68474))

(assert (=> b!1527810 m!1410553))

(declare-fun m!1410733 () Bool)

(assert (=> b!1527810 m!1410733))

(declare-fun m!1410735 () Bool)

(assert (=> b!1527810 m!1410735))

(assert (=> b!1527810 m!1410553))

(assert (=> b!1527810 m!1410565))

(declare-fun m!1410737 () Bool)

(assert (=> bm!68474 m!1410737))

(assert (=> b!1527811 m!1410553))

(assert (=> b!1527811 m!1410553))

(assert (=> b!1527811 m!1410567))

(assert (=> b!1527565 d!159575))

(declare-fun d!159577 () Bool)

(assert (=> d!159577 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!661599 () Unit!51062)

(declare-fun choose!38 (array!101506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51062)

(assert (=> d!159577 (= lt!661599 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159577 (validMask!0 mask!2512)))

(assert (=> d!159577 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!661599)))

(declare-fun bs!43810 () Bool)

(assert (= bs!43810 d!159577))

(assert (=> bs!43810 m!1410575))

(declare-fun m!1410739 () Bool)

(assert (=> bs!43810 m!1410739))

(assert (=> bs!43810 m!1410545))

(assert (=> b!1527565 d!159577))

(declare-fun d!159579 () Bool)

(declare-fun res!1045822 () Bool)

(declare-fun e!851587 () Bool)

(assert (=> d!159579 (=> res!1045822 e!851587)))

(assert (=> d!159579 (= res!1045822 (bvsge #b00000000000000000000000000000000 (size!49526 a!2804)))))

(assert (=> d!159579 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35635) e!851587)))

(declare-fun b!1527861 () Bool)

(declare-fun e!851589 () Bool)

(declare-fun call!68484 () Bool)

(assert (=> b!1527861 (= e!851589 call!68484)))

(declare-fun b!1527862 () Bool)

(declare-fun e!851590 () Bool)

(assert (=> b!1527862 (= e!851587 e!851590)))

(declare-fun res!1045821 () Bool)

(assert (=> b!1527862 (=> (not res!1045821) (not e!851590))))

(declare-fun e!851588 () Bool)

(assert (=> b!1527862 (= res!1045821 (not e!851588))))

(declare-fun res!1045823 () Bool)

(assert (=> b!1527862 (=> (not res!1045823) (not e!851588))))

(assert (=> b!1527862 (= res!1045823 (validKeyInArray!0 (select (arr!48975 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1527863 () Bool)

(declare-fun contains!10008 (List!35638 (_ BitVec 64)) Bool)

(assert (=> b!1527863 (= e!851588 (contains!10008 Nil!35635 (select (arr!48975 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1527864 () Bool)

(assert (=> b!1527864 (= e!851589 call!68484)))

(declare-fun bm!68481 () Bool)

(declare-fun c!140576 () Bool)

(assert (=> bm!68481 (= call!68484 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140576 (Cons!35634 (select (arr!48975 a!2804) #b00000000000000000000000000000000) Nil!35635) Nil!35635)))))

(declare-fun b!1527865 () Bool)

(assert (=> b!1527865 (= e!851590 e!851589)))

(assert (=> b!1527865 (= c!140576 (validKeyInArray!0 (select (arr!48975 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159579 (not res!1045822)) b!1527862))

(assert (= (and b!1527862 res!1045823) b!1527863))

(assert (= (and b!1527862 res!1045821) b!1527865))

(assert (= (and b!1527865 c!140576) b!1527864))

(assert (= (and b!1527865 (not c!140576)) b!1527861))

(assert (= (or b!1527864 b!1527861) bm!68481))

(assert (=> b!1527862 m!1410643))

(assert (=> b!1527862 m!1410643))

(assert (=> b!1527862 m!1410653))

(assert (=> b!1527863 m!1410643))

(assert (=> b!1527863 m!1410643))

(declare-fun m!1410767 () Bool)

(assert (=> b!1527863 m!1410767))

(assert (=> bm!68481 m!1410643))

(declare-fun m!1410769 () Bool)

(assert (=> bm!68481 m!1410769))

(assert (=> b!1527865 m!1410643))

(assert (=> b!1527865 m!1410643))

(assert (=> b!1527865 m!1410653))

(assert (=> b!1527576 d!159579))

(declare-fun b!1527935 () Bool)

(declare-fun e!851634 () SeekEntryResult!13161)

(declare-fun e!851633 () SeekEntryResult!13161)

(assert (=> b!1527935 (= e!851634 e!851633)))

(declare-fun c!140605 () Bool)

(declare-fun lt!661627 () (_ BitVec 64))

(assert (=> b!1527935 (= c!140605 (or (= lt!661627 (select (arr!48975 a!2804) j!70)) (= (bvadd lt!661627 lt!661627) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159587 () Bool)

(declare-fun e!851631 () Bool)

(assert (=> d!159587 e!851631))

(declare-fun c!140604 () Bool)

(declare-fun lt!661626 () SeekEntryResult!13161)

(assert (=> d!159587 (= c!140604 (and (is-Intermediate!13161 lt!661626) (undefined!13973 lt!661626)))))

(assert (=> d!159587 (= lt!661626 e!851634)))

(declare-fun c!140606 () Bool)

(assert (=> d!159587 (= c!140606 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159587 (= lt!661627 (select (arr!48975 a!2804) (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512)))))

(assert (=> d!159587 (validMask!0 mask!2512)))

(assert (=> d!159587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661626)))

(declare-fun b!1527936 () Bool)

(assert (=> b!1527936 (= e!851631 (bvsge (x!136730 lt!661626) #b01111111111111111111111111111110))))

(declare-fun b!1527937 () Bool)

(assert (=> b!1527937 (= e!851634 (Intermediate!13161 true (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527938 () Bool)

(declare-fun e!851635 () Bool)

(assert (=> b!1527938 (= e!851631 e!851635)))

(declare-fun res!1045839 () Bool)

(assert (=> b!1527938 (= res!1045839 (and (is-Intermediate!13161 lt!661626) (not (undefined!13973 lt!661626)) (bvslt (x!136730 lt!661626) #b01111111111111111111111111111110) (bvsge (x!136730 lt!661626) #b00000000000000000000000000000000) (bvsge (x!136730 lt!661626) #b00000000000000000000000000000000)))))

(assert (=> b!1527938 (=> (not res!1045839) (not e!851635))))

(declare-fun b!1527939 () Bool)

(assert (=> b!1527939 (= e!851633 (Intermediate!13161 false (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527940 () Bool)

(assert (=> b!1527940 (and (bvsge (index!55040 lt!661626) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661626) (size!49526 a!2804)))))

(declare-fun e!851632 () Bool)

(assert (=> b!1527940 (= e!851632 (= (select (arr!48975 a!2804) (index!55040 lt!661626)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527941 () Bool)

(assert (=> b!1527941 (and (bvsge (index!55040 lt!661626) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661626) (size!49526 a!2804)))))

(declare-fun res!1045840 () Bool)

(assert (=> b!1527941 (= res!1045840 (= (select (arr!48975 a!2804) (index!55040 lt!661626)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527941 (=> res!1045840 e!851632)))

(declare-fun b!1527942 () Bool)

(assert (=> b!1527942 (= e!851633 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527943 () Bool)

(assert (=> b!1527943 (and (bvsge (index!55040 lt!661626) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661626) (size!49526 a!2804)))))

(declare-fun res!1045841 () Bool)

(assert (=> b!1527943 (= res!1045841 (= (select (arr!48975 a!2804) (index!55040 lt!661626)) (select (arr!48975 a!2804) j!70)))))

(assert (=> b!1527943 (=> res!1045841 e!851632)))

(assert (=> b!1527943 (= e!851635 e!851632)))

(assert (= (and d!159587 c!140606) b!1527937))

(assert (= (and d!159587 (not c!140606)) b!1527935))

(assert (= (and b!1527935 c!140605) b!1527939))

(assert (= (and b!1527935 (not c!140605)) b!1527942))

(assert (= (and d!159587 c!140604) b!1527936))

(assert (= (and d!159587 (not c!140604)) b!1527938))

(assert (= (and b!1527938 res!1045839) b!1527943))

(assert (= (and b!1527943 (not res!1045841)) b!1527941))

(assert (= (and b!1527941 (not res!1045840)) b!1527940))

(declare-fun m!1410789 () Bool)

(assert (=> b!1527940 m!1410789))

(assert (=> d!159587 m!1410569))

(declare-fun m!1410793 () Bool)

(assert (=> d!159587 m!1410793))

(assert (=> d!159587 m!1410545))

(assert (=> b!1527941 m!1410789))

(assert (=> b!1527942 m!1410569))

(declare-fun m!1410797 () Bool)

(assert (=> b!1527942 m!1410797))

(assert (=> b!1527942 m!1410797))

(assert (=> b!1527942 m!1410553))

(declare-fun m!1410803 () Bool)

(assert (=> b!1527942 m!1410803))

(assert (=> b!1527943 m!1410789))

(assert (=> b!1527566 d!159587))

(declare-fun d!159601 () Bool)

(declare-fun lt!661640 () (_ BitVec 32))

(declare-fun lt!661639 () (_ BitVec 32))

(assert (=> d!159601 (= lt!661640 (bvmul (bvxor lt!661639 (bvlshr lt!661639 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159601 (= lt!661639 ((_ extract 31 0) (bvand (bvxor (select (arr!48975 a!2804) j!70) (bvlshr (select (arr!48975 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159601 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1045842 (let ((h!37071 ((_ extract 31 0) (bvand (bvxor (select (arr!48975 a!2804) j!70) (bvlshr (select (arr!48975 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136739 (bvmul (bvxor h!37071 (bvlshr h!37071 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136739 (bvlshr x!136739 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1045842 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1045842 #b00000000000000000000000000000000))))))

(assert (=> d!159601 (= (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) (bvand (bvxor lt!661640 (bvlshr lt!661640 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1527566 d!159601))

(declare-fun d!159603 () Bool)

(declare-fun lt!661652 () SeekEntryResult!13161)

(assert (=> d!159603 (and (or (is-MissingVacant!13161 lt!661652) (not (is-Found!13161 lt!661652)) (and (bvsge (index!55039 lt!661652) #b00000000000000000000000000000000) (bvslt (index!55039 lt!661652) (size!49526 a!2804)))) (not (is-MissingVacant!13161 lt!661652)) (or (not (is-Found!13161 lt!661652)) (= (select (arr!48975 a!2804) (index!55039 lt!661652)) (select (arr!48975 a!2804) j!70))))))

(declare-fun e!851648 () SeekEntryResult!13161)

(assert (=> d!159603 (= lt!661652 e!851648)))

(declare-fun c!140621 () Bool)

(declare-fun lt!661649 () SeekEntryResult!13161)

(assert (=> d!159603 (= c!140621 (and (is-Intermediate!13161 lt!661649) (undefined!13973 lt!661649)))))

(assert (=> d!159603 (= lt!661649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48975 a!2804) j!70) mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159603 (validMask!0 mask!2512)))

(assert (=> d!159603 (= (seekEntry!0 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661652)))

(declare-fun b!1527968 () Bool)

(declare-fun e!851650 () SeekEntryResult!13161)

(assert (=> b!1527968 (= e!851648 e!851650)))

(declare-fun lt!661651 () (_ BitVec 64))

(assert (=> b!1527968 (= lt!661651 (select (arr!48975 a!2804) (index!55040 lt!661649)))))

(declare-fun c!140620 () Bool)

(assert (=> b!1527968 (= c!140620 (= lt!661651 (select (arr!48975 a!2804) j!70)))))

(declare-fun b!1527969 () Bool)

(assert (=> b!1527969 (= e!851648 Undefined!13161)))

(declare-fun b!1527970 () Bool)

(declare-fun e!851649 () SeekEntryResult!13161)

(declare-fun lt!661650 () SeekEntryResult!13161)

(assert (=> b!1527970 (= e!851649 (ite (is-MissingVacant!13161 lt!661650) (MissingZero!13161 (index!55041 lt!661650)) lt!661650))))

(assert (=> b!1527970 (= lt!661650 (seekKeyOrZeroReturnVacant!0 (x!136730 lt!661649) (index!55040 lt!661649) (index!55040 lt!661649) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527971 () Bool)

(assert (=> b!1527971 (= e!851650 (Found!13161 (index!55040 lt!661649)))))

(declare-fun b!1527972 () Bool)

(assert (=> b!1527972 (= e!851649 (MissingZero!13161 (index!55040 lt!661649)))))

(declare-fun b!1527973 () Bool)

(declare-fun c!140619 () Bool)

(assert (=> b!1527973 (= c!140619 (= lt!661651 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527973 (= e!851650 e!851649)))

(assert (= (and d!159603 c!140621) b!1527969))

(assert (= (and d!159603 (not c!140621)) b!1527968))

(assert (= (and b!1527968 c!140620) b!1527971))

(assert (= (and b!1527968 (not c!140620)) b!1527973))

(assert (= (and b!1527973 c!140619) b!1527972))

(assert (= (and b!1527973 (not c!140619)) b!1527970))

(declare-fun m!1410813 () Bool)

(assert (=> d!159603 m!1410813))

(assert (=> d!159603 m!1410553))

(assert (=> d!159603 m!1410569))

(assert (=> d!159603 m!1410569))

(assert (=> d!159603 m!1410553))

(assert (=> d!159603 m!1410571))

(assert (=> d!159603 m!1410545))

(declare-fun m!1410815 () Bool)

(assert (=> b!1527968 m!1410815))

(assert (=> b!1527970 m!1410553))

(declare-fun m!1410817 () Bool)

(assert (=> b!1527970 m!1410817))

(assert (=> b!1527577 d!159603))

(declare-fun d!159605 () Bool)

(assert (=> d!159605 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130166 d!159605))

(declare-fun d!159607 () Bool)

(assert (=> d!159607 (= (array_inv!37920 a!2804) (bvsge (size!49526 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130166 d!159607))

(declare-fun d!159609 () Bool)

(assert (=> d!159609 (= (validKeyInArray!0 (select (arr!48975 a!2804) j!70)) (and (not (= (select (arr!48975 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48975 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527573 d!159609))

(declare-fun b!1527974 () Bool)

(declare-fun e!851654 () SeekEntryResult!13161)

(declare-fun e!851653 () SeekEntryResult!13161)

(assert (=> b!1527974 (= e!851654 e!851653)))

(declare-fun lt!661654 () (_ BitVec 64))

(declare-fun c!140623 () Bool)

(assert (=> b!1527974 (= c!140623 (or (= lt!661654 (select (arr!48975 a!2804) j!70)) (= (bvadd lt!661654 lt!661654) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159611 () Bool)

(declare-fun e!851651 () Bool)

(assert (=> d!159611 e!851651))

(declare-fun c!140622 () Bool)

(declare-fun lt!661653 () SeekEntryResult!13161)

(assert (=> d!159611 (= c!140622 (and (is-Intermediate!13161 lt!661653) (undefined!13973 lt!661653)))))

(assert (=> d!159611 (= lt!661653 e!851654)))

(declare-fun c!140624 () Bool)

(assert (=> d!159611 (= c!140624 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159611 (= lt!661654 (select (arr!48975 a!2804) index!487))))

(assert (=> d!159611 (validMask!0 mask!2512)))

(assert (=> d!159611 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48975 a!2804) j!70) a!2804 mask!2512) lt!661653)))

(declare-fun b!1527975 () Bool)

(assert (=> b!1527975 (= e!851651 (bvsge (x!136730 lt!661653) #b01111111111111111111111111111110))))

(declare-fun b!1527976 () Bool)

(assert (=> b!1527976 (= e!851654 (Intermediate!13161 true index!487 x!534))))

(declare-fun b!1527977 () Bool)

(declare-fun e!851655 () Bool)

(assert (=> b!1527977 (= e!851651 e!851655)))

(declare-fun res!1045843 () Bool)

(assert (=> b!1527977 (= res!1045843 (and (is-Intermediate!13161 lt!661653) (not (undefined!13973 lt!661653)) (bvslt (x!136730 lt!661653) #b01111111111111111111111111111110) (bvsge (x!136730 lt!661653) #b00000000000000000000000000000000) (bvsge (x!136730 lt!661653) x!534)))))

(assert (=> b!1527977 (=> (not res!1045843) (not e!851655))))

(declare-fun b!1527978 () Bool)

(assert (=> b!1527978 (= e!851653 (Intermediate!13161 false index!487 x!534))))

(declare-fun b!1527979 () Bool)

(assert (=> b!1527979 (and (bvsge (index!55040 lt!661653) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661653) (size!49526 a!2804)))))

(declare-fun e!851652 () Bool)

(assert (=> b!1527979 (= e!851652 (= (select (arr!48975 a!2804) (index!55040 lt!661653)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527980 () Bool)

(assert (=> b!1527980 (and (bvsge (index!55040 lt!661653) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661653) (size!49526 a!2804)))))

(declare-fun res!1045844 () Bool)

(assert (=> b!1527980 (= res!1045844 (= (select (arr!48975 a!2804) (index!55040 lt!661653)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527980 (=> res!1045844 e!851652)))

(declare-fun b!1527981 () Bool)

(assert (=> b!1527981 (= e!851653 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48975 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527982 () Bool)

(assert (=> b!1527982 (and (bvsge (index!55040 lt!661653) #b00000000000000000000000000000000) (bvslt (index!55040 lt!661653) (size!49526 a!2804)))))

(declare-fun res!1045845 () Bool)

(assert (=> b!1527982 (= res!1045845 (= (select (arr!48975 a!2804) (index!55040 lt!661653)) (select (arr!48975 a!2804) j!70)))))

(assert (=> b!1527982 (=> res!1045845 e!851652)))

(assert (=> b!1527982 (= e!851655 e!851652)))

(assert (= (and d!159611 c!140624) b!1527976))

(assert (= (and d!159611 (not c!140624)) b!1527974))

(assert (= (and b!1527974 c!140623) b!1527978))

(assert (= (and b!1527974 (not c!140623)) b!1527981))

(assert (= (and d!159611 c!140622) b!1527975))

(assert (= (and d!159611 (not c!140622)) b!1527977))

(assert (= (and b!1527977 res!1045843) b!1527982))

(assert (= (and b!1527982 (not res!1045845)) b!1527980))

(assert (= (and b!1527980 (not res!1045844)) b!1527979))

(declare-fun m!1410819 () Bool)

(assert (=> b!1527979 m!1410819))

(assert (=> d!159611 m!1410573))

(assert (=> d!159611 m!1410545))

(assert (=> b!1527980 m!1410819))

(assert (=> b!1527981 m!1410667))

(assert (=> b!1527981 m!1410667))

(assert (=> b!1527981 m!1410553))

(declare-fun m!1410821 () Bool)

(assert (=> b!1527981 m!1410821))

(assert (=> b!1527982 m!1410819))

(assert (=> b!1527574 d!159611))

(declare-fun b!1527983 () Bool)

(declare-fun e!851659 () SeekEntryResult!13161)

(declare-fun e!851658 () SeekEntryResult!13161)

(assert (=> b!1527983 (= e!851659 e!851658)))

(declare-fun c!140626 () Bool)

(declare-fun lt!661656 () (_ BitVec 64))

(assert (=> b!1527983 (= c!140626 (or (= lt!661656 lt!661468) (= (bvadd lt!661656 lt!661656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159613 () Bool)

(declare-fun e!851656 () Bool)

(assert (=> d!159613 e!851656))

(declare-fun c!140625 () Bool)

(declare-fun lt!661655 () SeekEntryResult!13161)

(assert (=> d!159613 (= c!140625 (and (is-Intermediate!13161 lt!661655) (undefined!13973 lt!661655)))))

(assert (=> d!159613 (= lt!661655 e!851659)))

(declare-fun c!140627 () Bool)

(assert (=> d!159613 (= c!140627 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

