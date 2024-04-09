; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120940 () Bool)

(assert start!120940)

(declare-fun b!1406660 () Bool)

(declare-fun res!944993 () Bool)

(declare-fun e!796178 () Bool)

(assert (=> b!1406660 (=> (not res!944993) (not e!796178))))

(declare-datatypes ((array!96165 0))(
  ( (array!96166 (arr!46426 (Array (_ BitVec 32) (_ BitVec 64))) (size!46977 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96165)

(declare-datatypes ((List!33125 0))(
  ( (Nil!33122) (Cons!33121 (h!34375 (_ BitVec 64)) (t!47826 List!33125)) )
))
(declare-fun arrayNoDuplicates!0 (array!96165 (_ BitVec 32) List!33125) Bool)

(assert (=> b!1406660 (= res!944993 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33122))))

(declare-fun b!1406661 () Bool)

(declare-fun res!944988 () Bool)

(assert (=> b!1406661 (=> (not res!944988) (not e!796178))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406661 (= res!944988 (validKeyInArray!0 (select (arr!46426 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1406662 () Bool)

(declare-fun e!796177 () Bool)

(declare-datatypes ((SeekEntryResult!10759 0))(
  ( (MissingZero!10759 (index!45412 (_ BitVec 32))) (Found!10759 (index!45413 (_ BitVec 32))) (Intermediate!10759 (undefined!11571 Bool) (index!45414 (_ BitVec 32)) (x!127017 (_ BitVec 32))) (Undefined!10759) (MissingVacant!10759 (index!45415 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96165 (_ BitVec 32)) SeekEntryResult!10759)

(assert (=> b!1406662 (= e!796177 (= (seekEntryOrOpen!0 (select (arr!46426 a!2901) j!112) a!2901 mask!2840) (Found!10759 j!112)))))

(declare-fun res!944989 () Bool)

(assert (=> start!120940 (=> (not res!944989) (not e!796178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120940 (= res!944989 (validMask!0 mask!2840))))

(assert (=> start!120940 e!796178))

(assert (=> start!120940 true))

(declare-fun array_inv!35371 (array!96165) Bool)

(assert (=> start!120940 (array_inv!35371 a!2901)))

(declare-fun b!1406663 () Bool)

(declare-fun e!796176 () Bool)

(declare-fun lt!619434 () SeekEntryResult!10759)

(assert (=> b!1406663 (= e!796176 (and (bvsge (x!127017 lt!619434) #b00000000000000000000000000000000) (bvsle (x!127017 lt!619434) #b01111111111111111111111111111110)))))

(declare-fun b!1406664 () Bool)

(assert (=> b!1406664 (= e!796178 (not e!796176))))

(declare-fun res!944987 () Bool)

(assert (=> b!1406664 (=> res!944987 e!796176)))

(assert (=> b!1406664 (= res!944987 (or (not (is-Intermediate!10759 lt!619434)) (undefined!11571 lt!619434)))))

(assert (=> b!1406664 e!796177))

(declare-fun res!944991 () Bool)

(assert (=> b!1406664 (=> (not res!944991) (not e!796177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96165 (_ BitVec 32)) Bool)

(assert (=> b!1406664 (= res!944991 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47442 0))(
  ( (Unit!47443) )
))
(declare-fun lt!619435 () Unit!47442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47442)

(assert (=> b!1406664 (= lt!619435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96165 (_ BitVec 32)) SeekEntryResult!10759)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406664 (= lt!619434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) (select (arr!46426 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406665 () Bool)

(declare-fun res!944986 () Bool)

(assert (=> b!1406665 (=> (not res!944986) (not e!796178))))

(assert (=> b!1406665 (= res!944986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406666 () Bool)

(declare-fun res!944990 () Bool)

(assert (=> b!1406666 (=> (not res!944990) (not e!796178))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406666 (= res!944990 (and (= (size!46977 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46977 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46977 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406667 () Bool)

(declare-fun res!944992 () Bool)

(assert (=> b!1406667 (=> (not res!944992) (not e!796178))))

(assert (=> b!1406667 (= res!944992 (validKeyInArray!0 (select (arr!46426 a!2901) i!1037)))))

(declare-fun b!1406668 () Bool)

(declare-fun res!944994 () Bool)

(assert (=> b!1406668 (=> res!944994 e!796176)))

(assert (=> b!1406668 (= res!944994 (not (= lt!619434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)) mask!2840))))))

(assert (= (and start!120940 res!944989) b!1406666))

(assert (= (and b!1406666 res!944990) b!1406667))

(assert (= (and b!1406667 res!944992) b!1406661))

(assert (= (and b!1406661 res!944988) b!1406665))

(assert (= (and b!1406665 res!944986) b!1406660))

(assert (= (and b!1406660 res!944993) b!1406664))

(assert (= (and b!1406664 res!944991) b!1406662))

(assert (= (and b!1406664 (not res!944987)) b!1406668))

(assert (= (and b!1406668 (not res!944994)) b!1406663))

(declare-fun m!1295987 () Bool)

(assert (=> b!1406664 m!1295987))

(declare-fun m!1295989 () Bool)

(assert (=> b!1406664 m!1295989))

(assert (=> b!1406664 m!1295987))

(declare-fun m!1295991 () Bool)

(assert (=> b!1406664 m!1295991))

(assert (=> b!1406664 m!1295989))

(assert (=> b!1406664 m!1295987))

(declare-fun m!1295993 () Bool)

(assert (=> b!1406664 m!1295993))

(declare-fun m!1295995 () Bool)

(assert (=> b!1406664 m!1295995))

(declare-fun m!1295997 () Bool)

(assert (=> b!1406660 m!1295997))

(declare-fun m!1295999 () Bool)

(assert (=> b!1406668 m!1295999))

(declare-fun m!1296001 () Bool)

(assert (=> b!1406668 m!1296001))

(assert (=> b!1406668 m!1296001))

(declare-fun m!1296003 () Bool)

(assert (=> b!1406668 m!1296003))

(assert (=> b!1406668 m!1296003))

(assert (=> b!1406668 m!1296001))

(declare-fun m!1296005 () Bool)

(assert (=> b!1406668 m!1296005))

(declare-fun m!1296007 () Bool)

(assert (=> b!1406667 m!1296007))

(assert (=> b!1406667 m!1296007))

(declare-fun m!1296009 () Bool)

(assert (=> b!1406667 m!1296009))

(declare-fun m!1296011 () Bool)

(assert (=> start!120940 m!1296011))

(declare-fun m!1296013 () Bool)

(assert (=> start!120940 m!1296013))

(assert (=> b!1406662 m!1295987))

(assert (=> b!1406662 m!1295987))

(declare-fun m!1296015 () Bool)

(assert (=> b!1406662 m!1296015))

(assert (=> b!1406661 m!1295987))

(assert (=> b!1406661 m!1295987))

(declare-fun m!1296017 () Bool)

(assert (=> b!1406661 m!1296017))

(declare-fun m!1296019 () Bool)

(assert (=> b!1406665 m!1296019))

(push 1)

(assert (not b!1406660))

(assert (not b!1406667))

(assert (not b!1406668))

(assert (not b!1406664))

(assert (not b!1406662))

(assert (not b!1406661))

(assert (not b!1406665))

(assert (not start!120940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1406774 () Bool)

(declare-fun e!796235 () SeekEntryResult!10759)

(declare-fun e!796234 () SeekEntryResult!10759)

(assert (=> b!1406774 (= e!796235 e!796234)))

(declare-fun c!130321 () Bool)

(declare-fun lt!619462 () (_ BitVec 64))

(assert (=> b!1406774 (= c!130321 (or (= lt!619462 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619462 lt!619462) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1406775 () Bool)

(declare-fun e!796237 () Bool)

(declare-fun lt!619461 () SeekEntryResult!10759)

(assert (=> b!1406775 (= e!796237 (bvsge (x!127017 lt!619461) #b01111111111111111111111111111110))))

(declare-fun b!1406776 () Bool)

(assert (=> b!1406776 (= e!796234 (Intermediate!10759 false (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406777 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406777 (= e!796234 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)) mask!2840))))

(declare-fun b!1406778 () Bool)

(assert (=> b!1406778 (and (bvsge (index!45414 lt!619461) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619461) (size!46977 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)))))))

(declare-fun e!796236 () Bool)

(assert (=> b!1406778 (= e!796236 (= (select (arr!46426 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901))) (index!45414 lt!619461)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!151369 () Bool)

(assert (=> d!151369 e!796237))

(declare-fun c!130320 () Bool)

(assert (=> d!151369 (= c!130320 (and (is-Intermediate!10759 lt!619461) (undefined!11571 lt!619461)))))

(assert (=> d!151369 (= lt!619461 e!796235)))

(declare-fun c!130322 () Bool)

(assert (=> d!151369 (= c!130322 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151369 (= lt!619462 (select (arr!46426 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901))) (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151369 (validMask!0 mask!2840)))

(assert (=> d!151369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)) mask!2840) lt!619461)))

(declare-fun b!1406779 () Bool)

(assert (=> b!1406779 (= e!796235 (Intermediate!10759 true (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406780 () Bool)

(assert (=> b!1406780 (and (bvsge (index!45414 lt!619461) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619461) (size!46977 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)))))))

(declare-fun res!945065 () Bool)

(assert (=> b!1406780 (= res!945065 (= (select (arr!46426 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901))) (index!45414 lt!619461)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406780 (=> res!945065 e!796236)))

(declare-fun b!1406781 () Bool)

(assert (=> b!1406781 (and (bvsge (index!45414 lt!619461) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619461) (size!46977 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901)))))))

(declare-fun res!945064 () Bool)

(assert (=> b!1406781 (= res!945064 (= (select (arr!46426 (array!96166 (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46977 a!2901))) (index!45414 lt!619461)) (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1406781 (=> res!945064 e!796236)))

(declare-fun e!796238 () Bool)

(assert (=> b!1406781 (= e!796238 e!796236)))

(declare-fun b!1406782 () Bool)

(assert (=> b!1406782 (= e!796237 e!796238)))

(declare-fun res!945066 () Bool)

(assert (=> b!1406782 (= res!945066 (and (is-Intermediate!10759 lt!619461) (not (undefined!11571 lt!619461)) (bvslt (x!127017 lt!619461) #b01111111111111111111111111111110) (bvsge (x!127017 lt!619461) #b00000000000000000000000000000000) (bvsge (x!127017 lt!619461) #b00000000000000000000000000000000)))))

(assert (=> b!1406782 (=> (not res!945066) (not e!796238))))

(assert (= (and d!151369 c!130322) b!1406779))

(assert (= (and d!151369 (not c!130322)) b!1406774))

(assert (= (and b!1406774 c!130321) b!1406776))

(assert (= (and b!1406774 (not c!130321)) b!1406777))

(assert (= (and d!151369 c!130320) b!1406775))

(assert (= (and d!151369 (not c!130320)) b!1406782))

(assert (= (and b!1406782 res!945066) b!1406781))

(assert (= (and b!1406781 (not res!945064)) b!1406780))

(assert (= (and b!1406780 (not res!945065)) b!1406778))

(declare-fun m!1296107 () Bool)

(assert (=> b!1406778 m!1296107))

(assert (=> b!1406777 m!1296003))

(declare-fun m!1296109 () Bool)

(assert (=> b!1406777 m!1296109))

(assert (=> b!1406777 m!1296109))

(assert (=> b!1406777 m!1296001))

(declare-fun m!1296111 () Bool)

(assert (=> b!1406777 m!1296111))

(assert (=> b!1406780 m!1296107))

(assert (=> b!1406781 m!1296107))

(assert (=> d!151369 m!1296003))

(declare-fun m!1296113 () Bool)

(assert (=> d!151369 m!1296113))

(assert (=> d!151369 m!1296011))

(assert (=> b!1406668 d!151369))

(declare-fun d!151379 () Bool)

(declare-fun lt!619474 () (_ BitVec 32))

(declare-fun lt!619473 () (_ BitVec 32))

(assert (=> d!151379 (= lt!619474 (bvmul (bvxor lt!619473 (bvlshr lt!619473 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151379 (= lt!619473 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151379 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945067 (let ((h!34378 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127021 (bvmul (bvxor h!34378 (bvlshr h!34378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127021 (bvlshr x!127021 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945067 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945067 #b00000000000000000000000000000000))))))

(assert (=> d!151379 (= (toIndex!0 (select (store (arr!46426 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619474 (bvlshr lt!619474 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406668 d!151379))

(declare-fun d!151381 () Bool)

(assert (=> d!151381 (= (validKeyInArray!0 (select (arr!46426 a!2901) i!1037)) (and (not (= (select (arr!46426 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46426 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1406667 d!151381))

(declare-fun b!1406840 () Bool)

(declare-fun e!796277 () SeekEntryResult!10759)

(declare-fun lt!619493 () SeekEntryResult!10759)

(assert (=> b!1406840 (= e!796277 (Found!10759 (index!45414 lt!619493)))))

(declare-fun d!151383 () Bool)

(declare-fun lt!619494 () SeekEntryResult!10759)

(assert (=> d!151383 (and (or (is-Undefined!10759 lt!619494) (not (is-Found!10759 lt!619494)) (and (bvsge (index!45413 lt!619494) #b00000000000000000000000000000000) (bvslt (index!45413 lt!619494) (size!46977 a!2901)))) (or (is-Undefined!10759 lt!619494) (is-Found!10759 lt!619494) (not (is-MissingZero!10759 lt!619494)) (and (bvsge (index!45412 lt!619494) #b00000000000000000000000000000000) (bvslt (index!45412 lt!619494) (size!46977 a!2901)))) (or (is-Undefined!10759 lt!619494) (is-Found!10759 lt!619494) (is-MissingZero!10759 lt!619494) (not (is-MissingVacant!10759 lt!619494)) (and (bvsge (index!45415 lt!619494) #b00000000000000000000000000000000) (bvslt (index!45415 lt!619494) (size!46977 a!2901)))) (or (is-Undefined!10759 lt!619494) (ite (is-Found!10759 lt!619494) (= (select (arr!46426 a!2901) (index!45413 lt!619494)) (select (arr!46426 a!2901) j!112)) (ite (is-MissingZero!10759 lt!619494) (= (select (arr!46426 a!2901) (index!45412 lt!619494)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10759 lt!619494) (= (select (arr!46426 a!2901) (index!45415 lt!619494)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!796276 () SeekEntryResult!10759)

(assert (=> d!151383 (= lt!619494 e!796276)))

(declare-fun c!130344 () Bool)

(assert (=> d!151383 (= c!130344 (and (is-Intermediate!10759 lt!619493) (undefined!11571 lt!619493)))))

(assert (=> d!151383 (= lt!619493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) (select (arr!46426 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151383 (validMask!0 mask!2840)))

(assert (=> d!151383 (= (seekEntryOrOpen!0 (select (arr!46426 a!2901) j!112) a!2901 mask!2840) lt!619494)))

(declare-fun b!1406841 () Bool)

(assert (=> b!1406841 (= e!796276 Undefined!10759)))

(declare-fun b!1406842 () Bool)

(declare-fun e!796275 () SeekEntryResult!10759)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96165 (_ BitVec 32)) SeekEntryResult!10759)

(assert (=> b!1406842 (= e!796275 (seekKeyOrZeroReturnVacant!0 (x!127017 lt!619493) (index!45414 lt!619493) (index!45414 lt!619493) (select (arr!46426 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406843 () Bool)

(assert (=> b!1406843 (= e!796275 (MissingZero!10759 (index!45414 lt!619493)))))

(declare-fun b!1406844 () Bool)

(assert (=> b!1406844 (= e!796276 e!796277)))

(declare-fun lt!619495 () (_ BitVec 64))

(assert (=> b!1406844 (= lt!619495 (select (arr!46426 a!2901) (index!45414 lt!619493)))))

(declare-fun c!130346 () Bool)

(assert (=> b!1406844 (= c!130346 (= lt!619495 (select (arr!46426 a!2901) j!112)))))

(declare-fun b!1406845 () Bool)

(declare-fun c!130345 () Bool)

(assert (=> b!1406845 (= c!130345 (= lt!619495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406845 (= e!796277 e!796275)))

(assert (= (and d!151383 c!130344) b!1406841))

(assert (= (and d!151383 (not c!130344)) b!1406844))

(assert (= (and b!1406844 c!130346) b!1406840))

(assert (= (and b!1406844 (not c!130346)) b!1406845))

(assert (= (and b!1406845 c!130345) b!1406843))

(assert (= (and b!1406845 (not c!130345)) b!1406842))

(declare-fun m!1296141 () Bool)

(assert (=> d!151383 m!1296141))

(assert (=> d!151383 m!1296011))

(declare-fun m!1296143 () Bool)

(assert (=> d!151383 m!1296143))

(assert (=> d!151383 m!1295989))

(assert (=> d!151383 m!1295987))

(assert (=> d!151383 m!1295993))

(assert (=> d!151383 m!1295987))

(assert (=> d!151383 m!1295989))

(declare-fun m!1296145 () Bool)

(assert (=> d!151383 m!1296145))

(assert (=> b!1406842 m!1295987))

(declare-fun m!1296147 () Bool)

(assert (=> b!1406842 m!1296147))

(declare-fun m!1296149 () Bool)

(assert (=> b!1406844 m!1296149))

(assert (=> b!1406662 d!151383))

(declare-fun d!151399 () Bool)

(assert (=> d!151399 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120940 d!151399))

(declare-fun d!151401 () Bool)

(assert (=> d!151401 (= (array_inv!35371 a!2901) (bvsge (size!46977 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120940 d!151401))

(declare-fun d!151403 () Bool)

(declare-fun res!945106 () Bool)

(declare-fun e!796311 () Bool)

(assert (=> d!151403 (=> res!945106 e!796311)))

(assert (=> d!151403 (= res!945106 (bvsge #b00000000000000000000000000000000 (size!46977 a!2901)))))

(assert (=> d!151403 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33122) e!796311)))

(declare-fun b!1406901 () Bool)

(declare-fun e!796314 () Bool)

(declare-fun e!796313 () Bool)

(assert (=> b!1406901 (= e!796314 e!796313)))

(declare-fun c!130364 () Bool)

(assert (=> b!1406901 (= c!130364 (validKeyInArray!0 (select (arr!46426 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406902 () Bool)

(declare-fun e!796312 () Bool)

(declare-fun contains!9810 (List!33125 (_ BitVec 64)) Bool)

(assert (=> b!1406902 (= e!796312 (contains!9810 Nil!33122 (select (arr!46426 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406903 () Bool)

(declare-fun call!66960 () Bool)

(assert (=> b!1406903 (= e!796313 call!66960)))

(declare-fun b!1406904 () Bool)

(assert (=> b!1406904 (= e!796311 e!796314)))

(declare-fun res!945105 () Bool)

(assert (=> b!1406904 (=> (not res!945105) (not e!796314))))

(assert (=> b!1406904 (= res!945105 (not e!796312))))

(declare-fun res!945107 () Bool)

(assert (=> b!1406904 (=> (not res!945107) (not e!796312))))

(assert (=> b!1406904 (= res!945107 (validKeyInArray!0 (select (arr!46426 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406905 () Bool)

(assert (=> b!1406905 (= e!796313 call!66960)))

(declare-fun bm!66957 () Bool)

(assert (=> bm!66957 (= call!66960 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130364 (Cons!33121 (select (arr!46426 a!2901) #b00000000000000000000000000000000) Nil!33122) Nil!33122)))))

(assert (= (and d!151403 (not res!945106)) b!1406904))

(assert (= (and b!1406904 res!945107) b!1406902))

(assert (= (and b!1406904 res!945105) b!1406901))

(assert (= (and b!1406901 c!130364) b!1406903))

(assert (= (and b!1406901 (not c!130364)) b!1406905))

(assert (= (or b!1406903 b!1406905) bm!66957))

(declare-fun m!1296159 () Bool)

(assert (=> b!1406901 m!1296159))

(assert (=> b!1406901 m!1296159))

(declare-fun m!1296161 () Bool)

(assert (=> b!1406901 m!1296161))

(assert (=> b!1406902 m!1296159))

(assert (=> b!1406902 m!1296159))

(declare-fun m!1296163 () Bool)

(assert (=> b!1406902 m!1296163))

(assert (=> b!1406904 m!1296159))

(assert (=> b!1406904 m!1296159))

(assert (=> b!1406904 m!1296161))

(assert (=> bm!66957 m!1296159))

(declare-fun m!1296165 () Bool)

(assert (=> bm!66957 m!1296165))

(assert (=> b!1406660 d!151403))

(declare-fun d!151409 () Bool)

(assert (=> d!151409 (= (validKeyInArray!0 (select (arr!46426 a!2901) j!112)) (and (not (= (select (arr!46426 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46426 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1406661 d!151409))

(declare-fun b!1406936 () Bool)

(declare-fun e!796335 () Bool)

(declare-fun call!66964 () Bool)

(assert (=> b!1406936 (= e!796335 call!66964)))

(declare-fun d!151411 () Bool)

(declare-fun res!945121 () Bool)

(declare-fun e!796336 () Bool)

(assert (=> d!151411 (=> res!945121 e!796336)))

(assert (=> d!151411 (= res!945121 (bvsge j!112 (size!46977 a!2901)))))

(assert (=> d!151411 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796336)))

(declare-fun bm!66961 () Bool)

(assert (=> bm!66961 (= call!66964 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1406937 () Bool)

(declare-fun e!796334 () Bool)

(assert (=> b!1406937 (= e!796334 call!66964)))

(declare-fun b!1406938 () Bool)

(assert (=> b!1406938 (= e!796336 e!796335)))

(declare-fun c!130374 () Bool)

(assert (=> b!1406938 (= c!130374 (validKeyInArray!0 (select (arr!46426 a!2901) j!112)))))

(declare-fun b!1406939 () Bool)

(assert (=> b!1406939 (= e!796335 e!796334)))

(declare-fun lt!619536 () (_ BitVec 64))

(assert (=> b!1406939 (= lt!619536 (select (arr!46426 a!2901) j!112))))

(declare-fun lt!619538 () Unit!47442)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96165 (_ BitVec 64) (_ BitVec 32)) Unit!47442)

(assert (=> b!1406939 (= lt!619538 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619536 j!112))))

(declare-fun arrayContainsKey!0 (array!96165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1406939 (arrayContainsKey!0 a!2901 lt!619536 #b00000000000000000000000000000000)))

(declare-fun lt!619537 () Unit!47442)

(assert (=> b!1406939 (= lt!619537 lt!619538)))

(declare-fun res!945122 () Bool)

(assert (=> b!1406939 (= res!945122 (= (seekEntryOrOpen!0 (select (arr!46426 a!2901) j!112) a!2901 mask!2840) (Found!10759 j!112)))))

(assert (=> b!1406939 (=> (not res!945122) (not e!796334))))

(assert (= (and d!151411 (not res!945121)) b!1406938))

(assert (= (and b!1406938 c!130374) b!1406939))

(assert (= (and b!1406938 (not c!130374)) b!1406936))

(assert (= (and b!1406939 res!945122) b!1406937))

(assert (= (or b!1406937 b!1406936) bm!66961))

(declare-fun m!1296191 () Bool)

(assert (=> bm!66961 m!1296191))

(assert (=> b!1406938 m!1295987))

(assert (=> b!1406938 m!1295987))

(assert (=> b!1406938 m!1296017))

(assert (=> b!1406939 m!1295987))

(declare-fun m!1296193 () Bool)

(assert (=> b!1406939 m!1296193))

(declare-fun m!1296195 () Bool)

(assert (=> b!1406939 m!1296195))

(assert (=> b!1406939 m!1295987))

(assert (=> b!1406939 m!1296015))

(assert (=> b!1406664 d!151411))

(declare-fun d!151423 () Bool)

(assert (=> d!151423 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619550 () Unit!47442)

(declare-fun choose!38 (array!96165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47442)

(assert (=> d!151423 (= lt!619550 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151423 (validMask!0 mask!2840)))

(assert (=> d!151423 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619550)))

(declare-fun bs!41004 () Bool)

(assert (= bs!41004 d!151423))

(assert (=> bs!41004 m!1295995))

(declare-fun m!1296197 () Bool)

(assert (=> bs!41004 m!1296197))

(assert (=> bs!41004 m!1296011))

(assert (=> b!1406664 d!151423))

(declare-fun b!1406952 () Bool)

(declare-fun e!796347 () SeekEntryResult!10759)

(declare-fun e!796346 () SeekEntryResult!10759)

(assert (=> b!1406952 (= e!796347 e!796346)))

(declare-fun c!130379 () Bool)

(declare-fun lt!619552 () (_ BitVec 64))

(assert (=> b!1406952 (= c!130379 (or (= lt!619552 (select (arr!46426 a!2901) j!112)) (= (bvadd lt!619552 lt!619552) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1406953 () Bool)

(declare-fun e!796349 () Bool)

(declare-fun lt!619551 () SeekEntryResult!10759)

(assert (=> b!1406953 (= e!796349 (bvsge (x!127017 lt!619551) #b01111111111111111111111111111110))))

(declare-fun b!1406954 () Bool)

(assert (=> b!1406954 (= e!796346 (Intermediate!10759 false (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406955 () Bool)

(assert (=> b!1406955 (= e!796346 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46426 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406956 () Bool)

(assert (=> b!1406956 (and (bvsge (index!45414 lt!619551) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619551) (size!46977 a!2901)))))

(declare-fun e!796348 () Bool)

(assert (=> b!1406956 (= e!796348 (= (select (arr!46426 a!2901) (index!45414 lt!619551)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!151425 () Bool)

(assert (=> d!151425 e!796349))

(declare-fun c!130378 () Bool)

(assert (=> d!151425 (= c!130378 (and (is-Intermediate!10759 lt!619551) (undefined!11571 lt!619551)))))

(assert (=> d!151425 (= lt!619551 e!796347)))

(declare-fun c!130380 () Bool)

(assert (=> d!151425 (= c!130380 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151425 (= lt!619552 (select (arr!46426 a!2901) (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840)))))

(assert (=> d!151425 (validMask!0 mask!2840)))

(assert (=> d!151425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) (select (arr!46426 a!2901) j!112) a!2901 mask!2840) lt!619551)))

(declare-fun b!1406957 () Bool)

(assert (=> b!1406957 (= e!796347 (Intermediate!10759 true (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1406958 () Bool)

(assert (=> b!1406958 (and (bvsge (index!45414 lt!619551) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619551) (size!46977 a!2901)))))

(declare-fun res!945130 () Bool)

(assert (=> b!1406958 (= res!945130 (= (select (arr!46426 a!2901) (index!45414 lt!619551)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1406958 (=> res!945130 e!796348)))

(declare-fun b!1406959 () Bool)

(assert (=> b!1406959 (and (bvsge (index!45414 lt!619551) #b00000000000000000000000000000000) (bvslt (index!45414 lt!619551) (size!46977 a!2901)))))

(declare-fun res!945129 () Bool)

(assert (=> b!1406959 (= res!945129 (= (select (arr!46426 a!2901) (index!45414 lt!619551)) (select (arr!46426 a!2901) j!112)))))

(assert (=> b!1406959 (=> res!945129 e!796348)))

(declare-fun e!796350 () Bool)

(assert (=> b!1406959 (= e!796350 e!796348)))

(declare-fun b!1406960 () Bool)

(assert (=> b!1406960 (= e!796349 e!796350)))

(declare-fun res!945131 () Bool)

(assert (=> b!1406960 (= res!945131 (and (is-Intermediate!10759 lt!619551) (not (undefined!11571 lt!619551)) (bvslt (x!127017 lt!619551) #b01111111111111111111111111111110) (bvsge (x!127017 lt!619551) #b00000000000000000000000000000000) (bvsge (x!127017 lt!619551) #b00000000000000000000000000000000)))))

(assert (=> b!1406960 (=> (not res!945131) (not e!796350))))

(assert (= (and d!151425 c!130380) b!1406957))

(assert (= (and d!151425 (not c!130380)) b!1406952))

(assert (= (and b!1406952 c!130379) b!1406954))

(assert (= (and b!1406952 (not c!130379)) b!1406955))

(assert (= (and d!151425 c!130378) b!1406953))

(assert (= (and d!151425 (not c!130378)) b!1406960))

(assert (= (and b!1406960 res!945131) b!1406959))

(assert (= (and b!1406959 (not res!945129)) b!1406958))

(assert (= (and b!1406958 (not res!945130)) b!1406956))

(declare-fun m!1296205 () Bool)

(assert (=> b!1406956 m!1296205))

(assert (=> b!1406955 m!1295989))

(declare-fun m!1296207 () Bool)

(assert (=> b!1406955 m!1296207))

(assert (=> b!1406955 m!1296207))

(assert (=> b!1406955 m!1295987))

(declare-fun m!1296209 () Bool)

(assert (=> b!1406955 m!1296209))

(assert (=> b!1406958 m!1296205))

(assert (=> b!1406959 m!1296205))

(assert (=> d!151425 m!1295989))

(declare-fun m!1296211 () Bool)

(assert (=> d!151425 m!1296211))

(assert (=> d!151425 m!1296011))

(assert (=> b!1406664 d!151425))

(declare-fun d!151429 () Bool)

(declare-fun lt!619554 () (_ BitVec 32))

(declare-fun lt!619553 () (_ BitVec 32))

(assert (=> d!151429 (= lt!619554 (bvmul (bvxor lt!619553 (bvlshr lt!619553 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151429 (= lt!619553 ((_ extract 31 0) (bvand (bvxor (select (arr!46426 a!2901) j!112) (bvlshr (select (arr!46426 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151429 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945067 (let ((h!34378 ((_ extract 31 0) (bvand (bvxor (select (arr!46426 a!2901) j!112) (bvlshr (select (arr!46426 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127021 (bvmul (bvxor h!34378 (bvlshr h!34378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127021 (bvlshr x!127021 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945067 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945067 #b00000000000000000000000000000000))))))

(assert (=> d!151429 (= (toIndex!0 (select (arr!46426 a!2901) j!112) mask!2840) (bvand (bvxor lt!619554 (bvlshr lt!619554 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406664 d!151429))

(declare-fun b!1406961 () Bool)

(declare-fun e!796352 () Bool)

(declare-fun call!66968 () Bool)

(assert (=> b!1406961 (= e!796352 call!66968)))

(declare-fun d!151431 () Bool)

(declare-fun res!945132 () Bool)

(declare-fun e!796353 () Bool)

(assert (=> d!151431 (=> res!945132 e!796353)))

(assert (=> d!151431 (= res!945132 (bvsge #b00000000000000000000000000000000 (size!46977 a!2901)))))

(assert (=> d!151431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796353)))

(declare-fun bm!66965 () Bool)

(assert (=> bm!66965 (= call!66968 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1406962 () Bool)

(declare-fun e!796351 () Bool)

(assert (=> b!1406962 (= e!796351 call!66968)))

(declare-fun b!1406963 () Bool)

(assert (=> b!1406963 (= e!796353 e!796352)))

(declare-fun c!130381 () Bool)

(assert (=> b!1406963 (= c!130381 (validKeyInArray!0 (select (arr!46426 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1406964 () Bool)

(assert (=> b!1406964 (= e!796352 e!796351)))

(declare-fun lt!619555 () (_ BitVec 64))

(assert (=> b!1406964 (= lt!619555 (select (arr!46426 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619557 () Unit!47442)

(assert (=> b!1406964 (= lt!619557 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619555 #b00000000000000000000000000000000))))

(assert (=> b!1406964 (arrayContainsKey!0 a!2901 lt!619555 #b00000000000000000000000000000000)))

(declare-fun lt!619556 () Unit!47442)

(assert (=> b!1406964 (= lt!619556 lt!619557)))

(declare-fun res!945133 () Bool)

(assert (=> b!1406964 (= res!945133 (= (seekEntryOrOpen!0 (select (arr!46426 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10759 #b00000000000000000000000000000000)))))

(assert (=> b!1406964 (=> (not res!945133) (not e!796351))))

(assert (= (and d!151431 (not res!945132)) b!1406963))

(assert (= (and b!1406963 c!130381) b!1406964))

(assert (= (and b!1406963 (not c!130381)) b!1406961))

(assert (= (and b!1406964 res!945133) b!1406962))

(assert (= (or b!1406962 b!1406961) bm!66965))

(declare-fun m!1296213 () Bool)

(assert (=> bm!66965 m!1296213))

(assert (=> b!1406963 m!1296159))

(assert (=> b!1406963 m!1296159))

(assert (=> b!1406963 m!1296161))

(assert (=> b!1406964 m!1296159))

(declare-fun m!1296215 () Bool)

(assert (=> b!1406964 m!1296215))

(declare-fun m!1296217 () Bool)

(assert (=> b!1406964 m!1296217))

(assert (=> b!1406964 m!1296159))

(declare-fun m!1296219 () Bool)

(assert (=> b!1406964 m!1296219))

(assert (=> b!1406665 d!151431))

(push 1)

