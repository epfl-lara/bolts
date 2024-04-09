; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32846 () Bool)

(assert start!32846)

(declare-fun b!327642 () Bool)

(declare-fun e!201477 () Bool)

(declare-fun e!201476 () Bool)

(assert (=> b!327642 (= e!201477 e!201476)))

(declare-fun res!180555 () Bool)

(assert (=> b!327642 (=> (not res!180555) (not e!201476))))

(declare-datatypes ((array!16789 0))(
  ( (array!16790 (arr!7943 (Array (_ BitVec 32) (_ BitVec 64))) (size!8295 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16789)

(declare-datatypes ((SeekEntryResult!3085 0))(
  ( (MissingZero!3085 (index!14516 (_ BitVec 32))) (Found!3085 (index!14517 (_ BitVec 32))) (Intermediate!3085 (undefined!3897 Bool) (index!14518 (_ BitVec 32)) (x!32730 (_ BitVec 32))) (Undefined!3085) (MissingVacant!3085 (index!14519 (_ BitVec 32))) )
))
(declare-fun lt!157657 () SeekEntryResult!3085)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16789 (_ BitVec 32)) SeekEntryResult!3085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327642 (= res!180555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157657))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!327642 (= lt!157657 (Intermediate!3085 false resIndex!58 resX!58))))

(declare-fun b!327643 () Bool)

(declare-fun res!180550 () Bool)

(assert (=> b!327643 (=> (not res!180550) (not e!201476))))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!327643 (= res!180550 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157657))))

(declare-fun b!327644 () Bool)

(declare-fun lt!157658 () SeekEntryResult!3085)

(get-info :version)

(assert (=> b!327644 (= e!201476 (and ((_ is Intermediate!3085) lt!157658) (bvslt (x!32730 lt!157658) (bvadd #b00000000000000000000000000000001 x!1490))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327644 (= lt!157658 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327645 () Bool)

(declare-fun res!180549 () Bool)

(assert (=> b!327645 (=> (not res!180549) (not e!201477))))

(declare-fun arrayContainsKey!0 (array!16789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327645 (= res!180549 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327646 () Bool)

(declare-fun res!180551 () Bool)

(assert (=> b!327646 (=> (not res!180551) (not e!201477))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16789 (_ BitVec 32)) SeekEntryResult!3085)

(assert (=> b!327646 (= res!180551 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3085 i!1250)))))

(declare-fun res!180558 () Bool)

(assert (=> start!32846 (=> (not res!180558) (not e!201477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32846 (= res!180558 (validMask!0 mask!3777))))

(assert (=> start!32846 e!201477))

(declare-fun array_inv!5897 (array!16789) Bool)

(assert (=> start!32846 (array_inv!5897 a!3305)))

(assert (=> start!32846 true))

(declare-fun b!327647 () Bool)

(declare-fun res!180552 () Bool)

(assert (=> b!327647 (=> (not res!180552) (not e!201477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327647 (= res!180552 (validKeyInArray!0 k0!2497))))

(declare-fun b!327648 () Bool)

(declare-fun res!180556 () Bool)

(assert (=> b!327648 (=> (not res!180556) (not e!201477))))

(assert (=> b!327648 (= res!180556 (and (= (size!8295 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8295 a!3305))))))

(declare-fun b!327649 () Bool)

(declare-fun res!180557 () Bool)

(assert (=> b!327649 (=> (not res!180557) (not e!201476))))

(assert (=> b!327649 (= res!180557 (and (= (select (arr!7943 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8295 a!3305))))))

(declare-fun b!327650 () Bool)

(declare-fun res!180553 () Bool)

(assert (=> b!327650 (=> (not res!180553) (not e!201476))))

(assert (=> b!327650 (= res!180553 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7943 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7943 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7943 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!327651 () Bool)

(declare-fun res!180554 () Bool)

(assert (=> b!327651 (=> (not res!180554) (not e!201477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16789 (_ BitVec 32)) Bool)

(assert (=> b!327651 (= res!180554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32846 res!180558) b!327648))

(assert (= (and b!327648 res!180556) b!327647))

(assert (= (and b!327647 res!180552) b!327645))

(assert (= (and b!327645 res!180549) b!327646))

(assert (= (and b!327646 res!180551) b!327651))

(assert (= (and b!327651 res!180554) b!327642))

(assert (= (and b!327642 res!180555) b!327649))

(assert (= (and b!327649 res!180557) b!327643))

(assert (= (and b!327643 res!180550) b!327650))

(assert (= (and b!327650 res!180553) b!327644))

(declare-fun m!333891 () Bool)

(assert (=> b!327651 m!333891))

(declare-fun m!333893 () Bool)

(assert (=> b!327643 m!333893))

(declare-fun m!333895 () Bool)

(assert (=> b!327645 m!333895))

(declare-fun m!333897 () Bool)

(assert (=> b!327650 m!333897))

(declare-fun m!333899 () Bool)

(assert (=> b!327649 m!333899))

(declare-fun m!333901 () Bool)

(assert (=> b!327647 m!333901))

(declare-fun m!333903 () Bool)

(assert (=> b!327642 m!333903))

(assert (=> b!327642 m!333903))

(declare-fun m!333905 () Bool)

(assert (=> b!327642 m!333905))

(declare-fun m!333907 () Bool)

(assert (=> b!327644 m!333907))

(assert (=> b!327644 m!333907))

(declare-fun m!333909 () Bool)

(assert (=> b!327644 m!333909))

(declare-fun m!333911 () Bool)

(assert (=> start!32846 m!333911))

(declare-fun m!333913 () Bool)

(assert (=> start!32846 m!333913))

(declare-fun m!333915 () Bool)

(assert (=> b!327646 m!333915))

(check-sat (not b!327646) (not b!327642) (not start!32846) (not b!327651) (not b!327644) (not b!327643) (not b!327647) (not b!327645))
(check-sat)
(get-model)

(declare-fun d!69783 () Bool)

(assert (=> d!69783 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327647 d!69783))

(declare-fun b!327730 () Bool)

(declare-fun e!201515 () SeekEntryResult!3085)

(declare-fun lt!157680 () SeekEntryResult!3085)

(assert (=> b!327730 (= e!201515 (Found!3085 (index!14518 lt!157680)))))

(declare-fun e!201514 () SeekEntryResult!3085)

(declare-fun b!327731 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16789 (_ BitVec 32)) SeekEntryResult!3085)

(assert (=> b!327731 (= e!201514 (seekKeyOrZeroReturnVacant!0 (x!32730 lt!157680) (index!14518 lt!157680) (index!14518 lt!157680) k0!2497 a!3305 mask!3777))))

(declare-fun b!327732 () Bool)

(declare-fun e!201516 () SeekEntryResult!3085)

(assert (=> b!327732 (= e!201516 e!201515)))

(declare-fun lt!157681 () (_ BitVec 64))

(assert (=> b!327732 (= lt!157681 (select (arr!7943 a!3305) (index!14518 lt!157680)))))

(declare-fun c!51198 () Bool)

(assert (=> b!327732 (= c!51198 (= lt!157681 k0!2497))))

(declare-fun b!327733 () Bool)

(assert (=> b!327733 (= e!201516 Undefined!3085)))

(declare-fun d!69789 () Bool)

(declare-fun lt!157679 () SeekEntryResult!3085)

(assert (=> d!69789 (and (or ((_ is Undefined!3085) lt!157679) (not ((_ is Found!3085) lt!157679)) (and (bvsge (index!14517 lt!157679) #b00000000000000000000000000000000) (bvslt (index!14517 lt!157679) (size!8295 a!3305)))) (or ((_ is Undefined!3085) lt!157679) ((_ is Found!3085) lt!157679) (not ((_ is MissingZero!3085) lt!157679)) (and (bvsge (index!14516 lt!157679) #b00000000000000000000000000000000) (bvslt (index!14516 lt!157679) (size!8295 a!3305)))) (or ((_ is Undefined!3085) lt!157679) ((_ is Found!3085) lt!157679) ((_ is MissingZero!3085) lt!157679) (not ((_ is MissingVacant!3085) lt!157679)) (and (bvsge (index!14519 lt!157679) #b00000000000000000000000000000000) (bvslt (index!14519 lt!157679) (size!8295 a!3305)))) (or ((_ is Undefined!3085) lt!157679) (ite ((_ is Found!3085) lt!157679) (= (select (arr!7943 a!3305) (index!14517 lt!157679)) k0!2497) (ite ((_ is MissingZero!3085) lt!157679) (= (select (arr!7943 a!3305) (index!14516 lt!157679)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3085) lt!157679) (= (select (arr!7943 a!3305) (index!14519 lt!157679)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69789 (= lt!157679 e!201516)))

(declare-fun c!51199 () Bool)

(assert (=> d!69789 (= c!51199 (and ((_ is Intermediate!3085) lt!157680) (undefined!3897 lt!157680)))))

(assert (=> d!69789 (= lt!157680 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69789 (validMask!0 mask!3777)))

(assert (=> d!69789 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157679)))

(declare-fun b!327734 () Bool)

(declare-fun c!51200 () Bool)

(assert (=> b!327734 (= c!51200 (= lt!157681 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327734 (= e!201515 e!201514)))

(declare-fun b!327735 () Bool)

(assert (=> b!327735 (= e!201514 (MissingZero!3085 (index!14518 lt!157680)))))

(assert (= (and d!69789 c!51199) b!327733))

(assert (= (and d!69789 (not c!51199)) b!327732))

(assert (= (and b!327732 c!51198) b!327730))

(assert (= (and b!327732 (not c!51198)) b!327734))

(assert (= (and b!327734 c!51200) b!327735))

(assert (= (and b!327734 (not c!51200)) b!327731))

(declare-fun m!333943 () Bool)

(assert (=> b!327731 m!333943))

(declare-fun m!333945 () Bool)

(assert (=> b!327732 m!333945))

(assert (=> d!69789 m!333903))

(declare-fun m!333947 () Bool)

(assert (=> d!69789 m!333947))

(assert (=> d!69789 m!333911))

(assert (=> d!69789 m!333903))

(assert (=> d!69789 m!333905))

(declare-fun m!333949 () Bool)

(assert (=> d!69789 m!333949))

(declare-fun m!333951 () Bool)

(assert (=> d!69789 m!333951))

(assert (=> b!327646 d!69789))

(declare-fun d!69795 () Bool)

(declare-fun e!201567 () Bool)

(assert (=> d!69795 e!201567))

(declare-fun c!51226 () Bool)

(declare-fun lt!157718 () SeekEntryResult!3085)

(assert (=> d!69795 (= c!51226 (and ((_ is Intermediate!3085) lt!157718) (undefined!3897 lt!157718)))))

(declare-fun e!201565 () SeekEntryResult!3085)

(assert (=> d!69795 (= lt!157718 e!201565)))

(declare-fun c!51224 () Bool)

(assert (=> d!69795 (= c!51224 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157717 () (_ BitVec 64))

(assert (=> d!69795 (= lt!157717 (select (arr!7943 a!3305) index!1840))))

(assert (=> d!69795 (validMask!0 mask!3777)))

(assert (=> d!69795 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157718)))

(declare-fun b!327813 () Bool)

(declare-fun e!201564 () SeekEntryResult!3085)

(assert (=> b!327813 (= e!201564 (Intermediate!3085 false index!1840 x!1490))))

(declare-fun b!327814 () Bool)

(assert (=> b!327814 (and (bvsge (index!14518 lt!157718) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157718) (size!8295 a!3305)))))

(declare-fun res!180634 () Bool)

(assert (=> b!327814 (= res!180634 (= (select (arr!7943 a!3305) (index!14518 lt!157718)) k0!2497))))

(declare-fun e!201566 () Bool)

(assert (=> b!327814 (=> res!180634 e!201566)))

(declare-fun e!201568 () Bool)

(assert (=> b!327814 (= e!201568 e!201566)))

(declare-fun b!327815 () Bool)

(assert (=> b!327815 (= e!201565 (Intermediate!3085 true index!1840 x!1490))))

(declare-fun b!327816 () Bool)

(assert (=> b!327816 (= e!201567 e!201568)))

(declare-fun res!180635 () Bool)

(assert (=> b!327816 (= res!180635 (and ((_ is Intermediate!3085) lt!157718) (not (undefined!3897 lt!157718)) (bvslt (x!32730 lt!157718) #b01111111111111111111111111111110) (bvsge (x!32730 lt!157718) #b00000000000000000000000000000000) (bvsge (x!32730 lt!157718) x!1490)))))

(assert (=> b!327816 (=> (not res!180635) (not e!201568))))

(declare-fun b!327817 () Bool)

(assert (=> b!327817 (= e!201564 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327818 () Bool)

(assert (=> b!327818 (and (bvsge (index!14518 lt!157718) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157718) (size!8295 a!3305)))))

(declare-fun res!180636 () Bool)

(assert (=> b!327818 (= res!180636 (= (select (arr!7943 a!3305) (index!14518 lt!157718)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327818 (=> res!180636 e!201566)))

(declare-fun b!327819 () Bool)

(assert (=> b!327819 (= e!201567 (bvsge (x!32730 lt!157718) #b01111111111111111111111111111110))))

(declare-fun b!327820 () Bool)

(assert (=> b!327820 (and (bvsge (index!14518 lt!157718) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157718) (size!8295 a!3305)))))

(assert (=> b!327820 (= e!201566 (= (select (arr!7943 a!3305) (index!14518 lt!157718)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327821 () Bool)

(assert (=> b!327821 (= e!201565 e!201564)))

(declare-fun c!51225 () Bool)

(assert (=> b!327821 (= c!51225 (or (= lt!157717 k0!2497) (= (bvadd lt!157717 lt!157717) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69795 c!51224) b!327815))

(assert (= (and d!69795 (not c!51224)) b!327821))

(assert (= (and b!327821 c!51225) b!327813))

(assert (= (and b!327821 (not c!51225)) b!327817))

(assert (= (and d!69795 c!51226) b!327819))

(assert (= (and d!69795 (not c!51226)) b!327816))

(assert (= (and b!327816 res!180635) b!327814))

(assert (= (and b!327814 (not res!180634)) b!327818))

(assert (= (and b!327818 (not res!180636)) b!327820))

(assert (=> d!69795 m!333897))

(assert (=> d!69795 m!333911))

(declare-fun m!333995 () Bool)

(assert (=> b!327814 m!333995))

(assert (=> b!327817 m!333907))

(assert (=> b!327817 m!333907))

(declare-fun m!333997 () Bool)

(assert (=> b!327817 m!333997))

(assert (=> b!327820 m!333995))

(assert (=> b!327818 m!333995))

(assert (=> b!327643 d!69795))

(declare-fun d!69819 () Bool)

(declare-fun e!201572 () Bool)

(assert (=> d!69819 e!201572))

(declare-fun c!51229 () Bool)

(declare-fun lt!157722 () SeekEntryResult!3085)

(assert (=> d!69819 (= c!51229 (and ((_ is Intermediate!3085) lt!157722) (undefined!3897 lt!157722)))))

(declare-fun e!201570 () SeekEntryResult!3085)

(assert (=> d!69819 (= lt!157722 e!201570)))

(declare-fun c!51227 () Bool)

(assert (=> d!69819 (= c!51227 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157721 () (_ BitVec 64))

(assert (=> d!69819 (= lt!157721 (select (arr!7943 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69819 (validMask!0 mask!3777)))

(assert (=> d!69819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157722)))

(declare-fun b!327822 () Bool)

(declare-fun e!201569 () SeekEntryResult!3085)

(assert (=> b!327822 (= e!201569 (Intermediate!3085 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327823 () Bool)

(assert (=> b!327823 (and (bvsge (index!14518 lt!157722) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157722) (size!8295 a!3305)))))

(declare-fun res!180637 () Bool)

(assert (=> b!327823 (= res!180637 (= (select (arr!7943 a!3305) (index!14518 lt!157722)) k0!2497))))

(declare-fun e!201571 () Bool)

(assert (=> b!327823 (=> res!180637 e!201571)))

(declare-fun e!201573 () Bool)

(assert (=> b!327823 (= e!201573 e!201571)))

(declare-fun b!327824 () Bool)

(assert (=> b!327824 (= e!201570 (Intermediate!3085 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327825 () Bool)

(assert (=> b!327825 (= e!201572 e!201573)))

(declare-fun res!180638 () Bool)

(assert (=> b!327825 (= res!180638 (and ((_ is Intermediate!3085) lt!157722) (not (undefined!3897 lt!157722)) (bvslt (x!32730 lt!157722) #b01111111111111111111111111111110) (bvsge (x!32730 lt!157722) #b00000000000000000000000000000000) (bvsge (x!32730 lt!157722) #b00000000000000000000000000000000)))))

(assert (=> b!327825 (=> (not res!180638) (not e!201573))))

(declare-fun b!327826 () Bool)

(assert (=> b!327826 (= e!201569 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327827 () Bool)

(assert (=> b!327827 (and (bvsge (index!14518 lt!157722) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157722) (size!8295 a!3305)))))

(declare-fun res!180639 () Bool)

(assert (=> b!327827 (= res!180639 (= (select (arr!7943 a!3305) (index!14518 lt!157722)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327827 (=> res!180639 e!201571)))

(declare-fun b!327828 () Bool)

(assert (=> b!327828 (= e!201572 (bvsge (x!32730 lt!157722) #b01111111111111111111111111111110))))

(declare-fun b!327829 () Bool)

(assert (=> b!327829 (and (bvsge (index!14518 lt!157722) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157722) (size!8295 a!3305)))))

(assert (=> b!327829 (= e!201571 (= (select (arr!7943 a!3305) (index!14518 lt!157722)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327830 () Bool)

(assert (=> b!327830 (= e!201570 e!201569)))

(declare-fun c!51228 () Bool)

(assert (=> b!327830 (= c!51228 (or (= lt!157721 k0!2497) (= (bvadd lt!157721 lt!157721) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69819 c!51227) b!327824))

(assert (= (and d!69819 (not c!51227)) b!327830))

(assert (= (and b!327830 c!51228) b!327822))

(assert (= (and b!327830 (not c!51228)) b!327826))

(assert (= (and d!69819 c!51229) b!327828))

(assert (= (and d!69819 (not c!51229)) b!327825))

(assert (= (and b!327825 res!180638) b!327823))

(assert (= (and b!327823 (not res!180637)) b!327827))

(assert (= (and b!327827 (not res!180639)) b!327829))

(assert (=> d!69819 m!333903))

(declare-fun m!334001 () Bool)

(assert (=> d!69819 m!334001))

(assert (=> d!69819 m!333911))

(declare-fun m!334003 () Bool)

(assert (=> b!327823 m!334003))

(assert (=> b!327826 m!333903))

(declare-fun m!334005 () Bool)

(assert (=> b!327826 m!334005))

(assert (=> b!327826 m!334005))

(declare-fun m!334007 () Bool)

(assert (=> b!327826 m!334007))

(assert (=> b!327829 m!334003))

(assert (=> b!327827 m!334003))

(assert (=> b!327642 d!69819))

(declare-fun d!69823 () Bool)

(declare-fun lt!157732 () (_ BitVec 32))

(declare-fun lt!157731 () (_ BitVec 32))

(assert (=> d!69823 (= lt!157732 (bvmul (bvxor lt!157731 (bvlshr lt!157731 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69823 (= lt!157731 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69823 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180642 (let ((h!5425 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32739 (bvmul (bvxor h!5425 (bvlshr h!5425 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32739 (bvlshr x!32739 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180642 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180642 #b00000000000000000000000000000000))))))

(assert (=> d!69823 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157732 (bvlshr lt!157732 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327642 d!69823))

(declare-fun d!69827 () Bool)

(declare-fun e!201582 () Bool)

(assert (=> d!69827 e!201582))

(declare-fun c!51233 () Bool)

(declare-fun lt!157734 () SeekEntryResult!3085)

(assert (=> d!69827 (= c!51233 (and ((_ is Intermediate!3085) lt!157734) (undefined!3897 lt!157734)))))

(declare-fun e!201580 () SeekEntryResult!3085)

(assert (=> d!69827 (= lt!157734 e!201580)))

(declare-fun c!51231 () Bool)

(assert (=> d!69827 (= c!51231 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!157733 () (_ BitVec 64))

(assert (=> d!69827 (= lt!157733 (select (arr!7943 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!69827 (validMask!0 mask!3777)))

(assert (=> d!69827 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777) lt!157734)))

(declare-fun e!201579 () SeekEntryResult!3085)

(declare-fun b!327839 () Bool)

(assert (=> b!327839 (= e!201579 (Intermediate!3085 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!327840 () Bool)

(assert (=> b!327840 (and (bvsge (index!14518 lt!157734) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157734) (size!8295 a!3305)))))

(declare-fun res!180645 () Bool)

(assert (=> b!327840 (= res!180645 (= (select (arr!7943 a!3305) (index!14518 lt!157734)) k0!2497))))

(declare-fun e!201581 () Bool)

(assert (=> b!327840 (=> res!180645 e!201581)))

(declare-fun e!201583 () Bool)

(assert (=> b!327840 (= e!201583 e!201581)))

(declare-fun b!327841 () Bool)

(assert (=> b!327841 (= e!201580 (Intermediate!3085 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!327842 () Bool)

(assert (=> b!327842 (= e!201582 e!201583)))

(declare-fun res!180646 () Bool)

(assert (=> b!327842 (= res!180646 (and ((_ is Intermediate!3085) lt!157734) (not (undefined!3897 lt!157734)) (bvslt (x!32730 lt!157734) #b01111111111111111111111111111110) (bvsge (x!32730 lt!157734) #b00000000000000000000000000000000) (bvsge (x!32730 lt!157734) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!327842 (=> (not res!180646) (not e!201583))))

(declare-fun b!327843 () Bool)

(assert (=> b!327843 (= e!201579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327844 () Bool)

(assert (=> b!327844 (and (bvsge (index!14518 lt!157734) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157734) (size!8295 a!3305)))))

(declare-fun res!180647 () Bool)

(assert (=> b!327844 (= res!180647 (= (select (arr!7943 a!3305) (index!14518 lt!157734)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327844 (=> res!180647 e!201581)))

(declare-fun b!327845 () Bool)

(assert (=> b!327845 (= e!201582 (bvsge (x!32730 lt!157734) #b01111111111111111111111111111110))))

(declare-fun b!327846 () Bool)

(assert (=> b!327846 (and (bvsge (index!14518 lt!157734) #b00000000000000000000000000000000) (bvslt (index!14518 lt!157734) (size!8295 a!3305)))))

(assert (=> b!327846 (= e!201581 (= (select (arr!7943 a!3305) (index!14518 lt!157734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327847 () Bool)

(assert (=> b!327847 (= e!201580 e!201579)))

(declare-fun c!51232 () Bool)

(assert (=> b!327847 (= c!51232 (or (= lt!157733 k0!2497) (= (bvadd lt!157733 lt!157733) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69827 c!51231) b!327841))

(assert (= (and d!69827 (not c!51231)) b!327847))

(assert (= (and b!327847 c!51232) b!327839))

(assert (= (and b!327847 (not c!51232)) b!327843))

(assert (= (and d!69827 c!51233) b!327845))

(assert (= (and d!69827 (not c!51233)) b!327842))

(assert (= (and b!327842 res!180646) b!327840))

(assert (= (and b!327840 (not res!180645)) b!327844))

(assert (= (and b!327844 (not res!180647)) b!327846))

(assert (=> d!69827 m!333907))

(declare-fun m!334019 () Bool)

(assert (=> d!69827 m!334019))

(assert (=> d!69827 m!333911))

(declare-fun m!334021 () Bool)

(assert (=> b!327840 m!334021))

(assert (=> b!327843 m!333907))

(declare-fun m!334023 () Bool)

(assert (=> b!327843 m!334023))

(assert (=> b!327843 m!334023))

(declare-fun m!334025 () Bool)

(assert (=> b!327843 m!334025))

(assert (=> b!327846 m!334021))

(assert (=> b!327844 m!334021))

(assert (=> b!327644 d!69827))

(declare-fun d!69829 () Bool)

(declare-fun lt!157746 () (_ BitVec 32))

(assert (=> d!69829 (and (bvsge lt!157746 #b00000000000000000000000000000000) (bvslt lt!157746 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69829 (= lt!157746 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69829 (validMask!0 mask!3777)))

(assert (=> d!69829 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157746)))

(declare-fun bs!11379 () Bool)

(assert (= bs!11379 d!69829))

(declare-fun m!334027 () Bool)

(assert (=> bs!11379 m!334027))

(assert (=> bs!11379 m!333911))

(assert (=> b!327644 d!69829))

(declare-fun b!327882 () Bool)

(declare-fun e!201610 () Bool)

(declare-fun call!26111 () Bool)

(assert (=> b!327882 (= e!201610 call!26111)))

(declare-fun b!327884 () Bool)

(declare-fun e!201609 () Bool)

(assert (=> b!327884 (= e!201609 call!26111)))

(declare-fun d!69831 () Bool)

(declare-fun res!180663 () Bool)

(declare-fun e!201611 () Bool)

(assert (=> d!69831 (=> res!180663 e!201611)))

(assert (=> d!69831 (= res!180663 (bvsge #b00000000000000000000000000000000 (size!8295 a!3305)))))

(assert (=> d!69831 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201611)))

(declare-fun b!327883 () Bool)

(assert (=> b!327883 (= e!201609 e!201610)))

(declare-fun lt!157760 () (_ BitVec 64))

(assert (=> b!327883 (= lt!157760 (select (arr!7943 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10177 0))(
  ( (Unit!10178) )
))
(declare-fun lt!157759 () Unit!10177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16789 (_ BitVec 64) (_ BitVec 32)) Unit!10177)

(assert (=> b!327883 (= lt!157759 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157760 #b00000000000000000000000000000000))))

(assert (=> b!327883 (arrayContainsKey!0 a!3305 lt!157760 #b00000000000000000000000000000000)))

(declare-fun lt!157761 () Unit!10177)

(assert (=> b!327883 (= lt!157761 lt!157759)))

(declare-fun res!180662 () Bool)

(assert (=> b!327883 (= res!180662 (= (seekEntryOrOpen!0 (select (arr!7943 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3085 #b00000000000000000000000000000000)))))

(assert (=> b!327883 (=> (not res!180662) (not e!201610))))

(declare-fun b!327885 () Bool)

(assert (=> b!327885 (= e!201611 e!201609)))

(declare-fun c!51245 () Bool)

(assert (=> b!327885 (= c!51245 (validKeyInArray!0 (select (arr!7943 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26108 () Bool)

(assert (=> bm!26108 (= call!26111 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69831 (not res!180663)) b!327885))

(assert (= (and b!327885 c!51245) b!327883))

(assert (= (and b!327885 (not c!51245)) b!327884))

(assert (= (and b!327883 res!180662) b!327882))

(assert (= (or b!327882 b!327884) bm!26108))

(declare-fun m!334043 () Bool)

(assert (=> b!327883 m!334043))

(declare-fun m!334045 () Bool)

(assert (=> b!327883 m!334045))

(declare-fun m!334047 () Bool)

(assert (=> b!327883 m!334047))

(assert (=> b!327883 m!334043))

(declare-fun m!334049 () Bool)

(assert (=> b!327883 m!334049))

(assert (=> b!327885 m!334043))

(assert (=> b!327885 m!334043))

(declare-fun m!334051 () Bool)

(assert (=> b!327885 m!334051))

(declare-fun m!334053 () Bool)

(assert (=> bm!26108 m!334053))

(assert (=> b!327651 d!69831))

(declare-fun d!69837 () Bool)

(assert (=> d!69837 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32846 d!69837))

(declare-fun d!69843 () Bool)

(assert (=> d!69843 (= (array_inv!5897 a!3305) (bvsge (size!8295 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32846 d!69843))

(declare-fun d!69845 () Bool)

(declare-fun res!180671 () Bool)

(declare-fun e!201630 () Bool)

(assert (=> d!69845 (=> res!180671 e!201630)))

(assert (=> d!69845 (= res!180671 (= (select (arr!7943 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69845 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!201630)))

(declare-fun b!327917 () Bool)

(declare-fun e!201631 () Bool)

(assert (=> b!327917 (= e!201630 e!201631)))

(declare-fun res!180672 () Bool)

(assert (=> b!327917 (=> (not res!180672) (not e!201631))))

(assert (=> b!327917 (= res!180672 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8295 a!3305)))))

(declare-fun b!327918 () Bool)

(assert (=> b!327918 (= e!201631 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69845 (not res!180671)) b!327917))

(assert (= (and b!327917 res!180672) b!327918))

(assert (=> d!69845 m!334043))

(declare-fun m!334069 () Bool)

(assert (=> b!327918 m!334069))

(assert (=> b!327645 d!69845))

(check-sat (not d!69829) (not d!69795) (not b!327885) (not d!69789) (not b!327883) (not d!69819) (not b!327817) (not b!327826) (not b!327731) (not b!327843) (not bm!26108) (not d!69827) (not b!327918))
(check-sat)
