; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121914 () Bool)

(assert start!121914)

(declare-fun b!1414651 () Bool)

(declare-fun res!951048 () Bool)

(declare-fun e!800659 () Bool)

(assert (=> b!1414651 (=> (not res!951048) (not e!800659))))

(declare-datatypes ((array!96581 0))(
  ( (array!96582 (arr!46619 (Array (_ BitVec 32) (_ BitVec 64))) (size!47170 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96581)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1414651 (= res!951048 (validKeyInArray!0 (select (arr!46619 a!2901) j!112)))))

(declare-fun b!1414652 () Bool)

(declare-fun e!800661 () Bool)

(assert (=> b!1414652 (= e!800659 (not e!800661))))

(declare-fun res!951045 () Bool)

(assert (=> b!1414652 (=> res!951045 e!800661)))

(declare-datatypes ((SeekEntryResult!10952 0))(
  ( (MissingZero!10952 (index!46196 (_ BitVec 32))) (Found!10952 (index!46197 (_ BitVec 32))) (Intermediate!10952 (undefined!11764 Bool) (index!46198 (_ BitVec 32)) (x!127806 (_ BitVec 32))) (Undefined!10952) (MissingVacant!10952 (index!46199 (_ BitVec 32))) )
))
(declare-fun lt!623667 () SeekEntryResult!10952)

(get-info :version)

(assert (=> b!1414652 (= res!951045 (or (not ((_ is Intermediate!10952) lt!623667)) (undefined!11764 lt!623667)))))

(declare-fun e!800662 () Bool)

(assert (=> b!1414652 e!800662))

(declare-fun res!951044 () Bool)

(assert (=> b!1414652 (=> (not res!951044) (not e!800662))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96581 (_ BitVec 32)) Bool)

(assert (=> b!1414652 (= res!951044 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47828 0))(
  ( (Unit!47829) )
))
(declare-fun lt!623668 () Unit!47828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47828)

(assert (=> b!1414652 (= lt!623668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96581 (_ BitVec 32)) SeekEntryResult!10952)

(assert (=> b!1414652 (= lt!623667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623665 (select (arr!46619 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414652 (= lt!623665 (toIndex!0 (select (arr!46619 a!2901) j!112) mask!2840))))

(declare-fun b!1414654 () Bool)

(declare-fun res!951039 () Bool)

(assert (=> b!1414654 (=> (not res!951039) (not e!800659))))

(declare-datatypes ((List!33318 0))(
  ( (Nil!33315) (Cons!33314 (h!34598 (_ BitVec 64)) (t!48019 List!33318)) )
))
(declare-fun arrayNoDuplicates!0 (array!96581 (_ BitVec 32) List!33318) Bool)

(assert (=> b!1414654 (= res!951039 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33315))))

(declare-fun b!1414655 () Bool)

(declare-fun res!951046 () Bool)

(assert (=> b!1414655 (=> (not res!951046) (not e!800659))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1414655 (= res!951046 (validKeyInArray!0 (select (arr!46619 a!2901) i!1037)))))

(declare-fun b!1414656 () Bool)

(declare-fun res!951042 () Bool)

(assert (=> b!1414656 (=> (not res!951042) (not e!800659))))

(assert (=> b!1414656 (= res!951042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun lt!623662 () SeekEntryResult!10952)

(declare-fun b!1414657 () Bool)

(declare-fun e!800660 () Bool)

(assert (=> b!1414657 (= e!800660 (or (bvslt (x!127806 lt!623667) #b00000000000000000000000000000000) (bvsgt (x!127806 lt!623667) #b01111111111111111111111111111110) (bvslt (x!127806 lt!623662) #b00000000000000000000000000000000) (bvsgt (x!127806 lt!623662) #b01111111111111111111111111111110) (bvslt lt!623665 #b00000000000000000000000000000000) (bvsge lt!623665 (size!47170 a!2901)) (and (bvsge (index!46198 lt!623667) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623667) (size!47170 a!2901)))))))

(declare-fun e!800658 () Bool)

(assert (=> b!1414657 e!800658))

(declare-fun res!951041 () Bool)

(assert (=> b!1414657 (=> (not res!951041) (not e!800658))))

(assert (=> b!1414657 (= res!951041 (and (not (undefined!11764 lt!623662)) (= (index!46198 lt!623662) i!1037) (bvslt (x!127806 lt!623662) (x!127806 lt!623667)) (= (select (store (arr!46619 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46198 lt!623662)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623664 () Unit!47828)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47828)

(assert (=> b!1414657 (= lt!623664 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623665 (x!127806 lt!623667) (index!46198 lt!623667) (x!127806 lt!623662) (index!46198 lt!623662) (undefined!11764 lt!623662) mask!2840))))

(declare-fun b!1414658 () Bool)

(declare-fun lt!623666 () (_ BitVec 64))

(declare-fun lt!623663 () array!96581)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96581 (_ BitVec 32)) SeekEntryResult!10952)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96581 (_ BitVec 32)) SeekEntryResult!10952)

(assert (=> b!1414658 (= e!800658 (= (seekEntryOrOpen!0 lt!623666 lt!623663 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127806 lt!623662) (index!46198 lt!623662) (index!46198 lt!623662) (select (arr!46619 a!2901) j!112) lt!623663 mask!2840)))))

(declare-fun res!951040 () Bool)

(assert (=> start!121914 (=> (not res!951040) (not e!800659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121914 (= res!951040 (validMask!0 mask!2840))))

(assert (=> start!121914 e!800659))

(assert (=> start!121914 true))

(declare-fun array_inv!35564 (array!96581) Bool)

(assert (=> start!121914 (array_inv!35564 a!2901)))

(declare-fun b!1414653 () Bool)

(assert (=> b!1414653 (= e!800661 e!800660)))

(declare-fun res!951047 () Bool)

(assert (=> b!1414653 (=> res!951047 e!800660)))

(assert (=> b!1414653 (= res!951047 (or (= lt!623667 lt!623662) (not ((_ is Intermediate!10952) lt!623662))))))

(assert (=> b!1414653 (= lt!623662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623666 mask!2840) lt!623666 lt!623663 mask!2840))))

(assert (=> b!1414653 (= lt!623666 (select (store (arr!46619 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1414653 (= lt!623663 (array!96582 (store (arr!46619 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47170 a!2901)))))

(declare-fun b!1414659 () Bool)

(assert (=> b!1414659 (= e!800662 (= (seekEntryOrOpen!0 (select (arr!46619 a!2901) j!112) a!2901 mask!2840) (Found!10952 j!112)))))

(declare-fun b!1414660 () Bool)

(declare-fun res!951043 () Bool)

(assert (=> b!1414660 (=> (not res!951043) (not e!800659))))

(assert (=> b!1414660 (= res!951043 (and (= (size!47170 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47170 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47170 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121914 res!951040) b!1414660))

(assert (= (and b!1414660 res!951043) b!1414655))

(assert (= (and b!1414655 res!951046) b!1414651))

(assert (= (and b!1414651 res!951048) b!1414656))

(assert (= (and b!1414656 res!951042) b!1414654))

(assert (= (and b!1414654 res!951039) b!1414652))

(assert (= (and b!1414652 res!951044) b!1414659))

(assert (= (and b!1414652 (not res!951045)) b!1414653))

(assert (= (and b!1414653 (not res!951047)) b!1414657))

(assert (= (and b!1414657 res!951041) b!1414658))

(declare-fun m!1304945 () Bool)

(assert (=> b!1414653 m!1304945))

(assert (=> b!1414653 m!1304945))

(declare-fun m!1304947 () Bool)

(assert (=> b!1414653 m!1304947))

(declare-fun m!1304949 () Bool)

(assert (=> b!1414653 m!1304949))

(declare-fun m!1304951 () Bool)

(assert (=> b!1414653 m!1304951))

(declare-fun m!1304953 () Bool)

(assert (=> b!1414659 m!1304953))

(assert (=> b!1414659 m!1304953))

(declare-fun m!1304955 () Bool)

(assert (=> b!1414659 m!1304955))

(declare-fun m!1304957 () Bool)

(assert (=> b!1414656 m!1304957))

(declare-fun m!1304959 () Bool)

(assert (=> b!1414654 m!1304959))

(assert (=> b!1414651 m!1304953))

(assert (=> b!1414651 m!1304953))

(declare-fun m!1304961 () Bool)

(assert (=> b!1414651 m!1304961))

(assert (=> b!1414652 m!1304953))

(declare-fun m!1304963 () Bool)

(assert (=> b!1414652 m!1304963))

(assert (=> b!1414652 m!1304953))

(declare-fun m!1304965 () Bool)

(assert (=> b!1414652 m!1304965))

(assert (=> b!1414652 m!1304953))

(declare-fun m!1304967 () Bool)

(assert (=> b!1414652 m!1304967))

(declare-fun m!1304969 () Bool)

(assert (=> b!1414652 m!1304969))

(declare-fun m!1304971 () Bool)

(assert (=> b!1414655 m!1304971))

(assert (=> b!1414655 m!1304971))

(declare-fun m!1304973 () Bool)

(assert (=> b!1414655 m!1304973))

(declare-fun m!1304975 () Bool)

(assert (=> b!1414658 m!1304975))

(assert (=> b!1414658 m!1304953))

(assert (=> b!1414658 m!1304953))

(declare-fun m!1304977 () Bool)

(assert (=> b!1414658 m!1304977))

(assert (=> b!1414657 m!1304949))

(declare-fun m!1304979 () Bool)

(assert (=> b!1414657 m!1304979))

(declare-fun m!1304981 () Bool)

(assert (=> b!1414657 m!1304981))

(declare-fun m!1304983 () Bool)

(assert (=> start!121914 m!1304983))

(declare-fun m!1304985 () Bool)

(assert (=> start!121914 m!1304985))

(check-sat (not b!1414656) (not b!1414657) (not b!1414654) (not start!121914) (not b!1414651) (not b!1414659) (not b!1414653) (not b!1414658) (not b!1414655) (not b!1414652))
(check-sat)
(get-model)

(declare-fun d!152345 () Bool)

(declare-fun lt!623698 () SeekEntryResult!10952)

(assert (=> d!152345 (and (or ((_ is Undefined!10952) lt!623698) (not ((_ is Found!10952) lt!623698)) (and (bvsge (index!46197 lt!623698) #b00000000000000000000000000000000) (bvslt (index!46197 lt!623698) (size!47170 a!2901)))) (or ((_ is Undefined!10952) lt!623698) ((_ is Found!10952) lt!623698) (not ((_ is MissingZero!10952) lt!623698)) (and (bvsge (index!46196 lt!623698) #b00000000000000000000000000000000) (bvslt (index!46196 lt!623698) (size!47170 a!2901)))) (or ((_ is Undefined!10952) lt!623698) ((_ is Found!10952) lt!623698) ((_ is MissingZero!10952) lt!623698) (not ((_ is MissingVacant!10952) lt!623698)) (and (bvsge (index!46199 lt!623698) #b00000000000000000000000000000000) (bvslt (index!46199 lt!623698) (size!47170 a!2901)))) (or ((_ is Undefined!10952) lt!623698) (ite ((_ is Found!10952) lt!623698) (= (select (arr!46619 a!2901) (index!46197 lt!623698)) (select (arr!46619 a!2901) j!112)) (ite ((_ is MissingZero!10952) lt!623698) (= (select (arr!46619 a!2901) (index!46196 lt!623698)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10952) lt!623698) (= (select (arr!46619 a!2901) (index!46199 lt!623698)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800689 () SeekEntryResult!10952)

(assert (=> d!152345 (= lt!623698 e!800689)))

(declare-fun c!131292 () Bool)

(declare-fun lt!623697 () SeekEntryResult!10952)

(assert (=> d!152345 (= c!131292 (and ((_ is Intermediate!10952) lt!623697) (undefined!11764 lt!623697)))))

(assert (=> d!152345 (= lt!623697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46619 a!2901) j!112) mask!2840) (select (arr!46619 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152345 (validMask!0 mask!2840)))

(assert (=> d!152345 (= (seekEntryOrOpen!0 (select (arr!46619 a!2901) j!112) a!2901 mask!2840) lt!623698)))

(declare-fun b!1414703 () Bool)

(declare-fun c!131294 () Bool)

(declare-fun lt!623696 () (_ BitVec 64))

(assert (=> b!1414703 (= c!131294 (= lt!623696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800690 () SeekEntryResult!10952)

(declare-fun e!800688 () SeekEntryResult!10952)

(assert (=> b!1414703 (= e!800690 e!800688)))

(declare-fun b!1414704 () Bool)

(assert (=> b!1414704 (= e!800689 Undefined!10952)))

(declare-fun b!1414705 () Bool)

(assert (=> b!1414705 (= e!800688 (seekKeyOrZeroReturnVacant!0 (x!127806 lt!623697) (index!46198 lt!623697) (index!46198 lt!623697) (select (arr!46619 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414706 () Bool)

(assert (=> b!1414706 (= e!800688 (MissingZero!10952 (index!46198 lt!623697)))))

(declare-fun b!1414707 () Bool)

(assert (=> b!1414707 (= e!800689 e!800690)))

(assert (=> b!1414707 (= lt!623696 (select (arr!46619 a!2901) (index!46198 lt!623697)))))

(declare-fun c!131293 () Bool)

(assert (=> b!1414707 (= c!131293 (= lt!623696 (select (arr!46619 a!2901) j!112)))))

(declare-fun b!1414708 () Bool)

(assert (=> b!1414708 (= e!800690 (Found!10952 (index!46198 lt!623697)))))

(assert (= (and d!152345 c!131292) b!1414704))

(assert (= (and d!152345 (not c!131292)) b!1414707))

(assert (= (and b!1414707 c!131293) b!1414708))

(assert (= (and b!1414707 (not c!131293)) b!1414703))

(assert (= (and b!1414703 c!131294) b!1414706))

(assert (= (and b!1414703 (not c!131294)) b!1414705))

(assert (=> d!152345 m!1304953))

(assert (=> d!152345 m!1304965))

(declare-fun m!1305029 () Bool)

(assert (=> d!152345 m!1305029))

(assert (=> d!152345 m!1304983))

(declare-fun m!1305031 () Bool)

(assert (=> d!152345 m!1305031))

(assert (=> d!152345 m!1304965))

(assert (=> d!152345 m!1304953))

(declare-fun m!1305033 () Bool)

(assert (=> d!152345 m!1305033))

(declare-fun m!1305035 () Bool)

(assert (=> d!152345 m!1305035))

(assert (=> b!1414705 m!1304953))

(declare-fun m!1305037 () Bool)

(assert (=> b!1414705 m!1305037))

(declare-fun m!1305039 () Bool)

(assert (=> b!1414707 m!1305039))

(assert (=> b!1414659 d!152345))

(declare-fun d!152347 () Bool)

(declare-fun lt!623701 () SeekEntryResult!10952)

(assert (=> d!152347 (and (or ((_ is Undefined!10952) lt!623701) (not ((_ is Found!10952) lt!623701)) (and (bvsge (index!46197 lt!623701) #b00000000000000000000000000000000) (bvslt (index!46197 lt!623701) (size!47170 lt!623663)))) (or ((_ is Undefined!10952) lt!623701) ((_ is Found!10952) lt!623701) (not ((_ is MissingZero!10952) lt!623701)) (and (bvsge (index!46196 lt!623701) #b00000000000000000000000000000000) (bvslt (index!46196 lt!623701) (size!47170 lt!623663)))) (or ((_ is Undefined!10952) lt!623701) ((_ is Found!10952) lt!623701) ((_ is MissingZero!10952) lt!623701) (not ((_ is MissingVacant!10952) lt!623701)) (and (bvsge (index!46199 lt!623701) #b00000000000000000000000000000000) (bvslt (index!46199 lt!623701) (size!47170 lt!623663)))) (or ((_ is Undefined!10952) lt!623701) (ite ((_ is Found!10952) lt!623701) (= (select (arr!46619 lt!623663) (index!46197 lt!623701)) lt!623666) (ite ((_ is MissingZero!10952) lt!623701) (= (select (arr!46619 lt!623663) (index!46196 lt!623701)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10952) lt!623701) (= (select (arr!46619 lt!623663) (index!46199 lt!623701)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!800692 () SeekEntryResult!10952)

(assert (=> d!152347 (= lt!623701 e!800692)))

(declare-fun c!131295 () Bool)

(declare-fun lt!623700 () SeekEntryResult!10952)

(assert (=> d!152347 (= c!131295 (and ((_ is Intermediate!10952) lt!623700) (undefined!11764 lt!623700)))))

(assert (=> d!152347 (= lt!623700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623666 mask!2840) lt!623666 lt!623663 mask!2840))))

(assert (=> d!152347 (validMask!0 mask!2840)))

(assert (=> d!152347 (= (seekEntryOrOpen!0 lt!623666 lt!623663 mask!2840) lt!623701)))

(declare-fun b!1414709 () Bool)

(declare-fun c!131297 () Bool)

(declare-fun lt!623699 () (_ BitVec 64))

(assert (=> b!1414709 (= c!131297 (= lt!623699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800693 () SeekEntryResult!10952)

(declare-fun e!800691 () SeekEntryResult!10952)

(assert (=> b!1414709 (= e!800693 e!800691)))

(declare-fun b!1414710 () Bool)

(assert (=> b!1414710 (= e!800692 Undefined!10952)))

(declare-fun b!1414711 () Bool)

(assert (=> b!1414711 (= e!800691 (seekKeyOrZeroReturnVacant!0 (x!127806 lt!623700) (index!46198 lt!623700) (index!46198 lt!623700) lt!623666 lt!623663 mask!2840))))

(declare-fun b!1414712 () Bool)

(assert (=> b!1414712 (= e!800691 (MissingZero!10952 (index!46198 lt!623700)))))

(declare-fun b!1414713 () Bool)

(assert (=> b!1414713 (= e!800692 e!800693)))

(assert (=> b!1414713 (= lt!623699 (select (arr!46619 lt!623663) (index!46198 lt!623700)))))

(declare-fun c!131296 () Bool)

(assert (=> b!1414713 (= c!131296 (= lt!623699 lt!623666))))

(declare-fun b!1414714 () Bool)

(assert (=> b!1414714 (= e!800693 (Found!10952 (index!46198 lt!623700)))))

(assert (= (and d!152347 c!131295) b!1414710))

(assert (= (and d!152347 (not c!131295)) b!1414713))

(assert (= (and b!1414713 c!131296) b!1414714))

(assert (= (and b!1414713 (not c!131296)) b!1414709))

(assert (= (and b!1414709 c!131297) b!1414712))

(assert (= (and b!1414709 (not c!131297)) b!1414711))

(assert (=> d!152347 m!1304945))

(declare-fun m!1305041 () Bool)

(assert (=> d!152347 m!1305041))

(assert (=> d!152347 m!1304983))

(declare-fun m!1305043 () Bool)

(assert (=> d!152347 m!1305043))

(assert (=> d!152347 m!1304945))

(assert (=> d!152347 m!1304947))

(declare-fun m!1305045 () Bool)

(assert (=> d!152347 m!1305045))

(declare-fun m!1305047 () Bool)

(assert (=> b!1414711 m!1305047))

(declare-fun m!1305049 () Bool)

(assert (=> b!1414713 m!1305049))

(assert (=> b!1414658 d!152347))

(declare-fun b!1414739 () Bool)

(declare-fun e!800711 () SeekEntryResult!10952)

(declare-fun e!800710 () SeekEntryResult!10952)

(assert (=> b!1414739 (= e!800711 e!800710)))

(declare-fun c!131308 () Bool)

(declare-fun lt!623716 () (_ BitVec 64))

(assert (=> b!1414739 (= c!131308 (= lt!623716 (select (arr!46619 a!2901) j!112)))))

(declare-fun e!800709 () SeekEntryResult!10952)

(declare-fun b!1414740 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1414740 (= e!800709 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127806 lt!623662) #b00000000000000000000000000000001) (nextIndex!0 (index!46198 lt!623662) (x!127806 lt!623662) mask!2840) (index!46198 lt!623662) (select (arr!46619 a!2901) j!112) lt!623663 mask!2840))))

(declare-fun b!1414741 () Bool)

(assert (=> b!1414741 (= e!800711 Undefined!10952)))

(declare-fun b!1414742 () Bool)

(assert (=> b!1414742 (= e!800710 (Found!10952 (index!46198 lt!623662)))))

(declare-fun lt!623715 () SeekEntryResult!10952)

(declare-fun d!152349 () Bool)

(assert (=> d!152349 (and (or ((_ is Undefined!10952) lt!623715) (not ((_ is Found!10952) lt!623715)) (and (bvsge (index!46197 lt!623715) #b00000000000000000000000000000000) (bvslt (index!46197 lt!623715) (size!47170 lt!623663)))) (or ((_ is Undefined!10952) lt!623715) ((_ is Found!10952) lt!623715) (not ((_ is MissingVacant!10952) lt!623715)) (not (= (index!46199 lt!623715) (index!46198 lt!623662))) (and (bvsge (index!46199 lt!623715) #b00000000000000000000000000000000) (bvslt (index!46199 lt!623715) (size!47170 lt!623663)))) (or ((_ is Undefined!10952) lt!623715) (ite ((_ is Found!10952) lt!623715) (= (select (arr!46619 lt!623663) (index!46197 lt!623715)) (select (arr!46619 a!2901) j!112)) (and ((_ is MissingVacant!10952) lt!623715) (= (index!46199 lt!623715) (index!46198 lt!623662)) (= (select (arr!46619 lt!623663) (index!46199 lt!623715)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152349 (= lt!623715 e!800711)))

(declare-fun c!131309 () Bool)

(assert (=> d!152349 (= c!131309 (bvsge (x!127806 lt!623662) #b01111111111111111111111111111110))))

(assert (=> d!152349 (= lt!623716 (select (arr!46619 lt!623663) (index!46198 lt!623662)))))

(assert (=> d!152349 (validMask!0 mask!2840)))

(assert (=> d!152349 (= (seekKeyOrZeroReturnVacant!0 (x!127806 lt!623662) (index!46198 lt!623662) (index!46198 lt!623662) (select (arr!46619 a!2901) j!112) lt!623663 mask!2840) lt!623715)))

(declare-fun b!1414743 () Bool)

(declare-fun c!131307 () Bool)

(assert (=> b!1414743 (= c!131307 (= lt!623716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414743 (= e!800710 e!800709)))

(declare-fun b!1414744 () Bool)

(assert (=> b!1414744 (= e!800709 (MissingVacant!10952 (index!46198 lt!623662)))))

(assert (= (and d!152349 c!131309) b!1414741))

(assert (= (and d!152349 (not c!131309)) b!1414739))

(assert (= (and b!1414739 c!131308) b!1414742))

(assert (= (and b!1414739 (not c!131308)) b!1414743))

(assert (= (and b!1414743 c!131307) b!1414744))

(assert (= (and b!1414743 (not c!131307)) b!1414740))

(declare-fun m!1305057 () Bool)

(assert (=> b!1414740 m!1305057))

(assert (=> b!1414740 m!1305057))

(assert (=> b!1414740 m!1304953))

(declare-fun m!1305059 () Bool)

(assert (=> b!1414740 m!1305059))

(declare-fun m!1305061 () Bool)

(assert (=> d!152349 m!1305061))

(declare-fun m!1305063 () Bool)

(assert (=> d!152349 m!1305063))

(declare-fun m!1305065 () Bool)

(assert (=> d!152349 m!1305065))

(assert (=> d!152349 m!1304983))

(assert (=> b!1414658 d!152349))

(declare-fun b!1414781 () Bool)

(declare-fun lt!623729 () SeekEntryResult!10952)

(assert (=> b!1414781 (and (bvsge (index!46198 lt!623729) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623729) (size!47170 lt!623663)))))

(declare-fun res!951098 () Bool)

(assert (=> b!1414781 (= res!951098 (= (select (arr!46619 lt!623663) (index!46198 lt!623729)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800734 () Bool)

(assert (=> b!1414781 (=> res!951098 e!800734)))

(declare-fun b!1414782 () Bool)

(declare-fun e!800732 () SeekEntryResult!10952)

(assert (=> b!1414782 (= e!800732 (Intermediate!10952 true (toIndex!0 lt!623666 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1414783 () Bool)

(declare-fun e!800736 () SeekEntryResult!10952)

(assert (=> b!1414783 (= e!800736 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623666 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623666 lt!623663 mask!2840))))

(declare-fun d!152357 () Bool)

(declare-fun e!800735 () Bool)

(assert (=> d!152357 e!800735))

(declare-fun c!131324 () Bool)

(assert (=> d!152357 (= c!131324 (and ((_ is Intermediate!10952) lt!623729) (undefined!11764 lt!623729)))))

(assert (=> d!152357 (= lt!623729 e!800732)))

(declare-fun c!131322 () Bool)

(assert (=> d!152357 (= c!131322 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623728 () (_ BitVec 64))

(assert (=> d!152357 (= lt!623728 (select (arr!46619 lt!623663) (toIndex!0 lt!623666 mask!2840)))))

(assert (=> d!152357 (validMask!0 mask!2840)))

(assert (=> d!152357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623666 mask!2840) lt!623666 lt!623663 mask!2840) lt!623729)))

(declare-fun b!1414784 () Bool)

(assert (=> b!1414784 (= e!800732 e!800736)))

(declare-fun c!131323 () Bool)

(assert (=> b!1414784 (= c!131323 (or (= lt!623728 lt!623666) (= (bvadd lt!623728 lt!623728) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414785 () Bool)

(assert (=> b!1414785 (and (bvsge (index!46198 lt!623729) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623729) (size!47170 lt!623663)))))

(assert (=> b!1414785 (= e!800734 (= (select (arr!46619 lt!623663) (index!46198 lt!623729)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414786 () Bool)

(declare-fun e!800733 () Bool)

(assert (=> b!1414786 (= e!800735 e!800733)))

(declare-fun res!951099 () Bool)

(assert (=> b!1414786 (= res!951099 (and ((_ is Intermediate!10952) lt!623729) (not (undefined!11764 lt!623729)) (bvslt (x!127806 lt!623729) #b01111111111111111111111111111110) (bvsge (x!127806 lt!623729) #b00000000000000000000000000000000) (bvsge (x!127806 lt!623729) #b00000000000000000000000000000000)))))

(assert (=> b!1414786 (=> (not res!951099) (not e!800733))))

(declare-fun b!1414787 () Bool)

(assert (=> b!1414787 (and (bvsge (index!46198 lt!623729) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623729) (size!47170 lt!623663)))))

(declare-fun res!951097 () Bool)

(assert (=> b!1414787 (= res!951097 (= (select (arr!46619 lt!623663) (index!46198 lt!623729)) lt!623666))))

(assert (=> b!1414787 (=> res!951097 e!800734)))

(assert (=> b!1414787 (= e!800733 e!800734)))

(declare-fun b!1414788 () Bool)

(assert (=> b!1414788 (= e!800735 (bvsge (x!127806 lt!623729) #b01111111111111111111111111111110))))

(declare-fun b!1414789 () Bool)

(assert (=> b!1414789 (= e!800736 (Intermediate!10952 false (toIndex!0 lt!623666 mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!152357 c!131322) b!1414782))

(assert (= (and d!152357 (not c!131322)) b!1414784))

(assert (= (and b!1414784 c!131323) b!1414789))

(assert (= (and b!1414784 (not c!131323)) b!1414783))

(assert (= (and d!152357 c!131324) b!1414788))

(assert (= (and d!152357 (not c!131324)) b!1414786))

(assert (= (and b!1414786 res!951099) b!1414787))

(assert (= (and b!1414787 (not res!951097)) b!1414781))

(assert (= (and b!1414781 (not res!951098)) b!1414785))

(assert (=> b!1414783 m!1304945))

(declare-fun m!1305069 () Bool)

(assert (=> b!1414783 m!1305069))

(assert (=> b!1414783 m!1305069))

(declare-fun m!1305071 () Bool)

(assert (=> b!1414783 m!1305071))

(declare-fun m!1305073 () Bool)

(assert (=> b!1414781 m!1305073))

(assert (=> d!152357 m!1304945))

(declare-fun m!1305075 () Bool)

(assert (=> d!152357 m!1305075))

(assert (=> d!152357 m!1304983))

(assert (=> b!1414787 m!1305073))

(assert (=> b!1414785 m!1305073))

(assert (=> b!1414653 d!152357))

(declare-fun d!152365 () Bool)

(declare-fun lt!623741 () (_ BitVec 32))

(declare-fun lt!623740 () (_ BitVec 32))

(assert (=> d!152365 (= lt!623741 (bvmul (bvxor lt!623740 (bvlshr lt!623740 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152365 (= lt!623740 ((_ extract 31 0) (bvand (bvxor lt!623666 (bvlshr lt!623666 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152365 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951100 (let ((h!34600 ((_ extract 31 0) (bvand (bvxor lt!623666 (bvlshr lt!623666 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127812 (bvmul (bvxor h!34600 (bvlshr h!34600 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127812 (bvlshr x!127812 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951100 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951100 #b00000000000000000000000000000000))))))

(assert (=> d!152365 (= (toIndex!0 lt!623666 mask!2840) (bvand (bvxor lt!623741 (bvlshr lt!623741 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414653 d!152365))

(declare-fun bm!67163 () Bool)

(declare-fun call!67166 () Bool)

(assert (=> bm!67163 (= call!67166 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414845 () Bool)

(declare-fun e!800771 () Bool)

(assert (=> b!1414845 (= e!800771 call!67166)))

(declare-fun d!152369 () Bool)

(declare-fun res!951125 () Bool)

(declare-fun e!800773 () Bool)

(assert (=> d!152369 (=> res!951125 e!800773)))

(assert (=> d!152369 (= res!951125 (bvsge j!112 (size!47170 a!2901)))))

(assert (=> d!152369 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800773)))

(declare-fun b!1414844 () Bool)

(declare-fun e!800772 () Bool)

(assert (=> b!1414844 (= e!800772 e!800771)))

(declare-fun lt!623763 () (_ BitVec 64))

(assert (=> b!1414844 (= lt!623763 (select (arr!46619 a!2901) j!112))))

(declare-fun lt!623764 () Unit!47828)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96581 (_ BitVec 64) (_ BitVec 32)) Unit!47828)

(assert (=> b!1414844 (= lt!623764 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623763 j!112))))

(declare-fun arrayContainsKey!0 (array!96581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414844 (arrayContainsKey!0 a!2901 lt!623763 #b00000000000000000000000000000000)))

(declare-fun lt!623762 () Unit!47828)

(assert (=> b!1414844 (= lt!623762 lt!623764)))

(declare-fun res!951126 () Bool)

(assert (=> b!1414844 (= res!951126 (= (seekEntryOrOpen!0 (select (arr!46619 a!2901) j!112) a!2901 mask!2840) (Found!10952 j!112)))))

(assert (=> b!1414844 (=> (not res!951126) (not e!800771))))

(declare-fun b!1414846 () Bool)

(assert (=> b!1414846 (= e!800773 e!800772)))

(declare-fun c!131341 () Bool)

(assert (=> b!1414846 (= c!131341 (validKeyInArray!0 (select (arr!46619 a!2901) j!112)))))

(declare-fun b!1414847 () Bool)

(assert (=> b!1414847 (= e!800772 call!67166)))

(assert (= (and d!152369 (not res!951125)) b!1414846))

(assert (= (and b!1414846 c!131341) b!1414844))

(assert (= (and b!1414846 (not c!131341)) b!1414847))

(assert (= (and b!1414844 res!951126) b!1414845))

(assert (= (or b!1414845 b!1414847) bm!67163))

(declare-fun m!1305093 () Bool)

(assert (=> bm!67163 m!1305093))

(assert (=> b!1414844 m!1304953))

(declare-fun m!1305095 () Bool)

(assert (=> b!1414844 m!1305095))

(declare-fun m!1305097 () Bool)

(assert (=> b!1414844 m!1305097))

(assert (=> b!1414844 m!1304953))

(assert (=> b!1414844 m!1304955))

(assert (=> b!1414846 m!1304953))

(assert (=> b!1414846 m!1304953))

(assert (=> b!1414846 m!1304961))

(assert (=> b!1414652 d!152369))

(declare-fun d!152379 () Bool)

(assert (=> d!152379 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623770 () Unit!47828)

(declare-fun choose!38 (array!96581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47828)

(assert (=> d!152379 (= lt!623770 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152379 (validMask!0 mask!2840)))

(assert (=> d!152379 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623770)))

(declare-fun bs!41239 () Bool)

(assert (= bs!41239 d!152379))

(assert (=> bs!41239 m!1304969))

(declare-fun m!1305109 () Bool)

(assert (=> bs!41239 m!1305109))

(assert (=> bs!41239 m!1304983))

(assert (=> b!1414652 d!152379))

(declare-fun b!1414853 () Bool)

(declare-fun lt!623772 () SeekEntryResult!10952)

(assert (=> b!1414853 (and (bvsge (index!46198 lt!623772) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623772) (size!47170 a!2901)))))

(declare-fun res!951131 () Bool)

(assert (=> b!1414853 (= res!951131 (= (select (arr!46619 a!2901) (index!46198 lt!623772)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800780 () Bool)

(assert (=> b!1414853 (=> res!951131 e!800780)))

(declare-fun b!1414854 () Bool)

(declare-fun e!800778 () SeekEntryResult!10952)

(assert (=> b!1414854 (= e!800778 (Intermediate!10952 true lt!623665 #b00000000000000000000000000000000))))

(declare-fun b!1414855 () Bool)

(declare-fun e!800782 () SeekEntryResult!10952)

(assert (=> b!1414855 (= e!800782 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623665 #b00000000000000000000000000000000 mask!2840) (select (arr!46619 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152389 () Bool)

(declare-fun e!800781 () Bool)

(assert (=> d!152389 e!800781))

(declare-fun c!131345 () Bool)

(assert (=> d!152389 (= c!131345 (and ((_ is Intermediate!10952) lt!623772) (undefined!11764 lt!623772)))))

(assert (=> d!152389 (= lt!623772 e!800778)))

(declare-fun c!131343 () Bool)

(assert (=> d!152389 (= c!131343 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623771 () (_ BitVec 64))

(assert (=> d!152389 (= lt!623771 (select (arr!46619 a!2901) lt!623665))))

(assert (=> d!152389 (validMask!0 mask!2840)))

(assert (=> d!152389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623665 (select (arr!46619 a!2901) j!112) a!2901 mask!2840) lt!623772)))

(declare-fun b!1414856 () Bool)

(assert (=> b!1414856 (= e!800778 e!800782)))

(declare-fun c!131344 () Bool)

(assert (=> b!1414856 (= c!131344 (or (= lt!623771 (select (arr!46619 a!2901) j!112)) (= (bvadd lt!623771 lt!623771) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1414857 () Bool)

(assert (=> b!1414857 (and (bvsge (index!46198 lt!623772) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623772) (size!47170 a!2901)))))

(assert (=> b!1414857 (= e!800780 (= (select (arr!46619 a!2901) (index!46198 lt!623772)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414858 () Bool)

(declare-fun e!800779 () Bool)

(assert (=> b!1414858 (= e!800781 e!800779)))

(declare-fun res!951132 () Bool)

(assert (=> b!1414858 (= res!951132 (and ((_ is Intermediate!10952) lt!623772) (not (undefined!11764 lt!623772)) (bvslt (x!127806 lt!623772) #b01111111111111111111111111111110) (bvsge (x!127806 lt!623772) #b00000000000000000000000000000000) (bvsge (x!127806 lt!623772) #b00000000000000000000000000000000)))))

(assert (=> b!1414858 (=> (not res!951132) (not e!800779))))

(declare-fun b!1414859 () Bool)

(assert (=> b!1414859 (and (bvsge (index!46198 lt!623772) #b00000000000000000000000000000000) (bvslt (index!46198 lt!623772) (size!47170 a!2901)))))

(declare-fun res!951130 () Bool)

(assert (=> b!1414859 (= res!951130 (= (select (arr!46619 a!2901) (index!46198 lt!623772)) (select (arr!46619 a!2901) j!112)))))

(assert (=> b!1414859 (=> res!951130 e!800780)))

(assert (=> b!1414859 (= e!800779 e!800780)))

(declare-fun b!1414860 () Bool)

(assert (=> b!1414860 (= e!800781 (bvsge (x!127806 lt!623772) #b01111111111111111111111111111110))))

(declare-fun b!1414861 () Bool)

(assert (=> b!1414861 (= e!800782 (Intermediate!10952 false lt!623665 #b00000000000000000000000000000000))))

(assert (= (and d!152389 c!131343) b!1414854))

(assert (= (and d!152389 (not c!131343)) b!1414856))

(assert (= (and b!1414856 c!131344) b!1414861))

(assert (= (and b!1414856 (not c!131344)) b!1414855))

(assert (= (and d!152389 c!131345) b!1414860))

(assert (= (and d!152389 (not c!131345)) b!1414858))

(assert (= (and b!1414858 res!951132) b!1414859))

(assert (= (and b!1414859 (not res!951130)) b!1414853))

(assert (= (and b!1414853 (not res!951131)) b!1414857))

(declare-fun m!1305111 () Bool)

(assert (=> b!1414855 m!1305111))

(assert (=> b!1414855 m!1305111))

(assert (=> b!1414855 m!1304953))

(declare-fun m!1305113 () Bool)

(assert (=> b!1414855 m!1305113))

(declare-fun m!1305115 () Bool)

(assert (=> b!1414853 m!1305115))

(declare-fun m!1305117 () Bool)

(assert (=> d!152389 m!1305117))

(assert (=> d!152389 m!1304983))

(assert (=> b!1414859 m!1305115))

(assert (=> b!1414857 m!1305115))

(assert (=> b!1414652 d!152389))

(declare-fun d!152391 () Bool)

(declare-fun lt!623774 () (_ BitVec 32))

(declare-fun lt!623773 () (_ BitVec 32))

(assert (=> d!152391 (= lt!623774 (bvmul (bvxor lt!623773 (bvlshr lt!623773 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152391 (= lt!623773 ((_ extract 31 0) (bvand (bvxor (select (arr!46619 a!2901) j!112) (bvlshr (select (arr!46619 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152391 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!951100 (let ((h!34600 ((_ extract 31 0) (bvand (bvxor (select (arr!46619 a!2901) j!112) (bvlshr (select (arr!46619 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127812 (bvmul (bvxor h!34600 (bvlshr h!34600 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127812 (bvlshr x!127812 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!951100 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!951100 #b00000000000000000000000000000000))))))

(assert (=> d!152391 (= (toIndex!0 (select (arr!46619 a!2901) j!112) mask!2840) (bvand (bvxor lt!623774 (bvlshr lt!623774 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1414652 d!152391))

(declare-fun d!152393 () Bool)

(assert (=> d!152393 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121914 d!152393))

(declare-fun d!152397 () Bool)

(assert (=> d!152397 (= (array_inv!35564 a!2901) (bvsge (size!47170 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121914 d!152397))

(declare-fun d!152399 () Bool)

(assert (=> d!152399 (and (not (undefined!11764 lt!623662)) (= (index!46198 lt!623662) i!1037) (bvslt (x!127806 lt!623662) (x!127806 lt!623667)))))

(declare-fun lt!623783 () Unit!47828)

(declare-fun choose!62 (array!96581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47828)

(assert (=> d!152399 (= lt!623783 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623665 (x!127806 lt!623667) (index!46198 lt!623667) (x!127806 lt!623662) (index!46198 lt!623662) (undefined!11764 lt!623662) mask!2840))))

(assert (=> d!152399 (validMask!0 mask!2840)))

(assert (=> d!152399 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623665 (x!127806 lt!623667) (index!46198 lt!623667) (x!127806 lt!623662) (index!46198 lt!623662) (undefined!11764 lt!623662) mask!2840) lt!623783)))

(declare-fun bs!41240 () Bool)

(assert (= bs!41240 d!152399))

(declare-fun m!1305127 () Bool)

(assert (=> bs!41240 m!1305127))

(assert (=> bs!41240 m!1304983))

(assert (=> b!1414657 d!152399))

(declare-fun bm!67168 () Bool)

(declare-fun call!67171 () Bool)

(assert (=> bm!67168 (= call!67171 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1414890 () Bool)

(declare-fun e!800801 () Bool)

(assert (=> b!1414890 (= e!800801 call!67171)))

(declare-fun d!152401 () Bool)

(declare-fun res!951142 () Bool)

(declare-fun e!800803 () Bool)

(assert (=> d!152401 (=> res!951142 e!800803)))

(assert (=> d!152401 (= res!951142 (bvsge #b00000000000000000000000000000000 (size!47170 a!2901)))))

(assert (=> d!152401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800803)))

(declare-fun b!1414889 () Bool)

(declare-fun e!800802 () Bool)

(assert (=> b!1414889 (= e!800802 e!800801)))

(declare-fun lt!623785 () (_ BitVec 64))

(assert (=> b!1414889 (= lt!623785 (select (arr!46619 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623786 () Unit!47828)

(assert (=> b!1414889 (= lt!623786 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623785 #b00000000000000000000000000000000))))

(assert (=> b!1414889 (arrayContainsKey!0 a!2901 lt!623785 #b00000000000000000000000000000000)))

(declare-fun lt!623784 () Unit!47828)

(assert (=> b!1414889 (= lt!623784 lt!623786)))

(declare-fun res!951143 () Bool)

(assert (=> b!1414889 (= res!951143 (= (seekEntryOrOpen!0 (select (arr!46619 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10952 #b00000000000000000000000000000000)))))

(assert (=> b!1414889 (=> (not res!951143) (not e!800801))))

(declare-fun b!1414891 () Bool)

(assert (=> b!1414891 (= e!800803 e!800802)))

(declare-fun c!131355 () Bool)

(assert (=> b!1414891 (= c!131355 (validKeyInArray!0 (select (arr!46619 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414892 () Bool)

(assert (=> b!1414892 (= e!800802 call!67171)))

(assert (= (and d!152401 (not res!951142)) b!1414891))

(assert (= (and b!1414891 c!131355) b!1414889))

(assert (= (and b!1414891 (not c!131355)) b!1414892))

(assert (= (and b!1414889 res!951143) b!1414890))

(assert (= (or b!1414890 b!1414892) bm!67168))

(declare-fun m!1305129 () Bool)

(assert (=> bm!67168 m!1305129))

(declare-fun m!1305131 () Bool)

(assert (=> b!1414889 m!1305131))

(declare-fun m!1305133 () Bool)

(assert (=> b!1414889 m!1305133))

(declare-fun m!1305135 () Bool)

(assert (=> b!1414889 m!1305135))

(assert (=> b!1414889 m!1305131))

(declare-fun m!1305137 () Bool)

(assert (=> b!1414889 m!1305137))

(assert (=> b!1414891 m!1305131))

(assert (=> b!1414891 m!1305131))

(declare-fun m!1305139 () Bool)

(assert (=> b!1414891 m!1305139))

(assert (=> b!1414656 d!152401))

(declare-fun d!152403 () Bool)

(assert (=> d!152403 (= (validKeyInArray!0 (select (arr!46619 a!2901) j!112)) (and (not (= (select (arr!46619 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46619 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414651 d!152403))

(declare-fun d!152405 () Bool)

(assert (=> d!152405 (= (validKeyInArray!0 (select (arr!46619 a!2901) i!1037)) (and (not (= (select (arr!46619 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46619 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1414655 d!152405))

(declare-fun b!1414921 () Bool)

(declare-fun e!800822 () Bool)

(declare-fun call!67174 () Bool)

(assert (=> b!1414921 (= e!800822 call!67174)))

(declare-fun b!1414922 () Bool)

(assert (=> b!1414922 (= e!800822 call!67174)))

(declare-fun b!1414923 () Bool)

(declare-fun e!800823 () Bool)

(declare-fun e!800824 () Bool)

(assert (=> b!1414923 (= e!800823 e!800824)))

(declare-fun res!951150 () Bool)

(assert (=> b!1414923 (=> (not res!951150) (not e!800824))))

(declare-fun e!800821 () Bool)

(assert (=> b!1414923 (= res!951150 (not e!800821))))

(declare-fun res!951152 () Bool)

(assert (=> b!1414923 (=> (not res!951152) (not e!800821))))

(assert (=> b!1414923 (= res!951152 (validKeyInArray!0 (select (arr!46619 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67171 () Bool)

(declare-fun c!131367 () Bool)

(assert (=> bm!67171 (= call!67174 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131367 (Cons!33314 (select (arr!46619 a!2901) #b00000000000000000000000000000000) Nil!33315) Nil!33315)))))

(declare-fun b!1414924 () Bool)

(declare-fun contains!9838 (List!33318 (_ BitVec 64)) Bool)

(assert (=> b!1414924 (= e!800821 (contains!9838 Nil!33315 (select (arr!46619 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152409 () Bool)

(declare-fun res!951151 () Bool)

(assert (=> d!152409 (=> res!951151 e!800823)))

(assert (=> d!152409 (= res!951151 (bvsge #b00000000000000000000000000000000 (size!47170 a!2901)))))

(assert (=> d!152409 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33315) e!800823)))

(declare-fun b!1414925 () Bool)

(assert (=> b!1414925 (= e!800824 e!800822)))

(assert (=> b!1414925 (= c!131367 (validKeyInArray!0 (select (arr!46619 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!152409 (not res!951151)) b!1414923))

(assert (= (and b!1414923 res!951152) b!1414924))

(assert (= (and b!1414923 res!951150) b!1414925))

(assert (= (and b!1414925 c!131367) b!1414921))

(assert (= (and b!1414925 (not c!131367)) b!1414922))

(assert (= (or b!1414921 b!1414922) bm!67171))

(assert (=> b!1414923 m!1305131))

(assert (=> b!1414923 m!1305131))

(assert (=> b!1414923 m!1305139))

(assert (=> bm!67171 m!1305131))

(declare-fun m!1305153 () Bool)

(assert (=> bm!67171 m!1305153))

(assert (=> b!1414924 m!1305131))

(assert (=> b!1414924 m!1305131))

(declare-fun m!1305155 () Bool)

(assert (=> b!1414924 m!1305155))

(assert (=> b!1414925 m!1305131))

(assert (=> b!1414925 m!1305131))

(assert (=> b!1414925 m!1305139))

(assert (=> b!1414654 d!152409))

(check-sat (not d!152357) (not bm!67163) (not b!1414891) (not b!1414923) (not b!1414924) (not d!152399) (not b!1414846) (not d!152389) (not d!152347) (not d!152379) (not b!1414855) (not d!152349) (not b!1414844) (not b!1414740) (not b!1414889) (not b!1414711) (not bm!67168) (not bm!67171) (not d!152345) (not b!1414783) (not b!1414705) (not b!1414925))
(check-sat)
