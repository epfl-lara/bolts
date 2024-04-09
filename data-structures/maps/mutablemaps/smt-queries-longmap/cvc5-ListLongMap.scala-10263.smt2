; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120670 () Bool)

(assert start!120670)

(declare-fun b!1404372 () Bool)

(declare-fun res!942994 () Bool)

(declare-fun e!795028 () Bool)

(assert (=> b!1404372 (=> (not res!942994) (not e!795028))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95997 0))(
  ( (array!95998 (arr!46345 (Array (_ BitVec 32) (_ BitVec 64))) (size!46896 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95997)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404372 (= res!942994 (and (= (size!46896 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46896 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46896 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404373 () Bool)

(declare-datatypes ((SeekEntryResult!10678 0))(
  ( (MissingZero!10678 (index!45088 (_ BitVec 32))) (Found!10678 (index!45089 (_ BitVec 32))) (Intermediate!10678 (undefined!11490 Bool) (index!45090 (_ BitVec 32)) (x!126708 (_ BitVec 32))) (Undefined!10678) (MissingVacant!10678 (index!45091 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95997 (_ BitVec 32)) SeekEntryResult!10678)

(assert (=> b!1404373 (= e!795028 (not (= (seekEntryOrOpen!0 (select (arr!46345 a!2901) j!112) a!2901 mask!2840) (Found!10678 j!112))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95997 (_ BitVec 32)) Bool)

(assert (=> b!1404373 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47280 0))(
  ( (Unit!47281) )
))
(declare-fun lt!618598 () Unit!47280)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47280)

(assert (=> b!1404373 (= lt!618598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618597 () SeekEntryResult!10678)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95997 (_ BitVec 32)) SeekEntryResult!10678)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404373 (= lt!618597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) (select (arr!46345 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404374 () Bool)

(declare-fun res!942996 () Bool)

(assert (=> b!1404374 (=> (not res!942996) (not e!795028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404374 (= res!942996 (validKeyInArray!0 (select (arr!46345 a!2901) j!112)))))

(declare-fun b!1404375 () Bool)

(declare-fun res!942995 () Bool)

(assert (=> b!1404375 (=> (not res!942995) (not e!795028))))

(assert (=> b!1404375 (= res!942995 (validKeyInArray!0 (select (arr!46345 a!2901) i!1037)))))

(declare-fun b!1404376 () Bool)

(declare-fun res!942993 () Bool)

(assert (=> b!1404376 (=> (not res!942993) (not e!795028))))

(assert (=> b!1404376 (= res!942993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404371 () Bool)

(declare-fun res!942992 () Bool)

(assert (=> b!1404371 (=> (not res!942992) (not e!795028))))

(declare-datatypes ((List!33044 0))(
  ( (Nil!33041) (Cons!33040 (h!34288 (_ BitVec 64)) (t!47745 List!33044)) )
))
(declare-fun arrayNoDuplicates!0 (array!95997 (_ BitVec 32) List!33044) Bool)

(assert (=> b!1404371 (= res!942992 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33041))))

(declare-fun res!942991 () Bool)

(assert (=> start!120670 (=> (not res!942991) (not e!795028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120670 (= res!942991 (validMask!0 mask!2840))))

(assert (=> start!120670 e!795028))

(assert (=> start!120670 true))

(declare-fun array_inv!35290 (array!95997) Bool)

(assert (=> start!120670 (array_inv!35290 a!2901)))

(assert (= (and start!120670 res!942991) b!1404372))

(assert (= (and b!1404372 res!942994) b!1404375))

(assert (= (and b!1404375 res!942995) b!1404374))

(assert (= (and b!1404374 res!942996) b!1404376))

(assert (= (and b!1404376 res!942993) b!1404371))

(assert (= (and b!1404371 res!942992) b!1404373))

(declare-fun m!1293281 () Bool)

(assert (=> b!1404371 m!1293281))

(declare-fun m!1293283 () Bool)

(assert (=> b!1404375 m!1293283))

(assert (=> b!1404375 m!1293283))

(declare-fun m!1293285 () Bool)

(assert (=> b!1404375 m!1293285))

(declare-fun m!1293287 () Bool)

(assert (=> b!1404376 m!1293287))

(declare-fun m!1293289 () Bool)

(assert (=> b!1404373 m!1293289))

(declare-fun m!1293291 () Bool)

(assert (=> b!1404373 m!1293291))

(assert (=> b!1404373 m!1293289))

(declare-fun m!1293293 () Bool)

(assert (=> b!1404373 m!1293293))

(assert (=> b!1404373 m!1293289))

(declare-fun m!1293295 () Bool)

(assert (=> b!1404373 m!1293295))

(assert (=> b!1404373 m!1293291))

(assert (=> b!1404373 m!1293289))

(declare-fun m!1293297 () Bool)

(assert (=> b!1404373 m!1293297))

(declare-fun m!1293299 () Bool)

(assert (=> b!1404373 m!1293299))

(assert (=> b!1404374 m!1293289))

(assert (=> b!1404374 m!1293289))

(declare-fun m!1293301 () Bool)

(assert (=> b!1404374 m!1293301))

(declare-fun m!1293303 () Bool)

(assert (=> start!120670 m!1293303))

(declare-fun m!1293305 () Bool)

(assert (=> start!120670 m!1293305))

(push 1)

(assert (not b!1404376))

(assert (not start!120670))

(assert (not b!1404375))

(assert (not b!1404371))

(assert (not b!1404374))

(assert (not b!1404373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151181 () Bool)

(assert (=> d!151181 (= (validKeyInArray!0 (select (arr!46345 a!2901) j!112)) (and (not (= (select (arr!46345 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46345 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404374 d!151181))

(declare-fun d!151185 () Bool)

(assert (=> d!151185 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120670 d!151185))

(declare-fun d!151191 () Bool)

(assert (=> d!151191 (= (array_inv!35290 a!2901) (bvsge (size!46896 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120670 d!151191))

(declare-fun b!1404460 () Bool)

(declare-fun e!795073 () Bool)

(declare-fun call!66912 () Bool)

(assert (=> b!1404460 (= e!795073 call!66912)))

(declare-fun b!1404461 () Bool)

(declare-fun e!795072 () Bool)

(assert (=> b!1404461 (= e!795073 e!795072)))

(declare-fun lt!618632 () (_ BitVec 64))

(assert (=> b!1404461 (= lt!618632 (select (arr!46345 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618634 () Unit!47280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95997 (_ BitVec 64) (_ BitVec 32)) Unit!47280)

(assert (=> b!1404461 (= lt!618634 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618632 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404461 (arrayContainsKey!0 a!2901 lt!618632 #b00000000000000000000000000000000)))

(declare-fun lt!618633 () Unit!47280)

(assert (=> b!1404461 (= lt!618633 lt!618634)))

(declare-fun res!943053 () Bool)

(assert (=> b!1404461 (= res!943053 (= (seekEntryOrOpen!0 (select (arr!46345 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10678 #b00000000000000000000000000000000)))))

(assert (=> b!1404461 (=> (not res!943053) (not e!795072))))

(declare-fun b!1404462 () Bool)

(assert (=> b!1404462 (= e!795072 call!66912)))

(declare-fun bm!66909 () Bool)

(assert (=> bm!66909 (= call!66912 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404463 () Bool)

(declare-fun e!795074 () Bool)

(assert (=> b!1404463 (= e!795074 e!795073)))

(declare-fun c!130166 () Bool)

(assert (=> b!1404463 (= c!130166 (validKeyInArray!0 (select (arr!46345 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151193 () Bool)

(declare-fun res!943052 () Bool)

(assert (=> d!151193 (=> res!943052 e!795074)))

(assert (=> d!151193 (= res!943052 (bvsge #b00000000000000000000000000000000 (size!46896 a!2901)))))

(assert (=> d!151193 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795074)))

(assert (= (and d!151193 (not res!943052)) b!1404463))

(assert (= (and b!1404463 c!130166) b!1404461))

(assert (= (and b!1404463 (not c!130166)) b!1404460))

(assert (= (and b!1404461 res!943053) b!1404462))

(assert (= (or b!1404462 b!1404460) bm!66909))

(declare-fun m!1293379 () Bool)

(assert (=> b!1404461 m!1293379))

(declare-fun m!1293381 () Bool)

(assert (=> b!1404461 m!1293381))

(declare-fun m!1293383 () Bool)

(assert (=> b!1404461 m!1293383))

(assert (=> b!1404461 m!1293379))

(declare-fun m!1293385 () Bool)

(assert (=> b!1404461 m!1293385))

(declare-fun m!1293387 () Bool)

(assert (=> bm!66909 m!1293387))

(assert (=> b!1404463 m!1293379))

(assert (=> b!1404463 m!1293379))

(declare-fun m!1293389 () Bool)

(assert (=> b!1404463 m!1293389))

(assert (=> b!1404376 d!151193))

(declare-fun d!151201 () Bool)

(assert (=> d!151201 (= (validKeyInArray!0 (select (arr!46345 a!2901) i!1037)) (and (not (= (select (arr!46345 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46345 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404375 d!151201))

(declare-fun b!1404492 () Bool)

(declare-fun e!795095 () Bool)

(declare-fun call!66915 () Bool)

(assert (=> b!1404492 (= e!795095 call!66915)))

(declare-fun b!1404493 () Bool)

(declare-fun e!795093 () Bool)

(declare-fun contains!9803 (List!33044 (_ BitVec 64)) Bool)

(assert (=> b!1404493 (= e!795093 (contains!9803 Nil!33041 (select (arr!46345 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404494 () Bool)

(declare-fun e!795094 () Bool)

(assert (=> b!1404494 (= e!795094 e!795095)))

(declare-fun c!130178 () Bool)

(assert (=> b!1404494 (= c!130178 (validKeyInArray!0 (select (arr!46345 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151203 () Bool)

(declare-fun res!943060 () Bool)

(declare-fun e!795092 () Bool)

(assert (=> d!151203 (=> res!943060 e!795092)))

(assert (=> d!151203 (= res!943060 (bvsge #b00000000000000000000000000000000 (size!46896 a!2901)))))

(assert (=> d!151203 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33041) e!795092)))

(declare-fun b!1404495 () Bool)

(assert (=> b!1404495 (= e!795092 e!795094)))

(declare-fun res!943061 () Bool)

(assert (=> b!1404495 (=> (not res!943061) (not e!795094))))

(assert (=> b!1404495 (= res!943061 (not e!795093))))

(declare-fun res!943062 () Bool)

(assert (=> b!1404495 (=> (not res!943062) (not e!795093))))

(assert (=> b!1404495 (= res!943062 (validKeyInArray!0 (select (arr!46345 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66912 () Bool)

(assert (=> bm!66912 (= call!66915 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130178 (Cons!33040 (select (arr!46345 a!2901) #b00000000000000000000000000000000) Nil!33041) Nil!33041)))))

(declare-fun b!1404496 () Bool)

(assert (=> b!1404496 (= e!795095 call!66915)))

(assert (= (and d!151203 (not res!943060)) b!1404495))

(assert (= (and b!1404495 res!943062) b!1404493))

(assert (= (and b!1404495 res!943061) b!1404494))

(assert (= (and b!1404494 c!130178) b!1404496))

(assert (= (and b!1404494 (not c!130178)) b!1404492))

(assert (= (or b!1404496 b!1404492) bm!66912))

(assert (=> b!1404493 m!1293379))

(assert (=> b!1404493 m!1293379))

(declare-fun m!1293401 () Bool)

(assert (=> b!1404493 m!1293401))

(assert (=> b!1404494 m!1293379))

(assert (=> b!1404494 m!1293379))

(assert (=> b!1404494 m!1293389))

(assert (=> b!1404495 m!1293379))

(assert (=> b!1404495 m!1293379))

(assert (=> b!1404495 m!1293389))

(assert (=> bm!66912 m!1293379))

(declare-fun m!1293403 () Bool)

(assert (=> bm!66912 m!1293403))

(assert (=> b!1404371 d!151203))

(declare-fun b!1404569 () Bool)

(declare-fun e!795142 () Bool)

(declare-fun e!795144 () Bool)

(assert (=> b!1404569 (= e!795142 e!795144)))

(declare-fun res!943096 () Bool)

(declare-fun lt!618673 () SeekEntryResult!10678)

(assert (=> b!1404569 (= res!943096 (and (is-Intermediate!10678 lt!618673) (not (undefined!11490 lt!618673)) (bvslt (x!126708 lt!618673) #b01111111111111111111111111111110) (bvsge (x!126708 lt!618673) #b00000000000000000000000000000000) (bvsge (x!126708 lt!618673) #b00000000000000000000000000000000)))))

(assert (=> b!1404569 (=> (not res!943096) (not e!795144))))

(declare-fun b!1404570 () Bool)

(declare-fun e!795143 () SeekEntryResult!10678)

(assert (=> b!1404570 (= e!795143 (Intermediate!10678 false (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404571 () Bool)

(assert (=> b!1404571 (and (bvsge (index!45090 lt!618673) #b00000000000000000000000000000000) (bvslt (index!45090 lt!618673) (size!46896 a!2901)))))

(declare-fun res!943094 () Bool)

(assert (=> b!1404571 (= res!943094 (= (select (arr!46345 a!2901) (index!45090 lt!618673)) (select (arr!46345 a!2901) j!112)))))

(declare-fun e!795146 () Bool)

(assert (=> b!1404571 (=> res!943094 e!795146)))

(assert (=> b!1404571 (= e!795144 e!795146)))

(declare-fun b!1404572 () Bool)

(assert (=> b!1404572 (and (bvsge (index!45090 lt!618673) #b00000000000000000000000000000000) (bvslt (index!45090 lt!618673) (size!46896 a!2901)))))

(assert (=> b!1404572 (= e!795146 (= (select (arr!46345 a!2901) (index!45090 lt!618673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1404573 () Bool)

(assert (=> b!1404573 (and (bvsge (index!45090 lt!618673) #b00000000000000000000000000000000) (bvslt (index!45090 lt!618673) (size!46896 a!2901)))))

(declare-fun res!943095 () Bool)

(assert (=> b!1404573 (= res!943095 (= (select (arr!46345 a!2901) (index!45090 lt!618673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404573 (=> res!943095 e!795146)))

(declare-fun b!1404574 () Bool)

(declare-fun e!795145 () SeekEntryResult!10678)

(assert (=> b!1404574 (= e!795145 e!795143)))

(declare-fun lt!618672 () (_ BitVec 64))

(declare-fun c!130202 () Bool)

(assert (=> b!1404574 (= c!130202 (or (= lt!618672 (select (arr!46345 a!2901) j!112)) (= (bvadd lt!618672 lt!618672) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1404575 () Bool)

(assert (=> b!1404575 (= e!795145 (Intermediate!10678 true (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!151207 () Bool)

(assert (=> d!151207 e!795142))

(declare-fun c!130201 () Bool)

(assert (=> d!151207 (= c!130201 (and (is-Intermediate!10678 lt!618673) (undefined!11490 lt!618673)))))

(assert (=> d!151207 (= lt!618673 e!795145)))

(declare-fun c!130200 () Bool)

(assert (=> d!151207 (= c!130200 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151207 (= lt!618672 (select (arr!46345 a!2901) (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840)))))

(assert (=> d!151207 (validMask!0 mask!2840)))

(assert (=> d!151207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) (select (arr!46345 a!2901) j!112) a!2901 mask!2840) lt!618673)))

(declare-fun b!1404576 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404576 (= e!795143 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46345 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404577 () Bool)

(assert (=> b!1404577 (= e!795142 (bvsge (x!126708 lt!618673) #b01111111111111111111111111111110))))

(assert (= (and d!151207 c!130200) b!1404575))

(assert (= (and d!151207 (not c!130200)) b!1404574))

(assert (= (and b!1404574 c!130202) b!1404570))

(assert (= (and b!1404574 (not c!130202)) b!1404576))

(assert (= (and d!151207 c!130201) b!1404577))

(assert (= (and d!151207 (not c!130201)) b!1404569))

(assert (= (and b!1404569 res!943096) b!1404571))

(assert (= (and b!1404571 (not res!943094)) b!1404573))

(assert (= (and b!1404573 (not res!943095)) b!1404572))

(declare-fun m!1293429 () Bool)

(assert (=> b!1404573 m!1293429))

(assert (=> b!1404576 m!1293291))

(declare-fun m!1293431 () Bool)

(assert (=> b!1404576 m!1293431))

(assert (=> b!1404576 m!1293431))

(assert (=> b!1404576 m!1293289))

(declare-fun m!1293433 () Bool)

(assert (=> b!1404576 m!1293433))

(assert (=> d!151207 m!1293291))

(declare-fun m!1293435 () Bool)

(assert (=> d!151207 m!1293435))

(assert (=> d!151207 m!1293303))

(assert (=> b!1404571 m!1293429))

(assert (=> b!1404572 m!1293429))

(assert (=> b!1404373 d!151207))

(declare-fun b!1404616 () Bool)

(declare-fun e!795170 () SeekEntryResult!10678)

(declare-fun e!795168 () SeekEntryResult!10678)

(assert (=> b!1404616 (= e!795170 e!795168)))

(declare-fun lt!618705 () (_ BitVec 64))

(declare-fun lt!618706 () SeekEntryResult!10678)

(assert (=> b!1404616 (= lt!618705 (select (arr!46345 a!2901) (index!45090 lt!618706)))))

(declare-fun c!130220 () Bool)

(assert (=> b!1404616 (= c!130220 (= lt!618705 (select (arr!46345 a!2901) j!112)))))

(declare-fun b!1404617 () Bool)

(declare-fun e!795169 () SeekEntryResult!10678)

(assert (=> b!1404617 (= e!795169 (MissingZero!10678 (index!45090 lt!618706)))))

(declare-fun b!1404619 () Bool)

(assert (=> b!1404619 (= e!795168 (Found!10678 (index!45090 lt!618706)))))

(declare-fun b!1404620 () Bool)

(assert (=> b!1404620 (= e!795170 Undefined!10678)))

(declare-fun b!1404621 () Bool)

(declare-fun c!130222 () Bool)

(assert (=> b!1404621 (= c!130222 (= lt!618705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404621 (= e!795168 e!795169)))

(declare-fun b!1404618 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95997 (_ BitVec 32)) SeekEntryResult!10678)

(assert (=> b!1404618 (= e!795169 (seekKeyOrZeroReturnVacant!0 (x!126708 lt!618706) (index!45090 lt!618706) (index!45090 lt!618706) (select (arr!46345 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151224 () Bool)

(declare-fun lt!618704 () SeekEntryResult!10678)

(assert (=> d!151224 (and (or (is-Undefined!10678 lt!618704) (not (is-Found!10678 lt!618704)) (and (bvsge (index!45089 lt!618704) #b00000000000000000000000000000000) (bvslt (index!45089 lt!618704) (size!46896 a!2901)))) (or (is-Undefined!10678 lt!618704) (is-Found!10678 lt!618704) (not (is-MissingZero!10678 lt!618704)) (and (bvsge (index!45088 lt!618704) #b00000000000000000000000000000000) (bvslt (index!45088 lt!618704) (size!46896 a!2901)))) (or (is-Undefined!10678 lt!618704) (is-Found!10678 lt!618704) (is-MissingZero!10678 lt!618704) (not (is-MissingVacant!10678 lt!618704)) (and (bvsge (index!45091 lt!618704) #b00000000000000000000000000000000) (bvslt (index!45091 lt!618704) (size!46896 a!2901)))) (or (is-Undefined!10678 lt!618704) (ite (is-Found!10678 lt!618704) (= (select (arr!46345 a!2901) (index!45089 lt!618704)) (select (arr!46345 a!2901) j!112)) (ite (is-MissingZero!10678 lt!618704) (= (select (arr!46345 a!2901) (index!45088 lt!618704)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10678 lt!618704) (= (select (arr!46345 a!2901) (index!45091 lt!618704)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151224 (= lt!618704 e!795170)))

(declare-fun c!130221 () Bool)

(assert (=> d!151224 (= c!130221 (and (is-Intermediate!10678 lt!618706) (undefined!11490 lt!618706)))))

(assert (=> d!151224 (= lt!618706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46345 a!2901) j!112) mask!2840) (select (arr!46345 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151224 (validMask!0 mask!2840)))

(assert (=> d!151224 (= (seekEntryOrOpen!0 (select (arr!46345 a!2901) j!112) a!2901 mask!2840) lt!618704)))

(assert (= (and d!151224 c!130221) b!1404620))

(assert (= (and d!151224 (not c!130221)) b!1404616))

(assert (= (and b!1404616 c!130220) b!1404619))

(assert (= (and b!1404616 (not c!130220)) b!1404621))

(assert (= (and b!1404621 c!130222) b!1404617))

(assert (= (and b!1404621 (not c!130222)) b!1404618))

(declare-fun m!1293463 () Bool)

(assert (=> b!1404616 m!1293463))

(assert (=> b!1404618 m!1293289))

(declare-fun m!1293465 () Bool)

(assert (=> b!1404618 m!1293465))

(assert (=> d!151224 m!1293291))

(assert (=> d!151224 m!1293289))

(assert (=> d!151224 m!1293297))

(assert (=> d!151224 m!1293289))

(assert (=> d!151224 m!1293291))

(declare-fun m!1293467 () Bool)

(assert (=> d!151224 m!1293467))

(declare-fun m!1293469 () Bool)

(assert (=> d!151224 m!1293469))

(assert (=> d!151224 m!1293303))

(declare-fun m!1293471 () Bool)

(assert (=> d!151224 m!1293471))

(assert (=> b!1404373 d!151224))

(declare-fun d!151237 () Bool)

(assert (=> d!151237 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618709 () Unit!47280)

(declare-fun choose!38 (array!95997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47280)

(assert (=> d!151237 (= lt!618709 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151237 (validMask!0 mask!2840)))

(assert (=> d!151237 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618709)))

(declare-fun bs!40918 () Bool)

(assert (= bs!40918 d!151237))

(assert (=> bs!40918 m!1293299))

(declare-fun m!1293477 () Bool)

(assert (=> bs!40918 m!1293477))

(assert (=> bs!40918 m!1293303))

(assert (=> b!1404373 d!151237))

(declare-fun d!151241 () Bool)

(declare-fun lt!618715 () (_ BitVec 32))

(declare-fun lt!618714 () (_ BitVec 32))

(assert (=> d!151241 (= lt!618715 (bvmul (bvxor lt!618714 (bvlshr lt!618714 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151241 (= lt!618714 ((_ extract 31 0) (bvand (bvxor (select (arr!46345 a!2901) j!112) (bvlshr (select (arr!46345 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151241 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943111 (let ((h!34293 ((_ extract 31 0) (bvand (bvxor (select (arr!46345 a!2901) j!112) (bvlshr (select (arr!46345 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126716 (bvmul (bvxor h!34293 (bvlshr h!34293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126716 (bvlshr x!126716 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943111 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943111 #b00000000000000000000000000000000))))))

