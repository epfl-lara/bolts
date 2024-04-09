; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120734 () Bool)

(assert start!120734)

(declare-fun b!1404697 () Bool)

(declare-fun res!943173 () Bool)

(declare-fun e!795210 () Bool)

(assert (=> b!1404697 (=> (not res!943173) (not e!795210))))

(declare-datatypes ((array!96010 0))(
  ( (array!96011 (arr!46350 (Array (_ BitVec 32) (_ BitVec 64))) (size!46901 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96010)

(declare-datatypes ((List!33049 0))(
  ( (Nil!33046) (Cons!33045 (h!34296 (_ BitVec 64)) (t!47750 List!33049)) )
))
(declare-fun arrayNoDuplicates!0 (array!96010 (_ BitVec 32) List!33049) Bool)

(assert (=> b!1404697 (= res!943173 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33046))))

(declare-fun b!1404698 () Bool)

(declare-datatypes ((SeekEntryResult!10683 0))(
  ( (MissingZero!10683 (index!45108 (_ BitVec 32))) (Found!10683 (index!45109 (_ BitVec 32))) (Intermediate!10683 (undefined!11495 Bool) (index!45110 (_ BitVec 32)) (x!126727 (_ BitVec 32))) (Undefined!10683) (MissingVacant!10683 (index!45111 (_ BitVec 32))) )
))
(declare-fun lt!618735 () SeekEntryResult!10683)

(assert (=> b!1404698 (= e!795210 (not (or (not (is-Intermediate!10683 lt!618735)) (not (undefined!11495 lt!618735)))))))

(declare-fun e!795211 () Bool)

(assert (=> b!1404698 e!795211))

(declare-fun res!943175 () Bool)

(assert (=> b!1404698 (=> (not res!943175) (not e!795211))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96010 (_ BitVec 32)) Bool)

(assert (=> b!1404698 (= res!943175 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47290 0))(
  ( (Unit!47291) )
))
(declare-fun lt!618736 () Unit!47290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96010 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47290)

(assert (=> b!1404698 (= lt!618736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96010 (_ BitVec 32)) SeekEntryResult!10683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404698 (= lt!618735 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) (select (arr!46350 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404699 () Bool)

(declare-fun res!943176 () Bool)

(assert (=> b!1404699 (=> (not res!943176) (not e!795210))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404699 (= res!943176 (validKeyInArray!0 (select (arr!46350 a!2901) i!1037)))))

(declare-fun b!1404700 () Bool)

(declare-fun res!943171 () Bool)

(assert (=> b!1404700 (=> (not res!943171) (not e!795210))))

(assert (=> b!1404700 (= res!943171 (validKeyInArray!0 (select (arr!46350 a!2901) j!112)))))

(declare-fun res!943174 () Bool)

(assert (=> start!120734 (=> (not res!943174) (not e!795210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120734 (= res!943174 (validMask!0 mask!2840))))

(assert (=> start!120734 e!795210))

(assert (=> start!120734 true))

(declare-fun array_inv!35295 (array!96010) Bool)

(assert (=> start!120734 (array_inv!35295 a!2901)))

(declare-fun b!1404701 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96010 (_ BitVec 32)) SeekEntryResult!10683)

(assert (=> b!1404701 (= e!795211 (= (seekEntryOrOpen!0 (select (arr!46350 a!2901) j!112) a!2901 mask!2840) (Found!10683 j!112)))))

(declare-fun b!1404702 () Bool)

(declare-fun res!943172 () Bool)

(assert (=> b!1404702 (=> (not res!943172) (not e!795210))))

(assert (=> b!1404702 (= res!943172 (and (= (size!46901 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46901 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46901 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404703 () Bool)

(declare-fun res!943170 () Bool)

(assert (=> b!1404703 (=> (not res!943170) (not e!795210))))

(assert (=> b!1404703 (= res!943170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120734 res!943174) b!1404702))

(assert (= (and b!1404702 res!943172) b!1404699))

(assert (= (and b!1404699 res!943176) b!1404700))

(assert (= (and b!1404700 res!943171) b!1404703))

(assert (= (and b!1404703 res!943170) b!1404697))

(assert (= (and b!1404697 res!943173) b!1404698))

(assert (= (and b!1404698 res!943175) b!1404701))

(declare-fun m!1293537 () Bool)

(assert (=> b!1404700 m!1293537))

(assert (=> b!1404700 m!1293537))

(declare-fun m!1293539 () Bool)

(assert (=> b!1404700 m!1293539))

(declare-fun m!1293541 () Bool)

(assert (=> b!1404697 m!1293541))

(declare-fun m!1293543 () Bool)

(assert (=> start!120734 m!1293543))

(declare-fun m!1293545 () Bool)

(assert (=> start!120734 m!1293545))

(declare-fun m!1293547 () Bool)

(assert (=> b!1404699 m!1293547))

(assert (=> b!1404699 m!1293547))

(declare-fun m!1293549 () Bool)

(assert (=> b!1404699 m!1293549))

(declare-fun m!1293551 () Bool)

(assert (=> b!1404703 m!1293551))

(assert (=> b!1404698 m!1293537))

(declare-fun m!1293553 () Bool)

(assert (=> b!1404698 m!1293553))

(assert (=> b!1404698 m!1293537))

(declare-fun m!1293555 () Bool)

(assert (=> b!1404698 m!1293555))

(assert (=> b!1404698 m!1293553))

(assert (=> b!1404698 m!1293537))

(declare-fun m!1293557 () Bool)

(assert (=> b!1404698 m!1293557))

(declare-fun m!1293559 () Bool)

(assert (=> b!1404698 m!1293559))

(assert (=> b!1404701 m!1293537))

(assert (=> b!1404701 m!1293537))

(declare-fun m!1293561 () Bool)

(assert (=> b!1404701 m!1293561))

(push 1)

(assert (not b!1404701))

(assert (not b!1404697))

(assert (not start!120734))

(assert (not b!1404703))

(assert (not b!1404698))

(assert (not b!1404699))

(assert (not b!1404700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151253 () Bool)

(assert (=> d!151253 (= (validKeyInArray!0 (select (arr!46350 a!2901) j!112)) (and (not (= (select (arr!46350 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46350 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404700 d!151253))

(declare-fun b!1404755 () Bool)

(declare-fun e!795249 () SeekEntryResult!10683)

(declare-fun lt!618764 () SeekEntryResult!10683)

(assert (=> b!1404755 (= e!795249 (MissingZero!10683 (index!45110 lt!618764)))))

(declare-fun b!1404756 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96010 (_ BitVec 32)) SeekEntryResult!10683)

(assert (=> b!1404756 (= e!795249 (seekKeyOrZeroReturnVacant!0 (x!126727 lt!618764) (index!45110 lt!618764) (index!45110 lt!618764) (select (arr!46350 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404757 () Bool)

(declare-fun e!795250 () SeekEntryResult!10683)

(assert (=> b!1404757 (= e!795250 Undefined!10683)))

(declare-fun d!151255 () Bool)

(declare-fun lt!618765 () SeekEntryResult!10683)

(assert (=> d!151255 (and (or (is-Undefined!10683 lt!618765) (not (is-Found!10683 lt!618765)) (and (bvsge (index!45109 lt!618765) #b00000000000000000000000000000000) (bvslt (index!45109 lt!618765) (size!46901 a!2901)))) (or (is-Undefined!10683 lt!618765) (is-Found!10683 lt!618765) (not (is-MissingZero!10683 lt!618765)) (and (bvsge (index!45108 lt!618765) #b00000000000000000000000000000000) (bvslt (index!45108 lt!618765) (size!46901 a!2901)))) (or (is-Undefined!10683 lt!618765) (is-Found!10683 lt!618765) (is-MissingZero!10683 lt!618765) (not (is-MissingVacant!10683 lt!618765)) (and (bvsge (index!45111 lt!618765) #b00000000000000000000000000000000) (bvslt (index!45111 lt!618765) (size!46901 a!2901)))) (or (is-Undefined!10683 lt!618765) (ite (is-Found!10683 lt!618765) (= (select (arr!46350 a!2901) (index!45109 lt!618765)) (select (arr!46350 a!2901) j!112)) (ite (is-MissingZero!10683 lt!618765) (= (select (arr!46350 a!2901) (index!45108 lt!618765)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10683 lt!618765) (= (select (arr!46350 a!2901) (index!45111 lt!618765)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151255 (= lt!618765 e!795250)))

(declare-fun c!130244 () Bool)

(assert (=> d!151255 (= c!130244 (and (is-Intermediate!10683 lt!618764) (undefined!11495 lt!618764)))))

(assert (=> d!151255 (= lt!618764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) (select (arr!46350 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151255 (validMask!0 mask!2840)))

(assert (=> d!151255 (= (seekEntryOrOpen!0 (select (arr!46350 a!2901) j!112) a!2901 mask!2840) lt!618765)))

(declare-fun b!1404758 () Bool)

(declare-fun c!130243 () Bool)

(declare-fun lt!618766 () (_ BitVec 64))

(assert (=> b!1404758 (= c!130243 (= lt!618766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!795251 () SeekEntryResult!10683)

(assert (=> b!1404758 (= e!795251 e!795249)))

(declare-fun b!1404759 () Bool)

(assert (=> b!1404759 (= e!795251 (Found!10683 (index!45110 lt!618764)))))

(declare-fun b!1404760 () Bool)

(assert (=> b!1404760 (= e!795250 e!795251)))

(assert (=> b!1404760 (= lt!618766 (select (arr!46350 a!2901) (index!45110 lt!618764)))))

(declare-fun c!130242 () Bool)

(assert (=> b!1404760 (= c!130242 (= lt!618766 (select (arr!46350 a!2901) j!112)))))

(assert (= (and d!151255 c!130244) b!1404757))

(assert (= (and d!151255 (not c!130244)) b!1404760))

(assert (= (and b!1404760 c!130242) b!1404759))

(assert (= (and b!1404760 (not c!130242)) b!1404758))

(assert (= (and b!1404758 c!130243) b!1404755))

(assert (= (and b!1404758 (not c!130243)) b!1404756))

(assert (=> b!1404756 m!1293537))

(declare-fun m!1293587 () Bool)

(assert (=> b!1404756 m!1293587))

(assert (=> d!151255 m!1293543))

(declare-fun m!1293589 () Bool)

(assert (=> d!151255 m!1293589))

(declare-fun m!1293591 () Bool)

(assert (=> d!151255 m!1293591))

(assert (=> d!151255 m!1293553))

(assert (=> d!151255 m!1293537))

(assert (=> d!151255 m!1293557))

(declare-fun m!1293593 () Bool)

(assert (=> d!151255 m!1293593))

(assert (=> d!151255 m!1293537))

(assert (=> d!151255 m!1293553))

(declare-fun m!1293595 () Bool)

(assert (=> b!1404760 m!1293595))

(assert (=> b!1404701 d!151255))

(declare-fun d!151265 () Bool)

(declare-fun res!943211 () Bool)

(declare-fun e!795273 () Bool)

(assert (=> d!151265 (=> res!943211 e!795273)))

(assert (=> d!151265 (= res!943211 (bvsge #b00000000000000000000000000000000 (size!46901 a!2901)))))

(assert (=> d!151265 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33046) e!795273)))

(declare-fun b!1404789 () Bool)

(declare-fun e!795271 () Bool)

(declare-fun call!66939 () Bool)

(assert (=> b!1404789 (= e!795271 call!66939)))

(declare-fun b!1404790 () Bool)

(declare-fun e!795272 () Bool)

(assert (=> b!1404790 (= e!795273 e!795272)))

(declare-fun res!943212 () Bool)

(assert (=> b!1404790 (=> (not res!943212) (not e!795272))))

(declare-fun e!795270 () Bool)

(assert (=> b!1404790 (= res!943212 (not e!795270))))

(declare-fun res!943210 () Bool)

(assert (=> b!1404790 (=> (not res!943210) (not e!795270))))

(assert (=> b!1404790 (= res!943210 (validKeyInArray!0 (select (arr!46350 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404791 () Bool)

(declare-fun contains!9806 (List!33049 (_ BitVec 64)) Bool)

(assert (=> b!1404791 (= e!795270 (contains!9806 Nil!33046 (select (arr!46350 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404792 () Bool)

(assert (=> b!1404792 (= e!795272 e!795271)))

(declare-fun c!130253 () Bool)

(assert (=> b!1404792 (= c!130253 (validKeyInArray!0 (select (arr!46350 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66936 () Bool)

(assert (=> bm!66936 (= call!66939 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130253 (Cons!33045 (select (arr!46350 a!2901) #b00000000000000000000000000000000) Nil!33046) Nil!33046)))))

(declare-fun b!1404793 () Bool)

(assert (=> b!1404793 (= e!795271 call!66939)))

(assert (= (and d!151265 (not res!943211)) b!1404790))

(assert (= (and b!1404790 res!943210) b!1404791))

(assert (= (and b!1404790 res!943212) b!1404792))

(assert (= (and b!1404792 c!130253) b!1404789))

(assert (= (and b!1404792 (not c!130253)) b!1404793))

(assert (= (or b!1404789 b!1404793) bm!66936))

(declare-fun m!1293597 () Bool)

(assert (=> b!1404790 m!1293597))

(assert (=> b!1404790 m!1293597))

(declare-fun m!1293599 () Bool)

(assert (=> b!1404790 m!1293599))

(assert (=> b!1404791 m!1293597))

(assert (=> b!1404791 m!1293597))

(declare-fun m!1293601 () Bool)

(assert (=> b!1404791 m!1293601))

(assert (=> b!1404792 m!1293597))

(assert (=> b!1404792 m!1293597))

(assert (=> b!1404792 m!1293599))

(assert (=> bm!66936 m!1293597))

(declare-fun m!1293603 () Bool)

(assert (=> bm!66936 m!1293603))

(assert (=> b!1404697 d!151265))

(declare-fun b!1404811 () Bool)

(declare-fun e!795286 () Bool)

(declare-fun e!795287 () Bool)

(assert (=> b!1404811 (= e!795286 e!795287)))

(declare-fun c!130259 () Bool)

(assert (=> b!1404811 (= c!130259 (validKeyInArray!0 (select (arr!46350 a!2901) j!112)))))

(declare-fun b!1404812 () Bool)

(declare-fun call!66942 () Bool)

(assert (=> b!1404812 (= e!795287 call!66942)))

(declare-fun b!1404813 () Bool)

(declare-fun e!795285 () Bool)

(assert (=> b!1404813 (= e!795285 call!66942)))

(declare-fun d!151271 () Bool)

(declare-fun res!943221 () Bool)

(assert (=> d!151271 (=> res!943221 e!795286)))

(assert (=> d!151271 (= res!943221 (bvsge j!112 (size!46901 a!2901)))))

(assert (=> d!151271 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!795286)))

(declare-fun b!1404814 () Bool)

(assert (=> b!1404814 (= e!795287 e!795285)))

(declare-fun lt!618786 () (_ BitVec 64))

(assert (=> b!1404814 (= lt!618786 (select (arr!46350 a!2901) j!112))))

(declare-fun lt!618787 () Unit!47290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96010 (_ BitVec 64) (_ BitVec 32)) Unit!47290)

(assert (=> b!1404814 (= lt!618787 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618786 j!112))))

(declare-fun arrayContainsKey!0 (array!96010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404814 (arrayContainsKey!0 a!2901 lt!618786 #b00000000000000000000000000000000)))

(declare-fun lt!618785 () Unit!47290)

(assert (=> b!1404814 (= lt!618785 lt!618787)))

(declare-fun res!943222 () Bool)

(assert (=> b!1404814 (= res!943222 (= (seekEntryOrOpen!0 (select (arr!46350 a!2901) j!112) a!2901 mask!2840) (Found!10683 j!112)))))

(assert (=> b!1404814 (=> (not res!943222) (not e!795285))))

(declare-fun bm!66939 () Bool)

(assert (=> bm!66939 (= call!66942 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151271 (not res!943221)) b!1404811))

(assert (= (and b!1404811 c!130259) b!1404814))

(assert (= (and b!1404811 (not c!130259)) b!1404812))

(assert (= (and b!1404814 res!943222) b!1404813))

(assert (= (or b!1404813 b!1404812) bm!66939))

(assert (=> b!1404811 m!1293537))

(assert (=> b!1404811 m!1293537))

(assert (=> b!1404811 m!1293539))

(assert (=> b!1404814 m!1293537))

(declare-fun m!1293613 () Bool)

(assert (=> b!1404814 m!1293613))

(declare-fun m!1293615 () Bool)

(assert (=> b!1404814 m!1293615))

(assert (=> b!1404814 m!1293537))

(assert (=> b!1404814 m!1293561))

(declare-fun m!1293617 () Bool)

(assert (=> bm!66939 m!1293617))

(assert (=> b!1404698 d!151271))

(declare-fun d!151277 () Bool)

(assert (=> d!151277 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618796 () Unit!47290)

(declare-fun choose!38 (array!96010 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47290)

(assert (=> d!151277 (= lt!618796 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151277 (validMask!0 mask!2840)))

(assert (=> d!151277 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618796)))

(declare-fun bs!40923 () Bool)

(assert (= bs!40923 d!151277))

(assert (=> bs!40923 m!1293559))

(declare-fun m!1293619 () Bool)

(assert (=> bs!40923 m!1293619))

(assert (=> bs!40923 m!1293543))

(assert (=> b!1404698 d!151277))

(declare-fun e!795323 () SeekEntryResult!10683)

(declare-fun b!1404877 () Bool)

(assert (=> b!1404877 (= e!795323 (Intermediate!10683 false (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404878 () Bool)

(declare-fun e!795325 () SeekEntryResult!10683)

(assert (=> b!1404878 (= e!795325 (Intermediate!10683 true (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404879 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404879 (= e!795323 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46350 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404880 () Bool)

(declare-fun e!795326 () Bool)

(declare-fun lt!618823 () SeekEntryResult!10683)

(assert (=> b!1404880 (= e!795326 (bvsge (x!126727 lt!618823) #b01111111111111111111111111111110))))

(declare-fun b!1404881 () Bool)

(assert (=> b!1404881 (and (bvsge (index!45110 lt!618823) #b00000000000000000000000000000000) (bvslt (index!45110 lt!618823) (size!46901 a!2901)))))

(declare-fun res!943233 () Bool)

(assert (=> b!1404881 (= res!943233 (= (select (arr!46350 a!2901) (index!45110 lt!618823)) (select (arr!46350 a!2901) j!112)))))

(declare-fun e!795324 () Bool)

(assert (=> b!1404881 (=> res!943233 e!795324)))

(declare-fun e!795322 () Bool)

(assert (=> b!1404881 (= e!795322 e!795324)))

(declare-fun b!1404882 () Bool)

(assert (=> b!1404882 (and (bvsge (index!45110 lt!618823) #b00000000000000000000000000000000) (bvslt (index!45110 lt!618823) (size!46901 a!2901)))))

(assert (=> b!1404882 (= e!795324 (= (select (arr!46350 a!2901) (index!45110 lt!618823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!151279 () Bool)

(assert (=> d!151279 e!795326))

(declare-fun c!130286 () Bool)

(assert (=> d!151279 (= c!130286 (and (is-Intermediate!10683 lt!618823) (undefined!11495 lt!618823)))))

(assert (=> d!151279 (= lt!618823 e!795325)))

(declare-fun c!130287 () Bool)

(assert (=> d!151279 (= c!130287 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!618822 () (_ BitVec 64))

(assert (=> d!151279 (= lt!618822 (select (arr!46350 a!2901) (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840)))))

(assert (=> d!151279 (validMask!0 mask!2840)))

(assert (=> d!151279 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) (select (arr!46350 a!2901) j!112) a!2901 mask!2840) lt!618823)))

(declare-fun b!1404883 () Bool)

(assert (=> b!1404883 (= e!795326 e!795322)))

(declare-fun res!943235 () Bool)

(assert (=> b!1404883 (= res!943235 (and (is-Intermediate!10683 lt!618823) (not (undefined!11495 lt!618823)) (bvslt (x!126727 lt!618823) #b01111111111111111111111111111110) (bvsge (x!126727 lt!618823) #b00000000000000000000000000000000) (bvsge (x!126727 lt!618823) #b00000000000000000000000000000000)))))

(assert (=> b!1404883 (=> (not res!943235) (not e!795322))))

(declare-fun b!1404884 () Bool)

(assert (=> b!1404884 (= e!795325 e!795323)))

(declare-fun c!130288 () Bool)

(assert (=> b!1404884 (= c!130288 (or (= lt!618822 (select (arr!46350 a!2901) j!112)) (= (bvadd lt!618822 lt!618822) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1404885 () Bool)

(assert (=> b!1404885 (and (bvsge (index!45110 lt!618823) #b00000000000000000000000000000000) (bvslt (index!45110 lt!618823) (size!46901 a!2901)))))

(declare-fun res!943234 () Bool)

(assert (=> b!1404885 (= res!943234 (= (select (arr!46350 a!2901) (index!45110 lt!618823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404885 (=> res!943234 e!795324)))

(assert (= (and d!151279 c!130287) b!1404878))

(assert (= (and d!151279 (not c!130287)) b!1404884))

(assert (= (and b!1404884 c!130288) b!1404877))

(assert (= (and b!1404884 (not c!130288)) b!1404879))

(assert (= (and d!151279 c!130286) b!1404880))

(assert (= (and d!151279 (not c!130286)) b!1404883))

(assert (= (and b!1404883 res!943235) b!1404881))

(assert (= (and b!1404881 (not res!943233)) b!1404885))

(assert (= (and b!1404885 (not res!943234)) b!1404882))

(declare-fun m!1293661 () Bool)

(assert (=> b!1404881 m!1293661))

(assert (=> b!1404879 m!1293553))

(declare-fun m!1293663 () Bool)

(assert (=> b!1404879 m!1293663))

(assert (=> b!1404879 m!1293663))

(assert (=> b!1404879 m!1293537))

(declare-fun m!1293665 () Bool)

(assert (=> b!1404879 m!1293665))

(assert (=> b!1404882 m!1293661))

(assert (=> d!151279 m!1293553))

(declare-fun m!1293667 () Bool)

(assert (=> d!151279 m!1293667))

(assert (=> d!151279 m!1293543))

(assert (=> b!1404885 m!1293661))

(assert (=> b!1404698 d!151279))

(declare-fun d!151295 () Bool)

(declare-fun lt!618833 () (_ BitVec 32))

(declare-fun lt!618832 () (_ BitVec 32))

(assert (=> d!151295 (= lt!618833 (bvmul (bvxor lt!618832 (bvlshr lt!618832 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151295 (= lt!618832 ((_ extract 31 0) (bvand (bvxor (select (arr!46350 a!2901) j!112) (bvlshr (select (arr!46350 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151295 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943236 (let ((h!34298 ((_ extract 31 0) (bvand (bvxor (select (arr!46350 a!2901) j!112) (bvlshr (select (arr!46350 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126731 (bvmul (bvxor h!34298 (bvlshr h!34298 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126731 (bvlshr x!126731 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943236 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943236 #b00000000000000000000000000000000))))))

(assert (=> d!151295 (= (toIndex!0 (select (arr!46350 a!2901) j!112) mask!2840) (bvand (bvxor lt!618833 (bvlshr lt!618833 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1404698 d!151295))

(declare-fun b!1404894 () Bool)

(declare-fun e!795332 () Bool)

(declare-fun e!795333 () Bool)

(assert (=> b!1404894 (= e!795332 e!795333)))

(declare-fun c!130293 () Bool)

(assert (=> b!1404894 (= c!130293 (validKeyInArray!0 (select (arr!46350 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404895 () Bool)

(declare-fun call!66945 () Bool)

(assert (=> b!1404895 (= e!795333 call!66945)))

(declare-fun b!1404896 () Bool)

(declare-fun e!795331 () Bool)

(assert (=> b!1404896 (= e!795331 call!66945)))

(declare-fun d!151301 () Bool)

(declare-fun res!943237 () Bool)

(assert (=> d!151301 (=> res!943237 e!795332)))

(assert (=> d!151301 (= res!943237 (bvsge #b00000000000000000000000000000000 (size!46901 a!2901)))))

(assert (=> d!151301 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795332)))

(declare-fun b!1404897 () Bool)

(assert (=> b!1404897 (= e!795333 e!795331)))

(declare-fun lt!618835 () (_ BitVec 64))

(assert (=> b!1404897 (= lt!618835 (select (arr!46350 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618836 () Unit!47290)

(assert (=> b!1404897 (= lt!618836 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618835 #b00000000000000000000000000000000))))

(assert (=> b!1404897 (arrayContainsKey!0 a!2901 lt!618835 #b00000000000000000000000000000000)))

(declare-fun lt!618834 () Unit!47290)

(assert (=> b!1404897 (= lt!618834 lt!618836)))

(declare-fun res!943238 () Bool)

(assert (=> b!1404897 (= res!943238 (= (seekEntryOrOpen!0 (select (arr!46350 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10683 #b00000000000000000000000000000000)))))

(assert (=> b!1404897 (=> (not res!943238) (not e!795331))))

(declare-fun bm!66942 () Bool)

(assert (=> bm!66942 (= call!66945 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151301 (not res!943237)) b!1404894))

(assert (= (and b!1404894 c!130293) b!1404897))

(assert (= (and b!1404894 (not c!130293)) b!1404895))

(assert (= (and b!1404897 res!943238) b!1404896))

(assert (= (or b!1404896 b!1404895) bm!66942))

(assert (=> b!1404894 m!1293597))

(assert (=> b!1404894 m!1293597))

(assert (=> b!1404894 m!1293599))

(assert (=> b!1404897 m!1293597))

(declare-fun m!1293669 () Bool)

(assert (=> b!1404897 m!1293669))

(declare-fun m!1293671 () Bool)

(assert (=> b!1404897 m!1293671))

(assert (=> b!1404897 m!1293597))

(declare-fun m!1293673 () Bool)

(assert (=> b!1404897 m!1293673))

(declare-fun m!1293675 () Bool)

(assert (=> bm!66942 m!1293675))

(assert (=> b!1404703 d!151301))

(declare-fun d!151303 () Bool)

(assert (=> d!151303 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

