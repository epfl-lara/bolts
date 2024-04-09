; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119248 () Bool)

(assert start!119248)

(declare-fun b!1390474 () Bool)

(declare-fun e!787452 () Bool)

(declare-datatypes ((SeekEntryResult!10252 0))(
  ( (MissingZero!10252 (index!43378 (_ BitVec 32))) (Found!10252 (index!43379 (_ BitVec 32))) (Intermediate!10252 (undefined!11064 Bool) (index!43380 (_ BitVec 32)) (x!125061 (_ BitVec 32))) (Undefined!10252) (MissingVacant!10252 (index!43381 (_ BitVec 32))) )
))
(declare-fun lt!610797 () SeekEntryResult!10252)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1390474 (= e!787452 (not (or (not (is-Intermediate!10252 lt!610797)) (undefined!11064 lt!610797) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(declare-fun e!787453 () Bool)

(assert (=> b!1390474 e!787453))

(declare-fun res!930747 () Bool)

(assert (=> b!1390474 (=> (not res!930747) (not e!787453))))

(declare-datatypes ((array!95103 0))(
  ( (array!95104 (arr!45913 (Array (_ BitVec 32) (_ BitVec 64))) (size!46464 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95103)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95103 (_ BitVec 32)) Bool)

(assert (=> b!1390474 (= res!930747 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46458 0))(
  ( (Unit!46459) )
))
(declare-fun lt!610798 () Unit!46458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46458)

(assert (=> b!1390474 (= lt!610798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95103 (_ BitVec 32)) SeekEntryResult!10252)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390474 (= lt!610797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) (select (arr!45913 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390475 () Bool)

(declare-fun res!930744 () Bool)

(assert (=> b!1390475 (=> (not res!930744) (not e!787452))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390475 (= res!930744 (and (= (size!46464 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46464 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46464 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390476 () Bool)

(declare-fun res!930745 () Bool)

(assert (=> b!1390476 (=> (not res!930745) (not e!787452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390476 (= res!930745 (validKeyInArray!0 (select (arr!45913 a!2901) j!112)))))

(declare-fun b!1390477 () Bool)

(declare-fun res!930746 () Bool)

(assert (=> b!1390477 (=> (not res!930746) (not e!787452))))

(declare-datatypes ((List!32612 0))(
  ( (Nil!32609) (Cons!32608 (h!33826 (_ BitVec 64)) (t!47313 List!32612)) )
))
(declare-fun arrayNoDuplicates!0 (array!95103 (_ BitVec 32) List!32612) Bool)

(assert (=> b!1390477 (= res!930746 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32609))))

(declare-fun b!1390478 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95103 (_ BitVec 32)) SeekEntryResult!10252)

(assert (=> b!1390478 (= e!787453 (= (seekEntryOrOpen!0 (select (arr!45913 a!2901) j!112) a!2901 mask!2840) (Found!10252 j!112)))))

(declare-fun b!1390480 () Bool)

(declare-fun res!930750 () Bool)

(assert (=> b!1390480 (=> (not res!930750) (not e!787452))))

(assert (=> b!1390480 (= res!930750 (validKeyInArray!0 (select (arr!45913 a!2901) i!1037)))))

(declare-fun b!1390479 () Bool)

(declare-fun res!930749 () Bool)

(assert (=> b!1390479 (=> (not res!930749) (not e!787452))))

(assert (=> b!1390479 (= res!930749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!930748 () Bool)

(assert (=> start!119248 (=> (not res!930748) (not e!787452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119248 (= res!930748 (validMask!0 mask!2840))))

(assert (=> start!119248 e!787452))

(assert (=> start!119248 true))

(declare-fun array_inv!34858 (array!95103) Bool)

(assert (=> start!119248 (array_inv!34858 a!2901)))

(assert (= (and start!119248 res!930748) b!1390475))

(assert (= (and b!1390475 res!930744) b!1390480))

(assert (= (and b!1390480 res!930750) b!1390476))

(assert (= (and b!1390476 res!930745) b!1390479))

(assert (= (and b!1390479 res!930749) b!1390477))

(assert (= (and b!1390477 res!930746) b!1390474))

(assert (= (and b!1390474 res!930747) b!1390478))

(declare-fun m!1276409 () Bool)

(assert (=> b!1390478 m!1276409))

(assert (=> b!1390478 m!1276409))

(declare-fun m!1276411 () Bool)

(assert (=> b!1390478 m!1276411))

(declare-fun m!1276413 () Bool)

(assert (=> b!1390477 m!1276413))

(assert (=> b!1390474 m!1276409))

(declare-fun m!1276415 () Bool)

(assert (=> b!1390474 m!1276415))

(assert (=> b!1390474 m!1276409))

(declare-fun m!1276417 () Bool)

(assert (=> b!1390474 m!1276417))

(assert (=> b!1390474 m!1276415))

(assert (=> b!1390474 m!1276409))

(declare-fun m!1276419 () Bool)

(assert (=> b!1390474 m!1276419))

(declare-fun m!1276421 () Bool)

(assert (=> b!1390474 m!1276421))

(assert (=> b!1390476 m!1276409))

(assert (=> b!1390476 m!1276409))

(declare-fun m!1276423 () Bool)

(assert (=> b!1390476 m!1276423))

(declare-fun m!1276425 () Bool)

(assert (=> start!119248 m!1276425))

(declare-fun m!1276427 () Bool)

(assert (=> start!119248 m!1276427))

(declare-fun m!1276429 () Bool)

(assert (=> b!1390479 m!1276429))

(declare-fun m!1276431 () Bool)

(assert (=> b!1390480 m!1276431))

(assert (=> b!1390480 m!1276431))

(declare-fun m!1276433 () Bool)

(assert (=> b!1390480 m!1276433))

(push 1)

(assert (not b!1390478))

(assert (not b!1390477))

(assert (not b!1390480))

(assert (not start!119248))

(assert (not b!1390474))

(assert (not b!1390476))

(assert (not b!1390479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1390565 () Bool)

(declare-fun e!787498 () SeekEntryResult!10252)

(declare-fun e!787497 () SeekEntryResult!10252)

(assert (=> b!1390565 (= e!787498 e!787497)))

(declare-fun lt!610836 () (_ BitVec 64))

(declare-fun lt!610837 () SeekEntryResult!10252)

(assert (=> b!1390565 (= lt!610836 (select (arr!45913 a!2901) (index!43380 lt!610837)))))

(declare-fun c!129330 () Bool)

(assert (=> b!1390565 (= c!129330 (= lt!610836 (select (arr!45913 a!2901) j!112)))))

(declare-fun d!150133 () Bool)

(declare-fun lt!610835 () SeekEntryResult!10252)

(assert (=> d!150133 (and (or (is-Undefined!10252 lt!610835) (not (is-Found!10252 lt!610835)) (and (bvsge (index!43379 lt!610835) #b00000000000000000000000000000000) (bvslt (index!43379 lt!610835) (size!46464 a!2901)))) (or (is-Undefined!10252 lt!610835) (is-Found!10252 lt!610835) (not (is-MissingZero!10252 lt!610835)) (and (bvsge (index!43378 lt!610835) #b00000000000000000000000000000000) (bvslt (index!43378 lt!610835) (size!46464 a!2901)))) (or (is-Undefined!10252 lt!610835) (is-Found!10252 lt!610835) (is-MissingZero!10252 lt!610835) (not (is-MissingVacant!10252 lt!610835)) (and (bvsge (index!43381 lt!610835) #b00000000000000000000000000000000) (bvslt (index!43381 lt!610835) (size!46464 a!2901)))) (or (is-Undefined!10252 lt!610835) (ite (is-Found!10252 lt!610835) (= (select (arr!45913 a!2901) (index!43379 lt!610835)) (select (arr!45913 a!2901) j!112)) (ite (is-MissingZero!10252 lt!610835) (= (select (arr!45913 a!2901) (index!43378 lt!610835)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10252 lt!610835) (= (select (arr!45913 a!2901) (index!43381 lt!610835)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150133 (= lt!610835 e!787498)))

(declare-fun c!129331 () Bool)

(assert (=> d!150133 (= c!129331 (and (is-Intermediate!10252 lt!610837) (undefined!11064 lt!610837)))))

(assert (=> d!150133 (= lt!610837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) (select (arr!45913 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150133 (validMask!0 mask!2840)))

(assert (=> d!150133 (= (seekEntryOrOpen!0 (select (arr!45913 a!2901) j!112) a!2901 mask!2840) lt!610835)))

(declare-fun b!1390566 () Bool)

(declare-fun e!787499 () SeekEntryResult!10252)

(assert (=> b!1390566 (= e!787499 (MissingZero!10252 (index!43380 lt!610837)))))

(declare-fun b!1390567 () Bool)

(assert (=> b!1390567 (= e!787498 Undefined!10252)))

(declare-fun b!1390568 () Bool)

(assert (=> b!1390568 (= e!787497 (Found!10252 (index!43380 lt!610837)))))

(declare-fun b!1390569 () Bool)

(declare-fun c!129332 () Bool)

(assert (=> b!1390569 (= c!129332 (= lt!610836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1390569 (= e!787497 e!787499)))

(declare-fun b!1390570 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95103 (_ BitVec 32)) SeekEntryResult!10252)

(assert (=> b!1390570 (= e!787499 (seekKeyOrZeroReturnVacant!0 (x!125061 lt!610837) (index!43380 lt!610837) (index!43380 lt!610837) (select (arr!45913 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150133 c!129331) b!1390567))

(assert (= (and d!150133 (not c!129331)) b!1390565))

(assert (= (and b!1390565 c!129330) b!1390568))

(assert (= (and b!1390565 (not c!129330)) b!1390569))

(assert (= (and b!1390569 c!129332) b!1390566))

(assert (= (and b!1390569 (not c!129332)) b!1390570))

(declare-fun m!1276509 () Bool)

(assert (=> b!1390565 m!1276509))

(assert (=> d!150133 m!1276409))

(assert (=> d!150133 m!1276415))

(declare-fun m!1276511 () Bool)

(assert (=> d!150133 m!1276511))

(assert (=> d!150133 m!1276415))

(assert (=> d!150133 m!1276409))

(assert (=> d!150133 m!1276419))

(assert (=> d!150133 m!1276425))

(declare-fun m!1276513 () Bool)

(assert (=> d!150133 m!1276513))

(declare-fun m!1276515 () Bool)

(assert (=> d!150133 m!1276515))

(assert (=> b!1390570 m!1276409))

(declare-fun m!1276517 () Bool)

(assert (=> b!1390570 m!1276517))

(assert (=> b!1390478 d!150133))

(declare-fun bm!66702 () Bool)

(declare-fun call!66705 () Bool)

(assert (=> bm!66702 (= call!66705 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390603 () Bool)

(declare-fun e!787522 () Bool)

(assert (=> b!1390603 (= e!787522 call!66705)))

(declare-fun b!1390604 () Bool)

(declare-fun e!787521 () Bool)

(assert (=> b!1390604 (= e!787521 e!787522)))

(declare-fun c!129344 () Bool)

(assert (=> b!1390604 (= c!129344 (validKeyInArray!0 (select (arr!45913 a!2901) j!112)))))

(declare-fun d!150141 () Bool)

(declare-fun res!930810 () Bool)

(assert (=> d!150141 (=> res!930810 e!787521)))

(assert (=> d!150141 (= res!930810 (bvsge j!112 (size!46464 a!2901)))))

(assert (=> d!150141 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787521)))

(declare-fun b!1390605 () Bool)

(declare-fun e!787523 () Bool)

(assert (=> b!1390605 (= e!787522 e!787523)))

(declare-fun lt!610861 () (_ BitVec 64))

(assert (=> b!1390605 (= lt!610861 (select (arr!45913 a!2901) j!112))))

(declare-fun lt!610859 () Unit!46458)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95103 (_ BitVec 64) (_ BitVec 32)) Unit!46458)

(assert (=> b!1390605 (= lt!610859 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610861 j!112))))

(declare-fun arrayContainsKey!0 (array!95103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1390605 (arrayContainsKey!0 a!2901 lt!610861 #b00000000000000000000000000000000)))

(declare-fun lt!610860 () Unit!46458)

(assert (=> b!1390605 (= lt!610860 lt!610859)))

(declare-fun res!930809 () Bool)

(assert (=> b!1390605 (= res!930809 (= (seekEntryOrOpen!0 (select (arr!45913 a!2901) j!112) a!2901 mask!2840) (Found!10252 j!112)))))

(assert (=> b!1390605 (=> (not res!930809) (not e!787523))))

(declare-fun b!1390606 () Bool)

(assert (=> b!1390606 (= e!787523 call!66705)))

(assert (= (and d!150141 (not res!930810)) b!1390604))

(assert (= (and b!1390604 c!129344) b!1390605))

(assert (= (and b!1390604 (not c!129344)) b!1390603))

(assert (= (and b!1390605 res!930809) b!1390606))

(assert (= (or b!1390606 b!1390603) bm!66702))

(declare-fun m!1276525 () Bool)

(assert (=> bm!66702 m!1276525))

(assert (=> b!1390604 m!1276409))

(assert (=> b!1390604 m!1276409))

(assert (=> b!1390604 m!1276423))

(assert (=> b!1390605 m!1276409))

(declare-fun m!1276527 () Bool)

(assert (=> b!1390605 m!1276527))

(declare-fun m!1276529 () Bool)

(assert (=> b!1390605 m!1276529))

(assert (=> b!1390605 m!1276409))

(assert (=> b!1390605 m!1276411))

(assert (=> b!1390474 d!150141))

(declare-fun d!150145 () Bool)

(assert (=> d!150145 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!610870 () Unit!46458)

(declare-fun choose!38 (array!95103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46458)

(assert (=> d!150145 (= lt!610870 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150145 (validMask!0 mask!2840)))

(assert (=> d!150145 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!610870)))

(declare-fun bs!40449 () Bool)

(assert (= bs!40449 d!150145))

(assert (=> bs!40449 m!1276421))

(declare-fun m!1276543 () Bool)

(assert (=> bs!40449 m!1276543))

(assert (=> bs!40449 m!1276425))

(assert (=> b!1390474 d!150145))

(declare-fun b!1390677 () Bool)

(declare-fun e!787569 () Bool)

(declare-fun lt!610884 () SeekEntryResult!10252)

(assert (=> b!1390677 (= e!787569 (bvsge (x!125061 lt!610884) #b01111111111111111111111111111110))))

(declare-fun e!787568 () SeekEntryResult!10252)

(declare-fun b!1390678 () Bool)

(assert (=> b!1390678 (= e!787568 (Intermediate!10252 false (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1390679 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390679 (= e!787568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45913 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390680 () Bool)

(assert (=> b!1390680 (and (bvsge (index!43380 lt!610884) #b00000000000000000000000000000000) (bvslt (index!43380 lt!610884) (size!46464 a!2901)))))

(declare-fun e!787571 () Bool)

(assert (=> b!1390680 (= e!787571 (= (select (arr!45913 a!2901) (index!43380 lt!610884)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1390681 () Bool)

(assert (=> b!1390681 (and (bvsge (index!43380 lt!610884) #b00000000000000000000000000000000) (bvslt (index!43380 lt!610884) (size!46464 a!2901)))))

(declare-fun res!930839 () Bool)

(assert (=> b!1390681 (= res!930839 (= (select (arr!45913 a!2901) (index!43380 lt!610884)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1390681 (=> res!930839 e!787571)))

(declare-fun d!150153 () Bool)

(assert (=> d!150153 e!787569))

(declare-fun c!129367 () Bool)

(assert (=> d!150153 (= c!129367 (and (is-Intermediate!10252 lt!610884) (undefined!11064 lt!610884)))))

(declare-fun e!787567 () SeekEntryResult!10252)

(assert (=> d!150153 (= lt!610884 e!787567)))

(declare-fun c!129368 () Bool)

(assert (=> d!150153 (= c!129368 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!610885 () (_ BitVec 64))

(assert (=> d!150153 (= lt!610885 (select (arr!45913 a!2901) (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840)))))

(assert (=> d!150153 (validMask!0 mask!2840)))

(assert (=> d!150153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) (select (arr!45913 a!2901) j!112) a!2901 mask!2840) lt!610884)))

(declare-fun b!1390682 () Bool)

(assert (=> b!1390682 (= e!787567 e!787568)))

(declare-fun c!129369 () Bool)

(assert (=> b!1390682 (= c!129369 (or (= lt!610885 (select (arr!45913 a!2901) j!112)) (= (bvadd lt!610885 lt!610885) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1390683 () Bool)

(assert (=> b!1390683 (= e!787567 (Intermediate!10252 true (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1390684 () Bool)

(declare-fun e!787570 () Bool)

(assert (=> b!1390684 (= e!787569 e!787570)))

(declare-fun res!930838 () Bool)

(assert (=> b!1390684 (= res!930838 (and (is-Intermediate!10252 lt!610884) (not (undefined!11064 lt!610884)) (bvslt (x!125061 lt!610884) #b01111111111111111111111111111110) (bvsge (x!125061 lt!610884) #b00000000000000000000000000000000) (bvsge (x!125061 lt!610884) #b00000000000000000000000000000000)))))

(assert (=> b!1390684 (=> (not res!930838) (not e!787570))))

(declare-fun b!1390685 () Bool)

(assert (=> b!1390685 (and (bvsge (index!43380 lt!610884) #b00000000000000000000000000000000) (bvslt (index!43380 lt!610884) (size!46464 a!2901)))))

(declare-fun res!930840 () Bool)

(assert (=> b!1390685 (= res!930840 (= (select (arr!45913 a!2901) (index!43380 lt!610884)) (select (arr!45913 a!2901) j!112)))))

(assert (=> b!1390685 (=> res!930840 e!787571)))

(assert (=> b!1390685 (= e!787570 e!787571)))

(assert (= (and d!150153 c!129368) b!1390683))

(assert (= (and d!150153 (not c!129368)) b!1390682))

(assert (= (and b!1390682 c!129369) b!1390678))

(assert (= (and b!1390682 (not c!129369)) b!1390679))

(assert (= (and d!150153 c!129367) b!1390677))

(assert (= (and d!150153 (not c!129367)) b!1390684))

(assert (= (and b!1390684 res!930838) b!1390685))

(assert (= (and b!1390685 (not res!930840)) b!1390681))

(assert (= (and b!1390681 (not res!930839)) b!1390680))

(assert (=> d!150153 m!1276415))

(declare-fun m!1276563 () Bool)

(assert (=> d!150153 m!1276563))

(assert (=> d!150153 m!1276425))

(declare-fun m!1276565 () Bool)

(assert (=> b!1390681 m!1276565))

(assert (=> b!1390685 m!1276565))

(assert (=> b!1390680 m!1276565))

(assert (=> b!1390679 m!1276415))

(declare-fun m!1276567 () Bool)

(assert (=> b!1390679 m!1276567))

(assert (=> b!1390679 m!1276567))

(assert (=> b!1390679 m!1276409))

(declare-fun m!1276569 () Bool)

(assert (=> b!1390679 m!1276569))

(assert (=> b!1390474 d!150153))

(declare-fun d!150167 () Bool)

(declare-fun lt!610900 () (_ BitVec 32))

(declare-fun lt!610899 () (_ BitVec 32))

(assert (=> d!150167 (= lt!610900 (bvmul (bvxor lt!610899 (bvlshr lt!610899 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150167 (= lt!610899 ((_ extract 31 0) (bvand (bvxor (select (arr!45913 a!2901) j!112) (bvlshr (select (arr!45913 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150167 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!930841 (let ((h!33830 ((_ extract 31 0) (bvand (bvxor (select (arr!45913 a!2901) j!112) (bvlshr (select (arr!45913 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125067 (bvmul (bvxor h!33830 (bvlshr h!33830 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125067 (bvlshr x!125067 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!930841 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!930841 #b00000000000000000000000000000000))))))

(assert (=> d!150167 (= (toIndex!0 (select (arr!45913 a!2901) j!112) mask!2840) (bvand (bvxor lt!610900 (bvlshr lt!610900 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1390474 d!150167))

(declare-fun bm!66707 () Bool)

(declare-fun call!66710 () Bool)

(assert (=> bm!66707 (= call!66710 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390686 () Bool)

(declare-fun e!787573 () Bool)

(assert (=> b!1390686 (= e!787573 call!66710)))

(declare-fun b!1390687 () Bool)

(declare-fun e!787572 () Bool)

(assert (=> b!1390687 (= e!787572 e!787573)))

(declare-fun c!129370 () Bool)

(assert (=> b!1390687 (= c!129370 (validKeyInArray!0 (select (arr!45913 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150173 () Bool)

(declare-fun res!930843 () Bool)

(assert (=> d!150173 (=> res!930843 e!787572)))

(assert (=> d!150173 (= res!930843 (bvsge #b00000000000000000000000000000000 (size!46464 a!2901)))))

(assert (=> d!150173 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787572)))

(declare-fun b!1390688 () Bool)

(declare-fun e!787574 () Bool)

(assert (=> b!1390688 (= e!787573 e!787574)))

(declare-fun lt!610903 () (_ BitVec 64))

(assert (=> b!1390688 (= lt!610903 (select (arr!45913 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!610901 () Unit!46458)

(assert (=> b!1390688 (= lt!610901 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610903 #b00000000000000000000000000000000))))

(assert (=> b!1390688 (arrayContainsKey!0 a!2901 lt!610903 #b00000000000000000000000000000000)))

(declare-fun lt!610902 () Unit!46458)

(assert (=> b!1390688 (= lt!610902 lt!610901)))

(declare-fun res!930842 () Bool)

(assert (=> b!1390688 (= res!930842 (= (seekEntryOrOpen!0 (select (arr!45913 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10252 #b00000000000000000000000000000000)))))

(assert (=> b!1390688 (=> (not res!930842) (not e!787574))))

(declare-fun b!1390689 () Bool)

(assert (=> b!1390689 (= e!787574 call!66710)))

(assert (= (and d!150173 (not res!930843)) b!1390687))

(assert (= (and b!1390687 c!129370) b!1390688))

(assert (= (and b!1390687 (not c!129370)) b!1390686))

(assert (= (and b!1390688 res!930842) b!1390689))

(assert (= (or b!1390689 b!1390686) bm!66707))

(declare-fun m!1276573 () Bool)

(assert (=> bm!66707 m!1276573))

(declare-fun m!1276575 () Bool)

(assert (=> b!1390687 m!1276575))

(assert (=> b!1390687 m!1276575))

(declare-fun m!1276577 () Bool)

(assert (=> b!1390687 m!1276577))

(assert (=> b!1390688 m!1276575))

(declare-fun m!1276579 () Bool)

(assert (=> b!1390688 m!1276579))

(declare-fun m!1276581 () Bool)

(assert (=> b!1390688 m!1276581))

(assert (=> b!1390688 m!1276575))

(declare-fun m!1276583 () Bool)

(assert (=> b!1390688 m!1276583))

(assert (=> b!1390479 d!150173))

(declare-fun d!150175 () Bool)

(assert (=> d!150175 (= (validKeyInArray!0 (select (arr!45913 a!2901) i!1037)) (and (not (= (select (arr!45913 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45913 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390480 d!150175))

(declare-fun bm!66710 () Bool)

(declare-fun call!66713 () Bool)

(declare-fun c!129373 () Bool)

(assert (=> bm!66710 (= call!66713 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129373 (Cons!32608 (select (arr!45913 a!2901) #b00000000000000000000000000000000) Nil!32609) Nil!32609)))))

(declare-fun d!150177 () Bool)

(declare-fun res!930852 () Bool)

(declare-fun e!787584 () Bool)

(assert (=> d!150177 (=> res!930852 e!787584)))

(assert (=> d!150177 (= res!930852 (bvsge #b00000000000000000000000000000000 (size!46464 a!2901)))))

(assert (=> d!150177 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32609) e!787584)))

(declare-fun b!1390700 () Bool)

(declare-fun e!787586 () Bool)

(assert (=> b!1390700 (= e!787584 e!787586)))

(declare-fun res!930850 () Bool)

(assert (=> b!1390700 (=> (not res!930850) (not e!787586))))

(declare-fun e!787583 () Bool)

(assert (=> b!1390700 (= res!930850 (not e!787583))))

(declare-fun res!930851 () Bool)

(assert (=> b!1390700 (=> (not res!930851) (not e!787583))))

(assert (=> b!1390700 (= res!930851 (validKeyInArray!0 (select (arr!45913 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390701 () Bool)

(declare-fun e!787585 () Bool)

(assert (=> b!1390701 (= e!787585 call!66713)))

(declare-fun b!1390702 () Bool)

(assert (=> b!1390702 (= e!787585 call!66713)))

(declare-fun b!1390703 () Bool)

(assert (=> b!1390703 (= e!787586 e!787585)))

(assert (=> b!1390703 (= c!129373 (validKeyInArray!0 (select (arr!45913 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390704 () Bool)

(declare-fun contains!9775 (List!32612 (_ BitVec 64)) Bool)

(assert (=> b!1390704 (= e!787583 (contains!9775 Nil!32609 (select (arr!45913 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150177 (not res!930852)) b!1390700))

(assert (= (and b!1390700 res!930851) b!1390704))

(assert (= (and b!1390700 res!930850) b!1390703))

(assert (= (and b!1390703 c!129373) b!1390701))

(assert (= (and b!1390703 (not c!129373)) b!1390702))

(assert (= (or b!1390701 b!1390702) bm!66710))

(assert (=> bm!66710 m!1276575))

(declare-fun m!1276585 () Bool)

(assert (=> bm!66710 m!1276585))

(assert (=> b!1390700 m!1276575))

(assert (=> b!1390700 m!1276575))

(assert (=> b!1390700 m!1276577))

(assert (=> b!1390703 m!1276575))

(assert (=> b!1390703 m!1276575))

(assert (=> b!1390703 m!1276577))

(assert (=> b!1390704 m!1276575))

(assert (=> b!1390704 m!1276575))

(declare-fun m!1276587 () Bool)

(assert (=> b!1390704 m!1276587))

(assert (=> b!1390477 d!150177))

(declare-fun d!150185 () Bool)

(assert (=> d!150185 (= (validKeyInArray!0 (select (arr!45913 a!2901) j!112)) (and (not (= (select (arr!45913 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45913 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390476 d!150185))

(declare-fun d!150187 () Bool)

(assert (=> d!150187 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119248 d!150187))

(declare-fun d!150193 () Bool)

(assert (=> d!150193 (= (array_inv!34858 a!2901) (bvsge (size!46464 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119248 d!150193))

(push 1)

